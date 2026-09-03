Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Analysis?download=true
inline.NumInlined: 1525
inline.NumDeleted: 715
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEE4growEj:bb.a
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.10, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef %i.dl) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.10

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.10:        ; preds = %bb.aa, %bb.z, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.9, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.9
  %.1.10 = phi ptr [ %.1.9, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.9 ], [ %.1.9, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.9 ], [ %i.dj, %bb.z ], [ %i.dj, %bb.aa ] ; 6 uses
  %.0.ptr38.11 = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.do = load ptr, ptr %.0.ptr38.11, align 8, !tbaa !30 ; 2 uses
  %magicptr.11 = ptrtoint ptr %i.do to i64
  switch i64 %magicptr.11, label %bb.ab [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.11
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.11
  ]

bb.ab:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.10
  store ptr %i.do, ptr %.1.10, align 8, !tbaa !30
  %i.dp = getelementptr inbounds nuw i8, ptr %.1.10, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1.10, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noundef nonnull %i.dr, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.dq) #11
  %i.ds = getelementptr inbounds nuw i8, ptr %.1.10, i64 56 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !16 ; 2 uses
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !15
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.11, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.du) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.11

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.11:        ; preds = %bb.ac, %bb.ab, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.10, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.10
  %.1.11 = phi ptr [ %.1.10, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.10 ], [ %.1.10, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.10 ], [ %i.ds, %bb.ab ], [ %i.ds, %bb.ac ] ; 6 uses
  %.0.ptr38.12 = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.dx = load ptr, ptr %.0.ptr38.12, align 8, !tbaa !30 ; 2 uses
  %magicptr.12 = ptrtoint ptr %i.dx to i64
  switch i64 %magicptr.12, label %bb.ad [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.12
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.12
  ]

bb.ad:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.11
  store ptr %i.dx, ptr %.1.11, align 8, !tbaa !30
  %i.dy = getelementptr inbounds nuw i8, ptr %.1.11, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.1.11, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef nonnull %i.ea, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.dz) #11
  %i.eb = getelementptr inbounds nuw i8, ptr %.1.11, i64 56 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !16 ; 2 uses
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !15
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.12, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.ed) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.12

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.12:        ; preds = %bb.ae, %bb.ad, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.11, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.11
  %.1.12 = phi ptr [ %.1.11, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.11 ], [ %.1.11, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.11 ], [ %i.eb, %bb.ad ], [ %i.eb, %bb.ae ] ; 6 uses
  %.0.ptr38.13 = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.eg = load ptr, ptr %.0.ptr38.13, align 8, !tbaa !30 ; 2 uses
  %magicptr.13 = ptrtoint ptr %i.eg to i64
  switch i64 %magicptr.13, label %bb.af [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13
  ]

bb.af:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.12
  store ptr %i.eg, ptr %.1.12, align 8, !tbaa !30
  %i.eh = getelementptr inbounds nuw i8, ptr %.1.12, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1.12, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef nonnull %i.ej, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.ei) #11
  %i.ek = getelementptr inbounds nuw i8, ptr %.1.12, i64 56 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !16 ; 2 uses
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !15
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.em) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13:        ; preds = %bb.ag, %bb.af, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.12, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.12
  %.1.13 = phi ptr [ %.1.12, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.12 ], [ %.1.12, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.12 ], [ %i.ek, %bb.af ], [ %i.ek, %bb.ag ] ; 6 uses
  %.0.ptr38.14 = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ep = load ptr, ptr %.0.ptr38.14, align 8, !tbaa !30 ; 2 uses
  %magicptr.14 = ptrtoint ptr %i.ep to i64
  switch i64 %magicptr.14, label %bb.ah [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14
  ]

bb.ah:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13
  store ptr %i.ep, ptr %.1.13, align 8, !tbaa !30
  %i.eq = getelementptr inbounds nuw i8, ptr %.1.13, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.1.13, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.eq, ptr noundef nonnull %i.es, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.er) #11
  %i.et = getelementptr inbounds nuw i8, ptr %.1.13, i64 56 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !16 ; 2 uses
  %i.ew = load ptr, ptr %i.er, align 8, !tbaa !15
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef %i.ev) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14:        ; preds = %bb.ai, %bb.ah, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13
  %.1.14 = phi ptr [ %.1.13, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13 ], [ %.1.13, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.13 ], [ %i.et, %bb.ah ], [ %i.et, %bb.ai ] ; 6 uses
  %.0.ptr38.15 = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ey = load ptr, ptr %.0.ptr38.15, align 8, !tbaa !30 ; 2 uses
  %magicptr.15 = ptrtoint ptr %i.ey to i64
  switch i64 %magicptr.15, label %bb.aj [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15
  ]

bb.aj:                                            ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14
  store ptr %i.ey, ptr %.1.14, align 8, !tbaa !30
  %i.ez = getelementptr inbounds nuw i8, ptr %.1.14, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.1.14, i64 40
  call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ez, ptr noundef nonnull %i.fb, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.fa) #11
  %i.fc = getelementptr inbounds nuw i8, ptr %.1.14, i64 56 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !16 ; 2 uses
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !15
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.fe) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15:        ; preds = %bb.ak, %bb.aj, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14
  %.1.15 = phi ptr [ %.1.14, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14 ], [ %.1.14, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.14 ], [ %i.fc, %bb.aj ], [ %i.fc, %bb.ak ]
  %i.fh = load i32, ptr %0, align 8
  %i.fi = and i32 %i.fh, -2
  store i32 %i.fi, ptr %0, align 8
  %i.fj = zext i32 %.027 to i64
  %i.fk = mul nuw nsw i64 %i.fj, 56
  %i.fl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #15
  store ptr %i.fl, ptr %i.s, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.027, ptr %i.fm, align 8
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E18moveFromOldBucketsEPSD_SG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %2, ptr noundef nonnull %.1.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.ap

bb.al:                                            ; preds = %bb.c
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.fn, align 8, !tbaa !83 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11
  %i.fo = icmp ult i32 %.027, 17
  br i1 %i.fo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fp = or disjoint i32 %i.p, 1
  store i32 %i.fp, ptr %0, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fq = zext i32 %.027 to i64
  %i.fr = mul nuw nsw i64 %i.fq, 56
  %i.fs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #15
  store ptr %i.fs, ptr %i.fn, align 8
  store i32 %.027, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ft = zext i32 %.sroa.6.0.copyload to i64
  %i.fu = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload, i64 %i.ft
  tail call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E18moveFromOldBucketsEPSD_SG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.sroa.0.0.copyload, ptr noundef %i.fu)
  tail call void @_ZdlPv(ptr noundef %.sroa.0.0.copyload) #11
  br label %bb.ap

bb.ap:                                            ; preds = %bb.d, %bb.ao, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E18moveFromOldBucketsEPSD_SG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1                          ; 2 uses
  store i32 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !65
  %.not.i.i.i.i = icmp eq i32 %i.b, 0             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 16 ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx.i = mul nuw nsw i64 %i.j, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.f, %bb.a ] ; 2 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %.07.i, i64 56 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !293

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit: ; preds = %.lr.ph.i, %bb.a
  %.not20 = icmp eq ptr %1, %2
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
  %.021 = phi ptr [ %i.bb, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit ], [ %1, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E9initEmptyEv.exit ] ; 4 uses
  %i.m = load ptr, ptr %.021, align 8, !tbaa !30  ; 4 uses
  %magicptr = ptrtoint ptr %i.m to i64            ; 2 uses
  switch i64 %magicptr, label %bb.b [
    i64 -8, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
    i64 -16, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.n = load i32, ptr %0, align 8
  %i.o = and i32 %i.n, 1
  %.not.i.i.i.i15 = icmp eq i32 %i.o, 0           ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8
  %i.q = select i1 %.not.i.i.i.i15, ptr %i.p, ptr %i.d ; 2 uses
  %i.r = load i32, ptr %i.g, align 8
  %i.s = select i1 %.not.i.i.i.i15, i32 %i.r, i32 16 ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = trunc i64 %magicptr to i32               ; 2 uses
  %i.v = lshr i32 %i.u, 4
  %i.w = lshr i32 %i.u, 9
  %i.x = xor i32 %i.v, %i.w
  %i.y = add i32 %i.s, -1                         ; 2 uses
  %.02745.i.i = and i32 %i.y, %i.x                ; 2 uses
  %i.z = zext nneg i32 %.02745.i.i to i64
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.z ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30 ; 2 uses
  %i.ac = icmp eq ptr %i.m, %i.ab
  br i1 %i.ac, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %.lr.ph.i.i, !prof !70

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.ad = phi ptr [ %i.an, %bb.d ], [ %i.ab, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %i.am, %bb.d ], [ %i.aa, %bb.b ] ; 2 uses
  %.02748.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02745.i.i, %bb.b ]
  %.047.i.i = phi i32 [ %i.aj, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02946.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.af = icmp eq ptr %i.ad, inttoptr (i64 -8 to ptr)
  br i1 %i.af, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02946.i.i, null
  %i.ag = select i1 %.not.i.i, ptr %i.ae, ptr %.02946.i.i
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ah = icmp eq ptr %i.ad, inttoptr (i64 -16 to ptr)
  %i.ai = icmp eq ptr %.02946.i.i, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ai, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.ae, ptr %.02946.i.i
  %i.aj = add i32 %.047.i.i, 1
  %i.ak = add i32 %.047.i.i, %.02748.i.i
  %.027.i.i = and i32 %i.ak, %i.y                 ; 2 uses
  %i.al = zext i32 %.027.i.i to i64
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.al ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  %i.ao = icmp eq ptr %i.m, %i.an
  br i1 %i.ao, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit, label %.lr.ph.i.i, !prof !71, !llvm.loop !3

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.aa, %bb.b ], [ %i.am, %bb.d ] ; 3 uses
  store ptr %i.m, ptr %.sink.i.i, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 40
  tail call void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull %i.ar, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %i.aq) #11
  %i.as = load i32, ptr %0, align 8               ; 2 uses
  %i.at = and i32 %i.as, -2
  %i.au = add i32 %i.at, 2
  %i.av = and i32 %i.as, 1
  %i.aw = or disjoint i32 %i.au, %i.av
  store i32 %i.aw, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16 ; 2 uses
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !15
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit
  tail call void @free(ptr noundef %i.ay) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %.lr.ph, %.lr.ph, %bb.e, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.021, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.bb, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !294
}

declare void @_ZN4llvh19SmallPtrSetImplBaseC2EPPKvjOS0_(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !76     ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.c, -1                         ; 2 uses
  %.02744.i = and i32 %i.j, %i.k                  ; 2 uses
  %i.l = zext nneg i32 %.02744.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %i.o = icmp eq ptr %i.e, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_.exit, label %.lr.ph.i, !prof !70

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.p = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %i.y, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.02747.i = phi i32 [ %.027.i, %bb.d ], [ %.02744.i, %bb.b ]
  %.046.i = phi i32 [ %i.v, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.r, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02945.i, null
  %i.s = select i1 %.not.i, ptr %i.q, ptr %.02945.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = icmp eq ptr %i.p, inttoptr (i64 -16 to ptr)
  %i.u = icmp eq ptr %.02945.i, null
  %or.cond.not.i = select i1 %i.t, i1 %i.u, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.q, ptr %.02945.i
  %i.v = add i32 %.046.i, 1
  %i.w = add i32 %.046.i, %.02747.i
  %.027.i = and i32 %i.w, %i.k                    ; 2 uses
  %i.x = zext i32 %.027.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = icmp eq ptr %i.e, %i.z
  br i1 %i.aa, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_.exit, label %.lr.ph.i, !prof !71, !llvm.loop !4

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPKSC_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ]
  %.234.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !84
  ret i1 %.234.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16FindAndConstructERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !80   ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !76     ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02744.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02744.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !70

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.b ]
  %.046.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02945.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.02945.i.i
  %i.w = add i32 %.046.i.i, 1
  %i.x = add i32 %.046.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.027.i.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76  ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !71, !llvm.loop !4

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !85 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !27

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !86
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !27

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !85
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !84
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 5 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !85
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16InsertIntoBucketIRKS5_JEEEPSC_SI_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !86
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !86
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16InsertIntoBucketIRKS5_JEEEPSC_SI_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16InsertIntoBucketIRKS5_JEEEPSC_SI_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %1, align 8, !tbaa !76
  store ptr %i.av, ptr %i.an, align 8, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.aw, align 8, !tbaa !296
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i8 0, ptr %i.ax, align 4, !tbaa !297
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16InsertIntoBucketIRKS5_JEEEPSC_SI_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E16InsertIntoBucketIRKS5_JEEEPSC_SI_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !79     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !80
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #15 ; 7 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !79
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !86
  %i.w = load i32, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !298

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !299

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !86
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !300

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !76
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !76
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !76
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !299

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i, %bb.f
  %.020.i = phi ptr [ %i.ck, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.020.i, align 8, !tbaa !76 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bg to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.c [
    i64 -8, label %bb.f
    i64 -16, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i6
  %i.bh = load ptr, ptr %0, align 8, !tbaa !79    ; 2 uses
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.bj = icmp ne i32 %i.bi, 0
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bl = lshr i32 %i.bk, 4
  %i.bm = lshr i32 %i.bk, 9
  %i.bn = xor i32 %i.bl, %i.bm
  %i.bo = add i32 %i.bi, -1                       ; 2 uses
  %.02744.i.i.i = and i32 %i.bo, %i.bn            ; 2 uses
  %i.bp = zext nneg i32 %.02744.i.i.i to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !76 ; 2 uses
  %i.bs = icmp eq ptr %i.bg, %i.br
  br i1 %i.bs, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit.i, label %.lr.ph.i.i.i, !prof !70

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bt = phi ptr [ %i.cd, %bb.e ], [ %i.br, %bb.c ] ; 2 uses
  %i.bu = phi ptr [ %i.cc, %bb.e ], [ %i.bq, %bb.c ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.e ], [ %.02744.i.i.i, %bb.c ]
  %.046.i.i.i = phi i32 [ %i.bz, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bv = icmp eq ptr %i.bt, inttoptr (i64 -8 to ptr)
  br i1 %i.bv, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02945.i.i.i, null
  %i.bw = select i1 %.not.i.i.i, ptr %i.bu, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = icmp eq ptr %i.bt, inttoptr (i64 -16 to ptr)
  %i.by = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bx, i1 %i.by, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bu, ptr %.02945.i.i.i
  %i.bz = add i32 %.046.i.i.i, 1
  %i.ca = add i32 %.046.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.ca, %i.bo              ; 2 uses
  %i.cb = zext i32 %.027.i.i.i to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.cb ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !76 ; 2 uses
  %i.ce = icmp eq ptr %i.bg, %i.cd
  br i1 %i.ce, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit.i, label %.lr.ph.i.i.i, !prof !71, !llvm.loop !4

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bw, %bb.d ], [ %i.bq, %bb.c ], [ %i.cc, %bb.e ] ; 2 uses
  store ptr %i.bg, ptr %.sink.i.i.i, align 8, !tbaa !76
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  store i64 %i.ch, ptr %i.cf, align 8
  %i.ci = load i32, ptr %i.ao, align 8, !tbaa !85
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ao, align 8, !tbaa !85
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ck, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_.exit, label %.lr.ph.i6, !llvm.loop !301

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #11
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !26}
!1 = distinct !{!1, !26}
!2 = distinct !{!2, !26}
!3 = distinct !{!3, !26}
!4 = distinct !{!4, !26}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"any p2 pointer", !12, i64 0}
!14 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !13, i64 0, !13, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !13, i64 8}
!17 = !{!14, !10, i64 16}
!18 = !{!14, !10, i64 20}
!19 = !{!14, !10, i64 24}
!20 = !{!"_ZTSN4llvh15SmallVectorBaseE", !12, i64 0, !10, i64 8, !10, i64 12}
!21 = !{!20, !12, i64 0}
!22 = !{!20, !10, i64 8}
!23 = !{!20, !10, i64 12}
!24 = !{!"p1 _ZTSN6hermes10BasicBlockE", !12, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!"p2 _ZTSN6hermes10BasicBlockE", !13, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!24, !24, i64 0}
!31 = !{!29, !28, i64 0}
!32 = !{!"p1 _ZTSN6hermes7ContextE", !12, i64 0}
!33 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !12, i64 0}
!34 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !33, i64 0, !33, i64 8}
!35 = !{!34, !33, i64 8}
!36 = !{}
!37 = !{!"bool", !9, i64 0}
!38 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!39 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!40 = !{!"_ZTSSt18_Rb_tree_node_base", !38, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!41 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!42 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !41, i64 0}
!43 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !34, i64 0}
!44 = !{!"_ZTSN6hermes9ValueKindE", !9, i64 0}
!45 = !{!"short", !9, i64 0}
!46 = !{!"_ZTSN6hermes4TypeE", !45, i64 0, !45, i64 2}
!47 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !20, i64 0}
!48 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !47, i64 0}
!49 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !48, i64 0}
!50 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !9, i64 0}
!51 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !49, i64 0, !50, i64 16}
!52 = !{!"_ZTSN6hermes5ValueE", !44, i64 0, !46, i64 2, !51, i64 8}
!53 = !{!"p1 _ZTSN6hermes8FunctionE", !12, i64 0}
!54 = !{!"p1 omnipotent char", !12, i64 0}
!55 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm256EEE", !9, i64 0}
!56 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA16_NS_6detail12DenseMapPairIPKN6hermes10BasicBlockEPS4_EENS_13SmallDenseMapIS6_S7_Lj16ENS_12DenseMapInfoIS6_EES8_E8LargeRepEccccccccEE", !55, i64 0}
!57 = !{!"_ZTSN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEE", !10, i64 0, !10, i64 0, !10, i64 4, !56, i64 8}
!58 = !{!57, !10, i64 4}
!59 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA16_NS_6detail12DenseMapPairIPKN6hermes10BasicBlockEiEENS_13SmallDenseMapIS6_iLj16ENS_12DenseMapInfoIS6_EES7_E8LargeRepEccccccccEE", !55, i64 0}
!60 = !{!"_ZTSN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEEE", !10, i64 0, !10, i64 0, !10, i64 4, !59, i64 8}
!61 = !{!60, !10, i64 4}
!62 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm896EEE", !9, i64 0}
!63 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA16_NS_6detail12DenseMapPairIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS4_Lj2EEEEENS_13SmallDenseMapIS6_S9_Lj16ENS_12DenseMapInfoIS6_EESA_E8LargeRepEccccccccEE", !62, i64 0}
!64 = !{!"_ZTSN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEE", !10, i64 0, !10, i64 0, !10, i64 4, !63, i64 8}
!65 = !{!64, !10, i64 4}
!66 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPKN6hermes10BasicBlockEiEE", !12, i64 0}
!67 = !{!"_ZTSN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockEiNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEELb0EEE", !66, i64 0, !66, i64 8}
!68 = !{!"_ZTSSt4pairIN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockEiNS0_12DenseMapInfoIS5_EENS0_6detail12DenseMapPairIS5_iEELb0EEEbE", !67, i64 0, !37, i64 16}
!69 = !{!68, !37, i64 16}
!70 = !{!"branch_weights", i32 1999, i32 1}
!71 = !{!"branch_weights", i32 1, i32 0}
!72 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEEEE", !12, i64 0}
!73 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPKN6hermes10BasicBlockEPS3_EE", !12, i64 0}
!74 = !{!66, !66, i64 0}
!75 = !{!"p1 _ZTSN6hermes9ScopeDescE", !12, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataEEE", !12, i64 0}
!78 = !{!"_ZTSN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEE", !77, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!79 = !{!78, !77, i64 0}
!80 = !{!78, !10, i64 16}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!73, !73, i64 0}
!83 = !{!72, !72, i64 0}
!84 = !{!77, !77, i64 0}
!85 = !{!78, !10, i64 8}
!86 = !{!78, !10, i64 12}
!87 = distinct !{!87, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_"}
!88 = distinct !{!88, !87, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
!89 = distinct !{!89, !26}
!90 = distinct !{!90, !26}
!91 = !{!"p1 _ZTSN6hermes14TerminatorInstE", !12, i64 0}
!92 = !{!"_ZTSN4llvh12SuccIteratorIN6hermes14TerminatorInstENS1_10BasicBlockEEE", !91, i64 0, !10, i64 8}
!93 = !{!"_ZTSZN6hermes17PostOrderAnalysis14visitPostOrderEPNS_10BasicBlockERSt6vectorIS2_SaIS2_EEE5State", !24, i64 0, !92, i64 8, !92, i64 24}
!94 = !{!93, !24, i64 0}
!95 = !{!92, !10, i64 8}
!96 = !{!88}
!97 = !{!29, !28, i64 8}
!98 = !{!29, !28, i64 16}
!99 = !{!32, !32, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EE12_Vector_implE", !29, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EE", !100, i64 0}
!102 = !{!"_ZTSSt6vectorIPN6hermes10BasicBlockESaIS2_EE", !101, i64 0}
!103 = !{!"_ZTSN6hermes17PostOrderAnalysisE", !32, i64 0, !102, i64 8}
!104 = !{!103, !32, i64 0}
!105 = !{i64 8}
!106 = !{!"vtable pointer", !8, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"p1 _ZTSN6hermes18SourceErrorManagerE", !12, i64 0}
!109 = !{!"p1 _ZTSN4llvh11raw_ostreamE", !12, i64 0}
!110 = !{!"_ZTSSt4lessIPN6hermes5ValueEE"}
!111 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPN6hermes5ValueEEE", !110, i64 0}
!112 = !{!"long", !9, i64 0}
!113 = !{!"_ZTSSt15_Rb_tree_header", !40, i64 0, !112, i64 32}
!114 = !{!"_ZTSNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !111, i64 0, !113, i64 8}
!115 = !{!"_ZTSSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE", !114, i64 0}
!116 = !{!"_ZTSSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE", !115, i64 0}
!117 = !{!"_ZTSN6hermes16InstructionNamerE", !116, i64 0, !10, i64 48}
!118 = !{!"_ZTSN6hermes9IRPrinterE", !10, i64 8, !108, i64 16, !109, i64 24, !37, i64 32, !117, i64 40, !117, i64 96, !117, i64 152}
!119 = !{!118, !10, i64 8}
!120 = !{!"p1 _ZTSSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS2_EE", !12, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!122 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !121, i64 0}
!123 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !122, i64 0}
!124 = !{!"_ZTSSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !123, i64 0}
!125 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocator5StateE", !12, i64 0}
!126 = !{!"_ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !124, i64 0, !125, i64 24}
!127 = !{!"p1 _ZTSN6hermes6parser13PreParsedDataE", !12, i64 0}
!128 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes6parser13PreParsedDataELb0EE", !127, i64 0}
!129 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !128, i64 0}
!130 = !{!"_ZTSSt5tupleIJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !129, i64 0}
!131 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !130, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes6parser13PreParsedDataESt14default_deleteIS2_ELb1ELb1EE", !131, i64 0}
!133 = !{!"_ZTSSt10unique_ptrIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !132, i64 0}
!134 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !12, i64 0}
!135 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_9StringRefEPN6hermes12UniqueStringEEE", !12, i64 0}
!136 = !{!"_ZTSN4llvh8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S4_EEEE", !135, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!137 = !{!"_ZTSN6hermes11StringTableE", !134, i64 0, !136, i64 8}
!138 = !{!"_ZTSSt4lessISt4pairIPN6hermes12UniqueStringES3_EE"}
!139 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIPN6hermes12UniqueStringES4_EEE", !138, i64 0}
!140 = !{!"_ZTSNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !139, i64 0, !113, i64 8}
!141 = !{!"_ZTSSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE", !140, i64 0}
!142 = !{!"_ZTSSt3mapISt4pairIPN6hermes12UniqueStringES3_ENS1_14CompiledRegExpESt4lessIS4_ESaIS0_IKS4_S5_EEE", !141, i64 0}
!143 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes18SourceErrorManagerELb0EE", !108, i64 0}
!144 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !143, i64 0}
!145 = !{!"_ZTSSt5tupleIJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !144, i64 0}
!146 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !145, i64 0}
!147 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes18SourceErrorManagerESt14default_deleteIS1_ELb1ELb1EE", !146, i64 0}
!148 = !{!"_ZTSSt10unique_ptrIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !147, i64 0}
!149 = !{!"_ZTSN6hermes16ParseFlowSettingE", !9, i64 0}
!150 = !{!"p1 _ZTSN4llvh8DenseMapINS_9StringRefENS0_IS1_S1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEEES3_NS5_IS1_S7_EEEE", !12, i64 0}
!151 = !{!"_ZTSSt10_Head_baseILm0EPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEELb0EE", !150, i64 0}
!152 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !151, i64 0}
!153 = !{!"_ZTSSt5tupleIJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !152, i64 0}
!154 = !{!"_ZTSSt15__uniq_ptr_implIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !153, i64 0}
!155 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_ELb1ELb1EE", !154, i64 0}
!156 = !{!"_ZTSSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !155, i64 0}
!157 = !{!"p1 int", !12, i64 0}
!158 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !157, i64 0, !157, i64 8, !157, i64 16}
!159 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !158, i64 0}
!160 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !159, i64 0}
!161 = !{!"_ZTSSt6vectorIjSaIjEE", !160, i64 0}
!162 = !{!"_ZTSN6hermes16DebugInfoSettingE", !9, i64 0}
!163 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm64EEE", !9, i64 0}
!164 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA4_NS_6detail12DenseSetPairINS_9StringRefEEENS_13SmallDenseMapIS3_NS1_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EES4_E8LargeRepEccccccccEE", !163, i64 0}
!165 = !{!"_ZTSN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEEE", !10, i64 0, !10, i64 0, !10, i64 4, !164, i64 8}
!166 = !{!"_ZTSN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_EE", !165, i64 0}
!167 = !{!"_ZTSN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEE", !166, i64 0}
!168 = !{!"_ZTSN6hermes35CodeGenerationSettings_DumpSettingsE", !37, i64 0, !167, i64 8, !167, i64 80}
!169 = !{!"_ZTSN6hermes22CodeGenerationSettingsE", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8, !37, i64 9, !168, i64 16, !168, i64 168, !167, i64 320}
!170 = !{!"_ZTSN6hermes20OptimizationSettingsE", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5}
!171 = !{!"p1 _ZTSN6hermes3hbc14BackendContextE", !12, i64 0}
!172 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc14BackendContextELN9__gnu_cxx12_Lock_policyE2EE", !171, i64 0, !42, i64 8}
!173 = !{!"_ZTSSt10shared_ptrIN6hermes3hbc14BackendContextEE", !172, i64 0}
!174 = !{!"_ZTSN6hermes7ContextE", !126, i64 0, !126, i64 32, !133, i64 64, !137, i64 72, !142, i64 104, !148, i64 152, !108, i64 160, !37, i64 168, !37, i64 169, !37, i64 170, !10, i64 172, !10, i64 176, !37, i64 180, !37, i64 181, !37, i64 182, !37, i64 183, !37, i64 184, !37, i64 185, !149, i64 188, !37, i64 192, !37, i64 193, !156, i64 200, !161, i64 208, !162, i64 232, !37, i64 236, !169, i64 240, !170, i64 632, !173, i64 640}
!175 = !{!174, !108, i64 160}
!176 = !{!108, !108, i64 0}
!177 = !{!109, !109, i64 0}
!178 = !{!118, !37, i64 32}
!179 = !{!113, !38, i64 0}
!180 = !{!113, !39, i64 8}
!181 = !{!113, !39, i64 16}
!182 = !{!113, !39, i64 24}
!183 = !{!113, !112, i64 32}
!184 = !{!117, !10, i64 48}
!185 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes10BasicBlockEJEEE", !43, i64 0}
!186 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes10BasicBlockENS1_8FunctionEJEEE", !185, i64 0}
!187 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !34, i64 0}
!188 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !187, i64 0}
!189 = !{!"_ZTSN4llvh12simple_ilistIN6hermes11InstructionEJEEE", !188, i64 0}
!190 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes11InstructionEJEEENS_12ilist_traitsIS3_EEEE", !189, i64 0}
!191 = !{!"_ZTSN4llvh6iplistIN6hermes11InstructionEJEEE", !190, i64 0}
!192 = !{!"_ZTSN6hermes10BasicBlockE", !186, i64 0, !52, i64 16, !191, i64 56, !53, i64 72}
!193 = !{!192, !53, i64 72}
!194 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !9, i64 0}
!195 = !{!"_ZTSN4llvh11raw_ostreamE", !54, i64 8, !54, i64 16, !54, i64 24, !194, i64 32}
!196 = !{!195, !54, i64 16}
!197 = !{!195, !54, i64 24}
!198 = !{!28, !28, i64 0}
!199 = !{!52, !44, i64 0}
!200 = distinct !{!200, !26}
!201 = distinct !{!201, !26}
!202 = distinct !{!202, !26}
!203 = distinct !{!203, !26}
!204 = distinct !{!204, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_"}
!205 = distinct !{!205, !204, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
!206 = distinct !{!206, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_"}
!207 = distinct !{!207, !206, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
!208 = distinct !{!208, !26}
!209 = distinct !{!209, !"_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E11try_emplaceIJS8_EEESt4pairINS_16DenseMapIteratorIS5_S8_SA_SD_Lb0EEEbERKS5_DpOT_"}
!210 = distinct !{!210, !209, !"_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS3_Lj2EEELj16ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E11try_emplaceIJS8_EEESt4pairINS_16DenseMapIteratorIS5_S8_SA_SD_Lb0EEEbERKS5_DpOT_: argument 0"}
!211 = distinct !{!211, !"_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_"}
!212 = distinct !{!212, !211, !"_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_: argument 0"}
!213 = distinct !{!213, !26}
!214 = distinct !{!214, !"_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_"}
!215 = distinct !{!215, !214, !"_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_: argument 0"}
!216 = distinct !{!216, !26}
!217 = !{i8 0, i8 2}
!218 = !{!205}
!219 = !{!207}
!220 = !{!210}
!221 = !{!212}
!222 = !{!"_ZTSN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEEE", !14, i64 0}
!223 = !{!"_ZTSN4llvh11SmallPtrSetIPN6hermes10BasicBlockELj2EEE", !222, i64 0, !9, i64 32}
!224 = !{!"_ZTSSt4pairIPKN6hermes10BasicBlockEN4llvh11SmallPtrSetIPS1_Lj2EEEE", !24, i64 0, !223, i64 8}
!225 = !{!224, !24, i64 0}
!226 = !{!215}
!227 = !{!"_ZTSN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEE8LargeRepE", !72, i64 0, !10, i64 8}
!228 = !{!227, !72, i64 0}
!229 = !{!"_ZTSN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEE8LargeRepE", !73, i64 0, !10, i64 8}
!230 = !{!229, !73, i64 0}
!231 = !{!"_ZTSN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEE8LargeRepE", !66, i64 0, !10, i64 8}
!232 = !{!231, !66, i64 0}
!233 = distinct !{!233, !26}
!234 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ScopeDescEvEE", !20, i64 0}
!235 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EEE", !234, i64 0}
!236 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ScopeDescEEE", !235, i64 0}
!237 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ScopeDescELj8EEE", !9, i64 0}
!238 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ScopeDescELj8EEE", !236, i64 0, !237, i64 16}
!239 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !12, i64 0}
!240 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !239, i64 0, !42, i64 8}
!241 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !240, i64 0}
!242 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes8VariableEvEE", !20, i64 0}
!243 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EEE", !242, i64 0}
!244 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes8VariableEEE", !243, i64 0}
!245 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes8VariableELj8EEE", !9, i64 0}
!246 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes8VariableELj8EEE", !244, i64 0, !245, i64 16}
!247 = !{!"_ZTSN6hermes9ScopeDescE", !52, i64 0, !75, i64 40, !238, i64 48, !241, i64 128, !53, i64 144, !246, i64 152, !37, i64 232}
!248 = !{!247, !53, i64 144}
!249 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes8FunctionELb0ELb0EvEEEE", !34, i64 0}
!250 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes8FunctionEJEEE", !249, i64 0}
!251 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes8FunctionENS1_6ModuleEJEEE", !250, i64 0}
!252 = !{!"p1 _ZTSN6hermes6ModuleE", !12, i64 0}
!253 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !43, i64 0}
!254 = !{!"_ZTSN4llvh12simple_ilistIN6hermes10BasicBlockEJEEE", !253, i64 0}
!255 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes10BasicBlockEJEEENS_12ilist_traitsIS3_EEEE", !254, i64 0}
!256 = !{!"_ZTSN4llvh6iplistIN6hermes10BasicBlockEJEEE", !255, i64 0}
!257 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ParameterEvEE", !20, i64 0}
!258 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ParameterELb1EEE", !257, i64 0}
!259 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ParameterEEE", !258, i64 0}
!260 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ParameterELj8EEE", !9, i64 0}
!261 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ParameterELj8EEE", !259, i64 0, !260, i64 16}
!262 = !{!"p1 _ZTSN6hermes12UniqueStringE", !12, i64 0}
!263 = !{!"_ZTSN6hermes10IdentifierE", !262, i64 0}
!264 = !{!"_ZTSN6hermes8Function14DefinitionKindE", !9, i64 0}
!265 = !{!"_ZTSN4llvh5SMLocE", !54, i64 0}
!266 = !{!"_ZTSN4llvh7SMRangeE", !265, i64 0, !265, i64 8}
!267 = !{!"_ZTSN6hermes16SourceVisibilityE", !9, i64 0}
!268 = !{!"p1 _ZTSN6hermes9ParameterE", !12, i64 0}
!269 = !{!"_ZTSN6hermes8OptValueIjEE", !10, i64 0, !37, i64 4}
!270 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !9, i64 0}
!271 = !{!"_ZTSN6hermes10LazySourceE", !270, i64 0, !10, i64 4, !266, i64 8, !37, i64 24, !37, i64 25}
!272 = !{!"p1 _ZTSN6hermes8VariableE", !12, i64 0}
!273 = !{!"_ZTSN6hermes8FunctionE", !251, i64 0, !52, i64 16, !252, i64 56, !37, i64 64, !75, i64 72, !256, i64 80, !261, i64 96, !263, i64 176, !264, i64 184, !37, i64 188, !266, i64 192, !267, i64 208, !263, i64 216, !268, i64 224, !10, i64 232, !269, i64 236, !271, i64 248, !241, i64 280, !272, i64 296}
!274 = !{!273, !252, i64 56}
!275 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes8FunctionEPNS2_6Module9CJSModuleEEE", !12, i64 0}
!276 = !{!"_ZTSN4llvh8DenseMapIPN6hermes8FunctionEPNS1_6Module9CJSModuleENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S6_EEEE", !275, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!277 = !{!276, !275, i64 0}
!278 = !{!276, !10, i64 16}
!279 = !{!53, !53, i64 0}
!280 = !{!"p1 _ZTSN6hermes6Module9CJSModuleE", !12, i64 0}
!281 = !{!"_ZTSSt4pairIPN6hermes8FunctionEPNS0_6Module9CJSModuleEE", !53, i64 0, !280, i64 8}
!282 = !{!281, !280, i64 8}
!283 = !{!247, !75, i64 40}
!284 = distinct !{!284, !26}
!285 = !{!40, !39, i64 24}
!286 = !{!40, !39, i64 16}
!287 = distinct !{!287, !81}
!288 = distinct !{!288, !26}
!289 = distinct !{!289, !26}
!290 = distinct !{!290, !81}
!291 = distinct !{!291, !26}
!292 = distinct !{!292, !26}
!293 = distinct !{!293, !26}
!294 = distinct !{!294, !26}
!295 = !{!"_ZTSN6hermes21FunctionScopeAnalysis9ScopeDataE", !10, i64 0, !37, i64 4}
!296 = !{!295, !10, i64 0}
!297 = !{!295, !37, i64 4}
!298 = distinct !{!298, !81}
!299 = distinct !{!299, !26}
!300 = distinct !{!300, !81}
!301 = distinct !{!301, !26}
end_hunk_0
