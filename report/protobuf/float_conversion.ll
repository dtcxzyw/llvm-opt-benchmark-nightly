Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/float_conversion?download=true
inline.NumInlined: 622
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  store i8 48, ptr %i.a, align 16, !tbaa !25
  %i.ja = select i1 %i.hd, i8 88, i8 120
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ja, ptr %i.iz, align 1, !tbaa !25
  %i.jc = zext nneg i8 %.361.i to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !25
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.je, ptr %i.jb, align 2, !tbaa !25
  br i1 %i.hi, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112FormatARoundImEEvbRKNS2_11FormatStateEPhPT_Pi.exit.i
  %.not32.i = icmp eq i32 %narrow, 0
  br i1 %.not32.i, label %.thread.i, label %bb.ba

bb.az:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112FormatARoundImEEvbRKNS2_11FormatStateEPhPT_Pi.exit.i
  %i.jg = icmp eq i64 %.3.i, 0
  br i1 %i.jg, label %.thread.i, label %bb.ba

.thread.i:                                        ; preds = %bb.az, %bb.ay
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !24
  %i.jj = and i8 %i.ji, 8
  %.not63.i = icmp eq i8 %i.jj, 0
  br i1 %.not63.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.thread.i, %bb.az, %bb.ay
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 46, ptr %i.jf, align 1, !tbaa !25
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread.i
  %.030.i = phi ptr [ %i.jk, %bb.ba ], [ %i.jf, %.thread.i ] ; 2 uses
  %.not69.i = icmp eq i64 %.3.i, 0
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bb, %.lr.ph.i
  %.02972.i = phi i64 [ %i.jq, %.lr.ph.i ], [ 0, %bb.bb ]
  %.171.i = phi ptr [ %i.jo, %.lr.ph.i ], [ %.030.i, %bb.bb ] ; 2 uses
  %.05270.i = phi i64 [ %i.jp, %.lr.ph.i ], [ %.3.i, %bb.bb ] ; 2 uses
  %i.jl = lshr i64 %.05270.i, 60
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !25
  %i.jo = getelementptr inbounds nuw i8, ptr %.171.i, i64 1 ; 2 uses
  store i8 %i.jn, ptr %.171.i, align 1, !tbaa !25
  %i.jp = shl i64 %.05270.i, 4                    ; 2 uses
  %i.jq = add nuw nsw i64 %.02972.i, 1            ; 2 uses
  %.not.i77 = icmp eq i64 %i.jp, 0
  br i1 %.not.i77, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !93

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.bb
  %.1.lcssa.i = phi ptr [ %.030.i, %bb.bb ], [ %i.jo, %.lr.ph.i ]
  %.029.lcssa.i = phi i64 [ 0, %bb.bb ], [ %i.jq, %.lr.ph.i ]
  %i.jr = sub i64 %spec.select, %.029.lcssa.i
  %.0.i78 = select i1 %i.hi, i64 %i.jr, i64 0
  %i.js = ptrtoint ptr %.1.lcssa.i to i64
  %i.jt = ptrtoint ptr %i.a to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.jv = select i1 %i.hd, i8 80, i8 112
  store i8 %i.jv, ptr %i.b, align 16, !tbaa !25
  %i.jw = icmp sgt i32 %.155.i, -1
  %i.jx = select i1 %i.jw, i8 43, i8 45
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !25
  %i.jz = call i32 @llvm.abs.i32(i32 %.155.i, i1 true)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.kb = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.jz, ptr noundef nonnull %i.ka) ; 0 uses
  %i.kc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %5, i64 %i.ju, ptr nonnull %i.a, i64 noundef 2, i64 noundef %.0.i78, i64 %i.kc, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bd

bb.bc:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit, %.loopexit, %bb.at
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !47 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !46
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.ke to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val73 = load i8, ptr %i.kk, align 1
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val74 = load i32, ptr %i.kl, align 4, !tbaa !27
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117WriteBufferToSinkEcSt17basic_string_viewIcSt11char_traitsIcEERKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %.06493, i64 %i.kj, ptr %i.ke, i8 %.val73, i32 %.val74, ptr noundef %2)
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
  %i.b = load i64, ptr %0, align 16, !tbaa !104   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 16, !tbaa !32  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 41 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 49 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 31 uses
  store ptr %i.e, ptr %i.g, align 8, !tbaa !47
  %i.h = icmp sgt i32 %i.d, -1                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not60.i = icmp eq i32 %i.d, 0
  br i1 %.not60.i, label %bb.d, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplImeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i, label %.preheader.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.thread.i: ; preds = %bb.d
  store i32 -1, ptr %3, align 4, !tbaa !19
  br label %bb.e

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.0913.i.i = phi i64 [ %i.n, %.preheader.i.i ], [ %i.b, %bb.d ] ; 3 uses
  %i.i = urem i64 %.0913.i.i, 10
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = or disjoint i8 %i.j, 48
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 2 uses
  store ptr %i.m, ptr %i.g, align 8, !tbaa !47
  store i8 %i.k, ptr %i.m, align 1, !tbaa !25
  %i.n = udiv i64 %.0913.i.i, 10
  %.not11.i.i = icmp ult i64 %.0913.i.i, 10
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i, label %.preheader.i.i, !llvm.loop !3

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i: ; preds = %.preheader.i.i
  %.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !47 ; 3 uses
  %.val12.i.i = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.o = ptrtoint ptr %.val12.i.i to i64          ; 2 uses
  %i.p = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.q = load i8, ptr %.val.i.i, align 1, !tbaa !25
  %i.r = getelementptr inbounds i8, ptr %.val.i.i, i64 -1 ; 2 uses
  store ptr %i.r, ptr %i.g, align 8, !tbaa !47
  store i8 %i.q, ptr %i.r, align 1, !tbaa !25
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 46, ptr %i.t, align 1, !tbaa !25
  %i.u = xor i64 %i.p, -1
  %i.v = add i64 %i.o, %i.u                       ; 4 uses
  %i.w = trunc i64 %i.v to i32
  store i32 %i.w, ptr %3, align 4, !tbaa !19
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
  %i.ac = add nsw i64 %.042107.i.prol, -1         ; 2 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !46
  store i8 48, ptr %i.ad, align 1, !tbaa !25
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph109.i.prol.loopexit, label %.lr.ph109.i.prol, !llvm.loop !96

.lr.ph109.i.prol.loopexit:                        ; preds = %.lr.ph109.i.prol, %.lr.ph109.i.preheader
  %.042107.i.unr = phi i64 [ %i.z, %.lr.ph109.i.preheader ], [ %i.ac, %.lr.ph109.i.prol ]
  %i.af = icmp ult i64 %i.ab, 3
  br i1 %i.af, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph109.i

.lr.ph109.i:                                      ; preds = %.lr.ph109.i.prol.loopexit, %.lr.ph109.i
  %.042107.i = phi i64 [ %i.am, %.lr.ph109.i ], [ %.042107.i.unr, %.lr.ph109.i.prol.loopexit ]
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !46
  store i8 48, ptr %i.ag, align 1, !tbaa !25
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !46
  store i8 48, ptr %i.ai, align 1, !tbaa !25
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.f, align 8, !tbaa !46
  store i8 48, ptr %i.ak, align 1, !tbaa !25
  %i.am = add nsw i64 %.042107.i, -4              ; 2 uses
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !46
  store i8 48, ptr %i.an, align 1, !tbaa !25
  %.not61.i.3 = icmp eq i64 %i.am, 0
  br i1 %.not61.i.3, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph109.i, !llvm.loop !97

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
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -1 ; 2 uses
  store ptr %i.az, ptr %i.g, align 8, !tbaa !47
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !25
  %i.ba = udiv i64 %.0913.i64.i, 10
  %.not11.i65.i = icmp ult i64 %.0913.i64.i, 10
  br i1 %.not11.i65.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.i, label %.preheader.i63.i, !llvm.loop !3

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.i: ; preds = %.preheader.i63.i
  %.val.i66.i = load ptr, ptr %i.g, align 8, !tbaa !47 ; 4 uses
  %.val12.i67.i = load ptr, ptr %i.f, align 8, !tbaa !46 ; 2 uses
  %i.bb = load i8, ptr %.val.i66.i, align 1, !tbaa !25
  %i.bc = getelementptr inbounds i8, ptr %.val.i66.i, i64 -1 ; 2 uses
  store ptr %i.bc, ptr %i.g, align 8, !tbaa !47
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !25
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 46, ptr %i.be, align 1, !tbaa !25
  %i.bf = and i64 %i.b, %i.as                     ; 3 uses
  %i.bg = icmp eq ptr %.val12.i67.i, %.val.i66.i
  br i1 %i.bg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.thread.i
  %i.bh = phi i64 [ %i.au, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.thread.i ], [ %i.bf, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.i ] ; 2 uses
  store i32 0, ptr %3, align 4, !tbaa !19
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.095102.i = phi i64 [ %i.bj, %.preheader.i ], [ %i.bh, %bb.i ]
  %i.bi = phi i32 [ %i.bk, %.preheader.i ], [ 0, %bb.i ]
  %i.bj = mul nuw i64 %.095102.i, 10              ; 3 uses
  %i.bk = add nsw i32 %i.bi, -1                   ; 2 uses
  %.not57.i = icmp ugt i64 %i.bj, %i.as
  br i1 %.not57.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !98

.loopexit.i:                                      ; preds = %.preheader.i
  store i32 %i.bk, ptr %3, align 4, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %bb.i
  %.196.i = phi i64 [ 0, %bb.i ], [ %i.bj, %.loopexit.i ] ; 2 uses
  %i.bl = lshr i64 %.196.i, %i.ar
  %i.bm = trunc i64 %i.bl to i8
  %i.bn = add i8 %i.bm, 48
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -1 ; 2 uses
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !47
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !25
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.f, align 8, !tbaa !46
  store i8 46, ptr %i.bq, align 1, !tbaa !25
  %i.bs = and i64 %.196.i, %i.as
  br label %bb.n

bb.k:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit69.i
  %i.bt = ptrtoint ptr %.val.i66.i to i64
  %i.bu = ptrtoint ptr %.val12.i67.i to i64
  %i.bv = xor i64 %i.bt, -1
  %i.bw = add i64 %i.bu, %i.bv                    ; 4 uses
  %i.bx = trunc i64 %i.bw to i32
  store i32 %i.bx, ptr %3, align 4, !tbaa !19
  %i.by = icmp ult i64 %1, %i.bw
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = sub nuw i64 %i.bw, %1
  %i.ca = icmp ne i64 %i.bf, 0
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.bz, i1 noundef zeroext %i.ca, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.m:                                             ; preds = %bb.k
  %i.cb = sub nuw nsw i64 %1, %i.bw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.297.i = phi i64 [ %i.bs, %bb.j ], [ %i.bf, %bb.m ] ; 3 uses
  %.0.i = phi i64 [ %1, %bb.j ], [ %i.cb, %bb.m ] ; 5 uses
  %.not58103.i = icmp eq i64 %.0.i, 0
  br i1 %.not58103.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.cc = mul nuw i64 %.297.i, 10                 ; 2 uses
  %i.cd = lshr i64 %i.cc, %i.ar
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = and i64 %i.cc, %i.as                    ; 2 uses
  %i.cg = add i8 %i.ce, 48
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.ci, ptr %i.f, align 8, !tbaa !46
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !25
  %i.cj = add nsw i64 %.0.i, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa124.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.cf, %.lr.ph.i.prol ]
  %.1105.i.unr = phi i64 [ %.0.i, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %.3104.i.unr = phi i64 [ %.297.i, %.lr.ph.i.preheader ], [ %i.cf, %.lr.ph.i.prol ]
  %i.ck = icmp eq i64 %.0.i, 1
  br i1 %i.ck, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.1105.i = phi i64 [ %i.cz, %.lr.ph.i ], [ %.1105.i.unr, %.lr.ph.i.prol.loopexit ]
  %.3104.i = phi i64 [ %i.cv, %.lr.ph.i ], [ %.3104.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cl = mul nuw i64 %.3104.i, 10                ; 2 uses
  %i.cm = lshr i64 %i.cl, %i.ar
  %i.cn = trunc i64 %i.cm to i8
  %i.co = and i64 %i.cl, %i.as
  %i.cp = add i8 %i.cn, 48
  %i.cq = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store ptr %i.cr, ptr %i.f, align 8, !tbaa !46
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !25
  %i.cs = mul nuw i64 %i.co, 10                   ; 2 uses
  %i.ct = lshr i64 %i.cs, %i.ar
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = and i64 %i.cs, %i.as                    ; 2 uses
  %i.cw = add i8 %i.cu, 48
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store ptr %i.cy, ptr %i.f, align 8, !tbaa !46
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !25
  %i.cz = add nsw i64 %.1105.i, -2                ; 2 uses
  %.not58.i.1 = icmp eq i64 %i.cz, 0
  br i1 %.not58.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !99

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n
  %.3.lcssa.i = phi i64 [ %.297.i, %bb.n ], [ %.lcssa124.unr, %.lr.ph.i.prol.loopexit ], [ %i.cv, %.lr.ph.i ]
  %i.da = mul nuw i64 %.3.lcssa.i, 10             ; 2 uses
  %i.db = lshr i64 %i.da, %i.ar
  %i.dc = trunc i64 %i.db to i8                   ; 2 uses
  %i.dd = and i64 %i.da, %i.as
  %i.de = icmp sgt i8 %i.dc, 5
  br i1 %i.de, label %._crit_edge._crit_edge.i, label %bb.o

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.val.i70.pre.i = load ptr, ptr %i.f, align 8, !tbaa !46
  br label %bb.s

bb.o:                                             ; preds = %._crit_edge.i
  %i.df = icmp eq i8 %i.dc, 5
  br i1 %i.df, label %bb.p, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.p:                                             ; preds = %bb.o
  %.not59.i = icmp eq i64 %i.dd, 0
  %.val.i70.pre115.i = load ptr, ptr %i.f, align 8, !tbaa !46 ; 4 uses
  br i1 %.not59.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds i8, ptr %.val.i70.pre115.i, i64 -1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !25  ; 2 uses
  %i.di = icmp eq i8 %i.dh, 46
  br i1 %i.di, label %bb.r, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dj = getelementptr inbounds i8, ptr %.val.i70.pre115.i, i64 -2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !25
  br label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i: ; preds = %bb.r, %bb.q
  %i.dl = phi i8 [ %i.dk, %bb.r ], [ %i.dh, %bb.q ]
  %i.dm = and i8 %i.dl, -127
  %i.dn = icmp eq i8 %i.dm, 1
  br i1 %i.dn, label %bb.s, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.s:                                             ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i, %bb.p, %._crit_edge._crit_edge.i
  %.val.i70.i = phi ptr [ %.val.i70.pre.i, %._crit_edge._crit_edge.i ], [ %.val.i70.pre115.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i ], [ %.val.i70.pre115.i, %bb.p ] ; 2 uses
  %.024.i.i = getelementptr inbounds i8, ptr %.val.i70.i, i64 -1 ; 3 uses
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !47  ; 2 uses
  %.not25.i.i = icmp ult ptr %.024.i.i, %i.do
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.u
  %i.dp = phi ptr [ %i.dr, %bb.u ], [ %i.do, %bb.s ]
  %.026.i.i = phi ptr [ %.0.i71.i, %bb.u ], [ %.024.i.i, %bb.s ] ; 5 uses
  %i.dq = load i8, ptr %.026.i.i, align 1, !tbaa !25 ; 2 uses
  switch i8 %i.dq, label %.critedge.i.i [
    i8 57, label %bb.t
    i8 46, label %bb.u
  ]

bb.t:                                             ; preds = %.lr.ph.i.i
  store i8 48, ptr %.026.i.i, align 1, !tbaa !25
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i
  %i.dr = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %.pre.i.i, %bb.t ] ; 2 uses
  %.0.i71.i = getelementptr inbounds i8, ptr %.026.i.i, i64 -1 ; 3 uses
  %.not.i72.i = icmp ult ptr %.0.i71.i, %i.dr
  br i1 %.not.i72.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %bb.u, %bb.s
  %.val.pn.lcssa.i.i = phi ptr [ %.val.i70.i, %bb.s ], [ %.026.i.i, %bb.u ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.024.i.i, %bb.s ], [ %.0.i71.i, %bb.u ] ; 2 uses
  store i8 49, ptr %.0.lcssa.i.i, align 1, !tbaa !25
  store ptr %.0.lcssa.i.i, ptr %i.g, align 8, !tbaa !47
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.pn.lcssa.i.i, i64 1 ; 2 uses
  %i.dt = load i8, ptr %.val.pn.lcssa.i.i, align 1, !tbaa !25
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !25
  store i8 %i.du, ptr %.val.pn.lcssa.i.i, align 1, !tbaa !25
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !25
  %i.dv = load i32, ptr %3, align 4, !tbaa !19
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %3, align 4, !tbaa !19
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -1
  store ptr %i.dy, ptr %i.f, align 8, !tbaa !46
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dz = add i8 %i.dq, 1
  store i8 %i.dz, ptr %.026.i.i, align 1, !tbaa !25
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplImeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit: ; preds = %bb.g, %bb.c
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !105
  %i.ec = zext i64 %i.eb to i128
  %i.ed = shl nuw i128 %i.ec, 64
  %i.ee = zext i64 %i.b to i128
  %i.ef = or disjoint i128 %i.ed, %i.ee           ; 4 uses
  br i1 %i.h, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplImeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit
  %i.eg = icmp samesign ugt i32 %i.d, 64
  br i1 %i.eg, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = zext nneg i32 %i.d to i128
  %i.ei = shl i128 %i.ef, %i.eh                   ; 2 uses
  %.not.i.i31 = icmp eq i128 %i.ei, 0
  br i1 %.not.i.i31, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i, label %.preheader.i.i32

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i: ; preds = %bb.w
  store i32 -1, ptr %3, align 4, !tbaa !19
  br label %bb.x

.preheader.i.i32:                                 ; preds = %bb.w, %.preheader.i.i32
  %.0913.i.i33 = phi i128 [ %i.ej, %.preheader.i.i32 ], [ %i.ei, %bb.w ] ; 2 uses
  %.0913.i.i33.frozen = freeze i128 %.0913.i.i33  ; 2 uses
  %i.ej = udiv i128 %.0913.i.i33.frozen, 10       ; 2 uses
  %i.ek = mul i128 %i.ej, 10
  %.decomposed = sub i128 %.0913.i.i33.frozen, %i.ek
  %i.el = trunc nuw nsw i128 %.decomposed to i8
  %i.em = or disjoint i8 %i.el, 48
  %i.en = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -1 ; 2 uses
  store ptr %i.eo, ptr %i.g, align 8, !tbaa !47
  store i8 %i.em, ptr %i.eo, align 1, !tbaa !25
  %.not11.i.i34 = icmp ult i128 %.0913.i.i33, 10
  br i1 %.not11.i.i34, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i, label %.preheader.i.i32, !llvm.loop !5

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i: ; preds = %.preheader.i.i32
  %.val.i.i35 = load ptr, ptr %i.g, align 8, !tbaa !47 ; 3 uses
  %.val12.i.i36 = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.ep = ptrtoint ptr %.val12.i.i36 to i64       ; 2 uses
  %i.eq = ptrtoint ptr %.val.i.i35 to i64         ; 2 uses
  %i.er = load i8, ptr %.val.i.i35, align 1, !tbaa !25
  %i.es = getelementptr inbounds i8, ptr %.val.i.i35, i64 -1 ; 2 uses
  store ptr %i.es, ptr %i.g, align 8, !tbaa !47
  store i8 %i.er, ptr %i.es, align 1, !tbaa !25
  %i.et = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store i8 46, ptr %i.eu, align 1, !tbaa !25
  %i.ev = xor i64 %i.eq, -1
  %i.ew = add i64 %i.ep, %i.ev                    ; 4 uses
  %i.ex = trunc i64 %i.ew to i32
  store i32 %i.ex, ptr %3, align 4, !tbaa !19
  %i.ey = icmp ult i64 %1, %i.ew
  br i1 %i.ey, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i
  %.0.i132.i = phi i64 [ -1, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i ], [ %i.ew, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i ]
  %i.ez = sub nuw i64 %.0.i132.i, %1
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.ez, i1 noundef zeroext false, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.y:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i
  %i.fa = sub nuw nsw i64 %1, %i.ew               ; 4 uses
  %.not60105.i = icmp eq i64 %i.fa, 0
  br i1 %.not60105.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i.preheader

.lr.ph108.i.preheader:                            ; preds = %bb.y
  %i.fb = add i64 %1, %i.eq
  %i.fc = sub i64 %i.fb, %i.ep
  %xtraiter129 = and i64 %i.fa, 3                 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph108.i.prol.loopexit, label %.lr.ph108.i.prol

.lr.ph108.i.prol:                                 ; preds = %.lr.ph108.i.preheader, %.lr.ph108.i.prol
  %.042106.i.prol = phi i64 [ %i.fd, %.lr.ph108.i.prol ], [ %i.fa, %.lr.ph108.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph108.i.prol ], [ 0, %.lr.ph108.i.preheader ]
  %i.fd = add nsw i64 %.042106.i.prol, -1         ; 2 uses
  %i.fe = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store ptr %i.ff, ptr %i.f, align 8, !tbaa !46
  store i8 48, ptr %i.fe, align 1, !tbaa !25
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %.lr.ph108.i.prol.loopexit, label %.lr.ph108.i.prol, !llvm.loop !100

.lr.ph108.i.prol.loopexit:                        ; preds = %.lr.ph108.i.prol, %.lr.ph108.i.preheader
  %.042106.i.unr = phi i64 [ %i.fa, %.lr.ph108.i.preheader ], [ %i.fd, %.lr.ph108.i.prol ]
  %i.fg = icmp ult i64 %i.fc, 3
  br i1 %i.fg, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %.lr.ph108.i.prol.loopexit, %.lr.ph108.i
  %.042106.i = phi i64 [ %i.fn, %.lr.ph108.i ], [ %.042106.i.unr, %.lr.ph108.i.prol.loopexit ]
  %i.fh = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store ptr %i.fi, ptr %i.f, align 8, !tbaa !46
  store i8 48, ptr %i.fh, align 1, !tbaa !25
  %i.fj = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  store ptr %i.fk, ptr %i.f, align 8, !tbaa !46
  store i8 48, ptr %i.fj, align 1, !tbaa !25
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store ptr %i.fm, ptr %i.f, align 8, !tbaa !46
  store i8 48, ptr %i.fl, align 1, !tbaa !25
  %i.fn = add nsw i64 %.042106.i, -4              ; 2 uses
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store ptr %i.fp, ptr %i.f, align 8, !tbaa !46
  store i8 48, ptr %i.fo, align 1, !tbaa !25
  %.not60.i37.3 = icmp eq i64 %i.fn, 0
  br i1 %.not60.i37.3, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i, !llvm.loop !101

bb.z:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplImeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit
  %i.fq = icmp samesign ult i32 %i.d, -124
  br i1 %i.fq, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fr = sub nsw i32 0, %i.d
  %i.fs = zext nneg i32 %i.fr to i128             ; 7 uses
  %notmask.i8 = shl nsw i128 -1, %i.fs
  %i.ft = xor i128 %notmask.i8, -1                ; 8 uses
  %i.fu = lshr i128 %i.ef, %i.fs                  ; 2 uses
  %.not.i61.i = icmp eq i128 %i.fu, 0
  br i1 %.not.i61.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i, label %.preheader.i62.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i: ; preds = %bb.aa
  %i.fv = and i128 %i.ef, %i.ft
  br label %bb.ab

.preheader.i62.i:                                 ; preds = %bb.aa, %.preheader.i62.i
  %.0913.i63.i = phi i128 [ %i.fw, %.preheader.i62.i ], [ %i.fu, %bb.aa ] ; 2 uses
  %.0913.i63.i.frozen = freeze i128 %.0913.i63.i  ; 2 uses
  %i.fw = udiv i128 %.0913.i63.i.frozen, 10       ; 2 uses
  %i.fx = mul i128 %i.fw, 10
  %.decomposed147 = sub i128 %.0913.i63.i.frozen, %i.fx
  %i.fy = trunc nuw nsw i128 %.decomposed147 to i8
  %i.fz = or disjoint i8 %i.fy, 48
  %i.ga = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -1 ; 2 uses
  store ptr %i.gb, ptr %i.g, align 8, !tbaa !47
  store i8 %i.fz, ptr %i.gb, align 1, !tbaa !25
  %.not11.i64.i = icmp ult i128 %.0913.i63.i, 10
  br i1 %.not11.i64.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i, label %.preheader.i62.i, !llvm.loop !5

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i: ; preds = %.preheader.i62.i
  %.val.i65.i = load ptr, ptr %i.g, align 8, !tbaa !47 ; 4 uses
  %.val12.i66.i = load ptr, ptr %i.f, align 8, !tbaa !46 ; 2 uses
  %i.gc = load i8, ptr %.val.i65.i, align 1, !tbaa !25
  %i.gd = getelementptr inbounds i8, ptr %.val.i65.i, i64 -1 ; 2 uses
  store ptr %i.gd, ptr %i.g, align 8, !tbaa !47
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !25
  %i.ge = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store i8 46, ptr %i.gf, align 1, !tbaa !25
  %i.gg = and i128 %i.ef, %i.ft                   ; 3 uses
  %i.gh = icmp eq ptr %.val12.i66.i, %.val.i65.i
  br i1 %i.gh, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i
  %i.gi = phi i128 [ %i.fv, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i ], [ %i.gg, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i ] ; 2 uses
  store i32 0, ptr %3, align 4, !tbaa !19
  %.not.i27 = icmp eq i128 %i.gi, 0
  br i1 %.not.i27, label %bb.ac, label %.preheader.i28

.preheader.i28:                                   ; preds = %bb.ab, %.preheader.i28
  %.094101.i = phi i128 [ %i.gk, %.preheader.i28 ], [ %i.gi, %bb.ab ]
  %i.gj = phi i32 [ %i.gl, %.preheader.i28 ], [ 0, %bb.ab ]
  %i.gk = mul nuw i128 %.094101.i, 10             ; 3 uses
  %i.gl = add nsw i32 %i.gj, -1                   ; 2 uses
  %.not57.i29 = icmp ugt i128 %i.gk, %i.ft
  br i1 %.not57.i29, label %.loopexit.i30, label %.preheader.i28, !llvm.loop !102

.loopexit.i30:                                    ; preds = %.preheader.i28
  store i32 %i.gl, ptr %3, align 4, !tbaa !19
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i30, %bb.ab
  %.195.i = phi i128 [ 0, %bb.ab ], [ %i.gk, %.loopexit.i30 ] ; 2 uses
  %i.gm = lshr i128 %.195.i, %i.fs
  %i.gn = trunc i128 %i.gm to i8
  %i.go = add i8 %i.gn, 48
  %i.gp = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -1 ; 2 uses
  store ptr %i.gq, ptr %i.g, align 8, !tbaa !47
  store i8 %i.go, ptr %i.gq, align 1, !tbaa !25
  %i.gr = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  store ptr %i.gs, ptr %i.f, align 8, !tbaa !46
  store i8 46, ptr %i.gr, align 1, !tbaa !25
  %i.gt = and i128 %.195.i, %i.ft
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i
  %i.gu = ptrtoint ptr %.val.i65.i to i64
  %i.gv = ptrtoint ptr %.val12.i66.i to i64
  %i.gw = xor i64 %i.gu, -1
  %i.gx = add i64 %i.gv, %i.gw                    ; 4 uses
  %i.gy = trunc i64 %i.gx to i32
  store i32 %i.gy, ptr %3, align 4, !tbaa !19
  %i.gz = icmp ult i64 %1, %i.gx
  br i1 %i.gz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ha = sub nuw i64 %i.gx, %1
  %i.hb = icmp ne i128 %i.gg, 0
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.ha, i1 noundef zeroext %i.hb, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.af:                                            ; preds = %bb.ad
  %i.hc = sub nuw nsw i64 %1, %i.gx
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.296.i = phi i128 [ %i.gt, %bb.ac ], [ %i.gg, %bb.af ] ; 3 uses
  %.0.i9 = phi i64 [ %1, %bb.ac ], [ %i.hc, %bb.af ] ; 5 uses
  %.not58102.i = icmp eq i64 %.0.i9, 0
  br i1 %.not58102.i, label %._crit_edge.i12, label %.lr.ph.i10.preheader

.lr.ph.i10.preheader:                             ; preds = %bb.ag
  %xtraiter127 = and i64 %.0.i9, 1
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph.i10.prol.loopexit, label %.lr.ph.i10.prol

.lr.ph.i10.prol:                                  ; preds = %.lr.ph.i10.preheader
  %i.hd = mul nuw i128 %.296.i, 10                ; 2 uses
  %i.he = lshr i128 %i.hd, %i.fs
  %i.hf = trunc i128 %i.he to i8
  %i.hg = and i128 %i.hd, %i.ft                   ; 2 uses
  %i.hh = add i8 %i.hf, 48
  %i.hi = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  store ptr %i.hj, ptr %i.f, align 8, !tbaa !46
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !25
  %i.hk = add nsw i64 %.0.i9, -1
  br label %.lr.ph.i10.prol.loopexit

.lr.ph.i10.prol.loopexit:                         ; preds = %.lr.ph.i10.prol, %.lr.ph.i10.preheader
  %.lcssa118.unr = phi i128 [ poison, %.lr.ph.i10.preheader ], [ %i.hg, %.lr.ph.i10.prol ]
  %.1104.i.unr = phi i64 [ %.0.i9, %.lr.ph.i10.preheader ], [ %i.hk, %.lr.ph.i10.prol ]
  %.3103.i.unr = phi i128 [ %.296.i, %.lr.ph.i10.preheader ], [ %i.hg, %.lr.ph.i10.prol ]
  %i.hl = icmp eq i64 %.0.i9, 1
  br i1 %i.hl, label %._crit_edge.i12, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.prol.loopexit, %.lr.ph.i10
  %.1104.i = phi i64 [ %i.ia, %.lr.ph.i10 ], [ %.1104.i.unr, %.lr.ph.i10.prol.loopexit ]
  %.3103.i = phi i128 [ %i.hw, %.lr.ph.i10 ], [ %.3103.i.unr, %.lr.ph.i10.prol.loopexit ]
  %i.hm = mul nuw i128 %.3103.i, 10               ; 2 uses
  %i.hn = lshr i128 %i.hm, %i.fs
  %i.ho = trunc i128 %i.hn to i8
  %i.hp = and i128 %i.hm, %i.ft
  %i.hq = add i8 %i.ho, 48
  %i.hr = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  store ptr %i.hs, ptr %i.f, align 8, !tbaa !46
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !25
  %i.ht = mul nuw i128 %i.hp, 10                  ; 2 uses
  %i.hu = lshr i128 %i.ht, %i.fs
  %i.hv = trunc i128 %i.hu to i8
  %i.hw = and i128 %i.ht, %i.ft                   ; 2 uses
  %i.hx = add i8 %i.hv, 48
  %i.hy = load ptr, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  store ptr %i.hz, ptr %i.f, align 8, !tbaa !46
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !25
  %i.ia = add nsw i64 %.1104.i, -2                ; 2 uses
  %.not58.i11.1 = icmp eq i64 %i.ia, 0
  br i1 %.not58.i11.1, label %._crit_edge.i12, label %.lr.ph.i10, !llvm.loop !103

._crit_edge.i12:                                  ; preds = %.lr.ph.i10.prol.loopexit, %.lr.ph.i10, %bb.ag
  %.3.lcssa.i13 = phi i128 [ %.296.i, %bb.ag ], [ %.lcssa118.unr, %.lr.ph.i10.prol.loopexit ], [ %i.hw, %.lr.ph.i10 ]
  %i.ib = mul nuw i128 %.3.lcssa.i13, 10          ; 2 uses
  %i.ic = lshr i128 %i.ib, %i.fs
  %i.id = trunc i128 %i.ic to i8                  ; 2 uses
  %i.ie = and i128 %i.ib, %i.ft
  %i.if = icmp sgt i8 %i.id, 5
  br i1 %i.if, label %._crit_edge._crit_edge.i26, label %bb.ah

._crit_edge._crit_edge.i26:                       ; preds = %._crit_edge.i12
  %.val.i69.pre.i = load ptr, ptr %i.f, align 8, !tbaa !46
  br label %bb.al

bb.ah:                                            ; preds = %._crit_edge.i12
  %i.ig = icmp eq i8 %i.id, 5
  br i1 %i.ig, label %bb.ai, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIoeLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.ai:                                            ; preds = %bb.ah
  %.not59.i15 = icmp eq i128 %i.ie, 0
  %.val.i69.pre114.i = load ptr, ptr %i.f, align 8, !tbaa !46 ; 4 uses
  br i1 %.not59.i15, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ih = getelementptr inbounds i8, ptr %.val.i69.pre114.i, i64 -1
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !25  ; 2 uses
  %i.ij = icmp eq i8 %i.ii, 46
  br i1 %i.ij, label %bb.ak, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i25

bb.ak:                                            ; preds = %bb.aj
  %i.ik = getelementptr inbounds i8, ptr %.val.i69.pre114.i, i64 -2
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !25
  br label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i25

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i25: ; preds = %bb.ak, %bb.aj
  %i.im = phi i8 [ %i.il, %bb.ak ], [ %i.ii, %bb.aj ]
  %i.in = and i8 %i.im, -127
  %i.io = icmp eq i8 %i.in, 1
end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
middle.block172:                                  ; preds = %vector.body163
  %cmp.n173 = icmp eq i64 %.082, %n.vec162
  br i1 %cmp.n173, label %._crit_edge, label %vec.epilog.iter.check178

vec.epilog.iter.check178:                         ; preds = %middle.block172
  %min.epilog.iters.check179 = icmp eq i64 %i.cx, 0
  br i1 %min.epilog.iters.check179, label %.lr.ph.preheader, label %vec.epilog.ph180, !prof !177

vec.epilog.ph180:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check178
  %vec.epilog.resume.val174 = phi i64 [ %n.vec162, %vec.epilog.iter.check178 ], [ 0, %vector.main.loop.iter.check159 ]
  %n.vec181 = and i64 %.082, 9223372036854775800  ; 4 uses
  %i.dh = sub nsw i64 0, %n.vec181                ; 2 uses
  %i.di = getelementptr i8, ptr %i.cm, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.cv, i64 %i.dh
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph180
  %index183 = phi i64 [ %vec.epilog.resume.val174, %vec.epilog.ph180 ], [ %index.next188, %vec.epilog.vector.body182 ] ; 2 uses
  %i.dk = sub i64 0, %index183                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.cm, i64 %i.dk
  %next.gep185 = getelementptr i8, ptr %i.cv, i64 %i.dk
  %i.dl = getelementptr inbounds i8, ptr %next.gep185, i64 -8 ; 2 uses
  %wide.load186 = load <8 x i8>, ptr %i.dl, align 1, !tbaa !25, !alias.scope !175, !noalias !176
  %i.dm = getelementptr inbounds i8, ptr %next.gep184, i64 -8 ; 2 uses
  %wide.load187 = load <8 x i8>, ptr %i.dm, align 1, !tbaa !25, !alias.scope !176
  store <8 x i8> %wide.load187, ptr %i.dl, align 1, !tbaa !25, !alias.scope !175, !noalias !176
  store <8 x i8> %wide.load186, ptr %i.dm, align 1, !tbaa !25, !alias.scope !176
  %index.next188 = add nuw i64 %index183, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.dn, label %vec.epilog.middle.block189, label %vec.epilog.vector.body182, !llvm.loop !164

vec.epilog.middle.block189:                       ; preds = %vec.epilog.vector.body182
  %cmp.n190 = icmp eq i64 %.082, %n.vec181
  br i1 %cmp.n190, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck153, %iter.check176, %vec.epilog.iter.check178, %vec.epilog.middle.block189
  %.0104.ph = phi i64 [ 0, %iter.check176 ], [ 0, %vector.memcheck153 ], [ %n.vec162, %vec.epilog.iter.check178 ], [ %n.vec181, %vec.epilog.middle.block189 ] ; 3 uses
  %.052103.ph = phi ptr [ %i.cm, %iter.check176 ], [ %i.cm, %vector.memcheck153 ], [ %i.cz, %vec.epilog.iter.check178 ], [ %i.di, %vec.epilog.middle.block189 ] ; 2 uses
  %.260102.ph = phi ptr [ %i.cv, %iter.check176 ], [ %i.cv, %vector.memcheck153 ], [ %i.da, %vec.epilog.iter.check178 ], [ %i.dj, %vec.epilog.middle.block189 ] ; 2 uses
  %xtraiter = and i64 %.082, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0104.prol = phi i64 [ %i.ds, %.lr.ph.prol ], [ %.0104.ph, %.lr.ph.preheader ]
  %.052103.prol = phi ptr [ %i.dp, %.lr.ph.prol ], [ %.052103.ph, %.lr.ph.preheader ]
  %.260102.prol = phi ptr [ %i.do, %.lr.ph.prol ], [ %.260102.ph, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.do = getelementptr inbounds i8, ptr %.260102.prol, i64 -1 ; 4 uses
  %i.dp = getelementptr inbounds i8, ptr %.052103.prol, i64 -1 ; 4 uses
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !25
  %i.dr = load i8, ptr %i.dp, align 1, !tbaa !25
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !25
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !25
  %i.ds = add nuw nsw i64 %.0104.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !165

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0104.unr = phi i64 [ %.0104.ph, %.lr.ph.preheader ], [ %i.ds, %.lr.ph.prol ]
  %.052103.unr = phi ptr [ %.052103.ph, %.lr.ph.preheader ], [ %i.dp, %.lr.ph.prol ]
  %.260102.unr = phi ptr [ %.260102.ph, %.lr.ph.preheader ], [ %i.do, %.lr.ph.prol ]
  %i.dt = sub nsw i64 %.0104.ph, %.082
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block172, %vec.epilog.middle.block189, %bb.n
  %.260.lcssa = phi ptr [ %i.cv, %bb.n ], [ %.058, %middle.block172 ], [ %.058, %vec.epilog.middle.block189 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.dv = srem i64 %.086, %i.ar                   ; 2 uses
  %.not = icmp eq i64 %i.dv, 0
  br i1 %.not, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.ar, %._crit_edge ]
  %.082.be = phi i64 [ %i.ck, %bb.h ], [ %i.dv, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !166

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0104 = phi i64 [ %i.em, %.lr.ph ], [ %.0104.unr, %.lr.ph.prol.loopexit ]
  %.052103 = phi ptr [ %i.ej, %.lr.ph ], [ %.052103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260102 = phi ptr [ %i.ei, %.lr.ph ], [ %.260102.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dw = getelementptr inbounds i8, ptr %.260102, i64 -1 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.052103, i64 -1 ; 2 uses
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !25
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !25
  store i8 %i.dz, ptr %i.dw, align 1, !tbaa !25
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !25
  %i.ea = getelementptr inbounds i8, ptr %.260102, i64 -2 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %.052103, i64 -2 ; 2 uses
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !25
  %i.ed = load i8, ptr %i.eb, align 1, !tbaa !25
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !25
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !25
  %i.ee = getelementptr inbounds i8, ptr %.260102, i64 -3 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.052103, i64 -3 ; 2 uses
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !25
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !25
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !25
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !25
  %i.ei = getelementptr inbounds i8, ptr %.260102, i64 -4 ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %.052103, i64 -4 ; 3 uses
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !25
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !25
  store i8 %i.el, ptr %i.ei, align 1, !tbaa !25
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !25
  %i.em = add nuw nsw i64 %.0104, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.em, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !167

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
  store ptr %i.b, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 31 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !47
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
  store i32 -1, ptr %4, align 4, !tbaa !19
  br label %bb.e

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.0913.i.i = phi i64 [ %i.n, %.preheader.i.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.i = urem i64 %.0913.i.i, 10
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = or disjoint i8 %i.j, 48
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !47
  store i8 %i.k, ptr %i.m, align 1, !tbaa !25
  %i.n = udiv i64 %.0913.i.i, 10
  %.not11.i.i = icmp ult i64 %.0913.i.i, 10
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i, label %.preheader.i.i, !llvm.loop !3

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit.i: ; preds = %.preheader.i.i
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !47 ; 3 uses
  %.val12.i.i = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.o = ptrtoint ptr %.val12.i.i to i64          ; 2 uses
  %i.p = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.q = load i8, ptr %.val.i.i, align 1, !tbaa !25
  %i.r = getelementptr inbounds i8, ptr %.val.i.i, i64 -1 ; 2 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !47
  store i8 %i.q, ptr %i.r, align 1, !tbaa !25
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 46, ptr %i.t, align 1, !tbaa !25
  %i.u = xor i64 %i.p, -1
  %i.v = add i64 %i.o, %i.u                       ; 4 uses
  %i.w = trunc i64 %i.v to i32
  store i32 %i.w, ptr %4, align 4, !tbaa !19
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
  %i.ac = add nsw i64 %.042106.i.prol, -1         ; 2 uses
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !46
  store i8 48, ptr %i.ad, align 1, !tbaa !25
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter152
  br i1 %prol.iter.cmp.not, label %.lr.ph108.i.prol.loopexit, label %.lr.ph108.i.prol, !llvm.loop !178

.lr.ph108.i.prol.loopexit:                        ; preds = %.lr.ph108.i.prol, %.lr.ph108.i.preheader
  %.042106.i.unr = phi i64 [ %i.z, %.lr.ph108.i.preheader ], [ %i.ac, %.lr.ph108.i.prol ]
  %i.af = icmp ult i64 %i.ab, 3
  br i1 %i.af, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %.lr.ph108.i.prol.loopexit, %.lr.ph108.i
  %.042106.i = phi i64 [ %i.am, %.lr.ph108.i ], [ %.042106.i.unr, %.lr.ph108.i.prol.loopexit ]
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !46
  store i8 48, ptr %i.ag, align 1, !tbaa !25
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !46
  store i8 48, ptr %i.ai, align 1, !tbaa !25
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.c, align 8, !tbaa !46
  store i8 48, ptr %i.ak, align 1, !tbaa !25
  %i.am = add nsw i64 %.042106.i, -4              ; 2 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !46
  store i8 48, ptr %i.an, align 1, !tbaa !25
  %.not60.i.3 = icmp eq i64 %i.am, 0
  br i1 %.not60.i.3, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i, !llvm.loop !179

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
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -1 ; 2 uses
  store ptr %i.az, ptr %i.d, align 8, !tbaa !47
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !25
  %i.ba = udiv i64 %.0913.i63.i, 10
  %.not11.i64.i = icmp ult i64 %.0913.i63.i, 10
  br i1 %.not11.i64.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.i, label %.preheader.i62.i, !llvm.loop !3

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.i: ; preds = %.preheader.i62.i
  %.val.i65.i = load ptr, ptr %i.d, align 8, !tbaa !47 ; 4 uses
  %.val12.i66.i = load ptr, ptr %i.c, align 8, !tbaa !46 ; 2 uses
  %i.bb = load i8, ptr %.val.i65.i, align 1, !tbaa !25
  %i.bc = getelementptr inbounds i8, ptr %.val.i65.i, i64 -1 ; 2 uses
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !47
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !25
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 46, ptr %i.be, align 1, !tbaa !25
  %i.bf = and i64 %0, %i.as                       ; 3 uses
  %i.bg = icmp eq ptr %.val12.i66.i, %.val.i65.i
  br i1 %i.bg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.thread.i
  %i.bh = phi i64 [ %i.au, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.thread.i ], [ %i.bf, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.i ] ; 2 uses
  store i32 0, ptr %4, align 4, !tbaa !19
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.094101.i = phi i64 [ %i.bj, %.preheader.i ], [ %i.bh, %bb.i ]
  %i.bi = phi i32 [ %i.bk, %.preheader.i ], [ 0, %bb.i ]
  %i.bj = mul nuw i64 %.094101.i, 10              ; 3 uses
  %i.bk = add nsw i32 %i.bi, -1                   ; 2 uses
  %.not57.i = icmp ugt i64 %i.bj, %i.as
  br i1 %.not57.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !180

.loopexit.i:                                      ; preds = %.preheader.i
  store i32 %i.bk, ptr %4, align 4, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %bb.i
  %.195.i = phi i64 [ 0, %bb.i ], [ %i.bj, %.loopexit.i ] ; 2 uses
  %i.bl = lshr i64 %.195.i, %i.ar
  %i.bm = trunc i64 %i.bl to i8
  %i.bn = add i8 %i.bm, 48
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -1 ; 2 uses
  store ptr %i.bp, ptr %i.d, align 8, !tbaa !47
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !25
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.c, align 8, !tbaa !46
  store i8 46, ptr %i.bq, align 1, !tbaa !25
  %i.bs = and i64 %.195.i, %i.as
  br label %bb.n

bb.k:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EmEEmT0_PNS2_6BufferE.exit68.i
  %i.bt = ptrtoint ptr %.val.i65.i to i64
  %i.bu = ptrtoint ptr %.val12.i66.i to i64
  %i.bv = xor i64 %i.bt, -1
  %i.bw = add i64 %i.bu, %i.bv                    ; 4 uses
  %i.bx = trunc i64 %i.bw to i32
  store i32 %i.bx, ptr %4, align 4, !tbaa !19
  %i.by = icmp ult i64 %2, %i.bw
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = sub nuw i64 %i.bw, %2
  %i.ca = icmp ne i64 %i.bf, 0
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.bz, i1 noundef zeroext %i.ca, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.m:                                             ; preds = %bb.k
  %i.cb = sub nuw nsw i64 %2, %i.bw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.296.i = phi i64 [ %i.bs, %bb.j ], [ %i.bf, %bb.m ] ; 3 uses
  %.0.i = phi i64 [ %2, %bb.j ], [ %i.cb, %bb.m ] ; 5 uses
  %.not58102.i = icmp eq i64 %.0.i, 0
  br i1 %.not58102.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %xtraiter = and i64 %.0.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.cc = mul nuw i64 %.296.i, 10                 ; 2 uses
  %i.cd = lshr i64 %i.cc, %i.ar
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = and i64 %i.cc, %i.as                    ; 2 uses
  %i.cg = add i8 %i.ce, 48
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.ci, ptr %i.c, align 8, !tbaa !46
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !25
  %i.cj = add nsw i64 %.0.i, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa147.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.cf, %.lr.ph.i.prol ]
  %.1104.i.unr = phi i64 [ %.0.i, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %.3103.i.unr = phi i64 [ %.296.i, %.lr.ph.i.preheader ], [ %i.cf, %.lr.ph.i.prol ]
  %i.ck = icmp eq i64 %.0.i, 1
  br i1 %i.ck, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.1104.i = phi i64 [ %i.cz, %.lr.ph.i ], [ %.1104.i.unr, %.lr.ph.i.prol.loopexit ]
  %.3103.i = phi i64 [ %i.cv, %.lr.ph.i ], [ %.3103.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cl = mul nuw i64 %.3103.i, 10                ; 2 uses
  %i.cm = lshr i64 %i.cl, %i.ar
  %i.cn = trunc i64 %i.cm to i8
  %i.co = and i64 %i.cl, %i.as
  %i.cp = add i8 %i.cn, 48
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store ptr %i.cr, ptr %i.c, align 8, !tbaa !46
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !25
  %i.cs = mul nuw i64 %i.co, 10                   ; 2 uses
  %i.ct = lshr i64 %i.cs, %i.ar
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = and i64 %i.cs, %i.as                    ; 2 uses
  %i.cw = add i8 %i.cu, 48
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store ptr %i.cy, ptr %i.c, align 8, !tbaa !46
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !25
  %i.cz = add nsw i64 %.1104.i, -2                ; 2 uses
  %.not58.i.1 = icmp eq i64 %i.cz, 0
  br i1 %.not58.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !181

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n
  %.3.lcssa.i = phi i64 [ %.296.i, %bb.n ], [ %.lcssa147.unr, %.lr.ph.i.prol.loopexit ], [ %i.cv, %.lr.ph.i ]
  %i.da = mul nuw i64 %.3.lcssa.i, 10             ; 2 uses
  %i.db = lshr i64 %i.da, %i.ar
  %i.dc = trunc i64 %i.db to i8                   ; 2 uses
  %i.dd = and i64 %i.da, %i.as
  %i.de = icmp sgt i8 %i.dc, 5
  br i1 %i.de, label %._crit_edge._crit_edge.i, label %bb.o

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.val.i69.pre.i = load ptr, ptr %i.c, align 8, !tbaa !46
  br label %bb.s

bb.o:                                             ; preds = %._crit_edge.i
  %i.df = icmp eq i8 %i.dc, 5
  br i1 %i.df, label %bb.p, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.p:                                             ; preds = %bb.o
  %.not59.i = icmp eq i64 %i.dd, 0
  %.val.i69.pre114.i = load ptr, ptr %i.c, align 8, !tbaa !46 ; 4 uses
  br i1 %.not59.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds i8, ptr %.val.i69.pre114.i, i64 -1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !25  ; 2 uses
  %i.di = icmp eq i8 %i.dh, 46
  br i1 %i.di, label %bb.r, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dj = getelementptr inbounds i8, ptr %.val.i69.pre114.i, i64 -2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !25
  br label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i: ; preds = %bb.r, %bb.q
  %i.dl = phi i8 [ %i.dk, %bb.r ], [ %i.dh, %bb.q ]
  %i.dm = and i8 %i.dl, -127
  %i.dn = icmp eq i8 %i.dm, 1
  br i1 %i.dn, label %bb.s, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.s:                                             ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i, %bb.p, %._crit_edge._crit_edge.i
  %.val.i69.i = phi ptr [ %.val.i69.pre.i, %._crit_edge._crit_edge.i ], [ %.val.i69.pre114.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i ], [ %.val.i69.pre114.i, %bb.p ] ; 2 uses
  %.024.i.i = getelementptr inbounds i8, ptr %.val.i69.i, i64 -1 ; 3 uses
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %.not25.i.i = icmp ult ptr %.024.i.i, %i.do
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.u
  %i.dp = phi ptr [ %i.dr, %bb.u ], [ %i.do, %bb.s ]
  %.026.i.i = phi ptr [ %.0.i70.i, %bb.u ], [ %.024.i.i, %bb.s ] ; 5 uses
  %i.dq = load i8, ptr %.026.i.i, align 1, !tbaa !25 ; 2 uses
  switch i8 %i.dq, label %.critedge.i.i [
    i8 57, label %bb.t
    i8 46, label %bb.u
  ]

bb.t:                                             ; preds = %.lr.ph.i.i
  store i8 48, ptr %.026.i.i, align 1, !tbaa !25
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i
  %i.dr = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %.pre.i.i, %bb.t ] ; 2 uses
  %.0.i70.i = getelementptr inbounds i8, ptr %.026.i.i, i64 -1 ; 3 uses
  %.not.i71.i = icmp ult ptr %.0.i70.i, %i.dr
  br i1 %.not.i71.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %bb.u, %bb.s
  %.val.pn.lcssa.i.i = phi ptr [ %.val.i69.i, %bb.s ], [ %.026.i.i, %bb.u ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.024.i.i, %bb.s ], [ %.0.i70.i, %bb.u ] ; 2 uses
  store i8 49, ptr %.0.lcssa.i.i, align 1, !tbaa !25
  store ptr %.0.lcssa.i.i, ptr %i.d, align 8, !tbaa !47
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.pn.lcssa.i.i, i64 1 ; 2 uses
  %i.dt = load i8, ptr %.val.pn.lcssa.i.i, align 1, !tbaa !25
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !25
  store i8 %i.du, ptr %.val.pn.lcssa.i.i, align 1, !tbaa !25
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !25
  %i.dv = load i32, ptr %4, align 4, !tbaa !19
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %4, align 4, !tbaa !19
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -1
  store ptr %i.dy, ptr %i.c, align 8, !tbaa !46
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dz = add i8 %i.dq, 1
  store i8 %i.dz, ptr %.026.i.i, align 1, !tbaa !25
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.v:                                             ; preds = %bb.c
  %i.ea = icmp samesign ugt i32 %1, 75
  br i1 %i.ea, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = zext i64 %0 to i128
  %i.ec = zext nneg i32 %1 to i128
  %i.ed = shl i128 %i.eb, %i.ec                   ; 2 uses
  %.not.i.i50 = icmp eq i128 %i.ed, 0
  br i1 %.not.i.i50, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i, label %.preheader.i.i51

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i: ; preds = %bb.w
  store i32 -1, ptr %4, align 4, !tbaa !19
  br label %bb.x

.preheader.i.i51:                                 ; preds = %bb.w, %.preheader.i.i51
  %.0913.i.i52 = phi i128 [ %i.ee, %.preheader.i.i51 ], [ %i.ed, %bb.w ] ; 2 uses
  %.0913.i.i52.frozen = freeze i128 %.0913.i.i52  ; 2 uses
  %i.ee = udiv i128 %.0913.i.i52.frozen, 10       ; 2 uses
  %i.ef = mul i128 %i.ee, 10
  %.decomposed = sub i128 %.0913.i.i52.frozen, %i.ef
  %i.eg = trunc nuw nsw i128 %.decomposed to i8
  %i.eh = or disjoint i8 %i.eg, 48
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -1 ; 2 uses
  store ptr %i.ej, ptr %i.d, align 8, !tbaa !47
  store i8 %i.eh, ptr %i.ej, align 1, !tbaa !25
  %.not11.i.i53 = icmp ult i128 %.0913.i.i52, 10
  br i1 %.not11.i.i53, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i, label %.preheader.i.i51, !llvm.loop !5

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i: ; preds = %.preheader.i.i51
  %.val.i.i54 = load ptr, ptr %i.d, align 8, !tbaa !47 ; 3 uses
  %.val12.i.i55 = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.ek = ptrtoint ptr %.val12.i.i55 to i64       ; 2 uses
  %i.el = ptrtoint ptr %.val.i.i54 to i64         ; 2 uses
  %i.em = load i8, ptr %.val.i.i54, align 1, !tbaa !25
  %i.en = getelementptr inbounds i8, ptr %.val.i.i54, i64 -1 ; 2 uses
  store ptr %i.en, ptr %i.d, align 8, !tbaa !47
  store i8 %i.em, ptr %i.en, align 1, !tbaa !25
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store i8 46, ptr %i.ep, align 1, !tbaa !25
  %i.eq = xor i64 %i.el, -1
  %i.er = add i64 %i.ek, %i.eq                    ; 4 uses
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %4, align 4, !tbaa !19
  %i.et = icmp ult i64 %2, %i.er
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i
  %.0.i132.i60 = phi i64 [ -1, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.thread.i ], [ %i.er, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i ]
  %i.eu = sub nuw i64 %.0.i132.i60, %2
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.eu, i1 noundef zeroext false, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.y:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit.i
  %i.ev = sub nuw nsw i64 %2, %i.er               ; 4 uses
  %.not60105.i56 = icmp eq i64 %i.ev, 0
  br i1 %.not60105.i56, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i57.preheader

.lr.ph108.i57.preheader:                          ; preds = %bb.y
  %i.ew = add i64 %2, %i.el
  %i.ex = sub i64 %i.ew, %i.ek
  %xtraiter154 = and i64 %i.ev, 3                 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.lr.ph108.i57.prol.loopexit, label %.lr.ph108.i57.prol

.lr.ph108.i57.prol:                               ; preds = %.lr.ph108.i57.preheader, %.lr.ph108.i57.prol
  %.042106.i58.prol = phi i64 [ %i.ey, %.lr.ph108.i57.prol ], [ %i.ev, %.lr.ph108.i57.preheader ]
  %prol.iter156 = phi i64 [ %prol.iter156.next, %.lr.ph108.i57.prol ], [ 0, %.lr.ph108.i57.preheader ]
  %i.ey = add nsw i64 %.042106.i58.prol, -1       ; 2 uses
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  store ptr %i.fa, ptr %i.c, align 8, !tbaa !46
  store i8 48, ptr %i.ez, align 1, !tbaa !25
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %.lr.ph108.i57.prol.loopexit, label %.lr.ph108.i57.prol, !llvm.loop !182

.lr.ph108.i57.prol.loopexit:                      ; preds = %.lr.ph108.i57.prol, %.lr.ph108.i57.preheader
  %.042106.i58.unr = phi i64 [ %i.ev, %.lr.ph108.i57.preheader ], [ %i.ey, %.lr.ph108.i57.prol ]
  %i.fb = icmp ult i64 %i.ex, 3
  br i1 %i.fb, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i57

.lr.ph108.i57:                                    ; preds = %.lr.ph108.i57.prol.loopexit, %.lr.ph108.i57
  %.042106.i58 = phi i64 [ %i.fi, %.lr.ph108.i57 ], [ %.042106.i58.unr, %.lr.ph108.i57.prol.loopexit ]
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store ptr %i.fd, ptr %i.c, align 8, !tbaa !46
  store i8 48, ptr %i.fc, align 1, !tbaa !25
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store ptr %i.ff, ptr %i.c, align 8, !tbaa !46
  store i8 48, ptr %i.fe, align 1, !tbaa !25
  %i.fg = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  store ptr %i.fh, ptr %i.c, align 8, !tbaa !46
  store i8 48, ptr %i.fg, align 1, !tbaa !25
  %i.fi = add nsw i64 %.042106.i58, -4            ; 2 uses
  %i.fj = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  store ptr %i.fk, ptr %i.c, align 8, !tbaa !46
  store i8 48, ptr %i.fj, align 1, !tbaa !25
  %.not60.i59.3 = icmp eq i64 %i.fi, 0
  br i1 %.not60.i59.3, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph108.i57, !llvm.loop !183

bb.z:                                             ; preds = %bb.g
  %i.fl = zext i64 %0 to i128                     ; 3 uses
  %i.fm = icmp samesign ult i32 %1, -124
  br i1 %i.fm, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fn = sub nsw i32 0, %1
  %i.fo = zext nneg i32 %i.fn to i128             ; 7 uses
  %notmask.i10 = shl nsw i128 -1, %i.fo
  %i.fp = xor i128 %notmask.i10, -1               ; 8 uses
  %i.fq = lshr i128 %i.fl, %i.fo                  ; 2 uses
  %.not.i61.i11 = icmp eq i128 %i.fq, 0
  br i1 %.not.i61.i11, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i: ; preds = %bb.aa
  %i.fr = and i128 %i.fp, %i.fl
  br label %bb.ab

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i: ; preds = %bb.aa
  %i.fs = trunc nuw nsw i128 %i.fq to i8
  %i.ft = or disjoint i8 %i.fs, 48
  %i.fu = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -1 ; 2 uses
  store ptr %i.fv, ptr %i.d, align 8, !tbaa !47
  store i8 %i.ft, ptr %i.fv, align 1, !tbaa !25
  %.val.i65.i15 = load ptr, ptr %i.d, align 8, !tbaa !47 ; 4 uses
  %.val12.i66.i16 = load ptr, ptr %i.c, align 8, !tbaa !46 ; 2 uses
  %i.fw = load i8, ptr %.val.i65.i15, align 1, !tbaa !25
  %i.fx = getelementptr inbounds i8, ptr %.val.i65.i15, i64 -1 ; 2 uses
  store ptr %i.fx, ptr %i.d, align 8, !tbaa !47
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !25
  %i.fy = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  store i8 46, ptr %i.fz, align 1, !tbaa !25
  %i.ga = and i128 %i.fp, %i.fl                   ; 3 uses
  %i.gb = icmp eq ptr %.val12.i66.i16, %.val.i65.i15
  br i1 %i.gb, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i
  %i.gc = phi i128 [ %i.fr, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.thread.i ], [ %i.ga, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i ] ; 2 uses
  store i32 0, ptr %4, align 4, !tbaa !19
  %.not.i44 = icmp eq i128 %i.gc, 0
  br i1 %.not.i44, label %bb.ac, label %.preheader.i45

.preheader.i45:                                   ; preds = %bb.ab, %.preheader.i45
  %.094101.i46 = phi i128 [ %i.ge, %.preheader.i45 ], [ %i.gc, %bb.ab ]
  %i.gd = phi i32 [ %i.gf, %.preheader.i45 ], [ 0, %bb.ab ]
  %i.ge = mul nuw i128 %.094101.i46, 10           ; 3 uses
  %i.gf = add nsw i32 %i.gd, -1                   ; 2 uses
  %.not57.i47 = icmp ugt i128 %i.ge, %i.fp
  br i1 %.not57.i47, label %.loopexit.i48, label %.preheader.i45, !llvm.loop !184

.loopexit.i48:                                    ; preds = %.preheader.i45
  store i32 %i.gf, ptr %4, align 4, !tbaa !19
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i48, %bb.ab
  %.195.i49 = phi i128 [ 0, %bb.ab ], [ %i.ge, %.loopexit.i48 ] ; 2 uses
  %i.gg = lshr i128 %.195.i49, %i.fo
  %i.gh = trunc i128 %i.gg to i8
  %i.gi = add i8 %i.gh, 48
  %i.gj = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -1 ; 2 uses
  store ptr %i.gk, ptr %i.d, align 8, !tbaa !47
  store i8 %i.gi, ptr %i.gk, align 1, !tbaa !25
  %i.gl = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  store ptr %i.gm, ptr %i.c, align 8, !tbaa !46
  store i8 46, ptr %i.gl, align 1, !tbaa !25
  %i.gn = and i128 %.195.i49, %i.fp
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_119PrintIntegralDigitsILNS2_11FormatStyleE1EoEEmT0_PNS2_6BufferE.exit68.i
  %i.go = ptrtoint ptr %.val.i65.i15 to i64
  %i.gp = ptrtoint ptr %.val12.i66.i16 to i64
  %i.gq = xor i64 %i.go, -1
  %i.gr = add i64 %i.gp, %i.gq                    ; 4 uses
  %i.gs = trunc i64 %i.gr to i32
  store i32 %i.gs, ptr %4, align 4, !tbaa !19
  %i.gt = icmp ult i64 %2, %i.gr
  br i1 %i.gt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gu = sub nuw i64 %i.gr, %2
  %i.gv = icmp ne i128 %i.ga, 0
  tail call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120RemoveExtraPrecisionEmbPNS2_6BufferEPi(i64 noundef %i.gu, i1 noundef zeroext %i.gv, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.af:                                            ; preds = %bb.ad
  %i.gw = sub nuw nsw i64 %2, %i.gr
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.296.i17 = phi i128 [ %i.gn, %bb.ac ], [ %i.ga, %bb.af ] ; 3 uses
  %.0.i18 = phi i64 [ %2, %bb.ac ], [ %i.gw, %bb.af ] ; 5 uses
  %.not58102.i19 = icmp eq i64 %.0.i18, 0
  br i1 %.not58102.i19, label %._crit_edge.i24, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %bb.ag
  %xtraiter150 = and i64 %.0.i18, 1
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.lr.ph.i20.prol.loopexit, label %.lr.ph.i20.prol

.lr.ph.i20.prol:                                  ; preds = %.lr.ph.i20.preheader
  %i.gx = mul nuw i128 %.296.i17, 10              ; 2 uses
  %i.gy = lshr i128 %i.gx, %i.fo
  %i.gz = trunc i128 %i.gy to i8
  %i.ha = and i128 %i.gx, %i.fp                   ; 2 uses
  %i.hb = add i8 %i.gz, 48
  %i.hc = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  store ptr %i.hd, ptr %i.c, align 8, !tbaa !46
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !25
  %i.he = add nsw i64 %.0.i18, -1
  br label %.lr.ph.i20.prol.loopexit

.lr.ph.i20.prol.loopexit:                         ; preds = %.lr.ph.i20.prol, %.lr.ph.i20.preheader
  %.lcssa141.unr = phi i128 [ poison, %.lr.ph.i20.preheader ], [ %i.ha, %.lr.ph.i20.prol ]
  %.1104.i21.unr = phi i64 [ %.0.i18, %.lr.ph.i20.preheader ], [ %i.he, %.lr.ph.i20.prol ]
  %.3103.i22.unr = phi i128 [ %.296.i17, %.lr.ph.i20.preheader ], [ %i.ha, %.lr.ph.i20.prol ]
  %i.hf = icmp eq i64 %.0.i18, 1
  br i1 %i.hf, label %._crit_edge.i24, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20
  %.1104.i21 = phi i64 [ %i.hu, %.lr.ph.i20 ], [ %.1104.i21.unr, %.lr.ph.i20.prol.loopexit ]
  %.3103.i22 = phi i128 [ %i.hq, %.lr.ph.i20 ], [ %.3103.i22.unr, %.lr.ph.i20.prol.loopexit ]
  %i.hg = mul nuw i128 %.3103.i22, 10             ; 2 uses
  %i.hh = lshr i128 %i.hg, %i.fo
  %i.hi = trunc i128 %i.hh to i8
  %i.hj = and i128 %i.hg, %i.fp
  %i.hk = add i8 %i.hi, 48
  %i.hl = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  store ptr %i.hm, ptr %i.c, align 8, !tbaa !46
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !25
  %i.hn = mul nuw i128 %i.hj, 10                  ; 2 uses
  %i.ho = lshr i128 %i.hn, %i.fo
  %i.hp = trunc i128 %i.ho to i8
  %i.hq = and i128 %i.hn, %i.fp                   ; 2 uses
  %i.hr = add i8 %i.hp, 48
  %i.hs = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  store ptr %i.ht, ptr %i.c, align 8, !tbaa !46
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !25
  %i.hu = add nsw i64 %.1104.i21, -2              ; 2 uses
  %.not58.i23.1 = icmp eq i64 %i.hu, 0
  br i1 %.not58.i23.1, label %._crit_edge.i24, label %.lr.ph.i20, !llvm.loop !185

._crit_edge.i24:                                  ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20, %bb.ag
  %.3.lcssa.i25 = phi i128 [ %.296.i17, %bb.ag ], [ %.lcssa141.unr, %.lr.ph.i20.prol.loopexit ], [ %i.hq, %.lr.ph.i20 ]
  %i.hv = mul nuw i128 %.3.lcssa.i25, 10          ; 2 uses
  %i.hw = lshr i128 %i.hv, %i.fo
  %i.hx = trunc i128 %i.hw to i8                  ; 2 uses
  %i.hy = and i128 %i.hv, %i.fp
  %i.hz = icmp sgt i8 %i.hx, 5
  br i1 %i.hz, label %._crit_edge._crit_edge.i42, label %bb.ah

._crit_edge._crit_edge.i42:                       ; preds = %._crit_edge.i24
  %.val.i69.pre.i43 = load ptr, ptr %i.c, align 8, !tbaa !46
  br label %bb.al

bb.ah:                                            ; preds = %._crit_edge.i24
  %i.ia = icmp eq i8 %i.hx, 5
  br i1 %i.ia, label %bb.ai, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.ai:                                            ; preds = %bb.ah
  %.not59.i27 = icmp eq i128 %i.hy, 0
  %.val.i69.pre114.i28 = load ptr, ptr %i.c, align 8, !tbaa !46 ; 4 uses
  br i1 %.not59.i27, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ib = getelementptr inbounds i8, ptr %.val.i69.pre114.i28, i64 -1
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !25  ; 2 uses
  %i.id = icmp eq i8 %i.ic, 46
  br i1 %i.id, label %bb.ak, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41

bb.ak:                                            ; preds = %bb.aj
  %i.ie = getelementptr inbounds i8, ptr %.val.i69.pre114.i28, i64 -2
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !25
  br label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41: ; preds = %bb.ak, %bb.aj
  %i.ig = phi i8 [ %i.if, %bb.ak ], [ %i.ic, %bb.aj ]
  %i.ih = and i8 %i.ig, -127
  %i.ii = icmp eq i8 %i.ih, 1
  br i1 %i.ii, label %bb.al, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit

bb.al:                                            ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41, %bb.ai, %._crit_edge._crit_edge.i42
  %.val.i69.i29 = phi ptr [ %.val.i69.pre.i43, %._crit_edge._crit_edge.i42 ], [ %.val.i69.pre114.i28, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_16Buffer10last_digitEv.exit.i41 ], [ %.val.i69.pre114.i28, %bb.ai ] ; 2 uses
  %.024.i.i30 = getelementptr inbounds i8, ptr %.val.i69.i29, i64 -1 ; 3 uses
  %i.ij = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %.not25.i.i31 = icmp ult ptr %.024.i.i30, %i.ij
  br i1 %.not25.i.i31, label %._crit_edge.i.i36, label %.lr.ph.i.i32
end_hunk_1
