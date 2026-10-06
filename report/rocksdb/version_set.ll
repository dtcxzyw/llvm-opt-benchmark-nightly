Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb18VersionStorageInfo26UpdateFilesByCompactionPriERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsE:bb.a
  %i.fb = icmp eq i64 %i.fa, 0
  %i.fc = or disjoint i64 %i.ew, 1                ; 2 uses
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.ex
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i, %bb.e
  %.010.i.i.i.i = phi i64 [ %i.ex, %bb.e ], [ %i.gl, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i ] ; 8 uses
  %i.ff = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %.010.i.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.ff, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !347 ; 2 uses
  %i.fg = icmp slt i64 %.010.i.i.i.i, %i.ez
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.045.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i, %bb.f ] ; 2 uses
  %i.fh = shl i64 %.045.i.i.i.i.i, 1              ; 2 uses
  %i.fi = add i64 %i.fh, 2                        ; 2 uses
  %i.fj = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %i.fi
  %i.fk = or disjoint i64 %i.fh, 1                ; 2 uses
  %i.fl = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1053
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 128
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !1042
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1053
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 128
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !1042
  %i.fu = icmp ugt i64 %i.fp, %i.ft
  %spec.select.i.i.i.i.i = select i1 %i.fu, i64 %i.fk, i64 %i.fi ; 4 uses
  %i.fv = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %spec.select.i.i.i.i.i
  %i.fw = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %.045.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !1051
  %i.fx = icmp slt i64 %spec.select.i.i.i.i.i, %i.ez
  br i1 %i.fx, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !2072

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.010.i.i.i.i, %bb.f ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.fy = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.ex
  %or.cond.i.i.i.i = select i1 %i.fb, i1 %i.fy, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !tbaa.struct !1051
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi i64 [ %i.fc, %bb.g ], [ %.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.fz = icmp sgt i64 %.1.i.i.i.i.i, %.010.i.i.i.i
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.h
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i.i, i64 128
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.06.i.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i.i, %bb.i ], [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.097.in.i.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i.i, -1
  %.097.i.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i.i, 2 ; 4 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %.097.i.i.i.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1053
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 128
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !1042
  %i.gg = load i64, ptr %i.ga, align 8, !tbaa !1042
  %i.gh = icmp ugt i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %.06.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !tbaa.struct !1051
  %i.gj = icmp sgt i64 %.097.i.i.i.i.i.i, %.010.i.i.i.i
  br i1 %i.gj, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i, !llvm.loop !2073

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %bb.h ], [ %.097.i.i.i.i.i.i, %bb.i ], [ %.06.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %.0.lcssa.i.i.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i.i, ptr %i.gk, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !347
  %.not.i.i.i.i67 = icmp eq i64 %.010.i.i.i.i, 0
  %i.gl = add nsw i64 %.010.i.i.i.i, -1
  br i1 %.not.i.i.i.i67, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i.i, label %bb.f, !llvm.loop !2074

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_T0_SI_T1_T2_.exit.i.i.i.i, %bb.d
  %.not30.i.i.i = icmp ult ptr %i.eu, %.0.i.i.i.i.i.fr
  br i1 %.not30.i.i.i, label %.lr.ph.i.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i.i
  %i.gm = add nsw i64 %spec.select, -1
  %i.gn = lshr i64 %i.gm, 1
  %i.go = icmp ugt i64 %i.de, 2
  %i.gp = and i64 %spec.select, 1
  %i.gq = icmp eq i64 %i.gp, 0                    ; 2 uses
  %i.gr = add nsw i64 %spec.select, -2            ; 3 uses
  %i.gs = ashr exact i64 %i.gr, 1                 ; 2 uses
  %i.gt = or disjoint i64 %i.gr, 1                ; 3 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.gs ; 2 uses
  br i1 %i.go, label %.lr.ph.i.split.us.i.preheader.i, label %.lr.ph.i.split.i.i

.lr.ph.i.split.us.i.preheader.i:                  ; preds = %.lr.ph.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 8
  br label %.lr.ph.i.split.us.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %bb.l, %.lr.ph.i.split.us.i.preheader.i
  %.sroa.0.031.i.us.i.i = phi ptr [ %i.ig, %bb.l ], [ %i.eu, %.lr.ph.i.split.us.i.preheader.i ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.us.i.i, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !1053 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 128 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !1042
  %i.hb = load ptr, ptr %i.gw, align 8, !tbaa !1053
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 128
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !1042
  %i.he = icmp ugt i64 %i.ha, %i.hd
  br i1 %i.he, label %.lr.ph.i.i25.i.preheader.us.i.i, label %bb.l

.lr.ph.i.i25.i.preheader.us.i.i:                  ; preds = %.lr.ph.i.split.us.i.i
  %.sroa.03.0.copyload.i13.i.us.i.i = load i64, ptr %.sroa.0.031.i.us.i.i, align 8, !tbaa !533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.031.i.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0172.0, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i25.i.us.i.i

.lr.ph.i.i25.i.us.i.i:                            ; preds = %.lr.ph.i.i25.i.us.i.i, %.lr.ph.i.i25.i.preheader.us.i.i
  %.045.i.i26.i.us.i.i = phi i64 [ %spec.select.i.i27.i.us.i.i, %.lr.ph.i.i25.i.us.i.i ], [ 0, %.lr.ph.i.i25.i.preheader.us.i.i ] ; 2 uses
  %i.hf = shl i64 %.045.i.i26.i.us.i.i, 1         ; 2 uses
  %i.hg = add i64 %i.hf, 2                        ; 2 uses
  %i.hh = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %i.hg
  %i.hi = or disjoint i64 %i.hf, 1                ; 2 uses
  %i.hj = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !1053
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 128
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !1042
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !1053
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 128
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !1042
  %i.hs = icmp ugt i64 %i.hn, %i.hr
  %spec.select.i.i27.i.us.i.i = select i1 %i.hs, i64 %i.hi, i64 %i.hg ; 6 uses
  %i.ht = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %spec.select.i.i27.i.us.i.i
  %i.hu = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %.045.i.i26.i.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i64 16, i1 false), !tbaa.struct !1051
  %i.hv = icmp slt i64 %spec.select.i.i27.i.us.i.i, %i.gn
  br i1 %i.hv, label %.lr.ph.i.i25.i.us.i.i, label %._crit_edge.i.i17.i.us.i.i, !llvm.loop !2072

._crit_edge.i.i17.i.us.i.i:                       ; preds = %.lr.ph.i.i25.i.us.i.i
  %i.hw = icmp eq i64 %spec.select.i.i27.i.us.i.i, %i.gs
  %or.cond.i.us.i.i = select i1 %i.gq, i1 %i.hw, i1 false
  br i1 %or.cond.i.us.i.i, label %.thread.i.i.us.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i17.i.us.i.i
  %.not.i19.i.us.i.i = icmp eq i64 %spec.select.i.i27.i.us.i.i, 0
  br i1 %.not.i19.i.us.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.us.i.i, label %.lr.ph.i.i.i20.i.us.i.i.preheader

.thread.i.i.us.i.i:                               ; preds = %._crit_edge.i.i17.i.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.i20.i.us.i.i.preheader

.lr.ph.i.i.i20.i.us.i.i.preheader:                ; preds = %.thread.i.i.us.i.i, %bb.j
  %.06.i.i.i21.i.us.i.i.ph = phi i64 [ %spec.select.i.i27.i.us.i.i, %bb.j ], [ %i.gt, %.thread.i.i.us.i.i ]
  br label %.lr.ph.i.i.i20.i.us.i.i

.lr.ph.i.i.i20.i.us.i.i:                          ; preds = %.lr.ph.i.i.i20.i.us.i.i.preheader, %bb.k
  %.06.i.i.i21.i.us.i.i = phi i64 [ %.097.i.i1011.i.i.us.i.i, %bb.k ], [ %.06.i.i.i21.i.us.i.i.ph, %.lr.ph.i.i.i20.i.us.i.i.preheader ] ; 3 uses
  %.097.in.i.i.i22.i.us.i.i = add nsw i64 %.06.i.i.i21.i.us.i.i, -1
  %.097.i.i1011.i.i.us.i.i = lshr i64 %.097.in.i.i.i22.i.us.i.i, 1 ; 3 uses
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %.097.i.i1011.i.i.us.i.i ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !1053
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 128
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !1042
  %i.ic = load i64, ptr %i.gz, align 8, !tbaa !1042
  %i.id = icmp ugt i64 %i.ib, %i.ic
  br i1 %i.id, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.us.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i20.i.us.i.i
  %i.ie = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %.06.i.i.i21.i.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i64 16, i1 false), !tbaa.struct !1051
  %.not12.i.i.us.i.i = icmp eq i64 %.097.i.i1011.i.i.us.i.i, 0
  br i1 %.not12.i.i.us.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.us.i.i, label %.lr.ph.i.i.i20.i.us.i.i, !llvm.loop !2073

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.us.i.i: ; preds = %bb.k, %.lr.ph.i.i.i20.i.us.i.i, %bb.j
  %.0.lcssa.i.i.i24.i.us.i.i = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %.06.i.i.i21.i.us.i.i, %.lr.ph.i.i.i20.i.us.i.i ]
  %i.if = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %.0.lcssa.i.i.i24.i.us.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i13.i.us.i.i, ptr %i.if, align 8, !tbaa !533
  %.sroa.14.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %i.gy, ptr %.sroa.14.0..sroa_idx6.i, align 8, !tbaa !347
  br label %bb.l

bb.l:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.us.i.i, %.lr.ph.i.split.us.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.us.i.i, i64 16 ; 2 uses
  %.not.i.us.i.i = icmp ult ptr %i.ig, %.0.i.i.i.i.i.fr
  br i1 %.not.i.us.i.i, label %.lr.ph.i.split.us.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i, !llvm.loop !2075

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.ih = icmp eq i64 %i.gr, 0
  %or.cond38.i.i.i = select i1 %i.gq, i1 %i.ih, i1 false
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 8 ; 3 uses
  br i1 %or.cond38.i.i.i, label %.lr.ph.i.split.split.us.i.i, label %.lr.ph.i.split.split.i.preheader.i

.lr.ph.i.split.split.i.preheader.i:               ; preds = %.lr.ph.i.split.i.i
  %.pre.i = load ptr, ptr %i.ii, align 8, !tbaa !1053
  br label %.lr.ph.i.split.split.i.i

.lr.ph.i.split.split.us.i.i:                      ; preds = %.lr.ph.i.split.i.i, %bb.n
  %.sroa.0.031.i.us29.i.i = phi ptr [ %i.iz, %bb.n ], [ %i.eu, %.lr.ph.i.split.i.i ] ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.us29.i.i, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !1053 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 128 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !1042
  %24 = load ptr, ptr %i.ii, align 8, !tbaa !1053
  %i.in = getelementptr inbounds nuw i8, ptr %24, i64 128
  %i.io = load i64, ptr %i.in, align 8, !tbaa !1042
  %i.ip = icmp ugt i64 %i.im, %i.io
  br i1 %i.ip, label %._crit_edge.i.i17.thread.i.us.i.i, label %bb.n

._crit_edge.i.i17.thread.i.us.i.i:                ; preds = %.lr.ph.i.split.split.us.i.i
  %.sroa.03.0.copyload.i13.i.us30.i.i = load i64, ptr %.sroa.0.031.i.us29.i.i, align 8, !tbaa !533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.031.i.us29.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0172.0, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.i20.i.us34.i.i

.lr.ph.i.i.i20.i.us34.i.i:                        ; preds = %bb.m, %._crit_edge.i.i17.thread.i.us.i.i
  %.06.i.i.i21.i.us35.i.i = phi i64 [ %.097.i.i1011.i.i.us37.i.i, %bb.m ], [ %i.gt, %._crit_edge.i.i17.thread.i.us.i.i ] ; 3 uses
  %.097.in.i.i.i22.i.us36.i.i = add nsw i64 %.06.i.i.i21.i.us35.i.i, -1
  %.097.i.i1011.i.i.us37.i.i = lshr i64 %.097.in.i.i.i22.i.us36.i.i, 1 ; 3 uses
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %.097.i.i1011.i.i.us37.i.i ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !1053
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 128
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !1042
  %i.iv = load i64, ptr %i.il, align 8, !tbaa !1042
  %i.iw = icmp ugt i64 %i.iu, %i.iv
  br i1 %i.iw, label %bb.m, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.loopexit.us39.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i20.i.us34.i.i
  %i.ix = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %.06.i.i.i21.i.us35.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %i.iq, i64 16, i1 false), !tbaa.struct !1051
  %.not12.i.i.us38.i.i = icmp eq i64 %.097.i.i1011.i.i.us37.i.i, 0
  br i1 %.not12.i.i.us38.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.loopexit.us39.i.i, label %.lr.ph.i.i.i20.i.us34.i.i, !llvm.loop !2073

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.loopexit.us39.i.i: ; preds = %bb.m, %.lr.ph.i.i.i20.i.us34.i.i
  %.0.lcssa.i.i.i24.i.ph.us40.i.i = phi i64 [ 0, %bb.m ], [ %.06.i.i.i21.i.us35.i.i, %.lr.ph.i.i.i20.i.us34.i.i ]
  %i.iy = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %.0.lcssa.i.i.i24.i.ph.us40.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i13.i.us30.i.i, ptr %i.iy, align 8, !tbaa !533
  %.sroa.14.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store ptr %i.ik, ptr %.sroa.14.0..sroa_idx4.i, align 8, !tbaa !347
  br label %bb.n

bb.n:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i.loopexit.us39.i.i, %.lr.ph.i.split.split.us.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.us29.i.i, i64 16 ; 2 uses
  %.not.i.us43.i.i = icmp ult ptr %i.iz, %.0.i.i.i.i.i.fr
  br i1 %.not.i.us43.i.i, label %.lr.ph.i.split.split.us.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i, !llvm.loop !2075

.lr.ph.i.split.split.i.i:                         ; preds = %bb.o, %.lr.ph.i.split.split.i.preheader.i
  %i.ja = phi ptr [ %i.ji, %bb.o ], [ %.pre.i, %.lr.ph.i.split.split.i.preheader.i ] ; 2 uses
  %.sroa.0.031.i.i.i = phi ptr [ %i.jj, %bb.o ], [ %i.eu, %.lr.ph.i.split.split.i.preheader.i ] ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i.i, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !1053 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 128
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !1042
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 128
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !1042
  %i.jh = icmp ugt i64 %i.je, %i.jg
  br i1 %i.jh, label %._crit_edge.i.i17.thread.i.i.i, label %bb.o

._crit_edge.i.i17.thread.i.i.i:                   ; preds = %.lr.ph.i.split.split.i.i
  %.sroa.03.0.copyload.i13.i.i.i = load i64, ptr %.sroa.0.031.i.i.i, align 8, !tbaa !533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.031.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0172.0, i64 16, i1 false), !tbaa.struct !1051
  store i64 %.sroa.03.0.copyload.i13.i.i.i, ptr %.sroa.0172.0, align 8, !tbaa !533
  store ptr %i.jc, ptr %i.ii, align 8, !tbaa !347
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i17.thread.i.i.i, %.lr.ph.i.split.split.i.i
  %i.ji = phi ptr [ %i.jc, %._crit_edge.i.i17.thread.i.i.i ], [ %i.ja, %.lr.ph.i.split.split.i.i ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp ult ptr %i.jj, %.0.i.i.i.i.i.fr
  br i1 %.not.i.i.i, label %.lr.ph.i.split.split.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i, !llvm.loop !2075

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i: ; preds = %bb.o, %bb.n, %bb.l, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i.i
  %i.jk = icmp ugt i64 %i.de, 1
  br i1 %i.jk, label %.lr.ph.i9.i.i, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit

.lr.ph.i9.i.i:                                    ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i
  %.sroa.0.02.i.i.i = phi ptr [ %i.jl, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i ], [ %i.eu, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i.i ] ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %.sroa.0.02.i.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i.i = load i64, ptr %i.jl, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i11.i.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i.i, align 8, !tbaa !347 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0172.0, i64 16, i1 false), !tbaa.struct !1051
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.jm, %i.dc                    ; 3 uses
  %i.jo = ashr exact i64 %i.jn, 4                 ; 3 uses
  %i.jp = add nsw i64 %i.jo, -1
  %i.jq = lshr i64 %i.jp, 1
  %i.jr = icmp sgt i64 %i.jo, 2
  br i1 %i.jr, label %.lr.ph.i.i.i26.i.i, label %._crit_edge.i.i.i13.i.i

.lr.ph.i.i.i26.i.i:                               ; preds = %.lr.ph.i9.i.i, %.lr.ph.i.i.i26.i.i
  %.045.i.i.i27.i.i = phi i64 [ %spec.select.i.i.i28.i.i, %.lr.ph.i.i.i26.i.i ], [ 0, %.lr.ph.i9.i.i ] ; 2 uses
  %i.js = shl i64 %.045.i.i.i27.i.i, 1            ; 2 uses
  %i.jt = add i64 %i.js, 2                        ; 2 uses
  %i.ju = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %i.jt
  %i.jv = or disjoint i64 %i.js, 1                ; 2 uses
  %i.jw = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !1053
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 128
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !1042
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !1053
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 128
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !1042
  %i.kf = icmp ugt i64 %i.ka, %i.ke
  %spec.select.i.i.i28.i.i = select i1 %i.kf, i64 %i.jv, i64 %i.jt ; 4 uses
  %i.kg = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %spec.select.i.i.i28.i.i
  %i.kh = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %.045.i.i.i27.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, ptr noundef nonnull align 8 dereferenceable(16) %i.kg, i64 16, i1 false), !tbaa.struct !1051
  %i.ki = icmp slt i64 %spec.select.i.i.i28.i.i, %i.jq
  br i1 %i.ki, label %.lr.ph.i.i.i26.i.i, label %._crit_edge.i.i.i13.i.i, !llvm.loop !2072

._crit_edge.i.i.i13.i.i:                          ; preds = %.lr.ph.i.i.i26.i.i, %.lr.ph.i9.i.i
  %.0.lcssa.i.i.i14.i.i = phi i64 [ 0, %.lr.ph.i9.i.i ], [ %spec.select.i.i.i28.i.i, %.lr.ph.i.i.i26.i.i ] ; 5 uses
  %i.kj = and i64 %i.jn, 16
  %i.kk = icmp eq i64 %i.kj, 0
  br i1 %i.kk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i13.i.i
  %i.kl = add nsw i64 %i.jo, -2
  %i.km = ashr exact i64 %i.kl, 1
  %i.kn = icmp eq i64 %.0.lcssa.i.i.i14.i.i, %i.km
  br i1 %i.kn, label %.thread.i.i25.i.i, label %bb.q

.thread.i.i25.i.i:                                ; preds = %bb.p
  %i.ko = shl nuw nsw i64 %.0.lcssa.i.i.i14.i.i, 1
  %i.kp = or disjoint i64 %i.ko, 1                ; 2 uses
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %i.kp
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %.0.lcssa.i.i.i14.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kr, ptr noundef nonnull align 8 dereferenceable(16) %i.kq, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.preheader.i.i16.i.i

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i13.i.i
  %.not.i.i15.i.i = icmp eq i64 %.0.lcssa.i.i.i14.i.i, 0
  br i1 %.not.i.i15.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i, label %.lr.ph.i.i.preheader.i.i16.i.i

.lr.ph.i.i.preheader.i.i16.i.i:                   ; preds = %bb.q, %.thread.i.i25.i.i
  %.1.i15.i.i17.i.i = phi i64 [ %i.kp, %.thread.i.i25.i.i ], [ %.0.lcssa.i.i.i14.i.i, %bb.q ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i12.i.i, i64 128
  br label %.lr.ph.i.i.i.i18.i.i

.lr.ph.i.i.i.i18.i.i:                             ; preds = %bb.r, %.lr.ph.i.i.preheader.i.i16.i.i
  %.06.i.i.i.i19.i.i = phi i64 [ %.097.i.i1011.i.i21.i.i, %bb.r ], [ %.1.i15.i.i17.i.i, %.lr.ph.i.i.preheader.i.i16.i.i ] ; 3 uses
  %.097.in.i.i.i.i20.i.i = add nsw i64 %.06.i.i.i.i19.i.i, -1
  %.097.i.i1011.i.i21.i.i = lshr i64 %.097.in.i.i.i.i20.i.i, 1 ; 3 uses
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0172.0, i64 %.097.i.i1011.i.i21.i.i ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !1053
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 128
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !1042
  %i.ky = load i64, ptr %i.ks, align 8, !tbaa !1042
  %i.kz = icmp ugt i64 %i.kx, %i.ky
  br i1 %i.kz, label %bb.r, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i18.i.i
  %i.la = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %.06.i.i.i.i19.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull align 8 dereferenceable(16) %i.kt, i64 16, i1 false), !tbaa.struct !1051
  %.not12.i.i24.i.i = icmp eq i64 %.097.i.i1011.i.i21.i.i, 0
  br i1 %.not12.i.i24.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i, label %.lr.ph.i.i.i.i18.i.i, !llvm.loop !2073

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_RT0_.exit.i22.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i18.i.i, %bb.q
  %.0.lcssa.i.i.i.i23.i.i = phi i64 [ 0, %bb.q ], [ 0, %bb.r ], [ %.06.i.i.i.i19.i.i, %.lr.ph.i.i.i.i18.i.i ]
  %i.lb = getelementptr inbounds [16 x i8], ptr %.sroa.0172.0, i64 %.0.lcssa.i.i.i.i23.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i10.i.i, ptr %i.lb, align 8, !tbaa !533
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store ptr %.sroa.4.0.copyload.i.i12.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !347
  %i.lc = icmp sgt i64 %i.jn, 16
  br i1 %i.lc, label %.lr.ph.i9.i.i, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_SE_T0_.exit, !llvm.loop !2076

bb.s:                                             ; preds = %._crit_edge
  %i.ld = icmp eq ptr %.sroa.0172.0, %.0.i.i.i.i.i.fr
  br i1 %i.ld, label %._crit_edge353, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.le = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.de, i1 true)
  %i.lf = shl nuw nsw i64 %i.le, 1
  %i.lg = xor i64 %i.lf, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_T0_T1_"(ptr %.sroa.0172.0, ptr %.0.i.i.i.i.i.fr, i64 noundef %i.lg)
  %i.lh = icmp sgt i64 %i.dd, 256
  br i1 %i.lh, label %.lr.ph.i.i.i.i, label %.preheader.i28.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t
  %i.li = getelementptr i8, ptr %.sroa.0172.0, i64 8
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0172.0, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 16, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.add.i.i.i, %bb.z ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.0172.0, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.z ] ; 3 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %i.lj = getelementptr i8, ptr %.pn18.i.i.i.i, i64 24
  %.val2.i.i.i.i.i = load ptr, ptr %i.lj, align 8, !tbaa !1053 ; 2 uses
  %.val3.i.i.i.i.i = load ptr, ptr %i.li, align 8, !tbaa !1053
  %i.lk = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 40 ; 2 uses
  %.val2.val.i.i.i.i.i = load i64, ptr %i.lk, align 8, !tbaa !1054 ; 2 uses
  %i.ll = getelementptr i8, ptr %.val3.i.i.i.i.i, i64 40
  %.val3.val.i.i.i.i.i = load i64, ptr %i.ll, align 8, !tbaa !1054
  %i.lm = icmp ult i64 %.val2.val.i.i.i.i.i, %.val3.val.i.i.i.i.i
  br i1 %i.lm, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr.i.i.i, i64 16, i1 false), !tbaa.struct !1051
  %i.ln = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 16
  br i1 %i.ln, label %bb.w, label %bb.x, !prof !923

bb.w:                                             ; preds = %bb.v
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0172.0, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.lo = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0172.0, i64 16, i1 false), !tbaa.struct !1051
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0172.0, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %.sroa.06.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.019.i.ptr.i.i.i, align 8, !tbaa !533
  %i.lp = getelementptr i8, ptr %.pn18.i.i.i.i, i64 8
  %.val3.i11.i.i.i.i.i = load ptr, ptr %i.lp, align 8, !tbaa !1053
  %i.lq = getelementptr i8, ptr %.val3.i11.i.i.i.i.i, i64 40
  %.val3.val.i12.i.i.i.i.i = load i64, ptr %i.lq, align 8, !tbaa !1054
  %i.lr = icmp ult i64 %.val2.val.i.i.i.i.i, %.val3.val.i12.i.i.i.i.i
  br i1 %i.lr, label %.lr.ph.i.i.i.i.i68, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i68:                               ; preds = %bb.y, %.lr.ph.i.i.i.i.i68
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i68 ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.y ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.09.013.i.i.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1051
  %.val4.val.i.i.i.i.i = load i64, ptr %i.lk, align 8, !tbaa !1054
  %i.ls = getelementptr i8, ptr %.sroa.09.013.i.i.i.i.i, i64 -24
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ls, align 8, !tbaa !1053
  %i.lt = getelementptr i8, ptr %.val3.i.i.i.i.i.i, i64 40
  %.val3.val.i.i.i.i.i.i = load i64, ptr %i.lt, align 8, !tbaa !1054
  %i.lu = icmp ult i64 %.val4.val.i.i.i.i.i, %.val3.val.i.i.i.i.i.i
  br i1 %i.lu, label %.lr.ph.i.i.i.i.i68, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !2077

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i68, %bb.y
  %.sroa.09.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.y ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i68 ] ; 2 uses
  store i64 %.sroa.06.0.copyload.i.i.i.i.i, ptr %.sroa.09.0.lcssa.i.i.i.i.i, align 8, !tbaa !533
  %.sroa.4.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i.i.i.i, i64 8
  store ptr %.val2.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i.i.i, align 8, !tbaa !347
  br label %bb.z

end_hunk_0
begin_hunk_1_@_ZN7rocksdb18VersionStorageInfo22ComputeCompactionScoreERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.kq = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ko) ; 2 uses
  %cmp.n330 = icmp eq i64 %i.jw, %n.vec322
  br i1 %cmp.n330, label %._crit_edge230.loopexit, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0163.0227.ph = phi ptr [ %i.jn, %iter.check ], [ %i.jz, %vec.epilog.iter.check ], [ %i.kl, %vec.epilog.middle.block ]
  %.0201226.ph = phi i64 [ 0, %iter.check ], [ %i.kj, %vec.epilog.iter.check ], [ %i.kq, %vec.epilog.middle.block ]
  br label %.lr.ph229

._crit_edge230.loopexit:                          ; preds = %.lr.ph229, %vec.epilog.middle.block, %middle.block
  %.lcssa305 = phi i64 [ %i.kq, %vec.epilog.middle.block ], [ %i.kj, %middle.block ], [ %i.kz, %.lr.ph229 ]
  %i.kr = call i64 @llvm.umax.i64(i64 %.lcssa305, i64 %i.jk)
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit, %bb.ax
  %.0201.lcssa = phi i64 [ %i.jk, %bb.ax ], [ %i.kr, %._crit_edge230.loopexit ]
  %i.ks = uitofp i64 %.0123.lcssa to double
  %i.kt = uitofp i64 %.0201.lcssa to double
  %i.ku = fdiv double %i.ks, %i.kt                ; 2 uses
  %i.kv = fcmp olt double %.2, %i.ku
  %.sroa.speculated159 = select i1 %i.kv, double %i.ku, double %.2
  br label %bb.ay

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %.sroa.0163.0227 = phi ptr [ %i.la, %.lr.ph229 ], [ %.sroa.0163.0227.ph, %.lr.ph229.preheader ] ; 2 uses
  %.0201226 = phi i64 [ %i.kz, %.lr.ph229 ], [ %.0201226.ph, %.lr.ph229.preheader ]
  %i.kw = load ptr, ptr %.sroa.0163.0227, align 8, !tbaa !347
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 128
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !1042
  %i.kz = add i64 %i.ky, %.0201226                ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0163.0227, i64 8 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.jp
  br i1 %i.lb, label %._crit_edge230.loopexit, label %.lr.ph229, !llvm.loop !2146

bb.ay:                                            ; preds = %._crit_edge230, %bb.aw
  %.3199 = phi double [ %.sroa.speculated159, %._crit_edge230 ], [ %.2, %bb.aw ] ; 3 uses
  %i.lc = fcmp ogt double %.3199, 1.000000e+00
  %i.ld = fmul nnan double %.3199, 1.000000e+01
  %spec.select204 = select i1 %i.lc, double %i.ld, double %.3199
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.az:                                            ; preds = %bb.av
  %i.le = uitofp i64 %.0123.lcssa to double
  %i.lf = load i64, ptr %i.t, align 8, !tbaa !1048
  %i.lg = uitofp i64 %i.lf to double
  %i.lh = fdiv double %i.le, %i.lg                ; 2 uses
  %i.li = fcmp olt double %i.iz, %i.lh
  %.sroa.speculated155 = select i1 %i.li, double %i.lh, double %i.iz
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.ba:                                            ; preds = %bb.b
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv251 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !603 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !603 ; 2 uses
  %i.ln = icmp eq ptr %i.lk, %i.lm
  br i1 %i.ln, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bc, %bb.ba
  %.0117.lcssa = phi i64 [ 0, %bb.ba ], [ %.1118, %bb.bc ] ; 4 uses
  %.0116.lcssa = phi i64 [ 0, %bb.ba ], [ %i.lt, %bb.bc ] ; 3 uses
  %i.lo = load i8, ptr %i.p, align 4, !tbaa !1047, !range !560, !noundef !561
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.be, label %bb.bd

.lr.ph:                                           ; preds = %bb.ba, %bb.bc
  %.0116209 = phi i64 [ %i.lt, %bb.bc ], [ 0, %bb.ba ]
  %.0117208 = phi i64 [ %.1118, %bb.bc ], [ 0, %bb.ba ] ; 2 uses
  %.sroa.0151.0207 = phi ptr [ %i.ma, %bb.bc ], [ %i.lk, %bb.ba ] ; 2 uses
  %i.lq = load ptr, ptr %.sroa.0151.0207, align 8, !tbaa !347 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !531
  %i.lt = add i64 %i.ls, %.0116209                ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 188
  %i.lv = load i8, ptr %i.lu, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 128
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !1042
  %i.lz = add i64 %i.ly, %.0117208
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph
  %.1118 = phi i64 [ %.0117208, %.lr.ph ], [ %i.lz, %bb.bb ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0151.0207, i64 8 ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.lm
  br i1 %i.mb, label %._crit_edge, label %.lr.ph

bb.bd:                                            ; preds = %._crit_edge
  %i.mc = uitofp i64 %.0117.lcssa to double
  %i.md = load ptr, ptr %i.q, align 8, !tbaa !284
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv251
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !533 ; 2 uses
  %i.mg = uitofp i64 %i.mf to double
  %i.mh = fdiv double %i.mc, %i.mg
  %.pre = load i32, ptr %i.r, align 4, !tbaa !851
  br label %bb.bg

bb.be:                                            ; preds = %._crit_edge
  %i.mi = load ptr, ptr %i.q, align 8, !tbaa !284
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv251
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !533 ; 4 uses
  %i.ml = icmp ult i64 %.0117.lcssa, %i.mk
  %i.mm = uitofp i64 %.0117.lcssa to double       ; 2 uses
  %i.mn = uitofp i64 %i.mk to double              ; 2 uses
  %i.mo = fadd double %.0235, %i.mn
  %i.mp = fdiv double %i.mm, %i.mo
  %i.mq = fmul double %i.mp, 1.000000e+01
  %i.mr = fdiv double %i.mm, %i.mn
  %storemerge = select i1 %i.ml, double %i.mr, double %i.mq ; 3 uses
  %.not130 = icmp eq i64 %.0117.lcssa, 0
  %.pre261 = load i32, ptr %i.r, align 4, !tbaa !851 ; 4 uses
  %i.ms = sext i32 %.pre261 to i64
  %.not131 = icmp sgt i64 %indvars.iv251, %i.ms
  %or.cond302 = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond302, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mt = trunc nuw nsw i64 %indvars.iv251 to i32
  %i.mu = sub nuw nsw i32 %.pre261, %i.mt
  %i.mv = sitofp i32 %i.mu to double
  %i.mw = call nnan double @llvm.fmuladd.f64(double %i.mv, double 1.000000e-03, double 1.001000e+00)
  %i.mx = fmul nnan double %i.mw, 1.000000e+01    ; 2 uses
  %i.my = fcmp olt double %storemerge, %i.mx
  %.sroa.speculated = select i1 %i.my, double %i.mx, double %storemerge
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %i.mz = phi i64 [ %i.mk, %bb.be ], [ %i.mf, %bb.bd ], [ %i.mk, %bb.bf ] ; 2 uses
  %i.na = phi i32 [ %.pre261, %bb.be ], [ %.pre, %bb.bd ], [ %.pre261, %bb.bf ]
  %.4200 = phi double [ %storemerge, %bb.be ], [ %i.mh, %bb.bd ], [ %.sroa.speculated, %bb.bf ] ; 3 uses
  %i.nb = sext i32 %i.na to i64
  %.not132 = icmp sgt i64 %indvars.iv251, %i.nb
  br i1 %.not132, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nc = uitofp i64 %.0116.lcssa to double
  %i.nd = fadd double %.0235, %i.nc
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.bi:                                            ; preds = %bb.bg
  %i.ne = icmp ugt i64 %.0116.lcssa, %i.mz
  br i1 %i.ne, label %bb.bj, label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.nf = sub nuw i64 %.0116.lcssa, %i.mz
  %i.ng = uitofp i64 %i.nf to double
  %i.nh = fadd double %.0235, %i.ng
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread: ; preds = %bb.ay, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit, %bb.ac, %bb.ab, %bb.bh, %bb.bj, %bb.bi, %bb.az, %bb.au, %bb.aa
  %.5 = phi double [ %.1198, %bb.ac ], [ %.4200, %bb.bh ], [ %.1198, %bb.aa ], [ %.1198, %bb.ab ], [ %spec.select204, %bb.ay ], [ %.sroa.speculated155, %bb.az ], [ %.5.i, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit ], [ %i.iz, %bb.au ], [ %.4200, %bb.bj ], [ %.4200, %bb.bi ]
  %.3 = phi double [ %.1.lcssa, %bb.ac ], [ %i.nd, %bb.bh ], [ %.1.lcssa, %bb.aa ], [ %.1.lcssa, %bb.ab ], [ %.1.lcssa, %bb.ay ], [ %.1.lcssa, %bb.az ], [ %.1.lcssa, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit ], [ %.1.lcssa, %bb.au ], [ %i.nh, %bb.bj ], [ %.0235, %bb.bi ]
  %i.ni = load ptr, ptr %i.ag, align 16, !tbaa !250
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv251
  %i.nk = trunc nuw nsw i64 %indvars.iv251 to i32
  store i32 %i.nk, ptr %i.nj, align 4, !tbaa !269
  %i.nl = load ptr, ptr %i.ah, align 8, !tbaa !252
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv251
  store double %.5, ptr %i.nm, align 8, !tbaa !859
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1
  %.pr = load i32, ptr %i.j, align 16             ; 4 uses
  %i.nn = load i8, ptr %i.l, align 16, !tbaa !849
  %i.no = icmp eq i8 %i.nn, 0
  %i.np = add nsw i32 %.pr, -2
  %i.nq = sext i32 %i.np to i64
  %.not.not246 = icmp slt i64 %indvars.iv251, %i.nq
  %.not.not = select i1 %i.no, i1 %.not.not246, i1 false
  br i1 %.not.not, label %bb.b, label %.preheader, !llvm.loop !2147

.loopexit:                                        ; preds = %bb.bn, %bb.bk
  %i.nr = phi i32 [ %i.nx, %bb.bk ], [ %i.on, %bb.bn ] ; 2 uses
  %i.ns = add nsw i32 %i.nr, -2
  %i.nt = sext i32 %i.ns to i64
  %i.nu = icmp slt i64 %indvars.iv.next259, %i.nt
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1
  br i1 %i.nu, label %bb.bk, label %._crit_edge243, !llvm.loop !2148

._crit_edge243:                                   ; preds = %.loopexit, %bb.a, %.preheader
  call void @_ZN7rocksdb18VersionStorageInfo31ComputeFilesMarkedForCompactionEi(ptr noundef nonnull align 16 dereferenceable(4288) %0, i32 noundef %.0.i)
  %i.nv = load i8, ptr %i.c, align 1, !tbaa !1092, !range !560, !noundef !561
  %i.nw = trunc nuw i8 %i.nv to i1
  br i1 %i.nw, label %bb.bp, label %bb.bo

bb.bk:                                            ; preds = %.lr.ph242, %.loopexit
  %i.nx = phi i32 [ %.pr, %.lr.ph242 ], [ %i.nr, %.loopexit ] ; 4 uses
  %indvars.iv258 = phi i64 [ 0, %.lr.ph242 ], [ %indvars.iv.next259, %.loopexit ] ; 3 uses
  %indvars.iv253 = phi i64 [ 1, %.lr.ph242 ], [ %indvars.iv.next254, %.loopexit ] ; 2 uses
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 3 uses
  %i.ny = add nsw i32 %i.nx, -1
  %i.nz = sext i32 %i.ny to i64
  %i.oa = icmp slt i64 %indvars.iv.next259, %i.nz
  br i1 %i.oa, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %bb.bk
  %i.ob = load ptr, ptr %i.an, align 8, !tbaa !252 ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv258 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph240, %bb.bn
  %i.od = phi i32 [ %i.nx, %.lr.ph240 ], [ %i.on, %bb.bn ]
  %i.oe = phi i32 [ %i.nx, %.lr.ph240 ], [ %i.oo, %bb.bn ]
  %indvars.iv255 = phi i64 [ %indvars.iv253, %.lr.ph240 ], [ %indvars.iv.next256, %bb.bn ] ; 3 uses
  %6 = load double, ptr %i.oc, align 8, !tbaa !859 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv255 ; 2 uses
  %i.og = load double, ptr %i.of, align 8, !tbaa !859 ; 2 uses
  %i.oh = fcmp olt double %6, %i.og
  br i1 %i.oh, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.oi = load ptr, ptr %i.ao, align 16, !tbaa !250 ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv258 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !269
  store double %i.og, ptr %i.oc, align 8, !tbaa !859
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv255 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !269
  store i32 %i.om, ptr %i.oj, align 4, !tbaa !269
  store double %6, ptr %i.of, align 8, !tbaa !859
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !269
  %.pre262.a = load i32, ptr %i.j, align 16, !tbaa !807 ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.on = phi i32 [ %i.od, %bb.bl ], [ %.pre262.a, %bb.bm ] ; 2 uses
  %i.oo = phi i32 [ %i.oe, %bb.bl ], [ %.pre262.a, %bb.bm ] ; 2 uses
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %i.op = add nsw i32 %i.oo, -1
  %i.oq = sext i32 %i.op to i64
  %i.or = icmp slt i64 %indvars.iv.next256, %i.oq
  br i1 %i.or, label %bb.bl, label %.loopexit, !llvm.loop !2149

bb.bo:                                            ; preds = %._crit_edge243
  %i.os = load i8, ptr %i.f, align 1, !tbaa !2154, !range !560, !noundef !561
  %i.ot = trunc nuw i8 %i.os to i1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge243
  %i.ou = phi i1 [ true, %._crit_edge243 ], [ %i.ot, %bb.bo ]
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !2155
  call void @_ZN7rocksdb18VersionStorageInfo41ComputeBottommostFilesMarkedForCompactionEbPKNS_10ComparatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 16 dereferenceable(4288) %0, i1 noundef zeroext %i.ou, ptr noundef %i.ox, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !1056
  call void @_ZN7rocksdb18VersionStorageInfo22ComputeExpiredTtlFilesERKNS_16ImmutableOptionsEm(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(875) %1, i64 noundef %i.oz)
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !2156
  call void @_ZN7rocksdb18VersionStorageInfo39ComputeFilesMarkedForPeriodicCompactionERKNS_16ImmutableOptionsEmi(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(875) %1, i64 noundef %i.pb, i32 noundef %.0.i)
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !2157
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !2158
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.ph = load i8, ptr %i.pg, align 8, !tbaa !1097, !range !560, !noundef !561
  %i.pi = trunc nuw i8 %i.ph to i1
  call void @_ZN7rocksdb18VersionStorageInfo33ComputeFilesMarkedForForcedBlobGCEddb(ptr noundef nonnull align 16 dereferenceable(4288) %0, double noundef %i.pd, double noundef %i.pf, i1 noundef zeroext %i.pi)
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !1098
  %i.pl = load i8, ptr %i.ov, align 8, !tbaa !915
  call void @_ZN7rocksdb18VersionStorageInfo44ComputeFilesMarkedForReadTriggeredCompactionEdNS_15CompactionStyleE(ptr noundef nonnull align 16 dereferenceable(4288) %0, double noundef %i.pk, i8 noundef signext %i.pl)
  call void @_ZN7rocksdb18VersionStorageInfo29EstimateCompactionBytesNeededERKNS_16MutableCFOptionsE(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(736) %2)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionStorageInfo31ComputeFilesMarkedForCompactionEi(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) initializes((4056, 4064)) %0, i32 noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2872 ; 4 uses
  %.pr.i = load i64, ptr %i.a, align 8, !tbaa !254
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %bb.b, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !254
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3016 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !255  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3024 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !256 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.c, ptr %i.d, align 16, !tbaa !256
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit

_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4056 ; 3 uses
  store i64 72057594037927935, ptr %i.g, align 8, !tbaa !857
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph, label %.lr.ph29

.lr.ph:                                           ; preds = %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !241
  %i.k = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !603
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !603
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.q = icmp sgt i64 %indvars.iv, 1
  br i1 %i.q, label %bb.c, label %.lr.ph29, !llvm.loop !2159

.loopexit:                                        ; preds = %bb.c
  %.not26 = icmp slt i64 %indvars.iv, 1
  br i1 %.not26, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.d, %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit, %.loopexit
  %.0847 = phi i64 [ %indvars.iv, %.loopexit ], [ 1, %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit ], [ 1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3008
  br label %bb.e

._crit_edge30:                                    ; preds = %._crit_edge, %.loopexit
  ret void

bb.e:                                             ; preds = %.lr.ph29, %._crit_edge
  %i.u = phi ptr [ %i.c, %.lr.ph29 ], [ %i.af, %._crit_edge ] ; 2 uses
  %i.v = phi ptr [ %i.f, %.lr.ph29 ], [ %i.ag, %._crit_edge ] ; 2 uses
  %indvars.iv33 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next34, %._crit_edge ] ; 5 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !241
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv33 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !603  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !603 ; 2 uses
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %._crit_edge, label %.lr.ph25.preheader

.lr.ph25.preheader:                               ; preds = %bb.e
  %i.ac = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.ad = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.ae = trunc nuw nsw i64 %indvars.iv33 to i32
  br label %.lr.ph25

._crit_edge:                                      ; preds = %bb.o, %bb.e
  %i.af = phi ptr [ %i.u, %bb.e ], [ %i.cg, %bb.o ]
  %i.ag = phi ptr [ %i.v, %bb.e ], [ %i.ch, %bb.o ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %.0847
  br i1 %exitcond.not, label %._crit_edge30, label %bb.e, !llvm.loop !2160

.lr.ph25:                                         ; preds = %.lr.ph25.preheader, %bb.o
  %i.ah = phi ptr [ %i.cg, %bb.o ], [ %i.u, %.lr.ph25.preheader ] ; 9 uses
  %i.ai = phi ptr [ %i.ch, %bb.o ], [ %i.v, %.lr.ph25.preheader ] ; 10 uses
  %.sroa.015.024 = phi ptr [ %i.ci, %bb.o ], [ %i.y, %.lr.ph25.preheader ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.015.024, align 8, !tbaa !347 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 188
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !1093, !range !560, !noundef !561
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.o, label %bb.f

bb.f:                                             ; preds = %.lr.ph25
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 190
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !1099, !range !560, !noundef !561
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !254 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 8
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.t, align 16, !tbaa !855
  %i.at = add nuw nsw i64 %i.aq, 1
  store i64 %i.at, ptr %i.a, align 8, !tbaa !254
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.aq ; 2 uses
  store i32 %i.ae, ptr %i.au, align 8, !tbaa !1071
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.aj, ptr %i.av, align 8, !tbaa !1072
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !257
  %.not.i = icmp eq ptr %i.ai, %i.aw
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.ac, ptr %i.ai, align 8, !tbaa !1071
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ax, align 8, !tbaa !1072
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.d, align 16, !tbaa !256
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.az = ptrtoint ptr %i.ai to i64
  %i.ba = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775792
  br i1 %i.bc, label %bb.l, label %_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #44
  unreachable

_ZNKSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bd = ashr exact i64 %i.bb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 576460752303423487)
  %i.bh = select i1 %i.bf, i64 576460752303423487, i64 %i.bg ; 3 uses
  %.not.i.i.i10 = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i10)
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #45 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store i32 %i.ad, ptr %i.bk, align 8, !tbaa !1071
end_hunk_1
