inline.NumInlined: 57
inline.NumDeleted: 31
begin_hunk_0_@_ZN5o3dgc20DynamicVectorDecoder14DecodePlayloadERNS_13DynamicVectorERKNS_12BinaryStreamE:bb.a
  %i.p = load i32, ptr %i.c, align 8
  %i.q = tail call noundef float @_ZNK5o3dgc12BinaryStream11ReadFloat32ERmNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.p)
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.071133
  store float %i.q, ptr %i.s, align 4
  %i.t = add nuw i64 %.071133, 1                  ; 2 uses
  %i.u = load i64, ptr %i.f, align 8
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !8

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.c, align 8
  %i.x = icmp eq i32 %i.w, 2
  br i1 %i.x, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.a, align 8              ; 2 uses
  %.neg = add i64 %i.e, %i.b                      ; 2 uses
  %i.z = sub i64 %.neg, %i.y
  %i.aa = load ptr, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i64 %.neg, ptr %i.a, align 8
  %i.ac = trunc i64 %i.z to i32
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %3, i32 noundef %i.ac, ptr noundef %i.ab)
          to label %bb.f unwind label %.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44) %3)
          to label %.preheader129 unwind label %.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader129:                                    ; preds = %bb.f, %.noexc
  %.014.i = phi i32 [ %.115.i, %.noexc ], [ 0, %bb.f ] ; 2 uses
  %.012.i = phi i32 [ %.113.i, %.noexc ], [ 0, %bb.f ]
  %i.ad = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 4 dereferenceable(20) %5)
          to label %.noexc unwind label %.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %.preheader129
  %i.ae = icmp eq i32 %i.ad, 1                    ; 2 uses
  %i.af = shl nuw i32 1, %.014.i
  %i.ag = zext i1 %i.ae to i32
  %.115.i = add nuw nsw i32 %.014.i, %i.ag        ; 3 uses
  %i.ah = select i1 %i.ae, i32 %i.af, i32 0
  %.113.i = add nsw i32 %i.ah, %.012.i            ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader129, !llvm.loop !9

.preheader.i:                                     ; preds = %.noexc
  %.not1617.i = icmp eq i32 %.115.i, 0
  br i1 %.not1617.i, label %.loopexit128, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.noexc82
  %.019.i = phi i32 [ %.1.i, %.noexc82 ], [ 0, %.preheader.i ]
  %.218.i = phi i32 [ %i.aj, %.noexc82 ], [ %.115.i, %.preheader.i ]
  %i.ai = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc82 unwind label %.loopexit.split-lp119.loopexit.split-lp.loopexit

.noexc82:                                         ; preds = %.lr.ph.i
  %i.aj = add nsw i32 %.218.i, -1                 ; 3 uses
  %i.ak = icmp eq i32 %i.ai, 1
  %i.al = shl nuw i32 1, %i.aj
  %i.am = select i1 %i.ak, i32 %i.al, i32 0
  %.1.i = or i32 %i.am, %.019.i                   ; 2 uses
  %.not16.i = icmp eq i32 %i.aj, 0
  br i1 %.not16.i, label %.loopexit128, label %.lr.ph.i, !llvm.loop !10

.loopexit128:                                     ; preds = %.noexc82, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %.noexc82 ]
  %i.an = add nsw i32 %.0.lcssa.i, %.113.i
  br label %bb.g

bb.g:                                             ; preds = %.noexc96, %.loopexit128
  %.014.i83 = phi i32 [ 0, %.loopexit128 ], [ %.115.i85, %.noexc96 ] ; 2 uses
  %.012.i84 = phi i32 [ 0, %.loopexit128 ], [ %.113.i86, %.noexc96 ]
  %i.ao = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 4 dereferenceable(20) %5)
          to label %.noexc96 unwind label %.loopexit.split-lp119.loopexit ; 2 uses

.noexc96:                                         ; preds = %bb.g
  %i.ap = icmp eq i32 %i.ao, 1                    ; 2 uses
  %i.aq = shl nuw i32 1, %.014.i83
  %i.ar = zext i1 %i.ap to i32
  %.115.i85 = add nuw nsw i32 %.014.i83, %i.ar    ; 3 uses
  %i.as = select i1 %i.ap, i32 %i.aq, i32 0
  %.113.i86 = add nsw i32 %i.as, %.012.i84        ; 2 uses
  %.not.i87 = icmp eq i32 %i.ao, 0
  br i1 %.not.i87, label %.preheader.i88, label %bb.g, !llvm.loop !9

.preheader.i88:                                   ; preds = %.noexc96
  %.not1617.i89 = icmp eq i32 %.115.i85, 0
  br i1 %.not1617.i89, label %.loopexit122, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %.preheader.i88, %.noexc97
  %.019.i91 = phi i32 [ %.1.i93, %.noexc97 ], [ 0, %.preheader.i88 ]
  %.218.i92 = phi i32 [ %i.au, %.noexc97 ], [ %.115.i85, %.preheader.i88 ]
  %i.at = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc97 unwind label %.loopexit118

.noexc97:                                         ; preds = %.lr.ph.i90
  %i.au = add nsw i32 %.218.i92, -1               ; 3 uses
  %i.av = icmp eq i32 %i.at, 1
  %i.aw = shl nuw i32 1, %i.au
  %i.ax = select i1 %i.av, i32 %i.aw, i32 0
  %.1.i93 = or i32 %i.ax, %.019.i91               ; 2 uses
  %.not16.i94 = icmp eq i32 %i.au, 0
  br i1 %.not16.i94, label %.loopexit122, label %.lr.ph.i90, !llvm.loop !10

.loopexit122:                                     ; preds = %.noexc97, %.preheader.i88
  %.0.lcssa.i95 = phi i32 [ 0, %.preheader.i88 ], [ %.1.i93, %.noexc97 ]
  %i.ay = add nsw i32 %.0.lcssa.i95, %.113.i86
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.i:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp119

.loopexit118:                                     ; preds = %.lr.ph.i90
  %lpad.loopexit120 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp119

.loopexit.split-lp119.loopexit:                   ; preds = %bb.g
  %lpad.loopexit123 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp119

.loopexit.split-lp119.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i
  %lpad.loopexit126 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp119

.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.preheader129
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp119

.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.e
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp119

bb.j:                                             ; preds = %.loopexit122, %bb.d
  %.064 = phi i32 [ %i.an, %.loopexit122 ], [ 0, %bb.d ]
  %.063 = phi i32 [ %i.ay, %.loopexit122 ], [ 0, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bb = add i32 %.063, 2
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %6, i32 noundef %i.bb)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = icmp ult i64 %i.bd, %i.i
  br i1 %i.be, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %i.i, ptr %i.bc, align 8
  %i.bi = icmp ugt i64 %i.i, 2305843009213693951
  %i.bj = shl i64 %i.i, 3
  %i.bk = select i1 %i.bi, i64 -1, i64 %i.bj
  %i.bl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #15
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  store ptr %i.bl, ptr %i.bf, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.q:                                             ; preds = %bb.x, %bb.n
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.o, %bb.k
  %i.bo = load i32, ptr %i.c, align 8
  %i.bp = icmp eq i32 %i.bo, 1
  %.not150 = icmp eq i64 %i.h, 0                  ; 2 uses
  br i1 %i.bp, label %.preheader108, label %.preheader116.a

.preheader116.a:                                  ; preds = %bb.r
  br i1 %.not150, label %.loopexit109, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %.preheader116.a
  %i.bq = zext i32 %.063 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %.not, label %._crit_edge147, label %.preheader115.us

.preheader115.us:                                 ; preds = %.preheader115.lr.ph, %._crit_edge136.us
  %.060137.us = phi i64 [ %i.ce, %._crit_edge136.us ], [ 0, %.preheader115.lr.ph ] ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader115.us, %bb.t
  %.059134.us = phi i64 [ 0, %.preheader115.us ], [ %i.cd, %bb.t ] ; 2 uses
  %7 = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 8 dereferenceable(52) %6)
          to label %.noexc102.us unwind label %.loopexit.split-lp.loopexit.split-lp.split.us ; 2 uses

.noexc102.us:                                     ; preds = %bb.s
  %8 = zext i32 %7 to i64
  %i.bs = icmp eq i32 %.063, %7
  br i1 %i.bs, label %.preheader111.us, label %bb.t

.preheader111.us:                                 ; preds = %.noexc102.us, %.noexc103.us
  %.014.i.i.us = phi i32 [ %.115.i.i.us, %.noexc103.us ], [ %.064, %.noexc102.us ] ; 2 uses
  %.012.i.i.us = phi i32 [ %.113.i.i.us, %.noexc103.us ], [ 0, %.noexc102.us ]
  %9 = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 4 dereferenceable(20) %5)
          to label %.noexc103.us unwind label %.loopexit.split-lp.loopexit.split.us ; 2 uses

.noexc103.us:                                     ; preds = %.preheader111.us
  %10 = icmp eq i32 %9, 1                         ; 2 uses
  %11 = shl nuw i32 1, %.014.i.i.us
  %12 = zext i1 %10 to i32
  %.115.i.i.us = add nsw i32 %.014.i.i.us, %12    ; 3 uses
  %13 = select i1 %10, i32 %11, i32 0
  %.113.i.i.us = add nsw i32 %13, %.012.i.i.us    ; 2 uses
  %.not.i.i99.us = icmp eq i32 %9, 0
  br i1 %.not.i.i99.us, label %.preheader.i.i100.us, label %.preheader111.us, !llvm.loop !9

.preheader.i.i100.us:                             ; preds = %.noexc103.us
  %.not1617.i.i.us = icmp eq i32 %.115.i.i.us, 0
  br i1 %.not1617.i.i.us, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.preheader.i.i100.us, %.noexc104.us
  %.019.i.i.us = phi i32 [ %.1.i.i101.us, %.noexc104.us ], [ 0, %.preheader.i.i100.us ]
  %.218.i.i.us = phi i32 [ %15, %.noexc104.us ], [ %.115.i.i.us, %.preheader.i.i100.us ]
  %14 = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc104.us unwind label %.loopexit110.split.us

.noexc104.us:                                     ; preds = %.lr.ph.i.i.us
  %15 = add nsw i32 %.218.i.i.us, -1              ; 3 uses
  %16 = icmp eq i32 %14, 1
  %17 = shl nuw i32 1, %15
  %18 = select i1 %16, i32 %17, i32 0
  %.1.i.i101.us = or i32 %18, %.019.i.i.us        ; 2 uses
  %.not16.i.i.us = icmp eq i32 %15, 0
  br i1 %.not16.i.i.us, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !10

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i.us: ; preds = %.noexc104.us, %.preheader.i.i100.us
  %.0.lcssa.i.i.us = phi i32 [ 0, %.preheader.i.i100.us ], [ %.1.i.i101.us, %.noexc104.us ]
  %19 = add nsw i32 %.0.lcssa.i.i.us, %.113.i.i.us
  %20 = zext i32 %19 to i64
  %21 = add nuw nsw i64 %20, %i.bq
  br label %bb.t

bb.t:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i.us, %.noexc102.us
  %.0.i.us = phi i64 [ %21, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i.us ], [ %8, %.noexc102.us ] ; 3 uses
  %i.bt = and i64 %.0.i.us, 1
  %.not.i10.i.us = icmp eq i64 %i.bt, 0
  %i.bu = add nuw nsw i64 %.0.i.us, 1
  %i.bv = lshr exact i64 %i.bu, 1
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = lshr exact i64 %.0.i.us, 1
  %i.by = select i1 %.not.i10.i.us, i64 %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.br, align 8
  %i.ca = mul i64 %.059134.us, %i.h
  %i.cb = getelementptr [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %.060137.us
  store i64 %i.by, ptr %i.cc, align 8
  %i.cd = add nuw i64 %.059134.us, 1              ; 2 uses
  %exitcond.not.a = icmp eq i64 %i.cd, %i.g
  br i1 %exitcond.not.a, label %._crit_edge136.us, label %bb.s, !llvm.loop !11

._crit_edge136.us:                                ; preds = %bb.t
  %i.ce = add nuw i64 %.060137.us, 1              ; 2 uses
  %exitcond156.not.a = icmp eq i64 %i.ce, %i.h
  br i1 %exitcond156.not.a, label %.lr.ph146, label %.preheader115.us, !llvm.loop !12

.loopexit.split-lp.loopexit.split-lp.split.us:    ; preds = %bb.s
  %lpad.loopexit.split-lp113.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split.us:             ; preds = %.preheader111.us
  %lpad.loopexit112.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit110.split.us:                            ; preds = %.lr.ph.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.preheader108:                                    ; preds = %bb.r
  br i1 %.not150, label %.loopexit109, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader108
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %.not, label %._crit_edge147, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge142.us
  %.062143.us = phi i64 [ %38, %._crit_edge142.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.preheader.us, %.loopexit.us
  %.061140.us = phi i64 [ 0, %.preheader.us ], [ %i.cs, %.loopexit.us ] ; 2 uses
  %23 = load i64, ptr %i.a, align 8               ; 2 uses
  %24 = add i64 %23, 1                            ; 2 uses
  store i64 %24, ptr %i.a, align 8
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %23
  %27 = load i8, ptr %26, align 1                 ; 2 uses
  %28 = zext i8 %27 to i64
  %i.cf = icmp eq i8 %27, 127
  br i1 %i.cf, label %.preheader.i.i.us, label %.loopexit.us

.preheader.i.i.us:                                ; preds = %bb.u, %.preheader.i.i.us
  %29 = phi i64 [ %30, %.preheader.i.i.us ], [ %24, %bb.u ] ; 2 uses
  %.09.i.i.us = phi i64 [ %36, %.preheader.i.i.us ], [ 127, %bb.u ]
  %.0.i.i.us = phi i64 [ %i.ch, %.preheader.i.i.us ], [ 0, %bb.u ] ; 2 uses
  %30 = add i64 %29, 1                            ; 2 uses
  store i64 %30, ptr %i.a, align 8
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %29
  %33 = load i8, ptr %32, align 1
  %i.cg = zext i8 %33 to i64                      ; 2 uses
  %34 = lshr i64 %i.cg, 1
  %35 = shl i64 %34, %.0.i.i.us
  %36 = add i64 %35, %.09.i.i.us                  ; 2 uses
  %i.ch = add i64 %.0.i.i.us, 6
  %37 = and i64 %i.cg, 1
  %.not.i.i.us = icmp eq i64 %37, 0
  br i1 %.not.i.i.us, label %.loopexit.us, label %.preheader.i.i.us, !llvm.loop !13

.loopexit.us:                                     ; preds = %.preheader.i.i.us, %bb.u
  %.1.i.i.us = phi i64 [ %28, %bb.u ], [ %36, %.preheader.i.i.us ] ; 3 uses
  %i.ci = and i64 %.1.i.i.us, 1
  %.not.i2.i.us = icmp eq i64 %i.ci, 0
  %i.cj = add i64 %.1.i.i.us, 1
  %i.ck = lshr exact i64 %i.cj, 1
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = lshr exact i64 %.1.i.i.us, 1
  %i.cn = select i1 %.not.i2.i.us, i64 %i.cm, i64 %i.cl
  %i.co = load ptr, ptr %22, align 8
  %i.cp = mul i64 %.061140.us, %i.h
  %i.cq = getelementptr [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %.062143.us
  store i64 %i.cn, ptr %i.cr, align 8
  %i.cs = add nuw i64 %.061140.us, 1              ; 2 uses
  %exitcond157.not = icmp eq i64 %i.cs, %i.g
  br i1 %exitcond157.not, label %._crit_edge142.us, label %bb.u, !llvm.loop !14

._crit_edge142.us:                                ; preds = %.loopexit.us
  %38 = add nuw i64 %.062143.us, 1                ; 2 uses
  %exitcond158.not = icmp eq i64 %38, %i.h
  br i1 %exitcond158.not, label %.lr.ph146, label %.preheader.us, !llvm.loop !15

.loopexit109:                                     ; preds = %.preheader116.a, %.preheader108
  br i1 %.not, label %._crit_edge147, label %.lr.ph146

.lr.ph146:                                        ; preds = %._crit_edge136.us, %._crit_edge142.us, %.loopexit109
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.z

._crit_edge147:                                   ; preds = %bb.aa, %.preheader115.lr.ph, %.preheader.lr.ph, %.loopexit109
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load i64, ptr %i.cw, align 8            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = load i64, ptr %i.bc, align 8
  %i.df = icmp ult i64 %i.de, %i.i
  br i1 %i.df, label %bb.v, label %bb.y

bb.v:                                             ; preds = %._crit_edge147
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i64 %i.i, ptr %i.bc, align 8
  %i.dj = icmp ugt i64 %i.i, 2305843009213693951
  %i.dk = shl nuw i64 %i.i, 3
  %i.dl = select i1 %i.dj, i64 -1, i64 %i.dk
  %i.dm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dl) #15
          to label %.noexc106 unwind label %bb.q

.noexc106:                                        ; preds = %bb.x
  store ptr %i.dm, ptr %i.dg, align 8
  br label %bb.y

bb.y:                                             ; preds = %.noexc106, %._crit_edge147
  br i1 %.not, label %_ZN5o3dgc20DynamicVectorDecoder9IQuantizeEPfmmmPKfS3_m.exit, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %bb.y
  %i.dn = trunc i64 %i.dd to i32
  %notmask.i = shl nsw i32 -1, %i.dn
  %i.do = xor i32 %notmask.i, -1
  %i.dp = uitofp nneg i32 %i.do to float
  %.not38.i = icmp eq i64 %i.h, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br i1 %.not38.i, label %_ZN5o3dgc20DynamicVectorDecoder9IQuantizeEPfmmmPKfS3_m.exit, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph36.i
  %xtraiter = and i64 %i.h, 1
  %i.dr = icmp eq i64 %i.h, 1
  %unroll_iter = and i64 %i.h, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod181 = trunc i64 %i.h to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.02734.us.i = phi i64 [ %47, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 5 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.02734.us.i
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.02734.us.i ; 4 uses
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = fsub float %i.dt, %i.dv                 ; 2 uses
  %i.dx = fcmp ogt float %i.dw, 0.000000e+00
  %i.dy = fdiv float %i.dw, %i.dp
  %.028.us.i = select i1 %i.dx, float %i.dy, float 1.000000e+00 ; 3 uses
  %invariant.gep.us.i = getelementptr [4 x i8], ptr %i.cv, i64 %.02734.us.i ; 3 uses
  %i.dz = mul i64 %.02734.us.i, %i.h              ; 3 uses
  br i1 %i.dr, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.033.us.i = phi i64 [ %i.er, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.ea = load ptr, ptr %i.dq, align 8
  %i.eb = getelementptr [8 x i8], ptr %i.ea, i64 %.033.us.i
  %i.ec = getelementptr [8 x i8], ptr %i.eb, i64 %i.dz
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = sitofp i64 %i.ed to float
  %i.ef = load float, ptr %i.du, align 4
  %i.eg = call float @llvm.fmuladd.f32(float %i.ee, float %.028.us.i, float %i.ef)
  %i.eh = mul i64 %.033.us.i, %i.cx
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %i.eh
  store float %i.eg, ptr %gep.us.i, align 4
  %i.ei = or disjoint i64 %.033.us.i, 1           ; 2 uses
  %i.ej = load ptr, ptr %i.dq, align 8
  %i.ek = getelementptr [8 x i8], ptr %i.ej, i64 %i.ei
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %i.dz
  %i.em = load i64, ptr %i.el, align 8
  %i.en = sitofp i64 %i.em to float
  %i.eo = load float, ptr %i.du, align 4
  %i.ep = call float @llvm.fmuladd.f32(float %i.en, float %.028.us.i, float %i.eo)
  %i.eq = mul i64 %i.ei, %i.cx
  %gep.us.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %i.eq
  store float %i.ep, ptr %gep.us.i.1, align 4
  %i.er = add nuw i64 %.033.us.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !16

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.033.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %i.er, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod181)
  %39 = load ptr, ptr %i.dq, align 8
  %40 = getelementptr [8 x i8], ptr %39, i64 %.033.us.i.epil.init
  %41 = getelementptr [8 x i8], ptr %40, i64 %i.dz
  %42 = load i64, ptr %41, align 8
  %43 = sitofp i64 %42 to float
  %44 = load float, ptr %i.du, align 4
  %45 = call float @llvm.fmuladd.f32(float %43, float %.028.us.i, float %44)
  %46 = mul i64 %.033.us.i.epil.init, %i.cx
  %gep.us.i.epil = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %46
  store float %45, ptr %gep.us.i.epil, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %47 = add nuw i64 %.02734.us.i, 1               ; 2 uses
  %exitcond40.not.i = icmp eq i64 %47, %i.g
  br i1 %exitcond40.not.i, label %_ZN5o3dgc20DynamicVectorDecoder9IQuantizeEPfmmmPKfS3_m.exit, label %.lr.ph.us.i, !llvm.loop !17

bb.z:                                             ; preds = %.lr.ph146, %bb.aa
  %.0144 = phi i64 [ 0, %.lr.ph146 ], [ %i.ew, %bb.aa ] ; 2 uses
  %i.es = load ptr, ptr %i.ct, align 8
  %i.et = mul i64 %.0144, %i.h
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.et
  %i.ev = invoke noundef i32 @_ZN5o3dgc10ITransformEPlm(ptr noundef %i.eu, i64 noundef %i.h)
          to label %bb.aa unwind label %bb.ab     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ew = add nuw i64 %.0144, 1                   ; 2 uses
  %exitcond159.not = icmp eq i64 %i.ew, %i.g
  br i1 %exitcond159.not, label %._crit_edge147, label %bb.z, !llvm.loop !18

bb.ab:                                            ; preds = %bb.z
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN5o3dgc20DynamicVectorDecoder9IQuantizeEPfmmmPKfS3_m.exit: ; preds = %._crit_edge.us.i, %.lr.ph36.i, %bb.y
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i32 0

.loopexit.split-lp:                               ; preds = %.loopexit110.split.us, %.loopexit.split-lp.loopexit.split-lp.split.us, %.loopexit.split-lp.loopexit.split.us, %bb.ab, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.q ], [ %i.ex, %bb.ab ], [ %lpad.loopexit.us, %.loopexit110.split.us ], [ %lpad.loopexit112.us, %.loopexit.split-lp.loopexit.split.us ], [ %lpad.loopexit.split-lp113.us, %.loopexit.split-lp.loopexit.split-lp.split.us ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %6) #14
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.bm, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.loopexit.split-lp119

.loopexit.split-lp119:                            ; preds = %.loopexit118, %.loopexit.split-lp119.loopexit.split-lp.loopexit, %.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp119.loopexit, %bb.ac, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %.pn.pn, %bb.ac ], [ %lpad.loopexit120, %.loopexit118 ], [ %lpad.loopexit123, %.loopexit.split-lp119.loopexit ], [ %lpad.loopexit126, %.loopexit.split-lp119.loopexit.split-lp.loopexit ], [ %lpad.loopexit130, %.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp119.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp119, %bb.h
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.loopexit.split-lp119 ], [ %i.az, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK5o3dgc12BinaryStream11ReadFloat32ERmNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8                ; 6 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = add i64 %i.b, 2                          ; 2 uses
  store i64 %i.h, ptr %1, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 7
  %i.n = add nuw nsw i32 %i.m, %i.g
  %i.o = add i64 %i.b, 3                          ; 2 uses
  store i64 %i.o, ptr %1, align 8
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 14
  %i.u = add nuw nsw i32 %i.n, %i.t
  %i.v = add i64 %i.b, 4                          ; 2 uses
  store i64 %i.v, ptr %1, align 8
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 21
  %i.ab = add nuw nsw i32 %i.u, %i.aa
  %i.ac = add i64 %i.b, 5
  store i64 %i.ac, ptr %1, align 8
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl i32 %i.ag, 28
  %.sroa.0.0.extract.trunc.i = add i32 %i.ab, %i.ah
  br label %_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = load i64, ptr %1, align 8               ; 8 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.am, ptr %1, align 8
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = shl nuw i32 %i.aq, 24
  %i.as = add i64 %i.al, 2                        ; 2 uses
  store i64 %i.as, ptr %1, align 8
  %i.at = load ptr, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.am
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 16
  %i.ay = or disjoint i32 %i.ax, %i.ar
  %i.az = add i64 %i.al, 3                        ; 2 uses
  store i64 %i.az, ptr %1, align 8
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = or disjoint i32 %i.ay, %i.be
  %i.bg = add i64 %i.al, 4
  store i64 %i.bg, ptr %1, align 8
  %i.bh = load ptr, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bf, %i.bk
  br label %_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit

bb.e:                                             ; preds = %bb.c
  %i.bm = add i64 %i.al, 2                        ; 2 uses
  store i64 %i.bm, ptr %1, align 8
  %i.bn = load ptr, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.am
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 8
  %i.bs = add i64 %i.al, 3                        ; 2 uses
  store i64 %i.bs, ptr %1, align 8
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 16
  %i.by = add i64 %i.al, 4
  store i64 %i.by, ptr %1, align 8
  %i.bz = load ptr, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bs
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw i32 %i.cc, 24
  %i.ce = or disjoint i32 %i.br, %i.bx
  %i.cf = or disjoint i32 %i.ce, %i.cd
  %i.cg = or disjoint i32 %i.cf, %i.aq
  br label %_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit

_ZNK5o3dgc12BinaryStream14ReadFloat32BinERm.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.0.in = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.b ], [ %i.bl, %bb.d ], [ %i.cg, %bb.e ]
  %.0 = bitcast i32 %.0.in to float
  ret float %.0
}

declare void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44)) unnamed_addr #6

declare void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20)) unnamed_addr #6

declare void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #6

declare void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef) unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc10ITransformEPlm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge40

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i64 %1, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02133 = phi i64 [ %i.g, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.02232 = phi i64 [ %i.i, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %.02331 = phi i64 [ %i.e, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.c = lshr i64 %.02331, 1
  %i.d = and i64 %.02331, 1
  %i.e = add nuw i64 %i.c, %i.d                   ; 3 uses
  %i.f = and i64 %i.e, 1
  %i.g = add i64 %.02133, 1
  %i.h = shl nuw i64 %i.f, %.02133
  %i.i = add i64 %i.h, %.02232                    ; 2 uses
  %i.j = icmp ugt i64 %i.e, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph
  %i.k = add i64 %.02133, -1                      ; 2 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge40:                                    ; preds = %_ZN5o3dgc8IPredictEPll.exit, %bb.a, %._crit_edge
  ret i32 0

bb.b:                                             ; preds = %.lr.ph39, %_ZN5o3dgc8IPredictEPll.exit
  %.037 = phi i64 [ %i.k, %.lr.ph39 ], [ %i.ck, %_ZN5o3dgc8IPredictEPll.exit ] ; 3 uses
  %.136 = phi i64 [ 1, %.lr.ph39 ], [ %i.q, %_ZN5o3dgc8IPredictEPll.exit ]
  %i.n = shl i64 %.136, 1
  %i.o = lshr i64 %i.i, %.037                     ; 3 uses
  %i.p = and i64 %i.o, 1
  %i.q = sub i64 %i.n, %i.p                       ; 6 uses
  %i.r = ashr i64 %i.q, 1                         ; 3 uses
  %i.s = and i64 %i.q, 1
  %i.t = add nsw i64 %i.r, %i.s                   ; 6 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %.preheader.i.preheader, label %_ZN5o3dgc5MergeEPll.exit

.preheader.i.preheader:                           ; preds = %bb.b
  %i.v = or i64 %i.o, -2
  %i.w = sub i64 %i.r, %i.o
  %i.x = and i64 %i.w, 1
  %lcmp.mod.not.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not.not, label %.preheader.i.prol, label %.preheader.i.prol.loopexit

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %.01519.i.prol = add nsw i64 %i.t, -1           ; 2 uses
  br label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.prol, %.preheader.i.prol
  %.016.i.prol = phi i64 [ %i.ab, %.lr.ph.i.prol ], [ %.01519.i.prol, %.preheader.i.prol ] ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.i.prol ; 2 uses
  %i.z = load <2 x i64>, ptr %i.y, align 8
  %i.aa = shufflevector <2 x i64> %i.z, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.aa, ptr %i.y, align 8
  %i.ab = add nsw i64 %.016.i.prol, 2             ; 2 uses
  %i.ac = icmp slt i64 %i.ab, %i.t
  br i1 %i.ac, label %.lr.ph.i.prol, label %._crit_edge.i.prol, !llvm.loop !6

._crit_edge.i.prol:                               ; preds = %.lr.ph.i.prol
  %i.ad = add nuw nsw i64 %i.t, 1
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %._crit_edge.i.prol, %.preheader.i.preheader
  %.01519.in.i.unr = phi i64 [ %i.t, %.preheader.i.preheader ], [ %.01519.i.prol, %._crit_edge.i.prol ]
  %.01418.i.unr = phi i64 [ %i.t, %.preheader.i.preheader ], [ %i.ad, %._crit_edge.i.prol ]
  %i.ae = sub nsw i64 0, %i.v
  %i.af = icmp eq i64 %i.r, %i.ae
  br i1 %i.af, label %_ZN5o3dgc5MergeEPll.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %._crit_edge.i.1
  %.01519.in.i = phi i64 [ %.01519.i.1, %._crit_edge.i.1 ], [ %.01519.in.i.unr, %.preheader.i.prol.loopexit ] ; 4 uses
  %.01418.i = phi i64 [ %i.al, %._crit_edge.i.1 ], [ %.01418.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.01519.i = add nsw i64 %.01519.in.i, -1        ; 2 uses
  %.not.i = icmp sgt i64 %.01519.in.i, %.01418.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %i.ag = add nuw nsw i64 %.01418.i, 1
  %.01519.i.1 = add nsw i64 %.01519.in.i, -2      ; 2 uses
  %.not.i.1 = icmp sgt i64 %.01519.i, %i.ag
  br i1 %.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %._crit_edge.i, %.lr.ph.i.1
  %.016.i.1 = phi i64 [ %i.ak, %.lr.ph.i.1 ], [ %.01519.i.1, %._crit_edge.i ] ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.i.1 ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.ah, align 8
  %i.aj = shufflevector <2 x i64> %i.ai, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.aj, ptr %i.ah, align 8
  %i.ak = add nsw i64 %.016.i.1, 2                ; 2 uses
  %.not = icmp sgt i64 %i.ak, %.01418.i
  br i1 %.not, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !6

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %._crit_edge.i
  %i.al = add nuw nsw i64 %.01418.i, 2
  %i.am = icmp sgt i64 %.01519.in.i, 3
  br i1 %i.am, label %.preheader.i, label %_ZN5o3dgc5MergeEPll.exit, !llvm.loop !7

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.016.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.01519.i, %.preheader.i ] ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.an, align 8
  %i.ap = shufflevector <2 x i64> %i.ao, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ap, ptr %i.an, align 8
  %i.aq = add nsw i64 %.016.i, 2                  ; 2 uses
  %i.ar = icmp slt i64 %i.aq, %.01418.i
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !6

_ZN5o3dgc5MergeEPll.exit:                         ; preds = %.preheader.i.prol.loopexit, %._crit_edge.i.1, %bb.b
  %i.as = add nsw i64 %i.q, -1                    ; 6 uses
  %i.at = load i64, ptr %i.m, align 8
  %i.au = ashr i64 %i.at, 1
  %i.av = load i64, ptr %0, align 8
  %i.aw = sub nsw i64 %i.av, %i.au
  store i64 %i.aw, ptr %0, align 8
  %i.ax = icmp sgt i64 %i.q, 3
  br i1 %i.ax, label %.lr.ph.i25, label %._crit_edge.i24

.lr.ph.i25:                                       ; preds = %_ZN5o3dgc5MergeEPll.exit, %.lr.ph.i25
  %.018.i = phi i64 [ %i.bi, %.lr.ph.i25 ], [ 2, %_ZN5o3dgc5MergeEPll.exit ] ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %0, i64 %.018.i ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = add i64 %i.ba, 2
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = ashr i64 %i.be, 2
  %i.bg = load i64, ptr %i.ay, align 8
  %i.bh = sub nsw i64 %i.bg, %i.bf
  store i64 %i.bh, ptr %i.ay, align 8
  %i.bi = add nuw nsw i64 %.018.i, 2              ; 3 uses
  %i.bj = icmp slt i64 %i.bi, %i.as
  br i1 %i.bj, label %.lr.ph.i25, label %._crit_edge.i24, !llvm.loop !3

._crit_edge.i24:                                  ; preds = %.lr.ph.i25, %_ZN5o3dgc5MergeEPll.exit
  %.0.lcssa.i = phi i64 [ 2, %_ZN5o3dgc5MergeEPll.exit ], [ %i.bi, %.lr.ph.i25 ]
  %i.bk = icmp eq i64 %.0.lcssa.i, %i.as
  br i1 %i.bk, label %bb.c, label %_ZN5o3dgc7IUpdateEPll.exit

bb.c:                                             ; preds = %._crit_edge.i24
  %i.bl = getelementptr [8 x i8], ptr %0, i64 %i.as ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = ashr i64 %i.bn, 1
  %i.bp = load i64, ptr %i.bl, align 8
  %i.bq = sub nsw i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %i.bl, align 8
  br label %_ZN5o3dgc7IUpdateEPll.exit

_ZN5o3dgc7IUpdateEPll.exit:                       ; preds = %._crit_edge.i24, %bb.c
  %i.br = icmp sgt i64 %i.q, 2
  br i1 %i.br, label %.lr.ph.i28, label %._crit_edge.i26

.lr.ph.i28:                                       ; preds = %_ZN5o3dgc7IUpdateEPll.exit, %.lr.ph.i28
  %.016.i29 = phi i64 [ %i.cc, %.lr.ph.i28 ], [ 1, %_ZN5o3dgc7IUpdateEPll.exit ] ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %0, i64 %.016.i29 ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add i64 %i.bu, 1
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = ashr i64 %i.by, 1
  %i.ca = load i64, ptr %i.bs, align 8
  %i.cb = add nsw i64 %i.bz, %i.ca
  store i64 %i.cb, ptr %i.bs, align 8
  %i.cc = add nuw nsw i64 %.016.i29, 2            ; 3 uses
  %i.cd = icmp slt i64 %i.cc, %i.as
  br i1 %i.cd, label %.lr.ph.i28, label %._crit_edge.i26, !llvm.loop !5

._crit_edge.i26:                                  ; preds = %.lr.ph.i28, %_ZN5o3dgc7IUpdateEPll.exit
  %.0.lcssa.i27 = phi i64 [ 1, %_ZN5o3dgc7IUpdateEPll.exit ], [ %i.cc, %.lr.ph.i28 ]
  %i.ce = icmp eq i64 %.0.lcssa.i27, %i.as
  br i1 %i.ce, label %bb.d, label %_ZN5o3dgc8IPredictEPll.exit

bb.d:                                             ; preds = %._crit_edge.i26
  %i.cf = getelementptr [8 x i8], ptr %0, i64 %i.as ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = load i64, ptr %i.cf, align 8
  %i.cj = add nsw i64 %i.ci, %i.ch
  store i64 %i.cj, ptr %i.cf, align 8
  br label %_ZN5o3dgc8IPredictEPll.exit

_ZN5o3dgc8IPredictEPll.exit:                      ; preds = %._crit_edge.i26, %bb.d
  %i.ck = add nsw i64 %.037, -1
  %i.cl = icmp sgt i64 %.037, 0
  br i1 %i.cl, label %bb.b, label %._crit_edge40, !llvm.loop !20
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc20DynamicVectorDecoder9IQuantizeEPfmmmPKfS3_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = mul i64 %3, %2                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.a, ptr %i.b, align 8
  %i.h = icmp ugt i64 %i.a, 2305843009213693951
  %i.i = shl nuw i64 %i.a, 3
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #15
  store ptr %i.k, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.e
  %i.l = trunc i64 %7 to i32
  %notmask = shl nsw i32 -1, %i.l
  %i.m = xor i32 %notmask, -1
  %i.n = uitofp nneg i32 %i.m to float
  %.not38 = icmp eq i64 %2, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br i1 %.not38, label %._crit_edge37, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph36
  %xtraiter = and i64 %2, 1
  %i.p = icmp eq i64 %2, 1
  %unroll_iter = and i64 %2, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod45 = trunc i64 %2 to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.02734.us = phi i64 [ %16, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.02734.us
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02734.us ; 4 uses
  %i.t = load float, ptr %i.s, align 4
  %i.u = fsub float %i.r, %i.t                    ; 2 uses
  %i.v = fcmp ogt float %i.u, 0.000000e+00
  %i.w = fdiv float %i.u, %i.n
  %.028.us = select i1 %i.v, float %i.w, float 1.000000e+00 ; 3 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %1, i64 %.02734.us ; 3 uses
  %i.x = mul i64 %.02734.us, %2                   ; 3 uses
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.033.us = phi i64 [ %i.ap, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.033.us
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = sitofp i64 %i.ab to float
  %i.ad = load float, ptr %i.s, align 4
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ac, float %.028.us, float %i.ad)
  %i.af = mul i64 %.033.us, %4
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.af
  store float %i.ae, ptr %gep.us, align 4
  %i.ag = or disjoint i64 %.033.us, 1             ; 2 uses
  %i.ah = load ptr, ptr %i.o, align 8
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.x
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = sitofp i64 %i.ak to float
  %i.am = load float, ptr %i.s, align 4
  %i.an = tail call float @llvm.fmuladd.f32(float %i.al, float %.028.us, float %i.am)
  %i.ao = mul i64 %i.ag, %4
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.ao
  store float %i.an, ptr %gep.us.1, align 4
  %i.ap = add nuw i64 %.033.us, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !16

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.033.us.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %i.ap, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %8 = load ptr, ptr %i.o, align 8
  %9 = getelementptr [8 x i8], ptr %8, i64 %.033.us.epil.init
  %10 = getelementptr [8 x i8], ptr %9, i64 %i.x
  %11 = load i64, ptr %10, align 8
  %12 = sitofp i64 %11 to float
  %13 = load float, ptr %i.s, align 4
  %14 = tail call float @llvm.fmuladd.f32(float %12, float %.028.us, float %13)
  %15 = mul i64 %.033.us.epil.init, %4
  %gep.us.epil = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %15
  store float %14, ptr %gep.us.epil, align 4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %16 = add nuw i64 %.02734.us, 1                 ; 2 uses
  %exitcond40.not = icmp eq i64 %16, %3
  br i1 %exitcond40.not, label %._crit_edge37, label %.lr.ph.us, !llvm.loop !17

._crit_edge37:                                    ; preds = %._crit_edge.us, %.lr.ph36, %bb.e
  ret i32 0
}

; Function Attrs: nounwind
declare void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44)) unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

declare noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 4 dereferenceable(20)) local_unnamed_addr #6

declare noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
end_hunk_0
