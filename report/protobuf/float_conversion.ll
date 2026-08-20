inline.NumInlined: 622
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  br label %bb.bd

bb.bd:                                            ; preds = %bb.j, %bb.bc, %._crit_edge.i, %bb.ai, %bb.ac, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit
  %.0 = phi i1 [ true, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit ], [ true, %bb.bc ], [ %i.ee, %bb.ac ], [ %i.fv, %bb.ai ], [ true, %._crit_edge.i ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.be

bb.be:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, %bb.bd
  %.1 = phi i1 [ %.0, %bb.bd ], [ true, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EeEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(ptr nofree noundef readonly byval(%"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::Decomposed") align 16 captures(none) %0, i64 noundef %1, ptr noundef nonnull %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %1, 39
  br i1 %i.a, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 16, !tbaa !54    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 16, !tbaa !19  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 41 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 49 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 31 uses
  store ptr %i.e, ptr %i.g, align 8, !tbaa !39
  %i.h = icmp sgt i32 %i.d, -1                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not60.i = icmp eq i32 %i.d, 0
  br i1 %.not60.i, label %bb.d, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplImeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i, label %.preheader.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i: ; preds = %bb.d
  store i32 -1, ptr %3, align 4, !tbaa !3
  br label %bb.e

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.0913.i.i = phi i64 [ %i.n, %.preheader.i.i ], [ %i.b, %bb.d ] ; 3 uses
  %i.i = urem i64 %.0913.i.i, 10
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = or disjoint i8 %i.j, 48
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 2 uses
  store ptr %i.m, ptr %i.g, align 8, !tbaa !39
  store i8 %i.k, ptr %i.m, align 1, !tbaa !12
  %i.n = udiv i64 %.0913.i.i, 10
  %.not11.i.i = icmp ult i64 %.0913.i.i, 10
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i, label %.preheader.i.i, !llvm.loop !55

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i: ; preds = %.preheader.i.i
  %.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !39 ; 3 uses
  %.val12.i.i = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.o = ptrtoint ptr %.val12.i.i to i64          ; 2 uses
  %i.p = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.q = load i8, ptr %.val.i.i, align 1, !tbaa !12
  %i.r = getelementptr inbounds i8, ptr %.val.i.i, i64 -1 ; 2 uses
  store ptr %i.r, ptr %i.g, align 8, !tbaa !39
  store i8 %i.q, ptr %i.r, align 1, !tbaa !12
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 46, ptr %i.t, align 1, !tbaa !12
  %i.u = xor i64 %i.p, -1
  %i.v = add i64 %i.o, %i.u                       ; 4 uses
  %i.w = trunc i64 %i.v to i32
  store i32 %i.w, ptr %3, align 4, !tbaa !3
  %i.x = icmp ult i64 %1, %i.v
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i
  %.0.i133.i = phi i64 [ -1, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i ], [ %i.v, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i ]
  %i.y = sub nuw i64 %.0.i133.i, %1
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.y, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i
  %i.z = sub nuw nsw i64 %1, %i.v                 ; 4 uses
  %.not61106.i = icmp eq i64 %i.z, 0
  br i1 %.not61106.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph109.i.preheader

.lr.ph109.i.preheader:                            ; preds = %bb.f
  %i.aa = add i64 %1, %i.p
  %i.ab = sub i64 %i.aa, %i.o
  %xtraiter131 = and i64 %i.z, 3                  ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph109.i.prol.loopexit, label %.lr.ph109.i.prol

.lr.ph109.i.prol:                                 ; preds = %.lr.ph109.i.preheader, %.lr.ph109.i.prol
  %.042107.i.prol = phi i64 [ %i.ac, %.lr.ph109.i.prol ], [ %i.z, %.lr.ph109.i.preheader ]
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.lr.ph109.i.prol ], [ 0, %.lr.ph109.i.preheader ]
  %i.ac = add i64 %.042107.i.prol, -1             ; 2 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !36
  store i8 48, ptr %i.ad, align 1, !tbaa !12
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph109.i.prol.loopexit, label %.lr.ph109.i.prol, !llvm.loop !56

.lr.ph109.i.prol.loopexit:                        ; preds = %.lr.ph109.i.prol, %.lr.ph109.i.preheader
  %.042107.i.unr = phi i64 [ %i.z, %.lr.ph109.i.preheader ], [ %i.ac, %.lr.ph109.i.prol ]
  %i.af = icmp ult i64 %i.ab, 3
  br i1 %i.af, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph109.i

.lr.ph109.i:                                      ; preds = %.lr.ph109.i.prol.loopexit, %.lr.ph109.i
  %.042107.i = phi i64 [ %i.am, %.lr.ph109.i ], [ %.042107.i.unr, %.lr.ph109.i.prol.loopexit ]
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !36
  store i8 48, ptr %i.ag, align 1, !tbaa !12
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !36
  store i8 48, ptr %i.ai, align 1, !tbaa !12
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.f, align 8, !tbaa !36
  store i8 48, ptr %i.ak, align 1, !tbaa !12
  %i.am = add i64 %.042107.i, -4                  ; 2 uses
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !36
  store i8 48, ptr %i.an, align 1, !tbaa !12
  %.not61.i.3 = icmp eq i64 %i.am, 0
  br i1 %.not61.i.3, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph109.i, !llvm.loop !57

bb.g:                                             ; preds = %bb.b
  %i.ap = icmp samesign ult i32 %i.d, -60
  br i1 %i.ap, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplImeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = sub nsw i32 0, %i.d
  %i.ar = zext nneg i32 %i.aq to i64              ; 7 uses
  %notmask.i = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i, -1                  ; 8 uses
  %i.at = lshr i64 %i.b, %i.ar                    ; 2 uses
  %.not.i62.i = icmp eq i64 %i.at, 0
  br i1 %.not.i62.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.thread.i, label %.preheader.i63.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.thread.i: ; preds = %bb.h
  %i.au = and i64 %i.b, %i.as
  br label %bb.i

.preheader.i63.i:                                 ; preds = %bb.h, %.preheader.i63.i
  %.0913.i64.i = phi i64 [ %i.ba, %.preheader.i63.i ], [ %i.at, %bb.h ] ; 3 uses
  %i.av = urem i64 %.0913.i64.i, 10
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -1 ; 2 uses
  store ptr %i.az, ptr %i.g, align 8, !tbaa !39
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !12
  %i.ba = udiv i64 %.0913.i64.i, 10
  %.not11.i65.i = icmp ult i64 %.0913.i64.i, 10
  br i1 %.not11.i65.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.i, label %.preheader.i63.i, !llvm.loop !55

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.i: ; preds = %.preheader.i63.i
  %.val.i66.i = load ptr, ptr %i.g, align 8, !tbaa !39 ; 4 uses
  %.val12.i67.i = load ptr, ptr %i.f, align 8, !tbaa !36 ; 2 uses
  %i.bb = load i8, ptr %.val.i66.i, align 1, !tbaa !12
  %i.bc = getelementptr inbounds i8, ptr %.val.i66.i, i64 -1 ; 2 uses
  store ptr %i.bc, ptr %i.g, align 8, !tbaa !39
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !12
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 46, ptr %i.be, align 1, !tbaa !12
  %i.bf = and i64 %i.b, %i.as                     ; 3 uses
  %i.bg = icmp eq ptr %.val12.i67.i, %.val.i66.i
  br i1 %i.bg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.thread.i
  %i.bh = phi i64 [ %i.au, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.thread.i ], [ %i.bf, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.i ] ; 2 uses
  store i32 0, ptr %3, align 4, !tbaa !3
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.095102.i = phi i64 [ %i.bi, %.preheader.i ], [ %i.bh, %bb.i ]
  %4 = phi i32 [ %5, %.preheader.i ], [ 0, %bb.i ]
  %i.bi = mul nuw i64 %.095102.i, 10              ; 3 uses
  %5 = add nsw i32 %4, -1                         ; 2 uses
  %.not57.i = icmp ugt i64 %i.bi, %i.as
  br i1 %.not57.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !58

.loopexit.i:                                      ; preds = %.preheader.i
  store i32 %5, ptr %3, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %bb.i
  %.196.i = phi i64 [ 0, %bb.i ], [ %i.bi, %.loopexit.i ] ; 2 uses
  %i.bj = lshr i64 %.196.i, %i.ar
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = add i8 %i.bk, 48
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -1 ; 2 uses
  store ptr %i.bn, ptr %i.g, align 8, !tbaa !39
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !12
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.f, align 8, !tbaa !36
  store i8 46, ptr %i.bo, align 1, !tbaa !12
  %i.bq = and i64 %.196.i, %i.as
  br label %bb.n

bb.k:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.i
  %i.br = ptrtoint ptr %.val.i66.i to i64
  %i.bs = ptrtoint ptr %.val12.i67.i to i64
  %i.bt = xor i64 %i.br, -1
  %i.bu = add i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = trunc i64 %i.bu to i32
  store i32 %i.bv, ptr %3, align 4, !tbaa !3
  %i.bw = icmp ult i64 %1, %i.bu
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = sub nuw i64 %i.bu, %1
  %i.by = icmp ne i64 %i.bf, 0
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.bx, i1 noundef zeroext %i.by, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.m:                                             ; preds = %bb.k
  %i.bz = sub nuw nsw i64 %1, %i.bu
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.297.i = phi i64 [ %i.bq, %bb.j ], [ %i.bf, %bb.m ] ; 3 uses
  %.0.i = phi i64 [ %1, %bb.j ], [ %i.bz, %bb.m ] ; 5 uses
  %.not58103.i = icmp eq i64 %.0.i, 0
  br i1 %.not58103.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ca = mul nuw i64 %.297.i, 10                 ; 2 uses
  %i.cb = lshr i64 %i.ca, %i.ar
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = and i64 %i.ca, %i.as                    ; 2 uses
  %i.ce = add i8 %i.cc, 48
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cg, ptr %i.f, align 8, !tbaa !36
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !12
  %i.ch = add nsw i64 %.0.i, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa124.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.cd, %.lr.ph.i.prol ]
  %.1105.i.unr = phi i64 [ %.0.i, %.lr.ph.i.preheader ], [ %i.ch, %.lr.ph.i.prol ]
  %.3104.i.unr = phi i64 [ %.297.i, %.lr.ph.i.preheader ], [ %i.cd, %.lr.ph.i.prol ]
  %i.ci = icmp eq i64 %.0.i, 1
  br i1 %i.ci, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.1105.i = phi i64 [ %i.cx, %.lr.ph.i ], [ %.1105.i.unr, %.lr.ph.i.prol.loopexit ]
  %.3104.i = phi i64 [ %i.ct, %.lr.ph.i ], [ %.3104.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cj = mul nuw i64 %.3104.i, 10                ; 2 uses
  %i.ck = lshr i64 %i.cj, %i.ar
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = and i64 %i.cj, %i.as
  %i.cn = add i8 %i.cl, 48
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store ptr %i.cp, ptr %i.f, align 8, !tbaa !36
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !12
  %i.cq = mul nuw i64 %i.cm, 10                   ; 2 uses
  %i.cr = lshr i64 %i.cq, %i.ar
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = and i64 %i.cq, %i.as                    ; 2 uses
  %i.cu = add i8 %i.cs, 48
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store ptr %i.cw, ptr %i.f, align 8, !tbaa !36
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !12
  %i.cx = add nsw i64 %.1105.i, -2                ; 2 uses
  %.not58.i.1 = icmp eq i64 %i.cx, 0
  br i1 %.not58.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n
  %.3.lcssa.i = phi i64 [ %.297.i, %bb.n ], [ %.lcssa124.unr, %.lr.ph.i.prol.loopexit ], [ %i.ct, %.lr.ph.i ]
  %i.cy = mul nuw i64 %.3.lcssa.i, 10             ; 2 uses
  %i.cz = lshr i64 %i.cy, %i.ar
  %i.da = trunc i64 %i.cz to i8                   ; 2 uses
  %i.db = and i64 %i.cy, %i.as
  %i.dc = icmp sgt i8 %i.da, 5
  br i1 %i.dc, label %._crit_edge._crit_edge.i, label %bb.o

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.val.i70.pre.i = load ptr, ptr %i.f, align 8, !tbaa !36
  br label %bb.s

bb.o:                                             ; preds = %._crit_edge.i
  %i.dd = icmp eq i8 %i.da, 5
  br i1 %i.dd, label %bb.p, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.p:                                             ; preds = %bb.o
  %.not59.i = icmp eq i64 %i.db, 0
  %.val.i70.pre115.i = load ptr, ptr %i.f, align 8, !tbaa !36 ; 4 uses
  br i1 %.not59.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds i8, ptr %.val.i70.pre115.i, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !12  ; 2 uses
  %i.dg = icmp eq i8 %i.df, 46
  br i1 %i.dg, label %bb.r, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds i8, ptr %.val.i70.pre115.i, i64 -2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !12
  br label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i: ; preds = %bb.r, %bb.q
  %i.dj = phi i8 [ %i.di, %bb.r ], [ %i.df, %bb.q ]
  %i.dk = and i8 %i.dj, -127
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %bb.s, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.s:                                             ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i, %bb.p, %._crit_edge._crit_edge.i
  %.val.i70.i = phi ptr [ %.val.i70.pre.i, %._crit_edge._crit_edge.i ], [ %.val.i70.pre115.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i ], [ %.val.i70.pre115.i, %bb.p ] ; 2 uses
  %.024.i.i = getelementptr inbounds i8, ptr %.val.i70.i, i64 -1 ; 3 uses
  %i.dm = load ptr, ptr %i.g, align 8, !tbaa !39  ; 2 uses
  %.not25.i.i = icmp ult ptr %.024.i.i, %i.dm
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.u
  %i.dn = phi ptr [ %i.dp, %bb.u ], [ %i.dm, %bb.s ]
  %.026.i.i = phi ptr [ %.0.i71.i, %bb.u ], [ %.024.i.i, %bb.s ] ; 5 uses
  %i.do = load i8, ptr %.026.i.i, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.do, label %.critedge.i.i [
    i8 57, label %bb.t
    i8 46, label %bb.u
  ]

bb.t:                                             ; preds = %.lr.ph.i.i
  store i8 48, ptr %.026.i.i, align 1, !tbaa !12
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !39
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i
  %i.dp = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.pre.i.i, %bb.t ] ; 2 uses
  %.0.i71.i = getelementptr inbounds i8, ptr %.026.i.i, i64 -1 ; 3 uses
  %.not.i72.i = icmp ult ptr %.0.i71.i, %i.dp
  br i1 %.not.i72.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !60

._crit_edge.i.i:                                  ; preds = %bb.u, %bb.s
  %.val.pn.lcssa.i.i = phi ptr [ %.val.i70.i, %bb.s ], [ %.026.i.i, %bb.u ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.024.i.i, %bb.s ], [ %.0.i71.i, %bb.u ] ; 2 uses
  store i8 49, ptr %.0.lcssa.i.i, align 1, !tbaa !12
  store ptr %.0.lcssa.i.i, ptr %i.g, align 8, !tbaa !39
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.pn.lcssa.i.i, i64 1 ; 2 uses
  %i.dr = load i8, ptr %.val.pn.lcssa.i.i, align 1, !tbaa !12
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !12
  store i8 %i.ds, ptr %.val.pn.lcssa.i.i, align 1, !tbaa !12
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !12
  %i.dt = load i32, ptr %3, align 4, !tbaa !3
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %3, align 4, !tbaa !3
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -1
  store ptr %i.dw, ptr %i.f, align 8, !tbaa !36
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dx = add i8 %i.do, 1
  store i8 %i.dx, ptr %.026.i.i, align 1, !tbaa !12
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplImeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit: ; preds = %bb.g, %bb.c
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !61
  %i.ea = zext i64 %i.dz to i128
  %i.eb = shl nuw i128 %i.ea, 64
  %i.ec = zext i64 %i.b to i128
  %i.ed = or disjoint i128 %i.eb, %i.ec           ; 4 uses
  br i1 %i.h, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplImeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit
  %i.ee = icmp samesign ugt i32 %i.d, 64
  br i1 %i.ee, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = zext nneg i32 %i.d to i128
  %i.eg = shl i128 %i.ed, %i.ef                   ; 2 uses
  %.not.i.i31 = icmp eq i128 %i.eg, 0
  br i1 %.not.i.i31, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i, label %.preheader.i.i32

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i: ; preds = %bb.w
  store i32 -1, ptr %3, align 4, !tbaa !3
  br label %bb.x

.preheader.i.i32:                                 ; preds = %bb.w, %.preheader.i.i32
  %.0913.i.i33 = phi i128 [ %i.eh, %.preheader.i.i32 ], [ %i.eg, %bb.w ] ; 2 uses
  %.0913.i.i33.frozen = freeze i128 %.0913.i.i33  ; 2 uses
  %i.eh = udiv i128 %.0913.i.i33.frozen, 10       ; 2 uses
  %i.ei = mul i128 %i.eh, 10
  %.decomposed = sub i128 %.0913.i.i33.frozen, %i.ei
  %i.ej = trunc nuw nsw i128 %.decomposed to i8
  %i.ek = or disjoint i8 %i.ej, 48
  %i.el = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -1 ; 2 uses
  store ptr %i.em, ptr %i.g, align 8, !tbaa !39
  store i8 %i.ek, ptr %i.em, align 1, !tbaa !12
  %.not11.i.i34 = icmp ult i128 %.0913.i.i33, 10
  br i1 %.not11.i.i34, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i, label %.preheader.i.i32, !llvm.loop !62

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i: ; preds = %.preheader.i.i32
  %.val.i.i35 = load ptr, ptr %i.g, align 8, !tbaa !39 ; 3 uses
  %.val12.i.i36 = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.en = ptrtoint ptr %.val12.i.i36 to i64       ; 2 uses
  %i.eo = ptrtoint ptr %.val.i.i35 to i64         ; 2 uses
  %i.ep = load i8, ptr %.val.i.i35, align 1, !tbaa !12
  %i.eq = getelementptr inbounds i8, ptr %.val.i.i35, i64 -1 ; 2 uses
  store ptr %i.eq, ptr %i.g, align 8, !tbaa !39
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !12
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  store i8 46, ptr %i.es, align 1, !tbaa !12
  %i.et = xor i64 %i.eo, -1
  %i.eu = add i64 %i.en, %i.et                    ; 4 uses
  %i.ev = trunc i64 %i.eu to i32
  store i32 %i.ev, ptr %3, align 4, !tbaa !3
  %i.ew = icmp ult i64 %1, %i.eu
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i
  %.0.i132.i = phi i64 [ -1, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i ], [ %i.eu, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i ]
  %i.ex = sub nuw i64 %.0.i132.i, %1
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.ex, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.y:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i
  %i.ey = sub nuw nsw i64 %1, %i.eu               ; 4 uses
  %.not60105.i = icmp eq i64 %i.ey, 0
  br i1 %.not60105.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i.preheader

.lr.ph108.i.preheader:                            ; preds = %bb.y
  %i.ez = add i64 %1, %i.eo
  %i.fa = sub i64 %i.ez, %i.en
  %xtraiter129 = and i64 %i.ey, 3                 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph108.i.prol.loopexit, label %.lr.ph108.i.prol

.lr.ph108.i.prol:                                 ; preds = %.lr.ph108.i.preheader, %.lr.ph108.i.prol
  %.042106.i.prol = phi i64 [ %i.fb, %.lr.ph108.i.prol ], [ %i.ey, %.lr.ph108.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph108.i.prol ], [ 0, %.lr.ph108.i.preheader ]
  %i.fb = add i64 %.042106.i.prol, -1             ; 2 uses
  %i.fc = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store ptr %i.fd, ptr %i.f, align 8, !tbaa !36
  store i8 48, ptr %i.fc, align 1, !tbaa !12
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %.lr.ph108.i.prol.loopexit, label %.lr.ph108.i.prol, !llvm.loop !63

.lr.ph108.i.prol.loopexit:                        ; preds = %.lr.ph108.i.prol, %.lr.ph108.i.preheader
  %.042106.i.unr = phi i64 [ %i.ey, %.lr.ph108.i.preheader ], [ %i.fb, %.lr.ph108.i.prol ]
  %i.fe = icmp ult i64 %i.fa, 3
  br i1 %i.fe, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %.lr.ph108.i.prol.loopexit, %.lr.ph108.i
  %.042106.i = phi i64 [ %i.fl, %.lr.ph108.i ], [ %.042106.i.unr, %.lr.ph108.i.prol.loopexit ]
  %i.ff = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store ptr %i.fg, ptr %i.f, align 8, !tbaa !36
  store i8 48, ptr %i.ff, align 1, !tbaa !12
  %i.fh = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store ptr %i.fi, ptr %i.f, align 8, !tbaa !36
  store i8 48, ptr %i.fh, align 1, !tbaa !12
  %i.fj = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  store ptr %i.fk, ptr %i.f, align 8, !tbaa !36
  store i8 48, ptr %i.fj, align 1, !tbaa !12
  %i.fl = add i64 %.042106.i, -4                  ; 2 uses
  %i.fm = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store ptr %i.fn, ptr %i.f, align 8, !tbaa !36
  store i8 48, ptr %i.fm, align 1, !tbaa !12
  %.not60.i37.3 = icmp eq i64 %i.fl, 0
  br i1 %.not60.i37.3, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i, !llvm.loop !64

bb.z:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplImeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit
  %i.fo = icmp samesign ult i32 %i.d, -124
  br i1 %i.fo, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fp = sub nsw i32 0, %i.d
  %i.fq = zext nneg i32 %i.fp to i128             ; 7 uses
  %notmask.i8 = shl nsw i128 -1, %i.fq
  %i.fr = xor i128 %notmask.i8, -1                ; 8 uses
  %i.fs = lshr i128 %i.ed, %i.fq                  ; 2 uses
  %.not.i61.i = icmp eq i128 %i.fs, 0
  br i1 %.not.i61.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i, label %.preheader.i62.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i: ; preds = %bb.aa
  %i.ft = and i128 %i.ed, %i.fr
  br label %bb.ab

.preheader.i62.i:                                 ; preds = %bb.aa, %.preheader.i62.i
  %.0913.i63.i = phi i128 [ %i.fu, %.preheader.i62.i ], [ %i.fs, %bb.aa ] ; 2 uses
  %.0913.i63.i.frozen = freeze i128 %.0913.i63.i  ; 2 uses
  %i.fu = udiv i128 %.0913.i63.i.frozen, 10       ; 2 uses
  %i.fv = mul i128 %i.fu, 10
  %.decomposed147 = sub i128 %.0913.i63.i.frozen, %i.fv
  %i.fw = trunc nuw nsw i128 %.decomposed147 to i8
  %i.fx = or disjoint i8 %i.fw, 48
  %i.fy = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -1 ; 2 uses
  store ptr %i.fz, ptr %i.g, align 8, !tbaa !39
  store i8 %i.fx, ptr %i.fz, align 1, !tbaa !12
  %.not11.i64.i = icmp ult i128 %.0913.i63.i, 10
  br i1 %.not11.i64.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i, label %.preheader.i62.i, !llvm.loop !62

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i: ; preds = %.preheader.i62.i
  %.val.i65.i = load ptr, ptr %i.g, align 8, !tbaa !39 ; 4 uses
  %.val12.i66.i = load ptr, ptr %i.f, align 8, !tbaa !36 ; 2 uses
  %i.ga = load i8, ptr %.val.i65.i, align 1, !tbaa !12
  %i.gb = getelementptr inbounds i8, ptr %.val.i65.i, i64 -1 ; 2 uses
  store ptr %i.gb, ptr %i.g, align 8, !tbaa !39
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !12
  %i.gc = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  store i8 46, ptr %i.gd, align 1, !tbaa !12
  %i.ge = and i128 %i.ed, %i.fr                   ; 3 uses
  %i.gf = icmp eq ptr %.val12.i66.i, %.val.i65.i
  br i1 %i.gf, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i
  %i.gg = phi i128 [ %i.ft, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i ], [ %i.ge, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i ] ; 2 uses
  store i32 0, ptr %3, align 4, !tbaa !3
  %.not.i27 = icmp eq i128 %i.gg, 0
  br i1 %.not.i27, label %bb.ac, label %.preheader.i28

.preheader.i28:                                   ; preds = %bb.ab, %.preheader.i28
  %.094101.i = phi i128 [ %i.gh, %.preheader.i28 ], [ %i.gg, %bb.ab ]
  %6 = phi i32 [ %7, %.preheader.i28 ], [ 0, %bb.ab ]
  %i.gh = mul nuw i128 %.094101.i, 10             ; 3 uses
  %7 = add nsw i32 %6, -1                         ; 2 uses
  %.not57.i29 = icmp ugt i128 %i.gh, %i.fr
  br i1 %.not57.i29, label %.loopexit.i30, label %.preheader.i28, !llvm.loop !65

.loopexit.i30:                                    ; preds = %.preheader.i28
  store i32 %7, ptr %3, align 4, !tbaa !3
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i30, %bb.ab
  %.195.i = phi i128 [ 0, %bb.ab ], [ %i.gh, %.loopexit.i30 ] ; 2 uses
  %i.gi = lshr i128 %.195.i, %i.fq
  %i.gj = trunc i128 %i.gi to i8
  %i.gk = add i8 %i.gj, 48
  %i.gl = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -1 ; 2 uses
  store ptr %i.gm, ptr %i.g, align 8, !tbaa !39
  store i8 %i.gk, ptr %i.gm, align 1, !tbaa !12
  %i.gn = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  store ptr %i.go, ptr %i.f, align 8, !tbaa !36
  store i8 46, ptr %i.gn, align 1, !tbaa !12
  %i.gp = and i128 %.195.i, %i.fr
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i
  %i.gq = ptrtoint ptr %.val.i65.i to i64
  %i.gr = ptrtoint ptr %.val12.i66.i to i64
  %i.gs = xor i64 %i.gq, -1
  %i.gt = add i64 %i.gr, %i.gs                    ; 4 uses
  %i.gu = trunc i64 %i.gt to i32
  store i32 %i.gu, ptr %3, align 4, !tbaa !3
  %i.gv = icmp ult i64 %1, %i.gt
  br i1 %i.gv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gw = sub nuw i64 %i.gt, %1
  %i.gx = icmp ne i128 %i.ge, 0
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.gw, i1 noundef zeroext %i.gx, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.af:                                            ; preds = %bb.ad
  %i.gy = sub nuw nsw i64 %1, %i.gt
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.296.i = phi i128 [ %i.gp, %bb.ac ], [ %i.ge, %bb.af ] ; 3 uses
  %.0.i9 = phi i64 [ %1, %bb.ac ], [ %i.gy, %bb.af ] ; 5 uses
  %.not58102.i = icmp eq i64 %.0.i9, 0
  br i1 %.not58102.i, label %._crit_edge.i12, label %.lr.ph.i10.preheader

.lr.ph.i10.preheader:                             ; preds = %bb.ag
  %xtraiter127 = and i64 %.0.i9, 1
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph.i10.prol.loopexit, label %.lr.ph.i10.prol

.lr.ph.i10.prol:                                  ; preds = %.lr.ph.i10.preheader
  %i.gz = mul nuw i128 %.296.i, 10                ; 2 uses
  %i.ha = lshr i128 %i.gz, %i.fq
  %i.hb = trunc i128 %i.ha to i8
  %i.hc = and i128 %i.gz, %i.fr                   ; 2 uses
  %i.hd = add i8 %i.hb, 48
  %i.he = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  store ptr %i.hf, ptr %i.f, align 8, !tbaa !36
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !12
  %i.hg = add nsw i64 %.0.i9, -1
  br label %.lr.ph.i10.prol.loopexit

.lr.ph.i10.prol.loopexit:                         ; preds = %.lr.ph.i10.prol, %.lr.ph.i10.preheader
  %.lcssa118.unr = phi i128 [ poison, %.lr.ph.i10.preheader ], [ %i.hc, %.lr.ph.i10.prol ]
  %.1104.i.unr = phi i64 [ %.0.i9, %.lr.ph.i10.preheader ], [ %i.hg, %.lr.ph.i10.prol ]
  %.3103.i.unr = phi i128 [ %.296.i, %.lr.ph.i10.preheader ], [ %i.hc, %.lr.ph.i10.prol ]
  %i.hh = icmp eq i64 %.0.i9, 1
  br i1 %i.hh, label %._crit_edge.i12, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.prol.loopexit, %.lr.ph.i10
  %.1104.i = phi i64 [ %i.hw, %.lr.ph.i10 ], [ %.1104.i.unr, %.lr.ph.i10.prol.loopexit ]
  %.3103.i = phi i128 [ %i.hs, %.lr.ph.i10 ], [ %.3103.i.unr, %.lr.ph.i10.prol.loopexit ]
  %i.hi = mul nuw i128 %.3103.i, 10               ; 2 uses
  %i.hj = lshr i128 %i.hi, %i.fq
  %i.hk = trunc i128 %i.hj to i8
  %i.hl = and i128 %i.hi, %i.fr
  %i.hm = add i8 %i.hk, 48
  %i.hn = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store ptr %i.ho, ptr %i.f, align 8, !tbaa !36
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !12
  %i.hp = mul nuw i128 %i.hl, 10                  ; 2 uses
  %i.hq = lshr i128 %i.hp, %i.fq
  %i.hr = trunc i128 %i.hq to i8
  %i.hs = and i128 %i.hp, %i.fr                   ; 2 uses
  %i.ht = add i8 %i.hr, 48
  %i.hu = load ptr, ptr %i.f, align 8, !tbaa !36  ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  store ptr %i.hv, ptr %i.f, align 8, !tbaa !36
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !12
  %i.hw = add nsw i64 %.1104.i, -2                ; 2 uses
  %.not58.i11.1 = icmp eq i64 %i.hw, 0
  br i1 %.not58.i11.1, label %._crit_edge.i12, label %.lr.ph.i10, !llvm.loop !66

._crit_edge.i12:                                  ; preds = %.lr.ph.i10.prol.loopexit, %.lr.ph.i10, %bb.ag
  %.3.lcssa.i13 = phi i128 [ %.296.i, %bb.ag ], [ %.lcssa118.unr, %.lr.ph.i10.prol.loopexit ], [ %i.hs, %.lr.ph.i10 ]
  %i.hx = mul nuw i128 %.3.lcssa.i13, 10          ; 2 uses
  %i.hy = lshr i128 %i.hx, %i.fq
  %i.hz = trunc i128 %i.hy to i8                  ; 2 uses
  %i.ia = and i128 %i.hx, %i.fr
  %i.ib = icmp sgt i8 %i.hz, 5
  br i1 %i.ib, label %._crit_edge._crit_edge.i26, label %bb.ah

._crit_edge._crit_edge.i26:                       ; preds = %._crit_edge.i12
  %.val.i69.pre.i = load ptr, ptr %i.f, align 8, !tbaa !36
  br label %bb.al

bb.ah:                                            ; preds = %._crit_edge.i12
  %i.ic = icmp eq i8 %i.hz, 5
  br i1 %i.ic, label %bb.ai, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.ai:                                            ; preds = %bb.ah
  %.not59.i15 = icmp eq i128 %i.ia, 0
  %.val.i69.pre114.i = load ptr, ptr %i.f, align 8, !tbaa !36 ; 4 uses
  br i1 %.not59.i15, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.id = getelementptr inbounds i8, ptr %.val.i69.pre114.i, i64 -1
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !12  ; 2 uses
  %i.if = icmp eq i8 %i.ie, 46
  br i1 %i.if, label %bb.ak, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i25

bb.ak:                                            ; preds = %bb.aj
  %i.ig = getelementptr inbounds i8, ptr %.val.i69.pre114.i, i64 -2
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !12
  br label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i25

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i25: ; preds = %bb.ak, %bb.aj
  %i.ii = phi i8 [ %i.ih, %bb.ak ], [ %i.ie, %bb.aj ]
  %i.ij = and i8 %i.ii, -127
  %i.ik = icmp eq i8 %i.ij, 1
  br i1 %i.ik, label %bb.al, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.al:                                            ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i25, %bb.ai, %._crit_edge._crit_edge.i26
  %.val.i69.i = phi ptr [ %.val.i69.pre.i, %._crit_edge._crit_edge.i26 ], [ %.val.i69.pre114.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i25 ], [ %.val.i69.pre114.i, %bb.ai ] ; 2 uses
  %.024.i.i16 = getelementptr inbounds i8, ptr %.val.i69.i, i64 -1 ; 3 uses
  %i.il = load ptr, ptr %i.g, align 8, !tbaa !39  ; 2 uses
  %.not25.i.i17 = icmp ult ptr %.024.i.i16, %i.il
  br i1 %.not25.i.i17, label %._crit_edge.i.i20, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.al, %bb.an
  %i.im = phi ptr [ %i.io, %bb.an ], [ %i.il, %bb.al ]
  %.026.i.i19 = phi ptr [ %.0.i70.i, %bb.an ], [ %.024.i.i16, %bb.al ] ; 5 uses
  %i.in = load i8, ptr %.026.i.i19, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.in, label %.critedge.i.i24 [
    i8 57, label %bb.am
    i8 46, label %bb.an
  ]

bb.am:                                            ; preds = %.lr.ph.i.i18
  store i8 48, ptr %.026.i.i19, align 1, !tbaa !12
  %.pre.i.i23 = load ptr, ptr %i.g, align 8, !tbaa !39
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i.i18
  %i.io = phi ptr [ %i.im, %.lr.ph.i.i18 ], [ %.pre.i.i23, %bb.am ] ; 2 uses
  %.0.i70.i = getelementptr inbounds i8, ptr %.026.i.i19, i64 -1 ; 3 uses
  %.not.i71.i = icmp ult ptr %.0.i70.i, %i.io
  br i1 %.not.i71.i, label %._crit_edge.i.i20, label %.lr.ph.i.i18, !llvm.loop !60

._crit_edge.i.i20:                                ; preds = %bb.an, %bb.al
  %.val.pn.lcssa.i.i21 = phi ptr [ %.val.i69.i, %bb.al ], [ %.026.i.i19, %bb.an ] ; 3 uses
  %.0.lcssa.i.i22 = phi ptr [ %.024.i.i16, %bb.al ], [ %.0.i70.i, %bb.an ] ; 2 uses
  store i8 49, ptr %.0.lcssa.i.i22, align 1, !tbaa !12
  store ptr %.0.lcssa.i.i22, ptr %i.g, align 8, !tbaa !39
  %i.ip = getelementptr inbounds nuw i8, ptr %.val.pn.lcssa.i.i21, i64 1 ; 2 uses
  %i.iq = load i8, ptr %.val.pn.lcssa.i.i21, align 1, !tbaa !12
  %i.ir = load i8, ptr %i.ip, align 1, !tbaa !12
  store i8 %i.ir, ptr %.val.pn.lcssa.i.i21, align 1, !tbaa !12
  store i8 %i.iq, ptr %i.ip, align 1, !tbaa !12
  %i.is = load i32, ptr %3, align 4, !tbaa !3
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %3, align 4, !tbaa !3
  %i.iu = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -1
  store ptr %i.iv, ptr %i.f, align 8, !tbaa !36
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

.critedge.i.i24:                                  ; preds = %.lr.ph.i.i18
  %i.iw = add i8 %i.in, 1
  store i8 %i.iw, ptr %.026.i.i19, align 1, !tbaa !12
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit: ; preds = %.lr.ph108.i.prol.loopexit, %.lr.ph108.i, %.lr.ph109.i.prol.loopexit, %.lr.ph109.i, %bb.f, %.critedge.i.i, %._crit_edge.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i, %bb.o, %bb.l, %bb.e, %.critedge.i.i24, %._crit_edge.i.i20, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i25, %bb.ah, %bb.ae, %bb.z, %bb.y, %bb.x, %bb.v, %bb.a
  %.0 = phi i1 [ true, %.lr.ph109.i.prol.loopexit ], [ false, %bb.a ], [ false, %bb.z ], [ false, %bb.v ], [ true, %bb.x ], [ true, %bb.ae ], [ true, %bb.ah ], [ true, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i25 ], [ true, %._crit_edge.i.i20 ], [ true, %.critedge.i.i24 ], [ true, %bb.y ], [ true, %bb.e ], [ true, %bb.l ], [ true, %bb.o ], [ true, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i ], [ true, %._crit_edge.i.i ], [ true, %.critedge.i.i ], [ true, %bb.f ], [ true, %.lr.ph109.i ], [ true, %.lr.ph108.i ], [ true, %.lr.ph108.i.prol.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(x86_fp80 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.e, i32 -1)
end_hunk_0
begin_hunk_1_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS4_11FormatStateEE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  %.010.i49.i.i.i.i = phi i64 [ %i.jc, %.peel.next.i48.i.i.i.i ], [ %i.iv, %bb.v ]
  %i.jc = add i64 %.010.i49.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.is, i8 48, i64 1024, i1 false)
  store ptr %i.il, ptr %i.im, align 8, !tbaa !78
  %i.jd = load ptr, ptr %i.iu, align 8, !tbaa !79
  %i.je = load ptr, ptr %i.ig, align 8, !tbaa !80
  call void %i.jd(ptr noundef %i.je, i64 1024, ptr nonnull %i.is), !inline_history !124
  store ptr %i.is, ptr %i.im, align 8, !tbaa !78
  %i.jf = icmp ugt i64 %i.jc, 1024
  br i1 %i.jf, label %.peel.next.i48.i.i.i.i, label %._crit_edge.i41.i.i.i.i, !llvm.loop !83

._crit_edge.i41.i.i.i.i:                          ; preds = %.peel.next.i48.i.i.i.i, %bb.v, %bb.t
  %.0.lcssa.i42.i.i.i.i = phi i64 [ %.pre77.i.i.i.i, %bb.t ], [ %i.iv, %bb.v ], [ %i.jc, %.peel.next.i48.i.i.i.i ] ; 2 uses
  %.lcssa.i43.i.i.i.i = phi ptr [ %i.io, %bb.t ], [ %i.is, %bb.v ], [ %i.is, %.peel.next.i48.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i43.i.i.i.i, i8 48, i64 %.0.lcssa.i42.i.i.i.i, i1 false)
  %i.jg = load ptr, ptr %i.im, align 8, !tbaa !78
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.0.lcssa.i42.i.i.i.i
  store ptr %i.jh, ptr %i.im, align 8, !tbaa !78
  %.pre78.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !117
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i: ; preds = %._crit_edge.i41.i.i.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i
  %.sink113.i.i.i.i = phi ptr [ %.pre78.i.i.i.i, %._crit_edge.i41.i.i.i.i ], [ %i.hk, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.sink113.i.i.i.i, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !31
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i, %bb.s
  %i.jk = phi ptr [ %i.ig, %bb.s ], [ %i.jj, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.sink.split.i.i.i.i ] ; 7 uses
  %i.jl = icmp eq i64 %.sroa.10.065.i.i.i.i, 0
  br i1 %i.jl, label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit", label %bb.w

bb.w:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !75
  %i.jo = add i64 %i.jn, %.sroa.10.065.i.i.i.i
  store i64 %i.jo, ptr %i.jm, align 8, !tbaa !75
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 1056 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 24 ; 8 uses
  %i.jr = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.js = load ptr, ptr %i.jq, align 8, !tbaa !78 ; 4 uses
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = sub i64 %i.jr, %i.jt                    ; 4 uses
  %i.jv = icmp ugt i64 %.sroa.10.065.i.i.i.i, %i.ju
  br i1 %i.jv, label %.lr.ph.i54.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.lr.ph.i54.i.i.i.i:                               ; preds = %bb.w
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jk, i64 32 ; 8 uses
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %i.jz = sub nuw nsw i64 %.sroa.10.065.i.i.i.i, %i.ju ; 3 uses
  %.not.peel.i55.i.i.i.i = icmp eq ptr %i.jp, %i.js
  br i1 %.not.peel.i55.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i54.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.js, i8 32, i64 %i.ju, i1 false)
  %i.ka = load ptr, ptr %i.jq, align 8, !tbaa !78
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.ju ; 2 uses
  store ptr %i.kb, ptr %i.jq, align 8, !tbaa !78
  %.pre.i56.i.i.i.i = ptrtoint ptr %i.kb to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i54.i.i.i.i
  %.pre-phi.i57.i.i.i.i = phi i64 [ %.pre.i56.i.i.i.i, %bb.x ], [ %i.jr, %.lr.ph.i54.i.i.i.i ]
  %i.kc = sub i64 %.pre-phi.i57.i.i.i.i, %i.jx
  %i.kd = load ptr, ptr %i.jy, align 8, !tbaa !79
  %i.ke = load ptr, ptr %i.jk, align 8, !tbaa !80
  call void %i.kd(ptr noundef %i.ke, i64 %i.kc, ptr nonnull %i.jw), !inline_history !124
  store ptr %i.jw, ptr %i.jq, align 8, !tbaa !78
  %i.kf = icmp ugt i64 %i.jz, 1024
  br i1 %i.kf, label %.peel.next.i58.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.peel.next.i58.i.i.i.i:                           ; preds = %bb.y, %.peel.next.i58.i.i.i.i
  %.010.i59.i.i.i.i = phi i64 [ %i.kg, %.peel.next.i58.i.i.i.i ], [ %i.jz, %bb.y ]
  %i.kg = add i64 %.010.i59.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.jw, i8 32, i64 1024, i1 false)
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !78
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !79
  %i.ki = load ptr, ptr %i.jk, align 8, !tbaa !80
  call void %i.kh(ptr noundef %i.ki, i64 1024, ptr nonnull %i.jw), !inline_history !124
  store ptr %i.jw, ptr %i.jq, align 8, !tbaa !78
  %i.kj = icmp ugt i64 %i.kg, 1024
  br i1 %i.kj, label %.peel.next.i58.i.i.i.i, label %._crit_edge.i51.i.i.i.i, !llvm.loop !83

._crit_edge.i51.i.i.i.i:                          ; preds = %.peel.next.i58.i.i.i.i, %bb.y, %bb.w
  %.0.lcssa.i52.i.i.i.i = phi i64 [ %.sroa.10.065.i.i.i.i, %bb.w ], [ %i.jz, %bb.y ], [ %i.kg, %.peel.next.i58.i.i.i.i ] ; 2 uses
  %.lcssa.i53.i.i.i.i = phi ptr [ %i.js, %bb.w ], [ %i.jw, %bb.y ], [ %i.jw, %.peel.next.i58.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i53.i.i.i.i, i8 32, i64 %.0.lcssa.i52.i.i.i.i, i1 false)
  %i.kk = load ptr, ptr %i.jq, align 8, !tbaa !78
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.0.lcssa.i52.i.i.i.i
  store ptr %i.kl, ptr %i.jq, align 8, !tbaa !78
  br label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit"

"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit": ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, %._crit_edge.i51.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr %1, i64 %2) #0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::FractionalDigitGenerator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !23
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 16, !tbaa !98  ; 3 uses
  %i.d = sdiv i32 %i.c, 32                        ; 2 uses
  %i.e = add nsw i32 %i.d, 1                      ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 5 uses
  %i.g = srem i32 %i.c, 32                        ; 2 uses
  %i.h = sub nsw i32 32, %i.g
  %i.i = zext i64 %.sroa.2.0.copyload.i.i.i.i to i128
  %i.j = shl nuw i128 %i.i, 64
  %i.k = zext i64 %.sroa.0.0.copyload.i.i.i.i to i128 ; 2 uses
  %i.l = or disjoint i128 %i.j, %i.k
  %i.m = zext nneg i32 %i.h to i128
  %i.n = shl nuw nsw i128 %i.k, %i.m
  %i.o = trunc i128 %i.n to i32
  %i.p = add nsw i64 %i.f, -1                     ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p ; 2 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !3
  %i.r = zext nneg i32 %i.g to i128
  %i.s = lshr i128 %i.l, %i.r                     ; 2 uses
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i128 %i.s, 64                       ; 2 uses
  %.not.i18.i.i.i.i.i = icmp ne i64 %i.t, 0
  %i.v = icmp ne i128 %i.u, 0
  %i.w = or i1 %.not.i18.i.i.i.i.i, %i.v
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.x = trunc nuw i128 %i.u to i64
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.not.i5.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i5.i.i.i.i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i
  %.off = add i32 %i.c, 31
  %i.y = icmp ult i32 %.off, 63
  br i1 %i.y, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.f, -2
  br label %.preheader.i.i.i.i.i.i

.unr-lcssa:                                       ; preds = %.preheader.i.i.i.i.i.i
  %i.z = and i32 %i.d, 1
  %lcmp.mod.not.not = icmp eq i32 %i.z, 0
  br i1 %lcmp.mod.not.not, label %.preheader.i.i.i.i.i.i.epil.preheader, label %bb.b

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.epil.init = phi i64 [ %i.f, %.preheader.i.i.i.i.i.i.preheader ], [ %i.at, %.unr-lcssa ]
  %.0610.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ba, %.unr-lcssa ]
  %lcmp.mod3 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.aa = getelementptr [4 x i8], ptr %1, i64 %.011.i.i.i.i.i.i.epil.init
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4     ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 10
  %i.af = add nuw nsw i64 %i.ae, %.0610.i.i.i.i.i.i.epil.init ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !3
  %i.ah = lshr i64 %i.af, 32
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.ba, %.unr-lcssa ], [ %i.ah, %.preheader.i.i.i.i.i.i.epil.preheader ]
  %i.ai = trunc nuw nsw i64 %.lcssa to i8
  %i.aj = load i32, ptr %i.q, align 4, !tbaa !3
  %i.ak = icmp eq i32 %i.aj, 0
  %spec.select.i.i.i.i = select i1 %i.ak, i64 %i.p, i64 %i.f
  br label %_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i = phi i64 [ %i.f, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.at, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ba, %.preheader.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.al = getelementptr [4 x i8], ptr %1, i64 %.011.i.i.i.i.i.i
  %i.am = getelementptr i8, ptr %i.al, i64 -4     ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.ao, 10
  %i.aq = add nuw nsw i64 %i.ap, %.0610.i.i.i.i.i.i ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !3
  %i.as = lshr i64 %i.aq, 32
  %i.at = add i64 %.011.i.i.i.i.i.i, -2           ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 10
  %i.ay = add nuw nsw i64 %i.ax, %i.as            ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.au, align 4, !tbaa !3
  %i.ba = lshr i64 %i.ay, 32                      ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !128

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.8.020.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.09.019.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bb = trunc i64 %.sroa.09.019.i.i.i.i.i to i32
  %i.bc = add i64 %.021.i.i.i.i.i, -1             ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bc
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !3
  %i.be = zext i64 %.sroa.8.020.i.i.i.i.i to i128
  %i.bf = shl nuw i128 %i.be, 64
  %i.bg = zext i64 %.sroa.09.019.i.i.i.i.i to i128
  %i.bh = or disjoint i128 %i.bf, %i.bg
  %i.bi = lshr i128 %i.bh, 32
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
  %i.bk = lshr i64 %.sroa.8.020.i.i.i.i.i, 32     ; 2 uses
  %i.bl = or i64 %i.bk, %i.bj
  %.not.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !129

_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.b
  %.sroa.28.0.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.b ]
  %.07.i.i.i.i.i.i = phi i8 [ 0, %._crit_edge.i.i.i.i.i ], [ %i.ai, %bb.b ]
  %.val.i.i.i.i = load ptr, ptr %0, align 16, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 %.07.i.i.i.i.i.i, ptr %3, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.28.0.i.i.i.i, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  call void %.val5.i.i.i.i(ptr %.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3), !inline_history !131
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS4_11FormatStateEE3$_0vJNS4_24FractionalDigitGeneratorEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #0 {
bb.a:
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.44.0.copyload.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !tbaa !132 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !133, !nonnull !119, !align !120
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit", label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135, !nonnull !119, !align !120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %.not81.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not81.i.i.i.i, label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit", label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i8, ptr %1, align 8, !tbaa !12
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !23
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %.lr.ph.i.preheader.i.i.i
  %.lcssa7786.i.i.i.i = phi i64 [ %.val20.i.i.i.i, %bb.m ], [ %.sroa.3.0.copyload.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 10 uses
  %i.h = phi i64 [ %i.gw, %bb.m ], [ %i.g, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %storemerge.lcssa.i7982.i.i.i.i = phi i8 [ %storemerge.lcssa.i.i.i.i.i, %bb.m ], [ %.sroa.03.0.copyload.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 5 uses
  %.not.i.i.i.i.i = icmp ne i8 %storemerge.lcssa.i7982.i.i.i.i, 0
  %i.i = icmp ne i64 %.lcssa7786.i.i.i.i, 0
  %i.j = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.i
  br i1 %i.j, label %bb.b, label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.lcssa7786.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.b
  %xtraiter = and i64 %.lcssa7786.i.i.i.i, 1
  %i.k = icmp eq i64 %.lcssa7786.i.i.i.i, 1
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.lcssa7786.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.epil.init = phi i64 [ %.lcssa7786.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ah, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %.0610.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ao, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod77 = trunc i64 %.lcssa7786.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.l = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i.epil.init
  %i.m = getelementptr i8, ptr %i.l, i64 -4       ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, 10
  %i.q = add nuw nsw i64 %i.p, %.0610.i.i.i.i.i.i.epil.init ; 2 uses
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.m, align 4, !tbaa !3
  %i.s = lshr i64 %i.q, 32
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  %.lcssa65 = phi i64 [ %i.ao, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ], [ %i.s, %.preheader.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.t = trunc nuw nsw i64 %.lcssa65 to i8
  %i.u = add i64 %.lcssa7786.i.i.i.i, -1          ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = icmp eq i32 %i.w, 0
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.u, i64 %.lcssa7786.i.i.i.i ; 3 uses
  %i.y = icmp eq i64 %.lcssa65, 9
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i = phi i64 [ %.lcssa7786.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ah, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ao, %.preheader.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.z = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 -4      ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 10
  %i.ae = add nuw nsw i64 %i.ad, %.0610.i.i.i.i.i.i ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !3
  %i.ag = lshr i64 %i.ae, 32
  %i.ah = add i64 %.011.i.i.i.i.i.i, -2           ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ak, 10
  %i.am = add nuw nsw i64 %i.al, %i.ag            ; 2 uses
  %i.an = trunc i64 %i.am to i32
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !3
  %i.ao = lshr i64 %i.am, 32                      ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !128

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i
  %i.ap = phi i64 [ %spec.select92.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ] ; 2 uses
  %i.aq = phi i64 [ %spec.select93.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ] ; 9 uses
  %.sroa.2.010.i.i.i.i.i = phi i64 [ %i.ar, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ 0, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ]
  %i.ar = add i64 %.sroa.2.010.i.i.i.i.i, 1       ; 3 uses
  %.not.i2.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i2.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i3.i.i.i.i.i.preheader

.preheader.i3.i.i.i.i.i.preheader:                ; preds = %.lr.ph.i.i.i.i.i
  %xtraiter78 = and i64 %i.aq, 1
  %i.as = icmp eq i64 %i.aq, 1
  br i1 %i.as, label %.preheader.i3.i.i.i.i.i.epil.preheader, label %.preheader.i3.i.i.i.i.i.preheader.new

.preheader.i3.i.i.i.i.i.preheader.new:            ; preds = %.preheader.i3.i.i.i.i.i.preheader
  %unroll_iter82 = and i64 %i.aq, -2
  br label %.preheader.i3.i.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i3.i.i.i.i.i
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i, label %.preheader.i3.i.i.i.i.i.epil.preheader

.preheader.i3.i.i.i.i.i.epil.preheader:           ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.preheader
  %.011.i4.i.i.i.i.i.epil.init = phi i64 [ %i.aq, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bo, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %.0610.i5.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bv, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod81 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.at = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i.epil.init
  %i.au = getelementptr i8, ptr %i.at, i64 -4     ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 10
  %i.ay = add nuw nsw i64 %i.ax, %.0610.i5.i.i.i.i.i.epil.init ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.au, align 4, !tbaa !3
  %i.ba = lshr i64 %i.ay, 32
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.epil.preheader
  %.lcssa66 = phi i64 [ %i.bv, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ], [ %i.ba, %.preheader.i3.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.bb = add i64 %i.aq, -1                       ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  %spec.select92.i.i.i.i = select i1 %i.be, i64 %i.bb, i64 %i.ap ; 2 uses
  %spec.select93.i.i.i.i = select i1 %i.be, i64 %i.bb, i64 %i.aq
  %i.bf = icmp eq i64 %.lcssa66, 9
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i, !llvm.loop !136

.preheader.i3.i.i.i.i.i:                          ; preds = %.preheader.i3.i.i.i.i.i, %.preheader.i3.i.i.i.i.i.preheader.new
  %.011.i4.i.i.i.i.i = phi i64 [ %i.aq, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bo, %.preheader.i3.i.i.i.i.i ] ; 2 uses
  %.0610.i5.i.i.i.i.i = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bv, %.preheader.i3.i.i.i.i.i ]
  %niter83 = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %niter83.next.1, %.preheader.i3.i.i.i.i.i ]
  %i.bg = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4     ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = zext i32 %i.bi to i64
end_hunk_1
begin_hunk_2_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !12
  %i.ea = getelementptr inbounds i8, ptr %.260102, i64 -2 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %.052103, i64 -2 ; 2 uses
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !12
  %i.ed = load i8, ptr %i.eb, align 1, !tbaa !12
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !12
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !12
  %i.ee = getelementptr inbounds i8, ptr %.260102, i64 -3 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.052103, i64 -3 ; 2 uses
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !12
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !12
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !12
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !12
  %i.ei = getelementptr inbounds i8, ptr %.260102, i64 -4 ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %.052103, i64 -4 ; 3 uses
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !12
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !12
  store i8 %i.el, ptr %i.ei, align 1, !tbaa !12
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !12
  %i.em = add nuw nsw i64 %.0104, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.em, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !176

_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block214, %vec.epilog.middle.block231, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.aq, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit ], [ %i.aq, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block214 ], [ %1, %.lr.ph.i.prol.loopexit ], [ %1, %vec.epilog.middle.block231 ], [ %1, %.lr.ph.i ], [ %i.aq, %._crit_edge110 ], [ %i.aq, %._crit_edge ]
  ret ptr %.6
}

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(i64 %0, i32 range(i32 -2147483648, 2147483595) %1, i64 noundef %2, ptr noundef nonnull %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %2, 39
  br i1 %i.a, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 49 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 31 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !39
  %i.e = icmp sgt i32 %1, -1
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i32 %1, 11
  br i1 %i.f, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %1 to i64
  %i.h = shl i64 %0, %i.g                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i, label %.preheader.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i: ; preds = %bb.d
  store i32 -1, ptr %4, align 4, !tbaa !3
  br label %bb.e

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.0913.i.i = phi i64 [ %i.n, %.preheader.i.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.i = urem i64 %.0913.i.i, 10
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = or disjoint i8 %i.j, 48
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !39
  store i8 %i.k, ptr %i.m, align 1, !tbaa !12
  %i.n = udiv i64 %.0913.i.i, 10
  %.not11.i.i = icmp ult i64 %.0913.i.i, 10
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i, label %.preheader.i.i, !llvm.loop !55

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i: ; preds = %.preheader.i.i
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !39 ; 3 uses
  %.val12.i.i = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.o = ptrtoint ptr %.val12.i.i to i64          ; 2 uses
  %i.p = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.q = load i8, ptr %.val.i.i, align 1, !tbaa !12
  %i.r = getelementptr inbounds i8, ptr %.val.i.i, i64 -1 ; 2 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !39
  store i8 %i.q, ptr %i.r, align 1, !tbaa !12
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 46, ptr %i.t, align 1, !tbaa !12
  %i.u = xor i64 %i.p, -1
  %i.v = add i64 %i.o, %i.u                       ; 4 uses
  %i.w = trunc i64 %i.v to i32
  store i32 %i.w, ptr %4, align 4, !tbaa !3
  %i.x = icmp ult i64 %2, %i.v
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i
  %.0.i132.i = phi i64 [ -1, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i ], [ %i.v, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i ]
  %i.y = sub nuw i64 %.0.i132.i, %2
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.y, i1 noundef zeroext false, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i
  %i.z = sub nuw nsw i64 %2, %i.v                 ; 4 uses
  %.not60105.i = icmp eq i64 %i.z, 0
  br i1 %.not60105.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i.preheader

.lr.ph108.i.preheader:                            ; preds = %bb.f
  %i.aa = add i64 %2, %i.p
  %i.ab = sub i64 %i.aa, %i.o
  %xtraiter152 = and i64 %i.z, 3                  ; 2 uses
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph108.i.prol.loopexit, label %.lr.ph108.i.prol

.lr.ph108.i.prol:                                 ; preds = %.lr.ph108.i.preheader, %.lr.ph108.i.prol
  %.042106.i.prol = phi i64 [ %i.ac, %.lr.ph108.i.prol ], [ %i.z, %.lr.ph108.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph108.i.prol ], [ 0, %.lr.ph108.i.preheader ]
  %i.ac = add i64 %.042106.i.prol, -1             ; 2 uses
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.ad, align 1, !tbaa !12
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter152
  br i1 %prol.iter.cmp.not, label %.lr.ph108.i.prol.loopexit, label %.lr.ph108.i.prol, !llvm.loop !177

.lr.ph108.i.prol.loopexit:                        ; preds = %.lr.ph108.i.prol, %.lr.ph108.i.preheader
  %.042106.i.unr = phi i64 [ %i.z, %.lr.ph108.i.preheader ], [ %i.ac, %.lr.ph108.i.prol ]
  %i.af = icmp ult i64 %i.ab, 3
  br i1 %i.af, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %.lr.ph108.i.prol.loopexit, %.lr.ph108.i
  %.042106.i = phi i64 [ %i.am, %.lr.ph108.i ], [ %.042106.i.unr, %.lr.ph108.i.prol.loopexit ]
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.ag, align 1, !tbaa !12
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.ai, align 1, !tbaa !12
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.ak, align 1, !tbaa !12
  %i.am = add i64 %.042106.i, -4                  ; 2 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.an, align 1, !tbaa !12
  %.not60.i.3 = icmp eq i64 %i.am, 0
  br i1 %.not60.i.3, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i, !llvm.loop !178

bb.g:                                             ; preds = %bb.b
  %i.ap = icmp samesign ult i32 %1, -60
  br i1 %i.ap, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = sub nsw i32 0, %1
  %i.ar = zext nneg i32 %i.aq to i64              ; 7 uses
  %notmask.i = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i, -1                  ; 8 uses
  %i.at = lshr i64 %0, %i.ar                      ; 2 uses
  %.not.i61.i = icmp eq i64 %i.at, 0
  br i1 %.not.i61.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.thread.i, label %.preheader.i62.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.thread.i: ; preds = %bb.h
  %i.au = and i64 %0, %i.as
  br label %bb.i

.preheader.i62.i:                                 ; preds = %bb.h, %.preheader.i62.i
  %.0913.i63.i = phi i64 [ %i.ba, %.preheader.i62.i ], [ %i.at, %bb.h ] ; 3 uses
  %i.av = urem i64 %.0913.i63.i, 10
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -1 ; 2 uses
  store ptr %i.az, ptr %i.d, align 8, !tbaa !39
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !12
  %i.ba = udiv i64 %.0913.i63.i, 10
  %.not11.i64.i = icmp ult i64 %.0913.i63.i, 10
  br i1 %.not11.i64.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.i, label %.preheader.i62.i, !llvm.loop !55

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.i: ; preds = %.preheader.i62.i
  %.val.i65.i = load ptr, ptr %i.d, align 8, !tbaa !39 ; 4 uses
  %.val12.i66.i = load ptr, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.bb = load i8, ptr %.val.i65.i, align 1, !tbaa !12
  %i.bc = getelementptr inbounds i8, ptr %.val.i65.i, i64 -1 ; 2 uses
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !39
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !12
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 46, ptr %i.be, align 1, !tbaa !12
  %i.bf = and i64 %0, %i.as                       ; 3 uses
  %i.bg = icmp eq ptr %.val12.i66.i, %.val.i65.i
  br i1 %i.bg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.thread.i
  %i.bh = phi i64 [ %i.au, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.thread.i ], [ %i.bf, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.i ] ; 2 uses
  store i32 0, ptr %4, align 4, !tbaa !3
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.094101.i = phi i64 [ %i.bi, %.preheader.i ], [ %i.bh, %bb.i ]
  %5 = phi i32 [ %6, %.preheader.i ], [ 0, %bb.i ]
  %i.bi = mul nuw i64 %.094101.i, 10              ; 3 uses
  %6 = add nsw i32 %5, -1                         ; 2 uses
  %.not57.i = icmp ugt i64 %i.bi, %i.as
  br i1 %.not57.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !179

.loopexit.i:                                      ; preds = %.preheader.i
  store i32 %6, ptr %4, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %bb.i
  %.195.i = phi i64 [ 0, %bb.i ], [ %i.bi, %.loopexit.i ] ; 2 uses
  %i.bj = lshr i64 %.195.i, %i.ar
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = add i8 %i.bk, 48
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -1 ; 2 uses
  store ptr %i.bn, ptr %i.d, align 8, !tbaa !39
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !12
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !36
  store i8 46, ptr %i.bo, align 1, !tbaa !12
  %i.bq = and i64 %.195.i, %i.as
  br label %bb.n

bb.k:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.i
  %i.br = ptrtoint ptr %.val.i65.i to i64
  %i.bs = ptrtoint ptr %.val12.i66.i to i64
  %i.bt = xor i64 %i.br, -1
  %i.bu = add i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = trunc i64 %i.bu to i32
  store i32 %i.bv, ptr %4, align 4, !tbaa !3
  %i.bw = icmp ult i64 %2, %i.bu
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = sub nuw i64 %i.bu, %2
  %i.by = icmp ne i64 %i.bf, 0
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.bx, i1 noundef zeroext %i.by, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.m:                                             ; preds = %bb.k
  %i.bz = sub nuw nsw i64 %2, %i.bu
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.296.i = phi i64 [ %i.bq, %bb.j ], [ %i.bf, %bb.m ] ; 3 uses
  %.0.i = phi i64 [ %2, %bb.j ], [ %i.bz, %bb.m ] ; 5 uses
  %.not58102.i = icmp eq i64 %.0.i, 0
  br i1 %.not58102.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ca = mul nuw i64 %.296.i, 10                 ; 2 uses
  %i.cb = lshr i64 %i.ca, %i.ar
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = and i64 %i.ca, %i.as                    ; 2 uses
  %i.ce = add i8 %i.cc, 48
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cg, ptr %i.c, align 8, !tbaa !36
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !12
  %i.ch = add nsw i64 %.0.i, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa147.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.cd, %.lr.ph.i.prol ]
  %.1104.i.unr = phi i64 [ %.0.i, %.lr.ph.i.preheader ], [ %i.ch, %.lr.ph.i.prol ]
  %.3103.i.unr = phi i64 [ %.296.i, %.lr.ph.i.preheader ], [ %i.cd, %.lr.ph.i.prol ]
  %i.ci = icmp eq i64 %.0.i, 1
  br i1 %i.ci, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.1104.i = phi i64 [ %i.cx, %.lr.ph.i ], [ %.1104.i.unr, %.lr.ph.i.prol.loopexit ]
  %.3103.i = phi i64 [ %i.ct, %.lr.ph.i ], [ %.3103.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cj = mul nuw i64 %.3103.i, 10                ; 2 uses
  %i.ck = lshr i64 %i.cj, %i.ar
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = and i64 %i.cj, %i.as
  %i.cn = add i8 %i.cl, 48
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store ptr %i.cp, ptr %i.c, align 8, !tbaa !36
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !12
  %i.cq = mul nuw i64 %i.cm, 10                   ; 2 uses
  %i.cr = lshr i64 %i.cq, %i.ar
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = and i64 %i.cq, %i.as                    ; 2 uses
  %i.cu = add i8 %i.cs, 48
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store ptr %i.cw, ptr %i.c, align 8, !tbaa !36
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !12
  %i.cx = add nsw i64 %.1104.i, -2                ; 2 uses
  %.not58.i.1 = icmp eq i64 %i.cx, 0
  br i1 %.not58.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !180

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n
  %.3.lcssa.i = phi i64 [ %.296.i, %bb.n ], [ %.lcssa147.unr, %.lr.ph.i.prol.loopexit ], [ %i.ct, %.lr.ph.i ]
  %i.cy = mul nuw i64 %.3.lcssa.i, 10             ; 2 uses
  %i.cz = lshr i64 %i.cy, %i.ar
  %i.da = trunc i64 %i.cz to i8                   ; 2 uses
  %i.db = and i64 %i.cy, %i.as
  %i.dc = icmp sgt i8 %i.da, 5
  br i1 %i.dc, label %._crit_edge._crit_edge.i, label %bb.o

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.val.i69.pre.i = load ptr, ptr %i.c, align 8, !tbaa !36
  br label %bb.s

bb.o:                                             ; preds = %._crit_edge.i
  %i.dd = icmp eq i8 %i.da, 5
  br i1 %i.dd, label %bb.p, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.p:                                             ; preds = %bb.o
  %.not59.i = icmp eq i64 %i.db, 0
  %.val.i69.pre114.i = load ptr, ptr %i.c, align 8, !tbaa !36 ; 4 uses
  br i1 %.not59.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds i8, ptr %.val.i69.pre114.i, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !12  ; 2 uses
  %i.dg = icmp eq i8 %i.df, 46
  br i1 %i.dg, label %bb.r, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds i8, ptr %.val.i69.pre114.i, i64 -2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !12
  br label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i: ; preds = %bb.r, %bb.q
  %i.dj = phi i8 [ %i.di, %bb.r ], [ %i.df, %bb.q ]
  %i.dk = and i8 %i.dj, -127
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %bb.s, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.s:                                             ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i, %bb.p, %._crit_edge._crit_edge.i
  %.val.i69.i = phi ptr [ %.val.i69.pre.i, %._crit_edge._crit_edge.i ], [ %.val.i69.pre114.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i ], [ %.val.i69.pre114.i, %bb.p ] ; 2 uses
  %.024.i.i = getelementptr inbounds i8, ptr %.val.i69.i, i64 -1 ; 3 uses
  %i.dm = load ptr, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %.not25.i.i = icmp ult ptr %.024.i.i, %i.dm
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.u
  %i.dn = phi ptr [ %i.dp, %bb.u ], [ %i.dm, %bb.s ]
  %.026.i.i = phi ptr [ %.0.i70.i, %bb.u ], [ %.024.i.i, %bb.s ] ; 5 uses
  %i.do = load i8, ptr %.026.i.i, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.do, label %.critedge.i.i [
    i8 57, label %bb.t
    i8 46, label %bb.u
  ]

bb.t:                                             ; preds = %.lr.ph.i.i
  store i8 48, ptr %.026.i.i, align 1, !tbaa !12
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !39
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i
  %i.dp = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %.pre.i.i, %bb.t ] ; 2 uses
  %.0.i70.i = getelementptr inbounds i8, ptr %.026.i.i, i64 -1 ; 3 uses
  %.not.i71.i = icmp ult ptr %.0.i70.i, %i.dp
  br i1 %.not.i71.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !60

._crit_edge.i.i:                                  ; preds = %bb.u, %bb.s
  %.val.pn.lcssa.i.i = phi ptr [ %.val.i69.i, %bb.s ], [ %.026.i.i, %bb.u ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.024.i.i, %bb.s ], [ %.0.i70.i, %bb.u ] ; 2 uses
  store i8 49, ptr %.0.lcssa.i.i, align 1, !tbaa !12
  store ptr %.0.lcssa.i.i, ptr %i.d, align 8, !tbaa !39
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.pn.lcssa.i.i, i64 1 ; 2 uses
  %i.dr = load i8, ptr %.val.pn.lcssa.i.i, align 1, !tbaa !12
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !12
  store i8 %i.ds, ptr %.val.pn.lcssa.i.i, align 1, !tbaa !12
  store i8 %i.dr, ptr %i.dq, align 1, !tbaa !12
  %i.dt = load i32, ptr %4, align 4, !tbaa !3
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %4, align 4, !tbaa !3
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -1
  store ptr %i.dw, ptr %i.c, align 8, !tbaa !36
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dx = add i8 %i.do, 1
  store i8 %i.dx, ptr %.026.i.i, align 1, !tbaa !12
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.v:                                             ; preds = %bb.c
  %i.dy = icmp samesign ugt i32 %1, 75
  br i1 %i.dy, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = zext i64 %0 to i128
  %i.ea = zext nneg i32 %1 to i128
  %i.eb = shl i128 %i.dz, %i.ea                   ; 2 uses
  %.not.i.i50 = icmp eq i128 %i.eb, 0
  br i1 %.not.i.i50, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i, label %.preheader.i.i51

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i: ; preds = %bb.w
  store i32 -1, ptr %4, align 4, !tbaa !3
  br label %bb.x

.preheader.i.i51:                                 ; preds = %bb.w, %.preheader.i.i51
  %.0913.i.i52 = phi i128 [ %i.ec, %.preheader.i.i51 ], [ %i.eb, %bb.w ] ; 2 uses
  %.0913.i.i52.frozen = freeze i128 %.0913.i.i52  ; 2 uses
  %i.ec = udiv i128 %.0913.i.i52.frozen, 10       ; 2 uses
  %i.ed = mul i128 %i.ec, 10
  %.decomposed = sub i128 %.0913.i.i52.frozen, %i.ed
  %i.ee = trunc nuw nsw i128 %.decomposed to i8
  %i.ef = or disjoint i8 %i.ee, 48
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -1 ; 2 uses
  store ptr %i.eh, ptr %i.d, align 8, !tbaa !39
  store i8 %i.ef, ptr %i.eh, align 1, !tbaa !12
  %.not11.i.i53 = icmp ult i128 %.0913.i.i52, 10
  br i1 %.not11.i.i53, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i, label %.preheader.i.i51, !llvm.loop !62

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i: ; preds = %.preheader.i.i51
  %.val.i.i54 = load ptr, ptr %i.d, align 8, !tbaa !39 ; 3 uses
  %.val12.i.i55 = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.ei = ptrtoint ptr %.val12.i.i55 to i64       ; 2 uses
  %i.ej = ptrtoint ptr %.val.i.i54 to i64         ; 2 uses
  %i.ek = load i8, ptr %.val.i.i54, align 1, !tbaa !12
  %i.el = getelementptr inbounds i8, ptr %.val.i.i54, i64 -1 ; 2 uses
  store ptr %i.el, ptr %i.d, align 8, !tbaa !39
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !12
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store i8 46, ptr %i.en, align 1, !tbaa !12
  %i.eo = xor i64 %i.ej, -1
  %i.ep = add i64 %i.ei, %i.eo                    ; 4 uses
  %i.eq = trunc i64 %i.ep to i32
  store i32 %i.eq, ptr %4, align 4, !tbaa !3
  %i.er = icmp ult i64 %2, %i.ep
  br i1 %i.er, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i
  %.0.i132.i60 = phi i64 [ -1, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i ], [ %i.ep, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i ]
  %i.es = sub nuw i64 %.0.i132.i60, %2
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.es, i1 noundef zeroext false, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.y:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i
  %i.et = sub nuw nsw i64 %2, %i.ep               ; 4 uses
  %.not60105.i56 = icmp eq i64 %i.et, 0
  br i1 %.not60105.i56, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i57.preheader

.lr.ph108.i57.preheader:                          ; preds = %bb.y
  %i.eu = add i64 %2, %i.ej
  %i.ev = sub i64 %i.eu, %i.ei
  %xtraiter154 = and i64 %i.et, 3                 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.lr.ph108.i57.prol.loopexit, label %.lr.ph108.i57.prol

.lr.ph108.i57.prol:                               ; preds = %.lr.ph108.i57.preheader, %.lr.ph108.i57.prol
  %.042106.i58.prol = phi i64 [ %i.ew, %.lr.ph108.i57.prol ], [ %i.et, %.lr.ph108.i57.preheader ]
  %prol.iter156 = phi i64 [ %prol.iter156.next, %.lr.ph108.i57.prol ], [ 0, %.lr.ph108.i57.preheader ]
  %i.ew = add i64 %.042106.i58.prol, -1           ; 2 uses
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  store ptr %i.ey, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.ex, align 1, !tbaa !12
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %.lr.ph108.i57.prol.loopexit, label %.lr.ph108.i57.prol, !llvm.loop !181

.lr.ph108.i57.prol.loopexit:                      ; preds = %.lr.ph108.i57.prol, %.lr.ph108.i57.preheader
  %.042106.i58.unr = phi i64 [ %i.et, %.lr.ph108.i57.preheader ], [ %i.ew, %.lr.ph108.i57.prol ]
  %i.ez = icmp ult i64 %i.ev, 3
  br i1 %i.ez, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i57

.lr.ph108.i57:                                    ; preds = %.lr.ph108.i57.prol.loopexit, %.lr.ph108.i57
  %.042106.i58 = phi i64 [ %i.fg, %.lr.ph108.i57 ], [ %.042106.i58.unr, %.lr.ph108.i57.prol.loopexit ]
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store ptr %i.fb, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.fa, align 1, !tbaa !12
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store ptr %i.fd, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.fc, align 1, !tbaa !12
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store ptr %i.ff, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.fe, align 1, !tbaa !12
  %i.fg = add i64 %.042106.i58, -4                ; 2 uses
  %i.fh = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store ptr %i.fi, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.fh, align 1, !tbaa !12
  %.not60.i59.3 = icmp eq i64 %i.fg, 0
  br i1 %.not60.i59.3, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i57, !llvm.loop !182

bb.z:                                             ; preds = %bb.g
  %i.fj = zext i64 %0 to i128                     ; 3 uses
  %i.fk = icmp samesign ult i32 %1, -124
  br i1 %i.fk, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = sub nsw i32 0, %1
  %i.fm = zext nneg i32 %i.fl to i128             ; 7 uses
  %notmask.i10 = shl nsw i128 -1, %i.fm
  %i.fn = xor i128 %notmask.i10, -1               ; 8 uses
  %i.fo = lshr i128 %i.fj, %i.fm                  ; 2 uses
  %.not.i61.i11 = icmp eq i128 %i.fo, 0
  br i1 %.not.i61.i11, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i: ; preds = %bb.aa
  %i.fp = and i128 %i.fn, %i.fj
  br label %bb.ab

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i: ; preds = %bb.aa
  %i.fq = trunc nuw nsw i128 %i.fo to i8
  %i.fr = or disjoint i8 %i.fq, 48
  %i.fs = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -1 ; 2 uses
  store ptr %i.ft, ptr %i.d, align 8, !tbaa !39
  store i8 %i.fr, ptr %i.ft, align 1, !tbaa !12
  %.val.i65.i15 = load ptr, ptr %i.d, align 8, !tbaa !39 ; 4 uses
  %.val12.i66.i16 = load ptr, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.fu = load i8, ptr %.val.i65.i15, align 1, !tbaa !12
  %i.fv = getelementptr inbounds i8, ptr %.val.i65.i15, i64 -1 ; 2 uses
  store ptr %i.fv, ptr %i.d, align 8, !tbaa !39
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !12
  %i.fw = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  store i8 46, ptr %i.fx, align 1, !tbaa !12
  %i.fy = and i128 %i.fn, %i.fj                   ; 3 uses
  %i.fz = icmp eq ptr %.val12.i66.i16, %.val.i65.i15
  br i1 %i.fz, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i
  %i.ga = phi i128 [ %i.fp, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i ], [ %i.fy, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i ] ; 2 uses
  store i32 0, ptr %4, align 4, !tbaa !3
  %.not.i44 = icmp eq i128 %i.ga, 0
  br i1 %.not.i44, label %bb.ac, label %.preheader.i45

.preheader.i45:                                   ; preds = %bb.ab, %.preheader.i45
  %.094101.i46 = phi i128 [ %i.gb, %.preheader.i45 ], [ %i.ga, %bb.ab ]
  %7 = phi i32 [ %8, %.preheader.i45 ], [ 0, %bb.ab ]
  %i.gb = mul nuw i128 %.094101.i46, 10           ; 3 uses
  %8 = add nsw i32 %7, -1                         ; 2 uses
  %.not57.i47 = icmp ugt i128 %i.gb, %i.fn
  br i1 %.not57.i47, label %.loopexit.i48, label %.preheader.i45, !llvm.loop !183

.loopexit.i48:                                    ; preds = %.preheader.i45
  store i32 %8, ptr %4, align 4, !tbaa !3
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i48, %bb.ab
  %.195.i49 = phi i128 [ 0, %bb.ab ], [ %i.gb, %.loopexit.i48 ] ; 2 uses
  %i.gc = lshr i128 %.195.i49, %i.fm
  %i.gd = trunc i128 %i.gc to i8
  %i.ge = add i8 %i.gd, 48
  %i.gf = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -1 ; 2 uses
  store ptr %i.gg, ptr %i.d, align 8, !tbaa !39
  store i8 %i.ge, ptr %i.gg, align 1, !tbaa !12
  %i.gh = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store ptr %i.gi, ptr %i.c, align 8, !tbaa !36
  store i8 46, ptr %i.gh, align 1, !tbaa !12
  %i.gj = and i128 %.195.i49, %i.fn
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i
  %i.gk = ptrtoint ptr %.val.i65.i15 to i64
  %i.gl = ptrtoint ptr %.val12.i66.i16 to i64
  %i.gm = xor i64 %i.gk, -1
  %i.gn = add i64 %i.gl, %i.gm                    ; 4 uses
  %i.go = trunc i64 %i.gn to i32
  store i32 %i.go, ptr %4, align 4, !tbaa !3
  %i.gp = icmp ult i64 %2, %i.gn
  br i1 %i.gp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gq = sub nuw i64 %i.gn, %2
  %i.gr = icmp ne i128 %i.fy, 0
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.gq, i1 noundef zeroext %i.gr, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.af:                                            ; preds = %bb.ad
  %i.gs = sub nuw nsw i64 %2, %i.gn
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.296.i17 = phi i128 [ %i.gj, %bb.ac ], [ %i.fy, %bb.af ] ; 3 uses
  %.0.i18 = phi i64 [ %2, %bb.ac ], [ %i.gs, %bb.af ] ; 5 uses
  %.not58102.i19 = icmp eq i64 %.0.i18, 0
  br i1 %.not58102.i19, label %._crit_edge.i24, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %bb.ag
  %xtraiter150 = and i64 %.0.i18, 1
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.lr.ph.i20.prol.loopexit, label %.lr.ph.i20.prol

.lr.ph.i20.prol:                                  ; preds = %.lr.ph.i20.preheader
  %i.gt = mul nuw i128 %.296.i17, 10              ; 2 uses
  %i.gu = lshr i128 %i.gt, %i.fm
  %i.gv = trunc i128 %i.gu to i8
  %i.gw = and i128 %i.gt, %i.fn                   ; 2 uses
  %i.gx = add i8 %i.gv, 48
  %i.gy = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  store ptr %i.gz, ptr %i.c, align 8, !tbaa !36
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !12
  %i.ha = add nsw i64 %.0.i18, -1
  br label %.lr.ph.i20.prol.loopexit

.lr.ph.i20.prol.loopexit:                         ; preds = %.lr.ph.i20.prol, %.lr.ph.i20.preheader
  %.lcssa141.unr = phi i128 [ poison, %.lr.ph.i20.preheader ], [ %i.gw, %.lr.ph.i20.prol ]
  %.1104.i21.unr = phi i64 [ %.0.i18, %.lr.ph.i20.preheader ], [ %i.ha, %.lr.ph.i20.prol ]
  %.3103.i22.unr = phi i128 [ %.296.i17, %.lr.ph.i20.preheader ], [ %i.gw, %.lr.ph.i20.prol ]
  %i.hb = icmp eq i64 %.0.i18, 1
  br i1 %i.hb, label %._crit_edge.i24, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20
  %.1104.i21 = phi i64 [ %i.hq, %.lr.ph.i20 ], [ %.1104.i21.unr, %.lr.ph.i20.prol.loopexit ]
  %.3103.i22 = phi i128 [ %i.hm, %.lr.ph.i20 ], [ %.3103.i22.unr, %.lr.ph.i20.prol.loopexit ]
  %i.hc = mul nuw i128 %.3103.i22, 10             ; 2 uses
  %i.hd = lshr i128 %i.hc, %i.fm
  %i.he = trunc i128 %i.hd to i8
  %i.hf = and i128 %i.hc, %i.fn
  %i.hg = add i8 %i.he, 48
  %i.hh = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  store ptr %i.hi, ptr %i.c, align 8, !tbaa !36
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !12
  %i.hj = mul nuw i128 %i.hf, 10                  ; 2 uses
  %i.hk = lshr i128 %i.hj, %i.fm
  %i.hl = trunc i128 %i.hk to i8
  %i.hm = and i128 %i.hj, %i.fn                   ; 2 uses
  %i.hn = add i8 %i.hl, 48
  %i.ho = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  store ptr %i.hp, ptr %i.c, align 8, !tbaa !36
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !12
  %i.hq = add nsw i64 %.1104.i21, -2              ; 2 uses
  %.not58.i23.1 = icmp eq i64 %i.hq, 0
  br i1 %.not58.i23.1, label %._crit_edge.i24, label %.lr.ph.i20, !llvm.loop !184

._crit_edge.i24:                                  ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20, %bb.ag
  %.3.lcssa.i25 = phi i128 [ %.296.i17, %bb.ag ], [ %.lcssa141.unr, %.lr.ph.i20.prol.loopexit ], [ %i.hm, %.lr.ph.i20 ]
  %i.hr = mul nuw i128 %.3.lcssa.i25, 10          ; 2 uses
  %i.hs = lshr i128 %i.hr, %i.fm
  %i.ht = trunc i128 %i.hs to i8                  ; 2 uses
  %i.hu = and i128 %i.hr, %i.fn
  %i.hv = icmp sgt i8 %i.ht, 5
  br i1 %i.hv, label %._crit_edge._crit_edge.i42, label %bb.ah

._crit_edge._crit_edge.i42:                       ; preds = %._crit_edge.i24
  %.val.i69.pre.i43 = load ptr, ptr %i.c, align 8, !tbaa !36
  br label %bb.al

bb.ah:                                            ; preds = %._crit_edge.i24
  %i.hw = icmp eq i8 %i.ht, 5
  br i1 %i.hw, label %bb.ai, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.ai:                                            ; preds = %bb.ah
  %.not59.i27 = icmp eq i128 %i.hu, 0
  %.val.i69.pre114.i28 = load ptr, ptr %i.c, align 8, !tbaa !36 ; 4 uses
  br i1 %.not59.i27, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.hx = getelementptr inbounds i8, ptr %.val.i69.pre114.i28, i64 -1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !12  ; 2 uses
  %i.hz = icmp eq i8 %i.hy, 46
  br i1 %i.hz, label %bb.ak, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41

bb.ak:                                            ; preds = %bb.aj
  %i.ia = getelementptr inbounds i8, ptr %.val.i69.pre114.i28, i64 -2
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !12
  br label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41: ; preds = %bb.ak, %bb.aj
  %i.ic = phi i8 [ %i.ib, %bb.ak ], [ %i.hy, %bb.aj ]
  %i.id = and i8 %i.ic, -127
  %i.ie = icmp eq i8 %i.id, 1
  br i1 %i.ie, label %bb.al, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.al:                                            ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41, %bb.ai, %._crit_edge._crit_edge.i42
  %.val.i69.i29 = phi ptr [ %.val.i69.pre.i43, %._crit_edge._crit_edge.i42 ], [ %.val.i69.pre114.i28, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41 ], [ %.val.i69.pre114.i28, %bb.ai ] ; 2 uses
  %.024.i.i30 = getelementptr inbounds i8, ptr %.val.i69.i29, i64 -1 ; 3 uses
  %i.if = load ptr, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %.not25.i.i31 = icmp ult ptr %.024.i.i30, %i.if
  br i1 %.not25.i.i31, label %._crit_edge.i.i36, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %bb.al, %bb.an
  %i.ig = phi ptr [ %i.ii, %bb.an ], [ %i.if, %bb.al ]
  %.026.i.i33 = phi ptr [ %.0.i70.i34, %bb.an ], [ %.024.i.i30, %bb.al ] ; 5 uses
  %i.ih = load i8, ptr %.026.i.i33, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.ih, label %.critedge.i.i40 [
    i8 57, label %bb.am
    i8 46, label %bb.an
  ]

bb.am:                                            ; preds = %.lr.ph.i.i32
  store i8 48, ptr %.026.i.i33, align 1, !tbaa !12
  %.pre.i.i39 = load ptr, ptr %i.d, align 8, !tbaa !39
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i.i32
  %i.ii = phi ptr [ %i.ig, %.lr.ph.i.i32 ], [ %.pre.i.i39, %bb.am ] ; 2 uses
  %.0.i70.i34 = getelementptr inbounds i8, ptr %.026.i.i33, i64 -1 ; 3 uses
  %.not.i71.i35 = icmp ult ptr %.0.i70.i34, %i.ii
  br i1 %.not.i71.i35, label %._crit_edge.i.i36, label %.lr.ph.i.i32, !llvm.loop !60

._crit_edge.i.i36:                                ; preds = %bb.an, %bb.al
  %.val.pn.lcssa.i.i37 = phi ptr [ %.val.i69.i29, %bb.al ], [ %.026.i.i33, %bb.an ] ; 3 uses
  %.0.lcssa.i.i38 = phi ptr [ %.024.i.i30, %bb.al ], [ %.0.i70.i34, %bb.an ] ; 2 uses
  store i8 49, ptr %.0.lcssa.i.i38, align 1, !tbaa !12
  store ptr %.0.lcssa.i.i38, ptr %i.d, align 8, !tbaa !39
  %i.ij = getelementptr inbounds nuw i8, ptr %.val.pn.lcssa.i.i37, i64 1 ; 2 uses
  %i.ik = load i8, ptr %.val.pn.lcssa.i.i37, align 1, !tbaa !12
  %i.il = load i8, ptr %i.ij, align 1, !tbaa !12
  store i8 %i.il, ptr %.val.pn.lcssa.i.i37, align 1, !tbaa !12
  store i8 %i.ik, ptr %i.ij, align 1, !tbaa !12
  %i.im = load i32, ptr %4, align 4, !tbaa !3
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %4, align 4, !tbaa !3
  %i.io = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -1
  store ptr %i.ip, ptr %i.c, align 8, !tbaa !36
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

.critedge.i.i40:                                  ; preds = %.lr.ph.i.i32
  %i.iq = add i8 %i.ih, 1
  store i8 %i.iq, ptr %.026.i.i33, align 1, !tbaa !12
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit: ; preds = %.lr.ph108.i.prol.loopexit, %.lr.ph108.i, %.lr.ph108.i57.prol.loopexit, %.lr.ph108.i57, %bb.f, %.critedge.i.i, %._crit_edge.i.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i, %bb.o, %bb.l, %bb.e, %.critedge.i.i40, %._crit_edge.i.i36, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41, %bb.ah, %bb.ae, %bb.z, %bb.y, %bb.x, %bb.v, %bb.a
  %.0 = phi i1 [ true, %.lr.ph108.i57.prol.loopexit ], [ false, %bb.a ], [ false, %bb.z ], [ false, %bb.v ], [ true, %bb.x ], [ true, %bb.ae ], [ true, %bb.ah ], [ true, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41 ], [ true, %._crit_edge.i.i36 ], [ true, %.critedge.i.i40 ], [ true, %bb.y ], [ true, %bb.e ], [ true, %bb.l ], [ true, %bb.o ], [ true, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i ], [ true, %._crit_edge.i.i ], [ true, %.critedge.i.i ], [ true, %bb.f ], [ true, %.lr.ph108.i57 ], [ true, %.lr.ph108.i ], [ true, %.lr.ph108.i.prol.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_118FallbackToSnprintfIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.e, i32 -1)
end_hunk_2
