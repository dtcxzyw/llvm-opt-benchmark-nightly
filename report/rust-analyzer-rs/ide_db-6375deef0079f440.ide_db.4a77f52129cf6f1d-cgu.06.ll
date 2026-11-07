Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.06?download=true
inline.NumInlined: 1559
inline.NumDeleted: 650
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages6search:bb.a
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1F_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4z_10FindUsages10find_nodess_00ENCB4t_s_0EEB4B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.cw)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit687 unwind label %.loopexit.split-lp941.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit687: ; preds = %.thread877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.me

bb.pv:                                            ; preds = %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  store ptr %.sroa.5.0.i.ph, ptr %i.cv, align 8
  %i.akk = invoke fastcc noundef zeroext i1 @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages14found_name_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv, ptr noundef nonnull %1, ptr %.val8.i.i.i)
          to label %bb.qr unwind label %bb.qp

bb.pw:                                            ; preds = %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  store ptr %.sroa.5.0.i.ph, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1863
  invoke void @_RNvMs0_NtCs6oosyzwIepl_6ide_db4defsNtB5_9NameClass8classify(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.q, ptr noundef nonnull align 8 %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc692 unwind label %bb.qt

.noexc692:                                        ; preds = %bb.pw
  %i.akl = load i32, ptr %i.q, align 8, !range !1864, !noalias !1863, !noundef !29 ; 3 uses
  %.not.i688 = icmp eq i32 %i.akl, -1
  br i1 %.not.i688, label %bb.qv, label %bb.px

bb.px:                                            ; preds = %.noexc692
  %i.akm = add nsw i32 %i.akl, -3
  %i.akn = icmp samesign ugt i32 %i.akl, 2
  %narrow.i = select i1 %i.akn, i32 %i.akm, i32 2
  switch i32 %narrow.i, label %bb.py [
    i32 0, label %bb.pz
    i32 1, label %bb.qa
    i32 2, label %bb.qb
  ]

bb.py:                                            ; preds = %bb.px
  unreachable

bb.pz:                                            ; preds = %bb.px
  %i.ako = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.px, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ee) #38
  br i1 %i.ako, label %bb.qv, label %bb.qc

bb.qa:                                            ; preds = %bb.px
  %i.akp = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.px) #38
  br i1 %i.akp, label %bb.qj, label %bb.qv

bb.qb:                                            ; preds = %bb.px
  br i1 %i.pq, label %bb.qk, label %bb.qv

bb.qc:                                            ; preds = %bb.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.px, i64 40, i1 false), !noalias !1863
  br i1 %.not19.i, label %bb.qg, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  br i1 %i.qe, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1863
  %i.akq = load ptr, ptr %i.ec, align 8, !nonnull !29, !align !37, !noundef !29
  invoke void @_RNvNtCs6oosyzwIepl_6ide_db6traits23convert_to_def_in_trait(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noundef nonnull %i.akq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.k)
          to label %.noexc693 unwind label %bb.qt

.noexc693:                                        ; preds = %bb.qe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1863
  %i.akr = load ptr, ptr %i.ec, align 8, !nonnull !29, !align !37, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ee, i64 40, i1 false), !noalias !1865
  invoke void @_RNvNtCs6oosyzwIepl_6ide_db6traits23convert_to_def_in_trait(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noundef nonnull %i.akr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.h)
          to label %.noexc694 unwind label %bb.qt

.noexc694:                                        ; preds = %.noexc693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1863
  %i.aks = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1863
  br i1 %i.aks, label %bb.qi, label %bb.qg

bb.qf:                                            ; preds = %bb.qd
  br i1 %.not20.i, label %bb.qh, label %bb.qg

bb.qg:                                            ; preds = %.noexc695, %bb.qf, %.noexc694, %bb.qc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1863
  br label %bb.qv

bb.qh:                                            ; preds = %bb.qf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1863
  %i.akt = load ptr, ptr %i.ec, align 8, !nonnull !29, !align !37, !noundef !29
  invoke void @_RNvNtCs6oosyzwIepl_6ide_db6traits23convert_to_def_in_trait(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noundef nonnull %i.akt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.k)
          to label %.noexc695 unwind label %bb.qt

.noexc695:                                        ; preds = %bb.qh
  %i.aku = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ee) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1863
  br i1 %i.aku, label %bb.qi, label %bb.qg

bb.qi:                                            ; preds = %.noexc695, %.noexc694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1863
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.pb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc696 unwind label %bb.qt

.noexc696:                                        ; preds = %bb.qi
  %i.akv = load i32, ptr %i.f, align 4, !range !44, !noalias !1863, !noundef !29 ; 2 uses
  %i.akw = load i32, ptr %i.qf, align 4, !noalias !1863, !noundef !29 ; 2 uses
  %i.akx = load <2 x i32>, ptr %i.qg, align 4, !noalias !1863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1863
  %i.aky = invoke noundef nonnull ptr @_RNvXsen_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc697 unwind label %bb.qt

.noexc697:                                        ; preds = %.noexc696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1863
  store i32 %i.akv, ptr %i.e, align 8, !noalias !1863
  store i32 %i.akw, ptr %i.qh, align 4, !noalias !1863
  store i32 0, ptr %i.qi, align 8, !noalias !1863
  store ptr %i.aky, ptr %.sroa.012.sroa.5.0..sroa_idx.i, align 8, !noalias !1863
  store <2 x i32> %i.akx, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1863
  store i8 0, ptr %.sroa.615.0..sroa_idx.i, align 8, !noalias !1863
  %i.akz = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.akv, i32 noundef %i.akw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.qi) #38
          to label %.noexc698 unwind label %bb.qt, !inline_history !1598

.noexc698:                                        ; preds = %.noexc697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1863
  br label %bb.qv

bb.qj:                                            ; preds = %bb.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1863
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.m, ptr noundef nonnull align 8 %i.pb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc699 unwind label %bb.qt

.noexc699:                                        ; preds = %bb.qj
  %i.ala = load i32, ptr %i.m, align 4, !range !44, !noalias !1863, !noundef !29 ; 2 uses
  %i.alb = load i32, ptr %i.py, align 4, !noalias !1863, !noundef !29 ; 2 uses
  %i.alc = load <2 x i32>, ptr %i.pz, align 4, !noalias !1863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1863
  %i.ald = invoke noundef nonnull ptr @_RNvXsen_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc700 unwind label %bb.qt

.noexc700:                                        ; preds = %.noexc699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1863
  store i32 %i.ala, ptr %i.l, align 8, !noalias !1863
  store i32 %i.alb, ptr %i.qa, align 4, !noalias !1863
  store i32 0, ptr %i.qb, align 8, !noalias !1863
  store ptr %i.ald, ptr %.sroa.06.sroa.5.0..sroa_idx.i, align 8, !noalias !1863
  store <2 x i32> %i.alc, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1863
  store i8 0, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !1863
  %i.ale = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.ala, i32 noundef %i.alb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.qb) #38
          to label %.noexc701 unwind label %bb.qt, !inline_history !1598

.noexc701:                                        ; preds = %.noexc700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1863
  br label %bb.qv

bb.qk:                                            ; preds = %bb.qb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ps, ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i64 16, i1 false), !noalias !1863
  store i8 1, ptr %i.p, align 8, !noalias !1863
  %i.alf = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ee) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1863
  br i1 %i.alf, label %bb.ql, label %bb.qv

bb.ql:                                            ; preds = %bb.qk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1863
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.o, ptr noundef nonnull align 8 %i.pb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc702 unwind label %bb.qt

.noexc702:                                        ; preds = %bb.ql
  %i.alg = load i32, ptr %i.o, align 4, !range !44, !noalias !1863, !noundef !29 ; 2 uses
  %i.alh = load i32, ptr %i.pt, align 4, !noalias !1863, !noundef !29 ; 2 uses
  %i.ali = load <2 x i32>, ptr %i.pu, align 4, !noalias !1863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1863
  %i.alj = invoke noundef nonnull ptr @_RNvXsen_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc703 unwind label %bb.qt

.noexc703:                                        ; preds = %.noexc702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1863
  store i32 %i.alg, ptr %i.n, align 8, !noalias !1863
  store i32 %i.alh, ptr %i.pv, align 4, !noalias !1863
  store i32 0, ptr %i.pw, align 8, !noalias !1863
  store ptr %i.alj, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !noalias !1863
  store <2 x i32> %i.ali, ptr %.sroa.4.0..sroa_idx.i689, align 8, !noalias !1863
  store i8 2, ptr %.sroa.6.0..sroa_idx.i691, align 8, !noalias !1863
  %i.alk = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.alg, i32 noundef %i.alh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.pw) #38
          to label %.noexc704 unwind label %bb.qt, !inline_history !1598

.noexc704:                                        ; preds = %.noexc703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1863
  br label %bb.qv

bb.qm:                                            ; preds = %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  store ptr %.sroa.5.0.i.ph, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1866
  invoke void @_RNvMs2_NtCs6oosyzwIepl_6ide_db4defsNtB5_12NameRefClass17classify_lifetime(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noundef nonnull align 8 %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc711.a unwind label %bb.qx

.noexc711.a:                                      ; preds = %bb.qm
  %i.all = load i32, ptr %i.d, align 8, !range !51, !noalias !1866, !noundef !29
  %.not.i705 = icmp eq i32 %i.all, 3
  br i1 %.not.i705, label %bb.qn, label %bb.qz

bb.qn:                                            ; preds = %.noexc711.a
  %i.alm = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.qj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ee) #38
  br i1 %i.alm, label %bb.qo, label %bb.qz

bb.qo:                                            ; preds = %bb.qn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1866
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %i.pb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc712.a unwind label %bb.qx

.noexc712.a:                                      ; preds = %bb.qo
  %i.aln = load i32, ptr %i.c, align 4, !range !44, !noalias !1866, !noundef !29 ; 2 uses
  %i.alo = load i32, ptr %i.qk, align 4, !noalias !1866, !noundef !29 ; 2 uses
  %i.alp = load <2 x i32>, ptr %i.ql, align 4, !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1866
  %i.alq = invoke noundef nonnull ptr @_RNvXscl_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_8LifetimeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc713.a unwind label %bb.qx

.noexc713.a:                                      ; preds = %.noexc712.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1866
  store i32 %i.aln, ptr %i.b, align 8, !noalias !1866
  store i32 %i.alo, ptr %i.qm, align 4, !noalias !1866
  store i32 2, ptr %i.qn, align 8, !noalias !1866
  store ptr %i.alq, ptr %.sroa.01.sroa.5.0..sroa_idx.i707, align 8, !noalias !1866
  store <2 x i32> %i.alp, ptr %.sroa.4.0..sroa_idx.i708, align 8, !noalias !1866
  store i8 0, ptr %.sroa.6.0..sroa_idx.i710, align 8, !noalias !1866
  %i.alr = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.aln, i32 noundef %i.alo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.qn) #38
          to label %.noexc714 unwind label %bb.qx, !inline_history !1602

.noexc714:                                        ; preds = %.noexc713.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1866
  br label %bb.qz

bb.qp:                                            ; preds = %bb.pv
  %i.als = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.alu = load i32, ptr %i.alt, align 4, !noundef !29
  %i.alv = add i32 %i.alu, -1                     ; 2 uses
  store i32 %i.alv, ptr %i.alt, align 4
  %i.alw = icmp eq i32 %i.alv, 0
  br i1 %i.alw, label %bb.qq, label %.body682

bb.qq:                                            ; preds = %bb.qp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.body682 unwind label %bb.ib

bb.qr:                                            ; preds = %bb.pv
  %i.alx = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.aly = load i32, ptr %i.alx, align 4, !noundef !29
  %i.alz = add i32 %i.aly, -1                     ; 2 uses
  store i32 %i.alz, ptr %i.alx, align 4
  %i.ama = icmp eq i32 %i.alz, 0
  br i1 %i.ama, label %bb.qs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718

bb.qs:                                            ; preds = %bb.qr
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718 unwind label %bb.pt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718: ; preds = %bb.qr, %bb.qs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br i1 %i.akk, label %bb.rb, label %.backedge.backedge

.noexc720:                                        ; preds = %bb.qw, %bb.qv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br i1 %.sroa.0.2.i, label %bb.rb, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.noexc720, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718, %.split
  br label %.backedge

bb.qt:                                            ; preds = %.noexc703, %.noexc702, %bb.ql, %.noexc700, %.noexc699, %bb.qj, %.noexc697, %.noexc696, %bb.qi, %bb.qh, %.noexc693, %bb.qe, %bb.pw
  %i.amb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.amd = load i32, ptr %i.amc, align 4, !noundef !29
  %i.ame = add i32 %i.amd, -1                     ; 2 uses
  store i32 %i.ame, ptr %i.amc, align 4
  %i.amf = icmp eq i32 %i.ame, 0
  br i1 %i.amf, label %bb.qu, label %.body682

bb.qu:                                            ; preds = %bb.qt
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.body682 unwind label %bb.ib

bb.qv:                                            ; preds = %.noexc704, %bb.qk, %.noexc701, %.noexc698, %bb.qg, %bb.qb, %bb.qa, %bb.pz, %.noexc692
  %.sroa.0.2.i = phi i1 [ false, %bb.qg ], [ %i.akz, %.noexc698 ], [ %i.alk, %.noexc704 ], [ %i.ale, %.noexc701 ], [ false, %bb.qb ], [ false, %.noexc692 ], [ false, %bb.qa ], [ false, %bb.pz ], [ false, %bb.qk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1863
  %i.amg = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.amh = load i32, ptr %i.amg, align 4, !noundef !29
  %i.ami = add i32 %i.amh, -1                     ; 2 uses
  store i32 %i.ami, ptr %i.amg, align 4
  %i.amj = icmp eq i32 %i.ami, 0
  br i1 %i.amj, label %bb.qw, label %.noexc720

bb.qw:                                            ; preds = %bb.qv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.noexc720 unwind label %bb.pt

bb.qx:                                            ; preds = %.noexc713.a, %.noexc712.a, %bb.qo, %bb.qm
  %i.amk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.amm = load i32, ptr %i.aml, align 4, !noundef !29
  %i.amn = add i32 %i.amm, -1                     ; 2 uses
  store i32 %i.amn, ptr %i.aml, align 4
  %i.amo = icmp eq i32 %i.amn, 0
  br i1 %i.amo, label %bb.qy, label %.body682

bb.qy:                                            ; preds = %bb.qx
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.body682 unwind label %bb.ib

bb.qz:                                            ; preds = %.noexc714, %bb.qn, %.noexc711.a
  %.sroa.0.0.i705 = phi i1 [ %i.alr, %.noexc714 ], [ false, %bb.qn ], [ false, %.noexc711.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1866
  %i.amp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 4, !noundef !29
  %i.amr = add i32 %i.amq, -1                     ; 2 uses
  store i32 %i.amr, ptr %i.amp, align 4
  %i.ams = icmp eq i32 %i.amr, 0
  br i1 %i.ams, label %bb.ra, label %.split

bb.ra:                                            ; preds = %bb.qz
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.split unwind label %bb.pt

.split:                                           ; preds = %bb.qz, %bb.ra
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br i1 %.sroa.0.0.i705, label %bb.rb, label %.backedge.backedge

bb.rb:                                            ; preds = %.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718, %.noexc720
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1F_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4z_10FindUsages10find_nodess_00ENCB4t_s_0EEB4B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.cw)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit726 unwind label %.loopexit.split-lp941.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit726: ; preds = %bb.rb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %.loopexit946

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCslLTI5cSnp8O_6memchr6memmem8FindIterNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2a_10FindUsages13match_indices0EEB2c_.exit671: ; preds = %bb.oz, %bb.oy, %.loopexit946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.nu

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4lazy8LazyCellINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2I_10FindUsages6searchs3_0EEB2K_.exit651: ; preds = %bb.nv, %bb.nu, %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArceE10drop_innerCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArceEECs6oosyzwIepl_6ide_db.exit728 unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArceEECs6oosyzwIepl_6ide_db.exit728: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4lazy8LazyCellINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2I_10FindUsages6searchs3_0EEB2K_.exit651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.iy

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit465: ; preds = %bb.jb, %bb.ja, %bb.iz, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  %i.amt = getelementptr inbounds nuw i8, ptr %i.df, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  %i.amu = load i64, ptr %i.amt, align 32, !range !32, !alias.scope !1870, !noundef !29
  %i.amv = icmp eq i64 %i.amu, 0
  br i1 %i.amv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit731, label %bb.rc

bb.rc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit465
  %.val1.i.i.i729 = load i64, ptr %.sroa.57.0.in.i560, align 16, !alias.scope !1870, !noundef !29 ; 2 uses
  %i.amw = icmp eq i64 %.val1.i.i.i729, 0
  br i1 %i.amw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit731, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %.val.i.i.i730 = load ptr, ptr %.sroa.06.0.in.i558, align 8, !alias.scope !1870, !nonnull !29, !noundef !29
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i730, i64 noundef range(i64 1, 0) %.val1.i.i.i729, i64 noundef 1) #36, !noalias !1870
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit731

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit731: ; preds = %bb.rd, %bb.rc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br label %.thread843

.invoke1455.sink.split:                           ; preds = %bb.bs, %.thread843, %bb.bq, %bb.br, %bb.as, %bb.ak, %bb.ai, %bb.aj, %bb.ay, %bb.be, %.noexc4.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br label %.invoke1455

.invoke1455:                                      ; preds = %.invoke1455.sink.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit308
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dk)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit733 unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages8in_scope(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 !guid !1875 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1877, !align !37, !noundef !29
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages9set_scope.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #32, !noalias !1878
  unreachable

_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages9set_scope.exit: ; preds = %bb.a
  store ptr %2, ptr %i.a, align 8, !alias.scope !1877
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !alias.scope !1879
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages9set_scope(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2) unnamed_addr #1 !guid !1880 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !37, !noundef !29
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr %2, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 13) i8 @_RNvMs5_NtCs6oosyzwIepl_6ide_db6searchNtB5_17ReferenceCategory3new(ptr noundef nonnull align 8 %0, i8 %.0.val, ptr %.0.val1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1890 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.e = tail call fastcc noundef zeroext i1 @_RNvNtCs6oosyzwIepl_6ide_db6search19is_name_ref_in_test(ptr noundef nonnull align 8 %0, ptr nonnull %.0.val1)
  %spec.select = select i1 %i.e, i8 8, i8 0       ; 3 uses
  switch i8 %.0.val, label %bb.b [
    i8 1, label %bb.c
    i8 14, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvNtCs6oosyzwIepl_6ide_db6search21is_name_ref_in_import(ptr nonnull %.0.val1)
  %i.g = or disjoint i8 %spec.select, 4
  %spec.select9 = select i1 %i.f, i8 %i.g, i8 %spec.select
  br label %bb.bd

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !29 ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %.lr.ph.i, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
  unreachable

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %i.h, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val1, i64 60
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.val.i.i.i4648.i = phi ptr [ %.0.val1, %.lr.ph.i ], [ %.val.i.i.i.i, %.backedge.i ] ; 13 uses
  %i.o = getelementptr i8, ptr %.val.i.i.i4648.i, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !1891, !noundef !29 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null ; 4 uses
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noalias !1891, !noundef !29 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.h, label %bb.g, !prof !31

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %i.p, align 4, !noalias !1891
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %.noexc.i.i unwind label %bb.i, !noalias !1891

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i4648.i, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noalias !1891, !noundef !29
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !noalias !1891
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECs6oosyzwIepl_6ide_db.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i4648.i) #35
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECs6oosyzwIepl_6ide_db.exit unwind label %bb.k, !noalias !1891

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1891
  unreachable

bb.l:                                             ; preds = %bb.g, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i4648.i, i64 48 ; 18 uses
  %i.aa = load i32, ptr %i.z, align 8, !noalias !1892, !noundef !29 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.m, label %bb.o, !prof !31

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1892

.noexc.i.i.i.i:                                   ; preds = %bb.m
  unreachable

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.w, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit.i.i.i.i, %bb.q, %bb.p
  %.pn22.i.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %.pn.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit.i.i.i.i ], [ %i.ah, %bb.q ], [ %.pn.i.i.i.i, %bb.w ], [ %lpad.loopexit.split-lp247, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ac = load i32, ptr %i.z, align 4, !noalias !1892, !noundef !29
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.z, align 4, !noalias !1892
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %.body

bb.n:                                             ; preds = %.body.i.i.i.i
end_hunk_0
