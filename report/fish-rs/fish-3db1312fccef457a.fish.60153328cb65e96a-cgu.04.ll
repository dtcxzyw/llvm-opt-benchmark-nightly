Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.04?download=true
inline.NumInlined: 2047
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1l_15CompletionEntryE12insert_entryB1n_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1374
  %.not16.i = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i, -1
  br i1 %.not16.i, label %.loopexit46.i, label %bb.cf

bb.cf:                                            ; preds = %.loopexit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7244.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.718.i, i64 56, i1 false), !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i)
  %i.le = getelementptr inbounds nuw i8, ptr %i.dq, i64 704
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !1399, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.aw

.loopexit46.i:                                    ; preds = %.loopexit.i, %.thread41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7244.i)
  br label %_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1F_15CompletionEntryNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB40_11VacantEntryB1D_B2v_E12insert_entry0EB1H_.exit

bb.cg:                                            ; preds = %bb.ap
  %i.lg = zext nneg i16 %i.dj to i64              ; 3 uses
  %i.lh = add nuw nsw i16 %i.dj, 1
  store i16 %i.lh, ptr %i.cx, align 2, !noalias !1405
  %i.li = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.lg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.li, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 32, i1 false), !noalias !1374
  %i.lj = getelementptr inbounds nuw i8, ptr %i.cv, i64 352
  %i.lk = getelementptr inbounds nuw [32 x i8], ptr %i.lj, i64 %i.lg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lk, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i64 32, i1 false), !noalias !1374
  %i.ll = add nuw nsw i64 %i.lg, 1                ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ll
  store ptr %.lcssa129.i, ptr %i.lm, align 8, !noalias !1405
  %i.ln = getelementptr inbounds nuw i8, ptr %.lcssa129.i, i64 704
  store ptr %i.cv, ptr %i.ln, align 8, !noalias !1405
  %i.lo = trunc nuw nsw i64 %i.ll to i16
  %i.lp = getelementptr inbounds nuw i8, ptr %.lcssa129.i, i64 712
  store i16 %i.lo, ptr %i.lp, align 8, !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7244.i)
  br label %_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1F_15CompletionEntryNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB40_11VacantEntryB1D_B2v_E12insert_entry0EB1H_.exit

bb.ch:                                            ; preds = %bb.cj, %bb.ci
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.ci:                                            ; preds = %bb.b
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %2) #34
          to label %bb.cj unwind label %bb.ch

.critedge9:                                       ; preds = %bb.ce, %bb.av, %bb.as, %bb.ad, %bb.h, %bb.cj
  %.pn21 = phi { ptr, i32 } [ %i.lr, %bb.cj ], [ %i.aa, %bb.h ], [ %i.dl, %bb.as ], [ %.pn.ph.i.i, %bb.ad ], [ %.pn.ph.i27.i, %bb.ce ], [ %i.dn, %bb.av ]
  resume { ptr, i32 } %.pn21

bb.cj:                                            ; preds = %bb.ci
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #34
          to label %.critedge9 unwind label %bb.ch
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRef10find_entry(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr captures(address, read_provenance) %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !1452, !noundef !8 ; 2 uses
  %i.c = icmp ult i64 %i.b, 9223372036854775807
  br i1 %i.c, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #33
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit: ; preds = %bb.a
  %i.d = add nuw nsw i64 %i.b, 1
  store i64 %i.d, ptr %i.a, align 8, !noalias !1452
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1455, !noalias !1456, !noundef !8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.j = invoke noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %i.k = lshr i64 %i.j, 57
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1459, !noalias !1460, !noundef !8 ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !alias.scope !1459, !noalias !1460, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.noexc
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.ah, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.j, %.noexc ], [ %i.ai, %bb.f ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.n  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.r, align 1, !noalias !1461 ; 2 uses
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.q
  %i.t = bitcast <16 x i1> %i.s to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ag, %bb.e ], [ %i.t, %bb.d ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = add i64 %.sroa.01.0.i.i.i.i, %i.v
  %i.x = and i64 %i.w, %i.n
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [48 x i8], ptr %i.o, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -48
  %i.ab = invoke noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtB2_10EquivalentNtNtBu_9utfstring11Utf32StringE10equivalentCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa)
          to label %.noexc2 unwind label %.loopexit

.noexc2:                                          ; preds = %.lr.ph.i.i.i
  br i1 %i.ab, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1L_.exit.i, label %bb.e, !prof !14

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %select.unfold.i, !prof !13

bb.e:                                             ; preds = %.noexc2
  %i.af = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ai = add i64 %.sroa.01.0.i.i.i.i, %i.ah
  br label %bb.d

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1L_.exit.i: ; preds = %.noexc2
  %i.aj = getelementptr inbounds i8, ptr %i.z, i64 -24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1453, !nonnull !8, !noundef !8
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !noalias !1453
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.g

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit
  store ptr null, ptr %0, align 8, !alias.scope !1453, !noalias !1462
  br label %_RNvMs1_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_7EnvNode10find_entry.exit

bb.g:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1L_.exit.i
  %i.an = getelementptr inbounds i8, ptr %i.z, i64 -16
  %i.ao = load ptr, ptr %i.aj, align 8, !noalias !1453, !nonnull !8, !noundef !8
  %i.ap = load i64, ptr %i.an, align 8, !noalias !1453, !noundef !8
  %i.aq = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ar = load i8, ptr %i.aq, align 8, !noalias !1453, !noundef !8
  store ptr %i.ao, ptr %0, align 8, !alias.scope !1453, !noalias !1462
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1453, !noalias !1462
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ar, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1453, !noalias !1462
  br label %_RNvMs1_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_7EnvNode10find_entry.exit

bb.h:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1L_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMs1_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_7EnvNode10find_entry.exit: ; preds = %bb.g, %select.unfold.i
  %i.as = load i64, ptr %i.a, align 8, !noundef !8
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %i.a, align 8
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.au = load i64, ptr %i.a, align 8, !noundef !8
  %i.av = add i64 %i.au, -1
  store i64 %i.av, ptr %i.a, align 8
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvMs5_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRef3new(i1 noundef zeroext %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @49)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  %i.f = zext i1 %0 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.h, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @51, i64 32, i1 false)
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.d, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.e, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.7.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %1, ptr %.sroa.410.sroa.7.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.8.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 %i.f, ptr %.sroa.410.sroa.8.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1473
  %i.i = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 121) 96, i64 noundef range(i64 1, 9) 8) #36, !noalias !1473 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.f, !prof !13

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #37
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #34
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i

.body:                                            ; preds = %bb.h, %bb.g, %bb.i, %bb.d
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.m, %bb.i ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  resume { ptr, i32 } %eh.lpad-body24

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.n = icmp eq ptr %1, null
  br i1 %i.n, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !1474
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #38
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1n_15CompletionEntryE8into_mutB1p_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.val1
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl13get_pwd_slash(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.b = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i32 noundef 47)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1477, !noundef !8 ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !range !21, !alias.scope !1477, !noundef !8
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.d, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #38
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit unwind label %bb.g

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1477, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d
  store i32 47, ptr %i.i, align 4
  %i.j = add i64 %i.d, 1
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !1477
  br label %bb.e

bb.e:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #34
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl17set_last_statuses(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeclEECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeclEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeclEECs8frGy5WneL6_4fish.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeclEECs8frGy5WneL6_4fish.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl4getf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i16 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 10 uses
end_hunk_0
begin_hunk_1_@_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs8frGy5WneL6_4fish:bb.a
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1K_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit, %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB17_E10dying_nextCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3956
  call void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1J_E10take_frontCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.e = load ptr, ptr %i.a, align 8, !noalias !3956, !noundef !8 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1K_E16deallocating_endNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3956 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3957, !noundef !8 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.h = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.e, %bb.c ]
  %.sroa.3.05.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %.sroa.4.0.copyload.i, %bb.c ] ; 2 uses
  %i.i = add i64 %.sroa.3.05.i.i, 1               ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 368, i64 464
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #36, !noalias !3958
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.k = load ptr, ptr %i.j, align 8, !noalias !3957, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i

_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.3.0.lcssa.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.c ], [ %i.i, %.lr.ph.i.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.e, %bb.c ], [ %i.h, %.lr.ph.i.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 368, i64 464
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #36, !noalias !3958
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1K_E16deallocating_endNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1K_E16deallocating_endNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3956
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.l = add i64 %i.c, -1
  store i64 %i.l, ptr %i.b, align 8
  %i.m = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1J_E10init_frontCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !3959 ; 5 uses
  %.not.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i1, label %bb.k, label %bb.e, !prof !13

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3960)
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.m, align 8, !alias.scope !3960, !noalias !3961, !nonnull !8, !noundef !8 ; 3 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.48.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !3960, !noalias !3961 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.59.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !3960, !noalias !3961 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 362
  %i.o = load i16, ptr %i.n, align 2, !noalias !3962, !noundef !8
  %i.p = zext i16 %i.o to i64
  %i.q = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.p
  br i1 %i.q, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.h
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.s, %bb.h ], [ %.sroa.07.0.copyload.i.i, %bb.e ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.ak, %bb.h ], [ %.sroa.48.0.copyload.i.i, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 352
  %i.s = load ptr, ptr %i.r, align 8, !noalias !3963, !noundef !8 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.h
  %i.t = zext i16 %i.am to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.e
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %bb.e ], [ %i.t, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %bb.e ], [ %i.ak, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %bb.e ], [ %i.s, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.u = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 376
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.z, %.prol.preheader ], [ %i.y, %bb.g ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.g ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.g ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !3964, !nonnull !8, !noundef !8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 368 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3955

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.y, %bb.g ], [ %i.z, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.g ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.aa = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.aa, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.aj, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !3964, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 368
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.ab, align 8, !noalias !3964, !nonnull !8, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 368
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.ac, align 8, !noalias !3964, !nonnull !8, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 368
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.ad, align 8, !noalias !3964, !nonnull !8, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 368
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.ae, align 8, !noalias !3964, !nonnull !8, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 368
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.af, align 8, !noalias !3964, !nonnull !8, !noundef !8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 368
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.ag, align 8, !noalias !3964, !nonnull !8, !noundef !8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 368
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.ah, align 8, !noalias !3964, !nonnull !8, !noundef !8 ; 2 uses
  %i.ai = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 368
  br i1 %i.ai, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 360
  %i.am = load i16, ptr %i.al, align 8, !noalias !3963 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 368, i64 464
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #36, !noalias !3965
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 362
  %i.ao = load i16, ptr %i.an, align 2, !noalias !3962, !noundef !8
  %i.ap = icmp ult i16 %i.am, %i.ao
  br i1 %i.ap, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 368, i64 464
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #36, !noalias !3965
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #33
          to label %.noexc.i.i unwind label %bb.j, !noalias !3966

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !3959
  unreachable

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.v, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.f ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.m, align 8, !alias.scope !3960, !noalias !3961
  store i64 0, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !3960, !noalias !3961
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !3960, !noalias !3961
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1K_E27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit, %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1K_E16deallocating_endNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 9) %0, i64 noundef range(i64 1, 121) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %i.a = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 121) %1, i64 noundef range(i64 1, 9) %0) #36 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs8frGy5WneL6_4fish12env_dispatch11init_locale(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 17 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 23 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 26 uses
  %i.ac = alloca [24 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [128 x i8], align 8              ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexuE4lockCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noundef nonnull align 4 @_RNvNtCs8frGy5WneL6_4fish6locale11LOCALE_LOCK)
  call void @llvm.experimental.noalias.scope.decl(metadata !4015)
  %i.ah = load i64, ptr %i.ag, align 8, !range !16, !alias.scope !4015, !noalias !4016, !noundef !8
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuarduEINtBM_11PoisonErrorBH_EE6unwrapCs8frGy5WneL6_4fish.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4017
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !4015, !noalias !4016, !nonnull !8, !align !12, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load i8, ptr %i.al, align 8, !range !18, !alias.scope !4015, !noalias !4016, !noundef !8
  store ptr %i.ak, ptr %i.a, align 8, !noalias !4017
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.am, ptr %i.an, align 8, !noalias !4017
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @145, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #37
          to label %bb.d unwind label %bb.c, !noalias !4015

bb.c:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuarduEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %common.resume unwind label %bb.e, !noalias !4015

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4015
  unreachable

common.resume:                                    ; preds = %.body45, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.c ], [ %.pn.pn.pn, %.body45 ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuarduEINtBM_11PoisonErrorBH_EE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !4015, !noalias !4016, !nonnull !8, !align !12, !noundef !8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.at = load i8, ptr %i.as, align 8, !range !18, !alias.scope !4015, !noalias !4016, !noundef !8 ; 2 uses
  %i.au = trunc nuw i8 %i.at to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 7, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) @59, i64 112, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 12 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.g

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.bv, %bb.ar, %bb.au, %bb.g
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body45

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuarduEINtBM_11PoisonErrorBH_EE6unwrapCs8frGy5WneL6_4fish.exit, %bb.bx
  %i.cu = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuarduEINtBM_11PoisonErrorBH_EE6unwrapCs8frGy5WneL6_4fish.exit ], [ %i.cv, %bb.bx ] ; 2 uses
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 3 uses
  store i64 %i.cv, ptr %i.af, align 8, !alias.scope !4018
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.516.0..sroa_idx, i64 %i.cu ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !4018, !nonnull !8, !align !12, !noundef !8 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !4018, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.cx, ptr %i.ae, align 8, !captures !33
  store i64 %i.cz, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @_RNvYNtNtNtCs8frGy5WneL6_4fish3env11environment8EnvStackNtB4_11Environment17getf_unless_emptyB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cx, i64 noundef %i.cz, i16 noundef 16)
          to label %bb.am unwind label %bb.f

.body45:                                          ; preds = %bb.di, %bb.bu, %bb.ao, %bb.ap, %bb.ab, %bb.h, %bb.f, %bb.aw, %.body76, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.n ], [ %i.hw, %bb.bu ], [ %.pn, %.body76 ], [ %lpad.phi91, %bb.aw ], [ %i.ew, %bb.ab ], [ %i.fh, %bb.ao ], [ %i.ct, %bb.f ], [ %i.da, %bb.h ], [ %i.fh, %bb.ap ], [ %i.kt, %bb.di ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuarduEECs8frGy5WneL6_4fish(ptr nonnull %i.ar, i8 %i.at) #34
          to label %common.resume unwind label %bb.af

bb.h:                                             ; preds = %bb.ac, %bb.ag, %bb.k, %bb.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body45

bb.i:                                             ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.db = invoke noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish6locale16set_libc_locales(i1 noundef zeroext true)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, %bb.j
  invoke void @_RNvNtCs8frGy5WneL6_4fish6locale25invalidate_numeric_locale()
          to label %bb.ag unwind label %bb.h

bb.l:                                             ; preds = %bb.j
  %i.dc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories10env_locale, i64 40) monotonic, align 8
  %.not29 = icmp eq i8 %i.dc, 0
  br i1 %.not29, label %bb.k, label %bb.m
end_hunk_1
begin_hunk_2_@_RNvNtNtCs8frGy5WneL6_4fish8builtins9set_color9set_color:bb.a
  store i8 %i.hy, ptr %i.j, align 1, !noalias !4921
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @442) #33
          to label %.noexc133 unwind label %bb.dj

.noexc133:                                        ; preds = %bb.dl
  unreachable

.noexc178.preheader:                              ; preds = %bb.dk
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit179 unwind label %.loopexit261

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit179: ; preds = %.noexc178.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181: ; preds = %bb.dn, %.loopexit268, %.loopexit.split-lp269
  %.pn110 = phi { ptr, i32 } [ %lpad.loopexit.split-lp271, %.loopexit.split-lp269 ], [ %lpad.loopexit270, %.loopexit268 ], [ %i.ib, %bb.dn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #34
          to label %.body186 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit268:                                     ; preds = %.noexc182.preheader
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181

.loopexit.split-lp269:                            ; preds = %bb.bw
  %lpad.loopexit.split-lp271 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181

bb.dm:                                            ; preds = %bb.bw
  %i.hz = extractvalue { ptr, i64 } %i.fe, 0
  %i.ia = extractvalue { ptr, i64 } %i.fe, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @444, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 12, ptr %.sroa.537.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hz, i64 noundef %i.ia, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef 1)
          to label %bb.do unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %bb.dm
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.do:                                            ; preds = %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !4922)
  %i.ic = load i8, ptr %i.v, align 8, !range !18, !alias.scope !4922, !noalias !4923, !noundef !8
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.dp, label %.noexc182.preheader, !prof !13

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4924
  %i.ie = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !range !26, !alias.scope !4922, !noalias !4923, !noundef !8
  store i8 %i.if, ptr %i.k, align 1, !noalias !4924
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @445) #33
          to label %.noexc131 unwind label %bb.dn

.noexc131:                                        ; preds = %bb.dp
  unreachable

.noexc182.preheader:                              ; preds = %bb.do
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit183 unwind label %.loopexit268

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit183: ; preds = %.noexc182.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ig = load i64, ptr %i.u, align 8, !range !20, !alias.scope !4925, !noundef !8
  %i.ih = icmp eq i64 %i.ig, -1
  br i1 %i.ih, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit189, label %bb.dq

bb.dq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit183
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i185 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body186 unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i185: ; preds = %bb.dq
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit189 unwind label %bb.dt

.body186:                                         ; preds = %bb.dt, %bb.dr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181
  %.pn112 = phi { ptr, i32 } [ %.pn110, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit181 ], [ %i.ik, %bb.dt ], [ %i.ii, %bb.dr ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i185
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body186

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit189: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit183, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ce

.body192:                                         ; preds = %.peel.begin, %bb.dz, %bb.du, %bb.dw
  %.pn108 = phi { ptr, i32 } [ %i.ip, %bb.dw ], [ %i.il, %bb.du ], [ %i.iw, %bb.dz ], [ %i.iw, %.peel.begin ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.du:                                            ; preds = %bb.bx
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body192

bb.dv:                                            ; preds = %bb.bx
  %i.im = extractvalue { ptr, i64 } %i.ff, 0
  %i.in = extractvalue { ptr, i64 } %i.ff, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @444, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 12, ptr %.sroa.541.0..sroa_idx, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store i64 0, ptr %i.io, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr @448, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 14, ptr %.sroa.545.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.im, i64 noundef %i.in, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @89, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef 2)
          to label %bb.dx unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dy, %bb.dv
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.q) #34
          to label %.body192 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !4926)
  %i.iq = load i8, ptr %i.r, align 8, !range !18, !alias.scope !4926, !noalias !4927, !noundef !8
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.dy, label %.preheader273.preheader, !prof !13

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4928
  %i.is = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.it = load i8, ptr %i.is, align 1, !range !26, !alias.scope !4926, !noalias !4927, !noundef !8
  store i8 %i.it, ptr %i.l, align 1, !noalias !4928
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #33
          to label %.noexc unwind label %bb.dw

.noexc:                                           ; preds = %bb.dy
  unreachable

.preheader273:                                    ; preds = %.preheader273.preheader
  %i.iu = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.iu)
          to label %.preheader273.1 unwind label %.peel.begin

.preheader273.1:                                  ; preds = %.preheader273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ce

.preheader273.preheader:                          ; preds = %bb.dx
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q)
          to label %.preheader273 unwind label %.peel.begin

.peel.begin:                                      ; preds = %.preheader273, %.preheader273.preheader
  %i.iv = phi i1 [ false, %.preheader273.preheader ], [ true, %.preheader273 ]
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.iv, label %.body192, label %bb.dz

bb.dz:                                            ; preds = %.peel.begin
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.io) #34
          to label %.body192 unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %lpad.loopexit.split-lp289 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15copy_node_chain(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 11 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val18 = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val18, i64 16 ; 13 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !4959, !noundef !8 ; 3 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775807
  br i1 %i.g, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #33
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i: ; preds = %bb.a
  %i.h = add nuw nsw i64 %i.f, 1                  ; 2 uses
  store i64 %i.h, ptr %i.e, align 8, !noalias !4959
  %i.i = getelementptr inbounds nuw i8, ptr %.val18, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noundef !8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit.thread, label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit.thread: ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i
  store i64 %i.f, ptr %i.e, align 8
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.c:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %.pre.i = load i64, ptr %i.e, align 8
  %i.n = add i64 %.pre.i, -1
  store i64 %i.n, ptr %i.e, align 8
  store ptr %i.m, ptr %i.c, align 8
  %i.o = invoke fastcc noundef nonnull ptr @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15copy_node_chain(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.d, align 8
  %i.p = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !4960
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit unwind label %.thread28

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !4961
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit20

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit20 unwind label %bb.r

bb.j:                                             ; preds = %bb.o
  %i.u = load i64, ptr %i.e, align 8, !noundef !8
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.e, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit20

.thread28:                                        ; preds = %bb.g, %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit: ; preds = %bb.f, %bb.g
  %.pr35 = load i64, ptr %i.e, align 8, !noalias !4962 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = icmp ult i64 %.pr35, 9223372036854775807
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit._crit_edge, label %bb.k, !prof !32

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit
  %.pre = add nuw nsw i64 %.pr35, 1
  br label %bb.l

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @450) #33
          to label %.noexc21 unwind label %.thread28

.noexc21:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit._crit_edge, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit.thread
  %.pre-phi = phi i64 [ %.pre, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit._crit_edge ], [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit.thread ]
  store i64 %.pre-phi, ptr %i.e, align 8, !noalias !4962
  %i.y = getelementptr inbounds nuw i8, ptr %.val18, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXNtCskt5MLIAl8nl_9hashbrown3mapINtB2_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB1H_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y)
          to label %bb.m unwind label %.thread32

.thread32:                                        ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load i64, ptr %i.e, align 8, !noundef !8
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.e, align 8
  br label %bb.s

bb.m:                                             ; preds = %bb.l
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.46.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = getelementptr inbounds nuw i8, ptr %.val18, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %.val18, i64 88
  %i.af = load i8, ptr %i.ae, align 8, !range !18, !noundef !8
  %i.ag = load ptr, ptr %i.d, align 8, !noundef !8
  store i64 1, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.ai, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.ad, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.ag, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.6.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 %i.af, ptr %.sroa.46.sroa.6.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !4963
  %i.aj = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 121) 96, i64 noundef range(i64 1, 9) 8) #36, !noalias !4963 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.n, label %bb.q, !prof !13

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #37
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #34
          to label %bb.j unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.q:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = load i64, ptr %i.e, align 8, !noundef !8
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.aj

bb.r:                                             ; preds = %bb.u, %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit20: ; preds = %bb.t, %bb.s, %bb.u, %bb.j, %bb.h, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.al, %bb.j ], [ %i.r, %bb.i ], [ %.pn31, %bb.t ], [ %.pn31, %bb.u ], [ %.pn31, %bb.s ]
  resume { ptr, i32 } %.pn.pn

bb.s:                                             ; preds = %.thread32, %.thread28
  %.pn31 = phi { ptr, i32 } [ %i.w, %.thread28 ], [ %i.z, %.thread32 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4964)
  %i.aq = load ptr, ptr %i.d, align 8, !alias.scope !4964, !noundef !8 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit20, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !4965
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit20

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEEB15_.exit20 unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars() unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_2
begin_hunk_3_@_RNvYNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_:bb.a

bb.ab:                                            ; preds = %.noexc81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5605
  store ptr @72, ptr %i.r, align 8, !noalias !5619
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 18, ptr %i.cw, align 8, !noalias !5619
  %i.cx = invoke { i64, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @72, i64 noundef 18, i64 noundef 1, ptr noundef nonnull @_RNvYNCNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0s6_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtBa_3env11environment8EnvStackbEE9call_onceBa_)
          to label %.noexc86.i unwind label %bb.d, !noalias !5605

.noexc86.i:                                       ; preds = %bb.ab
  %i.cy = extractvalue { i64, ptr } %i.cx, 0
  %.not.i84.i = icmp eq i64 %i.cy, 2
  br i1 %.not.i84.i, label %bb.ad, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %.noexc86.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5619
  store ptr %i.r, ptr %i.q, align 8, !noalias !5619
  br label %.invoke.i

bb.ad:                                            ; preds = %.noexc86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5605
  store ptr @73, ptr %i.p, align 8, !noalias !5620
  %i.cz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 15, ptr %i.cz, align 8, !noalias !5620
  %i.da = invoke { i64, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @73, i64 noundef 15, i64 noundef 1, ptr noundef nonnull @_RNvYNCNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0s7_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtBa_3env11environment8EnvStackbEE9call_onceBa_)
          to label %.noexc91.i unwind label %bb.d, !noalias !5605

.noexc91.i:                                       ; preds = %bb.ad
  %i.db = extractvalue { i64, ptr } %i.da, 0
  %.not.i89.i = icmp eq i64 %i.db, 2
  br i1 %.not.i89.i, label %bb.af, label %bb.ae, !prof !14

bb.ae:                                            ; preds = %.noexc91.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5620
  store ptr %i.p, ptr %i.o, align 8, !noalias !5620
  br label %.invoke.i

bb.af:                                            ; preds = %.noexc91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5605
  store ptr @39, ptr %i.n, align 8, !noalias !5621
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 12, ptr %i.dc, align 8, !noalias !5621
  %i.dd = invoke { i64, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @39, i64 noundef 12, i64 noundef 1, ptr noundef nonnull @_RNvYNCNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0s8_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtBa_3env11environment8EnvStackbEE9call_onceBa_)
          to label %.noexc96.i unwind label %bb.d, !noalias !5605

.noexc96.i:                                       ; preds = %bb.af
  %i.de = extractvalue { i64, ptr } %i.dd, 0
  %.not.i94.i = icmp eq i64 %i.de, 2
  br i1 %.not.i94.i, label %bb.ah, label %bb.ag, !prof !14

bb.ag:                                            ; preds = %.noexc96.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5621
  store ptr %i.n, ptr %i.m, align 8, !noalias !5621
  br label %.invoke.i

bb.ah:                                            ; preds = %.noexc96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5605
  store ptr @74, ptr %i.l, align 8, !noalias !5622
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 27, ptr %i.df, align 8, !noalias !5622
  %i.dg = invoke { i64, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @74, i64 noundef 27, i64 noundef 1, ptr noundef nonnull @_RNvYNCNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0s9_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtBa_3env11environment8EnvStackbEE9call_onceBa_)
          to label %.noexc101.i unwind label %bb.d, !noalias !5605

.noexc101.i:                                      ; preds = %bb.ah
  %i.dh = extractvalue { i64, ptr } %i.dg, 0
  %.not.i99.i = icmp eq i64 %i.dh, 2
  br i1 %.not.i99.i, label %bb.aj, label %bb.ai, !prof !14

bb.ai:                                            ; preds = %.noexc101.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5622
  store ptr %i.l, ptr %i.k, align 8, !noalias !5622
  br label %.invoke.i

bb.aj:                                            ; preds = %.noexc101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5605
  store ptr @75, ptr %i.j, align 8, !noalias !5623
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 21, ptr %i.di, align 8, !noalias !5623
  %i.dj = invoke { i64, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @75, i64 noundef 21, i64 noundef 1, ptr noundef nonnull @_RNvYNCNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0sa_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtBa_3env11environment8EnvStackbEE9call_onceBa_)
          to label %.noexc106.i unwind label %bb.d, !noalias !5605

.noexc106.i:                                      ; preds = %bb.aj
  %i.dk = extractvalue { i64, ptr } %i.dj, 0
  %.not.i104.i = icmp eq i64 %i.dk, 2
  br i1 %.not.i104.i, label %bb.al, label %bb.ak, !prof !14

bb.ak:                                            ; preds = %.noexc106.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5623
  store ptr %i.j, ptr %i.i, align 8, !noalias !5623
  br label %.invoke.i

bb.al:                                            ; preds = %.noexc106.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5605
  store ptr @76, ptr %i.h, align 8, !noalias !5624
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 20, ptr %i.dl, align 8, !noalias !5624
  %i.dm = invoke { i64, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @76, i64 noundef 20, i64 noundef 1, ptr noundef nonnull @_RNvYNCNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0sb_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtBa_3env11environment8EnvStackbEE9call_onceBa_)
          to label %.noexc111.i unwind label %bb.d, !noalias !5605

.noexc111.i:                                      ; preds = %bb.al
  %i.dn = extractvalue { i64, ptr } %i.dm, 0
  %.not.i109.i = icmp eq i64 %i.dn, 2
  br i1 %.not.i109.i, label %bb.an, label %bb.am, !prof !14

bb.am:                                            ; preds = %.noexc111.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5624
  store ptr %i.h, ptr %i.g, align 8, !noalias !5624
  br label %.invoke.i

bb.an:                                            ; preds = %.noexc111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5605
  store ptr @77, ptr %i.f, align 8, !noalias !5625
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 10, ptr %i.do, align 8, !noalias !5625
  %i.dp = invoke { i64, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @77, i64 noundef 10, i64 noundef 1, ptr noundef nonnull @_RNvYNCNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0sc_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtBa_3env11environment8EnvStackbEE9call_onceBa_)
          to label %.noexc116.i unwind label %bb.d, !noalias !5605

.noexc116.i:                                      ; preds = %bb.an
  %i.dq = extractvalue { i64, ptr } %i.dp, 0
  %.not.i114.i = icmp eq i64 %i.dq, 2
  br i1 %.not.i114.i, label %bb.ap, label %bb.ao, !prof !14

bb.ao:                                            ; preds = %.noexc116.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5625
  store ptr %i.f, ptr %i.e, align 8, !noalias !5625
  br label %.invoke.i

bb.ap:                                            ; preds = %.noexc116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5605
  store ptr @78, ptr %i.d, align 8, !noalias !5626
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 26, ptr %i.dr, align 8, !noalias !5626
  %i.ds = invoke { i64, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @78, i64 noundef 26, i64 noundef 1, ptr noundef nonnull @_RNvYNCNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0sd_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtBa_3env11environment8EnvStackbEE9call_onceBa_)
          to label %.noexc121.i unwind label %bb.d, !noalias !5605

.noexc121.i:                                      ; preds = %bb.ap
  %i.dt = extractvalue { i64, ptr } %i.ds, 0
  %.not.i119.i = icmp eq i64 %i.dt, 2
  br i1 %.not.i119.i, label %bb.ar, label %bb.aq, !prof !14

bb.aq:                                            ; preds = %.noexc121.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5626
  store ptr %i.d, ptr %i.c, align 8, !noalias !5626
  br label %.invoke.i

bb.ar:                                            ; preds = %.noexc121.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5605
  store ptr @79, ptr %i.b, align 8, !noalias !5627
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 20, ptr %i.du, align 8, !noalias !5627
  %i.dv = invoke { i64, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish12env_dispatch11EnvCallbackNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @79, i64 noundef 20, i64 noundef 1, ptr noundef nonnull @_RNvYNCNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0se_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtNtBa_3env11environment8EnvStackbEE9call_onceBa_)
          to label %.noexc126.i unwind label %bb.d, !noalias !5605

.noexc126.i:                                      ; preds = %bb.ar
  %i.dw = extractvalue { i64, ptr } %i.dv, 0
  %.not.i124.i = icmp eq i64 %i.dw, 2
  br i1 %.not.i124.i, label %_RNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0B5_.exit, label %bb.as, !prof !14

bb.as:                                            ; preds = %.noexc126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5627
  store ptr %i.b, ptr %i.a, align 8, !noalias !5627
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.e ], [ %.sink.i.sroa.gep1, %bb.g ], [ %.sink.i.sroa.gep2, %bb.i ], [ %.sink.i.sroa.gep3, %bb.k ], [ %.sink.i.sroa.gep4, %bb.m ], [ %.sink.i.sroa.gep5, %bb.o ], [ %.sink.i.sroa.gep6, %bb.q ], [ %.sink.i.sroa.gep7, %bb.s ], [ %.sink.i.sroa.gep8, %bb.u ], [ %.sink.i.sroa.gep9, %bb.w ], [ %.sink.i.sroa.gep10, %bb.y ], [ %.sink.i.sroa.gep11, %bb.aa ], [ %.sink.i.sroa.gep12, %bb.ac ], [ %.sink.i.sroa.gep13, %bb.ae ], [ %.sink.i.sroa.gep14, %bb.ag ], [ %.sink.i.sroa.gep15, %bb.ai ], [ %.sink.i.sroa.gep16, %bb.ak ], [ %.sink.i.sroa.gep17, %bb.am ], [ %.sink.i.sroa.gep18, %bb.ao ], [ %.sink.i.sroa.gep19, %bb.aq ], [ %.sink.i.sroa.gep20, %bb.as ]
  %.sink.i = phi ptr [ %i.ao, %bb.e ], [ %i.am, %bb.g ], [ %i.ak, %bb.i ], [ %i.ai, %bb.k ], [ %i.ag, %bb.m ], [ %i.ae, %bb.o ], [ %i.ac, %bb.q ], [ %i.aa, %bb.s ], [ %i.y, %bb.u ], [ %i.w, %bb.w ], [ %i.u, %bb.y ], [ %i.s, %bb.aa ], [ %i.q, %bb.ac ], [ %i.o, %bb.ae ], [ %i.m, %bb.ag ], [ %i.k, %bb.ai ], [ %i.i, %bb.ak ], [ %i.g, %bb.am ], [ %i.e, %bb.ao ], [ %i.c, %bb.aq ], [ %i.a, %bb.as ]
  %i.dx = phi ptr [ @153, %bb.e ], [ @152, %bb.g ], [ @153, %bb.i ], [ @153, %bb.k ], [ @153, %bb.m ], [ @153, %bb.o ], [ @153, %bb.q ], [ @153, %bb.s ], [ @153, %bb.u ], [ @153, %bb.w ], [ @153, %bb.y ], [ @153, %bb.aa ], [ @153, %bb.ac ], [ @153, %bb.ae ], [ @153, %bb.ag ], [ @153, %bb.ai ], [ @153, %bb.ak ], [ @153, %bb.am ], [ @153, %bb.ao ], [ @153, %bb.aq ], [ @153, %bb.as ]
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB6_7Display3fmtCs8frGy5WneL6_4fish, ptr %.sink.i.sroa.phi, align 8, !noalias !5605
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @151, ptr noundef nonnull %.sink.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx) #33
          to label %.cont.i unwind label %bb.d, !noalias !5605

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.at:                                            ; preds = %bb.c
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !5605
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEBF_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %.pn.i

_RNCNvNtCs8frGy5WneL6_4fish12env_dispatch18VAR_DISPATCH_TABLE0B5_.exit: ; preds = %.noexc126.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5605
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noalias noundef nonnull ptr @_RNvYNCNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment11GLOBAL_NODE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBc_() unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noalias noundef nonnull ptr @_RNvMs5_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_10EnvNodeRef3new(i1 noundef zeroext false, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions11TOKEN_INFOS0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBc_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [928 x i8], align 8               ; 185 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5630
  store i64 0, ptr %i.a, align 8, !noalias !5630
  %.sroa.4829.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 38, ptr %.sroa.4829.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.5830.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5830.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.6831.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.6831.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.7832.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.7832.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.10835.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @92, ptr %.sroa.10835.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.11836.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 1, ptr %.sroa.11836.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.12837.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 3, ptr %.sroa.12837.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.15840.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @93, ptr %.sroa.15840.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.16841.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 2, ptr %.sroa.16841.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.17842.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 1, ptr %.sroa.17842.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.18843.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 81
  store i8 0, ptr %.sroa.18843.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.19844.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 82
  store i8 0, ptr %.sroa.19844.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.21846.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @94, ptr %.sroa.21846.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.22847.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 2, ptr %.sroa.22847.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.23848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 1, ptr %.sroa.23848.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.24849.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 105
  store i8 0, ptr %.sroa.24849.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.25850.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 1, ptr %.sroa.25850.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.27852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @95, ptr %.sroa.27852.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.28853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 2, ptr %.sroa.28853.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.29854.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 1, ptr %.sroa.29854.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.30855.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 129
  store i8 0, ptr %.sroa.30855.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.31856.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  store i8 2, ptr %.sroa.31856.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.33858.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr @96, ptr %.sroa.33858.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.34859.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 2, ptr %.sroa.34859.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.35860.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 1, ptr %.sroa.35860.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.36861.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 153
  store i8 0, ptr %.sroa.36861.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.37862.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 154
  store i8 3, ptr %.sroa.37862.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.39864.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr @97, ptr %.sroa.39864.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.40865.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 2, ptr %.sroa.40865.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.41866.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 1, ptr %.sroa.41866.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.42867.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 177
  store i8 0, ptr %.sroa.42867.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.43868.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 178
  store i8 4, ptr %.sroa.43868.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.45870.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr @98, ptr %.sroa.45870.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.46871.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 2, ptr %.sroa.46871.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.47872.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 1, ptr %.sroa.47872.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.48873.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 201
  store i8 0, ptr %.sroa.48873.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.49874.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 202
  store i8 5, ptr %.sroa.49874.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.51876.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr @99, ptr %.sroa.51876.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.52877.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i64 2, ptr %.sroa.52877.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.53878.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i8 1, ptr %.sroa.53878.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.54879.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 225
  store i8 0, ptr %.sroa.54879.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.55880.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store i8 6, ptr %.sroa.55880.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.57882.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr @100, ptr %.sroa.57882.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.58883.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 2, ptr %.sroa.58883.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.59884.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i8 1, ptr %.sroa.59884.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.60885.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 249
  store i8 2, ptr %.sroa.60885.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.61886.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 250
  store i8 0, ptr %.sroa.61886.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.63888.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr @101, ptr %.sroa.63888.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.64889.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i64 2, ptr %.sroa.64889.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.65890.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i8 1, ptr %.sroa.65890.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.66891.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 273
  store i8 0, ptr %.sroa.66891.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.67892.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 274
  store i8 7, ptr %.sroa.67892.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.69894.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr @102, ptr %.sroa.69894.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.70895.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i64 2, ptr %.sroa.70895.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.71896.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i8 1, ptr %.sroa.71896.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.72897.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 297
  store i8 2, ptr %.sroa.72897.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.73898.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 298
  store i8 1, ptr %.sroa.73898.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.75900.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr @103, ptr %.sroa.75900.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.76901.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i64 2, ptr %.sroa.76901.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.77902.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i8 1, ptr %.sroa.77902.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.78903.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 321
  store i8 0, ptr %.sroa.78903.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.79904.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 322
  store i8 8, ptr %.sroa.79904.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.81906.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store ptr @104, ptr %.sroa.81906.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.82907.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 2, ptr %.sroa.82907.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.83908.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i8 1, ptr %.sroa.83908.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.84909.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 345
  store i8 0, ptr %.sroa.84909.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.85910.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 346
  store i8 9, ptr %.sroa.85910.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.87912.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr @105, ptr %.sroa.87912.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.88913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i64 2, ptr %.sroa.88913.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.89914.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i8 1, ptr %.sroa.89914.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.90915.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 369
  store i8 0, ptr %.sroa.90915.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.91916.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 370
  store i8 10, ptr %.sroa.91916.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.93918.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store ptr @106, ptr %.sroa.93918.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.94919.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store i64 2, ptr %.sroa.94919.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.95920.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store i8 1, ptr %.sroa.95920.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.96921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 393
  store i8 0, ptr %.sroa.96921.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.97922.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 394
  store i8 11, ptr %.sroa.97922.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.99924.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store ptr @107, ptr %.sroa.99924.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.100925.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store i64 2, ptr %.sroa.100925.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.101926.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store i8 1, ptr %.sroa.101926.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.102927.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 417
  store i8 2, ptr %.sroa.102927.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.103928.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 418
  store i8 2, ptr %.sroa.103928.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.105930.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store ptr @108, ptr %.sroa.105930.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.106931.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store i64 2, ptr %.sroa.106931.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.107932.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store i8 1, ptr %.sroa.107932.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.108933.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 441
  store i8 1, ptr %.sroa.108933.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.109934.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 442
  store i8 0, ptr %.sroa.109934.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.111936.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store ptr @109, ptr %.sroa.111936.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.112937.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store i64 2, ptr %.sroa.112937.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.113938.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store i8 1, ptr %.sroa.113938.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.114939.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 465
  store i8 0, ptr %.sroa.114939.0..sroa_idx.i, align 1, !noalias !5630
  %.sroa.115940.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 466
  store i8 12, ptr %.sroa.115940.0..sroa_idx.i, align 2, !noalias !5630
  %.sroa.117942.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store ptr @110, ptr %.sroa.117942.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.118943.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store i64 2, ptr %.sroa.118943.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.119944.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i8 1, ptr %.sroa.119944.0..sroa_idx.i, align 8, !noalias !5630
  %.sroa.120945.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 489
end_hunk_3
