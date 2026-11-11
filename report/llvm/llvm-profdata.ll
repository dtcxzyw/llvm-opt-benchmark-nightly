Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-profdata?download=true
inline.NumInlined: 16600
inline.NumDeleted: 7559
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_15InstrProfRecordELj4ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E10destroyAllEv:bb.a
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #36
  br label %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.ad
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !520
  br label %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.i

_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.i, %_ZNKSt14default_deleteISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EEEclEPS6_.exit.i.i.i
  %i.al = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.i ], [ %i.ab, %_ZNKSt14default_deleteISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EEEclEPS6_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !591
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #36
  br label %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !520 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !521 ; 2 uses
  %.not4.i.i.i.1.i = icmp eq ptr %i.as, %i.au
  br i1 %.not4.i.i.i.1.i, label %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.1.i, label %.lr.ph.i.i.i.1.i

.lr.ph.i.i.i.1.i:                                 ; preds = %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.1.i
  %.05.i.i.i.1.i = phi ptr [ %i.bb, %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.1.i ], [ %i.as, %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i.i.1.i, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.1.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i.1.i, label %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.1.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.1.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.1.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !590
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #36
  br label %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.1.i

_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.1.i: ; preds = %bb.e, %.lr.ph.i.i.i.1.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.1.i, i64 24 ; 2 uses
  %.not.i.i.i.1.i = icmp eq ptr %i.bb, %i.au
  br i1 %.not.i.i.i.1.i, label %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.1.i, label %.lr.ph.i.i.i.1.i, !llvm.loop !13

_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.1.i: ; preds = %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.1.i
  %.pr.i.1.i = load ptr, ptr %i.ar, align 8, !tbaa !520
  br label %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.1.i

_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.1.i: ; preds = %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.1.i, %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.i
  %i.bc = phi ptr [ %.pr.i.1.i, %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.1.i ], [ %i.as, %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i.1.i, label %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.1.i, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.1.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !591
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #36
  br label %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.1.i

_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.1.i: ; preds = %bb.f, %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.1.i
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !520 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !521 ; 2 uses
  %.not4.i.i.i.2.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not4.i.i.i.2.i, label %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.2.i, label %.lr.ph.i.i.i.2.i

.lr.ph.i.i.i.2.i:                                 ; preds = %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.1.i, %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.2.i
  %.05.i.i.i.2.i = phi ptr [ %i.br, %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.2.i ], [ %i.bi, %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.1.i ] ; 3 uses
  %i.bl = load ptr, ptr %.05.i.i.i.2.i, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.2.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.i.i.2.i, label %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.2.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.2.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.2.i, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !590
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #36
  br label %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.2.i

_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.2.i: ; preds = %bb.g, %.lr.ph.i.i.i.2.i
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.2.i, i64 24 ; 2 uses
  %.not.i.i.i.2.i = icmp eq ptr %i.br, %i.bk
  br i1 %.not.i.i.i.2.i, label %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.2.i, label %.lr.ph.i.i.i.2.i, !llvm.loop !13

_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.2.i: ; preds = %_ZSt8_DestroyIN4llvm24InstrProfValueSiteRecordEEvPT_.exit.i.i.i.2.i
  %.pr.i.2.i = load ptr, ptr %i.z, align 8, !tbaa !520
  br label %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.2.i

_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.2.i: ; preds = %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.2.i, %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.1.i
  %i.bs = phi ptr [ %.pr.i.2.i, %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exitthread-pre-split.i.2.i ], [ %i.bi, %_ZNSt6vectorIN4llvm24InstrProfValueSiteRecordESaIS1_EED2Ev.exit.1.i ] ; 3 uses
  %.not.i.i1.i.2.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i1.i.2.i, label %_ZNSt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS2_EELm3EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.2.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !591
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #36
  br label %_ZNSt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS2_EELm3EED2Ev.exit

_ZNSt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS2_EELm3EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm24InstrProfValueSiteRecordEEvT_S3_.exit.i.2.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 72) #36
  br label %_ZNSt10unique_ptrISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EESt14default_deleteIS6_EED2Ev.exit.i.i

_ZNSt10unique_ptrISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EESt14default_deleteIS6_EED2Ev.exit.i.i: ; preds = %_ZNSt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS2_EELm3EED2Ev.exit, %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !375 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EESt14default_deleteIS6_EED2Ev.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !376
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #36
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i:                ; preds = %bb.i, %_ZNSt10unique_ptrISt5arrayISt6vectorIN4llvm24InstrProfValueSiteRecordESaIS3_EELm3EESt14default_deleteIS6_EED2Ev.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !184 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !377
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #36
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.j, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !375 ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit3.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !376
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #36
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit3.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit3.i.i:               ; preds = %bb.k, %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.ct = load ptr, ptr %i.x, align 8, !tbaa !184 ; 3 uses
  %.not.i.i.i4.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i4.i.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_15InstrProfRecordELj4ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit3.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !377
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #36
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_15InstrProfRecordELj4ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_15InstrProfRecordELj4ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit3.i.i, %bb.l
  %i.cz = add i32 %.0.i6, -1
  %i.da = and i32 %i.cz, %.0.i6                   ; 2 uses
  %.not11.i = icmp eq i32 %i.da, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3011

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_15InstrProfRecordELj4ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_15InstrProfRecordELj4ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph10, !llvm.loop !3012

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_15InstrProfRecordELj4ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12remapSamplesRKN4llvm10sampleprof15FunctionSamplesERN12_GLOBAL__N_114SymbolRemapperERNS_16sampleprof_errorE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 72), (80, 84), (88, 96)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(224) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) unnamed_addr #4 {
.else.i.i:
  %4 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %5 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %6 = alloca ptr, align 8                        ; 5 uses
  %7 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 7 uses
  %8 = alloca %"class.llvm::sampleprof::FunctionSamples", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  store i32 0, ptr %i.a, align 8, !tbaa !216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !217
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 72, i1 false)
  store ptr %i.a, ptr %i.c, align 8, !tbaa !218
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.a, ptr %i.d, align 8, !tbaa !219
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !220
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !216
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.g, align 8, !tbaa !217
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.f, ptr %i.h, align 8, !tbaa !218
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.f, ptr %i.i, align 8, !tbaa !219
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.j, align 8, !tbaa !220
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !216
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.l, align 8, !tbaa !217
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.k, ptr %i.n, align 8, !tbaa !219
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.p, align 8, !tbaa !148
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !149
  %i.q = tail call fastcc { ptr, i64 } @_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.t, align 8, !tbaa !148
  %.sroa.2.0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.s, ptr %.sroa.2.0..sroa_idx.i.i37, align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.u, i8 0, i64 20, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !566
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !566
  %spec.select.i.i.i = tail call i64 @llvm.uadd.sat.i64(i64 %i.y, i64 %i.w)
  store i64 %spec.select.i.i.i, ptr %i.x, align 8, !tbaa !566
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1004
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1004
  %spec.select.i.i.i45 = tail call i64 @llvm.uadd.sat.i64(i64 %i.ac, i64 %i.aa)
  store i64 %spec.select.i.i.i45, ptr %i.ab, align 8, !tbaa !1004
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !218 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.not120 = icmp eq ptr %i.ae, %i.af
  br i1 %.not120, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %.else.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.a

._crit_edge123:                                   ; preds = %._crit_edge, %.else.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !218 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.not98129 = icmp eq ptr %i.am, %i.an
  br i1 %.not98129, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %._crit_edge123
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.2.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 184
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 88
  br label %bb.u

bb.a:                                             ; preds = %.lr.ph122, %._crit_edge
  %.sroa.086.0121 = phi ptr [ %i.ae, %.lr.ph122 ], [ %i.ci, %._crit_edge ] ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.086.0121, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.086.0121, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3027
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL25FSDiscriminatorPassOption, i64 120), align 8, !tbaa !712
  %i.az = mul i32 %i.ay, 6                        ; 2 uses
  %i.ba = icmp eq i32 %i.az, 24
  %i.bb = add i32 %i.az, 8
  %notmask.i.i = shl nsw i32 -1, %i.bb
  %i.bc = xor i32 %notmask.i.i, -1
  %.0.i.i46 = select i1 %i.ba, i32 -1, i32 %i.bc
  %i.bd = and i32 %.0.i.i46, %i.ax                ; 4 uses
  %i.be = load i32, ptr %i.av, align 8, !tbaa !3028
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.086.0121, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !718
  %i.bh = call noundef i32 @_ZN4llvm10sampleprof15FunctionSamples14addBodySamplesEjjmm(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.be, i32 noundef %i.bd, i64 noundef %i.bg, i64 noundef 1) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.086.0121, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !778, !noalias !3029
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.086.0121, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !780, !noalias !3029 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.086.0121, i64 68
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !777, !noalias !3029 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.086.0121, i64 64
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !779, !noalias !3029
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = zext i32 %i.bn to i64                   ; 4 uses
  %.idx212 = mul nuw nsw i64 %i.br, 24            ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.bn, 0
  %or.cond = select i1 %i.bq, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bs = add nuw nsw i64 %i.br, 31
  %i.bt = lshr i64 %i.bs, 5                       ; 2 uses
  %i.bu = load i32, ptr %i.bl, align 4, !tbaa !234, !noalias !3030 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.bw = icmp eq i64 %i.bt, 1
  br i1 %i.bw, label %._crit_edge, label %.lr.ph231

.lr.ph.i.i.i:                                     ; preds = %.lr.ph231
  %i.bx = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.bt
  br i1 %i.by, label %._crit_edge, label %.lr.ph231, !llvm.loop !3017

.lr.ph231:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bz = phi i64 [ %i.bx, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !234, !noalias !3030 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !3017

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph231
  %i.cd = mul i64 %i.bz, 768
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.cd, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.bu, %bb.b ], [ %i.cb, %._crit_edge.i.loopexit.i.i ]
  %i.ce = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.ce, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.cf = add i64 %.012.lcssa.i.i.i, %.idx        ; 2 uses
  %.not100118 = icmp eq i64 %i.cf, %.idx212
  br i1 %.not100118, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv.exit
  %i.cg = add nuw nsw i64 %i.br, 31
  %i.ch = lshr i64 %i.cg, 5                       ; 2 uses
  %.sroa.4150.0.insert.ext = zext i32 %i.bd to i64
  %.sroa.4150.0.insert.shift = shl nuw i64 %.sroa.4150.0.insert.ext, 32
  br label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit, %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit, %.lr.ph.i.i50.preheader, %.lr.ph.i.i50, %.lr.ph.i.i.i.preheader, %bb.a, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv.exit
  %i.ci = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.086.0121) #38 ; 2 uses
  %.not = icmp eq ptr %i.ci, %i.af
  br i1 %.not, label %._crit_edge123, label %bb.a

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit
  %.pn = phi i64 [ %i.cf, %.lr.ph ], [ %i.iy, %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit ] ; 2 uses
  %.sroa.082.0119 = getelementptr i8, ptr %i.bj, i64 %.pn ; 3 uses
  %i.cj = load i32, ptr %i.av, align 8, !tbaa !3028 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.082.0119, align 8, !tbaa !148 ; 8 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.082.0119, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !149
  %.sroa.22.0.copyload.fr.i.i = freeze i64 %.sroa.2.0.copyload ; 9 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ck = load ptr, ptr %i.ag, align 8, !tbaa !684, !noalias !3031 ; 2 uses
  %i.cl = load ptr, ptr %i.ah, align 8, !tbaa !908, !noalias !3031 ; 3 uses
  %i.cm = load i32, ptr %i.ai, align 4, !tbaa !683, !noalias !3031 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.co = add i32 %i.cm, -1                       ; 3 uses
  %i.cp = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr nonnull %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload.fr.i.i) #35
  %.01627.i.i = and i32 %i.cp, %i.co              ; 4 uses
  %i.cq = zext i32 %.01627.i.i to i64             ; 3 uses
  %i.cr = lshr i64 %i.cq, 5
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !234
  %i.cu = and i32 %.01627.i.i, 31
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = trunc i32 %i.cv to i1
end_hunk_0
begin_hunk_1_@_ZL12remapSamplesRKN4llvm10sampleprof15FunctionSamplesERN12_GLOBAL__N_114SymbolRemapperERNS_16sampleprof_errorE:.else.i.i
  br i1 %.not.i.i.us.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E6lookupERKS2_.exit.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i, !prof !909

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.da = add nuw i32 %.01628.us.i.i, 1
  %.016.us.i.i = and i32 %i.da, %i.co             ; 3 uses
  %i.db = zext i32 %.016.us.i.i to i64            ; 2 uses
  %i.dc = lshr i64 %i.db, 5
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !234
  %i.df = and i32 %.016.us.i.i, 31
  %i.dg = lshr i32 %i.de, %i.df
  %i.dh = trunc i32 %i.dg to i1
  br i1 %i.dh, label %.lr.ph.split.us.i.i, label %_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE.exit, !prof !320

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i
  %i.di = phi i64 [ %i.dm, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ], [ %i.cq, %.lr.ph.i.i ]
  %.01628.i.i = phi i32 [ %.016.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ], [ %.01627.i.i, %.lr.ph.i.i ]
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.di ; 3 uses
  %.sroa.2.0..sroa_idx.i.i47 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.2.0.copyload.i.i48 = load i64, ptr %.sroa.2.0..sroa_idx.i.i47, align 8, !tbaa !149
  %.not.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.fr.i.i, %.sroa.2.0.copyload.i.i48
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, !prof !909

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i: ; preds = %.lr.ph.split.i.i
  %.sroa.0.0.copyload.i3.i = load ptr, ptr %i.dj, align 8, !tbaa !148
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %.sroa.0.0.copyload, ptr %.sroa.0.0.copyload.i3.i, i64 %.sroa.22.0.copyload.fr.i.i)
  %i.dk = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.dk, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E6lookupERKS2_.exit.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, !prof !910

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, %.lr.ph.split.i.i
  %i.dl = add nuw i32 %.01628.i.i, 1
  %.016.i.i = and i32 %i.dl, %i.co                ; 3 uses
  %i.dm = zext i32 %.016.i.i to i64               ; 2 uses
  %i.dn = lshr i64 %i.dm, 5
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !234
  %i.dq = and i32 %.016.i.i, 31
  %i.dr = lshr i32 %i.dp, %i.dq
  %i.ds = trunc i32 %i.dr to i1
  br i1 %i.ds, label %.lr.ph.split.i.i, label %_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE.exit, !prof !320

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E6lookupERKS2_.exit.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, %.lr.ph.split.us.i.i
  %.3.i.i = phi ptr [ %i.cz, %.lr.ph.split.us.i.i ], [ %i.dj, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 16
  %.sroa.0.0.copyload.i.i49 = load ptr, ptr %i.dt, align 8, !tbaa !148
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 24
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !149 ; 2 uses
  %i.du = icmp eq i64 %.sroa.4.0.copyload.i.i, 0  ; 2 uses
  %spec.select.i = select i1 %i.du, ptr %.sroa.0.0.copyload, ptr %.sroa.0.0.copyload.i.i49
  %spec.select21.i = select i1 %i.du, i64 %.sroa.22.0.copyload.fr.i.i, i64 %.sroa.4.0.copyload.i.i
  br label %_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE.exit

_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE.exit: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i, %bb.c, %bb.d, %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E6lookupERKS2_.exit.i
  %.sroa.013.1.i = phi ptr [ null, %bb.c ], [ %.sroa.0.0.copyload, %bb.d ], [ %spec.select.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E6lookupERKS2_.exit.i ], [ %.sroa.0.0.copyload, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i ], [ %.sroa.0.0.copyload, %bb.e ], [ %.sroa.0.0.copyload, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ] ; 3 uses
  %.sroa.414.1.i = phi i64 [ %.sroa.22.0.copyload.fr.i.i, %bb.c ], [ %.sroa.22.0.copyload.fr.i.i, %bb.d ], [ %spec.select21.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEEES2_S2_S4_S7_E6lookupERKS2_.exit.i ], [ 0, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i ], [ %.sroa.22.0.copyload.fr.i.i, %bb.e ], [ %.sroa.22.0.copyload.fr.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.082.0119, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !3033 ; 2 uses
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !217 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not11.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE.exit, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i ], [ %i.dx, %_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE.exit ] ; 5 uses
  %.0812.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i ], [ %i.a, %_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE.exit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 36
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !234 ; 2 uses
  %i.eb = icmp ult i32 %i.ea, %i.cj
  br i1 %i.eb, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ec = icmp ult i32 %i.cj, %i.ea
  br i1 %i.ec, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ed = load i32, ptr %i.dz, align 4, !tbaa !234
  %i.ee = icmp ult i32 %i.ed, %i.bd
  br i1 %i.ee, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  br label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i, %bb.f
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ 16, %bb.f ], [ 16, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0812.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ %.013.i.i.i.i.i, %bb.f ], [ %.013.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i ] ; 9 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i
  %i.eg = icmp eq ptr %.19.i.i.i.i.i, %i.a
  br i1 %i.eg, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !234 ; 2 uses
  %i.ek = icmp ult i32 %i.cj, %i.ej
  br i1 %i.ek, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.el = icmp ult i32 %i.ej, %i.cj
  br i1 %i.el, label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i: ; preds = %bb.h
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !234
  %i.en = icmp ult i32 %i.bd, %i.em
  br i1 %i.en, label %.critedge.i.i, label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i

.critedge.i.i:                                    ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i, %bb.g, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i, %_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE.exit
  %.08.lcssa.i.i.i11.i.i = phi ptr [ %i.a, %_ZN12_GLOBAL__N_114SymbolRemapperclEN4llvm10sampleprof10FunctionIdE.exit ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i ], [ %.19.i.i.i.i.i, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i ], [ %.19.i.i.i.i.i, %bb.g ]
  %i.eo = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37 ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32 ; 3 uses
  %.sroa.0149.0.insert.ext = zext i32 %i.cj to i64
  %.sroa.0149.0.insert.insert = or disjoint i64 %.sroa.4150.0.insert.shift, %.sroa.0149.0.insert.ext
  store i64 %.sroa.0149.0.insert.insert, ptr %i.ep, align 8, !tbaa !234
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i8 0, i64 32, i1 false)
  %i.er = call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr %.08.lcssa.i.i.i11.i.i, ptr noundef nonnull align 4 dereferenceable(8) %i.ep) ; 2 uses
  %i.es = extractvalue { ptr, ptr } %i.er, 0      ; 2 uses
  %i.et = extractvalue { ptr, ptr } %i.er, 1      ; 5 uses
  %.not.i62 = icmp eq ptr %i.et, null
  br i1 %.not.i62, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.critedge.i.i
  %.not.i.i.i = icmp ne ptr %i.es, null
  %i.eu = icmp eq ptr %i.et, %i.a
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.eu
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 36
  %i.ey = load i32, ptr %i.ep, align 8, !tbaa !234 ; 2 uses
  %i.ez = load i32, ptr %i.ev, align 4, !tbaa !234 ; 2 uses
  %i.fa = icmp ult i32 %i.ey, %i.ez
  br i1 %i.fa, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fb = icmp ult i32 %i.ez, %i.ey
  br i1 %i.fb, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fc = load i32, ptr %i.ew, align 4, !tbaa !234
  %i.fd = load i32, ptr %i.ex, align 4, !tbaa !234
  %i.fe = icmp ult i32 %i.fc, %i.fd
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ff = phi i1 [ %i.fe, %bb.l ], [ true, %bb.i ], [ true, %bb.j ], [ false, %bb.k ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ff, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #35
  %i.fg = load i64, ptr %i.e, align 8, !tbaa !220
  %i.fh = add i64 %i.fg, 1
  store i64 %i.fh, ptr %i.e, align 8, !tbaa !220
  br label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i

bb.m:                                             ; preds = %.critedge.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 68
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !777 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !778
  %i.fn = zext i32 %i.fj to i64                   ; 2 uses
  %i.fo = mul nuw nsw i64 %i.fn, 24
  %i.fp = add nuw nsw i64 %i.fn, 31
  %i.fq = lshr i64 %i.fp, 3
  %i.fr = and i64 %i.fq, 1073741820
  %i.fs = add nuw nsw i64 %i.fr, %i.fo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fm, i64 noundef %i.fs, i64 noundef 8) #35
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i

_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i: ; preds = %bb.n, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 72) #36
  br label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i

_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i: ; preds = %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, %.thread.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i, %bb.h
  %.sroa.06.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.h ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i ], [ %i.eo, %.thread.i ], [ %i.es, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.013.1.i, ptr %7, align 8
  store i64 %.sroa.414.1.i, ptr %i.ak, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 48 ; 4 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !778, !noalias !3034 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 56 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !780, !noalias !3034 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 68 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !777, !noalias !3034 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i
  %i.ga = add i32 %i.fy, -1                       ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %.sroa.013.1.i, null
  br i1 %.not.i.i.i69, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %4) #35
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %4, ptr nonnull %.sroa.013.1.i, i64 %.sroa.414.1.i) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %4, ptr noundef nonnull align 1 dereferenceable(16) %5) #35
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i70 = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i, %bb.p ], [ %.sroa.414.1.i, %bb.o ]
  %i.gb = trunc i64 %.0.i.i.i70 to i32
  %i.gc = and i32 %i.ga, %i.gb                    ; 3 uses
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %i.gd ; 2 uses
  %i.gf = lshr i64 %i.gd, 5
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !234
  %i.gi = and i32 %i.gc, 31
  %i.gj = lshr i32 %i.gh, %i.gi
  %i.gk = trunc i32 %i.gj to i1
  br i1 %i.gk, label %.lr.ph.i.preheader, label %.loopexit, !prof !319

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i
  %i.gl = load i64, ptr %i.ak, align 8, !tbaa !664 ; 2 uses
  %i.gm = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.gm, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread
  %i.gn = phi ptr [ %i.gx, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread ], [ %i.ge, %.lr.ph.i.preheader ] ; 4 uses
  %.024.i = phi i32 [ %i.gv, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread ], [ %i.gc, %.lr.ph.i.preheader ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !664
  %i.gq = icmp eq i64 %i.gl, %i.gp
  br i1 %i.gq, label %bb.q, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, !prof !909

bb.q:                                             ; preds = %.lr.ph.i
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !663 ; 3 uses
  %i.gs = icmp eq ptr %i.gm, %i.gr
  br i1 %i.gs, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not9.i.i.i.i = icmp eq ptr %i.gr, null
  %or.cond.i.i.i73 = or i1 %.not.i.i.i.i72, %.not9.i.i.i.i
  br i1 %or.cond.i.i.i73, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit, !prof !1005

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit: ; preds = %bb.r
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.gm, ptr nonnull %i.gr, i64 %i.gl)
  %i.gt = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.gt, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, !prof !910

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread: ; preds = %bb.r, %.lr.ph.i, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit
  %i.gu = add nuw i32 %.024.i, 1
  %i.gv = and i32 %i.gu, %i.ga                    ; 3 uses
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %i.gw ; 2 uses
  %i.gy = lshr i64 %i.gw, 5
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !234
  %i.hb = and i32 %i.gv, 31
  %i.hc = lshr i32 %i.ha, %i.hb
  %i.hd = trunc i32 %i.hc to i1
  br i1 %i.hd, label %.lr.ph.i, label %.loopexit, !prof !320, !llvm.loop !101

.loopexit:                                        ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i
  %.lcssa29.sink.i.ph = phi ptr [ %i.ge, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ], [ null, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i ], [ %i.gx, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.lcssa29.sink.i.ph, ptr %6, align 8, !tbaa !1006
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 64 ; 3 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !779
  %i.hg = load i32, ptr %i.fx, align 4, !tbaa !777 ; 2 uses
  %i.hh = shl i32 %i.hf, 2
  %i.hi = add i32 %i.hh, 4
  %i.hj = mul i32 %i.hg, 3
  %.not.i.i59 = icmp ult i32 %i.hi, %i.hj
  br i1 %.not.i.i59, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, label %bb.s, !prof !295

bb.s:                                             ; preds = %.loopexit
  %i.hk = shl i32 %i.hg, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.ft, i32 noundef %i.hk)
  %i.hl = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 0 uses
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !1006
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i: ; preds = %bb.s, %.loopexit
  %i.hm = phi ptr [ %.pre.i.i, %bb.s ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 4 uses
  %i.hn = load ptr, ptr %i.fv, align 8, !tbaa !780
  %i.ho = load ptr, ptr %i.ft, align 8, !tbaa !778
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = sdiv exact i64 %i.hr, 24                ; 2 uses
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = and i32 %i.ht, 31
  %i.hv = shl nuw i32 1, %i.hu
  %i.hw = lshr i64 %i.hs, 5
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hw ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !234
  %i.hz = or i32 %i.hv, %i.hy
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !234
  %i.ia = load i32, ptr %i.he, align 8, !tbaa !779
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.he, align 8, !tbaa !779
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !515
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store i64 0, ptr %i.ic, align 8, !tbaa !149
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit: ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit, %bb.q
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !149
  %i.id = call i64 @llvm.uadd.sat.i64(i64 %.pre, i64 %i.dw)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i
  %spec.select.i.i.i.i = phi i64 [ %i.dw, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i ], [ %i.id, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit ]
  %.sroa.0.0.i = phi ptr [ %i.hm, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i ], [ %i.gn, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  store i64 %spec.select.i.i.i.i, ptr %i.ie, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.if = add i64 %.pn, 24
  %i.ig = sdiv exact i64 %i.if, 24                ; 3 uses
  %.not.i.i = icmp ult i64 %i.ig, %i.br
  br i1 %.not.i.i, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit
  %i.ih = lshr i64 %i.ig, 5                       ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !234
  %i.ik = trunc nuw i64 %i.ig to i32
  %i.il = and i32 %i.ik, 31
  %i.im = shl nsw i32 -1, %i.il
  %i.in = and i32 %i.ij, %i.im                    ; 2 uses
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %.lr.ph.i.i50.preheader, label %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit

.lr.ph.i.i50.preheader:                           ; preds = %bb.t
  %i.ip = add nuw nsw i64 %i.ih, 1                ; 2 uses
  %i.iq = icmp eq i64 %i.ip, %i.ch
  br i1 %i.iq, label %._crit_edge, label %.lr.ph232

.lr.ph.i.i50:                                     ; preds = %.lr.ph232
  %i.ir = add i64 %i.it, 1                        ; 2 uses
  %i.is = icmp eq i64 %i.ir, %i.ch
  br i1 %i.is, label %._crit_edge, label %.lr.ph232, !llvm.loop !3017

.lr.ph232:                                        ; preds = %.lr.ph.i.i50.preheader, %.lr.ph.i.i50
  %i.it = phi i64 [ %i.ir, %.lr.ph.i.i50 ], [ %i.ip, %.lr.ph.i.i50.preheader ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !234 ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %.lr.ph.i.i50, label %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit, !llvm.loop !3017

_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit: ; preds = %.lr.ph232, %bb.t
  %.012.lcssa.i.i = phi i64 [ %i.ih, %bb.t ], [ %i.it, %.lr.ph232 ]
  %.0.lcssa.i.i = phi i32 [ %i.in, %bb.t ], [ %i.iv, %.lr.ph232 ]
  %i.ix = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = mul i64 %.012.lcssa.i.i, 768
  %narrow214 = mul nuw nsw i32 %i.ix, 24
  %.idx213 = zext nneg i32 %narrow214 to i64
  %i.iy = add i64 %.idx.i.i, %.idx213             ; 2 uses
  %.not100 = icmp eq i64 %i.iy, %.idx212
  br i1 %.not100, label %._crit_edge, label %bb.c

._crit_edge133:                                   ; preds = %._crit_edge128, %._crit_edge123
  ret void

bb.u:                                             ; preds = %.lr.ph132, %._crit_edge128
  %.sroa.078.0130 = phi ptr [ %i.am, %.lr.ph132 ], [ %i.jh, %._crit_edge128 ] ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.078.0130, i64 32
  %i.ja = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm10sampleprof15FunctionSamples17functionSamplesAtERKNS0_12LineLocationE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.iz) ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.078.0130, i64 64
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !218 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.078.0130, i64 48 ; 2 uses
  %.not99124 = icmp eq ptr %i.jc, %i.jd
  br i1 %.not99124, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.u
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 40 ; 2 uses
  br label %bb.v

._crit_edge128:                                   ; preds = %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit, %bb.u
  %i.jh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.078.0130) #38 ; 2 uses
  %.not98 = icmp eq ptr %i.jh, %i.an
  br i1 %.not98, label %._crit_edge133, label %bb.u

bb.v:                                             ; preds = %.lr.ph127, %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit
  %.sroa.074.0125 = phi ptr [ %i.jc, %.lr.ph127 ], [ %i.mk, %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.074.0125, i64 48
  call fastcc void @_ZL12remapSamplesRKN4llvm10sampleprof15FunctionSamplesERN12_GLOBAL__N_114SymbolRemapperERNS_16sampleprof_errorE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(224) %i.ji, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.sroa.0.0.copyload.i.i51 = load ptr, ptr %i.ao, align 8, !tbaa !148
  %.fr.i.i.i.i = freeze ptr %.sroa.0.0.copyload.i.i51 ; 6 uses
  %.sroa.2.0.copyload.i.i53 = load i64, ptr %.sroa.2.0..sroa_idx.i.i52, align 8, !tbaa !149 ; 6 uses
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !217 ; 3 uses
  %.not14.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not14.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v
  %.not9.i.i.i.i.i.i.i.i = icmp eq ptr %.fr.i.i.i.i, null ; 2 uses
  br i1 %.not9.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i
  %.016.us.i.i.i.i = phi ptr [ %.1.us.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i ], [ %i.jj, %.lr.ph.i.i.i.i ] ; 5 uses
  %.0815.us.i.i.i.i = phi ptr [ %.19.us.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i ], [ %i.jf, %.lr.ph.i.i.i.i ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i.i, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !663
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i.i, i64 40
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !149
  %i.jp = icmp ult i64 %i.jo, %.sroa.2.0.copyload.i.i53 ; 2 uses
  %spec.select.i.i.i.i58 = select i1 %i.jp, i64 24, i64 16
  %spec.select22.i.i.i.i = select i1 %i.jp, ptr %.0815.us.i.i.i.i, ptr %.016.us.i.i.i.i
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ %spec.select.i.i.i.i58, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i ], [ 16, %.lr.ph.split.us.i.i.i.i ]
  %.19.us.i.i.i.i = phi ptr [ %spec.select22.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i ], [ %.016.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.us.i.i.i.i = load ptr, ptr %i.jq, align 8, !tbaa !318 ; 2 uses
  %.not.us.i.i.i.i = icmp eq ptr %.1.us.i.i.i.i, null
  br i1 %.not.us.i.i.i.i, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.split.us.i.i.i.i, !llvm.loop !102

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %i.jj, %.lr.ph.i.i.i.i ] ; 5 uses
  %.0815.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %i.jf, %.lr.ph.i.i.i.i ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !663 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 40
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !149 ; 2 uses
  %i.jv = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i53, i64 %i.ju)
  %i.jw = icmp eq ptr %i.js, %.fr.i.i.i.i
  br i1 %i.jw, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.jx = call i32 @memcmp(ptr noundef nonnull %i.js, ptr noundef nonnull %.fr.i.i.i.i, i64 noundef %i.jv) #38 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.jx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i
  %i.jy = icmp ult i64 %i.ju, %.sroa.2.0.copyload.i.i53
  br i1 %i.jy, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i.i
  %i.jz = icmp slt i32 %i.jx, 0
  br i1 %i.jz, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i, %bb.w
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i
  %.sink21.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i ], [ 16, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0815.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i ], [ %.016.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i ], [ %.016.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 %.sink21.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ka, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i56, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !102

_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i
  %.08.lcssa.i.i.i.i = phi ptr [ %.19.us.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i ] ; 10 uses
  %i.kb = icmp eq ptr %.08.lcssa.i.i.i.i, %i.jf
  br i1 %i.kb, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !663 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i, i64 40
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !149 ; 2 uses
  %i.kg = call i64 @llvm.umin.i64(i64 %i.kf, i64 %.sroa.2.0.copyload.i.i53)
  %i.kh = icmp eq ptr %.fr.i.i.i.i, %i.kd
  br i1 %i.kh, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not9.i.i.i.i.i.i.i.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not9.i.i.i.i.i = icmp eq ptr %i.kd, null
  br i1 %.not9.i.i.i.i.i, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.z
  %i.ki = call i32 @memcmp(ptr noundef nonnull %.fr.i.i.i.i, ptr noundef nonnull %i.kd, i64 noundef %i.kg) #38 ; 2 uses
  %.not.i.i.i4.i = icmp eq i32 %i.ki, 0
  br i1 %.not.i.i.i4.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.x
  %i.kj = icmp ult i64 %.sroa.2.0.copyload.i.i53, %i.kf
  br i1 %i.kj, label %.critedge.i, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i
  %i.kk = icmp slt i32 %i.ki, 0
  br i1 %i.kk, label %.critedge.i, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.y, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.v
  %.08.lcssa.i.i.i12.i = phi ptr [ %i.jf, %bb.v ], [ %.08.lcssa.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i ], [ %.08.lcssa.i.i.i.i, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ %.08.lcssa.i.i.i.i, %bb.y ], [ %.08.lcssa.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i ]
end_hunk_1
begin_hunk_2_@_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE:bb.a
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !378
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !378
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #35 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !378 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !384
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !295

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !116
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !378
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !378
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !1011
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !1010
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !378
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #35
  %i.f = load ptr, ptr %0, align 8, !tbaa !116
  %i.g = load i32, ptr %i.a, align 8, !tbaa !378
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !378
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !378
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !378
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #35
  %i.f = load ptr, ptr %0, align 8, !tbaa !116
  %i.g = load i32, ptr %i.a, align 8, !tbaa !378
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !378
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !378
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(224) ptr @_ZN4llvm10sampleprof16SampleProfileMap6createERKNS0_13SampleContextE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %3 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %4 = alloca %"class.llvm::hash_code", align 8   ; 4 uses
  %5 = alloca %"class.llvm::sampleprof::FunctionSamples", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %5, i8 0, i64 184, i1 false)
  store ptr %i.a, ptr %i.c, align 8, !tbaa !218
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.a, ptr %i.d, align 8, !tbaa !219
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !216
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 144
  store ptr %i.e, ptr %i.g, align 8, !tbaa !218
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr %i.e, ptr %i.h, align 8, !tbaa !219
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !216
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !217
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 192
  store ptr %i.i, ptr %i.k, align 8, !tbaa !218
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.i, ptr %i.l, align 8, !tbaa !219
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !316
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !298 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i
  %i.r = call i64 @_ZN4llvm7hashing6detail23hash_combine_range_implIPKNS_10sampleprof18SampleContextFrameEEENS_9hash_codeET_S8_(ptr noundef %.sroa.0.0.copyload.i.i.i.i, ptr noundef %i.q)
  br label %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJS4_EEESt4pairINSt8__detail14_Node_iteratorIS7_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i1.i.i.i = load ptr, ptr %1, align 8, !tbaa !148 ; 2 uses
  %.sroa.2.0..sroa_idx.i2.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i3.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i2.i.i.i, align 8, !tbaa !149 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i1.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJS4_EEESt4pairINSt8__detail14_Node_iteratorIS7_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %2) #35
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr nonnull %.sroa.0.0.copyload.i1.i.i.i, i64 %.sroa.2.0.copyload.i3.i.i.i) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr noundef nonnull align 1 dereferenceable(16) %3) #35
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJS4_EEESt4pairINSt8__detail14_Node_iteratorIS7_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit

_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJS4_EEESt4pairINSt8__detail14_Node_iteratorIS7_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.r, %bb.b ], [ %.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.d ], [ %.sroa.2.0.copyload.i3.i.i.i, %bb.c ]
  store i64 %.0.i.i.i, ptr %4, align 8
  %i.s = call { ptr, i8 } @_ZNSt8__detail12_Insert_baseIN4llvm9hash_codeESt4pairIKS2_NS1_10sampleprof15FunctionSamplesEESaIS7_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS4_JS6_EEES3_INS_14_Node_iteratorIS7_Lb0ELb1EEEbENS_20_Node_const_iteratorIS7_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(224) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %.fca.0.extract = extractvalue { ptr, i8 } %i.s, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.s, 1
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !217
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef %i.u), !inline_history !9
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !217
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef %i.w), !inline_history !10
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !217
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.y), !inline_history !9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.z = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJS4_EEESt4pairINSt8__detail14_Node_iteratorIS7_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !299
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJS4_EEESt4pairINSt8__detail14_Node_iteratorIS7_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10sampleprof16ProfileConverter20flattenNestedProfileERNS0_16SampleProfileMapERKNS0_15FunctionSamplesE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %3 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %4 = alloca ptr, align 8                        ; 5 uses
  %5 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 7 uses
  %6 = alloca %"class.std::tuple.1576", align 8   ; 4 uses
  %7 = alloca %"class.std::tuple.1508", align 1   ; 3 uses
  %8 = alloca %"struct.llvm::sampleprof::LineLocation", align 8 ; 4 uses
  %9 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %10 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %11 = alloca %"class.llvm::hash_code", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !316
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !298 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i
  %i.e = tail call i64 @_ZN4llvm7hashing6detail23hash_combine_range_implIPKNS_10sampleprof18SampleContextFrameEEENS_9hash_codeET_S8_(ptr noundef %.sroa.0.0.copyload.i.i.i.i, ptr noundef %i.d)
  br label %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i1.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !148 ; 2 uses
  %.sroa.2.0..sroa_idx.i2.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i3.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i2.i.i.i, align 8, !tbaa !149 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i1.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %9) #35
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %9, ptr nonnull %.sroa.0.0.copyload.i1.i.i.i, i64 %.sroa.2.0.copyload.i3.i.i.i) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %9, ptr noundef nonnull align 1 dereferenceable(16) %10) #35
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit

_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.e, %bb.b ], [ %.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.d ], [ %.sroa.2.0.copyload.i3.i.i.i, %bb.c ]
  store i64 %.0.i.i.i, ptr %11, align 8
  %i.g = call { ptr, i8 } @_ZNSt8__detail12_Insert_baseIN4llvm9hash_codeESt4pairIKS2_NS1_10sampleprof15FunctionSamplesEESaIS7_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS4_JRKS6_EEES3_INS_14_Node_iteratorIS7_Lb0ELb1EEEbENS_20_Node_const_iteratorIS7_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(224) %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %.fca.0.extract = extractvalue { ptr, i8 } %i.g, 0 ; 17 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.g, 1
  %i.h = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 152 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !217
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 144 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 160
  store ptr %i.l, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 168
  store ptr %i.l, ptr %i.n, align 8, !tbaa !219
  %i.o = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 176
  store i64 0, ptr %i.o, align 8, !tbaa !220
  %i.p = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 72
  store i64 0, ptr %i.p, align 8, !tbaa !566
  br label %.loopexit128

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !218  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.not119131 = icmp eq ptr %i.r, %i.s
  br i1 %.not119131, label %.loopexit128, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 96 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN4llvm10sampleprof15FunctionSamples15addSampleRecordENS0_12LineLocationERKNS0_12SampleRecordEm.exit
  %.sroa.0107.0132 = phi ptr [ %i.r, %.lr.ph ], [ %i.av, %_ZN4llvm10sampleprof15FunctionSamples15addSampleRecordENS0_12LineLocationERKNS0_12SampleRecordEm.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0107.0132, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0107.0132, i64 40
  %.sroa.020.0.copyload = load i64, ptr %i.w, align 4, !tbaa !234 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.020.0.copyload, ptr %8, align 8
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !217  ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.y, null
  %i.z = trunc i64 %.sroa.020.0.copyload to i32   ; 4 uses
  %i.aa = lshr i64 %.sroa.020.0.copyload, 32
  %i.ab = trunc nuw i64 %i.aa to i32              ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i ], [ %i.y, %bb.g ] ; 5 uses
  %.0812.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i ], [ %i.v, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 36
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !234 ; 2 uses
  %i.af = icmp ult i32 %i.ae, %i.z
  br i1 %i.af, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = icmp ugt i32 %i.ae, %i.z
  br i1 %i.ag, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !234
  %i.ai = icmp ult i32 %i.ah, %i.ab
  br i1 %i.ai, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  br label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i, %bb.h
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ 16, %bb.h ], [ 16, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0812.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ %.013.i.i.i.i.i, %bb.h ], [ %.013.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i ] ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i
  %i.ak = icmp eq ptr %.19.i.i.i.i.i, %i.v
  br i1 %i.ak, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.al, align 4, !tbaa !234 ; 2 uses
  %i.ao = icmp ugt i32 %i.an, %i.z
  br i1 %i.ao, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp ult i32 %i.an, %i.z
  br i1 %i.ap, label %_ZN4llvm10sampleprof15FunctionSamples15addSampleRecordENS0_12LineLocationERKNS0_12SampleRecordEm.exit, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i: ; preds = %bb.j
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !234
  %i.ar = icmp ugt i32 %i.aq, %i.ab
  br i1 %i.ar, label %.critedge.i.i, label %_ZN4llvm10sampleprof15FunctionSamples15addSampleRecordENS0_12LineLocationERKNS0_12SampleRecordEm.exit

.critedge.i.i:                                    ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i, %bb.i, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i, %bb.g
  %.08.lcssa.i.i.i11.i.i = phi ptr [ %i.v, %bb.g ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i ], [ %.19.i.i.i.i.i, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i ], [ %.19.i.i.i.i.i, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store ptr %8, ptr %6, align 8, !tbaa !1008
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.as = call ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr %.08.lcssa.i.i.i11.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %_ZN4llvm10sampleprof15FunctionSamples15addSampleRecordENS0_12LineLocationERKNS0_12SampleRecordEm.exit

_ZN4llvm10sampleprof15FunctionSamples15addSampleRecordENS0_12LineLocationERKNS0_12SampleRecordEm.exit: ; preds = %bb.j, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i, %.critedge.i.i
  %.sroa.06.0.i.i = phi ptr [ %i.as, %.critedge.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i ], [ %.19.i.i.i.i.i, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 40
  %i.au = call noundef i32 @_ZN4llvm10sampleprof12SampleRecord5mergeERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef 1) #35 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.av = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0107.0132) #38 ; 2 uses
  %.not119 = icmp eq ptr %i.av, %i.s
  br i1 %.not119, label %.loopexit128, label %bb.g

.loopexit128:                                     ; preds = %_ZN4llvm10sampleprof15FunctionSamples15addSampleRecordENS0_12LineLocationERKNS0_12SampleRecordEm.exit, %bb.f, %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !566 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !218 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.not120137 = icmp eq ptr %i.az, %i.ba
  br i1 %.not120137, label %.else.i.i, label %.lr.ph141

.lr.ph141:                                        ; preds = %.loopexit128
  %i.bb = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 88 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 96 ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 128 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.k

.else.i.i:                                        ; preds = %._crit_edge, %.loopexit128
  %.0.lcssa = phi i64 [ %i.ax, %.loopexit128 ], [ %.1.lcssa, %._crit_edge ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 72 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !566
  %spec.select.i.i.i = call i64 @llvm.uadd.sat.i64(i64 %i.bh, i64 %.0.lcssa)
  %i.bi = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16
  store i64 %spec.select.i.i.i, ptr %i.bg, align 8, !tbaa !566
  %i.bj = call noundef i64 @_ZNK4llvm10sampleprof15FunctionSamples22getHeadSamplesEstimateEv(ptr noundef nonnull align 8 dereferenceable(224) %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 80
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !1004
  ret void

bb.k:                                             ; preds = %.lr.ph141, %._crit_edge
  %.0139 = phi i64 [ %i.ax, %.lr.ph141 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0103.0138 = phi ptr [ %i.az, %.lr.ph141 ], [ %i.bq, %._crit_edge ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0103.0138, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0103.0138, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !218 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0103.0138, i64 48 ; 2 uses
  %.not122133 = icmp eq ptr %i.bn, %i.bo
end_hunk_2
begin_hunk_3_@_ZN4llvm10sampleprof16ProfileConverter20flattenNestedProfileERNS0_16SampleProfileMapERKNS0_15FunctionSamplesE:bb.a
  br i1 %i.cy, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = icmp ult i32 %i.cx, %i.cw
  br i1 %i.cz, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = load i32, ptr %i.cu, align 4, !tbaa !234
  %i.db = load i32, ptr %i.cv, align 4, !tbaa !234
  %i.dc = icmp ult i32 %i.da, %i.db
  br label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.dd = phi i1 [ %i.dc, %bb.s ], [ true, %bb.p ], [ true, %bb.q ], [ false, %bb.r ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dd, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.bd) #35
  %i.de = load i64, ptr %i.be, align 8, !tbaa !220
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.be, align 8, !tbaa !220
  br label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i

bb.t:                                             ; preds = %.critedge.i.i59
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 68
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !777 ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !778
  %i.dl = zext i32 %i.dh to i64                   ; 2 uses
  %i.dm = mul nuw nsw i64 %i.dl, 24
  %i.dn = add nuw nsw i64 %i.dl, 31
  %i.do = lshr i64 %i.dn, 3
  %i.dp = and i64 %i.do, 1073741820
  %i.dq = add nuw nsw i64 %i.dp, %i.dm
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dk, i64 noundef %i.dq, i64 noundef 8) #35
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i

_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i: ; preds = %bb.u, %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 72) #36
  br label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i

_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i: ; preds = %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, %.thread.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i56, %bb.o
  %.sroa.06.0.i.i57 = phi ptr [ %.19.i.i.i.i.i52, %bb.o ], [ %.19.i.i.i.i.i52, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i56 ], [ %i.cm, %.thread.i ], [ %i.cq, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i57, i64 40 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !718
  %spec.select.i.i.i.i = call i64 @llvm.uadd.sat.i64(i64 %i.ds, i64 %i.bu)
  store i64 %spec.select.i.i.i.i, ptr %i.dr, align 8, !tbaa !718
  %i.dt = load i32, ptr %i.bl, align 8, !tbaa !3137 ; 5 uses
  %i.du = load i32, ptr %i.bp, align 4, !tbaa !3138 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 64
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dv, align 8, !tbaa !148 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 72
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !149 ; 3 uses
  %i.dw = call noundef i64 @_ZNK4llvm10sampleprof15FunctionSamples22getHeadSamplesEstimateEv(ptr noundef nonnull align 8 dereferenceable(224) %i.br) ; 2 uses
  %i.dx = load ptr, ptr %i.bc, align 8, !tbaa !217 ; 2 uses
  %.not11.i.i.i.i.i62 = icmp eq ptr %i.dx, null
  br i1 %.not11.i.i.i.i.i62, label %.critedge.i.i83, label %.lr.ph.i.i.i.i.i63

.lr.ph.i.i.i.i.i63:                               ; preds = %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i67
  %.013.i.i.i.i.i64 = phi ptr [ %.1.i.i.i.i.i70, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i67 ], [ %i.dx, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i ] ; 5 uses
  %.0812.i.i.i.i.i65 = phi ptr [ %.19.i.i.i.i.i69, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i67 ], [ %i.bd, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i64, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i64, i64 36
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !234 ; 2 uses
  %i.eb = icmp ult i32 %i.ea, %i.dt
  br i1 %i.eb, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i85, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i63
  %i.ec = icmp ult i32 %i.dt, %i.ea
  br i1 %i.ec, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i67, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i66

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i66: ; preds = %bb.v
  %i.ed = load i32, ptr %i.dz, align 4, !tbaa !234
  %i.ee = icmp ult i32 %i.ed, %i.du
  br i1 %i.ee, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i85, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i67

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i85: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i66, %.lr.ph.i.i.i.i.i63
  br label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i67

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i67: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i85, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i66, %bb.v
  %.sink.i.i.i.i.i68 = phi i64 [ 24, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i85 ], [ 16, %bb.v ], [ 16, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i66 ]
  %.19.i.i.i.i.i69 = phi ptr [ %.0812.i.i.i.i.i65, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i85 ], [ %.013.i.i.i.i.i64, %bb.v ], [ %.013.i.i.i.i.i64, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i66 ] ; 9 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i64, i64 %.sink.i.i.i.i.i68
  %.1.i.i.i.i.i70 = load ptr, ptr %i.ef, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i.i.i71 = icmp eq ptr %.1.i.i.i.i.i70, null
  br i1 %.not.i.i.i.i.i71, label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i72, label %.lr.ph.i.i.i.i.i63, !llvm.loop !100

_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i72: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i67
  %i.eg = icmp eq ptr %.19.i.i.i.i.i69, %i.bd
  br i1 %i.eg, label %.critedge.i.i83, label %bb.w

bb.w:                                             ; preds = %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i72
  %i.eh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i69, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i69, i64 36
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !234 ; 2 uses
  %i.ek = icmp ult i32 %i.dt, %i.ej
  br i1 %i.ek, label %.critedge.i.i83, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = icmp ult i32 %i.ej, %i.dt
  br i1 %i.el, label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i74, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i73

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i73: ; preds = %bb.x
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !234
  %i.en = icmp ult i32 %i.du, %i.em
  br i1 %i.en, label %.critedge.i.i83, label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i74

.critedge.i.i83:                                  ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i73, %bb.w, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i72, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i
  %.08.lcssa.i.i.i11.i.i84 = phi ptr [ %i.bd, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i ], [ %.19.i.i.i.i.i69, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i73 ], [ %.19.i.i.i.i.i69, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i72 ], [ %.19.i.i.i.i.i69, %bb.w ]
  %i.eo = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37 ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32 ; 3 uses
  %.sroa.4147.0.insert.ext = zext i32 %i.du to i64
  %.sroa.4147.0.insert.shift = shl nuw i64 %.sroa.4147.0.insert.ext, 32
  %.sroa.0146.0.insert.ext = zext i32 %i.dt to i64
  %.sroa.0146.0.insert.insert = or disjoint i64 %.sroa.4147.0.insert.shift, %.sroa.0146.0.insert.ext
  store i64 %.sroa.0146.0.insert.insert, ptr %i.ep, align 8, !tbaa !234
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i8 0, i64 32, i1 false)
  %i.er = call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr %.08.lcssa.i.i.i11.i.i84, ptr noundef nonnull align 4 dereferenceable(8) %i.ep) ; 2 uses
  %i.es = extractvalue { ptr, ptr } %i.er, 0      ; 2 uses
  %i.et = extractvalue { ptr, ptr } %i.er, 1      ; 5 uses
  %.not.i87 = icmp eq ptr %i.et, null
  br i1 %.not.i87, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.critedge.i.i83
  %.not.i.i.i88 = icmp ne ptr %i.es, null
  %i.eu = icmp eq ptr %i.et, %i.bd
  %or.cond.i.i.i89 = select i1 %.not.i.i.i88, i1 true, i1 %i.eu
  br i1 %or.cond.i.i.i89, label %.thread.i90, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 36
  %i.ey = load i32, ptr %i.ep, align 8, !tbaa !234 ; 2 uses
  %i.ez = load i32, ptr %i.ev, align 4, !tbaa !234 ; 2 uses
  %i.fa = icmp ult i32 %i.ey, %i.ez
  br i1 %i.fa, label %.thread.i90, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = icmp ult i32 %i.ez, %i.ey
  br i1 %i.fb, label %.thread.i90, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fc = load i32, ptr %i.ew, align 4, !tbaa !234
  %i.fd = load i32, ptr %i.ex, align 4, !tbaa !234
  %i.fe = icmp ult i32 %i.fc, %i.fd
  br label %.thread.i90

.thread.i90:                                      ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.ff = phi i1 [ %i.fe, %bb.ab ], [ true, %bb.y ], [ true, %bb.z ], [ false, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ff, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.bd) #35
  %i.fg = load i64, ptr %i.be, align 8, !tbaa !220
  %i.fh = add i64 %i.fg, 1
  store i64 %i.fh, ptr %i.be, align 8, !tbaa !220
  br label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i74

bb.ac:                                            ; preds = %.critedge.i.i83
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 68
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !777 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i92, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !778
  %i.fn = zext i32 %i.fj to i64                   ; 2 uses
  %i.fo = mul nuw nsw i64 %i.fn, 24
  %i.fp = add nuw nsw i64 %i.fn, 31
  %i.fq = lshr i64 %i.fp, 3
  %i.fr = and i64 %i.fq, 1073741820
  %i.fs = add nuw nsw i64 %i.fr, %i.fo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fm, i64 noundef %i.fs, i64 noundef 8) #35
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i92

_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i92: ; preds = %bb.ad, %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 72) #36
  br label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i74

_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i74: ; preds = %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i92, %.thread.i90, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i73, %bb.x
  %.sroa.06.0.i.i75 = phi ptr [ %.19.i.i.i.i.i69, %bb.x ], [ %.19.i.i.i.i.i69, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i73 ], [ %i.eo, %.thread.i90 ], [ %i.es, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i92 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.0.0.copyload.i.i, ptr %5, align 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %i.bf, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i75, i64 48 ; 4 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !778, !noalias !3139 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i75, i64 56 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !780, !noalias !3139 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i75, i64 68 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !777, !noalias !3139 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i74
  %i.ga = add i32 %i.fy, -1                       ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i94, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %2) #35
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr nonnull %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr noundef nonnull align 1 dereferenceable(16) %3) #35
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i95 = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i, %bb.af ], [ %.sroa.2.0.copyload.i.i, %bb.ae ]
  %i.gb = trunc i64 %.0.i.i.i95 to i32
  %i.gc = and i32 %i.ga, %i.gb                    ; 3 uses
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %i.gd ; 2 uses
  %i.gf = lshr i64 %i.gd, 5
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !234
  %i.gi = and i32 %i.gc, 31
  %i.gj = lshr i32 %i.gh, %i.gi
  %i.gk = trunc i32 %i.gj to i1
  br i1 %i.gk, label %.lr.ph.i.preheader, label %.loopexit, !prof !319

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i
  %i.gl = load i64, ptr %i.bf, align 8, !tbaa !664 ; 2 uses
  %i.gm = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.gm, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread
  %i.gn = phi ptr [ %i.gx, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread ], [ %i.ge, %.lr.ph.i.preheader ] ; 4 uses
  %.024.i = phi i32 [ %i.gv, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread ], [ %i.gc, %.lr.ph.i.preheader ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !664
  %i.gq = icmp eq i64 %i.gl, %i.gp
  br i1 %i.gq, label %bb.ag, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, !prof !909

bb.ag:                                            ; preds = %.lr.ph.i
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !663 ; 3 uses
  %i.gs = icmp eq ptr %i.gm, %i.gr
  br i1 %i.gs, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not9.i.i.i.i = icmp eq ptr %i.gr, null
  %or.cond.i.i.i98 = or i1 %.not.i.i.i.i97, %.not9.i.i.i.i
  br i1 %or.cond.i.i.i98, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit, !prof !1005

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit: ; preds = %bb.ah
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.gm, ptr nonnull %i.gr, i64 %i.gl)
  %i.gt = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.gt, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, !prof !910

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread: ; preds = %bb.ah, %.lr.ph.i, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit
  %i.gu = add nuw i32 %.024.i, 1
  %i.gv = and i32 %i.gu, %i.ga                    ; 3 uses
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %i.gw ; 2 uses
  %i.gy = lshr i64 %i.gw, 5
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !234
  %i.hb = and i32 %i.gv, 31
  %i.hc = lshr i32 %i.ha, %i.hb
  %i.hd = trunc i32 %i.hc to i1
  br i1 %i.hd, label %.lr.ph.i, label %.loopexit, !prof !320, !llvm.loop !101

.loopexit:                                        ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i74, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i
  %.lcssa29.sink.i.ph = phi ptr [ %i.ge, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ], [ null, %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEixEOS2_.exit.i74 ], [ %i.gx, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.lcssa29.sink.i.ph, ptr %4, align 8, !tbaa !1006
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i75, i64 64 ; 3 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !779
  %i.hg = load i32, ptr %i.fx, align 4, !tbaa !777 ; 2 uses
  %i.hh = shl i32 %i.hf, 2
  %i.hi = add i32 %i.hh, 4
  %i.hj = mul i32 %i.hg, 3
  %.not.i.i = icmp ult i32 %i.hi, %i.hj
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, label %bb.ai, !prof !295

bb.ai:                                            ; preds = %.loopexit
  %i.hk = shl i32 %i.hg, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.ft, i32 noundef %i.hk)
  %i.hl = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !1006
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i: ; preds = %bb.ai, %.loopexit
  %i.hm = phi ptr [ %.pre.i.i, %bb.ai ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 4 uses
  %i.hn = load ptr, ptr %i.fv, align 8, !tbaa !780
  %i.ho = load ptr, ptr %i.ft, align 8, !tbaa !778
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = sdiv exact i64 %i.hr, 24                ; 2 uses
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = and i32 %i.ht, 31
  %i.hv = shl nuw i32 1, %i.hu
  %i.hw = lshr i64 %i.hs, 5
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hw ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !234
  %i.hz = or i32 %i.hv, %i.hy
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !234
  %i.ia = load i32, ptr %i.he, align 8, !tbaa !779
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.he, align 8, !tbaa !779
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !515
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store i64 0, ptr %i.ic, align 8, !tbaa !149
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit: ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit, %bb.ag
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !149
  %i.id = call i64 @llvm.uadd.sat.i64(i64 %.pre, i64 %i.dw)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i
  %spec.select.i.i.i.i82 = phi i64 [ %i.dw, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i ], [ %i.id, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit ]
  %.sroa.0.0.i = phi ptr [ %i.hm, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i ], [ %i.gn, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.loopexit ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  store i64 %spec.select.i.i.i.i82, ptr %i.ie, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 104
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !566
  %spec.select = call i64 @llvm.usub.sat.i64(i64 %.1135, i64 %i.ig)
  %i.ih = call noundef i64 @_ZNK4llvm10sampleprof15FunctionSamples22getHeadSamplesEstimateEv(ptr noundef nonnull align 8 dereferenceable(224) %i.br)
  %i.ii = add i64 %spec.select, %i.ih             ; 2 uses
  call void @_ZN4llvm10sampleprof16ProfileConverter20flattenNestedProfileERNS0_16SampleProfileMapERKNS0_15FunctionSamplesE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.br)
  %i.ij = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.099.0134) #38 ; 2 uses
  %.not122 = icmp eq ptr %i.ij, %i.bo
  br i1 %.not122, label %._crit_edge, label %bb.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8__detail12_Insert_baseIN4llvm9hash_codeESt4pairIKS2_NS1_10sampleprof15FunctionSamplesEESaIS7_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS4_JRKS6_EEES3_INS_14_Node_iteratorIS7_Lb0ELb1EEEbENS_20_Node_const_iteratorIS7_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(224) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !775    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !654  ; 2 uses
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !653
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !665  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !282  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.k = load i64, ptr %i.j, align 8, !tbaa !667
  %i.l = icmp eq i64 %i.a, %i.k
  %i.m = load i64, ptr %i.i, align 8
  %i.n = icmp eq i64 %i.a, %i.m
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.q = icmp eq i64 %i.a, %i.w
  %i.r = load i64, ptr %i.p, align 8
  %i.s = icmp eq i64 %i.a, %i.r
  %i.t = select i1 %i.q, i1 %i.s, i1 false
  br i1 %i.t, label %_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %.lr.ph.i.i, !llvm.loop !17

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.u, %bb.c ], [ %i.h, %bb.b ]
  %i.u = load ptr, ptr %.020.i.i, align 8, !tbaa !282 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.w = load i64, ptr %i.v, align 8, !tbaa !667  ; 2 uses
  %i.x = urem i64 %i.w, %i.c
  %.not19.i.i = icmp eq i64 %i.x, %i.d
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !17

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.y = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #37 ; 10 uses
  store ptr null, ptr %i.y, align 8, !tbaa !282
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %2, align 8, !tbaa !149
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !149
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  tail call void @_ZN4llvm10sampleprof15FunctionSamplesC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(224) %i.ab, ptr noundef nonnull align 8 dereferenceable(224) %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !654
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !567
  %i.ag = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef 1) #35 ; 2 uses
  %i.ah = extractvalue { i8, i64 } %i.ag, 0
  %i.ai = trunc i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.aj = extractvalue { i8, i64 } %i.ag, 1
  tail call void @_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.aj)
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !654
  %i.al = urem i64 %i.a, %i.ak
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.0.i18 = phi i64 [ %i.al, %bb.e ], [ %i.d, %.critedge ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  store i64 %i.a, ptr %i.am, align 8, !tbaa !667
  %i.an = load ptr, ptr %0, align 8, !tbaa !653   ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0.i18 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !665 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !282
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !282
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !665
  store ptr %i.y, ptr %i.ar, align 8, !tbaa !282
  br label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !582 ; 3 uses
  store ptr %i.at, ptr %i.y, align 8, !tbaa !282
  store ptr %i.y, ptr %i.as, align 8, !tbaa !582
  %.not11.i.i = icmp eq ptr %i.at, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load i64, ptr %i.b, align 8, !tbaa !654
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !667
  %i.ax = urem i64 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ax
  store ptr %i.y, ptr %i.ay, align 8, !tbaa !665
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !665
  br label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.az = load i64, ptr %i.ae, align 8, !tbaa !567
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ae, align 8, !tbaa !567
  br label %_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit

_ZNKSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit: ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.026.0 = phi ptr [ %i.y, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.h, %bb.b ], [ %i.u, %bb.c ]
  %.sroa.327.0 = phi i8 [ 1, %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.026.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.327.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSJ_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !487

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !582  ; 2 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE19_M_deallocate_nodesEPS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.06.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.c, %bb.b ] ; 8 uses
  %i.d = load ptr, ptr %.06.i, align 8, !tbaa !282 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !217
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g), !inline_history !9
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !217
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j), !inline_history !10
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !217
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m), !inline_history !9
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 248) #36
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE19_M_deallocate_nodesEPS9_.exit, label %.lr.ph.i, !llvm.loop !21

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE19_M_deallocate_nodesEPS9_.exit: ; preds = %.lr.ph.i, %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !653    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE19_M_deallocate_nodesEPS9_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !654
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.s) #36
  br label %_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4llvm9hash_codeENS3_10sampleprof15FunctionSamplesEELb1EEEEE19_M_deallocate_nodesEPS9_.exit, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !3140
end_hunk_3
