inline.NumInlined: 746
inline.NumDeleted: 485
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5cppgc8internal9Compactor22CompactSpacesIfEnabledEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZN5cppgc8internal9BaseSpace14RemoveAllPagesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %1, ptr noundef nonnull align 8 dereferenceable(61) %i.im) #18
  %i.io = load ptr, ptr %1, align 8               ; 3 uses
  %i.ip = load ptr, ptr %i.hc, align 8            ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionStateD2Ev.exit.i, label %.preheader.i

bb.at:                                            ; preds = %_ZN5cppgc8internal12_GLOBAL__N_111CompactPageEPNS0_10NormalPageERNS1_15CompactionStateENS0_10StickyBitsE.exit.i
  %i.ir = icmp eq i64 %.sroa.25.4.i, 0
  br i1 %i.ir, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %.not.i.i.i = icmp eq ptr %.sroa.40.6.i, %.sroa.51.2.i
  br i1 %.not.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr %.sroa.9.5.i, ptr %.sroa.40.6.i, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.40.6.i, i64 8
  br label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE9push_backERKS3_.exit.i.i

bb.aw:                                            ; preds = %bb.au
  %i.it = ptrtoint ptr %.sroa.51.2.i to i64
  %i.iu = ptrtoint ptr %.sroa.34.2.i to i64
  %i.iv = sub i64 %i.it, %i.iu                    ; 6 uses
  %i.iw = icmp eq i64 %i.iv, 9223372036854775800
  br i1 %i.iw, label %bb.ax, label %_ZNKSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.aw
  %i.ix = ashr exact i64 %i.iv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ix, i64 1)
  %i.iy = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ix ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %i.ix
  %i.ja = call i64 @llvm.umin.i64(i64 %i.iy, i64 1152921504606846975)
  %i.jb = select i1 %i.iz, i64 1152921504606846975, i64 %i.ja ; 3 uses
  %.not.i.i.i.i.i16 = icmp ne i64 %i.jb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i16)
  %i.jc = shl nuw nsw i64 %i.jb, 3
  %i.jd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jc) #16 ; 4 uses
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 %i.iv ; 2 uses
  store ptr %.sroa.9.5.i, ptr %i.je, align 8
  %i.jf = icmp sgt i64 %i.iv, 0
  br i1 %i.jf, label %bb.ay, label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.ay:                                            ; preds = %_ZNKSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jd, ptr align 8 %.sroa.34.2.i, i64 %i.iv, i1 false)
  br label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.ay, %_ZNKSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.34.2.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.34.2.i, i64 noundef %i.iv) #17
  br label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.az, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jb
  br label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE9push_backERKS3_.exit.i.i

bb.ba:                                            ; preds = %bb.at
  call void @_ZN5cppgc8internal9BaseSpace7AddPageEPNS0_8BasePageE(ptr noundef nonnull align 8 dereferenceable(61) %i.im, ptr noundef %.sroa.9.5.i) #18
  %.not.i5.i.i = icmp eq i64 %.sroa.25.4.i, 128968
  br i1 %.not.i5.i.i, label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE9push_backERKS3_.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ji = sub i64 128968, %.sroa.25.4.i           ; 2 uses
  %i.jj = call noundef ptr @_ZN5cppgc8internal10NormalPage12PayloadStartEv(ptr noundef nonnull align 8 dereferenceable(2104) %.sroa.9.5.i) #18
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.sroa.25.4.i ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jk, i8 0, i64 %i.ji, i1 false)
  call void @_ZN5cppgc8internal8FreeList3AddENS1_5BlockE(ptr noundef nonnull align 8 dereferenceable(280) %i.in, ptr nonnull %i.jk, i64 %i.ji) #18
  %i.jl = ptrtoint ptr %i.jk to i64               ; 2 uses
  %i.jm = lshr i64 %i.jl, 6
  %i.jn = and i64 %i.jm, 2047
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.9.5.i, i64 49
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jn ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1
  %i.jr = trunc i64 %i.jl to i32
  %i.js = lshr i32 %i.jr, 3
  %i.jt = and i32 %i.js, 7
  %i.ju = shl nuw nsw i32 1, %i.jt
  %i.jv = trunc nuw i32 %i.ju to i8
  %i.jw = or i8 %i.jq, %i.jv
  store i8 %i.jw, ptr %i.jp, align 1
  br label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE9push_backERKS3_.exit.i.i

_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE9push_backERKS3_.exit.i.i: ; preds = %bb.bb, %bb.ba, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.av
  %.sroa.40.1.i = phi ptr [ %i.jg, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %i.is, %bb.av ], [ %.sroa.40.6.i, %bb.ba ], [ %.sroa.40.6.i, %bb.bb ] ; 2 uses
  %.sroa.51.1.i = phi ptr [ %i.jh, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.sroa.51.2.i, %bb.av ], [ %.sroa.51.2.i, %bb.ba ], [ %.sroa.51.2.i, %bb.bb ]
  %.sroa.34.1.i = phi ptr [ %i.jd, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ], [ %.sroa.34.2.i, %bb.av ], [ %.sroa.34.2.i, %bb.ba ], [ %.sroa.34.2.i, %bb.bb ] ; 5 uses
  %i.jx = icmp eq ptr %.sroa.34.1.i, %.sroa.40.1.i
  br i1 %i.jx, label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState21FinishCompactingSpaceEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE9push_backERKS3_.exit.i.i, %.lr.ph.i.i
  %.sroa.06.09.i.i = phi ptr [ %i.ka, %.lr.ph.i.i ], [ %.sroa.34.1.i, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE9push_backERKS3_.exit.i.i ] ; 2 uses
  %i.jy = load ptr, ptr %.sroa.06.09.i.i, align 8 ; 2 uses
  %i.jz = call noundef ptr @_ZN5cppgc8internal10NormalPage12PayloadStartEv(ptr noundef nonnull align 8 dereferenceable(2104) %i.jy) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128968) %i.jz, i8 0, i64 128968, i1 false)
  call void @_ZN5cppgc8internal10NormalPage7DestroyEPS1_(ptr noundef nonnull %i.jy) #18
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i.i, i64 8 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %.sroa.40.1.i
  br i1 %i.kb, label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState21FinishCompactingSpaceEv.exit.i, label %.lr.ph.i.i

_ZN5cppgc8internal12_GLOBAL__N_115CompactionState21FinishCompactingSpaceEv.exit.i: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE9push_backERKS3_.exit.i.i
  %.not.i.i.i.i9.i = icmp eq ptr %.sroa.34.1.i, null
  br i1 %.not.i.i.i.i9.i, label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionStateD2Ev.exitthread-pre-split.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState21FinishCompactingSpaceEv.exit.i
  %i.kc = ptrtoint ptr %.sroa.51.1.i to i64
  %i.kd = ptrtoint ptr %.sroa.34.1.i to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.34.1.i, i64 noundef %i.ke) #17
  br label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionStateD2Ev.exitthread-pre-split.i

.preheader.i:                                     ; preds = %bb.as, %_ZN5cppgc8internal12_GLOBAL__N_111CompactPageEPNS0_10NormalPageERNS1_15CompactionStateENS0_10StickyBitsE.exit.i
  %.sroa.9.068.i = phi ptr [ %.sroa.9.5.i, %_ZN5cppgc8internal12_GLOBAL__N_111CompactPageEPNS0_10NormalPageERNS1_15CompactionStateENS0_10StickyBitsE.exit.i ], [ null, %bb.as ] ; 3 uses
  %.sroa.014.067.i = phi ptr [ %i.pj, %_ZN5cppgc8internal12_GLOBAL__N_111CompactPageEPNS0_10NormalPageERNS1_15CompactionStateENS0_10StickyBitsE.exit.i ], [ %i.io, %bb.as ] ; 2 uses
  %.sroa.25.066.i = phi i64 [ %.sroa.25.4.i, %_ZN5cppgc8internal12_GLOBAL__N_111CompactPageEPNS0_10NormalPageERNS1_15CompactionStateENS0_10StickyBitsE.exit.i ], [ 0, %bb.as ] ; 2 uses
  %.sroa.34.065.i = phi ptr [ %.sroa.34.2.i, %_ZN5cppgc8internal12_GLOBAL__N_111CompactPageEPNS0_10NormalPageERNS1_15CompactionStateENS0_10StickyBitsE.exit.i ], [ null, %bb.as ] ; 6 uses
  %.sroa.51.064.i = phi ptr [ %.sroa.51.2.i, %_ZN5cppgc8internal12_GLOBAL__N_111CompactPageEPNS0_10NormalPageERNS1_15CompactionStateENS0_10StickyBitsE.exit.i ], [ null, %bb.as ] ; 4 uses
  %.sroa.40.063.i = phi ptr [ %.sroa.40.6.i, %_ZN5cppgc8internal12_GLOBAL__N_111CompactPageEPNS0_10NormalPageERNS1_15CompactionStateENS0_10StickyBitsE.exit.i ], [ null, %bb.as ] ; 4 uses
  %i.kf = load ptr, ptr %.sroa.014.067.i, align 8 ; 9 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  store atomic i64 0, ptr %i.kg monotonic, align 8
  %.not.i.i10.i = icmp eq ptr %.sroa.9.068.i, null
  br i1 %.not.i.i10.i, label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %.preheader.i
  %.not.i.i.i.i15 = icmp eq ptr %.sroa.40.063.i, %.sroa.51.064.i
  br i1 %.not.i.i.i.i15, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %i.kf, ptr %.sroa.40.063.i, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.40.063.i, i64 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.ki = ptrtoint ptr %.sroa.51.064.i to i64
  %i.kj = ptrtoint ptr %.sroa.34.065.i to i64
  %i.kk = sub i64 %i.ki, %i.kj                    ; 6 uses
  %i.kl = icmp eq i64 %i.kk, 9223372036854775800
  br i1 %i.kl, label %bb.bg, label %_ZNKSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bf
  %i.km = ashr exact i64 %i.kk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.km, i64 1)
  %i.kn = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.km ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.km
  %i.kp = call i64 @llvm.umin.i64(i64 %i.kn, i64 1152921504606846975)
  %i.kq = select i1 %i.ko, i64 1152921504606846975, i64 %i.kp ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.kq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.kr = shl nuw nsw i64 %i.kq, 3
  %i.ks = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #16 ; 4 uses
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 %i.kk ; 2 uses
  store ptr %i.kf, ptr %i.kt, align 8
  %i.ku = icmp sgt i64 %i.kk, 0
  br i1 %i.ku, label %bb.bh, label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.bh:                                            ; preds = %_ZNKSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ks, ptr align 8 %.sroa.34.065.i, i64 %i.kk, i1 false)
  br label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.bh, %_ZNKSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.34.065.i, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.34.065.i, i64 noundef %i.kk) #17
  br label %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bi, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kq
  br label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i

_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i: ; preds = %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.be, %.preheader.i
  %.sroa.40.2.i = phi ptr [ %i.kh, %bb.be ], [ %i.kv, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.40.063.i, %.preheader.i ] ; 2 uses
  %.sroa.51.2.i = phi ptr [ %.sroa.51.064.i, %bb.be ], [ %i.kw, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.51.064.i, %.preheader.i ] ; 6 uses
  %.sroa.34.2.i = phi ptr [ %.sroa.34.065.i, %bb.be ], [ %i.ks, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.34.065.i, %.preheader.i ] ; 8 uses
  %.sroa.9.1.i = phi ptr [ %.sroa.9.068.i, %bb.be ], [ %.sroa.9.068.i, %_ZNSt6vectorIPN5cppgc8internal10NormalPageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %i.kf, %.preheader.i ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kf, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2049) %i.kx, i8 0, i64 2049, i1 false)
  %i.ky = call noundef ptr @_ZN5cppgc8internal10NormalPage12PayloadStartEv(ptr noundef nonnull align 8 dereferenceable(2104) %i.kf) #18 ; 2 uses
  %i.kz = call noundef ptr @_ZN5cppgc8internal10NormalPage10PayloadEndEv(ptr noundef nonnull align 8 dereferenceable(2104) %i.kf) #18
  %i.la = icmp ult ptr %i.ky, %i.kz
  br i1 %i.la, label %.lr.ph.i11.i, label %_ZN5cppgc8internal12_GLOBAL__N_111CompactPageEPNS0_10NormalPageERNS1_15CompactionStateENS0_10StickyBitsE.exit.i

.lr.ph.i11.i:                                     ; preds = %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i, %bb.cj
  %.sroa.40.3.i = phi ptr [ %.sroa.40.4.i, %bb.cj ], [ %.sroa.40.2.i, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i ] ; 4 uses
  %.sroa.25.1.i = phi i64 [ %.sroa.25.2.i, %bb.cj ], [ %.sroa.25.066.i, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i ] ; 7 uses
  %.sroa.9.2.i = phi ptr [ %.sroa.9.3.i, %bb.cj ], [ %.sroa.9.1.i, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i ] ; 8 uses
  %.031.i.i = phi ptr [ %.1.i.i, %bb.cj ], [ %i.ky, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i ] ; 10 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 6 ; 2 uses
  %i.lc = load i16, ptr %i.lb, align 2            ; 3 uses
  %i.ld = lshr i16 %i.lc, 1
  %i.le = zext nneg i16 %i.ld to i64
  %i.lf = shl nuw nsw i64 %i.le, 3                ; 6 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 4
  %i.lh = load i16, ptr %i.lg, align 2
  %i.li = icmp ult i16 %i.lh, 4
  br i1 %i.li, label %bb.cj, label %bb.bj, !llvm.loop !23

bb.bj:                                            ; preds = %.lr.ph.i11.i
  %i.lj = trunc i16 %i.lc to i1
  br i1 %i.lj, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN5cppgc8internal16HeapObjectHeader8FinalizeEv(ptr noundef nonnull align 4 dereferenceable(8) %.031.i.i) #18
  br label %bb.cj, !llvm.loop !23

bb.bl:                                            ; preds = %bb.bj
  %i.lk = and i16 %i.lc, -2
  store i16 %i.lk, ptr %i.lb, align 2
  %i.ll = call noundef ptr @_ZN5cppgc8internal10NormalPage12PayloadStartEv(ptr noundef nonnull align 8 dereferenceable(2104) %.sroa.9.2.i) #18
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.sroa.25.1.i ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lf
  %i.lo = call noundef ptr @_ZN5cppgc8internal10NormalPage10PayloadEndEv(ptr noundef nonnull align 8 dereferenceable(2104) %.sroa.9.2.i) #18
  %i.lp = icmp ugt ptr %i.ln, %i.lo
  br i1 %i.lp, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN5cppgc8internal9BaseSpace7AddPageEPNS0_8BasePageE(ptr noundef nonnull align 8 dereferenceable(61) %i.im, ptr noundef nonnull %.sroa.9.2.i) #18
  %.not.i.i17.i.i = icmp eq i64 %.sroa.25.1.i, 128968
  br i1 %.not.i.i17.i.i, label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState24ReturnCurrentPageToSpaceEv.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lq = sub i64 128968, %.sroa.25.1.i           ; 2 uses
  %i.lr = call noundef ptr @_ZN5cppgc8internal10NormalPage12PayloadStartEv(ptr noundef nonnull align 8 dereferenceable(2104) %.sroa.9.2.i) #18
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.sroa.25.1.i ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ls, i8 0, i64 %i.lq, i1 false)
  call void @_ZN5cppgc8internal8FreeList3AddENS1_5BlockE(ptr noundef nonnull align 8 dereferenceable(280) %i.in, ptr %i.ls, i64 %i.lq) #18
  %i.lt = ptrtoint ptr %i.ls to i64               ; 2 uses
  %i.lu = lshr i64 %i.lt, 6
  %i.lv = and i64 %i.lu, 2047
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.9.2.i, i64 49
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lv ; 2 uses
  %i.ly = load i8, ptr %i.lx, align 1
  %i.lz = trunc i64 %i.lt to i32
  %i.ma = lshr i32 %i.lz, 3
  %i.mb = and i32 %i.ma, 7
  %i.mc = shl nuw nsw i32 1, %i.mb
  %i.md = trunc nuw i32 %i.mc to i8
  %i.me = or i8 %i.ly, %i.md
  store i8 %i.me, ptr %i.lx, align 1
  br label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState24ReturnCurrentPageToSpaceEv.exit.i.i.i

_ZN5cppgc8internal12_GLOBAL__N_115CompactionState24ReturnCurrentPageToSpaceEv.exit.i.i.i: ; preds = %bb.bn, %bb.bm
  %i.mf = getelementptr inbounds i8, ptr %.sroa.40.3.i, i64 -8 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8            ; 2 uses
  %i.mh = call noundef ptr @_ZN5cppgc8internal10NormalPage12PayloadStartEv(ptr noundef nonnull align 8 dereferenceable(2104) %i.mg) #18
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState24ReturnCurrentPageToSpaceEv.exit.i.i.i, %bb.bl
  %.sroa.40.5.i = phi ptr [ %i.mf, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState24ReturnCurrentPageToSpaceEv.exit.i.i.i ], [ %.sroa.40.3.i, %bb.bl ]
  %.sroa.25.3.i = phi i64 [ 0, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState24ReturnCurrentPageToSpaceEv.exit.i.i.i ], [ %.sroa.25.1.i, %bb.bl ]
  %.sroa.9.4.i = phi ptr [ %i.mg, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState24ReturnCurrentPageToSpaceEv.exit.i.i.i ], [ %.sroa.9.2.i, %bb.bl ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.mh, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState24ReturnCurrentPageToSpaceEv.exit.i.i.i ], [ %i.lm, %bb.bl ] ; 7 uses
  %.not.i16.i.i = icmp eq ptr %.0.i.i.i, %.031.i.i
  br i1 %.not.i16.i.i, label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState14RelocateObjectEPKNS0_10NormalPageEPhm.exit.i.i, label %bb.bp, !prof !15

bb.bp:                                            ; preds = %bb.bo
  %i.mi = icmp eq ptr %.sroa.9.4.i, %i.kf
  br i1 %i.mi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i, ptr nonnull align 1 %.031.i.i, i64 %i.lf, i1 false)
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i, ptr nonnull align 1 %.031.i.i, i64 %i.lf, i1 false)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.mj = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 8 ; 7 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 4 uses
  %i.ml = load i8, ptr %i.al, align 8, !range !5, !noundef !6
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %bb.bt, label %bb.bu, !prof !15

bb.bt:                                            ; preds = %bb.bs
  %i.mn = load ptr, ptr %3, align 8, !nonnull !6, !align !14
  call void @_ZN5cppgc8internal8HeapBase17CallMoveListenersEPhS2_m(ptr noundef nonnull align 8 dereferenceable(512) %i.mn, ptr noundef nonnull %.031.i.i, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.lf) #18
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.mo = load i64, ptr %i.ak, align 8
  %i.mp = icmp eq i64 %i.mo, 0
  br i1 %i.mp, label %_ZN5cppgc8internal12_GLOBAL__N_117MovableReferences26RelocateInteriorReferencesEPhS3_m.exit.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 6
  %i.mr = load i16, ptr %i.mq, align 2
  %i.ms = lshr i16 %i.mr, 1
  %i.mt = zext nneg i16 %i.ms to i64
  %i.mu = shl nuw nsw i64 %i.mt, 3                ; 2 uses
  %i.mv = add nsw i64 %i.mu, -8
  %i.mw = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.mw, null
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZN5cppgc8internal12_GLOBAL__N_117MovableReferences26RelocateInteriorReferencesEPhS3_m.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bv, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.mw, %bb.bv ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ag, %bb.bv ]
  %i.mx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 32
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = icmp ult ptr %i.my, %i.mj               ; 2 uses
  %.19.i.i.i.i.i.i.i.i = select i1 %i.mz, ptr %.0811.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i.i.i.i = select i1 %i.mz, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !19

_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.na = icmp eq ptr %.19.i.i.i.i.i.i.i.i, %i.ag
  br i1 %i.na, label %_ZN5cppgc8internal12_GLOBAL__N_117MovableReferences26RelocateInteriorReferencesEPhS3_m.exit.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i.i.i.i
  %i.nb = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.nc = getelementptr i8, ptr %.031.i.i, i64 %i.mu
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cb, %bb.bw
  %.sroa.023.0.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i, %bb.bw ], [ %i.nn, %bb.cb ] ; 3 uses
  %.pn.in.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.023.0.i.i.i.i.i, i64 32
  %.pn.in.i.i.i.i.i = load ptr, ptr %.pn.in.in.i.i.i.i.i, align 8
  %.pn.i.i.i.i.i = ptrtoint ptr %.pn.in.i.i.i.i.i to i64
  %.0.i.i.i.i.i = sub i64 %.pn.i.i.i.i.i, %i.nb   ; 2 uses
  %i.nd = icmp ult i64 %.0.i.i.i.i.i, %i.mv
  br i1 %i.nd, label %bb.by, label %_ZN5cppgc8internal12_GLOBAL__N_117MovableReferences26RelocateInteriorReferencesEPhS3_m.exit.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.023.0.i.i.i.i.i, i64 40 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8
  %.not.i.i.i.i12.i = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i.i12.i, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.0.i.i.i.i.i ; 3 uses
  store ptr %i.ng, ptr %i.ne, align 8
  %i.nh = load ptr, ptr %i.ng, align 8            ; 3 uses
  %i.ni = icmp ugt ptr %i.nh, %i.mj
  %i.nj = icmp ult ptr %i.nh, %i.nc
  %or.cond.i.i.i.i.i = select i1 %i.ni, i1 %i.nj, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.nk = ptrtoint ptr %i.nh to i64
  %i.nl = sub i64 %i.nk, %i.nb
  %i.nm = getelementptr inbounds i8, ptr %i.mk, i64 %i.nl
  store ptr %i.nm, ptr %i.ng, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.nn = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.023.0.i.i.i.i.i) #19 ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.ag
  br i1 %i.no, label %_ZN5cppgc8internal12_GLOBAL__N_117MovableReferences26RelocateInteriorReferencesEPhS3_m.exit.i.i.i.i, label %bb.bx, !llvm.loop !24

_ZN5cppgc8internal12_GLOBAL__N_117MovableReferences26RelocateInteriorReferencesEPhS3_m.exit.i.i.i.i: ; preds = %bb.cb, %bb.bx, %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i.i.i.i, %bb.bv, %bb.bu
  %i.np = load i64, ptr %i.ay, align 8
  %.not.not.i.i.i.i.i.i = icmp eq i64 %i.np, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.preheader69.i, label %bb.cd

.preheader69.i:                                   ; preds = %_ZN5cppgc8internal12_GLOBAL__N_117MovableReferences26RelocateInteriorReferencesEPhS3_m.exit.i.i.i.i, %bb.cc
  %.sroa.06.0.in.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i.i, %bb.cc ], [ %i.ad, %_ZN5cppgc8internal12_GLOBAL__N_117MovableReferences26RelocateInteriorReferencesEPhS3_m.exit.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i.i, align 8 ; 4 uses
  %i.nq = icmp eq ptr %.sroa.06.0.i.i.i.i.i.i, null
  br i1 %i.nq, label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState14RelocateObjectEPKNS0_10NormalPageEPhm.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %.preheader69.i
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = icmp eq ptr %i.mj, %i.ns
  br i1 %i.nt, label %_ZNSt13unordered_mapIPKvPS1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit.i.i.i.i, label %.preheader69.i, !llvm.loop !17

bb.cd:                                            ; preds = %_ZN5cppgc8internal12_GLOBAL__N_117MovableReferences26RelocateInteriorReferencesEPhS3_m.exit.i.i.i.i
  %i.nu = ptrtoint ptr %i.mj to i64
  %i.nv = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.nw = urem i64 %i.nu, %i.nv                   ; 2 uses
  %i.nx = load ptr, ptr %i.aa, align 8
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.nw
  %i.nz = load ptr, ptr %i.ny, align 8            ; 2 uses
  %.not.i.i.i.i13.i.i.i.i = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i.i13.i.i.i.i, label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState14RelocateObjectEPKNS0_10NormalPageEPhm.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oa = load ptr, ptr %i.nz, align 8            ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = icmp eq ptr %i.mj, %i.oc
  br i1 %i.od, label %_ZNSt13unordered_mapIPKvPS1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i14.i.i.i.i

bb.cf:                                            ; preds = %bb.cg
  %i.oe = icmp eq ptr %i.mj, %i.oh
  br i1 %i.oe, label %_ZNSt13unordered_mapIPKvPS1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i14.i.i.i.i, !llvm.loop !18

.lr.ph.i.i.i.i14.i.i.i.i:                         ; preds = %bb.ce, %bb.cf
  %.020.i.i.i.i.i.i.i.i = phi ptr [ %i.of, %bb.cf ], [ %i.oa, %bb.ce ]
  %i.of = load ptr, ptr %.020.i.i.i.i.i.i.i.i, align 8 ; 4 uses
  %.not18.i.i.i.i.i.i.i.i = icmp eq ptr %i.of, null
  br i1 %.not18.i.i.i.i.i.i.i.i, label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState14RelocateObjectEPKNS0_10NormalPageEPhm.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i14.i.i.i.i
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load ptr, ptr %i.og, align 8            ; 2 uses
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = urem i64 %i.oi, %i.nv
  %.not19.i.i.i.i.i.i.i.i = icmp eq i64 %i.oj, %i.nw
  br i1 %.not19.i.i.i.i.i.i.i.i, label %bb.cf, label %..loopexit_crit_edge21.i.i.i.i.i.i.i.i, !llvm.loop !18

..loopexit_crit_edge21.i.i.i.i.i.i.i.i:           ; preds = %bb.cg
  br label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState14RelocateObjectEPKNS0_10NormalPageEPhm.exit.i.i, !llvm.loop !18

_ZNSt13unordered_mapIPKvPS1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit.i.i.i.i: ; preds = %bb.cf, %bb.cc, %bb.ce
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i.i, %bb.cc ], [ %i.oa, %bb.ce ], [ %i.of, %bb.cf ]
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8            ; 6 uses
  %i.om = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.om, null
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt13unordered_mapIPKvPS1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.om, %_ZNSt13unordered_mapIPKvPS1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit.i.i.i.i ] ; 5 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ag, %_ZNSt13unordered_mapIPKvPS1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit.i.i.i.i ] ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 32
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = icmp ult ptr %i.oo, %i.ol               ; 4 uses
  %.19.i.i.i.i.i.i.i = select i1 %i.op, ptr %.0811.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i.i.i.i = select i1 %i.op, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPPKvSt4pairIKS2_PhESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !19

_ZNSt8_Rb_treeIPPKvSt4pairIKS2_PhESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.oq = icmp eq ptr %.19.i.i.i.i.i.i.i, %i.ag
  br i1 %i.oq, label %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread.i.i.i.i, label %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.i.i.i.i

_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIPPKvSt4pairIKS2_PhESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i
  %.19.i.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.op, ptr %.0811.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i
  %.19.i.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.or = load ptr, ptr %.19.i.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  %i.os = icmp ult ptr %i.ol, %i.or
  br i1 %i.os, label %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.i.i.i.i
  %.19.i.i.i.i.i.i.i.sroa.sel31.v.sroa.sel.v.sroa.sel.v = select i1 %i.op, ptr %.0811.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i
  %.19.i.i.i.i.i.i.i.sroa.sel31.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.sroa.sel31.v.sroa.sel.v.sroa.sel.v, i64 40 ; 2 uses
  %i.ot = load ptr, ptr %.19.i.i.i.i.i.i.i.sroa.sel31.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not.i17.i.i.i, label %bb.ci, label %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.mk, ptr %.19.i.i.i.i.i.i.i.sroa.sel31.v.sroa.sel.v.sroa.sel, align 8
  br label %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread.i.i.i.i

_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread.i.i.i.i: ; preds = %bb.ci, %bb.ch, %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.i.i.i.i, %_ZNSt8_Rb_treeIPPKvSt4pairIKS2_PhESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i, %_ZNSt13unordered_mapIPKvPS1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit.i.i.i.i
  %.0.i.i.i.i17 = phi ptr [ %i.ol, %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.i.i.i.i ], [ %i.ol, %bb.ci ], [ %i.ot, %bb.ch ], [ %i.ol, %_ZNSt13unordered_mapIPKvPS1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit.i.i.i.i ], [ %i.ol, %_ZNSt8_Rb_treeIPPKvSt4pairIKS2_PhESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i ]
  store ptr %i.mk, ptr %.0.i.i.i.i17, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState14RelocateObjectEPKNS0_10NormalPageEPhm.exit.i.i

_ZN5cppgc8internal12_GLOBAL__N_115CompactionState14RelocateObjectEPKNS0_10NormalPageEPhm.exit.i.i: ; preds = %.lr.ph.i.i.i.i14.i.i.i.i, %.preheader69.i, %_ZNSt3mapIPPKvPhSt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i.i.i, %bb.cd, %bb.bo
  %i.ou = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ov = lshr i64 %i.ou, 6
  %i.ow = and i64 %i.ov, 2047
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.9.4.i, i64 49
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.ow ; 2 uses
  %i.oz = load i8, ptr %i.oy, align 1
  %i.pa = trunc i64 %i.ou to i32
  %i.pb = lshr i32 %i.pa, 3
  %i.pc = and i32 %i.pb, 7
  %i.pd = shl nuw nsw i32 1, %i.pc
  %i.pe = trunc nuw i32 %i.pd to i8
  %i.pf = or i8 %i.oz, %i.pe
  store i8 %i.pf, ptr %i.oy, align 1
  %i.pg = add i64 %.sroa.25.3.i, %i.lf
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState14RelocateObjectEPKNS0_10NormalPageEPhm.exit.i.i, %bb.bk, %.lr.ph.i11.i
  %.sroa.40.4.i = phi ptr [ %.sroa.40.3.i, %.lr.ph.i11.i ], [ %.sroa.40.5.i, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState14RelocateObjectEPKNS0_10NormalPageEPhm.exit.i.i ], [ %.sroa.40.3.i, %bb.bk ] ; 2 uses
  %.sroa.25.2.i = phi i64 [ %.sroa.25.1.i, %.lr.ph.i11.i ], [ %i.pg, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState14RelocateObjectEPKNS0_10NormalPageEPhm.exit.i.i ], [ %.sroa.25.1.i, %bb.bk ] ; 2 uses
  %.sroa.9.3.i = phi ptr [ %.sroa.9.2.i, %.lr.ph.i11.i ], [ %.sroa.9.4.i, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState14RelocateObjectEPKNS0_10NormalPageEPhm.exit.i.i ], [ %.sroa.9.2.i, %bb.bk ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 %i.lf ; 2 uses
  %i.ph = call noundef ptr @_ZN5cppgc8internal10NormalPage10PayloadEndEv(ptr noundef nonnull align 8 dereferenceable(2104) %i.kf) #18
  %i.pi = icmp ult ptr %.1.i.i, %i.ph
  br i1 %i.pi, label %.lr.ph.i11.i, label %_ZN5cppgc8internal12_GLOBAL__N_111CompactPageEPNS0_10NormalPageERNS1_15CompactionStateENS0_10StickyBitsE.exit.i

_ZN5cppgc8internal12_GLOBAL__N_111CompactPageEPNS0_10NormalPageERNS1_15CompactionStateENS0_10StickyBitsE.exit.i: ; preds = %bb.cj, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i
  %.sroa.40.6.i = phi ptr [ %.sroa.40.2.i, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i ], [ %.sroa.40.4.i, %bb.cj ] ; 6 uses
  %.sroa.25.4.i = phi i64 [ %.sroa.25.066.i, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i ], [ %.sroa.25.2.i, %bb.cj ] ; 5 uses
  %.sroa.9.5.i = phi ptr [ %.sroa.9.1.i, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState7AddPageEPNS0_10NormalPageE.exit.i.i ], [ %.sroa.9.3.i, %bb.cj ] ; 6 uses
  store i8 1, ptr %i.kx, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.014.067.i, i64 8 ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.ip
  br i1 %i.pk, label %bb.at, label %.preheader.i

_ZN5cppgc8internal12_GLOBAL__N_115CompactionStateD2Ev.exitthread-pre-split.i: ; preds = %bb.bc, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionState21FinishCompactingSpaceEv.exit.i
  %.pr.i = load ptr, ptr %1, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_115CompactionStateD2Ev.exit.i

_ZN5cppgc8internal12_GLOBAL__N_115CompactionStateD2Ev.exit.i: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_115CompactionStateD2Ev.exitthread-pre-split.i, %bb.as
  %i.pl = phi ptr [ %.pr.i, %_ZN5cppgc8internal12_GLOBAL__N_115CompactionStateD2Ev.exitthread-pre-split.i ], [ %i.io, %bb.as ] ; 3 uses
  %.not.i.i.i13.i = icmp eq ptr %i.pl, null
  br i1 %.not.i.i.i13.i, label %_ZN5cppgc8internal12_GLOBAL__N_112CompactSpaceEPNS0_15NormalPageSpaceERNS1_17MovableReferencesENS0_10StickyBitsE.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZN5cppgc8internal12_GLOBAL__N_115CompactionStateD2Ev.exit.i
  %i.pm = load ptr, ptr %i.hd, align 8
  %i.pn = ptrtoint ptr %i.pm to i64
  %i.po = ptrtoint ptr %i.pl to i64
  %i.pp = sub i64 %i.pn, %i.po
  call void @_ZdlPvm(ptr noundef nonnull %i.pl, i64 noundef %i.pp) #17
  br label %_ZN5cppgc8internal12_GLOBAL__N_112CompactSpaceEPNS0_15NormalPageSpaceERNS1_17MovableReferencesENS0_10StickyBitsE.exit

_ZN5cppgc8internal12_GLOBAL__N_112CompactSpaceEPNS0_15NormalPageSpaceERNS1_17MovableReferencesENS0_10StickyBitsE.exit: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_115CompactionStateD2Ev.exit.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.018.076, i64 8 ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.gz
  br i1 %i.pr, label %._crit_edge, label %bb.as

bb.cl:                                            ; preds = %_ZNSt10unique_ptrIN5cppgc8internal19CompactionWorklistsESt14default_deleteIS2_EE5resetEPS2_.exit, %_ZN5cppgc8internal14StatsCollector13InternalScopeILNS1_13TraceCategoryE0ELNS1_12ScopeContextE0EED2Ev.exit
end_hunk_0
