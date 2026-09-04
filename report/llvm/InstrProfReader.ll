Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrProfReader?download=true
inline.NumInlined: 9738
inline.NumDeleted: 4213
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SG_T0_T1_T2_:bb.a
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !607
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.prol, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.prol, i64 16 ; 2 uses
  %i.fb = add nsw i64 %.012.i.i.i.i.i11.i25.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol, !llvm.loop !2634

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
  %i.fd = load i64, ptr %.0910.i.i.i.i.i13.i27, align 8, !tbaa !192
  store i64 %i.fd, ptr %.0811.i.i.i.i.i12.i26, align 8, !tbaa !605
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !606
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !607
  %i.fh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 16
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !192
  store i64 %i.fj, ptr %i.fi, align 8, !tbaa !605
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !606
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 24
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !607
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 32
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !192
  store i64 %i.fp, ptr %i.fo, align 8, !tbaa !605
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !606
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 40
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !607
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 48
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !192
  store i64 %i.fv, ptr %i.fu, align 8, !tbaa !605
  %i.fw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !606
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 56
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !607
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 64
  %i.gb = add nsw i64 %.012.i.i.i.i.i11.i25, -4
  %i.gc = icmp sgt i64 %.012.i.i.i.i.i11.i25, 4
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImPN4llvm8FunctionEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit43, !llvm.loop !34

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
  %i.h = load i64, ptr %.01628.i, align 8, !tbaa !192 ; 2 uses
  %i.i = load i64, ptr %.029.i, align 8, !tbaa !192 ; 2 uses
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
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !606
  store i64 %.sink34.i, ptr %.sroa.0.027.i, align 8, !tbaa !605
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 8
  store ptr %.sink.i, ptr %i.m, align 8, !tbaa !607
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.o = icmp ne ptr %.1.i, %i.f
  %i.p = icmp ne ptr %.117.i, %i.g
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2635

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
  %i.w = load i64, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !192
  store i64 %i.w, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !605
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !606
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !607
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ac = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2636

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
  %i.ae = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !192
  store i64 %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !605
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !606
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !607
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !192
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !605
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !606
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !607
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !192
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !605
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !606
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !607
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !192
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !605
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !606
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !607
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !34

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa106.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i.i.i.i.i ]
  %i.be = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.bf = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.bg ; 3 uses
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
  %i.bn = load i64, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !192
  store i64 %i.bn, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !605
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !606
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !607
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter113.next = add i64 %prol.iter113, 1   ; 2 uses
  %prol.iter113.cmp.not = icmp eq i64 %prol.iter113.next, %xtraiter111
  br i1 %prol.iter113.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !2637

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.br, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa107.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.bu = icmp ult i64 %i.bl, 4
  br i1 %i.bu, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %i.bv = load i64, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !192
  store i64 %i.bv, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !605
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !606
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !607
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !192
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !605
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !606
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 24
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !607
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !192
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !605
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !606
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !607
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !192
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !605
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !606
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 56
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !607
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.ct = add nsw i64 %.012.i.i.i.i.i20.i, -4
  %i.cu = icmp sgt i64 %.012.i.i.i.i.i20.i, 4
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i, !llvm.loop !34

_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i19.i, %.lr.ph.i.i.i.i.i19.i.prol.loopexit
  %.lcssa107 = phi ptr [ %.lcssa107.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.cs, %.lr.ph.i.i.i.i.i19.i ]
  %4 = ptrtoint ptr %.lcssa107 to i64
  br label %_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit

_ZSt12__move_mergeIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.be, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %4, %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i ]
  %i.cv = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.be
  %i.cw = getelementptr inbounds i8, ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cx = sub i64 %i.b, %i.bi
  %i.cy = ashr exact i64 %i.cx, 4                 ; 2 uses
  %.not = icmp slt i64 %i.cy, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2638

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
  %i.dd = load i64, ptr %.01628.i43, align 8, !tbaa !192 ; 2 uses
  %i.de = load i64, ptr %.029.i42, align 8, !tbaa !192 ; 2 uses
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
  %.sink.i50 = load ptr, ptr %.sink.in.i49, align 8, !tbaa !606
  store i64 %.sink34.i45, ptr %.sroa.0.027.i44, align 8, !tbaa !605
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 8
  store ptr %.sink.i50, ptr %i.di, align 8, !tbaa !607
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 16 ; 2 uses
  %i.dk = icmp ne ptr %.1.i48, %i.cz
  %i.dl = icmp ne ptr %.117.i47, %1
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !2635

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
  %i.ds = load i64, ptr %.0910.i.i.i.i.i.i40.prol, align 8, !tbaa !192
  store i64 %i.ds, ptr %.0811.i.i.i.i.i.i39.prol, align 8, !tbaa !605
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !606
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !607
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.dy = add nsw i64 %.012.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol, !llvm.loop !2639

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
  %i.ea = load i64, ptr %.0910.i.i.i.i.i.i40, align 8, !tbaa !192
  store i64 %i.ea, ptr %.0811.i.i.i.i.i.i39, align 8, !tbaa !605
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !606
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !607
  %i.ee = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 16
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !192
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !605
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !606
  %i.ej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 24
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !607
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !192
  store i64 %i.em, ptr %i.el, align 8, !tbaa !605
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !606
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 40
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !607
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 48
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !192
  store i64 %i.es, ptr %i.er, align 8, !tbaa !605
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !606
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 56
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !607
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.ey = add nsw i64 %.012.i.i.i.i.i.i38, -4
  %i.ez = icmp sgt i64 %.012.i.i.i.i.i.i38, 4
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairImPN4llvm8FunctionEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, !llvm.loop !34

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
  %i.fi = load i64, ptr %.0910.i.i.i.i.i22.i35.prol, align 8, !tbaa !192
  store i64 %i.fi, ptr %.0811.i.i.i.i.i21.i34.prol, align 8, !tbaa !605
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !606
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 8
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !607
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 16 ; 2 uses
  %i.fo = add nsw i64 %.012.i.i.i.i.i20.i33.prol, -1 ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol, !llvm.loop !2640

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
  %i.fq = load i64, ptr %.0910.i.i.i.i.i22.i35, align 8, !tbaa !192
  store i64 %i.fq, ptr %.0811.i.i.i.i.i21.i34, align 8, !tbaa !605
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !606
  %i.ft = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 8
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !607
  %i.fu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !192
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !605
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !606
  %i.fz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 24
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !607
  %i.ga = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !192
  store i64 %i.gc, ptr %i.gb, align 8, !tbaa !605
  %i.gd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !606
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 40
end_hunk_0
begin_hunk_1_@"_ZSt12__move_mergeIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNKS0_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET0_T_SG_SG_SG_SF_T1_":bb.a
bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %.sroa.0.036, ptr %12, align 8, !tbaa !672
  %i.g = getelementptr inbounds nuw i8, ptr %.01639, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !540
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEaSEOS9_EUlOT_T0_E_JRS8_St17integral_constantImLm0EEEESB_St14__invoke_otherOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(104) %.01639, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 32 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !540
  switch i8 %i.k, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i [
    i8 1, label %bb.e
    i8 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %.01639, align 8, !tbaa !192
  store i64 %i.l, ptr %.sroa.0.036, align 8, !tbaa !192
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %.sroa.0.036, align 8, !tbaa !92 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !93
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.r = load i64, ptr %.01639, align 8, !tbaa !192
  store i64 %i.r, ptr %.sroa.0.036, align 8, !tbaa !542
  store i8 1, ptr %i.j, align 8, !tbaa !540
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit

_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit: ; preds = %bb.c, %bb.e, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.s = load i64, ptr %i.d, align 8, !tbaa !555
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 40
  store i64 %i.s, ptr %i.t, align 8, !tbaa !555
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %.01639, i64 48
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_7memprof14SourceLocationEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(56) %i.v) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01639, i64 104
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %.sroa.0.036, ptr %10, align 8, !tbaa !672
  %i.y = getelementptr inbounds nuw i8, ptr %.040, i64 32
  %i.z = load i8, ptr %i.y, align 8, !tbaa !540
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEaSEOS9_EUlOT_T0_E_JRS8_St17integral_constantImLm0EEEESB_St14__invoke_otherOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(104) %.040, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit21

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 32 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !540
  switch i8 %i.ac, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i19 [
    i8 1, label %bb.j
    i8 0, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %.040, align 8, !tbaa !192
  store i64 %i.ad, ptr %.sroa.0.036, align 8, !tbaa !192
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit21

bb.k:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %.sroa.0.036, align 8, !tbaa !92 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i18: ; preds = %bb.k
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !93
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i19

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i19: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i18, %bb.i
  %i.aj = load i64, ptr %.040, align 8, !tbaa !192
  store i64 %i.aj, ptr %.sroa.0.036, align 8, !tbaa !542
  store i8 1, ptr %i.ab, align 8, !tbaa !540
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit21

_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit21: ; preds = %bb.h, %bb.j, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !555
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 40
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !555
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %.040, i64 48
  %i.ao = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_7memprof14SourceLocationEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.040, i64 104
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit21, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit
  %.117 = phi ptr [ %i.x, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit ], [ %.01639, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit21 ] ; 3 uses
  %.1 = phi ptr [ %.040, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit ], [ %i.ap, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit21 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 104 ; 2 uses
  %i.ar = icmp ne ptr %.1, %1
  %i.as = icmp ne ptr %.117, %3
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !3066

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.aq, %bb.l ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.l ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.l ] ; 2 uses
  %i.au = ptrtoint ptr %1 to i64
  %i.av = ptrtoint ptr %.0.lcssa to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.ay = udiv exact i64 %i.aw, 104
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.bt, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bs, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.br, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %.0811.i.i.i.i.i, ptr %8, align 8, !tbaa !672
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !540
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEaSEOS9_EUlOT_T0_E_JRS8_St17integral_constantImLm0EEEESB_St14__invoke_otherOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(104) %.0910.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !540
  switch i8 %i.bd, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i8 1, label %bb.o
    i8 0, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.be = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !192
  store i64 %i.be, ptr %.0811.i.i.i.i.i, align 8, !tbaa !192
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !92 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !93
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #27
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n
  %i.bk = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !192
  store i64 %i.bk, ptr %.0811.i.i.i.i.i, align 8, !tbaa !542
  store i8 1, ptr %i.bc, align 8, !tbaa !540
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i

_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !555
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !555
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.bq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_7memprof14SourceLocationEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(56) %i.bp) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 104 ; 2 uses
  %i.bt = add nsw i64 %.013.i.i.i.i.i, -1
  %i.bu = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, !llvm.loop !57

_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit: ; preds = %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.bs, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i ]
  %i.bv = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.bw = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.bx ; 2 uses
  %i.bz = ptrtoint ptr %3 to i64
  %i.ca = ptrtoint ptr %.016.lcssa to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.preheader.i.i.i.i.i23, label %_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit32

.lr.ph.preheader.i.i.i.i.i23:                     ; preds = %_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %i.cd = udiv exact i64 %i.cb, 104
  br label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i30, %.lr.ph.preheader.i.i.i.i.i23
  %.013.i.i.i.i.i25 = phi i64 [ %i.cy, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i30 ], [ %i.cd, %.lr.ph.preheader.i.i.i.i.i23 ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.cx, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i30 ], [ %i.by, %.lr.ph.preheader.i.i.i.i.i23 ] ; 9 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.cw, %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i30 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i23 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %.0811.i.i.i.i.i26, ptr %6, align 8, !tbaa !672
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 32
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !540
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZSt13__invoke_implIvZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEaSEOS9_EUlOT_T0_E_JRS8_St17integral_constantImLm0EEEESB_St14__invoke_otherOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(104) %.0910.i.i.i.i.i27, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i30

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i24
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 32 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !540
  switch i8 %i.ci, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i29 [
    i8 1, label %bb.s
    i8 0, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.cj = load i64, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !192
  store i64 %i.cj, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !192
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i30

bb.t:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !92 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i28: ; preds = %bb.t
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !93
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #27
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i29

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i29: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i28, %bb.r
  %i.cp = load i64, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !192
  store i64 %i.cp, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !542
  store i8 1, ptr %i.ch, align 8, !tbaa !540
  br label %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i30

_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i30: ; preds = %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEJmEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i29, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 40
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !555
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 40
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !555
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 48
  %i.cv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_7memprof14SourceLocationEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, ptr noundef nonnull align 8 dereferenceable(56) %i.cu) ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 104
  %i.cx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 104 ; 2 uses
  %i.cy = add nsw i64 %.013.i.i.i.i.i25, -1
  %i.cz = icmp sgt i64 %.013.i.i.i.i.i25, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit32.loopexit, !llvm.loop !57

_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit32.loopexit: ; preds = %_ZN4llvm7memprof20DataAccessProfRecordaSEOS1_.exit.i.i.i.i.i30
  %13 = ptrtoint ptr %i.cx to i64
  br label %_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit32

_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit32: ; preds = %_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit32.loopexit, %_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %.08.lcssa.i.i.i.i.i22 = phi i64 [ %i.bv, %_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %13, %_ZSt4moveIPN4llvm7memprof20DataAccessProfRecordEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit32.loopexit ]
  %i.da = sub i64 %.08.lcssa.i.i.i.i.i22, %i.bv
  %i.db = getelementptr inbounds i8, ptr %i.by, i64 %i.da
  ret ptr %i.db
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEEvT_SF_SF_T0_SG_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond83 = or i1 %i.a, %i.b
  br i1 %or.cond83, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8088 = phi i64 [ %4, %.lr.ph ], [ %i.at, %tailrecurse ] ; 4 uses
  %.tr7987 = phi i64 [ %3, %.lr.ph ], [ %i.as, %tailrecurse ] ; 4 uses
  %.tr7785 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 7 uses
  %.tr84 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr8088, %.tr7987
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.tr7785, i64 40
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !555
  %i.g = getelementptr i8, ptr %.tr84, i64 40
  %.val1.i = load i64, ptr %i.g, align 8, !tbaa !555
  %i.h = icmp ugt i64 %.val.i, %.val1.i
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt4swapIN4llvm7memprof20DataAccessProfRecordEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(104) %.tr84, ptr noundef nonnull align 8 dereferenceable(104) %.tr7785)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.i = icmp sgt i64 %.tr7987, %.tr8088
  %i.j = ptrtoint ptr %.tr7785 to i64             ; 4 uses
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.k = sdiv i64 %.tr7987, 2                     ; 2 uses
  %i.l = getelementptr inbounds [104 x i8], ptr %.tr84, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %.val = load i64, ptr %i.m, align 8
  %i.n = sub i64 %i.c, %i.j                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.p = udiv exact i64 %i.n, 104
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %.07.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %.sroa.02.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7785, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.q = lshr i64 %.07.i, 1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [104 x i8], ptr %.sroa.02.06.i, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 40
  %.val.i.i = load i64, ptr %i.s, align 8, !tbaa !555
  %i.t = icmp ugt i64 %.val.i.i, %.val            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.07.i, %i.v
  %.sroa.02.1.i = select i1 %i.t, ptr %i.u, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %i.t, i64 %i.w, i64 %i.q      ; 2 uses
  %i.x = icmp sgt i64 %.1.i, 0
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit", !llvm.loop !59

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %.tr7785, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.y = sub i64 %.pre-phi, %i.j
  %i.z = sdiv exact i64 %i.y, 104
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54: ; preds = %bb.e
  %i.aa = sdiv i64 %.tr8088, 2                    ; 2 uses
  %i.ab = getelementptr inbounds [104 x i8], ptr %.tr7785, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 40
  %.val50 = load i64, ptr %i.ac, align 8
  %i.ad = ptrtoint ptr %.tr84 to i64              ; 3 uses
  %i.ae = sub i64 %i.j, %i.ad                     ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %i.ag = udiv exact i64 %i.ae, 104
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56
  %.07.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.ag, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56 ] ; 2 uses
  %.sroa.02.06.i59 = phi ptr [ %.sroa.02.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %.tr84, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56 ] ; 2 uses
  %i.ah = lshr i64 %.07.i58, 1                    ; 3 uses
  %i.ai = getelementptr inbounds nuw [104 x i8], ptr %.sroa.02.06.i59, i64 %i.ah ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 40
  %.val2.i.i = load i64, ptr %i.aj, align 8, !tbaa !555
  %i.ak = icmp ugt i64 %.val50, %.val2.i.i        ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.am = xor i64 %i.ah, -1
  %i.an = add nsw i64 %.07.i58, %i.am
  %.sroa.02.1.i62 = select i1 %i.ak, ptr %.sroa.02.06.i59, ptr %i.al ; 3 uses
  %.1.i63 = select i1 %i.ak, i64 %i.ah, i64 %i.an ; 2 uses
  %i.ao = icmp sgt i64 %.1.i63, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit", !llvm.loop !60

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre91 = ptrtoint ptr %.sroa.02.1.i62 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %.pre-phi92 = phi i64 [ %.pre91, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %i.ad, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %.sroa.02.0.lcssa.i55 = phi ptr [ %.sroa.02.1.i62, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit.loopexit" ], [ %.tr84, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %i.ap = sub i64 %.pre-phi92, %i.ad
  %i.aq = sdiv exact i64 %i.ap, 104
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit"
  %.sroa.066.0 = phi ptr [ %i.l, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %.sroa.02.0.lcssa.i55, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %i.ab, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %.047 = phi i64 [ %i.z, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %i.aa, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.k, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ], [ %i.aq, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEET_SF_SF_RKT0_T1_.exit" ] ; 2 uses
  %i.ar = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %.sroa.066.0, ptr %.tr7785, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm7memprof20DataAccessProfRecordESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_20IndexedMemProfReader17getAllMemProfDataEvE3$_0EEEvT_SF_SF_T0_SG_T1_"(ptr %.tr84, ptr %.sroa.066.0, ptr %i.ar, i64 noundef %.0, i64 noundef %.047)
  %i.as = sub nsw i64 %.tr7987, %.0               ; 2 uses
  %i.at = sub nsw i64 %.tr8088, %.047             ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  %i.av = icmp eq i64 %i.at, 0
  %or.cond = or i1 %i.au, %i.av
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN4llvm7memprof20DataAccessProfRecordEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #6 comdat {
bb.a:
  %2 = alloca %"struct.std::integral_constant.677", align 1 ; 3 uses
  %3 = alloca %class.anon.690, align 8            ; 4 uses
  %4 = alloca %"struct.std::integral_constant.677", align 1 ; 3 uses
  %5 = alloca %class.anon.690, align 8            ; 4 uses
  %6 = alloca %"struct.llvm::memprof::DataAccessProfRecord", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !540   ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !124
  %i.f = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !91   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEC1EOSB_EUlOT_T0_E_OSt7variantIJSA_mEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %6, align 8, !tbaa !92
  %i.m = load i64, ptr %i.g, align 8, !tbaa !93
  store i64 %i.m, ptr %i.e, align 8, !tbaa !93
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !91
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEC1EOSB_EUlOT_T0_E_OSt7variantIJSA_mEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEC1EOSB_EUlOT_T0_E_OSt7variantIJSA_mEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.n = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !91
  store ptr %i.g, ptr %0, align 8, !tbaa !92
  store i64 0, ptr %i.o, align 8, !tbaa !91
  store i8 0, ptr %i.g, align 8, !tbaa !93
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEC2EOS6_.exit.i

bb.d:                                             ; preds = %bb.a
  %i.q = load i64, ptr %0, align 8, !tbaa !192
  store i64 %i.q, ptr %6, align 8, !tbaa !542
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEC2EOS6_.exit.i

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEC2EOS6_.exit.i: ; preds = %bb.d, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEC1EOSB_EUlOT_T0_E_OSt7variantIJSA_mEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit.i.i.i.i.i.i.i.i
  store i8 %i.c, ptr %i.a, align 8, !tbaa !540
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZSt12__move_mergeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET0_T_SK_SK_SK_SJ_T1_":bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.z = phi ptr [ %i.j, %bb.g ], [ %i.m, %bb.h ], [ %.016.val, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.d, align 8, !tbaa !91
  store i8 0, ptr %i.z, align 1, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %.01650, i64 32
  br label %bb.p

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEbT_T0_.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %.051, i64 16 ; 6 uses
  %i.ac = icmp eq ptr %.0.val, %i.ab              ; 2 uses
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i26: ; preds = %bb.i
  br i1 %i.ac, label %bb.j, label %.thread.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20: ; preds = %bb.i
  br i1 %i.ac, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i26
  %i.ad = icmp ult i64 %.0.val19, 16
  tail call void @llvm.assume(i1 %i.ad)
  %.not21.i23 = icmp eq ptr %.051, %.sroa.0.047
  br i1 %.not21.i23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28, label %bb.k, !prof !257

bb.k:                                             ; preds = %bb.j
  switch i64 %.0.val19, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ae = load i8, ptr %.0.val, align 1, !tbaa !93
  store i8 %i.ae, ptr %i.j, align 1, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %.0.val, i64 %.0.val19, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24: ; preds = %bb.m, %bb.l, %bb.k
  %i.af = load i64, ptr %i.e, align 8, !tbaa !91  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !91
  %i.ah = load ptr, ptr %.sroa.0.047, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !93
  %.pre.i25 = load ptr, ptr %.051, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28

.thread.i27:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i26
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 8
  store ptr %.0.val, ptr %.sroa.0.047, align 8, !tbaa !92
  store i64 %.0.val19, ptr %i.aj, align 8, !tbaa !91
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !93
  store i64 %i.ak, ptr %i.k, align 8, !tbaa !93
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20
  %i.al = load i64, ptr %i.k, align 8, !tbaa !93
  store ptr %.0.val, ptr %.sroa.0.047, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 8
  store i64 %.0.val19, ptr %i.am, align 8, !tbaa !91
  %i.an = load i64, ptr %i.ab, align 8, !tbaa !93
  store i64 %i.an, ptr %i.k, align 8, !tbaa !93
  %.not.i22 = icmp eq ptr %i.j, null
  br i1 %.not.i22, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21
  store ptr %i.j, ptr %.051, align 8, !tbaa !92
  store i64 %i.al, ptr %i.ab, align 8, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21, %.thread.i27
  store ptr %i.ab, ptr %.051, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24, %bb.n, %bb.o
  %i.ao = phi ptr [ %i.j, %bb.n ], [ %i.ab, %bb.o ], [ %.0.val, %bb.j ], [ %.pre.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i24 ]
  store i64 0, ptr %i.e, align 8, !tbaa !91
  store i8 0, ptr %i.ao, align 1, !tbaa !93
  %i.ap = getelementptr inbounds nuw i8, ptr %.051, i64 32
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.117 = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %.01650, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28 ] ; 3 uses
  %.1 = phi ptr [ %.051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit28 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 32 ; 2 uses
  %i.ar = icmp ne ptr %.1, %1
  %i.as = icmp ne ptr %.117, %3
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !3081

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.aq, %bb.p ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.p ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.p ] ; 2 uses
  %i.au = ptrtoint ptr %1 to i64
  %i.av = ptrtoint ptr %.0.lcssa to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ax, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 10 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 11 uses
  %i.az = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !92 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 4 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  %i.bc = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !92 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 6 uses
  %i.be = icmp eq ptr %i.bc, %i.bd                ; 2 uses
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.be, label %bb.q, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.be, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !91 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bh)
  %.not21.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i, %.0811.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, label %bb.r, !prof !257

bb.r:                                             ; preds = %bb.q
  switch i64 %i.bg, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !93
  store i8 %i.bi, ptr %i.az, align 1, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.bc, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !91 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !91
  %i.bl = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !92
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !93
  %.pre.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.bc, ptr %.0811.i.i.i.i.i, align 8, !tbaa !92
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !91
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !91
  %i.bq = load i64, ptr %i.bd, align 8, !tbaa !93
  store i64 %i.bq, ptr %i.ba, align 8, !tbaa !93
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.br = load i64, ptr %i.ba, align 8, !tbaa !93
  store ptr %i.bc, ptr %.0811.i.i.i.i.i, align 8, !tbaa !92
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !91
  %i.bv = load i64, ptr %i.bd, align 8, !tbaa !93
  store i64 %i.bv, ptr %i.ba, align 8, !tbaa !93
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.az, ptr %.0910.i.i.i.i.i, align 8, !tbaa !92
  store i64 %i.br, ptr %i.bd, align 8, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.bd, ptr %.0910.i.i.i.i.i, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i, %bb.q
  %i.bw = phi ptr [ %i.az, %bb.u ], [ %i.bd, %bb.v ], [ %i.bc, %bb.q ], [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !91
  store i8 0, ptr %i.bw, align 1, !tbaa !93
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.ca = add nsw i64 %.013.i.i.i.i.i, -1
  %i.cb = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit, !llvm.loop !61

_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ]
  %i.cc = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.cd = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.ce ; 2 uses
  %i.cg = ptrtoint ptr %3 to i64
  %i.ch = ptrtoint ptr %.016.lcssa to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 5                 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i30, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit43

.lr.ph.i.i.i.i.i30:                               ; preds = %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i37
  %.013.i.i.i.i.i31 = phi i64 [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i37 ], [ %i.cj, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 2 uses
  %.0811.i.i.i.i.i32 = phi ptr [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i37 ], [ %i.cf, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 10 uses
  %.0910.i.i.i.i.i33 = phi ptr [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i37 ], [ %.016.lcssa, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ] ; 11 uses
  %i.cl = load ptr, ptr %.0811.i.i.i.i.i32, align 8, !tbaa !92 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 16 ; 4 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  %i.co = load ptr, ptr %.0910.i.i.i.i.i33, align 8, !tbaa !92 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 16 ; 6 uses
  %i.cq = icmp eq ptr %i.co, %i.cp                ; 2 uses
  br i1 %i.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i41: ; preds = %.lr.ph.i.i.i.i.i30
  br i1 %i.cq, label %bb.w, label %.thread.i.i.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %.lr.ph.i.i.i.i.i30
  br i1 %i.cq, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i35

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i41
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !91 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 16
  tail call void @llvm.assume(i1 %i.ct)
  %.not21.i.i.i.i.i.i38 = icmp eq ptr %.0910.i.i.i.i.i33, %.0811.i.i.i.i.i32
  br i1 %.not21.i.i.i.i.i.i38, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i37, label %bb.x, !prof !257

bb.x:                                             ; preds = %bb.w
  switch i64 %i.cs, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i39
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.cu = load i8, ptr %i.co, align 1, !tbaa !93
  store i8 %i.cu, ptr %i.cl, align 1, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i39

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.co, i64 %i.cs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i39: ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = load i64, ptr %i.cr, align 8, !tbaa !91 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 8
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !91
  %i.cx = load ptr, ptr %.0811.i.i.i.i.i32, align 8, !tbaa !92
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store i8 0, ptr %i.cy, align 1, !tbaa !93
  %.pre.i.i.i.i.i.i40 = load ptr, ptr %.0910.i.i.i.i.i33, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i37

.thread.i.i.i.i.i.i42:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i41
  %i.cz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 8
  store ptr %i.co, ptr %.0811.i.i.i.i.i32, align 8, !tbaa !92
  %i.da = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !91
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !91
  %i.dc = load i64, ptr %i.cp, align 8, !tbaa !93
  store i64 %i.dc, ptr %i.cm, align 8, !tbaa !93
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.dd = load i64, ptr %i.cm, align 8, !tbaa !93
  store ptr %i.co, ptr %.0811.i.i.i.i.i32, align 8, !tbaa !92
  %i.de = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !91
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !91
  %i.dh = load i64, ptr %i.cp, align 8, !tbaa !93
  store i64 %i.dh, ptr %i.cm, align 8, !tbaa !93
  %.not.i.i.i.i.i.i36 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i36, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i35
  store ptr %i.cl, ptr %.0910.i.i.i.i.i33, align 8, !tbaa !92
  store i64 %i.dd, ptr %i.cp, align 8, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i37

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i35, %.thread.i.i.i.i.i.i42
  store ptr %i.cp, ptr %.0910.i.i.i.i.i33, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i37: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i39, %bb.w
  %i.di = phi ptr [ %i.cl, %bb.aa ], [ %i.cp, %bb.ab ], [ %i.co, %bb.w ], [ %.pre.i.i.i.i.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i39 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 8
  store i64 0, ptr %i.dj, align 8, !tbaa !91
  store i8 0, ptr %i.di, align 1, !tbaa !93
  %i.dk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 32 ; 2 uses
  %i.dm = add nsw i64 %.013.i.i.i.i.i31, -1
  %i.dn = icmp sgt i64 %.013.i.i.i.i.i31, 1
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i30, label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit43.loopexit, !llvm.loop !61

_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit43.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i37
  %5 = ptrtoint ptr %i.dl to i64
  br label %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit43

_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit43: ; preds = %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit43.loopexit, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit
  %.08.lcssa.i.i.i.i.i29 = phi i64 [ %i.cc, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ], [ %5, %_ZSt4moveIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit43.loopexit ]
  %i.do = sub i64 %.08.lcssa.i.i.i.i.i29, %i.cc
  %i.dp = getelementptr inbounds i8, ptr %i.cf, i64 %i.do
  ret ptr %i.dp
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEEvT_SJ_SJ_T0_SK_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond94 = or i1 %i.a, %i.b
  br i1 %or.cond94, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr89100 = phi i64 [ %4, %.lr.ph ], [ %i.bc, %tailrecurse ] ; 4 uses
  %.tr8899 = phi i64 [ %3, %.lr.ph ], [ %i.bb, %tailrecurse ] ; 4 uses
  %.tr8697 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr95 = phi ptr [ %0, %.lr.ph ], [ %i.ba, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr89100, %.tr8899
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.tr8697, i64 8
  %.val1.i = load i64, ptr %i.f, align 8, !tbaa !91 ; 2 uses
  %i.g = getelementptr i8, ptr %.tr95, i64 8
  %.val3.i = load i64, ptr %i.g, align 8, !tbaa !91 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i, i64 %.val1.i) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %.val2.i = load ptr, ptr %.tr95, align 8
  %.val.i = load ptr, ptr %.tr8697, align 8
  %i.i = tail call i32 @memcmp(ptr noundef readonly %.val.i, ptr noundef readonly %.val2.i, i64 noundef %.sroa.speculated.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.j = sub i64 %.val1.i, %.val3.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.j, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.k = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.k, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit"
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.tr95, ptr noundef nonnull align 8 dereferenceable(32) %.tr8697) #26
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.l = icmp sgt i64 %.tr8899, %.tr89100
  %i.m = ptrtoint ptr %.tr8697 to i64             ; 4 uses
  br i1 %i.l, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit56

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.n = sdiv i64 %.tr8899, 2                     ; 2 uses
  %i.o = getelementptr inbounds [32 x i8], ptr %.tr95, i64 %i.n ; 3 uses
  %.val = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val50 = load i64, ptr %i.p, align 8           ; 2 uses
  %i.q = sub i64 %i.c, %i.m
  %i.r = ashr exact i64 %i.q, 5                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEEKSD_EEbT_RT0_.exit.i"
  %.07.i = phi i64 [ %.1.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEEKSD_EEbT_RT0_.exit.i" ], [ %i.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %.sroa.02.1.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEEKSD_EEbT_RT0_.exit.i" ], [ %.tr8697, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.t = lshr i64 %.07.i, 1                       ; 3 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.sroa.02.06.i, i64 %i.t ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val2.i.i = load i64, ptr %i.v, align 8, !tbaa !91 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val50, i64 %.val2.i.i) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.val.i.i = load ptr, ptr %i.u, align 8
  %i.x = tail call i32 @memcmp(ptr noundef readonly %.val.i.i, ptr noundef readonly %.val, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEEKSD_EEbT_RT0_.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.y = sub i64 %.val2.i.i, %.val50
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEEKSD_EEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEEKSD_EEbT_RT0_.exit.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i, 0            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ab = xor i64 %i.t, -1
  %i.ac = add nsw i64 %.07.i, %i.ab
  %.sroa.02.1.i = select i1 %i.z, ptr %i.aa, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %i.z, i64 %i.ac, i64 %i.t     ; 2 uses
  %i.ad = icmp sgt i64 %.1.i, 0
  br i1 %i.ad, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit.loopexit", !llvm.loop !63

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit.loopexit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEEKSD_EEbT_RT0_.exit.i"
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit.loopexit" ], [ %i.m, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit.loopexit" ], [ %.tr8697, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ae = sub i64 %.pre-phi, %i.m
  %i.af = ashr exact i64 %i.ae, 5
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit56: ; preds = %bb.e
  %i.ag = sdiv i64 %.tr89100, 2                   ; 2 uses
  %i.ah = getelementptr inbounds [32 x i8], ptr %.tr8697, i64 %i.ag ; 3 uses
  %.val51 = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val52 = load i64, ptr %i.ai, align 8          ; 2 uses
  %i.aj = ptrtoint ptr %.tr95 to i64              ; 3 uses
  %i.ak = sub i64 %i.m, %i.aj
  %i.al = ashr exact i64 %i.ak, 5                 ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i58, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i58: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit56, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i"
  %.07.i59 = phi i64 [ %.1.i68, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i" ], [ %i.al, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ] ; 2 uses
  %.sroa.02.06.i60 = phi ptr [ %.sroa.02.1.i67, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i" ], [ %.tr95, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ] ; 2 uses
  %i.an = lshr i64 %.07.i59, 1                    ; 3 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.02.06.i60, i64 %i.an ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val4.i.i = load i64, ptr %i.ap, align 8, !tbaa !91 ; 2 uses
  %.sroa.speculated.i.i.i.i.i63 = tail call i64 @llvm.umin.i64(i64 %.val4.i.i, i64 %.val52) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i.i.i63, 0
  br i1 %i.aq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i69, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i64

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i64: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i58
  %.val3.i.i = load ptr, ptr %i.ao, align 8
  %i.ar = tail call i32 @memcmp(ptr noundef readonly %.val51, ptr noundef readonly %.val3.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i63) #26 ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i65, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i69, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i69: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i64, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i58
  %i.as = sub i64 %.val52, %.val4.i.i
  %spec.select7.i.i.i.i.i.i70 = tail call i64 @llvm.smax.i64(i64 %i.as, i64 -2147483648)
  %.08.i.i.i.i.i.i71 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i70, i64 2147483647)
  %.0.i6.i.i.i.i.i72 = trunc nsw i64 %.08.i.i.i.i.i.i71 to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i69, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i64
  %.0.i.i.i.i.i66 = phi i32 [ %i.ar, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i64 ], [ %.0.i6.i.i.i.i.i72, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i69 ]
  %i.at = icmp slt i32 %.0.i.i.i.i.i66, 0         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.av = xor i64 %i.an, -1
  %i.aw = add nsw i64 %.07.i59, %i.av
  %.sroa.02.1.i67 = select i1 %i.at, ptr %.sroa.02.06.i60, ptr %i.au ; 3 uses
  %.1.i68 = select i1 %i.at, i64 %i.an, i64 %i.aw ; 2 uses
  %i.ax = icmp sgt i64 %.1.i68, 0
  br i1 %i.ax, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i58, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit.loopexit", !llvm.loop !64

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit.loopexit": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i"
  %.pre103 = ptrtoint ptr %.sroa.02.1.i67 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit56
  %.pre-phi104 = phi i64 [ %.pre103, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit.loopexit" ], [ %i.aj, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ]
  %.sroa.02.0.lcssa.i57 = phi ptr [ %.sroa.02.1.i67, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit.loopexit" ], [ %.tr95, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ]
  %i.ay = sub i64 %.pre-phi104, %i.aj
  %i.az = ashr exact i64 %i.ay, 5
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit"
  %.sroa.075.0 = phi ptr [ %i.o, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit" ], [ %.sroa.02.0.lcssa.i57, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit" ], [ %i.ah, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit" ] ; 2 uses
  %.047 = phi i64 [ %i.af, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit" ], [ %i.ag, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.n, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Iter_comp_valIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit" ], [ %i.az, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_NS0_5__ops14_Val_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEET_SJ_SJ_RKT0_T1_.exit" ] ; 2 uses
  %i.ba = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_SE_SE_St26random_access_iterator_tag(ptr %.sroa.075.0, ptr %.tr8697, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EEEvT_SJ_SJ_T0_SK_T1_"(ptr %.tr95, ptr %.sroa.075.0, ptr %i.ba, i64 noundef %.0, i64 noundef %.047)
  %i.bb = sub nsw i64 %.tr8899, %.0               ; 2 uses
  %i.bc = sub nsw i64 %.tr89100, %.047            ; 2 uses
  %i.bd = icmp eq i64 %i.bb, 0
  %i.be = icmp eq i64 %i.bc, 0
  %or.cond = or i1 %i.bd, %i.be
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm20IndexedMemProfReader17getAllMemProfDataEvE3$_1EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit", %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_SE_SE_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
end_hunk_2
