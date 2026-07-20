inline.NumInlined: 2564
inline.NumDeleted: 1401
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE5parseIPKDsEENS0_9constants9ErrorTypeET_S9_:bb.a
  %.sroa.4.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.3, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.be, align 8, !tbaa !490
  %.sroa.4.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.07.i, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.4, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i, i64 120
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bf, align 8, !tbaa !490
  %.sroa.4.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.07.i, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.5, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i, i64 144
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bg, align 8, !tbaa !490
  %.sroa.4.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.07.i, i64 152
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.6, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %.07.i, i64 168
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bh, align 8, !tbaa !490
  %.sroa.4.0..sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.07.i, i64 176
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.7, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i, i64 192 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.bi, %i.au
  br i1 %.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !493

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit: ; preds = %bb.g, %bb.i, %._crit_edge.i
  %.014192143 = phi i8 [ %.lobit, %bb.g ], [ %.014192144, %bb.i ], [ %.014192144, %._crit_edge.i ]
  %.pre-phi40 = phi i32 [ %i.o, %bb.g ], [ %.pre-phi41, %bb.i ], [ %.pre-phi41, %._crit_edge.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !494, !noalias !495 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !411, !noalias !495 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !412, !noalias !495 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !410, !noalias !495 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.bl, ptr %3, align 8, !tbaa !494
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bn, ptr %i.bw, align 8, !tbaa !411
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bp, ptr %i.bx, align 8, !tbaa !412
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.br, ptr %i.by, align 8, !tbaa !410
  %i.bz = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !409, !noalias !498
  store <2 x ptr> %i.bz, ptr %4, align 16, !tbaa !409
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !467, !noalias !498
  store <2 x ptr> %i.cb, ptr %i.ca, align 16, !tbaa !467
  call void @_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !472 ; 2 uses
  %i.cd = icmp ult ptr %i.br, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit, %.lr.ph.i.i.i
  %.06.i.pn.i.i = phi ptr [ %.06.i.i.i, %.lr.ph.i.i.i ], [ %i.br, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit ]
  %.06.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i, i64 8 ; 3 uses
  %i.ce = load ptr, ptr %.06.i.i.i, align 8, !tbaa !409
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef 512) #17
  %i.cf = icmp ult ptr %.06.i.i.i, %i.cc
  br i1 %i.cf, label %.lr.ph.i.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit, !llvm.loop !473

_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E5clearEv.exit
  store ptr %i.bl, ptr %i.bs, align 8, !tbaa !409
  store ptr %i.bn, ptr %i.bt, align 8, !tbaa !409
  store ptr %i.bp, ptr %i.bu, align 8, !tbaa !409
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !501
  %i.cg = trunc nuw i8 %.014192143 to i1
  %i.ch = call noundef i32 @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE21parseWithBackRefLimitIPKDsEENS0_9constants9ErrorTypeET_S9_jbPj(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef %2, i32 noundef %.pre-phi40, i1 noundef zeroext %i.cg, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.thread22.thread

.thread22.thread:                                 ; preds = %.thread22, %.thread28, %.thread26, %bb.e, %bb.f, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit, %bb.a
  %.1 = phi i32 [ 10, %bb.a ], [ %i.g, %.thread28 ], [ %i.ch, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE5clearEv.exit ], [ 0, %bb.f ], [ %i.g, %bb.e ], [ %spec.select31, %.thread22 ], [ %i.g, %.thread26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE21parseWithBackRefLimitIPKDsEENS0_9constants9ErrorTypeET_S9_jbPj(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvh::ArrayRef.238", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !481  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !502
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !502
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5clearEv.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.f = tail call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_4NodeEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.01.0.copyload = load i8, ptr %i.g, align 8, !tbaa !32
  %i.h = tail call noundef i32 @_ZN6hermes5regex10parseRegexINS0_5RegexINS0_16UTF16RegexTraitsEEEEENS0_9constants9ErrorTypeEPKDsS8_PT_NS0_11SyntaxFlagsEjbPj(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0, i8 %.sroa.01.0.copyload, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) #16 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread

bb.c:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5clearEv.exit
  %i.j = tail call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_8GoalNodeEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0) ; 0 uses
  %.sroa.0.0.copyload = load i8, ptr %i.g, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN6hermes5regex4Node16optimizeNodeListERSt6vectorIPS1_SaIS3_EENS0_11SyntaxFlagsERS2_ISt10unique_ptrIS1_St14default_deleteIS1_EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !503  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !503  ; 2 uses
  %.not22.i = icmp eq ptr %i.m, %i.o
  br i1 %.not22.i, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.017.023.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.ak, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.s = load ptr, ptr %.sroa.017.023.i, align 8, !tbaa !50
  store ptr %i.s, ptr %6, align 8, !tbaa !504
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.023.i, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !52
  %i.v = zext i32 %i.u to i64
  store i64 %i.v, ptr %i.q, align 8, !tbaa !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.w = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !507  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !463
  %i.z = load i32, ptr %i.r, align 8, !tbaa !489
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ac = icmp ne ptr %i.x, %i.ab
  %.not21.i = select i1 %i.w, i1 %i.ac, i1 false
  br i1 %.not21.i, label %bb.e, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.023.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !508
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !510
  %i.ah = trunc i32 %i.af to i16
  %i.ai = add i16 %i.ah, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i16 %i.ai, ptr %i.aj, align 8, !tbaa !512
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.017.023.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.o
  br i1 %.not.i, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread, label %bb.d

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread: ; preds = %bb.e, %bb.c, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5clearEv.exit
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !515 ; 2 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !515 ; 2 uses
  %.not8.i = icmp eq ptr %i.al, %i.am
  br i1 %.not8.i, label %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread, %.lr.ph.i9
  %.010.i = phi i8 [ %i.as, %.lr.ph.i9 ], [ 0, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread ]
  %.sroa.05.09.i = phi ptr [ %i.at, %.lr.ph.i9 ], [ %i.al, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !476 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef zeroext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #16, !inline_history !516
  %i.as = or i8 %i.ar, %.010.i                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i10 = icmp eq ptr %i.at, %i.am
  br i1 %.not.i10, label %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i9

_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit: ; preds = %.lr.ph.i9, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread
  %.0.lcssa.i = phi i8 [ 0, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit.thread ], [ %i.as, %.lr.ph.i9 ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 %.0.lcssa.i, ptr %i.au, align 4, !tbaa !451
  br label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE20resolveNamedBackRefsEv.exit: ; preds = %bb.d, %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit
  %.0 = phi i32 [ %i.h, %_ZN6hermes5regex4Node23matchConstraintsForListERKSt6vectorIPS1_SaIS3_EE.exit ], [ 15, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_4NodeEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19, !noalias !517 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex4NodeE, i64 16), ptr %i.a, align 8, !tbaa !57, !noalias !517
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !475  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !480
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !476
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !475
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !474  ; 10 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i2 = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i2)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #19 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !476
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.w = sub i64 %i.j, %i.k
  %i.x = add i64 %i.w, -8                         ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = add i64 %i.j, -8
  %i.ab = sub i64 %i.aa, %i.k
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ad
  %scevgep13 = getelementptr i8, ptr %i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.t, %scevgep13
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader17, label %vector.ph

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
  %next.gep14 = getelementptr i8, ptr %i.i, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.ai = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !476, !alias.scope !525, !noalias !520
  %wide.load15 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !476, !alias.scope !525, !noalias !520
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !476, !alias.scope !528, !noalias !525
  store <2 x i64> %wide.load15, ptr %i.aj, align 8, !tbaa !476, !alias.scope !528, !noalias !525
  %i.ak = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !476, !alias.scope !525, !noalias !520
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !476, !alias.scope !525, !noalias !520
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !530

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader17

.lr.ph.i.i.i.i.preheader17:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader17, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !476, !alias.scope !523, !noalias !520
  store i64 %i.am, ptr %.012.i.i.i.i, align 8, !tbaa !476, !alias.scope !520, !noalias !523
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !476, !alias.scope !523, !noalias !520
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !531

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #17
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.t, ptr %i.b, align 8, !tbaa !474
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !475
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !480
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !502 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !482
  %.not.i = icmp eq ptr %i.at, %i.av
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  store ptr %i.a, ptr %i.at, align 8, !tbaa !476
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !502
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !481 ; 4 uses
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 6 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #19 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.ba ; 2 uses
  store ptr %i.a, ptr %i.bj, align 8, !tbaa !476
  %i.bk = icmp sgt i64 %i.ba, 0
  br i1 %i.bk, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #17
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.bi, ptr %i.ar, align 8, !tbaa !481
  store ptr %i.bl, ptr %i.as, align 8, !tbaa !502
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bm, ptr %i.au, align 8, !tbaa !482
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f
  ret ptr %i.a
}

declare noundef i32 @_ZN6hermes5regex10parseRegexINS0_5RegexINS0_16UTF16RegexTraitsEEEEENS0_9constants9ErrorTypeEPKDsS8_PT_NS0_11SyntaxFlagsEjbPj(ptr noundef, ptr noundef, ptr noundef, i8, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_8GoalNodeEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19, !noalias !532 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex8GoalNodeE, i64 16), ptr %i.a, align 8, !tbaa !57, !noalias !532
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !475  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !480
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !476
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !475
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !474  ; 10 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
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
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #19 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !476
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.ai = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !476, !alias.scope !540, !noalias !535
  %wide.load20 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !476, !alias.scope !540, !noalias !535
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !476, !alias.scope !543, !noalias !540
  store <2 x i64> %wide.load20, ptr %i.aj, align 8, !tbaa !476, !alias.scope !543, !noalias !540
  %i.ak = getelementptr i8, ptr %next.gep19, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !476, !alias.scope !540, !noalias !535
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !476, !alias.scope !540, !noalias !535
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !545

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !476, !alias.scope !538, !noalias !535
  store i64 %i.am, ptr %.012.i.i.i.i, align 8, !tbaa !476, !alias.scope !535, !noalias !538
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !476, !alias.scope !538, !noalias !535
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.an, %i.d
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !546

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #17
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.t, ptr %i.b, align 8, !tbaa !474
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !475
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !480
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !502 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !482
  %.not.i.i3 = icmp eq ptr %i.at, %i.av
  br i1 %.not.i.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.at, align 8, !tbaa !476
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !502
  br label %_ZNSt10unique_ptrIN6hermes5regex8GoalNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !481 ; 4 uses
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 6 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
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
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #19 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.ba ; 2 uses
  store ptr %i.a, ptr %i.bj, align 8, !tbaa !476
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ba) #17
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bi, ptr %i.ar, align 8, !tbaa !481
  store ptr %i.bl, ptr %i.as, align 8, !tbaa !502
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bm, ptr %i.au, align 8, !tbaa !482
  br label %_ZNSt10unique_ptrIN6hermes5regex8GoalNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex8GoalNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex4Node16optimizeNodeListERSt6vectorIPS1_SaIS3_EENS0_11SyntaxFlagsERS2_ISt10unique_ptrIS1_St14default_deleteIS1_EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat align 2 {
.lr.ph83:
  %3 = alloca %"class.std::vector.281", align 8   ; 9 uses
  %4 = alloca %"class.llvh::SmallVector.263", align 8 ; 7 uses
  %5 = alloca %"class.llvh::SmallVector.288", align 8 ; 11 uses
  %6 = alloca %"class.llvh::SmallVector.288", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19 ; 3 uses
  store ptr %0, ptr %i.d, align 8, !tbaa !547
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !549
  store ptr %i.e, ptr %i.c, align 8, !tbaa !552
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.m = and i8 %1, 1
  %i.n = lshr i8 %1, 3
  %.lobit.i = and i8 %i.n, 1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph83, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.r = phi ptr [ %i.e, %.lr.ph83 ], [ %i.bm, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !547  ; 6 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !553
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !502  ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !481  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3                  ; 2 uses
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit
  %.pre92 = load ptr, ptr %i.t, align 8, !tbaa !515 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes5regex4Node16optimizeNodeListERSt6vectorIPS1_SaIS3_EENS0_11SyntaxFlagsERS2_ISt10unique_ptrIS1_St14default_deleteIS1_EESaISB_EE:.lr.ph83
  %or.cond.i.i = select i1 %i.be, i1 true, i1 %.not27.i.i
  br i1 %or.cond.i.i, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnET_SB_SB_RKT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i, %bb.l
  %.sroa.07.029.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %.sroa.07.026.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i ] ; 2 uses
  %.sroa.013.028.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.l ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i ] ; 3 uses
  %i.bf = load ptr, ptr %.sroa.07.029.i.i, align 8, !tbaa !476 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  store ptr %i.bf, ptr %.sroa.013.028.i.i, align 8, !tbaa !476
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %.lr.ph.i.i ], [ %i.bh, %bb.k ] ; 2 uses
  %.sroa.07.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i, i64 8 ; 2 uses
  %.not.i.i34 = icmp eq ptr %.sroa.07.0.i.i, %.pre93
  br i1 %.not.i.i34, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnET_SB_SB_RKT0_.exit, label %.lr.ph.i.i, !llvm.loop !555

_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnET_SB_SB_RKT0_.exit: ; preds = %bb.l, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i
  %.sroa.013.2.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEENS0_5__ops16_Iter_equals_valIKDnEEET_SF_SF_T0_.exit.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.not.i.i35 = icmp eq ptr %.sroa.013.2.i.i, %.pre93
  br i1 %.not.i.i35, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnET_SB_SB_RKT0_.exit
  %i.bi = ptrtoint ptr %.sroa.013.2.i.i to i64
  %i.bj = sub i64 %i.bi, %.pre95
  %i.bk = getelementptr inbounds i8, ptr %.pre92, i64 %i.bj
  store ptr %i.bk, ptr %i.u, align 8, !tbaa !502
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit: ; preds = %bb.a, %._crit_edge.i.i.i.i, %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnET_SB_SB_RKT0_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i
  %i.bl = load ptr, ptr %3, align 8, !tbaa !556   ; 4 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !556 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %._crit_edge84, label %bb.a, !llvm.loop !557

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit
  %.074 = phi i64 [ %i.fp, %_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit ], [ 0, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bo = load ptr, ptr %i.t, align 8, !tbaa !481
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.074
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !476 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr dead_on_unwind nonnull writable sret(%"class.llvh::SmallVector.263") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #16
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !556
  %i.bv = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.bw = load i32, ptr %i.f, align 8, !tbaa !52
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = load ptr, ptr %3, align 8, !tbaa !556   ; 2 uses
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %i.cc
  call void @_ZNSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EE15_M_range_insertIPS6_EEvN9__gnu_cxx17__normal_iteratorISA_S8_EET_SE_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.cd, ptr noundef %i.bv, ptr noundef %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.g, ptr %5, align 8, !tbaa !50
  store i32 0, ptr %i.h, align 8, !tbaa !52
  store i32 5, ptr %i.i, align 4, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %.173 = phi i64 [ %.074, %.lr.ph ], [ %i.cl, %bb.n ] ; 3 uses
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !481
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.173
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !476 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %5) #16
  br i1 %i.ck, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cl = add nuw i64 %.173, 1                    ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.aa
  br i1 %i.cm, label %bb.m, label %.critedge, !llvm.loop !558

.critedge:                                        ; preds = %bb.n, %bb.m
  %.1.lcssa = phi i64 [ %i.cl, %bb.n ], [ %.173, %bb.m ] ; 3 uses
  %i.cn = sub i64 %.1.lcssa, %.074
  %i.co = icmp ugt i64 %i.cn, 1
  br i1 %i.co, label %bb.o, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit

bb.o:                                             ; preds = %.critedge
  %i.cp = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 14 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !50
  store i32 0, ptr %i.k, align 8, !tbaa !52
  store i32 5, ptr %i.l, align 4, !tbaa !51
  %i.cq = load i32, ptr %i.h, align 8, !tbaa !52  ; 10 uses
  %.not.i.i36 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i36, label %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.g
  br i1 %i.cs, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.cr, ptr %6, align 8, !tbaa !50
  store i32 %i.cq, ptr %i.k, align 8, !tbaa !52
  %i.ct = load i32, ptr %i.i, align 4, !tbaa !51
  store i32 %i.ct, ptr %i.l, align 4, !tbaa !51
  store ptr %i.g, ptr %5, align 8, !tbaa !50
  store i32 0, ptr %i.i, align 4, !tbaa !51
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cu = icmp ugt i32 %i.cq, 5
  br i1 %i.cu, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i.thread

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i:             ; preds = %bb.r
  %i.cv = zext i32 %i.cq to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %i.j, i64 noundef %i.cv, i64 noundef 4) #16
  %.pre = load i32, ptr %i.h, align 8, !tbaa !52  ; 2 uses
  %.not.i.i.i43 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i43, label %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i.thread

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i.thread:      ; preds = %bb.r, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i
  %i.cw = phi i32 [ %.pre, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i ], [ %i.cq, %bb.r ]
  %i.cx = zext i32 %i.cw to i64
  %i.cy = load ptr, ptr %5, align 8, !tbaa !50
  %i.cz = load ptr, ptr %6, align 8, !tbaa !50
  %gepdiff.i = shl nuw nsw i64 %i.cx, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 4 %i.cy, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i: ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i.thread, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i
  store i32 %i.cq, ptr %i.k, align 8, !tbaa !52
  br label %bb.s

_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit:         ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex13MatchCharNodeE, i64 16), ptr %i.cp, align 8, !tbaa !57
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.db, ptr %i.da, align 8, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i32 0, ptr %i.dc, align 8, !tbaa !52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  store i32 5, ptr %i.dd, align 4, !tbaa !51
  br label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit

bb.s:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i, %bb.q
  store i32 0, ptr %i.h, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex13MatchCharNodeE, i64 16), ptr %i.cp, align 8, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  store ptr %i.df, ptr %i.de, align 8, !tbaa !50
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  store i32 0, ptr %i.dg, align 8, !tbaa !52
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 20 ; 2 uses
  store i32 5, ptr %i.dh, align 4, !tbaa !51
  %i.di = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.j
  br i1 %i.dj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.di, ptr %i.de, align 8, !tbaa !50
  store i32 %i.cq, ptr %i.dg, align 8, !tbaa !52
  %i.dk = load i32, ptr %i.l, align 4, !tbaa !51
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !51
  store ptr %i.j, ptr %6, align 8, !tbaa !50
  store i32 0, ptr %i.l, align 4, !tbaa !51
  store i32 0, ptr %i.k, align 8, !tbaa !52
  br label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit

bb.u:                                             ; preds = %bb.s
  %i.dl = zext i32 %i.cq to i64                   ; 2 uses
  %i.dm = icmp ugt i32 %i.cq, 5
  br i1 %i.dm, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51.thread

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51:           ; preds = %bb.u
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(36) %i.de, ptr noundef nonnull %i.df, i64 noundef %i.dl, i64 noundef 4) #16
  %.pre90 = load i32, ptr %i.k, align 8, !tbaa !52 ; 2 uses
  %.pre99 = zext i32 %.pre90 to i64
  %.not.i.i.i53 = icmp eq i32 %.pre90, 0
  br i1 %.not.i.i.i53, label %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i56, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51.thread

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51.thread:    ; preds = %bb.u, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51
  %.pre-phi100137 = phi i64 [ %.pre99, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51 ], [ %i.dl, %bb.u ]
  %i.dn = load ptr, ptr %6, align 8, !tbaa !50
  %i.do = load ptr, ptr %i.de, align 8, !tbaa !50
  %gepdiff.i55 = shl nuw nsw i64 %.pre-phi100137, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 4 %i.dn, i64 %gepdiff.i55, i1 false)
  br label %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i56

_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i56: ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51.thread, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit37.i51
  store i32 %i.cq, ptr %i.dg, align 8, !tbaa !52
  store i32 0, ptr %i.k, align 8, !tbaa !52
  br label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit

_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit: ; preds = %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit, %_ZN4llvh23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i56, %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  store i8 %i.m, ptr %i.dp, align 8, !tbaa !559
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cp, i64 49
  store i8 %.lobit.i, ptr %i.dq, align 1, !tbaa !566
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !475 ; 6 uses
  %i.ds = load ptr, ptr %i.p, align 8, !tbaa !480
  %.not.i = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit
  store ptr %i.cp, ptr %i.dr, align 8, !tbaa !476
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  store ptr %i.dt, ptr %i.o, align 8, !tbaa !475
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit

bb.w:                                             ; preds = %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit
  %i.du = load ptr, ptr %2, align 8, !tbaa !474   ; 10 uses
  %i.dv = ptrtoint ptr %i.dr to i64               ; 3 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 4 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %bb.x, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.dz = ashr exact i64 %i.dx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 1152921504606846975)
  %i.ed = select i1 %i.eb, i64 1152921504606846975, i64 %i.ec ; 3 uses
  %.not.i.i.i38 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i38)
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #19 ; 10 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx
  store ptr %i.cp, ptr %i.eg, align 8, !tbaa !476
  %.not10.i.i.i.i.i = icmp eq ptr %i.du, %i.dr
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.eh = sub i64 %i.dv, %i.dw
  %i.ei = add i64 %i.eh, -8                       ; 2 uses
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ei, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader158, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ef, i64 8
  %i.el = add i64 %i.dv, -8
  %i.em = sub i64 %i.el, %i.dw
  %i.en = and i64 %i.em, -8                       ; 2 uses
  %scevgep152 = getelementptr i8, ptr %scevgep, i64 %i.en
  %scevgep153 = getelementptr i8, ptr %i.du, i64 8
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.en
  %bound0 = icmp ult ptr %i.ef, %scevgep154
  %bound1 = icmp ult ptr %i.du, %scevgep152
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader158, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ek, 4611686018427387900     ; 3 uses
  %i.eo = shl i64 %n.vec, 3                       ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ef, i64 %i.eo  ; 2 uses
  %i.eq = getelementptr i8, ptr %i.du, i64 %i.eo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.er = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ef, i64 %i.er ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.du, i64 %i.er ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.es = getelementptr i8, ptr %next.gep155, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep155, align 8, !tbaa !476, !alias.scope !572, !noalias !567
  %wide.load156 = load <2 x i64>, ptr %i.es, align 8, !tbaa !476, !alias.scope !572, !noalias !567
  %i.et = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !476, !alias.scope !575, !noalias !572
  store <2 x i64> %wide.load156, ptr %i.et, align 8, !tbaa !476, !alias.scope !575, !noalias !572
  %i.eu = getelementptr i8, ptr %next.gep155, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep155, align 8, !tbaa !476, !alias.scope !572, !noalias !567
  store <2 x ptr> splat (ptr null), ptr %i.eu, align 8, !tbaa !476, !alias.scope !572, !noalias !567
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !577

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ek, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader158

.lr.ph.i.i.i.i.i.preheader158:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ef, %vector.memcheck ], [ %i.ef, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ep, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.du, %vector.memcheck ], [ %i.du, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader158, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader158 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader158 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.ew = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !476, !alias.scope !570, !noalias !567
  store i64 %i.ew, ptr %.012.i.i.i.i.i, align 8, !tbaa !476, !alias.scope !567, !noalias !570
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !476, !alias.scope !570, !noalias !567
  %i.ex = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ex, %i.dr
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !578

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ef, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ep, %middle.block ], [ %i.ey, %.lr.ph.i.i.i.i.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_13MatchCharNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dx) #17
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_13MatchCharNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_13MatchCharNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.ef, ptr %2, align 8, !tbaa !474
  store ptr %i.ez, ptr %i.o, align 8, !tbaa !475
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.fa, ptr %i.p, align 8, !tbaa !480
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit: ; preds = %bb.v, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_13MatchCharNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  %i.fb = phi ptr [ %i.dt, %bb.v ], [ %i.ez, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_13MatchCharNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ]
  %i.fc = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.j
  br i1 %i.fd, label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit
  call void @free(ptr noundef %i.fc) #16
  %.pre91 = load ptr, ptr %i.o, align 8, !tbaa !579
  br label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit

_ZN4llvh11SmallVectorIjLj5EED2Ev.exit:            ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit, %bb.z
  %i.fe = phi ptr [ %i.fb, %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_13MatchCharNodeEEEERS6_DpOT_.exit ], [ %.pre91, %bb.z ]
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !476
  %i.fh = load ptr, ptr %i.t, align 8, !tbaa !481 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.074
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !476
  %.idx = shl i64 %.074, 3
  %i.fj = add i64 %.idx, 8                        ; 3 uses
  %.idx70 = shl nsw i64 %.1.lcssa, 3              ; 2 uses
  %.not4.i.i.i.i = icmp eq i64 %i.fj, %.idx70
  br i1 %.not4.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit, label %.lr.ph.preheader.i.i.i.i39

.lr.ph.preheader.i.i.i.i39:                       ; preds = %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit
  %i.fk = getelementptr i8, ptr %i.fh, i64 %i.fj
  %gepdiff = sub i64 %.idx70, %i.fj
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fk, i8 0, i64 %gepdiff, i1 false), !tbaa !476
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit: ; preds = %.lr.ph.preheader.i.i.i.i39, %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit, %.critedge
  %i.fl = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.g
  br i1 %i.fm, label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit40, label %bb.aa

bb.aa:                                            ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit
  call void @free(ptr noundef %i.fl) #16
  br label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit40

_ZN4llvh11SmallVectorIjLj5EED2Ev.exit40:          ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.fn = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.q
  br i1 %i.fo, label %_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit40
  call void @free(ptr noundef %i.fn) #16
  br label %_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit

_ZN4llvh11SmallVectorIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELj1EED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit40, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.fp = add i64 %.1.lcssa, 1                    ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.aa
  br i1 %i.fq, label %.lr.ph, label %._crit_edge, !llvm.loop !580

._crit_edge84:                                    ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %.not.i.i.i41 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge84
  %i.fr = load ptr, ptr %i.c, align 8, !tbaa !552
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.bl to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.fu) #17
  br label %_ZNSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EED2Ev.exit: ; preds = %._crit_edge84, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex4NodeD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex4Node26matchesExactlyOneCharacterEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex4Node21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex4Node16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex4Node6isGoalEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex4Node11getChildrenEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::SmallVector.263") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !51
  ret void
}

end_hunk_1
