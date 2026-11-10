Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GCOV?download=true
inline.NumInlined: 2668
inline.NumDeleted: 1348
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK4llvm9GCOVBlock5printERNS_11raw_ostreamE:bb.a
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = icmp ult i64 %i.fe, 7
  br i1 %i.ff, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph108
  %i.fg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.19, i64 noundef 7) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85

bb.ad:                                            ; preds = %.lr.ph108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.fb, ptr noundef nonnull align 1 dereferenceable(7) @.str.19, i64 7, i1 false)
  %i.fh = load ptr, ptr %i.c, align 8, !tbaa !115
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 7
  store ptr %i.fi, ptr %i.c, align 8, !tbaa !115
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85

_ZN4llvm11raw_ostreamlsEPKc.exit85:               ; preds = %bb.ac, %bb.ad
  %.0.i.i84 = phi ptr [ %i.fg, %bb.ac ], [ %1, %bb.ad ]
  %i.fj = load i32, ptr %.043106, align 8, !tbaa !126
  %i.fk = zext i32 %i.fj to i64
  %i.fl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i84, i64 noundef %i.fk) #22 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !114
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !115 ; 2 uses
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = icmp ult i64 %i.fs, 2
  br i1 %i.ft, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit85
  %i.fu = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fl, ptr noundef nonnull @.str.20, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit88

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit85
  store i16 8250, ptr %i.fp, align 1
  %i.fv = load ptr, ptr %i.fo, align 8, !tbaa !115
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  store ptr %i.fw, ptr %i.fo, align 8, !tbaa !115
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit88

_ZN4llvm11raw_ostreamlsEPKc.exit88:               ; preds = %bb.ae, %bb.af
  %i.fx = getelementptr inbounds nuw i8, ptr %.043106, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !77 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.043106, i64 16
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !78 ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %.idx111 = shl nuw nsw i64 %i.gb, 2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.idx111
  %.not49101 = icmp eq i32 %i.ga, 0
  br i1 %.not49101, label %._crit_edge104, label %.lr.ph103

._crit_edge104:                                   ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit94, %_ZN4llvm11raw_ostreamlsEPKc.exit88
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.ge = load ptr, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge104
  %i.gg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.6, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit91

bb.ah:                                            ; preds = %._crit_edge104
  store i8 10, ptr %i.ge, align 1
  %i.gh = load ptr, ptr %i.c, align 8, !tbaa !115
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store ptr %i.gi, ptr %i.c, align 8, !tbaa !115
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit91

_ZN4llvm11raw_ostreamlsEPKc.exit91:               ; preds = %bb.ag, %bb.ah
  %i.gj = getelementptr inbounds nuw i8, ptr %.043106, i64 40 ; 2 uses
  %.not48 = icmp eq ptr %i.gj, %i.ez
  br i1 %.not48, label %.loopexit, label %.lr.ph108

.lr.ph103:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit88, %_ZN4llvm11raw_ostreamlsEPKc.exit94
  %.0102 = phi ptr [ %i.gv, %_ZN4llvm11raw_ostreamlsEPKc.exit94 ], [ %i.fy, %_ZN4llvm11raw_ostreamlsEPKc.exit88 ] ; 2 uses
  %i.gk = load i32, ptr %.0102, align 4, !tbaa !90
  %i.gl = zext i32 %i.gk to i64
  %i.gm = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.gl) #22 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !114
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 32 ; 3 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !115 ; 2 uses
  %i.gr = icmp eq ptr %i.go, %i.gq
  br i1 %i.gr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph103
  %i.gs = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gm, ptr noundef nonnull @.str.21, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit94

bb.aj:                                            ; preds = %.lr.ph103
  store i8 44, ptr %i.gq, align 1
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !115
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  store ptr %i.gu, ptr %i.gp, align 8, !tbaa !115
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit94

_ZN4llvm11raw_ostreamlsEPKc.exit94:               ; preds = %bb.ai, %bb.aj
  %i.gv = getelementptr inbounds nuw i8, ptr %.0102, i64 4 ; 2 uses
  %.not49 = icmp eq ptr %i.gv, %i.gc
  br i1 %.not49, label %._crit_edge104, label %.lr.ph103

.loopexit:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit91, %_ZN4llvm11raw_ostreamlsEPKc.exit74
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4llvm9GCOVBlock15augmentOneCycleEPS0_RSt6vectorISt4pairIS1_mESaIS4_EE(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !185    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !333  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !333
  br label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE5clearEv.exit

_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.a ], [ %i.a, %bb.b ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !186  ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE5clearEv.exit
  store ptr %0, ptr %i.d, align 8, !tbaa !335
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !336
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !333
  br label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE5clearEv.exit
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #25
  unreachable

_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 576460752303423487)
  %i.q = select i1 %i.o, i64 576460752303423487, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 4
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #23 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !335
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !336
  %.not10.i.i.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.s, %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.a, %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !337
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !326

_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !186
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.aa) #24
  br label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i
  store ptr %i.s, ptr %1, align 8, !tbaa !185
  store ptr %i.x, ptr %i.b, align 8, !tbaa !333
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.q ; 2 uses
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !186
  br label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit

_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %.pre88 = phi ptr [ %i.h, %bb.c ], [ %i.x, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.ac = phi ptr [ %i.a, %bb.c ], [ %i.s, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.ad = phi ptr [ %i.f, %bb.c ], [ %i.ab, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJRS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8, !tbaa !107
  br label %.backedge.outer.outer

.backedge.outer.outer:                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %.ph.ph = phi ptr [ %i.ac, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit ], [ %i.br, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %.ph134.ph = phi ptr [ %i.ad, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit ], [ %i.ca, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 4 uses
  %.pre.ph.ph = phi ptr [ %.pre88, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12emplace_backIJRS3_iEEERS4_DpOT_.exit ], [ %i.bw, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.backedge.outer.outer, %bb.h
  %.ph = phi ptr [ %i.am, %bb.h ], [ %.ph.ph, %.backedge.outer.outer ] ; 5 uses
  %.pre.ph = phi ptr [ %5, %bb.h ], [ %.pre.ph.ph, %.backedge.outer.outer ]
  br label %bb.g

bb.g:                                             ; preds = %.backedge.outer, %bb.m
  %.pre = phi ptr [ %.pre.ph, %.backedge.outer ], [ %i.bg, %bb.m ] ; 7 uses
  %i.af = getelementptr inbounds i8, ptr %.pre, i64 -16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !335 ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %.pre, i64 -8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !78
  %i.ak = zext i32 %i.aj to i64
  %2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.g
  %3 = load i64, ptr %i.ah, align 8, !tbaa !336   ; 3 uses
  %4 = icmp eq i64 %3, %i.ak
  br i1 %4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.backedge
  %5 = getelementptr inbounds i8, ptr %.pre, i64 -16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 140
  store i8 0, ptr %i.al, align 4, !tbaa !106
  store ptr %5, ptr %i.b, align 8, !tbaa !333
  %i.am = load ptr, ptr %1, align 8, !tbaa !338   ; 2 uses
  %i.an = icmp eq ptr %i.am, %5
  br i1 %i.an, label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12emplace_backIJS3_iEEERS4_DpOT_.exit.thread, label %.backedge.outer

bb.i:                                             ; preds = %.backedge
  %i.ao = add i64 %3, 1
  store i64 %i.ao, ptr %i.ah, align 8, !tbaa !336
  %i.ap = load ptr, ptr %2, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %3
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !118 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !187 ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.backedge.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !174, !nonnull !172, !align !173 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 140
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !106, !range !175, !noundef !172
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = icmp ne ptr %i.aw, %i.ag
  %or.cond.not = and i1 %i.ba, %i.az
  br i1 %or.cond.not, label %bb.k, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.j, %bb.i
  br label %.backedge, !llvm.loop !327

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 144 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !107
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  store ptr %i.ar, ptr %i.bb, align 8, !tbaa !107
  %.not.i30 = icmp eq ptr %.pre, %.ph134.ph
  br i1 %.not.i30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.aw, ptr %.pre, align 8, !tbaa !335
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !336
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !333
  br label %bb.g, !llvm.loop !327

bb.n:                                             ; preds = %bb.l
  %i.bh = ptrtoint ptr %.ph134.ph to i64
  %i.bi = ptrtoint ptr %.ph to i64                ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775792
  br i1 %i.bk, label %bb.o, label %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i31

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #25
  unreachable

_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i31: ; preds = %bb.n
  %i.bl = ashr exact i64 %i.bj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i32 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i32, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 576460752303423487)
  %i.bp = select i1 %i.bn, i64 576460752303423487, i64 %i.bo ; 3 uses
  %.not.i.i.i33 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i33)
  %i.bq = shl nuw nsw i64 %i.bp, 4
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #23 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj ; 2 uses
  store ptr %i.aw, ptr %i.bs, align 8, !tbaa !335
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !336
  %.not10.i.i.i.i.i34 = icmp eq ptr %.ph, %.ph134.ph
  br i1 %.not10.i.i.i.i.i34, label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i39, label %.lr.ph.i.i.i.i.i35

.lr.ph.i.i.i.i.i35:                               ; preds = %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i31, %.lr.ph.i.i.i.i.i35
  %.012.i.i.i.i.i36 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i35 ], [ %i.br, %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i31 ] ; 2 uses
  %.0911.i.i.i.i.i37 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i35 ], [ %.ph, %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i31 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i37, i64 16, i1 false), !alias.scope !339
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i37, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i36, i64 16 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.bu, %.ph134.ph
  br i1 %.not.i.i.i.i.i38, label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i39, label %.lr.ph.i.i.i.i.i35, !llvm.loop !326

_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i39: ; preds = %.lr.ph.i.i.i.i.i35, %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i31
  %.0.lcssa.i.i.i.i.i40 = phi ptr [ %i.br, %_ZNKSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12_M_check_lenEmPKc.exit.i.i31 ], [ %i.bv, %.lr.ph.i.i.i.i.i35 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i40, i64 16 ; 2 uses
  %.not.i24.i.i41 = icmp eq ptr %.ph, null
  br i1 %.not.i24.i.i41, label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i39
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !186
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %.ph, i64 noundef %i.bz) #24
  br label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE17_M_realloc_insertIJS3_iEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i39
  store ptr %i.br, ptr %1, align 8, !tbaa !185
  store ptr %i.bw, ptr %i.b, align 8, !tbaa !333
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bp ; 2 uses
  store ptr %i.ca, ptr %i.e, align 8, !tbaa !186
  br label %.backedge.outer.outer, !llvm.loop !327

bb.q:                                             ; preds = %.preheader, %bb.q
  %.055 = phi i64 [ %.sroa.speculated, %bb.q ], [ %i.at, %.preheader ]
  %.025 = phi ptr [ %i.cf, %bb.q ], [ %i.ag, %.preheader ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.025, i64 144
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !107 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !88
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 %.055) ; 4 uses
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !171, !nonnull !172, !align !173 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.aw
  br i1 %i.cg, label %bb.r, label %bb.q, !llvm.loop !331

bb.r:                                             ; preds = %bb.q
  %i.ch = sub i64 %i.at, %.sroa.speculated
  store i64 %i.ch, ptr %i.be, align 8, !tbaa !187
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0 = phi ptr [ %i.ag, %bb.r ], [ %i.cn, %bb.s ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0, i64 144
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !107 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !187
  %i.cm = sub i64 %i.cl, %.sroa.speculated
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !187
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !171, !nonnull !172, !align !173 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.aw
  br i1 %i.co, label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12emplace_backIJS3_iEEERS4_DpOT_.exit.thread, label %bb.s, !llvm.loop !332

_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EE12emplace_backIJS3_iEEERS4_DpOT_.exit.thread: ; preds = %bb.h, %bb.s
  %.2 = phi i64 [ %.sroa.speculated, %bb.s ], [ 0, %bb.h ]
  ret i64 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4llvm9GCOVBlock14getCyclesCountERKNS_11SmallVectorIPKS0_Lj1EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector.84", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not5070 = icmp eq i32 %i.b, 0
  br i1 %.not5070, label %.preheader._crit_edge, label %.lr.ph.preheader.lr.ph

.lr.ph.preheader.lr.ph:                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.d = zext i32 %i.b to i64
  %.idx69 = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx69
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.lr.ph, %.thread46
  %i.f = phi ptr [ %i.e, %.lr.ph.preheader.lr.ph ], [ %i.v, %.thread46 ] ; 2 uses
  %i.g = phi ptr [ %i.c, %.lr.ph.preheader.lr.ph ], [ %i.s, %.thread46 ] ; 2 uses
  %.071 = phi i64 [ 0, %.lr.ph.preheader.lr.ph ], [ %i.r, %.thread46 ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03651 = phi ptr [ %i.k, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %i.h = load ptr, ptr %.03651, align 8, !tbaa !109 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 140
  store i8 1, ptr %i.i, align 4, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store ptr null, ptr %i.j, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %.03651, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.f
  br i1 %.not, label %.lr.ph54, label %.lr.ph

.lr.ph54:                                         ; preds = %.lr.ph, %.thread
  %.03453 = phi ptr [ %i.q, %.thread ], [ %i.g, %.lr.ph ] ; 2 uses
  %i.l = load ptr, ptr %.03453, align 8, !tbaa !109 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 140
  %i.n = load i8, ptr %i.m, align 4, !tbaa !106, !range !175, !noundef !172
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph54
  %i.p = call noundef i64 @_ZN4llvm9GCOVBlock15augmentOneCycleEPS0_RSt6vectorISt4pairIS1_mESaIS4_EE(ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %.not40 = icmp eq i64 %i.p, 0
  br i1 %.not40, label %.thread, label %.thread46

.thread:                                          ; preds = %.lr.ph54, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.03453, i64 8 ; 2 uses
  %.not39 = icmp eq ptr %i.q, %i.f
  br i1 %.not39, label %.preheader._crit_edge, label %.lr.ph54

.thread46:                                        ; preds = %bb.b
  %i.r = add i64 %i.p, %.071                      ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %.not50 = icmp eq i32 %i.t, 0
  br i1 %.not50, label %.preheader._crit_edge, label %.lr.ph.preheader, !llvm.loop !2

.preheader._crit_edge:                            ; preds = %.thread46, %.thread, %bb.a
  %.068 = phi i64 [ %.071, %.thread ], [ 0, %bb.a ], [ %i.r, %.thread46 ]
  %i.w = load ptr, ptr %1, align 8, !tbaa !185    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.preheader._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !186
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm9GCOVBlockEmESaIS4_EED2Ev.exit: ; preds = %.preheader._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i64 %.068
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12gcovOneInputERKNS_4GCOV7OptionsENS_9StringRefES4_S4_RNS_8GCOVFileE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.(anonymous namespace)::Context", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %0, ptr %7, align 8, !tbaa !340
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call fastcc void @_ZN12_GLOBAL__N_17Context5printEN4llvm9StringRefES2_S2_RNS1_8GCOVFileE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5, ptr noundef nonnull align 8 dereferenceable(280) %6)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !192
  tail call fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_110SourceInfoEEvT_S3_(ptr noundef %i.b, ptr noundef %i.d)
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_17ContextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.val1.i.i = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.f = ptrtoint ptr %.val1.i.i to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #24
  br label %_ZN12_GLOBAL__N_17ContextD2Ev.exit

_ZN12_GLOBAL__N_17ContextD2Ev.exit:               ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_17Context5printEN4llvm9StringRefES2_S2_RNS1_8GCOVFileE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %class.anon.208, align 8            ; 4 uses
  %8 = alloca %class.anon.208, align 8            ; 7 uses
  %9 = alloca %"class.llvm::format_object.189", align 8 ; 7 uses
  %10 = alloca %class.anon.206, align 8           ; 4 uses
  %11 = alloca %class.anon.204, align 8           ; 4 uses
  %12 = alloca %class.anon.204, align 8           ; 4 uses
  %13 = alloca %"class.llvm::ErrorOr", align 8    ; 9 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"class.(anonymous namespace)::LineConsumer", align 8 ; 12 uses
  %17 = alloca %"class.llvm::format_object.182", align 8 ; 5 uses
  %18 = alloca %"class.llvm::format_object.182", align 8 ; 5 uses
  %19 = alloca %"class.llvm::format_object.186", align 8 ; 6 uses
  %20 = alloca %"class.llvm::format_object.189", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %24 = alloca %"class.llvm::MD5", align 4        ; 5 uses
  %25 = alloca %"struct.llvm::MD5::MD5Result", align 1 ; 4 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.llvm::SmallString.171", align 8 ; 7 uses
  %30 = alloca %"class.std::vector.84", align 8   ; 7 uses
  %31 = alloca %"class.llvm::SmallSet", align 8   ; 14 uses
  %32 = alloca %"class.llvm::SmallSet", align 8   ; 14 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %33 = alloca %"struct.std::pair.147", align 8   ; 4 uses
  %34 = alloca %"struct.std::pair.147", align 8   ; 4 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %36 = alloca %"struct.(anonymous namespace)::Summary", align 8 ; 7 uses
  %37 = alloca %"struct.(anonymous namespace)::Summary", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %39 = alloca %"class.std::optional.125", align 8 ; 6 uses
  %40 = alloca %"class.std::error_code", align 8  ; 8 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %43 = alloca %"class.std::error_code", align 8  ; 7 uses
  %44 = alloca %"class.llvm::raw_fd_ostream", align 8 ; 14 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.f = load ptr, ptr %6, align 8, !tbaa !181    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181  ; 2 uses
  %.not293 = icmp eq ptr %i.f, %i.h
end_hunk_0
