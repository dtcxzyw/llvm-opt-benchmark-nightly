Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLJIT?download=true
inline.NumInlined: 6788
inline.NumDeleted: 3834
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm8FunctionEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterINS3_11less_secondEEEEvT_SG_T0_T1_T2_:bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.prol, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.prol, i64 16 ; 2 uses
  %i.ff = add nsw i64 %.012.i.i.i.i.i11.i25.prol, -1 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol, !llvm.loop !1878

.lr.ph.i.i.i.i.i10.i24.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i10.i24.prol, %.lr.ph.i.i.i.i.i10.i24.preheader
  %.012.i.i.i.i.i11.i25.unr = phi i64 [ %i.ex, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.ff, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0811.i.i.i.i.i12.i26.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.fe, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0910.i.i.i.i.i13.i27.unr = phi ptr [ %.sroa.015.0.lcssa.i18, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.fd, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %i.fg = icmp ult i64 %i.ex, 4
  br i1 %i.fg, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm8FunctionEjESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit42, label %.lr.ph.i.i.i.i.i10.i24

.lr.ph.i.i.i.i.i10.i24:                           ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24
  %.012.i.i.i.i.i11.i25 = phi i64 [ %i.gf, %.lr.ph.i.i.i.i.i10.i24 ], [ %.012.i.i.i.i.i11.i25.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0811.i.i.i.i.i12.i26.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0910.i.i.i.i.i13.i27.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 9 uses
  %i.fh = load ptr, ptr %.0910.i.i.i.i.i13.i27, align 8, !tbaa !641
  store ptr %i.fh, ptr %.0811.i.i.i.i.i12.i26, align 8, !tbaa !645
  %i.fi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !219
  %i.fk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 8
  store i32 %i.fj, ptr %i.fk, align 8, !tbaa !653
  %i.fl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 16
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !641
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !645
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 24
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !219
  %i.fq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 24
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !653
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 32
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !641
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !645
  %i.fu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 40
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !219
  %i.fw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 40
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !653
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 48
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 48
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !641
  store ptr %i.fz, ptr %i.fy, align 8, !tbaa !645
  %i.ga = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 56
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !219
  %i.gc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 56
  store i32 %i.gb, ptr %i.gc, align 8, !tbaa !653
  %i.gd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 64
  %i.gf = add nsw i64 %.012.i.i.i.i.i11.i25, -4
  %i.gg = icmp sgt i64 %.012.i.i.i.i.i11.i25, 4
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm8FunctionEjESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit42, !llvm.loop !35

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm8FunctionEjESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterINS3_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit42: ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm8FunctionEjESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEEvT_SG_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not64 = icmp slt i64 %i.e, %i.a
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %3, 4                       ; 2 uses
  %.idx55 = shl nsw i64 %3, 5                     ; 2 uses
  %.not56 = icmp eq i64 %.idx, %.idx55
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit
  %.sroa.022.066 = phi ptr [ %2, %.lr.ph ], [ %i.cy, %_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.065 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.065, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.065, i64 %.idx55 ; 4 uses
  br i1 %.not56, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.029.i = phi ptr [ %.1.i, %bb.e ], [ %.065, %bb.b ] ; 4 uses
  %.01628.i = phi ptr [ %.117.i, %bb.e ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.0.027.i = phi ptr [ %i.p, %bb.e ], [ %.sroa.022.066, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01628.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  %i.j = load i32, ptr %i.h, align 4, !tbaa !219  ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !219  ; 2 uses
  %i.l = icmp ult i32 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01628.i, i64 16
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.029.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink34.in.i = phi ptr [ %.01628.i, %bb.c ], [ %.029.i, %bb.d ]
  %.sink.i = phi i32 [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  %.117.i = phi ptr [ %i.m, %bb.c ], [ %.01628.i, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %.029.i, %bb.c ], [ %i.n, %bb.d ] ; 3 uses
  %.sink34.i = load ptr, ptr %.sink34.in.i, align 8, !tbaa !641
  store ptr %.sink34.i, ptr %.sroa.0.027.i, align 8, !tbaa !645
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 8
  store i32 %.sink.i, ptr %i.o, align 8, !tbaa !653
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.q = icmp ne ptr %.1.i, %i.f
  %i.r = icmp ne ptr %.117.i, %i.g
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1879

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.066, %bb.b ], [ %i.p, %bb.e ] ; 5 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.e ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.065, %bb.b ], [ %.1.i, %bb.e ] ; 3 uses
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = ptrtoint ptr %.0.lcssa.i to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4                   ; 5 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.y = load ptr, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !641
  store ptr %i.y, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !645
  %i.z = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !219
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !653
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ae = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1880

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa105.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.af = icmp ult i64 %i.w, 4
  br i1 %i.af, label %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ag = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !641
  store ptr %i.ag, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !645
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !219
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !653
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !641
  store ptr %i.am, ptr %i.al, align 8, !tbaa !645
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !219
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !653
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !641
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !645
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !219
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store i32 %i.au, ptr %i.av, align 8, !tbaa !653
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !641
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !645
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !219
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !653
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.be = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bf = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !35

_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa105.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bd, %.lr.ph.i.i.i.i.i.i ]
  %i.bg = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.bh = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.bi ; 3 uses
  %i.bk = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.bl = ptrtoint ptr %.016.lcssa.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 4                 ; 5 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i
  %xtraiter110 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader, %.lr.ph.i.i.i.i.i19.i.prol
  %.012.i.i.i.i.i20.i.prol = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bn, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %.0811.i.i.i.i.i21.i.prol = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bj, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.prol = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i19.i.prol ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %prol.iter112 = phi i64 [ %prol.iter112.next, %.lr.ph.i.i.i.i.i19.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %i.bp = load ptr, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !641
  store ptr %i.bp, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !645
  %i.bq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !219
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 8
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !653
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.bv = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter112.next = add i64 %prol.iter112, 1   ; 2 uses
  %prol.iter112.cmp.not = icmp eq i64 %prol.iter112.next, %xtraiter110
  br i1 %prol.iter112.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !1881

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bv, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa106.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bu, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.bw = icmp ult i64 %i.bn, 4
  br i1 %i.bw, label %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %i.bx = load ptr, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !641
  store ptr %i.bx, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !645
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !219
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !653
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !641
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !645
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !219
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 24
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !653
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !641
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !645
  %i.ck = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !219
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !653
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !641
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !645
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 56
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !219
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 56
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !653
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.cv = add nsw i64 %.012.i.i.i.i.i20.i, -4
  %i.cw = icmp sgt i64 %.012.i.i.i.i.i20.i, 4
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i, !llvm.loop !35

_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i19.i, %.lr.ph.i.i.i.i.i19.i.prol.loopexit
  %.lcssa106 = phi ptr [ %.lcssa106.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.cu, %.lr.ph.i.i.i.i.i19.i ]
  %4 = ptrtoint ptr %.lcssa106 to i64
  br label %_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit

_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.bg, %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %4, %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit23.loopexit.i ]
  %i.cx = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.bg
  %i.cy = getelementptr inbounds i8, ptr %i.bj, i64 %i.cx ; 2 uses
  %i.cz = sub i64 %i.b, %i.bk
  %i.da = ashr exact i64 %i.cz, 4                 ; 2 uses
  %.not = icmp slt i64 %i.da, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1882

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.cy, %_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.lcssa62 = phi i64 [ %i.e, %bb.a ], [ %i.da, %_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa62) ; 2 uses
  %.idx57 = shl nsw i64 %.sroa.speculated, 4
  %i.db = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx57 ; 5 uses
  %i.dc = icmp ne i64 %.sroa.speculated, 0
  %i.dd = icmp ne ptr %i.db, %1
  %i.de = and i1 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph.i41, label %._crit_edge.i25

.lr.ph.i41:                                       ; preds = %._crit_edge, %bb.h
  %.029.i42 = phi ptr [ %.1.i48, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.01628.i43 = phi ptr [ %.117.i47, %bb.h ], [ %i.db, %._crit_edge ] ; 4 uses
  %.sroa.0.027.i44 = phi ptr [ %i.dn, %bb.h ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.01628.i43, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.029.i42, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !219 ; 2 uses
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !219 ; 2 uses
  %i.dj = icmp ult i32 %i.dh, %i.di
  br i1 %i.dj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i41
  %i.dk = getelementptr inbounds nuw i8, ptr %.01628.i43, i64 16
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i41
  %i.dl = getelementptr inbounds nuw i8, ptr %.029.i42, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink34.in.i45 = phi ptr [ %.01628.i43, %bb.f ], [ %.029.i42, %bb.g ]
  %.sink.i46 = phi i32 [ %i.dh, %bb.f ], [ %i.di, %bb.g ]
  %.117.i47 = phi ptr [ %i.dk, %bb.f ], [ %.01628.i43, %bb.g ] ; 3 uses
  %.1.i48 = phi ptr [ %.029.i42, %bb.f ], [ %i.dl, %bb.g ] ; 3 uses
  %.sink34.i49 = load ptr, ptr %.sink34.in.i45, align 8, !tbaa !641
  store ptr %.sink34.i49, ptr %.sroa.0.027.i44, align 8, !tbaa !645
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 8
  store i32 %.sink.i46, ptr %i.dm, align 8, !tbaa !653
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 16 ; 2 uses
  %i.do = icmp ne ptr %.1.i48, %i.db
  %i.dp = icmp ne ptr %.117.i47, %1
  %i.dq = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %i.dq, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !1879

._crit_edge.i25:                                  ; preds = %bb.h, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.dn, %bb.h ] ; 5 uses
  %.016.lcssa.i27 = phi ptr [ %i.db, %._crit_edge ], [ %.117.i47, %bb.h ] ; 3 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i48, %bb.h ] ; 3 uses
  %i.dr = ptrtoint ptr %i.db to i64
  %i.ds = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 4                 ; 5 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29

.lr.ph.i.i.i.i.i.i37.preheader:                   ; preds = %._crit_edge.i25
  %xtraiter113 = and i64 %i.du, 3                 ; 2 uses
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i37.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i37.prol
  %.012.i.i.i.i.i.i38.prol = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i.i37.prol ], [ %i.du, %.lr.ph.i.i.i.i.i.i37.preheader ]
  %.0811.i.i.i.i.i.i39.prol = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i37.prol ], [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.prol = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i37.prol ], [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ] ; 3 uses
  %prol.iter115 = phi i64 [ %prol.iter115.next, %.lr.ph.i.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.preheader ]
  %i.dw = load ptr, ptr %.0910.i.i.i.i.i.i40.prol, align 8, !tbaa !641
  store ptr %i.dw, ptr %.0811.i.i.i.i.i.i39.prol, align 8, !tbaa !645
  %i.dx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !219
  %i.dz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 8
  store i32 %i.dy, ptr %i.dz, align 8, !tbaa !653
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.ec = add nsw i64 %.012.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter115.next = add i64 %prol.iter115, 1   ; 2 uses
  %prol.iter115.cmp.not = icmp eq i64 %prol.iter115.next, %xtraiter113
  br i1 %prol.iter115.cmp.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol, !llvm.loop !1883

.lr.ph.i.i.i.i.i.i37.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i38.unr = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.ec, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.eb, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.eb, %.lr.ph.i.i.i.i.i.i37.prol ]
  %i.ed = icmp ult i64 %i.du, 4
  br i1 %i.ed, label %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i38 = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %i.ee = load ptr, ptr %.0910.i.i.i.i.i.i40, align 8, !tbaa !641
  store ptr %i.ee, ptr %.0811.i.i.i.i.i.i39, align 8, !tbaa !645
  %i.ef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !219
  %i.eh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 8
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !653
  %i.ei = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 16
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !641
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !645
  %i.el = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 24
  %i.em = load i32, ptr %i.el, align 8, !tbaa !219
  %i.en = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 24
  store i32 %i.em, ptr %i.en, align 8, !tbaa !653
  %i.eo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !641
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !645
  %i.er = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 40
  %i.es = load i32, ptr %i.er, align 8, !tbaa !219
  %i.et = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 40
  store i32 %i.es, ptr %i.et, align 8, !tbaa !653
  %i.eu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 48
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 48
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !641
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !645
  %i.ex = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 56
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !219
  %i.ez = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 56
  store i32 %i.ey, ptr %i.ez, align 8, !tbaa !653
  %i.fa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.fc = add nsw i64 %.012.i.i.i.i.i.i38, -4
  %i.fd = icmp sgt i64 %.012.i.i.i.i.i.i38, 4
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29, !llvm.loop !35

_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ], [ %i.fb, %.lr.ph.i.i.i.i.i.i37 ]
  %i.fe = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.ff = sub i64 %i.b, %i.fe
  %i.fg = ashr exact i64 %i.ff, 4                 ; 5 uses
  %i.fh = icmp sgt i64 %i.fg, 0
  br i1 %i.fh, label %.lr.ph.i.i.i.i.i19.i32.preheader, label %_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit50

.lr.ph.i.i.i.i.i19.i32.preheader:                 ; preds = %_ZSt4moveIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29
  %i.fi = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.fj = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.fk ; 2 uses
  %xtraiter116 = and i64 %i.fg, 3                 ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol

.lr.ph.i.i.i.i.i19.i32.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader, %.lr.ph.i.i.i.i.i19.i32.prol
  %.012.i.i.i.i.i20.i33.prol = phi i64 [ %i.fs, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %i.fg, %.lr.ph.i.i.i.i.i19.i32.preheader ]
  %.0811.i.i.i.i.i21.i34.prol = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %i.fl, %.lr.ph.i.i.i.i.i19.i32.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.prol = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i19.i32.prol ], [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ] ; 3 uses
  %prol.iter118 = phi i64 [ %prol.iter118.next, %.lr.ph.i.i.i.i.i19.i32.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader ]
  %i.fm = load ptr, ptr %.0910.i.i.i.i.i22.i35.prol, align 8, !tbaa !641
  store ptr %i.fm, ptr %.0811.i.i.i.i.i21.i34.prol, align 8, !tbaa !645
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 8
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !219
  %i.fp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 8
  store i32 %i.fo, ptr %i.fp, align 8, !tbaa !653
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.prol, i64 16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.prol, i64 16 ; 2 uses
  %i.fs = add nsw i64 %.012.i.i.i.i.i20.i33.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol, !llvm.loop !1884

.lr.ph.i.i.i.i.i19.i32.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i32.prol, %.lr.ph.i.i.i.i.i19.i32.preheader
  %.012.i.i.i.i.i20.i33.unr = phi i64 [ %i.fg, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fs, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0811.i.i.i.i.i21.i34.unr = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fr, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0910.i.i.i.i.i22.i35.unr = phi ptr [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.fq, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %i.ft = icmp ult i64 %i.fg, 4
  br i1 %i.ft, label %_ZSt12__move_mergeIPSt4pairIPN4llvm8FunctionEjEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterINS1_11less_secondEEEET0_T_SH_SH_SH_SG_T1_.exit50, label %.lr.ph.i.i.i.i.i19.i32

.lr.ph.i.i.i.i.i19.i32:                           ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32
  %.012.i.i.i.i.i20.i33 = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.i19.i32 ], [ %.012.i.i.i.i.i20.i33.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34 = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0811.i.i.i.i.i21.i34.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35 = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0910.i.i.i.i.i22.i35.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 9 uses
  %i.fu = load ptr, ptr %.0910.i.i.i.i.i22.i35, align 8, !tbaa !641
  store ptr %i.fu, ptr %.0811.i.i.i.i.i21.i34, align 8, !tbaa !645
  %i.fv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 8
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !219
  %i.fx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 8
  store i32 %i.fw, ptr %i.fx, align 8, !tbaa !653
  %i.fy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 16
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !641
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !645
  %i.gb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 24
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !219
  %i.gd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 24
  store i32 %i.gc, ptr %i.gd, align 8, !tbaa !653
  %i.ge = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !641
  store ptr %i.gg, ptr %i.gf, align 8, !tbaa !645
  %i.gh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 40
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !219
end_hunk_0
