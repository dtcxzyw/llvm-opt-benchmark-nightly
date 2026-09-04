Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_fast_lossless?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1186
loop-unroll.NumCompletelyUnrolled: 195
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 351
begin_hunk_0_@_ZN22default_implementation12_GLOBAL__N_122PrepareDCGlobalPaletteEbmmmPKN12_GLOBAL__N_110PrefixCodeERKNSt3__16vectorIjNS5_9allocatorIjEEEEmPNS1_9BitWriterE:bb.a
  store ptr %4, ptr %8, align 64, !tbaa !211
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep.i, ptr noundef nonnull readonly align 1 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %scevgep8.i, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.em, i64 16, i1 false)
  %i.en = call noalias noundef nonnull dereferenceable(8448) ptr @_Znwm(i64 noundef 8448) #40 ; 17 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(8448) %i.en, i8 0, i64 8448, i1 false)
  %.not95 = icmp eq i64 %6, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.eo = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2112 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 4224 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 6336 ; 2 uses
  %min.iters.check = icmp ult i64 %6, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %6, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %index
  %wide.load = load <4 x i32>, ptr %i.es, align 4, !tbaa !94 ; 3 uses
  %i.et = trunc <4 x i32> %wide.load to <4 x i16> ; 2 uses
  %i.eu = and <4 x i16> %i.et, splat (i16 255)
  %i.ev = add i64 %index, 17                      ; 4 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.ev
  store <4 x i16> %i.eu, ptr %i.ew, align 2, !tbaa !104
  %i.ex = lshr <4 x i16> %i.et, splat (i16 8)
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.ev
  store <4 x i16> %i.ex, ptr %i.ey, align 2, !tbaa !104
  %i.ez = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.fa = trunc nuw <4 x i32> %i.ez to <4 x i16>
  %i.fb = and <4 x i16> %i.fa, splat (i16 255)
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.ev
  store <4 x i16> %i.fb, ptr %i.fc, align 2, !tbaa !104
  %i.fd = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.fe = trunc nuw nsw <4 x i32> %i.fd to <4 x i16>
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %i.ev
  store <4 x i16> %i.fe, ptr %i.ff, align 2, !tbaa !104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !996

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.094.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.094 = phi i64 [ %i.fw, %scalar.ph ], [ %.094.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.094
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !94 ; 3 uses
  %i.fj = trunc i32 %i.fi to i16                  ; 2 uses
  %i.fk = and i16 %i.fj, 255
  %i.fl = add i64 %.094, 17                       ; 4 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.fl
  store i16 %i.fk, ptr %i.fm, align 2, !tbaa !104
  %i.fn = lshr i16 %i.fj, 8
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.fl
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !104
  %i.fp = lshr i32 %i.fi, 16
  %i.fq = trunc nuw i32 %i.fp to i16
  %i.fr = and i16 %i.fq, 255
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.fl
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !104
  %i.ft = lshr i32 %i.fi, 24
  %i.fu = trunc nuw nsw i32 %i.ft to i16
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %i.fl
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !104
  %i.fw = add nuw i64 %.094, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fw, %6
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !997

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.en, i64 30 ; 6 uses
  store i16 0, ptr %i.fx, align 2, !tbaa !104
  %i.fy = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 3 uses
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.fx, ptr noundef nonnull %i.fx, ptr noundef nonnull %i.fx, i64 noundef %6) #38
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !104 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.en, i64 2142 ; 4 uses
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !104
  store i16 %i.fz, ptr %i.fx, align 2, !tbaa !104
  %i.gb = icmp ugt i64 %3, 1
  br i1 %i.gb, label %bb.j, label %.thread

.thread:                                          ; preds = %._crit_edge
  %i.gc = getelementptr inbounds nuw i8, ptr %i.en, i64 4254
  br label %.thread93

bb.j:                                             ; preds = %._crit_edge
  %i.gd = getelementptr inbounds nuw i8, ptr %i.en, i64 2144 ; 3 uses
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.gd, ptr noundef nonnull %i.ga, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.fx, i64 noundef %6) #38
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !104 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.en, i64 4254 ; 5 uses
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !104
  store i16 %i.ge, ptr %i.ga, align 2, !tbaa !104
  %.not = icmp eq i64 %3, 2
  br i1 %.not, label %.thread93, label %bb.k

.thread93:                                        ; preds = %.thread, %bb.j
  %.ph = phi ptr [ %i.gf, %bb.j ], [ %i.gc, %.thread ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.en, i64 4256
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !104
  store i16 %i.gh, ptr %.ph, align 2, !tbaa !104
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 4256 ; 3 uses
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.gi, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gd, ptr noundef nonnull %i.ga, i64 noundef %6) #38
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !104 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.en, i64 6366 ; 2 uses
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !104
  store i16 %i.gj, ptr %i.gf, align 2, !tbaa !104
  %i.gl = icmp ugt i64 %3, 3
  br i1 %i.gl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gm = getelementptr inbounds nuw i8, ptr %i.en, i64 6368
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gk, ptr noundef nonnull %i.gi, ptr noundef nonnull %i.gf, i64 noundef %6) #38
  br label %bb.m

bb.m:                                             ; preds = %.thread93, %bb.l, %bb.k
  %.val = load ptr, ptr %9, align 8, !tbaa !208   ; 2 uses
  %.val57 = load i64, ptr %i.ek, align 8, !tbaa !207
  %.val.val = load ptr, ptr %.val, align 64, !tbaa !211
  %i.gn = getelementptr i8, ptr %.val, i64 8
  %.val.val58 = load ptr, ptr %i.gn, align 8, !tbaa !210
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E8FinalizeEv(ptr %.val.val, ptr %.val.val58, i64 %.val57) #38
  br i1 %0, label %_ZNSt3__16vectorINS_5arrayIsLm1056EEENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.go = load i64, ptr %i.e, align 8, !tbaa !86  ; 3 uses
  %.not.i = icmp eq i64 %i.go, 0
  br i1 %.not.i, label %_ZNSt3__16vectorINS_5arrayIsLm1056EEENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gp = sub i64 8, %i.go
  %i.gq = load ptr, ptr %7, align 8, !tbaa !71
  %i.gr = load i64, ptr %i.b, align 8, !tbaa !74
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gr
  %i.gt = load i64, ptr %i.f, align 8, !tbaa !68
  %i.gu = and i64 %i.gp, 4294967295
  %i.gv = add i64 %i.gu, %i.go
  store i64 %i.gv, ptr %i.e, align 8, !tbaa !68
  store i64 %i.gt, ptr %i.gs, align 1
  %i.gw = load i64, ptr %i.e, align 8, !tbaa !68  ; 3 uses
  %i.gx = lshr i64 %i.gw, 3
  %i.gy = and i64 %i.gw, -8
  %i.gz = and i64 %i.gw, 7
  store i64 %i.gz, ptr %i.e, align 8, !tbaa !68
  %i.ha = load i64, ptr %i.f, align 8, !tbaa !68
  %i.hb = lshr i64 %i.ha, %i.gy
  store i64 %i.hb, ptr %i.f, align 8, !tbaa !68
  %i.hc = load i64, ptr %i.b, align 8, !tbaa !74
  %i.hd = add i64 %i.hc, %i.gx
  store i64 %i.hd, ptr %i.b, align 8, !tbaa !74
  br label %_ZNSt3__16vectorINS_5arrayIsLm1056EEENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorINS_5arrayIsLm1056EEENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %bb.o, %bb.n, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 8448) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjLb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #32 {
bb.a:
  %i.a = zext i1 %4 to i8
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer

_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer: ; preds = %bb.dd, %bb.a
  %.0132.ph = phi ptr [ %i.aqo, %bb.dd ], [ %1, %bb.a ] ; 29 uses
  %.0129.ph = phi ptr [ %.0129, %bb.dd ], [ %0, %bb.a ]
  %.048.ph = phi i8 [ %.048.ph522, %bb.dd ], [ %i.a, %bb.a ]
  %.046.ph = phi i64 [ %i.tw, %bb.dd ], [ %3, %bb.a ]
  %i.b = ptrtoint ptr %.0132.ph to i64            ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.0132.ph, i64 -4 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.0132.ph, i64 -8
  %i.e = getelementptr inbounds i8, ptr %.0132.ph, i64 -12
  %i.f = getelementptr inbounds i8, ptr %.0132.ph, i64 -4 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.0132.ph, i64 -4 ; 3 uses
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520

_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520: ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer
  %.0129.ph521 = phi ptr [ %.0129.ph, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer ], [ %.0129.ph521.be, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge ]
  %.048.ph522 = phi i8 [ %.048.ph, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer ], [ 0, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge ] ; 3 uses
  %.046.ph523 = phi i64 [ %.046.ph, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer ], [ %i.tw, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520.backedge ]
  %i.h = trunc nuw i8 %.048.ph522 to i1           ; 2 uses
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit

_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit: ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520, %bb.de
  %.0129 = phi ptr [ %.154.lcssa.i, %bb.de ], [ %.0129.ph521, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520 ] ; 53 uses
  %.046 = phi i64 [ %i.tw, %bb.de ], [ %.046.ph523, %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.outer520 ] ; 2 uses
  %i.i = ptrtoint ptr %.0129 to i64               ; 4 uses
  %i.j = sub i64 %i.b, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 8 uses
  switch i64 %i.k, label %bb.j [
    i64 0, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread
    i64 1, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread
    i64 2, label %bb.b
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
  ]

bb.b:                                             ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit
  %i.l = getelementptr inbounds i8, ptr %.0132.ph, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !94   ; 3 uses
  %i.n = load i32, ptr %.0129, align 4, !tbaa !94 ; 3 uses
  %.val54 = load ptr, ptr %2, align 8
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %i.n, 0
  br i1 %i.p, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %i.n, i64 1 ; 4 uses
  %i.s = trunc <2 x i32> %i.r to <2 x i8>         ; 2 uses
  %i.t = lshr <2 x i32> %i.r, splat (i32 8)
  %i.u = trunc <2 x i32> %i.t to <2 x i8>         ; 2 uses
  %i.v = lshr <2 x i32> %i.r, splat (i32 16)
  %i.w = trunc <2 x i32> %i.v to <2 x i8>         ; 2 uses
  %i.x = load i64, ptr %.val54, align 8, !tbaa !68
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = lshr <2 x i32> %i.r, splat (i32 24)
  %i.aa = uitofp <2 x i8> %i.s to <2 x float>
  %i.ab = uitofp <2 x i8> %i.u to <2 x float>
  %i.ac = uitofp <2 x i8> %i.w to <2 x float>
  %i.ad = trunc nuw <2 x i32> %i.z to <2 x i8>
  %i.ae = fmul nnan <2 x float> %i.ab, splat (float 5.870000e-01)
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ae)
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> splat (float 1.140000e-01), <2 x float> %i.af)
  %i.ah = fadd <2 x float> %i.ag, splat (float f0x3C23D70A)
  %i.ai = uitofp <2 x i8> %i.ad to <2 x float>
  %i.aj = fmul <2 x float> %i.ah, %i.ai
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = uitofp <2 x i8> %i.s to <2 x float>
  %i.al = uitofp <2 x i8> %i.u to <2 x float>
  %i.am = uitofp <2 x i8> %i.w to <2 x float>
  %i.an = fmul nnan <2 x float> %i.al, splat (float 5.870000e-01)
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> splat (float 2.990000e-01), <2 x float> %i.an)
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ao)
  %i.aq = fadd <2 x float> %i.ap, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit: ; preds = %bb.e, %bb.f
  %i.ar = phi <2 x float> [ %i.aj, %bb.e ], [ %i.aq, %bb.f ] ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = extractelement <2 x float> %i.ar, i64 1
  %i.au = fcmp olt float %i.as, %i.at
  br i1 %i.au, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread: ; preds = %bb.c, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit
  store i32 %i.m, ptr %.0129, align 4, !tbaa !94
  store i32 %i.n, ptr %i.l, align 4, !tbaa !94
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread

bb.g:                                             ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.0129, i64 4
  %i.aw = getelementptr inbounds i8, ptr %.0132.ph, i64 -4
  tail call fastcc void @_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEjT1_SD_SD_T0_(ptr noundef %.0129, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #38
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread

bb.h:                                             ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.0129, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.0129, i64 8
  %i.az = getelementptr inbounds i8, ptr %.0132.ph, i64 -4
  tail call fastcc void @_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_SD_SD_T0_(ptr noundef %.0129, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #38
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread

bb.i:                                             ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.0129, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0129, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0129, i64 12
  %i.bd = getelementptr inbounds i8, ptr %.0132.ph, i64 -4
  tail call fastcc void @_ZNSt3__124__sort5_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSF_SF_SF_SF_SF_SE_(ptr noundef %.0129, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %2) #38
  br label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread

bb.j:                                             ; preds = %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit
  %i.be = icmp slt i64 %i.k, 24
  br i1 %i.be, label %bb.k, label %bb.ad

bb.k:                                             ; preds = %bb.j
  %i.bf = trunc nuw i8 %.048.ph522 to i1
  %i.bg = icmp eq ptr %.0129, %.0132.ph
  %storemerge36.i = getelementptr inbounds nuw i8, ptr %.0129, i64 4 ; 3 uses
  %.not37.i = icmp eq ptr %storemerge36.i, %.0132.ph
  %or.cond.i = select i1 %i.bg, i1 true, i1 %.not37.i ; 2 uses
  br i1 %i.bf, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  br i1 %or.cond.i, label %_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjEEvT1_SD_T0_.exit.thread, label %.lr.ph40.i.preheader

.lr.ph40.i.preheader:                             ; preds = %bb.l
  %.val19.i.pre306 = load ptr, ptr %2, align 8
  br label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.lr.ph40.i.preheader, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i
  %.val19.i = phi ptr [ %.val19.i307, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i ], [ %.val19.i.pre306, %.lr.ph40.i.preheader ] ; 3 uses
  %storemerge39.i = phi ptr [ %storemerge.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i ], [ %storemerge36.i, %.lr.ph40.i.preheader ] ; 3 uses
  %.pn38.i = phi ptr [ %storemerge39.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i ], [ %.0129, %.lr.ph40.i.preheader ] ; 3 uses
  %i.bh = load <2 x i32>, ptr %.pn38.i, align 4, !tbaa !94 ; 9 uses
  %i.bi = extractelement <2 x i32> %i.bh, i64 1   ; 3 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph40.i
  %i.bk = extractelement <2 x i32> %i.bh, i64 0   ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = trunc <2 x i32> %i.bh to <2 x i8>       ; 2 uses
  %i.bn = lshr <2 x i32> %i.bh, splat (i32 8)
  %i.bo = trunc <2 x i32> %i.bn to <2 x i8>       ; 2 uses
  %i.bp = lshr <2 x i32> %i.bh, splat (i32 16)
  %i.bq = trunc <2 x i32> %i.bp to <2 x i8>       ; 2 uses
  %i.br = load i64, ptr %.val19.i, align 8, !tbaa !68
  %i.bs = icmp eq i64 %i.br, 4
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = lshr <2 x i32> %i.bh, splat (i32 24)
  %i.bu = uitofp <2 x i8> %i.bm to <2 x float>
  %i.bv = uitofp <2 x i8> %i.bo to <2 x float>
  %i.bw = uitofp <2 x i8> %i.bq to <2 x float>
  %i.bx = trunc nuw <2 x i32> %i.bt to <2 x i8>
  %i.by = fmul nnan <2 x float> %i.bv, splat (float 5.870000e-01)
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> splat (float 2.990000e-01), <2 x float> %i.by)
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> splat (float 1.140000e-01), <2 x float> %i.bz)
  %i.cb = fadd <2 x float> %i.ca, splat (float f0x3C23D70A)
  %i.cc = uitofp <2 x i8> %i.bx to <2 x float>
  %i.cd = fmul <2 x float> %i.cb, %i.cc
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ce = uitofp <2 x i8> %i.bm to <2 x float>
  %i.cf = uitofp <2 x i8> %i.bo to <2 x float>
  %i.cg = uitofp <2 x i8> %i.bq to <2 x float>
  %i.ch = fmul nnan <2 x float> %i.cf, splat (float 5.870000e-01)
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> splat (float 2.990000e-01), <2 x float> %i.ch)
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> splat (float 1.140000e-01), <2 x float> %i.ci)
  %i.ck = fadd <2 x float> %i.cj, splat (float f0x3C23D70A)
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i: ; preds = %bb.p, %bb.o
  %i.cl = phi <2 x float> [ %i.cd, %bb.o ], [ %i.ck, %bb.p ] ; 2 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  %i.cn = extractelement <2 x float> %i.cl, i64 1
  %i.co = fcmp olt float %i.cn, %i.cm
  br i1 %i.co, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread30.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.i, %bb.m
  store i32 %i.bk, ptr %storemerge39.i, align 4, !tbaa !94
  %.not1833.i = icmp eq ptr %.pn38.i, %.0129
  br i1 %.not1833.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.thread.i
  %i.cp = trunc i32 %i.bi to i8
  %i.cq = bitcast <2 x i32> %i.bh to <8 x i8>
  %i.cr = extractelement <8 x i8> %i.cq, i64 5
  %i.cs = bitcast <2 x i32> %i.bh to <8 x i8>
  %i.ct = extractelement <8 x i8> %i.cs, i64 6
  %i.cu = uitofp i8 %i.cp to float
  %i.cv = uitofp i8 %i.cr to float
  %i.cw = fmul nnan float %i.cv, 5.870000e-01
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cu, float 2.990000e-01, float %i.cw)
  %i.cy = uitofp i8 %i.ct to float
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float 1.140000e-01, float %i.cx)
  %i.da = fadd float %i.cz, f0x3C23D70A           ; 2 uses
  %i.db = bitcast <2 x i32> %i.bh to <8 x i8>
  %i.dc = extractelement <8 x i8> %i.db, i64 7
  %i.dd = uitofp i8 %i.dc to float
  %i.de = fmul float %i.da, %i.dd
  br label %bb.q

bb.q:                                             ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i, %.lr.ph.i
  %.02834.i = phi ptr [ %.pn38.i, %.lr.ph.i ], [ %i.df, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i ] ; 3 uses
  %i.df = getelementptr inbounds i8, ptr %.02834.i, i64 -4 ; 3 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !94 ; 6 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.backedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i = load ptr, ptr %2, align 8
  %i.di = trunc i32 %i.dg to i8                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN22default_implementation12_GLOBAL__N_19LLPrepareINS3_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiEUljjE_PjLb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb:bb.a
.lr.ph.i79:                                       ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i
  %i.vx = trunc i32 %.fr125.i to i8
  %i.vy = lshr i32 %.fr125.i, 8
  %i.vz = trunc i32 %i.vy to i8
  %i.wa = lshr i32 %.fr125.i, 16
  %i.wb = trunc i32 %i.wa to i8
  %i.wc = uitofp i8 %i.vx to float
  %i.wd = uitofp i8 %i.vz to float
  %i.we = fmul nnan float %i.wd, 5.870000e-01
  %i.wf = tail call float @llvm.fmuladd.f32(float %i.wc, float 2.990000e-01, float %i.we)
  %i.wg = uitofp i8 %i.wb to float
  %i.wh = tail call float @llvm.fmuladd.f32(float %i.wg, float 1.140000e-01, float %i.wf)
  %i.wi = fadd float %i.wh, f0x3C23D70A           ; 2 uses
  %i.wj = lshr i32 %.fr125.i, 24
  %i.wk = trunc nuw i32 %i.wj to i8
  %i.wl = uitofp i8 %i.wk to float
  %i.wm = fmul float %i.wi, %i.wl
  br i1 %i.vs, label %.critedge.thread.i, label %.lr.ph.split.i

._crit_edge:                                      ; preds = %bb.bz, %.thread
  %i.wn = phi i32 [ %i.vp, %.thread ], [ %i.vq, %bb.bz ] ; 6 uses
  %i.wo = phi ptr [ %i.f, %.thread ], [ %i.g, %bb.bz ] ; 3 uses
  %.pre113.i.pre-phi = trunc i32 %.fr125.i to i8  ; 3 uses
  %i.wp = icmp eq i32 %i.wn, 0
  br i1 %i.wp, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge
  %i.wq = trunc i32 %i.wn to i8                   ; 2 uses
  %i.wr = insertelement <2 x i32> poison, i32 %.fr125.i, i64 0
  %i.ws = insertelement <2 x i32> %i.wr, i32 %i.wn, i64 1 ; 3 uses
  %i.wt = lshr <2 x i32> %i.ws, splat (i32 8)
  %i.wu = trunc <2 x i32> %i.wt to <2 x i8>       ; 2 uses
  %i.wv = lshr <2 x i32> %i.ws, splat (i32 16)
  %i.ww = trunc <2 x i32> %i.wv to <2 x i8>       ; 2 uses
  %i.wx = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.wy = icmp eq i64 %i.wx, 4
  br i1 %i.wy, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.wz = lshr <2 x i32> %i.ws, splat (i32 24)
  %i.xa = insertelement <2 x i8> poison, i8 %.pre113.i.pre-phi, i64 0
  %i.xb = insertelement <2 x i8> %i.xa, i8 %i.wq, i64 1
  %i.xc = uitofp <2 x i8> %i.xb to <2 x float>
  %i.xd = uitofp <2 x i8> %i.wu to <2 x float>
  %i.xe = uitofp <2 x i8> %i.ww to <2 x float>
  %i.xf = trunc nuw <2 x i32> %i.wz to <2 x i8>
  %i.xg = fmul nnan <2 x float> %i.xd, splat (float 5.870000e-01)
  %i.xh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xc, <2 x float> splat (float 2.990000e-01), <2 x float> %i.xg)
  %i.xi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xe, <2 x float> splat (float 1.140000e-01), <2 x float> %i.xh)
  %i.xj = fadd <2 x float> %i.xi, splat (float f0x3C23D70A)
  %i.xk = uitofp <2 x i8> %i.xf to <2 x float>
  %i.xl = fmul <2 x float> %i.xj, %i.xk
  br label %.split.i72

bb.cc:                                            ; preds = %bb.ca
  %i.xm = insertelement <2 x i8> poison, i8 %.pre113.i.pre-phi, i64 0
  %i.xn = insertelement <2 x i8> %i.xm, i8 %i.wq, i64 1
  %i.xo = uitofp <2 x i8> %i.xn to <2 x float>
  %i.xp = uitofp <2 x i8> %i.wu to <2 x float>
  %i.xq = uitofp <2 x i8> %i.ww to <2 x float>
  %i.xr = fmul nnan <2 x float> %i.xp, splat (float 5.870000e-01)
  %i.xs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xo, <2 x float> splat (float 2.990000e-01), <2 x float> %i.xr)
  %i.xt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xq, <2 x float> splat (float 1.140000e-01), <2 x float> %i.xs)
  %i.xu = fadd <2 x float> %i.xt, splat (float f0x3C23D70A)
  br label %.split.i72

.split.i72:                                       ; preds = %bb.cc, %bb.cb
  %i.xv = phi <2 x float> [ %i.xl, %bb.cb ], [ %i.xu, %bb.cc ] ; 2 uses
  %i.xw = extractelement <2 x float> %i.xv, i64 0
  %i.xx = extractelement <2 x float> %i.xv, i64 1
  %i.xy = fcmp olt float %i.xw, %i.xx
  br i1 %i.xy, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i: ; preds = %._crit_edge, %.split.i72
  %.pre-phi117.i.in = lshr i32 %.fr125.i, 8
  %.pre-phi117.i = trunc i32 %.pre-phi117.i.in to i8
  %.pre-phi121.i.in = lshr i32 %.fr125.i, 16
  %.pre-phi121.i = trunc i32 %.pre-phi121.i.in to i8
  %i.xz = uitofp i8 %.pre113.i.pre-phi to float
  %i.ya = uitofp i8 %.pre-phi117.i to float
  %i.yb = fmul nnan float %i.ya, 5.870000e-01
  %i.yc = tail call float @llvm.fmuladd.f32(float %i.xz, float 2.990000e-01, float %i.yb)
  %i.yd = uitofp i8 %.pre-phi121.i to float
  %i.ye = tail call float @llvm.fmuladd.f32(float %i.yd, float 1.140000e-01, float %i.yc)
  %i.yf = fadd float %i.ye, f0x3C23D70A           ; 2 uses
  %i.yg = lshr i32 %.fr125.i, 24
  %i.yh = trunc nuw i32 %i.yg to i8
  %i.yi = uitofp i8 %i.yh to float
  %i.yj = fmul float %i.yf, %i.yi
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i: ; preds = %.split62.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i
  %.057.i = phi ptr [ %i.yk, %.split62.i ], [ %.0129, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.preheader.i ]
  %i.yk = getelementptr inbounds nuw i8, ptr %.057.i, i64 4 ; 4 uses
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !94 ; 5 uses
  %i.ym = icmp eq i32 %i.yl, 0
  br i1 %i.ym, label %.critedge.i75, label %bb.cd

bb.cd:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i
  %i.yn = trunc i32 %i.yl to i8                   ; 2 uses
  %i.yo = lshr i32 %i.yl, 8
  %i.yp = trunc i32 %i.yo to i8                   ; 2 uses
  %i.yq = lshr i32 %i.yl, 16
  %i.yr = trunc i32 %i.yq to i8                   ; 2 uses
  %i.ys = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.yt = icmp eq i64 %i.ys, 4
  br i1 %i.yt, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.yu = lshr i32 %i.yl, 24
  %i.yv = trunc nuw i32 %i.yu to i8
  %i.yw = uitofp i8 %i.yn to float
  %i.yx = uitofp i8 %i.yp to float
  %i.yy = fmul nnan float %i.yx, 5.870000e-01
  %i.yz = tail call float @llvm.fmuladd.f32(float %i.yw, float 2.990000e-01, float %i.yy)
  %i.za = uitofp i8 %i.yr to float
  %i.zb = tail call float @llvm.fmuladd.f32(float %i.za, float 1.140000e-01, float %i.yz)
  %i.zc = fadd float %i.zb, f0x3C23D70A
  %i.zd = uitofp i8 %i.yv to float
  %i.ze = fmul float %i.zc, %i.zd
  br label %.split62.i

bb.cf:                                            ; preds = %bb.cd
  %i.zf = uitofp i8 %i.yn to float
  %i.zg = uitofp i8 %i.yp to float
  %i.zh = fmul nnan float %i.zg, 5.870000e-01
  %i.zi = tail call float @llvm.fmuladd.f32(float %i.zf, float 2.990000e-01, float %i.zh)
  %i.zj = uitofp i8 %i.yr to float
  %i.zk = tail call float @llvm.fmuladd.f32(float %i.zj, float 1.140000e-01, float %i.zi)
  %i.zl = fadd float %i.zk, f0x3C23D70A
  br label %.split62.i

.split62.i:                                       ; preds = %bb.cf, %bb.ce
  %.013.i20.i80 = phi float [ %i.yj, %bb.ce ], [ %i.yf, %bb.cf ]
  %.0.i21.i81 = phi float [ %i.ze, %bb.ce ], [ %i.zl, %bb.cf ]
  %i.zm = fcmp olt float %.013.i20.i80, %.0.i21.i81
  br i1 %i.zm, label %.critedge.i75, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i, !llvm.loop !1007

.lr.ph.split.i:                                   ; preds = %.lr.ph.i79, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i
  %i.zn = phi ptr [ %i.aaq, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i ], [ %i.vv, %.lr.ph.i79 ] ; 4 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !94 ; 5 uses
  %i.zp = icmp eq i32 %i.zo, 0
  br i1 %i.zp, label %.critedge.i75, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.split.i
  %i.zq = trunc i32 %i.zo to i8                   ; 2 uses
  %i.zr = lshr i32 %i.zo, 8
  %i.zs = trunc i32 %i.zr to i8                   ; 2 uses
  %i.zt = lshr i32 %i.zo, 16
  %i.zu = trunc i32 %i.zt to i8                   ; 2 uses
  %i.zv = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.zw = icmp eq i64 %i.zv, 4
  br i1 %i.zw, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.zx = lshr i32 %i.zo, 24
  %i.zy = trunc nuw i32 %i.zx to i8
  %i.zz = uitofp i8 %i.zq to float
  %i.aaa = uitofp i8 %i.zs to float
  %i.aab = fmul nnan float %i.aaa, 5.870000e-01
  %i.aac = tail call float @llvm.fmuladd.f32(float %i.zz, float 2.990000e-01, float %i.aab)
  %i.aad = uitofp i8 %i.zu to float
  %i.aae = tail call float @llvm.fmuladd.f32(float %i.aad, float 1.140000e-01, float %i.aac)
  %i.aaf = fadd float %i.aae, f0x3C23D70A
  %i.aag = uitofp i8 %i.zy to float
  %i.aah = fmul float %i.aaf, %i.aag
  br label %.split64.i

bb.ci:                                            ; preds = %bb.cg
  %i.aai = uitofp i8 %i.zq to float
  %i.aaj = uitofp i8 %i.zs to float
  %i.aak = fmul nnan float %i.aaj, 5.870000e-01
  %i.aal = tail call float @llvm.fmuladd.f32(float %i.aai, float 2.990000e-01, float %i.aak)
  %i.aam = uitofp i8 %i.zu to float
  %i.aan = tail call float @llvm.fmuladd.f32(float %i.aam, float 1.140000e-01, float %i.aal)
  %i.aao = fadd float %i.aan, f0x3C23D70A
  br label %.split64.i

.split64.i:                                       ; preds = %bb.ci, %bb.ch
  %.013.i24.i = phi float [ %i.wm, %bb.ch ], [ %i.wi, %bb.ci ]
  %.0.i25.i = phi float [ %i.aah, %bb.ch ], [ %i.aao, %bb.ci ]
  %i.aap = fcmp olt float %.013.i24.i, %.0.i25.i
  br i1 %i.aap, label %.critedge.i75, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i: ; preds = %.split64.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zn, i64 4 ; 3 uses
  %i.aar = icmp ult ptr %i.aaq, %.0132.ph
  br i1 %i.aar, label %.lr.ph.split.i, label %.critedge.i75, !llvm.loop !1008

.critedge.i75:                                    ; preds = %.split62.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i, %.split64.i, %.lr.ph.split.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i
  %i.aas = phi i1 [ false, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i ], [ %i.vs, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i ], [ false, %.lr.ph.split.i ], [ false, %.split64.i ], [ false, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i ], [ false, %.split62.i ]
  %i.aat = phi i32 [ %i.vt, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i ], [ %i.vt, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i ], [ %i.vt, %.lr.ph.split.i ], [ %i.vt, %.split64.i ], [ %i.wn, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i ], [ %i.wn, %.split62.i ]
  %i.aau = phi ptr [ %i.vu, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i ], [ %i.vu, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i ], [ %i.vu, %.lr.ph.split.i ], [ %i.vu, %.split64.i ], [ %i.wo, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i ], [ %i.wo, %.split62.i ] ; 2 uses
  %.259.i = phi ptr [ %i.aaq, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.backedge.i ], [ %i.vv, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit.preheader.i ], [ %i.zn, %.split64.i ], [ %i.zn, %.lr.ph.split.i ], [ %i.yk, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit23.i ], [ %i.yk, %.split62.i ] ; 3 uses
  %i.aav = icmp uge ptr %.259.i, %.0132.ph        ; 2 uses
  %brmerge.i = or i1 %i.aas, %i.aav
  %.mux.i = select i1 %i.aav, ptr %.0132.ph, ptr %i.aau
  br i1 %brmerge.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i, label %.lr.ph79.i

.critedge.thread.i:                               ; preds = %.lr.ph.i79
  %i.aaw = add i64 %i.i, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.aaw)
  %reass.sub = sub i64 %umax.i, %i.i
  %5 = add i64 %reass.sub, -5
  %i.aax = and i64 %5, -4
  %i.aay = getelementptr i8, ptr %.0129, i64 %i.aax
  %scevgep.i = getelementptr i8, ptr %i.aay, i64 8 ; 2 uses
  %i.aaz = icmp ult ptr %scevgep.i, %.0132.ph
  %spec.select.i = select i1 %i.aaz, ptr %i.vu, ptr %.0132.ph
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i

.lr.ph79.i:                                       ; preds = %.critedge.i75
  %i.aba = trunc i32 %.fr125.i to i8
  %i.abb = lshr i32 %.fr125.i, 8
  %i.abc = trunc i32 %i.abb to i8
  %i.abd = lshr i32 %.fr125.i, 16
  %i.abe = trunc i32 %i.abd to i8
  %i.abf = uitofp i8 %i.aba to float
  %i.abg = uitofp i8 %i.abc to float
  %i.abh = fmul nnan float %i.abg, 5.870000e-01
  %i.abi = tail call float @llvm.fmuladd.f32(float %i.abf, float 2.990000e-01, float %i.abh)
  %i.abj = uitofp i8 %i.abe to float
  %i.abk = tail call float @llvm.fmuladd.f32(float %i.abj, float 1.140000e-01, float %i.abi)
  %i.abl = fadd float %i.abk, f0x3C23D70A         ; 2 uses
  %i.abm = lshr i32 %.fr125.i, 24
  %i.abn = trunc nuw i32 %i.abm to i8
  %i.abo = uitofp i8 %i.abn to float
  %i.abp = fmul float %i.abl, %i.abo
  br label %bb.cj

bb.cj:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i, %.lr.ph79.i
  %i.abq = phi i32 [ %i.aat, %.lr.ph79.i ], [ %.pre.i78, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i ] ; 5 uses
  %i.abr = phi ptr [ %i.aau, %.lr.ph79.i ], [ %i.act, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i ] ; 2 uses
  %i.abs = icmp eq i32 %i.abq, 0
  br i1 %i.abs, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.abt = trunc i32 %i.abq to i8                 ; 2 uses
  %i.abu = lshr i32 %i.abq, 8
  %i.abv = trunc i32 %i.abu to i8                 ; 2 uses
  %i.abw = lshr i32 %i.abq, 16
  %i.abx = trunc i32 %i.abw to i8                 ; 2 uses
  %i.aby = load i64, ptr %.val19.i82.pre, align 8, !tbaa !68
  %i.abz = icmp eq i64 %i.aby, 4
  br i1 %i.abz, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.aca = lshr i32 %i.abq, 24
  %i.acb = trunc nuw i32 %i.aca to i8
  %i.acc = uitofp i8 %i.abt to float
  %i.acd = uitofp i8 %i.abv to float
  %i.ace = fmul nnan float %i.acd, 5.870000e-01
  %i.acf = tail call float @llvm.fmuladd.f32(float %i.acc, float 2.990000e-01, float %i.ace)
  %i.acg = uitofp i8 %i.abx to float
  %i.ach = tail call float @llvm.fmuladd.f32(float %i.acg, float 1.140000e-01, float %i.acf)
  %i.aci = fadd float %i.ach, f0x3C23D70A
  %i.acj = uitofp i8 %i.acb to float
  %i.ack = fmul float %i.aci, %i.acj
  br label %.split66.i

bb.cm:                                            ; preds = %bb.ck
  %i.acl = uitofp i8 %i.abt to float
  %i.acm = uitofp i8 %i.abv to float
  %i.acn = fmul nnan float %i.acm, 5.870000e-01
  %i.aco = tail call float @llvm.fmuladd.f32(float %i.acl, float 2.990000e-01, float %i.acn)
  %i.acp = uitofp i8 %i.abx to float
  %i.acq = tail call float @llvm.fmuladd.f32(float %i.acp, float 1.140000e-01, float %i.aco)
  %i.acr = fadd float %i.acq, f0x3C23D70A
  br label %.split66.i

.split66.i:                                       ; preds = %bb.cm, %bb.cl
  %.013.i28.i = phi float [ %i.abp, %bb.cl ], [ %i.abl, %bb.cm ]
  %.0.i29.i = phi float [ %i.ack, %bb.cl ], [ %i.acr, %bb.cm ]
  %i.acs = fcmp olt float %.013.i28.i, %.0.i29.i
  br i1 %i.acs, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.backedge.i: ; preds = %.split66.i, %bb.cj
  %i.act = getelementptr inbounds i8, ptr %i.abr, i64 -4 ; 2 uses
  %.pre.i78 = load i32, ptr %i.act, align 4, !tbaa !94
  br label %bb.cj

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i: ; preds = %.split66.i, %.critedge.thread.i, %.critedge.i75
  %.259141.i = phi ptr [ %.259.i, %.critedge.i75 ], [ %scevgep.i, %.critedge.thread.i ], [ %.259.i, %.split66.i ] ; 4 uses
  %.1.i = phi ptr [ %.mux.i, %.critedge.i75 ], [ %spec.select.i, %.critedge.thread.i ], [ %i.abr, %.split66.i ] ; 3 uses
  %i.acu = icmp ult ptr %.259141.i, %.1.i
  br i1 %i.acu, label %.lr.ph100.i, label %._crit_edge.i

.lr.ph100.i:                                      ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit31.thread.i
  %i.acv = trunc i32 %.fr125.i to i8
  %i.acw = lshr i32 %.fr125.i, 8
  %i.acx = trunc i32 %i.acw to i8
  %i.acy = lshr i32 %.fr125.i, 16
  %i.acz = trunc i32 %i.acy to i8
  %i.ada = uitofp i8 %i.acv to float
  %i.adb = uitofp i8 %i.acx to float
  %i.adc = fmul nnan float %i.adb, 5.870000e-01
  %i.add = tail call float @llvm.fmuladd.f32(float %i.ada, float 2.990000e-01, float %i.adc)
  %i.ade = uitofp i8 %i.acz to float
  %i.adf = tail call float @llvm.fmuladd.f32(float %i.ade, float 1.140000e-01, float %i.add)
  %i.adg = fadd float %i.adf, f0x3C23D70A         ; 3 uses
  %i.adh = lshr i32 %.fr125.i, 24
  %i.adi = trunc nuw i32 %i.adh to i8
  %i.adj = uitofp i8 %i.adi to float
  %i.adk = fmul float %i.adg, %i.adj              ; 2 uses
  %.pre111.i = load i32, ptr %.259141.i, align 4, !tbaa !94
  %.pre112.i = load i32, ptr %.1.i, align 4, !tbaa !94
  br label %.split84.i

.split84.i:                                       ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i, %.lr.ph100.i
  %i.adl = phi i32 [ %i.afi, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.pre112.i, %.lr.ph100.i ]
  %i.adm = phi i32 [ %i.afg, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.pre111.i, %.lr.ph100.i ]
  %.299.i = phi ptr [ %i.afh, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.1.i, %.lr.ph100.i ] ; 2 uses
  %.36098.i = phi ptr [ %.lcssa.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.thread.i ], [ %.259141.i, %.lr.ph100.i ] ; 2 uses
  store i32 %i.adl, ptr %.36098.i, align 4, !tbaa !94
  store i32 %i.adm, ptr %.299.i, align 4, !tbaa !94
  %.val15.i77 = load ptr, ptr %2, align 8         ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.36098.i, i64 4 ; 4 uses
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !94 ; 3 uses
  %i.adp = icmp eq i32 %i.ado, 0
  br i1 %i.adp, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %.split84.i
  %i.adq = load i64, ptr %.val15.i77, align 8, !tbaa !68
  %i.adr = icmp eq i64 %i.adq, 4
  br i1 %i.adr, label %.split67.us.i, label %.split67.i

.split67.us.i:                                    ; preds = %.lr.ph87.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i
  %i.ads = phi i32 [ %i.aem, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ %i.ado, %.lr.ph87.i ] ; 5 uses
  %i.adt = phi ptr [ %i.ael, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ %i.adn, %.lr.ph87.i ] ; 2 uses
  %i.adu = trunc i32 %i.ads to i8
  %i.adv = lshr i32 %i.ads, 8
  %i.adw = trunc i32 %i.adv to i8
  %i.adx = lshr i32 %i.ads, 16
  %i.ady = trunc i32 %i.adx to i8
  %i.adz = lshr i32 %i.ads, 24
  %i.aea = trunc nuw i32 %i.adz to i8
  %i.aeb = uitofp i8 %i.adu to float
  %i.aec = uitofp i8 %i.adw to float
  %i.aed = fmul nnan float %i.aec, 5.870000e-01
  %i.aee = tail call float @llvm.fmuladd.f32(float %i.aeb, float 2.990000e-01, float %i.aed)
  %i.aef = uitofp i8 %i.ady to float
  %i.aeg = tail call float @llvm.fmuladd.f32(float %i.aef, float 1.140000e-01, float %i.aee)
  %i.aeh = fadd float %i.aeg, f0x3C23D70A
  %i.aei = uitofp i8 %i.aea to float
  %i.aej = fmul float %i.aeh, %i.aei
  %i.aek = fcmp olt float %i.adk, %i.aej
  br i1 %i.aek, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i: ; preds = %.split67.us.i
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adt, i64 4 ; 3 uses
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !94 ; 2 uses
  %i.aen = icmp eq i32 %i.aem, 0
  br i1 %i.aen, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %.split67.us.i, !llvm.loop !1009

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i: ; preds = %.split67.i
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aes, i64 4 ; 3 uses
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !94 ; 2 uses
  %i.aeq = icmp eq i32 %i.aep, 0
  br i1 %i.aeq, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %.split67.i, !llvm.loop !1009

.split67.i:                                       ; preds = %.lr.ph87.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i
  %i.aer = phi i32 [ %i.aep, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.ado, %.lr.ph87.i ] ; 4 uses
  %i.aes = phi ptr [ %i.aeo, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.adn, %.lr.ph87.i ] ; 2 uses
  %i.aet = trunc i32 %i.aer to i8
  %i.aeu = lshr i32 %i.aer, 8
  %i.aev = trunc i32 %i.aeu to i8
  %i.aew = lshr i32 %i.aer, 16
  %i.aex = trunc i32 %i.aew to i8
  %i.aey = uitofp i8 %i.aet to float
  %i.aez = uitofp i8 %i.aev to float
  %i.afa = fmul nnan float %i.aez, 5.870000e-01
  %i.afb = tail call float @llvm.fmuladd.f32(float %i.aey, float 2.990000e-01, float %i.afa)
  %i.afc = uitofp i8 %i.aex to float
  %i.afd = tail call float @llvm.fmuladd.f32(float %i.afc, float 1.140000e-01, float %i.afb)
  %i.afe = fadd float %i.afd, f0x3C23D70A
  %i.aff = fcmp olt float %i.adg, %i.afe
  br i1 %i.aff, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i: ; preds = %.split67.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i, %.split67.us.i, %.split84.i
  %i.afg = phi i32 [ 0, %.split84.i ], [ %i.ads, %.split67.us.i ], [ 0, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ 0, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.aer, %.split67.i ]
  %.lcssa.i = phi ptr [ %i.adn, %.split84.i ], [ %i.adt, %.split67.us.i ], [ %i.ael, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.us92.i ], [ %i.aeo, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit35.i ], [ %i.aes, %.split67.i ] ; 3 uses
  br label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i

_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i: ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i
  %.3.i = phi ptr [ %.299.i, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.preheader.i ], [ %i.afh, %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge ]
  %i.afh = getelementptr inbounds i8, ptr %.3.i, i64 -4 ; 4 uses
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !94 ; 6 uses
  %i.afj = icmp eq i32 %i.afi, 0
  br i1 %i.afj, label %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i.backedge, label %bb.cn

bb.cn:                                            ; preds = %_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUljjE_clEjj.exit39.i
  %i.afk = trunc i32 %i.afi to i8                 ; 2 uses
  %i.afl = lshr i32 %i.afi, 8
  %i.afm = trunc i32 %i.afl to i8                 ; 2 uses
  %i.afn = lshr i32 %i.afi, 16
  %i.afo = trunc i32 %i.afn to i8                 ; 2 uses
  %i.afp = load i64, ptr %.val15.i77, align 8, !tbaa !68
  %i.afq = icmp eq i64 %i.afp, 4
  br i1 %i.afq, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.afr = lshr i32 %i.afi, 24
  %i.afs = trunc nuw i32 %i.afr to i8
  %i.aft = uitofp i8 %i.afk to float
  %i.afu = uitofp i8 %i.afm to float
end_hunk_1
