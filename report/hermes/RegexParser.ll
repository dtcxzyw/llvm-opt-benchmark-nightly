inline.NumInlined: 3173
inline.NumDeleted: 1582
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4llvh8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE4growEj:_ZN4llvh8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.prol, align 8, !tbaa !150
  %.sroa.4.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.prol, align 8, !tbaa !151
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !173

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
  %i.ay = icmp ult i64 %i.au, 168
  br i1 %i.ay, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 17 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i, align 8, !tbaa !150
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !151
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.az, align 8, !tbaa !150
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8, !tbaa !151
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ba, align 8, !tbaa !150
  %.sroa.4.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.2, align 8, !tbaa !151
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 72
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bb, align 8, !tbaa !150
  %.sroa.4.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.3, align 8, !tbaa !151
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bc, align 8, !tbaa !150
  %.sroa.4.0..sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.4, align 8, !tbaa !151
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 120
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bd, align 8, !tbaa !150
  %.sroa.4.0..sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.5, align 8, !tbaa !151
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 144
  store ptr inttoptr (i64 -1 to ptr), ptr %i.be, align 8, !tbaa !150
  %.sroa.4.0..sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 152
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.6, align 8, !tbaa !151
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 168
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bf, align 8, !tbaa !150
  %.sroa.4.0..sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 176
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.7, align 8, !tbaa !151
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 192 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bg, %i.at
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !172

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not31.i = icmp eq i32 %i.c, 0
  br i1 %.not31.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E18moveFromOldBucketsEPS8_SB_.exit, label %_ZN4llvh12DenseMapInfoINS_8ArrayRefIDsEEE7isEqualES2_S2_.exit.i

_ZN4llvh12DenseMapInfoINS_8ArrayRefIDsEEE7isEqualES2_S2_.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit.i, %bb.d
  %.032.i = phi ptr [ %i.bo, %bb.d ], [ %i.d, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit.i ] ; 5 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %.032.i, align 8, !tbaa !150
  %switch.i = icmp ugt ptr %.sroa.05.0.copyload.i, inttoptr (i64 -3 to ptr)
  br i1 %switch.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_8ArrayRefIDsEEE7isEqualES2_S2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bh = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %.032.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !148 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %.032.i, i64 16, i1 false), !tbaa.struct !149
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.032.i, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !3
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !3
  %i.bm = load i32, ptr %i.ap, align 8, !tbaa !168
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.ap, align 8, !tbaa !168
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvh12DenseMapInfoINS_8ArrayRefIDsEEE7isEqualES2_S2_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.032.i, i64 24 ; 2 uses
  %.not.i6 = icmp eq ptr %i.bo, %i.ao
  br i1 %.not.i6, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E18moveFromOldBucketsEPS8_SB_.exit, label %_ZN4llvh12DenseMapInfoINS_8ArrayRefIDsEEE7isEqualES2_S2_.exit.i, !llvm.loop !174

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E18moveFromOldBucketsEPS8_SB_.exit: ; preds = %bb.d, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #15
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E18moveFromOldBucketsEPS8_SB_.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_15AlternationNodeEJSt6vectorIS6_IPNS0_4NodeESaIS8_EESaISA_EEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::vector.16", align 16   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #18, !noalias !175 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !109, !noalias !175
  store <2 x ptr> %i.c, ptr %2, align 16, !tbaa !109, !noalias !175
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46, !noalias !175
  store ptr %i.f, ptr %i.d, align 16, !tbaa !46, !noalias !175
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !noalias !175
  call void @_ZN6hermes5regex15AlternationNodeC2ESt6vectorIS2_IPNS0_4NodeESaIS4_EESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull %2), !noalias !175
  %i.g = load ptr, ptr %2, align 16, !tbaa !100, !noalias !175 ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !45, !noalias !175 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !49, !noalias !175 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47, !noalias !175
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #16, !noalias !175
  br label %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !101

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6hermes5regex4NodeESaIS4_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 16, !tbaa !100, !noalias !175
  br label %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i

_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i, %bb.a
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exitthread-pre-split.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZSt11make_uniqueIN6hermes5regex15AlternationNodeEJSt6vectorIS3_IPNS1_4NodeESaIS5_EESaIS7_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i
  %i.q = load ptr, ptr %i.d, align 16, !tbaa !46, !noalias !175
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #16, !noalias !175
  br label %_ZSt11make_uniqueIN6hermes5regex15AlternationNodeEJSt6vectorIS3_IPNS1_4NodeESaIS5_EESaIS7_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN6hermes5regex15AlternationNodeEJSt6vectorIS3_IPNS1_4NodeESaIS5_EESaIS7_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6hermes5regex4NodeESaIS4_EEEvT_S8_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !178  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex15AlternationNodeEJSt6vectorIS3_IPNS1_4NodeESaIS5_EESaIS7_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.z = ptrtoint ptr %i.a to i64
  store i64 %i.z, ptr %i.w, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex15AlternationNodeEJSt6vectorIS3_IPNS1_4NodeESaIS5_EESaIS7_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !180 ; 10 uses
  %i.ac = ptrtoint ptr %i.w to i64                ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i7 = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i7)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #18 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = ptrtoint ptr %i.a to i64
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.ab, %i.w
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i8.preheader

.lr.ph.i.i.i.i8.preheader:                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ap = sub i64 %i.ac, %i.ad
  %i.aq = add i64 %i.ap, -8                       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i8.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i8.preheader
  %i.at = add i64 %i.ac, -8
  %i.au = sub i64 %i.at, %i.ad
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.aw
  %scevgep27 = getelementptr i8, ptr %i.ab, i64 %i.aw
  %bound0 = icmp ult ptr %i.am, %scevgep27
  %bound1 = icmp ult ptr %i.ab, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i8.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.am, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ab, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ba ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.ab, i64 %i.ba ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.bb = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !25, !alias.scope !186, !noalias !181
  %wide.load29 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !25, !alias.scope !186, !noalias !181
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !189, !noalias !186
  store <2 x i64> %wide.load29, ptr %i.bc, align 8, !tbaa !25, !alias.scope !189, !noalias !186
  %i.bd = getelementptr i8, ptr %next.gep28, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep28, align 8, !tbaa !25, !alias.scope !186, !noalias !181
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !25, !alias.scope !186, !noalias !181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i8.preheader31

.lr.ph.i.i.i.i8.preheader31:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i8.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i8.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.i8.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %.lr.ph.i.i.i.i8.preheader31, %.lr.ph.i.i.i.i8
  %.012.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i8 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i8.preheader31 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i8 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i8.preheader31 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.bf = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !184, !noalias !181
  store i64 %i.bf, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !181, !noalias !184
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !184, !noalias !181
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.bg, %i.w
  br i1 %.not.i.i.i.i9, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i8, !llvm.loop !194

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i8, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i8 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ae) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.g
  store ptr %i.am, ptr %i.u, align 8, !tbaa !180
  store ptr %i.bi, ptr %i.v, align 8, !tbaa !178
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.bj, ptr %i.x, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !103 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !47
  %.not.i.i4 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.bm, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex15AlternationNodeESt14default_deleteIS2_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !49 ; 4 uses
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 6 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.j, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i5 = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i5)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #18 ; 4 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  store ptr %i.a, ptr %i.cc, align 8, !tbaa !25
  %i.cd = icmp sgt i64 %i.bt, 0
  br i1 %i.cd, label %bb.k, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %i.bq, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.cb, ptr %i.bk, align 8, !tbaa !49
  store ptr %i.ce, ptr %i.bl, align 8, !tbaa !103
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cf, ptr %i.bn, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex15AlternationNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex15AlternationNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.h
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex15AlternationNodeC2ESt6vectorIS2_IPNS0_4NodeESaIS4_EESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex15AlternationNodeE, i64 16), ptr %0, align 8, !tbaa !195
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !109
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  store ptr %i.f, ptr %i.d, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !45   ; 4 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = sdiv exact i64 %i.l, 24                  ; 7 uses
  %i.n = icmp slt i64 %i.l, 0
  br i1 %i.n, label %bb.b, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #17
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #18 ; 4 uses
  store ptr %i.p, ptr %i.g, align 8, !tbaa !197
  %i.q = getelementptr i8, ptr %i.p, i64 %i.m     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.q, ptr %i.r, align 8, !tbaa !200
  store i8 0, ptr %i.p, align 1, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.t = add nsw i64 %i.m, -1                     ; 3 uses
  %i.u = icmp eq i64 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.t, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  store ptr %.0.i.i.i.i.i.ph, ptr %i.o, align 8, !tbaa !201
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZZN6hermes5regex15AlternationNode8emitStepERNS0_19RegexBytecodeStreamEENUlvE_clEv:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbvEZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !253    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !255  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !255  ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not8.i.i.i, label %_ZSt10__invoke_rIbRZN6hermes5regex15AlternationNode8emitStepERNS1_19RegexBytecodeStreamEEUlvE0_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !242, !align !243 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_10Jump32InsnEEptEv.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.04.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.ab, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_10Jump32InsnEEptEv.exit.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %.sroa.04.09.i.i.i, align 8, !tbaa !256 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !258
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !201
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !197  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.r, %i.l
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_10Jump32InsnEEptEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.l, i64 noundef %i.r) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_10Jump32InsnEEptEv.exit.i.i.i: ; preds = %bb.b
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !201
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !197
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.t, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = add i32 %i.x, -6
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i32 %i.y, ptr %i.aa, align 1, !tbaa !259
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.e
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRZN6hermes5regex15AlternationNode8emitStepERNS1_19RegexBytecodeStreamEEUlvE0_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.b

_ZSt10__invoke_rIbRZN6hermes5regex15AlternationNode8emitStepERNS1_19RegexBytecodeStreamEEUlvE0_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_10Jump32InsnEEptEv.exit.i.i.i, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbvEZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !231
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !235
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !261
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE14pushLookaroundESt6vectorIPNS0_4NodeESaIS6_EEttbb(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 2 uses
  %i.b = alloca i16, align 2                      ; 2 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %i.d = alloca i8, align 1                       ; 2 uses
  store i16 %2, ptr %i.a, align 2, !tbaa !262
  store i16 %3, ptr %i.b, align 2, !tbaa !262
  %i.e = zext i1 %4 to i8
  store i8 %i.e, ptr %i.c, align 1, !tbaa !119
  %i.f = zext i1 %5 to i8
  store i8 %i.f, ptr %i.d, align 1, !tbaa !119
  br i1 %5, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #15, !inline_history !213
  %i.q = load ptr, ptr %1, align 8, !tbaa !22     ; 5 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !22   ; 3 uses
  %.neg.i = sext i1 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.neg.i ; 2 uses
  %i.t = icmp ne ptr %i.q, %i.s
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.u = icmp ult ptr %i.q, %.sroa.0.08.i.i.i
  %or.cond.i.i.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %bb.c ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.v = load ptr, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !25
  %i.w = load ptr, ptr %.sroa.0.010.i.i.i, align 8, !tbaa !25
  store ptr %i.w, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !25
  store ptr %i.v, ptr %.sroa.0.010.i.i.i, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -8 ; 2 uses
  %i.y = icmp ult ptr %i.x, %.sroa.0.0.i.i.i
  br i1 %i.y, label %.lr.ph.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, !llvm.loop !214

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.c
  %.not13.i = icmp eq ptr %i.q, %i.r
  br i1 %.not13.i, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, %.lr.ph.i
  %.sroa.09.014.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.q, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i ] ; 2 uses
  %i.z = load ptr, ptr %.sroa.09.014.i, align 8, !tbaa !25 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !195
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #15, !inline_history !213
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.r
  br i1 %.not.i, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i

_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit: ; preds = %.lr.ph.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.af = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18, !noalias !263 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex8GoalNodeE, i64 16), ptr %i.af, align 8, !tbaa !195, !noalias !263
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !178 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit
  %i.ak = ptrtoint ptr %i.af to i64
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex8GoalNodeESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !180 ; 10 uses
  %i.an = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i4 = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i4)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #18 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = ptrtoint ptr %i.af to i64
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ba = sub i64 %i.an, %i.ao
  %i.bb = add i64 %i.ba, -8                       ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader24, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.be = add i64 %i.an, -8
  %i.bf = sub i64 %i.be, %i.ao
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bh
  %scevgep20 = getelementptr i8, ptr %i.am, i64 %i.bh
  %bound0 = icmp ult ptr %i.ax, %scevgep20
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.am, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.am, i64 %i.bl ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.bm = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep21, align 8, !tbaa !25, !alias.scope !271, !noalias !266
  %wide.load22 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !25, !alias.scope !271, !noalias !266
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !274, !noalias !271
  store <2 x i64> %wide.load22, ptr %i.bn, align 8, !tbaa !25, !alias.scope !274, !noalias !271
  %i.bo = getelementptr i8, ptr %next.gep21, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !25, !alias.scope !271, !noalias !266
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !25, !alias.scope !271, !noalias !266
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !276

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader24

.lr.ph.i.i.i.i.preheader24:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader24, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.bq = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !269, !noalias !266
  store i64 %i.bq, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !266, !noalias !269
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !269, !noalias !266
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.br, %i.ah
  br i1 %.not.i.i.i.i5, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !277

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ax, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ap) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.g
  store ptr %i.ax, ptr %i.ae, align 8, !tbaa !180
  store ptr %i.bt, ptr %i.ag, align 8, !tbaa !178
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bu, ptr %i.ai, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex8GoalNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex8GoalNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.bv = phi ptr [ %i.ah, %bb.d ], [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ]
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !25 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !103 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47
  %.not.i.i3 = icmp eq ptr %i.by, %i.ca
  br i1 %.not.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex8GoalNodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.cb, ptr %i.bx, align 8, !tbaa !103
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE9push_backEOS3_.exit

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex8GoalNodeESt14default_deleteIS2_EED2Ev.exit
  %i.cc = load ptr, ptr %1, align 8, !tbaa !49    ; 4 uses
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %bb.j, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ch = ashr exact i64 %i.cf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 1152921504606846975)
  %i.cl = select i1 %i.cj, i64 1152921504606846975, i64 %i.ck ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #18 ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cf ; 2 uses
  store ptr %i.bw, ptr %i.co, align 8, !tbaa !25
  %i.cp = icmp sgt i64 %i.cf, 0
  br i1 %i.cp, label %bb.k, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr align 8 %i.cc, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cf) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.cn, ptr %1, align 8, !tbaa !49
  store ptr %i.cq, ptr %i.bx, align 8, !tbaa !103
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cl
  store ptr %i.cr, ptr %i.bz, align 8, !tbaa !47
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.cs = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_14LookaroundNodeEJSt6vectorIPNS0_4NodeESaIS8_EERtSB_RbSC_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE15applyQuantifierERKNS7_10QuantifierE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::vector", align 16      ; 7 uses
  %3 = alloca %"class.std::vector", align 16      ; 4 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !116
  %i.i = icmp ugt i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !17
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

bb.c:                                             ; preds = %bb.b
  store i32 6, ptr %i.j, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.p = load ptr, ptr %0, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118
  call void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE9spliceOutEPNS0_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(336) %i.p, ptr noundef %i.r)
  %i.s = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.t = load i32, ptr %1, align 8, !tbaa !115
  %i.u = load i32, ptr %i.g, align 4, !tbaa !116
  %i.v = load <2 x ptr>, ptr %2, align 16, !tbaa !22
  store <2 x ptr> %i.v, ptr %3, align 16, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !47
  store ptr %i.y, ptr %i.w, align 16, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !117
  %i.ab = zext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !111, !range !278, !noundef !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.t, ptr %i.a, align 4, !tbaa !3
  store i32 %i.u, ptr %i.b, align 4, !tbaa !3
  store i32 %i.ab, ptr %i.c, align 4, !tbaa !3
  store i8 %i.ad, ptr %i.d, align 1, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 140 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !279 ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !279
  store i32 %i.af, ptr %i.e, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 138
  %i.ai = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_8LoopNodeEJjRjS6_RbS6_RtSt6vectorIPNS0_4NodeESaISB_EEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = load ptr, ptr %3, align 16, !tbaa !49   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.w, align 16, !tbaa !47
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %bb.d, %bb.e
  %i.ao = load ptr, ptr %2, align 16, !tbaa !49   ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit9, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit
  %i.ap = load ptr, ptr %i.x, align 16, !tbaa !47
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit9

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit9: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit: ; preds = %bb.c, %bb.b, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_23MarkedSubexpressionNodeEJSt6vectorIPNS0_4NodeESaIS8_EERjEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18, !noalias !280 ; 11 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !49, !noalias !280 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !22, !noalias !280
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !280 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !noalias !280
  %i.h = load i32, ptr %2, align 4, !tbaa !3, !noalias !280
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex23MarkedSubexpressionNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !280
  store ptr %i.b, ptr %i.d, align 8, !tbaa !49, !noalias !280
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !22, !noalias !280
  %.not8.i.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not8.i.i.i, label %_ZSt11make_uniqueIN6hermes5regex23MarkedSubexpressionNodeEJSt6vectorIPNS1_4NodeESaIS5_EERjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.010.i.i.i = phi i8 [ %i.n, %.lr.ph.i.i.i ], [ 0, %bb.a ]
  %.sroa.05.09.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !25, !noalias !280 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !195, !noalias !280
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !280
  %i.m = tail call noundef zeroext i8 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #15, !noalias !280, !inline_history !283
  %i.n = or i8 %i.m, %.010.i.i.i                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.g
  br i1 %.not.i.i.i, label %_ZSt11make_uniqueIN6hermes5regex23MarkedSubexpressionNodeEJSt6vectorIPNS1_4NodeESaIS5_EERjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN6hermes5regex23MarkedSubexpressionNodeEJSt6vectorIPNS1_4NodeESaIS5_EERjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.0.lcssa.i.i.i = phi i8 [ 0, %bb.a ], [ %i.n, %.lr.ph.i.i.i ]
  %i.p = trunc i32 %i.h to i16
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.0.lcssa.i.i.i, ptr %i.q, align 8, !tbaa !284, !noalias !280
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i16 %i.p, ptr %i.r, align 2, !tbaa !287, !noalias !280
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i8 0, ptr %i.s, align 4, !tbaa !288, !noalias !280
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !178  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex23MarkedSubexpressionNodeEJSt6vectorIPNS1_4NodeESaIS5_EERjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.y = ptrtoint ptr %i.a to i64
  store i64 %i.y, ptr %i.v, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex23MarkedSubexpressionNodeEJSt6vectorIPNS1_4NodeESaIS5_EERjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !180 ; 10 uses
  %i.ab = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i7 = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i7)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #18 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = ptrtoint ptr %i.a to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ao = sub i64 %i.ab, %i.ac
  %i.ap = add i64 %i.ao, -8                       ; 2 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.as = add i64 %i.ab, -8
  %i.at = sub i64 %i.as, %i.ac
  %i.au = and i64 %i.at, -8
  %i.av = add i64 %i.au, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.av
  %scevgep26 = getelementptr i8, ptr %i.aa, i64 %i.av
  %bound0 = icmp ult ptr %i.al, %scevgep26
  %bound1 = icmp ult ptr %i.aa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.az ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.aa, i64 %i.az ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.ba = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !25, !alias.scope !294, !noalias !289
  %wide.load28 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !25, !alias.scope !294, !noalias !289
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !297, !noalias !294
  store <2 x i64> %wide.load28, ptr %i.bb, align 8, !tbaa !25, !alias.scope !297, !noalias !294
  %i.bc = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !25, !alias.scope !294, !noalias !289
  store <2 x ptr> splat (ptr null), ptr %i.bc, align 8, !tbaa !25, !alias.scope !294, !noalias !289
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader30

.lr.ph.i.i.i.i.preheader30:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader30, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.be = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !292, !noalias !289
  store i64 %i.be, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !289, !noalias !292
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !292, !noalias !289
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.bf, %i.v
  br i1 %.not.i.i.i.i8, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !300

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ax, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.al, ptr %i.t, align 8, !tbaa !180
  store ptr %i.bh, ptr %i.u, align 8, !tbaa !178
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bi, ptr %i.w, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !103 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  %.not.i.i5 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.bl, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex23MarkedSubexpressionNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !49 ; 4 uses
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bu = ashr exact i64 %i.bs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 1152921504606846975)
  %i.by = select i1 %i.bw, i64 1152921504606846975, i64 %i.bx ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #18 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bs ; 2 uses
  store ptr %i.a, ptr %i.cb, align 8, !tbaa !25
  %i.cc = icmp sgt i64 %i.bs, 0
  br i1 %i.cc, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ca, ptr align 8 %i.bp, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bs) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ca, ptr %i.bj, align 8, !tbaa !49
  store ptr %i.cd, ptr %i.bk, align 8, !tbaa !103
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.ce, ptr %i.bm, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex23MarkedSubexpressionNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex23MarkedSubexpressionNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex23MarkedSubexpressionNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex23MarkedSubexpressionNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6hermes5regex23MarkedSubexpressionNodeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #16
  br label %_ZN6hermes5regex23MarkedSubexpressionNodeD2Ev.exit

_ZN6hermes5regex23MarkedSubexpressionNodeD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex23MarkedSubexpressionNode16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !284
  ret i8 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex23MarkedSubexpressionNode11getChildrenEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::SmallVector.61") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
end_hunk_1
begin_hunk_2_@_ZN6hermes5regex23MarkedSubexpressionNode8emitStepERNS0_19RegexBytecodeStreamE:bb.a
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 3        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.p
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_28BeginMarkedSubexpressionInsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.p, ptr %i.h, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_28BeginMarkedSubexpressionInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_28BeginMarkedSubexpressionInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.pre-phi20 = phi i64 [ %.pre19, %bb.c ], [ %i.l, %bb.d ], [ %i.l, %bb.e ]
  %i.q = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.d ], [ %i.p, %bb.e ]
  %i.r = phi ptr [ %.pre.i, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m
  store i8 19, ptr %i.s, align 1, !tbaa !219
  %i.t = and i64 %i.m, 4294967295                 ; 3 uses
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.u, %.pre-phi20                ; 2 uses
  %.not.i.i.i8 = icmp ugt i64 %i.v, %i.t
  br i1 %.not.i.i.i8, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_28BeginMarkedSubexpressionInsnEEptEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_28BeginMarkedSubexpressionInsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.t, i64 noundef %i.v) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_28BeginMarkedSubexpressionInsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_28BeginMarkedSubexpressionInsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i16 %i.g, ptr %i.x, align 1, !tbaa !301
  store i8 1, ptr %i.c, align 4, !tbaa !288
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 4, !tbaa !288
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !287
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !201 ; 4 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !197   ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.ah = icmp ult i64 %i.ag, -3
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.ac, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i12 = load ptr, ptr %1, align 8, !tbaa !197 ; 2 uses
  %.pre17 = load ptr, ptr %i.ab, align 8, !tbaa !201
  %.pre18 = ptrtoint ptr %.pre.i12 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_26EndMarkedSubexpressionInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %i.ad, i64 %i.ag
  %i.aj = getelementptr i8, ptr %i.ai, i64 3      ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ac, %i.aj
  br i1 %.not.i.i.i9, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_26EndMarkedSubexpressionInsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_26EndMarkedSubexpressionInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_26EndMarkedSubexpressionInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.pre-phi = phi i64 [ %.pre18, %bb.h ], [ %i.af, %bb.i ], [ %i.af, %bb.j ]
  %i.ak = phi ptr [ %.pre17, %bb.h ], [ %i.ac, %bb.i ], [ %i.aj, %bb.j ]
  %i.al = phi ptr [ %.pre.i12, %bb.h ], [ %i.ad, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag
  store i8 20, ptr %i.am, align 1, !tbaa !219
  %i.an = and i64 %i.ag, 4294967295               ; 3 uses
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %.pre-phi                ; 2 uses
  %.not.i.i.i13 = icmp ugt i64 %i.ap, %i.an
  br i1 %.not.i.i.i13, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_26EndMarkedSubexpressionInsnEEptEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_26EndMarkedSubexpressionInsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.an, i64 noundef %i.ap) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_26EndMarkedSubexpressionInsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_26EndMarkedSubexpressionInsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i16 %i.aa, ptr %i.ar, align 1, !tbaa !303
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_26EndMarkedSubexpressionInsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_28BeginMarkedSubexpressionInsnEEptEv.exit
  %.0 = phi ptr [ null, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_26EndMarkedSubexpressionInsnEEptEv.exit ], [ %i.y, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_28BeginMarkedSubexpressionInsnEEptEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_14LookaroundNodeEJSt6vectorIPNS0_4NodeESaIS8_EERtSB_RbSC_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18, !noalias !305 ; 14 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !49, !noalias !305 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !22, !noalias !305
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !305 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !noalias !305
  %i.h = load i16, ptr %2, align 2, !tbaa !262, !noalias !305
  %i.i = load i16, ptr %3, align 2, !tbaa !262, !noalias !305
  %i.j = load i8, ptr %4, align 1, !tbaa !119, !range !278, !noalias !305, !noundef !242
  %i.k = load i8, ptr %5, align 1, !tbaa !119, !range !278, !noalias !305, !noundef !242 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex14LookaroundNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !305
  store ptr %i.b, ptr %i.d, align 8, !tbaa !49, !noalias !305
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !22, !noalias !305
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not8.i.i.i, label %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.010.i.i.i = phi i8 [ %i.s, %.lr.ph.i.i.i ], [ 0, %bb.a ]
  %.sroa.05.09.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !25, !noalias !305 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !195, !noalias !305
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !305
  %i.r = tail call noundef zeroext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #15, !noalias !305, !inline_history !308
  %i.s = or i8 %i.r, %.010.i.i.i                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.g
  br i1 %.not.i.i.i, label %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit.i.i, label %.lr.ph.i.i.i

_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %.0.lcssa.i.i.i = phi i8 [ 0, %bb.a ], [ %i.s, %.lr.ph.i.i.i ] ; 2 uses
  store i8 %.0.lcssa.i.i.i, ptr %i.m, align 8, !tbaa !309, !noalias !305
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %i.j, ptr %i.u, align 1, !tbaa !312, !noalias !305
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 %i.k, ptr %i.v, align 2, !tbaa !313, !noalias !305
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i16 %i.h, ptr %i.w, align 4, !tbaa !314, !noalias !305
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i16 %i.i, ptr %i.x, align 2, !tbaa !315, !noalias !305
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false), !noalias !305
  br i1 %i.l, label %_ZSt11make_uniqueIN6hermes5regex14LookaroundNodeEJSt6vectorIPNS1_4NodeESaIS5_EERtS8_RbS9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit.i.i
  %i.z = and i8 %.0.lcssa.i.i.i, -3
  store i8 %i.z, ptr %i.m, align 8, !tbaa !309, !noalias !305
  br label %_ZSt11make_uniqueIN6hermes5regex14LookaroundNodeEJSt6vectorIPNS1_4NodeESaIS5_EERtS8_RbS9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN6hermes5regex14LookaroundNodeEJSt6vectorIPNS1_4NodeESaIS5_EERtS8_RbS9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit.i.i, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !178 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex14LookaroundNodeEJSt6vectorIPNS1_4NodeESaIS5_EERtS8_RbS9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.af = ptrtoint ptr %i.a to i64
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.d:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex14LookaroundNodeEJSt6vectorIPNS1_4NodeESaIS5_EERtS8_RbS9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !180 ; 10 uses
  %i.ai = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i10 = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i10)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #18 ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  %i.au = ptrtoint ptr %i.a to i64
  store i64 %i.au, ptr %i.at, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.ah, %i.ac
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.av = sub i64 %i.ai, %i.aj
  %i.aw = add i64 %i.av, -8                       ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.az = add i64 %i.ai, -8
  %i.ba = sub i64 %i.az, %i.aj
  %i.bb = and i64 %i.ba, -8
  %i.bc = add i64 %i.bb, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.bc
  %scevgep29 = getelementptr i8, ptr %i.ah, i64 %i.bc
  %bound0 = icmp ult ptr %i.as, %scevgep29
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.bd = shl i64 %n.vec, 3                       ; 2 uses
  %i.be = getelementptr i8, ptr %i.as, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ah, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bg ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.ah, i64 %i.bg ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.bh = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !25, !alias.scope !321, !noalias !316
  %wide.load31 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !25, !alias.scope !321, !noalias !316
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !324, !noalias !321
  store <2 x i64> %wide.load31, ptr %i.bi, align 8, !tbaa !25, !alias.scope !324, !noalias !321
  %i.bj = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !tbaa !25, !alias.scope !321, !noalias !316
  store <2 x ptr> splat (ptr null), ptr %i.bj, align 8, !tbaa !25, !alias.scope !321, !noalias !316
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader33

.lr.ph.i.i.i.i.preheader33:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader33, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.bl = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !319, !noalias !316
  store i64 %i.bl, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !316, !noalias !319
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !319, !noalias !316
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.bm, %i.ac
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !327

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.as, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.be, %middle.block ], [ %i.bn, %.lr.ph.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ah, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ak) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.f
  store ptr %i.as, ptr %i.aa, align 8, !tbaa !180
  store ptr %i.bo, ptr %i.ab, align 8, !tbaa !178
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.bp, ptr %i.ad, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !103 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47
  %.not.i.i8 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.bs, align 8, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex14LookaroundNodeESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !49 ; 4 uses
  %i.bx = ptrtoint ptr %i.bs to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 6 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.i, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #18 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bz ; 2 uses
  store ptr %i.a, ptr %i.ci, align 8, !tbaa !25
  %i.cj = icmp sgt i64 %i.bz, 0
  br i1 %i.cj, label %bb.j, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr align 8 %i.bw, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !49
  store ptr %i.ck, ptr %i.br, align 8, !tbaa !103
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.cl, ptr %i.bt, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex14LookaroundNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex14LookaroundNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.g
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex8GoalNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex8GoalNode6isGoalEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex8GoalNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !197    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.c, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !197
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %.pre.i, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !219
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex14LookaroundNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex14LookaroundNodeE, i64 16), ptr %0, align 8, !tbaa !195
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b
end_hunk_2
begin_hunk_3_@_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeQuantifierPrefixEPNS7_10QuantifierE:bb.a
  %i.o = add i16 %i.n, -48
  %or.cond.i = icmp ult i16 %i.o, 10
  br i1 %or.cond.i, label %.lr.ph.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.g, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i
  %.0415.i.i = phi i64 [ %spec.store.select.i.i, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.p = phi ptr [ %i.t, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i ], [ %i.m, %bb.g ] ; 3 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !31   ; 2 uses
  %i.r = add i16 %i.q, -48
  %i.s = icmp ult i16 %i.r, 10
  br i1 %i.s, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 3 uses
  %i.u = mul nuw nsw i64 %.0415.i.i, 10
  %i.v = zext nneg i16 %i.q to i64
  %i.w = add nsw i64 %i.u, -48
  %i.x = add nsw i64 %i.w, %i.v
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 4294967295) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.d
  br i1 %.not.i.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit, label %.lr.ph.i.i

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit: ; preds = %.lr.ph.i.i, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i
  %i.y = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.t, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i ] ; 5 uses
  %.04.lcssa.ph.i.i = phi i64 [ %.0415.i.i, %.lr.ph.i.i ], [ %spec.store.select.i.i, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i ]
  %.sroa.028.0.extract.trunc = trunc nuw i64 %.04.lcssa.ph.i.i to i32 ; 3 uses
  store i32 %.sroa.028.0.extract.trunc, ptr %1, align 8, !tbaa !115
  %.not.i.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit
  %i.z = load i16, ptr %i.y, align 2, !tbaa !31
  %i.aa = icmp eq i16 %i.z, 44
  br i1 %i.aa, label %bb.h, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread

bb.h:                                             ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 5 uses
  %.not.i14 = icmp eq ptr %i.ab, %i.d
  br i1 %.not.i14, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !31
  %i.ad = add i16 %i.ac, -48
  %or.cond.i15 = icmp ult i16 %i.ad, 10
  br i1 %or.cond.i15, label %.lr.ph.i.i17, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread

.lr.ph.i.i17:                                     ; preds = %bb.i, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21
  %.0415.i.i18 = phi i64 [ %spec.store.select.i.i22, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21 ], [ 0, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ai, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21 ], [ %i.ab, %bb.i ] ; 3 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !31 ; 2 uses
  %i.ag = add i16 %i.af, -48
  %i.ah = icmp ult i16 %i.ag, 10
  br i1 %i.ah, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21: ; preds = %.lr.ph.i.i17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 3 uses
  %i.aj = mul nuw nsw i64 %.0415.i.i18, 10
  %i.ak = zext nneg i16 %i.af to i64
  %i.al = add nsw i64 %i.aj, -48
  %i.am = add nsw i64 %i.al, %i.ak
  %spec.store.select.i.i22 = tail call i64 @llvm.umin.i64(i64 %i.am, i64 4294967295) ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ai, %i.d
  br i1 %.not.i.i.i23, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24, label %.lr.ph.i.i17

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21, %.lr.ph.i.i17
  %i.an = phi ptr [ %i.ae, %.lr.ph.i.i17 ], [ %i.ai, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21 ]
  %.04.lcssa.ph.i.i20 = phi i64 [ %.0415.i.i18, %.lr.ph.i.i17 ], [ %spec.store.select.i.i22, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21 ]
  %.sroa.0.0.extract.trunc = trunc nuw i64 %.04.lcssa.ph.i.i20 to i32
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread: ; preds = %bb.i, %bb.h, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24
  %.sroa.0.0.extract.trunc.sink = phi i32 [ %.sroa.0.0.extract.trunc, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24 ], [ %.sroa.028.0.extract.trunc, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit ], [ %.sroa.028.0.extract.trunc, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i ], [ -1, %bb.h ], [ -1, %bb.i ]
  %i.ao = phi ptr [ %i.an, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24 ], [ %i.y, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit ], [ %i.y, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i ], [ %i.ab, %bb.h ], [ %i.ab, %bb.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.sroa.0.0.extract.trunc.sink, ptr %i.ap, align 4, !tbaa !116
  %.not.i.i25 = icmp eq ptr %i.ao, %i.d
  br i1 %.not.i.i25, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit.thread, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i26

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i26: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread
  %i.aq = load i16, ptr %i.ao, align 2, !tbaa !31
  %i.ar = icmp eq i16 %i.aq, 125                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %spec.select = select i1 %i.ar, ptr %i.as, ptr %i.b
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit.thread

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit.thread: ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i26, %bb.g, %bb.f, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread
  %storemerge = phi ptr [ %i.b, %bb.g ], [ %i.b, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread ], [ %spec.select, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i26 ], [ %i.b, %bb.f ]
  %.1 = phi i1 [ false, %bb.g ], [ false, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread ], [ %i.ar, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i26 ], [ false, %bb.f ]
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.e, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit.thread, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ %.1, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit.thread ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ false, %bb.b ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_8LoopNodeEJjRjS6_RbS6_RtSt6vectorIPNS0_4NodeESaISB_EEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18, !noalias !345 ; 16 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !3, !noalias !345
  %i.c = load i32, ptr %2, align 4, !tbaa !3, !noalias !345
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !345
  %i.e = load i8, ptr %4, align 1, !tbaa !119, !range !278, !noalias !345, !noundef !242
  %i.f = load i32, ptr %5, align 4, !tbaa !3, !noalias !345
  %i.g = trunc i32 %i.f to i16
  %i.h = load i16, ptr %6, align 2, !tbaa !262, !noalias !345
  %i.i = load ptr, ptr %7, align 8, !tbaa !49, !noalias !345 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = load <2 x ptr>, ptr %i.j, align 8, !tbaa !22, !noalias !345
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !103, !noalias !345 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !345
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex8LoopNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !345
  store i32 %i.c, ptr %i.k, align 8, !tbaa !348, !noalias !345
  store i32 %i.d, ptr %i.l, align 4, !tbaa !350, !noalias !345
  store i32 %i.b, ptr %i.m, align 8, !tbaa !351, !noalias !345
  store i16 %i.g, ptr %i.n, align 4, !tbaa !352, !noalias !345
  store i16 %i.h, ptr %i.o, align 2, !tbaa !353, !noalias !345
  store i8 %i.e, ptr %i.p, align 8, !tbaa !354, !noalias !345
  store ptr %i.i, ptr %i.q, align 8, !tbaa !49, !noalias !345
  store <2 x ptr> %i.s, ptr %i.r, align 8, !tbaa !22, !noalias !345
  %.not8.i.i.i = icmp eq ptr %i.i, %i.t
  br i1 %.not8.i.i.i, label %_ZSt11make_uniqueIN6hermes5regex8LoopNodeEJjRjS3_RbS3_RtSt6vectorIPNS1_4NodeESaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.010.i.i.i = phi i8 [ %i.z, %.lr.ph.i.i.i ], [ 0, %bb.a ]
  %.sroa.05.09.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !25, !noalias !345 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !195, !noalias !345
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !345
  %i.y = tail call noundef zeroext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #15, !noalias !345, !inline_history !355
  %i.z = or i8 %i.y, %.010.i.i.i                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.t
  br i1 %.not.i.i.i, label %_ZSt11make_uniqueIN6hermes5regex8LoopNodeEJjRjS3_RbS3_RtSt6vectorIPNS1_4NodeESaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN6hermes5regex8LoopNodeEJjRjS3_RbS3_RtSt6vectorIPNS1_4NodeESaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.0.lcssa.i.i.i = phi i8 [ 0, %bb.a ], [ %i.z, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %.0.lcssa.i.i.i, ptr %i.ab, align 8, !tbaa !356, !noalias !345
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false), !noalias !345
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !178 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex8LoopNodeEJjRjS3_RbS3_RtSt6vectorIPNS1_4NodeESaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ai = ptrtoint ptr %i.a to i64
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex8LoopNodeEJjRjS3_RbS3_RtSt6vectorIPNS1_4NodeESaIS8_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !180 ; 10 uses
  %i.al = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i13 = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i13)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #18 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  %i.ax = ptrtoint ptr %i.a to i64
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.ak, %i.af
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ay = sub i64 %i.al, %i.am
  %i.az = add i64 %i.ay, -8                       ; 2 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader36, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bc = add i64 %i.al, -8
  %i.bd = sub i64 %i.bc, %i.am
  %i.be = and i64 %i.bd, -8
  %i.bf = add i64 %i.be, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.bf
  %scevgep32 = getelementptr i8, ptr %i.ak, i64 %i.bf
  %bound0 = icmp ult ptr %i.av, %scevgep32
  %bound1 = icmp ult ptr %i.ak, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ak, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bj ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.bj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.bk = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 8, !tbaa !25, !alias.scope !362, !noalias !357
  %wide.load34 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !25, !alias.scope !362, !noalias !357
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !365, !noalias !362
  store <2 x i64> %wide.load34, ptr %i.bl, align 8, !tbaa !25, !alias.scope !365, !noalias !362
  %i.bm = getelementptr i8, ptr %next.gep33, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep33, align 8, !tbaa !25, !alias.scope !362, !noalias !357
  store <2 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !25, !alias.scope !362, !noalias !357
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.bo = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !360, !noalias !357
  store i64 %i.bo, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !357, !noalias !360
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !360, !noalias !357
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bp, %i.af
  br i1 %.not.i.i.i.i14, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !368

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.av, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bh, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ak, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.av, ptr %i.ad, align 8, !tbaa !180
  store ptr %i.br, ptr %i.ae, align 8, !tbaa !178
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bs, ptr %i.ag, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !103 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !47
  %.not.i.i10 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not.i.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.bv, align 8, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex8LoopNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !49 ; 4 uses
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 6 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #18 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc ; 2 uses
  store ptr %i.a, ptr %i.cl, align 8, !tbaa !25
  %i.cm = icmp sgt i64 %i.cc, 0
  br i1 %i.cm, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.bz, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cc) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ck, ptr %i.bt, align 8, !tbaa !49
  store ptr %i.cn, ptr %i.bu, align 8, !tbaa !103
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.co, ptr %i.bw, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex8LoopNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex8LoopNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex8LoopNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #15, !inline_history !212 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex8LoopNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #15, !inline_history !369 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN6hermes5regex8LoopNodeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_3
begin_hunk_4_@_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEv:bb.a
bb.k:                                             ; preds = %bb.h
  %.pre41 = trunc nuw i8 %.pre to i1
  %.pre42 = trunc nuw i8 %.pre39 to i1
  %i.bh = select i1 %.pre41, i1 true, i1 %.pre42
  br i1 %i.bh, label %bb.l, label %.thread59

bb.l:                                             ; preds = %bb.k
  %i.bi = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i32 45, ptr %6, align 8, !tbaa !424
  store i8 0, ptr %i.ae, align 2, !tbaa !434
  store i8 0, ptr %i.af, align 8, !tbaa !435
  %i.bj = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.bk = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %4) ; 0 uses
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit9.jt3, !llvm.loop !423

.thread59:                                        ; preds = %bb.i, %bb.k
  %i.bl = load i32, ptr %3, align 8, !tbaa !424   ; 3 uses
  %i.bm = load i32, ptr %4, align 8, !tbaa !424   ; 2 uses
  %i.bn = icmp ugt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread59
  %i.bo = load i32, ptr %i.ac, align 8, !tbaa !17
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %select.unfold.jt1.sink.split, label %select.unfold.jt1

bb.n:                                             ; preds = %.thread59
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !414 ; 2 uses
  %i.br = sub nuw i32 %i.bm, %i.bl
  %i.bs = add i32 %i.br, 1                        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 4 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.bs to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0.insert.insert.i, ptr %1, align 8
  %i.bu = icmp eq i32 %i.bs, 0
  br i1 %i.bu, label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !29
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.by
  %i.ca = call { ptr, ptr } @_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_(ptr noundef %i.bv, ptr noundef %i.bz, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 2 uses
  %i.cb = extractvalue { ptr, ptr } %i.ca, 0      ; 6 uses
  %i.cc = extractvalue { ptr, ptr } %i.ca, 1      ; 6 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ce = call noundef ptr @_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE6insertEPS2_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 0 uses
  br label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit

bb.q:                                             ; preds = %bb.o
  %i.cf = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cg = load i32, ptr %1, align 8, !tbaa !3     ; 2 uses
  %i.ch = call i32 @llvm.umin.i32(i32 %i.cf, i32 %i.cg) ; 2 uses
  %i.ci = load i32, ptr %i.ad, align 4, !tbaa !437
  %i.cj = add i32 %i.ci, %i.cg
  %i.ck = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !439
  %i.cm = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !437
  %i.co = add i32 %i.cn, %i.cl
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.cj, i32 %i.co)
  %i.cp = sub i32 %.sroa.speculated.i.i, %i.ch
  store i32 %i.ch, ptr %i.cb, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.cp, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 3 uses
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !27
  %i.cs = load i32, ptr %i.bw, align 8, !tbaa !29
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cc to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 4 uses
  %i.cy = icmp sgt i64 %i.cx, 8
  br i1 %i.cy, label %bb.r, label %bb.s, !prof !44

bb.r:                                             ; preds = %bb.q
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr nonnull align 4 %i.cc, i64 %i.cx, i1 false)
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.cz = icmp eq i64 %i.cx, 8
  br i1 %i.cz, label %bb.t, label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.da = load i64, ptr %i.cc, align 4
  store i64 %i.da, ptr %i.cq, align 4
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i

_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.db = getelementptr inbounds i8, ptr %i.cq, i64 %i.cx
  %i.dc = load ptr, ptr %i.bt, align 8, !tbaa !27
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = lshr exact i64 %i.df, 3
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.bw, align 8, !tbaa !29
  br label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit

_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit: ; preds = %bb.n, %bb.p, %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit9.jt3

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit9.jt3: ; preds = %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit, %bb.l, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %select.unfold.jt3

select.unfold.jt1.sink.split:                     ; preds = %bb.m, %bb.j
  store i32 7, ptr %i.ac, align 8, !tbaa !17
  %i.di = load ptr, ptr %i.i, align 8, !tbaa !16
  store ptr %i.di, ptr %i.c, align 8, !tbaa !15
  br label %select.unfold.jt1

select.unfold.jt1:                                ; preds = %select.unfold.jt1.sink.split, %bb.j, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

select.unfold.jt3:                                ; preds = %bb.e, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit9.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.dj = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.dk = load ptr, ptr %i.i, align 8, !tbaa !16  ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %._crit_edge, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4, !llvm.loop !423

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit: ; preds = %select.unfold.jt1, %.thread, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5.thread, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_14LeftAnchorNodeEJNS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18, !noalias !440 ; 7 uses
  %.sroa.0.0.copyload.i = load i8, ptr %1, align 1, !tbaa !18, !noalias !440
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex14LeftAnchorNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !440
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = lshr i8 %.sroa.0.0.copyload.i, 2
  %.lobit.i.i = and i8 %i.c, 1
  store i8 %.lobit.i.i, ptr %i.b, align 8, !tbaa !443, !noalias !440
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.a to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !180  ; 10 uses
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i, %i.p  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #18 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.a to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.y = sub i64 %i.l, %i.m
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = add i64 %i.l, -8
  %i.ad = sub i64 %i.ac, %i.m
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af
  %scevgep19 = getelementptr i8, ptr %i.k, i64 %i.af
  %bound0 = icmp ult ptr %i.v, %scevgep19
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.k, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aj ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.k, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.ak = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !25, !alias.scope !450, !noalias !445
  %wide.load21 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !25, !alias.scope !450, !noalias !445
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !453, !noalias !450
  store <2 x i64> %wide.load21, ptr %i.al, align 8, !tbaa !25, !alias.scope !453, !noalias !450
  %i.am = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !25, !alias.scope !450, !noalias !445
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !25, !alias.scope !450, !noalias !445
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !455

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader23

.lr.ph.i.i.i.i.preheader23:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader23, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.ao = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !448, !noalias !445
  store i64 %i.ao, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !445, !noalias !448
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !448, !noalias !445
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ap, %i.f
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !456

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.v, ptr %i.d, align 8, !tbaa !180
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !178
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.as, ptr %i.g, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !103 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47
  %.not.i.i4 = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.av, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex14LeftAnchorNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !49 ; 4 uses
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #18 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store ptr %i.a, ptr %i.bl, align 8, !tbaa !25
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bk, ptr %i.at, align 8, !tbaa !49
  store ptr %i.bn, ptr %i.au, align 8, !tbaa !103
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bo, ptr %i.aw, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex14LeftAnchorNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex14LeftAnchorNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex14LeftAnchorNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex14LeftAnchorNode16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !443, !range !278, !noundef !242
  %i.c = shl nuw nsw i8 %i.b, 1
  %spec.select = xor i8 %i.c, 2
  ret i8 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex14LeftAnchorNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !197    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.c, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !197
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14LeftAnchorInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14LeftAnchorInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14LeftAnchorInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %.pre.i, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  store i8 1, ptr %i.i, align 1, !tbaa !219
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_15RightAnchorNodeEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18, !noalias !457 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex15RightAnchorNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !457
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !180  ; 10 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i5 = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i5)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.w = sub i64 %i.j, %i.k
  %i.x = add i64 %i.w, -8                         ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader22, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = add i64 %i.j, -8
  %i.ab = sub i64 %i.aa, %i.k
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ad
  %scevgep18 = getelementptr i8, ptr %i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.t, %scevgep18
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ah ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.i, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.ai = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !25, !alias.scope !465, !noalias !460
  %wide.load20 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !25, !alias.scope !465, !noalias !460
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !468, !noalias !465
  store <2 x i64> %wide.load20, ptr %i.aj, align 8, !tbaa !25, !alias.scope !468, !noalias !465
  %i.ak = getelementptr i8, ptr %next.gep19, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !25, !alias.scope !465, !noalias !460
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !25, !alias.scope !465, !noalias !460
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !470

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader22

.lr.ph.i.i.i.i.preheader22:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader22, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader22 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !463, !noalias !460
  store i64 %i.am, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !460, !noalias !463
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !463, !noalias !460
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.an, %i.d
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !471

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.t, ptr %i.b, align 8, !tbaa !180
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !178
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !103 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47
  %.not.i.i3 = icmp eq ptr %i.at, %i.av
  br i1 %.not.i.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.at, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex15RightAnchorNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 4 uses
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 6 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #18 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.ba ; 2 uses
  store ptr %i.a, ptr %i.bj, align 8, !tbaa !25
  %i.bk = icmp sgt i64 %i.ba, 0
  br i1 %i.bk, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bi, ptr %i.ar, align 8, !tbaa !49
  store ptr %i.bl, ptr %i.as, align 8, !tbaa !103
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bm, ptr %i.au, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex15RightAnchorNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex15RightAnchorNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex15RightAnchorNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex15RightAnchorNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !197    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.c, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !197
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15RightAnchorInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15RightAnchorInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15RightAnchorInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %.pre.i, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  store i8 2, ptr %i.i, align 1, !tbaa !219
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_16WordBoundaryNodeEJRbEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18, !noalias !472 ; 7 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !119, !range !278, !noalias !472, !noundef !242
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex16WordBoundaryNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !472
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.b, ptr %i.c, align 8, !tbaa !475, !noalias !472
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.a to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !180  ; 10 uses
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i, %i.p  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #18 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.a to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.y = sub i64 %i.l, %i.m
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = add i64 %i.l, -8
  %i.ad = sub i64 %i.ac, %i.m
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af
  %scevgep19 = getelementptr i8, ptr %i.k, i64 %i.af
  %bound0 = icmp ult ptr %i.v, %scevgep19
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.k, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aj ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.k, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.ak = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !25, !alias.scope !482, !noalias !477
  %wide.load21 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !25, !alias.scope !482, !noalias !477
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !485, !noalias !482
  store <2 x i64> %wide.load21, ptr %i.al, align 8, !tbaa !25, !alias.scope !485, !noalias !482
  %i.am = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !25, !alias.scope !482, !noalias !477
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !25, !alias.scope !482, !noalias !477
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !487

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader23

.lr.ph.i.i.i.i.preheader23:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader23, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.ao = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !480, !noalias !477
  store i64 %i.ao, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !477, !noalias !480
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !480, !noalias !477
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ap, %i.f
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !488

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.v, ptr %i.d, align 8, !tbaa !180
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !178
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.as, ptr %i.g, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !103 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47
  %.not.i.i4 = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.av, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex16WordBoundaryNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !49 ; 4 uses
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #18 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store ptr %i.a, ptr %i.bl, align 8, !tbaa !25
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bk, ptr %i.at, align 8, !tbaa !49
  store ptr %i.bn, ptr %i.au, align 8, !tbaa !103
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bo, ptr %i.aw, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex16WordBoundaryNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex16WordBoundaryNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex16WordBoundaryNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex16WordBoundaryNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !475, !range !278, !noundef !242
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !197    ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.j = icmp ult i64 %i.i, -2
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.e, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !197 ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !201
  %.pre3 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_16WordBoundaryInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 2        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_16WordBoundaryInsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.l, ptr %i.d, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_16WordBoundaryInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_16WordBoundaryInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.pre-phi = phi i64 [ %.pre3, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %bb.d ]
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.c ], [ %i.l, %bb.d ]
  %i.n = phi ptr [ %.pre.i, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  store i8 22, ptr %i.o, align 1, !tbaa !219
  %i.p = and i64 %i.i, 4294967295                 ; 3 uses
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.q, %.pre-phi                  ; 2 uses
  %.not.i.i.i2 = icmp ugt i64 %i.r, %i.p
  br i1 %.not.i.i.i2, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_16WordBoundaryInsnEEptEv.exit, label %bb.e
end_hunk_4
begin_hunk_5_@_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE25tryConsumeUnicodePropertyERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ad = phi i64 [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ae = icmp ugt i64 %i.y, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.x, i64 noundef 0, ptr noundef null, i64 noundef 1) #15
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !412
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.af = phi ptr [ %.pre.i, %bb.c ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i8 %i.w, ptr %i.ag, align 1, !tbaa !18
  store i64 %i.y, ptr %i.f, align 8, !tbaa !410
  %i.ah = load ptr, ptr %1, align 8, !tbaa !412
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i8 0, ptr %i.ai, align 1, !tbaa !18
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !15  ; 4 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit.thread, label %bb.b

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.thread: ; preds = %bb.b, %.lr.ph
  %.lcssa51 = phi ptr [ %i.d, %.lr.ph ], [ %i.ak, %bb.b ] ; 2 uses
  %.lcssa = phi ptr [ %i.b, %.lr.ph ], [ %i.aj, %bb.b ] ; 3 uses
  %.not.i.i = icmp eq ptr %.lcssa, %.lcssa51
  br i1 %.not.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit.thread, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.thread
  %i.al = load i16, ptr %.lcssa, align 2, !tbaa !31
  %i.am = icmp eq i16 %i.al, 61
  br i1 %i.am, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit.thread

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit: ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa, i64 2 ; 3 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !15
  %.not.i734 = icmp eq ptr %i.an, %.lcssa51
  br i1 %.not.i734, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9.thread, label %.lr.ph35

.lr.ph35:                                         ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph35, %bb.g
  %i.aq = phi ptr [ %i.an, %.lr.ph35 ], [ %i.bp, %bb.g ] ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !31 ; 3 uses
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = icmp eq i16 %i.ar, 95
  %i.au = or i32 %i.as, 32
  %i.av = add nsw i32 %i.au, -97
  %i.aw = icmp ult i32 %i.av, 26
  %i.ax = or i1 %i.at, %i.aw
  br i1 %i.ax, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9, label %_ZN6hermes22isUnicodePropertyValueEj.exit

_ZN6hermes22isUnicodePropertyValueEj.exit:        ; preds = %bb.e
  %i.ay = tail call noundef zeroext i1 @_ZN6hermes14isUnicodeDigitEj(i32 noundef %i.as) #15
  br i1 %i.ay, label %_ZN6hermes22isUnicodePropertyValueEj.exit._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9_crit_edge, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9.thread

_ZN6hermes22isUnicodePropertyValueEj.exit._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9_crit_edge: ; preds = %_ZN6hermes22isUnicodePropertyValueEj.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %.pre36 = load i16, ptr %.pre, align 2, !tbaa !31
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9: ; preds = %_ZN6hermes22isUnicodePropertyValueEj.exit._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9_crit_edge, %bb.e
  %i.az = phi i16 [ %.pre36, %_ZN6hermes22isUnicodePropertyValueEj.exit._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9_crit_edge ], [ %i.ar, %bb.e ]
  %i.ba = phi ptr [ %.pre, %_ZN6hermes22isUnicodePropertyValueEj.exit._ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9_crit_edge ], [ %i.aq, %bb.e ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !15
  %i.bc = trunc i16 %i.az to i8
  %i.bd = load i64, ptr %i.ao, align 8, !tbaa !410 ; 4 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !412   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ap
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9
  %i.bh = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9
  %i.bi = load i64, ptr %i.ap, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13 ]
  %i.bk = icmp ugt i64 %i.be, %i.bj
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i11
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bd, i64 noundef 0, ptr noundef null, i64 noundef 1) #15
  %.pre.i12 = load ptr, ptr %2, align 8, !tbaa !412
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i11
  %i.bl = phi ptr [ %.pre.i12, %bb.f ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i11 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  store i8 %i.bc, ptr %i.bm, align 1, !tbaa !18
  store i64 %i.be, ptr %i.ao, align 8, !tbaa !410
  %i.bn = load ptr, ptr %2, align 8, !tbaa !412
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.be
  store i8 0, ptr %i.bo, align 1, !tbaa !18
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !16
  %.not.i7 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i7, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9.thread, label %bb.e

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9.thread: ; preds = %_ZN6hermes22isUnicodePropertyValueEj.exit, %bb.g, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !410
  %i.bt = icmp ne i64 %i.bs, 0
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit.thread

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit.thread: ; preds = %bb.d, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.thread, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i, %bb.a, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9.thread
  %.06 = phi i1 [ false, %bb.a ], [ %i.bt, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit9.thread ], [ true, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i ], [ true, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIFbjEEEN4llvh8OptionalIDsEERKT_.exit.thread ], [ true, %bb.d ]
  ret i1 %.06
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_11BracketNodeIS2_EEJRS2_RbRNS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18, !noalias !518 ; 15 uses
  %i.b = load i8, ptr %2, align 1, !tbaa !119, !range !278, !noalias !518, !noundef !242
  %.sroa.0.0.copyload.i = load i8, ptr %3, align 1, !tbaa !18, !noalias !518 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEEE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !518
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !521, !noalias !518
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.d, align 8, !tbaa !27, !noalias !518
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !29, !noalias !518
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 4, ptr %i.g, align 4, !tbaa !30, !noalias !518
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !noalias !518
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 %i.b, ptr %i.i, align 8, !tbaa !523, !noalias !518
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 89
  %i.k = and i8 %.sroa.0.0.copyload.i, 1
  store i8 %i.k, ptr %i.j, align 1, !tbaa !534, !noalias !518
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 90
  %i.m = lshr i8 %.sroa.0.0.copyload.i, 3
  %.lobit.i.i = and i8 %i.m, 1
  store i8 %.lobit.i.i, ptr %i.l, align 2, !tbaa !535, !noalias !518
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !178  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = ptrtoint ptr %i.a to i64
  store i64 %i.s, ptr %i.p, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !180  ; 10 uses
  %i.v = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i8 = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i8)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #18 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  %i.ah = ptrtoint ptr %i.a to i64
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ai = sub i64 %i.v, %i.w
  %i.aj = add i64 %i.ai, -8                       ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.am = add i64 %i.v, -8
  %i.an = sub i64 %i.am, %i.w
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.ap
  %scevgep21 = getelementptr i8, ptr %i.u, i64 %i.ap
  %bound0 = icmp ult ptr %i.af, %scevgep21
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.af, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.u, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.at ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.u, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.au = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep22, align 8, !tbaa !25, !alias.scope !541, !noalias !536
  %wide.load23 = load <2 x i64>, ptr %i.au, align 8, !tbaa !25, !alias.scope !541, !noalias !536
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !544, !noalias !541
  store <2 x i64> %wide.load23, ptr %i.av, align 8, !tbaa !25, !alias.scope !544, !noalias !541
  %i.aw = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep22, align 8, !tbaa !25, !alias.scope !541, !noalias !536
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !25, !alias.scope !541, !noalias !536
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader25

.lr.ph.i.i.i.i.preheader25:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader25, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !539, !noalias !536
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !536, !noalias !539
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !539, !noalias !536
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.az, %i.p
  br i1 %.not.i.i.i.i9, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !547

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.af, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ar, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.u, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.x) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.af, ptr %i.n, align 8, !tbaa !180
  store ptr %i.bb, ptr %i.o, align 8, !tbaa !178
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !103 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !47
  %.not.i.i6 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.bf, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex11BracketNodeINS1_16UTF16RegexTraitsEEESt14default_deleteIS4_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !49 ; 4 uses
  %i.bk = ptrtoint ptr %i.bf to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #18 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bm ; 2 uses
  store ptr %i.a, ptr %i.bv, align 8, !tbaa !25
  %i.bw = icmp sgt i64 %i.bm, 0
  br i1 %i.bw, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %i.bj, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !49
  store ptr %i.bx, ptr %i.be, align 8, !tbaa !103
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.by, ptr %i.bg, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex11BracketNodeINS1_16UTF16RegexTraitsEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex11BracketNodeINS1_16UTF16RegexTraitsEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEED2Ev(ptr noundef nonnull align 8 dereferenceable(91) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEEE, i64 16), ptr %0, align 8, !tbaa !195
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !495  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !494
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #16
  br label %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6hermes12CodePointSetD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EED2Ev.exit
  tail call void @free(ptr noundef %i.i) #15
  br label %_ZN6hermes12CodePointSetD2Ev.exit

_ZN6hermes12CodePointSetD2Ev.exit:                ; preds = %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEED0Ev(ptr noundef nonnull align 8 dereferenceable(91) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEEE, i64 16), ptr %0, align 8, !tbaa !195
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !495  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !494
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #16, !inline_history !548
  br label %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !201
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !44

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !18
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !201
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !44

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !18
  store i8 %i.au, ptr %1, align 1, !tbaa !18
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !197   ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #17
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #18
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !44

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !18
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !18
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !44

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.ae, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load i8, ptr %2, align 1, !tbaa !18
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !18
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !44

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !18
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i51 = icmp eq ptr %i.av, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #16
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50, %bb.ai
  store ptr %i.bf, ptr %0, align 8, !tbaa !197
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !201
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !200
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

declare void @_ZN6hermes26addRangeArrayPoolToBracketEPNS_12CodePointSetEN4llvh8ArrayRefINS_19UnicodeRangePoolRefEEEb(ptr noundef, ptr, i64, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_11BackRefNodeEJRjEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18, !noalias !554 ; 7 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !3, !noalias !554
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex11BackRefNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !554
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = trunc i32 %i.b to i16
  store i16 %i.d, ptr %i.c, align 8, !tbaa !557, !noalias !554
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !178  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.a to i64
  store i64 %i.j, ptr %i.g, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !180  ; 10 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.q  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.a to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.z = sub i64 %i.m, %i.n
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ad = add i64 %i.m, -8
  %i.ae = sub i64 %i.ad, %i.n
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ag
  %scevgep19 = getelementptr i8, ptr %i.l, i64 %i.ag
  %bound0 = icmp ult ptr %i.w, %scevgep19
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.l, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.l, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.al = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !25, !alias.scope !564, !noalias !559
  %wide.load21 = load <2 x i64>, ptr %i.al, align 8, !tbaa !25, !alias.scope !564, !noalias !559
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !567, !noalias !564
  store <2 x i64> %wide.load21, ptr %i.am, align 8, !tbaa !25, !alias.scope !567, !noalias !564
  %i.an = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !25, !alias.scope !564, !noalias !559
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !25, !alias.scope !564, !noalias !559
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !569

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader23

.lr.ph.i.i.i.i.preheader23:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader23, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.ap = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !562, !noalias !559
  store i64 %i.ap, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !559, !noalias !562
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !562, !noalias !559
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.aq, %i.g
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !570

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.w, ptr %i.e, align 8, !tbaa !180
  store ptr %i.as, ptr %i.f, align 8, !tbaa !178
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.at, ptr %i.h, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %.not.i.i4 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.aw, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.av, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !49 ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #18 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store ptr %i.a, ptr %i.bm, align 8, !tbaa !25
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !49
  store ptr %i.bo, ptr %i.av, align 8, !tbaa !103
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bp, ptr %i.ax, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex11BackRefNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex11BackRefNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !557
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !197    ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.j = icmp ult i64 %i.i, -3
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.e, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !197 ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !201
  %.pre3 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_11BackRefInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 3        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_11BackRefInsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.l, ptr %i.d, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_11BackRefInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_11BackRefInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.pre-phi = phi i64 [ %.pre3, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %bb.d ]
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.c ], [ %i.l, %bb.d ]
  %i.n = phi ptr [ %.pre.i, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  store i8 21, ptr %i.o, align 1, !tbaa !219
  %i.p = and i64 %i.i, 4294967295                 ; 3 uses
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.q, %.pre-phi                  ; 2 uses
  %.not.i.i.i2 = icmp ugt i64 %i.r, %i.p
  br i1 %.not.i.i.i2, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BackRefInsnEEptEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_11BackRefInsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.p, i64 noundef %i.r) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BackRefInsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_11BackRefInsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i16 %i.c, ptr %i.t, align 1, !tbaa !571
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_11BackRefNodeEJiEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18, !noalias !573 ; 7 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !3, !noalias !573
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex11BackRefNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !573
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = trunc i32 %i.b to i16
  store i16 %i.d, ptr %i.c, align 8, !tbaa !557, !noalias !573
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !178  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.a to i64
  store i64 %i.j, ptr %i.g, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !180  ; 10 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.q  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.a to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.z = sub i64 %i.m, %i.n
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ad = add i64 %i.m, -8
  %i.ae = sub i64 %i.ad, %i.n
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ag
  %scevgep19 = getelementptr i8, ptr %i.l, i64 %i.ag
  %bound0 = icmp ult ptr %i.w, %scevgep19
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.l, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.l, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.al = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !25, !alias.scope !581, !noalias !576
  %wide.load21 = load <2 x i64>, ptr %i.al, align 8, !tbaa !25, !alias.scope !581, !noalias !576
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !584, !noalias !581
  store <2 x i64> %wide.load21, ptr %i.am, align 8, !tbaa !25, !alias.scope !584, !noalias !581
  %i.an = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !25, !alias.scope !581, !noalias !576
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !25, !alias.scope !581, !noalias !576
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !586

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader23

.lr.ph.i.i.i.i.preheader23:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader23, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.ap = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !579, !noalias !576
  store i64 %i.ap, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !576, !noalias !579
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !579, !noalias !576
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.aq, %i.g
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !587

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.w, ptr %i.e, align 8, !tbaa !180
  store ptr %i.as, ptr %i.f, align 8, !tbaa !178
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.at, ptr %i.h, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %.not.i.i4 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.aw, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.av, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !49 ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #18 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store ptr %i.a, ptr %i.bm, align 8, !tbaa !25
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !49
  store ptr %i.bo, ptr %i.av, align 8, !tbaa !103
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bp, ptr %i.ax, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_11BackRefNodeEJjEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18, !noalias !588 ; 7 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !3, !noalias !588
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex11BackRefNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !588
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = trunc i32 %i.b to i16
  store i16 %i.d, ptr %i.c, align 8, !tbaa !557, !noalias !588
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !178  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.a to i64
  store i64 %i.j, ptr %i.g, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !180  ; 10 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.q  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.a to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.z = sub i64 %i.m, %i.n
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ad = add i64 %i.m, -8
  %i.ae = sub i64 %i.ad, %i.n
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ag
  %scevgep19 = getelementptr i8, ptr %i.l, i64 %i.ag
  %bound0 = icmp ult ptr %i.w, %scevgep19
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.l, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.l, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.al = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !25, !alias.scope !596, !noalias !591
  %wide.load21 = load <2 x i64>, ptr %i.al, align 8, !tbaa !25, !alias.scope !596, !noalias !591
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !599, !noalias !596
  store <2 x i64> %wide.load21, ptr %i.am, align 8, !tbaa !25, !alias.scope !599, !noalias !596
  %i.an = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !25, !alias.scope !596, !noalias !591
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !25, !alias.scope !596, !noalias !591
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !601

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader23

.lr.ph.i.i.i.i.preheader23:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader23, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.ap = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !594, !noalias !591
  store i64 %i.ap, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !591, !noalias !594
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !594, !noalias !591
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.aq, %i.g
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !602

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ai, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.w, ptr %i.e, align 8, !tbaa !180
  store ptr %i.as, ptr %i.f, align 8, !tbaa !178
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.at, ptr %i.h, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %.not.i.i4 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.aw, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.av, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !49 ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #18 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store ptr %i.a, ptr %i.bm, align 8, !tbaa !25
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !49
  store ptr %i.bo, ptr %i.av, align 8, !tbaa !103
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bp, ptr %i.ax, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex11BackRefNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE17_M_realloc_insertIJS3_RS7_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(26) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !507  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !603    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 5, ptr %i.t, align 4, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !29
  %.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i, label %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE12_M_check_lenEmPKc.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIDsEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(26) %2) ; 0 uses
  br label %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit

_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit: ; preds = %_ZNKSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.y = load ptr, ptr %3, align 8, !tbaa !505
  store ptr %i.y, ptr %i.x, align 8, !tbaa !509
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE17_M_realloc_insertIJS3_RS7_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_:bb.a
  br i1 %i.af, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %.011.i.i.i.i.i, ptr noundef nonnull %i.z, i64 noundef %i.ag, i64 noundef 2) #15
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.011.i.i.i.i.i, align 8, !tbaa !27
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i, %bb.d
  %i.ah = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.z, %bb.d ]
  %i.ai = phi i32 [ %.pre.i.i.i.i.i.i.i.i, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i ], [ %i.ad, %bb.d ]
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !27
  %gepdiff.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 2 %i.ak, i64 %gepdiff.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !29
  br label %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !509
  store ptr %i.an, ptr %i.al, align 8, !tbaa !509
  %i.ao = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !604

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEC2IS2_RS6_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit ], [ %i.ap, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 2 uses
  %.not9.i.i.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i19, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28
  %.011.i.i.i.i.i21 = phi ptr [ %i.bh, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28 ], [ %i.aq, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit ] ; 9 uses
  %.0810.i.i.i.i.i22 = phi ptr [ %i.bg, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.011.i.i.i.i.i21, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 8 ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 12
  store i32 5, ptr %i.at, align 4, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !29 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i23 = icmp eq i32 %i.av, 0
  %i.aw = icmp eq ptr %.011.i.i.i.i.i21, %.0810.i.i.i.i.i22
  %or.cond.i.i.i.i.i.i.i.i24 = or i1 %i.aw, %.not.i.i.i.i.i.i.i.i.i23
  br i1 %or.cond.i.i.i.i.i.i.i.i24, label %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i20
  %i.ax = icmp ugt i32 %i.av, 5
  br i1 %i.ax, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i31, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i25

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i31: ; preds = %bb.e
  %i.ay = zext i32 %i.av to i64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %.011.i.i.i.i.i21, ptr noundef nonnull %i.ar, i64 noundef %i.ay, i64 noundef 2) #15
  %.pre.i.i.i.i.i.i.i.i32 = load i32, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i33 = icmp eq i32 %.pre.i.i.i.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i33, label %.sink.split.i.i.i.i.i.i.i.i.i27, label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i34

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i34: ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i31
  %.pre.i.i.i.i.i.i.i35 = load ptr, ptr %.011.i.i.i.i.i21, align 8, !tbaa !27
  br label %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i25

_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i25: ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i34, %bb.e
  %i.az = phi ptr [ %.pre.i.i.i.i.i.i.i35, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i34 ], [ %i.ar, %bb.e ]
  %i.ba = phi i32 [ %.pre.i.i.i.i.i.i.i.i32, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i34 ], [ %i.av, %bb.e ]
  %i.bb = zext i32 %i.ba to i64
  %i.bc = load ptr, ptr %.0810.i.i.i.i.i22, align 8, !tbaa !27
  %gepdiff.i.i.i.i.i.i.i.i.i26 = shl nuw nsw i64 %i.bb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 2 %i.bc, i64 %gepdiff.i.i.i.i.i.i.i.i.i26, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i27

.sink.split.i.i.i.i.i.i.i.i.i27:                  ; preds = %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.thread.i.i.i.i.i.i.i.i25, %_ZSt4copyIPKDsPDsET0_T_S4_S3_.exit30.i.i.i.i.i.i.i.i.i31
  store i32 %i.av, ptr %i.as, align 8, !tbaa !29
  br label %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28

_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i27, %.lr.ph.i.i.i.i.i20
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !509
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !509
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 40 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i.i.i.i29, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36, label %.lr.ph.i.i.i.i.i20, !llvm.loop !604

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36: ; preds = %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit
  %.0.lcssa.i.i.i.i.i30 = phi ptr [ %i.aq, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit ], [ %i.bh, %_ZSt10_ConstructISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEJRKS8_EEvPT_DpOT0_.exit.i.i.i.i.i28 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36, %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.bl, %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36 ] ; 3 uses
  %i.bi = load ptr, ptr %.05.i.i, align 8, !tbaa !27 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef %i.bi) #15
  br label %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit, label %.lr.ph.i.i, !llvm.loop !605

_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit: ; preds = %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEES9_SaIS8_EET0_T_SC_SB_RT1_.exit36
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !508
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #16
  br label %_ZNSt12_Vector_baseISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !603
  store ptr %.0.lcssa.i.i.i.i.i30, ptr %i.a, align 8, !tbaa !507
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_12MatchAnyNodeEJNS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18, !noalias !606 ; 8 uses
  %.sroa.0.0.copyload.i = load i8, ptr %1, align 1, !tbaa !18, !noalias !606 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex12MatchAnyNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !606
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = lshr i8 %.sroa.0.0.copyload.i, 3
  %.lobit.i.i = and i8 %i.c, 1
  store i8 %.lobit.i.i, ptr %i.b, align 8, !tbaa !609, !noalias !606
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.e = lshr i8 %.sroa.0.0.copyload.i, 4
  %.lobit2.i.i = and i8 %i.e, 1
  store i8 %.lobit2.i.i, ptr %i.d, align 1, !tbaa !611, !noalias !606
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !178  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.a to i64
  store i64 %i.k, ptr %i.h, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !180  ; 10 uses
  %i.n = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i, %i.r  ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #18 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = ptrtoint ptr %i.a to i64
  store i64 %i.z, ptr %i.y, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.aa = sub i64 %i.n, %i.o
  %i.ab = add i64 %i.aa, -8                       ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ae = add i64 %i.n, -8
  %i.af = sub i64 %i.ae, %i.o
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ah
  %scevgep19 = getelementptr i8, ptr %i.m, i64 %i.ah
  %bound0 = icmp ult ptr %i.x, %scevgep19
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.m, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.al ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.m, i64 %i.al ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.am = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !25, !alias.scope !617, !noalias !612
  %wide.load21 = load <2 x i64>, ptr %i.am, align 8, !tbaa !25, !alias.scope !617, !noalias !612
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !620, !noalias !617
  store <2 x i64> %wide.load21, ptr %i.an, align 8, !tbaa !25, !alias.scope !620, !noalias !617
  %i.ao = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !25, !alias.scope !617, !noalias !612
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !25, !alias.scope !617, !noalias !612
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader23

.lr.ph.i.i.i.i.preheader23:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader23, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.aq = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !615, !noalias !612
  store i64 %i.aq, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !612, !noalias !615
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !615, !noalias !612
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ar, %i.h
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !623

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.x, ptr %i.f, align 8, !tbaa !180
  store ptr %i.at, ptr %i.g, align 8, !tbaa !178
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.au, ptr %i.i, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !103 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47
  %.not.i.i4 = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.ax, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex12MatchAnyNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !49 ; 4 uses
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #18 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store ptr %i.a, ptr %i.bn, align 8, !tbaa !25
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.be) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bm, ptr %i.av, align 8, !tbaa !49
  store ptr %i.bp, ptr %i.aw, align 8, !tbaa !103
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.bq, ptr %i.ay, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex12MatchAnyNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex12MatchAnyNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex12MatchAnyNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex12MatchAnyNode26matchesExactlyOneCharacterEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !609, !range !278, !noundef !242
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex12MatchAnyNode16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex12MatchAnyNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !609, !range !278, !noundef !242
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !611, !range !278, !noundef !242
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !201  ; 5 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !197    ; 9 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %.not.i = icmp eq i64 %i.p, -1                  ; 4 uses
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %bb.f
end_hunk_7
begin_hunk_8_@_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_:bb.a
  %i.ad = icmp ne i32 %i.z, %.sroa.0.0.extract.trunc.i.i
  %.not10.i.i.i = select i1 %i.ac, i1 %i.ad, i1 false
  %i.ae = icmp ult i32 %.sroa.04.0.extract.trunc.i.i.i, %.sroa.0.0.extract.trunc.i.i
  %spec.select.i.i.i = and i1 %i.ae, %.not10.i.i.i
  %cond.fr.i = freeze i1 %spec.select.i.i.i       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ag = xor i64 %i.w, -1
  %i.ah = add nsw i64 %.01125.i, %i.ag
  %spec.select.i = select i1 %cond.fr.i, i64 %i.ah, i64 %i.w
  %spec.select24.i = select i1 %cond.fr.i, ptr %i.af, ptr %.026.i
  br label %.thread.i

.thread.i:                                        ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ai = phi i64 [ %i.w, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i ] ; 2 uses
  %i.aj = phi ptr [ %.026.i, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %spec.select24.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i ] ; 2 uses
  %i.ak = icmp sgt i64 %i.ai, 0
  br i1 %i.ak, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit, !llvm.loop !641

_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit: ; preds = %.thread.i, %.critedge
  %.0.lcssa.i = phi ptr [ %.067, %.critedge ], [ %i.aj, %.thread.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %.01368, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.am = add nuw nsw i64 %.idx91, 8
  %gepdiff = sub nsw i64 %.idx, %i.am
  %i.an = ashr exact i64 %gepdiff, 3              ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34, label %_ZSt13__upper_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34: ; preds = %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit, %.split.i
  %.025.i = phi ptr [ %i.bf, %.split.i ], [ %i.al, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.01124.i = phi i64 [ %i.be, %.split.i ], [ %i.an, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit ] ; 3 uses
  %i.ap = lshr i64 %.01124.i, 1                   ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.025.i, i64 %i.ap ; 3 uses
  %.sroa.0.0.copyload.i.i37 = load i64, ptr %i.aq, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i38 = trunc i64 %.sroa.0.0.copyload.i.i37 to i32 ; 4 uses
  %.sroa.4.0.extract.shift.i.i.i39 = lshr i64 %.sroa.0.0.copyload.i.i37, 32
  %.sroa.4.0.extract.trunc.i.i.i40 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i39 to i32
  %i.ar = add i32 %.sroa.4.0.extract.trunc.i.i.i40, %.sroa.0.0.extract.trunc.i.i.i38 ; 2 uses
  %i.as = icmp ugt i32 %i.ar, %.sroa.0.0.extract.trunc.i.i
  %i.at = icmp ugt i32 %i.f, %.sroa.0.0.extract.trunc.i.i.i38
  %i.au = and i1 %i.at, %i.as
  br i1 %i.au, label %.thread.i44, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i

.thread.i44:                                      ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = xor i64 %i.ap, -1
  %i.ax = add nsw i64 %.01124.i, %i.aw
  br label %.split.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34
  %i.ay = icmp ne i32 %i.ar, %.sroa.0.0.extract.trunc.i.i
  %i.az = icmp ne i32 %i.f, %.sroa.0.0.extract.trunc.i.i.i38
  %.not10.i.i.i41 = and i1 %i.az, %i.ay
  %i.ba = icmp ult i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i.i.i38
  %spec.select.i.i.i42 = and i1 %i.ba, %.not10.i.i.i41
  %cond.fr.i43 = freeze i1 %spec.select.i.i.i42
  br i1 %cond.fr.i43, label %.split.i, label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i
  %i.bb = xor i64 %i.ap, -1
  %i.bc = add nsw i64 %.01124.i, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  br label %.split.i

.split.i:                                         ; preds = %bb.c, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i, %.thread.i44
  %i.be = phi i64 [ %i.ax, %.thread.i44 ], [ %i.bc, %bb.c ], [ %i.ap, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i ] ; 2 uses
  %i.bf = phi ptr [ %i.av, %.thread.i44 ], [ %i.bd, %bb.c ], [ %.025.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i ] ; 2 uses
  %i.bg = icmp sgt i64 %i.be, 0
  br i1 %i.bg, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34, label %_ZSt13__upper_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit, !llvm.loop !642

bb.d:                                             ; preds = %bb.b, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit
  %.1 = phi ptr [ %i.p, %bb.b ], [ %.067, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit ] ; 3 uses
  %.2 = phi i64 [ %i.r, %bb.b ], [ %i.g, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit ] ; 2 uses
  %i.bh = icmp sgt i64 %.2, 0
  br i1 %i.bh, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt13__upper_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit, !llvm.loop !643

_ZSt13__upper_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit: ; preds = %bb.d, %.split.i, %bb.a, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit
  %.sroa.0.0 = phi ptr [ %.0.lcssa.i, %.split.i ], [ %.0.lcssa.i, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit ], [ %0, %bb.a ], [ %.1, %bb.d ]
  %.sroa.3.0 = phi ptr [ %i.bf, %.split.i ], [ %i.al, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit ], [ %0, %bb.a ], [ %.1, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector.271", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18, !noalias !644 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !27, !noalias !644
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !29, !noalias !644
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 5, ptr %i.d, align 4, !tbaa !30, !noalias !644
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29, !noalias !644
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.thread.i, label %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.i

_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.thread.i: ; preds = %bb.a
  %.sroa.0.0.copyload3.i = load i8, ptr %2, align 1, !tbaa !18, !noalias !644
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex13MatchCharNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !644
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.h, ptr %i.g, align 8, !tbaa !27, !noalias !644
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !29, !noalias !644
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 5, ptr %i.j, align 4, !tbaa !30, !noalias !644
  br label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i

_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.i:       ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %1), !noalias !644 ; 0 uses
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !29, !noalias !644
  %i.l = icmp eq i32 %.pre.i, 0
  %.sroa.0.0.copyload.i = load i8, ptr %2, align 1, !tbaa !18, !noalias !644 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex13MatchCharNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !644
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.n, ptr %i.m, align 8, !tbaa !27, !noalias !644
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !29, !noalias !644
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 5, ptr %i.p, align 4, !tbaa !30, !noalias !644
  br i1 %i.l, label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.i
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(36) %i.m, ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !644 ; 0 uses
  br label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i

_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i: ; preds = %bb.b, %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.i, %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.thread.i
  %.sroa.0.0.copyload4.i = phi i8 [ %.sroa.0.0.copyload3.i, %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.thread.i ], [ %.sroa.0.0.copyload.i, %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.i ], [ %.sroa.0.0.copyload.i, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = and i8 %.sroa.0.0.copyload4.i, 1
  store i8 %i.s, ptr %i.r, align 8, !tbaa !647, !noalias !644
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %i.u = lshr i8 %.sroa.0.0.copyload4.i, 3
  %.lobit.i.i = and i8 %i.u, 1
  store i8 %.lobit.i.i, ptr %i.t, align 1, !tbaa !654, !noalias !644
  %i.v = load ptr, ptr %3, align 8, !tbaa !27, !noalias !644 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZSt11make_uniqueIN6hermes5regex13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS1_11SyntaxFlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i
  call void @free(ptr noundef %i.v) #15, !noalias !644
  br label %_ZSt11make_uniqueIN6hermes5regex13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS1_11SyntaxFlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN6hermes5regex13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS1_11SyntaxFlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !178  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS1_11SyntaxFlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ac = ptrtoint ptr %i.a to i64
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS1_11SyntaxFlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !180 ; 10 uses
  %i.af = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i7 = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i7)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #18 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  %i.ar = ptrtoint ptr %i.a to i64
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.ae, %i.z
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.as = sub i64 %i.af, %i.ag
  %i.at = add i64 %i.as, -8                       ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aw = add i64 %i.af, -8
  %i.ax = sub i64 %i.aw, %i.ag
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.az
  %scevgep21 = getelementptr i8, ptr %i.ae, i64 %i.az
  %bound0 = icmp ult ptr %i.ap, %scevgep21
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ae, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bd ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.ae, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.be = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep22, align 8, !tbaa !25, !alias.scope !660, !noalias !655
  %wide.load23 = load <2 x i64>, ptr %i.be, align 8, !tbaa !25, !alias.scope !660, !noalias !655
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !663, !noalias !660
  store <2 x i64> %wide.load23, ptr %i.bf, align 8, !tbaa !25, !alias.scope !663, !noalias !660
  %i.bg = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep22, align 8, !tbaa !25, !alias.scope !660, !noalias !655
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !25, !alias.scope !660, !noalias !655
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !665

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader25

.lr.ph.i.i.i.i.preheader25:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader25, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.bi = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !658, !noalias !655
  store i64 %i.bi, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !655, !noalias !658
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !658, !noalias !655
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.bj, %i.z
  br i1 %.not.i.i.i.i8, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !666

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ap, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.g
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !180
  store ptr %i.bl, ptr %i.y, align 8, !tbaa !178
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.bm, ptr %i.aa, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !103 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !47
  %.not.i.i5 = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.bp, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex13MatchCharNodeESt14default_deleteIS2_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !49 ; 4 uses
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 6 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.j, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #18 ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bw ; 2 uses
  store ptr %i.a, ptr %i.cf, align 8, !tbaa !25
  %i.cg = icmp sgt i64 %i.bw, 0
  br i1 %i.cg, label %bb.k, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 8 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bw) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ce, ptr %i.bn, align 8, !tbaa !49
  store ptr %i.ch, ptr %i.bo, align 8, !tbaa !103
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.ci, ptr %i.bq, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex13MatchCharNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex13MatchCharNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.h
  ret ptr %i.a
}

declare noundef i32 @_ZN6hermes12canonicalizeEjb(i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !27     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #15
  %.pre = load ptr, ptr %1, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  store ptr %i.i, ptr %0, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !3
  store <2 x i32> %i.l, ptr %i.f, align 8, !tbaa !3
  store ptr %i.c, ptr %1, align 8, !tbaa !27
  store i32 0, ptr %i.k, align 4, !tbaa !30
  store i32 0, ptr %i.j, align 8, !tbaa !29
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  switch i32 %i.n, label %bb.h [
    i32 0, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.i
end_hunk_8
