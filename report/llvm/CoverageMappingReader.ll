Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CoverageMappingReader?download=true
inline.NumInlined: 9101
inline.NumDeleted: 3320
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_:bb.a
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !283
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.prol, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.prol, i64 16 ; 2 uses
  %i.fb = add nsw i64 %.012.i.i.i.i.i11.i25.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol, !llvm.loop !1751

.lr.ph.i.i.i.i.i10.i24.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i10.i24.prol, %.lr.ph.i.i.i.i.i10.i24.preheader
  %.012.i.i.i.i.i11.i25.unr = phi i64 [ %i.et, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.fb, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0811.i.i.i.i.i12.i26.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.fa, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0910.i.i.i.i.i13.i27.unr = phi ptr [ %.sroa.015.0.lcssa.i18, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.ez, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %i.fc = icmp ult i64 %i.et, 4
  br i1 %i.fc, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43, label %.lr.ph.i.i.i.i.i10.i24

.lr.ph.i.i.i.i.i10.i24:                           ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24
  %.012.i.i.i.i.i11.i25 = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i10.i24 ], [ %.012.i.i.i.i.i11.i25.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26 = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0811.i.i.i.i.i12.i26.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0910.i.i.i.i.i13.i27.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 9 uses
  %i.fd = load i64, ptr %.0910.i.i.i.i.i13.i27, align 8, !tbaa !57
  store i64 %i.fd, ptr %.0811.i.i.i.i.i12.i26, align 8, !tbaa !281
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !282
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !283
  %i.fh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 16
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !57
  store i64 %i.fj, ptr %i.fi, align 8, !tbaa !281
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !282
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 24
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !283
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 32
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !57
  store i64 %i.fp, ptr %i.fo, align 8, !tbaa !281
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !282
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 40
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !283
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 48
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !57
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !281
  %i.fw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !282
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 56
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !283
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 64
  %i.gb = add nsw i64 %.012.i.i.i.i.i11.i25, -4
  %i.gc = icmp sgt i64 %.012.i.i.i.i.i11.i25, 4
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43, !llvm.loop !15

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43: ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SG_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not65 = icmp slt i64 %i.e, %i.a
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %3, 4                       ; 2 uses
  %.idx56 = shl nsw i64 %3, 5                     ; 2 uses
  %.not57 = icmp eq i64 %.idx, %.idx56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit
  %.sroa.022.067 = phi ptr [ %2, %.lr.ph ], [ %i.cw, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.066 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.066, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.066, i64 %.idx56 ; 4 uses
  br i1 %.not57, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.029.i = phi ptr [ %.1.i, %bb.e ], [ %.066, %bb.b ] ; 4 uses
  %.01628.i = phi ptr [ %.117.i, %bb.e ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.0.027.i = phi ptr [ %i.n, %bb.e ], [ %.sroa.022.067, %bb.b ] ; 3 uses
  %i.h = load i64, ptr %.01628.i, align 8, !tbaa !57 ; 2 uses
  %i.i = load i64, ptr %.029.i, align 8, !tbaa !57 ; 2 uses
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01628.i, i64 16
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.029.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink34.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  %.01628.pn.i = phi ptr [ %.01628.i, %bb.c ], [ %.029.i, %bb.d ]
  %.117.i = phi ptr [ %i.k, %bb.c ], [ %.01628.i, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %.029.i, %bb.c ], [ %i.l, %bb.d ] ; 3 uses
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i, i64 8
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !282
  store i64 %.sink34.i, ptr %.sroa.0.027.i, align 8, !tbaa !281
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 8
  store ptr %.sink.i, ptr %i.m, align 8, !tbaa !283
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.o = icmp ne ptr %.1.i, %i.f
  %i.p = icmp ne ptr %.117.i, %i.g
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1752

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.067, %bb.b ], [ %i.n, %bb.e ] ; 5 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.e ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.066, %bb.b ], [ %.1.i, %bb.e ] ; 3 uses
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = ptrtoint ptr %.0.lcssa.i to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4                   ; 5 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.w = load i64, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !57
  store i64 %i.w, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !281
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !282
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !283
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ac = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1753

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa106.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.u, 4
  br i1 %i.ad, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ae = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !57
  store i64 %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !281
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !282
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !283
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !57
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !281
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !282
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !283
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !57
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !281
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !282
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !283
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !57
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !281
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !282
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !283
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !15

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa106.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i.i.i.i.i ]
  %i.be = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 2 uses
  %i.bf = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.bg ; 4 uses
  %i.bi = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.bj = ptrtoint ptr %.016.lcssa.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 4                 ; 5 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i
  %xtraiter111 = and i64 %i.bl, 3                 ; 2 uses
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader, %.lr.ph.i.i.i.i.i19.i.prol
  %.012.i.i.i.i.i20.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bl, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %.0811.i.i.i.i.i21.i.prol = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.prol = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i19.i.prol ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %prol.iter113 = phi i64 [ %prol.iter113.next, %.lr.ph.i.i.i.i.i19.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %i.bn = load i64, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !57
  store i64 %i.bn, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !281
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !282
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !283
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !1754

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa107.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.bu = icmp ult i64 %i.bl, 4
  br i1 %i.bu, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %i.bv = load i64, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !57
  store i64 %i.bv, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !281
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !282
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !283
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !57
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !281
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !282
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 24
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !283
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !57
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !281
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !282
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !283
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !57
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !281
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !282
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 56
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !283
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.ct = add nsw i64 %.012.i.i.i.i.i20.i, -4
  %i.cu = icmp sgt i64 %.012.i.i.i.i.i20.i, 4
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit, !llvm.loop !15

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.bh, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %.lcssa107.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.cs, %.lr.ph.i.i.i.i.i19.i ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.cv = sub i64 %4, %i.be
  %i.cw = getelementptr inbounds i8, ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cx = sub i64 %i.b, %i.bi
  %i.cy = ashr exact i64 %i.cx, 4                 ; 2 uses
  %.not = icmp slt i64 %i.cy, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1755

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.cw, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.lcssa63 = phi i64 [ %i.e, %bb.a ], [ %i.cy, %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa63) ; 2 uses
  %.idx58 = shl nsw i64 %.sroa.speculated, 4
  %i.cz = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx58 ; 5 uses
  %i.da = icmp ne i64 %.sroa.speculated, 0
  %i.db = icmp ne ptr %i.cz, %1
  %i.dc = and i1 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph.i41, label %._crit_edge.i25

.lr.ph.i41:                                       ; preds = %._crit_edge, %bb.h
  %.029.i42 = phi ptr [ %.1.i48, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.01628.i43 = phi ptr [ %.117.i47, %bb.h ], [ %i.cz, %._crit_edge ] ; 4 uses
  %.sroa.0.027.i44 = phi ptr [ %i.dj, %bb.h ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 3 uses
  %i.dd = load i64, ptr %.01628.i43, align 8, !tbaa !57 ; 2 uses
  %i.de = load i64, ptr %.029.i42, align 8, !tbaa !57 ; 2 uses
  %i.df = icmp ult i64 %i.dd, %i.de
  br i1 %i.df, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i41
  %i.dg = getelementptr inbounds nuw i8, ptr %.01628.i43, i64 16
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i41
  %i.dh = getelementptr inbounds nuw i8, ptr %.029.i42, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink34.i45 = phi i64 [ %i.dd, %bb.f ], [ %i.de, %bb.g ]
  %.01628.pn.i46 = phi ptr [ %.01628.i43, %bb.f ], [ %.029.i42, %bb.g ]
  %.117.i47 = phi ptr [ %i.dg, %bb.f ], [ %.01628.i43, %bb.g ] ; 3 uses
  %.1.i48 = phi ptr [ %.029.i42, %bb.f ], [ %i.dh, %bb.g ] ; 3 uses
  %.sink.in.i49 = getelementptr inbounds nuw i8, ptr %.01628.pn.i46, i64 8
  %.sink.i50 = load ptr, ptr %.sink.in.i49, align 8, !tbaa !282
  store i64 %.sink34.i45, ptr %.sroa.0.027.i44, align 8, !tbaa !281
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 8
  store ptr %.sink.i50, ptr %i.di, align 8, !tbaa !283
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 16 ; 2 uses
  %i.dk = icmp ne ptr %.1.i48, %i.cz
  %i.dl = icmp ne ptr %.117.i47, %1
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !1752

._crit_edge.i25:                                  ; preds = %bb.h, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.dj, %bb.h ] ; 5 uses
  %.016.lcssa.i27 = phi ptr [ %i.cz, %._crit_edge ], [ %.117.i47, %bb.h ] ; 3 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i48, %bb.h ] ; 3 uses
  %i.dn = ptrtoint ptr %i.cz to i64
  %i.do = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 4                 ; 5 uses
  %i.dr = icmp sgt i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29

.lr.ph.i.i.i.i.i.i37.preheader:                   ; preds = %._crit_edge.i25
  %xtraiter114 = and i64 %i.dq, 3                 ; 2 uses
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i37.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i37.prol
  %.012.i.i.i.i.i.i38.prol = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i37.prol ], [ %i.dq, %.lr.ph.i.i.i.i.i.i37.preheader ]
  %.0811.i.i.i.i.i.i39.prol = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i37.prol ], [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.prol = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i37.prol ], [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ] ; 3 uses
  %prol.iter116 = phi i64 [ %prol.iter116.next, %.lr.ph.i.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.preheader ]
  %i.ds = load i64, ptr %.0910.i.i.i.i.i.i40.prol, align 8, !tbaa !57
  store i64 %i.ds, ptr %.0811.i.i.i.i.i.i39.prol, align 8, !tbaa !281
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !282
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !283
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.dy = add nsw i64 %.012.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol, !llvm.loop !1756

.lr.ph.i.i.i.i.i.i37.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i38.unr = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dy, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i37.prol ]
  %i.dz = icmp ult i64 %i.dq, 4
  br i1 %i.dz, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i38 = phi i64 [ %i.ey, %.lr.ph.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %i.ea = load i64, ptr %.0910.i.i.i.i.i.i40, align 8, !tbaa !57
  store i64 %i.ea, ptr %.0811.i.i.i.i.i.i39, align 8, !tbaa !281
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !282
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !283
  %i.ee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 16
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !57
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !281
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !282
  %i.ej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 24
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !283
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !57
  store i64 %i.em, ptr %i.el, align 8, !tbaa !281
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !282
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 40
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !283
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 48
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !57
  store i64 %i.es, ptr %i.er, align 8, !tbaa !281
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !282
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 56
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !283
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.ey = add nsw i64 %.012.i.i.i.i.i.i38, -4
  %i.ez = icmp sgt i64 %.012.i.i.i.i.i.i38, 4
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, !llvm.loop !15

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ], [ %i.ex, %.lr.ph.i.i.i.i.i.i37 ]
  %i.fa = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.fb = sub i64 %i.b, %i.fa
  %i.fc = ashr exact i64 %i.fb, 4                 ; 5 uses
  %i.fd = icmp sgt i64 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i19.i32.preheader, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit51

.lr.ph.i.i.i.i.i19.i32.preheader:                 ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29
  %i.fe = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.ff = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.fg ; 2 uses
  %xtraiter117 = and i64 %i.fc, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol

.lr.ph.i.i.i.i.i19.i32.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader, %.lr.ph.i.i.i.i.i19.i32.prol
  %.012.i.i.i.i.i20.i33.prol = phi i64 [ %i.fo, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %i.fc, %.lr.ph.i.i.i.i.i19.i32.preheader ]
  %.0811.i.i.i.i.i21.i34.prol = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %i.fh, %.lr.ph.i.i.i.i.i19.i32.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.prol = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ] ; 3 uses
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph.i.i.i.i.i19.i32.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader ]
  %i.fi = load i64, ptr %.0910.i.i.i.i.i22.i35.prol, align 8, !tbaa !57
  store i64 %i.fi, ptr %.0811.i.i.i.i.i21.i34.prol, align 8, !tbaa !281
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !282
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 8
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !283
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 16 ; 2 uses
  %i.fo = add nsw i64 %.012.i.i.i.i.i20.i33.prol, -1 ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol, !llvm.loop !1757

.lr.ph.i.i.i.i.i19.i32.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i32.prol, %.lr.ph.i.i.i.i.i19.i32.preheader
  %.012.i.i.i.i.i20.i33.unr = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fo, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0811.i.i.i.i.i21.i34.unr = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fn, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0910.i.i.i.i.i22.i35.unr = phi ptr [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fm, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %i.fp = icmp ult i64 %i.fc, 4
  br i1 %i.fp, label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit51, label %.lr.ph.i.i.i.i.i19.i32

.lr.ph.i.i.i.i.i19.i32:                           ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32
  %.012.i.i.i.i.i20.i33 = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i19.i32 ], [ %.012.i.i.i.i.i20.i33.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34 = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0811.i.i.i.i.i21.i34.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35 = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0910.i.i.i.i.i22.i35.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 9 uses
  %i.fq = load i64, ptr %.0910.i.i.i.i.i22.i35, align 8, !tbaa !57
  store i64 %i.fq, ptr %.0811.i.i.i.i.i21.i34, align 8, !tbaa !281
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !282
  %i.ft = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 8
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !283
  %i.fu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !57
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !281
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !282
  %i.fz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 24
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !283
  %i.ga = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !57
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !281
  %i.gd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !282
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 40
end_hunk_0
