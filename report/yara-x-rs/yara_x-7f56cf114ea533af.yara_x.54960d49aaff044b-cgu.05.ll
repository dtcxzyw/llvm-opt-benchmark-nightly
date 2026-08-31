Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.05?download=true
inline.NumInlined: 3898
inline.NumDeleted: 2041
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB4_2PE5parse:bb.a
_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i178: ; preds = %bb.hg, %bb.hf
  %.sroa.0.08.i.i.i.i.i179 = phi i16 [ %i.aez, %bb.hg ], [ 0, %bb.hf ] ; 2 uses
  %i.aen = phi i64 [ %.pr.i.i.i.i.i183, %bb.hg ], [ 2, %bb.hf ]
  %i.aeo = add i64 %i.aen, -1
  store i64 %i.aeo, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i171, align 8, !alias.scope !10087, !noalias !10092
  %i.aep = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.noexc53.i unwind label %.loopexit.i, !noalias !9924 ; 2 uses

.noexc53.i:                                       ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i178
  %i.aeq = extractvalue { i1, i8 } %i.aep, 0
  br i1 %i.aeq, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %.noexc53.i
  %i.aer = extractvalue { i1, i8 } %i.aep, 1
  %i.aes = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i172, align 8, !alias.scope !10094, !noalias !10092, !noundef !17 ; 2 uses
  %i.aet = add i64 %i.aes, 1
  store i64 %i.aet, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i172, align 8, !alias.scope !10094, !noalias !10092
  %i.aeu = zext i8 %i.aer to i16
  %i.aev = trunc i64 %i.aes to i16
  %i.aew = shl i16 %i.aev, 3
  %i.aex = and i16 %i.aew, 8
  %i.aey = shl nuw i16 %i.aeu, %i.aex
  %i.aez = add i16 %i.aey, %.sroa.0.08.i.i.i.i.i179 ; 2 uses
  %.pr.i.i.i.i.i183 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i.i171, align 8, !alias.scope !10087, !noalias !10092 ; 2 uses
  %i.afa = icmp eq i64 %.pr.i.i.i.i.i183, 0
  br i1 %i.afa, label %bb.hh, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i178

bb.hh:                                            ; preds = %bb.hg, %.noexc53.i
  %.sroa.0.0.lcssa.i.i.i.i.i180 = phi i16 [ %i.aez, %bb.hg ], [ %.sroa.0.08.i.i.i.i.i179, %.noexc53.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10072
  %i.afb = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i64 noundef 2)
          to label %bb.hj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9924 ; 2 uses

bb.hi:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10072
  br label %bb.il

bb.hj:                                            ; preds = %bb.hh
  %i.afc = extractvalue { ptr, i64 } %i.afb, 0    ; 5 uses
  %i.afd = extractvalue { ptr, i64 } %i.afb, 1    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10072
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.afc) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10095
  store ptr %i.afc, ptr %i.d, align 8, !noalias !10105
  store i64 %i.afd, ptr %i.zp, align 8, !noalias !10105
  %i.afe = icmp samesign ult i64 %i.afd, 2
  br i1 %i.afe, label %bb.hn, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.afd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10095
  store ptr %i.afc, ptr %i.c, align 8, !noalias !10095
  store ptr %i.aff, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i199, align 8, !noalias !10095
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i201, align 8, !noalias !10095
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i202

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i202: ; preds = %bb.hl, %bb.hk
  %.sroa.0.08.i.i.i.i203 = phi i16 [ %i.afs, %bb.hl ], [ 0, %bb.hk ] ; 2 uses
  %i.afg = phi i64 [ %.pr.i.i.i.i207, %bb.hl ], [ 2, %bb.hk ]
  %i.afh = add i64 %i.afg, -1
  store i64 %i.afh, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i200, align 8, !alias.scope !10110, !noalias !10115
  %i.afi = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit ; 2 uses

.noexc211:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i202
  %i.afj = extractvalue { i1, i8 } %i.afi, 0
  br i1 %i.afj, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %.noexc211
  %i.afk = extractvalue { i1, i8 } %i.afi, 1
  %i.afl = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i201, align 8, !alias.scope !10117, !noalias !10115, !noundef !17 ; 2 uses
  %i.afm = add i64 %i.afl, 1
  store i64 %i.afm, ptr %.sroa.2.0..sroa_idx.i.i.i.i201, align 8, !alias.scope !10117, !noalias !10115
  %i.afn = zext i8 %i.afk to i16
  %i.afo = trunc i64 %i.afl to i16
  %i.afp = shl i16 %i.afo, 3
  %i.afq = and i16 %i.afp, 8
  %i.afr = shl nuw i16 %i.afn, %i.afq
  %i.afs = add i16 %i.afr, %.sroa.0.08.i.i.i.i203 ; 2 uses
  %.pr.i.i.i.i207 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i200, align 8, !alias.scope !10110, !noalias !10115 ; 2 uses
  %i.aft = icmp eq i64 %.pr.i.i.i.i207, 0
  br i1 %i.aft, label %bb.hm, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i202

bb.hm:                                            ; preds = %bb.hl, %.noexc211
  %.sroa.0.0.lcssa.i.i.i.i204 = phi i16 [ %i.afs, %bb.hl ], [ %.sroa.0.08.i.i.i.i203, %.noexc211 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10095
  %i.afu = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef 2)
          to label %bb.ho unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.hn:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10095
  br label %bb.il

bb.ho:                                            ; preds = %bb.hm
  %i.afv = extractvalue { ptr, i64 } %i.afu, 0    ; 5 uses
  %i.afw = extractvalue { ptr, i64 } %i.afu, 1    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10095
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.afv) ], !noalias !9924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10118
  store ptr %i.afv, ptr %i.f, align 8, !noalias !10128
  store i64 %i.afw, ptr %i.zq, align 8, !noalias !10128
  %i.afx = icmp samesign ult i64 %i.afw, 4
  br i1 %i.afx, label %bb.hs, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afv, i64 %i.afw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10118
  store ptr %i.afv, ptr %i.e, align 8, !noalias !10118
  store ptr %i.afy, ptr %.sroa.02.sroa.2.0..sroa_idx.i.i.i.i191, align 8, !noalias !10118
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i193, align 8, !noalias !10118
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i194

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i194: ; preds = %bb.hq, %bb.hp
  %.sroa.0.08.i.i.i.i195 = phi i32 [ %i.agl, %bb.hq ], [ 0, %bb.hp ] ; 2 uses
  %i.afz = phi i64 [ %.pr.i.i.i.i197, %bb.hq ], [ 4, %bb.hp ]
  %i.aga = add i64 %i.afz, -1
  store i64 %i.aga, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i192, align 8, !alias.scope !10133, !noalias !10138
  %i.agb = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i194
  %i.agc = extractvalue { i1, i8 } %i.agb, 0
  br i1 %i.agc, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %.noexc
  %i.agd = extractvalue { i1, i8 } %i.agb, 1
  %i.age = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i193, align 8, !alias.scope !10140, !noalias !10138, !noundef !17 ; 2 uses
  %i.agf = add i64 %i.age, 1
  store i64 %i.agf, ptr %.sroa.2.0..sroa_idx.i.i.i.i193, align 8, !alias.scope !10140, !noalias !10138
  %i.agg = zext i8 %i.agd to i32
  %i.agh = trunc i64 %i.age to i32
  %i.agi = shl i32 %i.agh, 3
  %i.agj = and i32 %i.agi, 24
  %i.agk = shl nuw i32 %i.agg, %i.agj
  %i.agl = add i32 %i.agk, %.sroa.0.08.i.i.i.i195 ; 2 uses
  %.pr.i.i.i.i197 = load i64, ptr %.sroa.02.sroa.3.0..sroa_idx.i.i.i.i192, align 8, !alias.scope !10133, !noalias !10138 ; 2 uses
  %i.agm = icmp eq i64 %.pr.i.i.i.i197, 0
  br i1 %i.agm, label %bb.hr, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i194

bb.hr:                                            ; preds = %bb.hq, %.noexc
  %.sroa.0.0.lcssa.i.i.i.i196 = phi i32 [ %i.agl, %bb.hq ], [ %.sroa.0.08.i.i.i.i195, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10118
  %i.agn = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, i64 noundef 4)
          to label %bb.ht unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.hs:                                            ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10118
  br label %bb.il

bb.ht:                                            ; preds = %bb.hr
  %i.ago = extractvalue { ptr, i64 } %i.agn, 0    ; 2 uses
  %i.agp = extractvalue { ptr, i64 } %i.agn, 1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10118
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ago) ], !noalias !9924
  br i1 %i.yg, label %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10141
  invoke void @_RNvNtCs2AhGS15tZfv_4bstr4utf88validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i.i.i)
          to label %.noexc49.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9924

.noexc49.i:                                       ; preds = %bb.hu
  %i.agq = load i64, ptr %i.z, align 8, !range !102, !noalias !10141, !noundef !17
  %.not83.i.i.i = icmp eq i64 %i.agq, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10141
  br i1 %.not83.i.i.i, label %bb.hv, label %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i

bb.hv:                                            ; preds = %.noexc49.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10142
  store i32 47, ptr %i.m, align 4, !noalias !10142
  %i.agr = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 1)
          to label %.noexc50.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9924

.noexc50.i:                                       ; preds = %bb.hv
  %i.ags = add nsw i64 %.sroa.3.0.i.i.i.i.i.i, -1 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10142
  br i1 %i.agr, label %bb.hw, label %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i

bb.hw:                                            ; preds = %.noexc50.i
  switch i64 %i.ags, label %thread-pre-split.i.i.i.i [
    i64 0, label %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i
    i64 1, label %bb.hx
  ]

bb.hx:                                            ; preds = %bb.hw
  %i.agu = load i8, ptr %i.agt, align 1, !alias.scope !10145, !noalias !10148, !noundef !17 ; 2 uses
  switch i8 %i.agu, label %bb.hy [
    i8 43, label %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i
    i8 45, label %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.hw
  %.pr.i.i.i.i = load i8, ptr %i.agt, align 1, !alias.scope !10145, !noalias !10148
  br label %bb.hy

bb.hy:                                            ; preds = %thread-pre-split.i.i.i.i, %bb.hx
  %i.agv = phi i8 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.agu, %bb.hx ]
  %cond.i.i.i.i = icmp eq i8 %i.agv, 43           ; 2 uses
  %i.agw = sext i1 %cond.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i = add nsw i64 %i.ags, %i.agw ; 4 uses
  %.sroa.0.0.idx.i.i.i.i = zext i1 %cond.i.i.i.i to i64
  %.sroa.0.0.i131.i.i.i = getelementptr inbounds nuw i8, ptr %i.agt, i64 %.sroa.0.0.idx.i.i.i.i ; 2 uses
  %i.agx = icmp samesign ult i64 %.sroa.15.0.i.i.i.i, 9
  br i1 %i.agx, label %.preheader.i.i.i.i, label %.preheader60.i.i.i.i.preheader

.preheader.i.i.i.i:                               ; preds = %bb.hy
  %.not5668.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i, 0
  br i1 %.not5668.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i182.a

.preheader60.i.i.i.i:                             ; preds = %bb.hz
  %i.agy = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i2030, i64 1
  %i.agz = add nsw i64 %.sroa.15.1.i.i.i.i2029, -1 ; 2 uses
  %.not55.i.i.i.i = icmp eq i64 %i.agz, 0
  br i1 %.not55.i.i.i.i, label %.loopexit.i.i.i.i, label %.preheader60.i.i.i.i.preheader

.loopexit.i.i.i.i:                                ; preds = %.preheader60.i.i.i.i, %bb.ib, %.preheader.i.i.i.i
  %.sroa.045.1.i.i.i.i = phi i32 [ %i.ahs, %bb.ib ], [ 0, %.preheader.i.i.i.i ], [ %i.ahj, %.preheader60.i.i.i.i ]
  %i.aha = zext i32 %.sroa.045.1.i.i.i.i to i64
  %i.ahb = shl nuw i64 %i.aha, 32
  br label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i.i

.preheader60.i.i.i.i.preheader:                   ; preds = %bb.hy, %.preheader60.i.i.i.i
  %.sroa.0.1.i.i.i.i2030 = phi ptr [ %i.agy, %.preheader60.i.i.i.i ], [ %.sroa.0.0.i131.i.i.i, %bb.hy ] ; 3 uses
  %.sroa.15.1.i.i.i.i2029 = phi i64 [ %i.agz, %.preheader60.i.i.i.i ], [ %.sroa.15.0.i.i.i.i, %bb.hy ]
  %.sroa.045.0.i.i.i.i2028 = phi i32 [ %i.ahj, %.preheader60.i.i.i.i ], [ 0, %bb.hy ]
  %i.ahc = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i.i.i2028, i32 10) ; 2 uses
  %i.ahd = extractvalue { i32, i1 } %i.ahc, 1
  br i1 %i.ahd, label %bb.ia, label %bb.hz, !prof !87

bb.hz:                                            ; preds = %.preheader60.i.i.i.i.preheader
  %i.ahe = extractvalue { i32, i1 } %i.ahc, 0     ; 2 uses
  %i.ahf = load i8, ptr %.sroa.0.1.i.i.i.i2030, align 1, !alias.scope !10145, !noalias !10148, !noundef !17
  %i.ahg = zext i8 %i.ahf to i32
  %i.ahh = add nsw i32 %i.ahg, -48                ; 2 uses
  %i.ahi = icmp ugt i32 %i.ahh, 9
  %i.ahj = add i32 %i.ahh, %i.ahe                 ; 3 uses
  %i.ahk = icmp ult i32 %i.ahj, %i.ahe
  %or.cond.i.i.i = select i1 %i.ahi, i1 true, i1 %i.ahk, !prof !10149
  br i1 %or.cond.i.i.i, label %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i, label %.preheader60.i.i.i.i, !prof !10149

bb.ia:                                            ; preds = %.preheader60.i.i.i.i.preheader
  %i.ahl = load i8, ptr %.sroa.0.1.i.i.i.i2030, align 1, !alias.scope !10145, !noalias !10148, !noundef !17
  %i.ahm = add i8 %i.ahl, -48
  %i.ahn = icmp ult i8 %i.ahm, 10
  %spec.select.i.i.i.i = select i1 %i.ahn, i64 513, i64 257
  br label %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i.i

.lr.ph.i.i.i.i182.a:                              ; preds = %.preheader.i.i.i.i, %bb.ib
  %.sroa.0.271.i.i.i.i = phi ptr [ %5, %bb.ib ], [ %.sroa.0.0.i131.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.15.270.i.i.i.i = phi i64 [ %4, %bb.ib ], [ %.sroa.15.0.i.i.i.i, %.preheader.i.i.i.i ]
  %.sroa.045.269.i.i.i.i = phi i32 [ %i.ahs, %bb.ib ], [ 0, %.preheader.i.i.i.i ]
  %i.aho = load i8, ptr %.sroa.0.271.i.i.i.i, align 1, !alias.scope !10145, !noalias !10148, !noundef !17
  %i.ahp = zext i8 %i.aho to i32
  %i.ahq = add nsw i32 %i.ahp, -48                ; 2 uses
  %i.ahr = icmp ult i32 %i.ahq, 10
  br i1 %i.ahr, label %bb.ib, label %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i

bb.ib:                                            ; preds = %.lr.ph.i.i.i.i182.a
  %3 = mul i32 %.sroa.045.269.i.i.i.i, 10
  %4 = add nsw i64 %.sroa.15.270.i.i.i.i, -1      ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i.i.i.i, i64 1
  %i.ahs = add i32 %i.ahq, %3                     ; 2 uses
  %.not56.i.i.i.i = icmp eq i64 %4, 0
  br i1 %.not56.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i182.a

_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i.i: ; preds = %bb.ia, %.loopexit.i.i.i.i
  %.sroa.8.0.insert.insert.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.ia ], [ %i.ahb, %.loopexit.i.i.i.i ] ; 2 uses
  %i.aht = trunc i64 %.sroa.8.0.insert.insert.i.i.i.i to i1
  br i1 %i.aht, label %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i, label %bb.ic

bb.ic:                                            ; preds = %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i.i
  %.sroa.581.0.extract.shift.i.i.i = lshr i64 %.sroa.8.0.insert.insert.i.i.i.i, 32 ; 4 uses
  %i.ahu = icmp ult i64 %.sroa.3.0, %.sroa.581.0.extract.shift.i.i.i
  br i1 %i.ahu, label %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.ahv = sub nuw nsw i64 %.sroa.3.0, %.sroa.581.0.extract.shift.i.i.i ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 %.sroa.581.0.extract.shift.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10141
  store ptr %i.ahw, ptr %i.y, align 8, !noalias !10150
  store i64 %i.ahv, ptr %i.zj, align 8, !noalias !10150
  %i.ahx = icmp samesign eq i64 %.sroa.581.0.extract.shift.i.i.i, %.sroa.3.0
  br i1 %i.ahx, label %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB2S_2PE13parse_section0s1_0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B44_Es_0B2Y_.exit.i.i.i, label %.lr.ph.i132.i.i.i

.lr.ph.i132.i.i.i:                                ; preds = %bb.id, %bb.ie
  %.sroa.02.07.i.i.i.i = phi i64 [ %i.aib, %bb.ie ], [ 0, %bb.id ] ; 3 uses
  %i.ahy = phi ptr [ %i.aia, %bb.ie ], [ %i.ahw, %bb.id ] ; 2 uses
  %.val.i133.i.i.i = load i8, ptr %i.ahy, align 1, !noalias !10155, !noundef !17
  %i.ahz = icmp eq i8 %.val.i133.i.i.i, 0
  br i1 %i.ahz, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %.lr.ph.i132.i.i.i
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahy, i64 1 ; 2 uses
  %i.aib = add nuw i64 %.sroa.02.07.i.i.i.i, 1
  %i.aic = icmp eq ptr %i.aia, %i.zk
  br i1 %i.aic, label %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB2S_2PE13parse_section0s1_0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B44_Es_0B2Y_.exit.i.i.i, label %.lr.ph.i132.i.i.i

bb.if:                                            ; preds = %.lr.ph.i132.i.i.i
  %i.aid = icmp ult i64 %.sroa.02.07.i.i.i.i, %i.ahv
  call void @llvm.assume(i1 %i.aid), !noalias !10161
  br label %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB2S_2PE13parse_section0s1_0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B44_Es_0B2Y_.exit.i.i.i

_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB2S_2PE13parse_section0s1_0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B44_Es_0B2Y_.exit.i.i.i: ; preds = %bb.ie, %bb.if, %bb.id
  %.sroa.02.07.i.lcssa.sink.i.i.i = phi i64 [ %.sroa.02.07.i.i.i.i, %bb.if ], [ 0, %bb.id ], [ %i.ahv, %bb.ie ] ; 2 uses
  %i.aie = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y, i64 noundef %.sroa.02.07.i.lcssa.sink.i.i.i)
          to label %.noexc51.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9924 ; 0 uses

.noexc51.i:                                       ; preds = %_RNCINvXNtCsgkljs906P5b_3nom6traitsRShNtB5_5Input22split_at_position_modeINtNtB7_8internal7OutputMNtB1b_4EmitB1x_NtB1b_8CompleteENCINvXs0_NtB7_5bytesINtB2b_13SplitPositionNCNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtB2S_2PE13parse_section0s1_0INtNtB7_5error5ErrorBw_EEINtB1b_6ParserBw_E7processB18_E0B44_Es_0B2Y_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10141
  br label %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i

_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i: ; preds = %bb.hz, %.lr.ph.i.i.i.i182.a, %bb.ht, %.noexc49.i, %.noexc50.i, %bb.hw, %bb.hx, %bb.hx, %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i.i, %bb.ic, %.noexc51.i
  %.sroa.9.0.i.i.i = phi i64 [ undef, %bb.ht ], [ %.sroa.02.07.i.lcssa.sink.i.i.i, %.noexc51.i ], [ undef, %.noexc50.i ], [ undef, %bb.ic ], [ undef, %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i.i ], [ undef, %.lr.ph.i.i.i.i182.a ], [ undef, %.noexc49.i ], [ undef, %bb.hx ], [ undef, %bb.hx ], [ undef, %bb.hw ], [ undef, %bb.hz ]
  %.sroa.7.0.i.i.i = phi ptr [ null, %bb.ht ], [ %i.ahw, %.noexc51.i ], [ null, %.noexc50.i ], [ null, %bb.ic ], [ null, %_RNvMsB_NtCskKLDkoKarTP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i.i ], [ null, %.lr.ph.i.i.i.i182.a ], [ null, %.noexc49.i ], [ null, %bb.hx ], [ null, %bb.hx ], [ null, %bb.hw ], [ null, %bb.hz ]
  %i.aif = icmp eq i64 %i.agp, %.sroa.3.0488.i
  br i1 %i.aif, label %.critedge.i, label %bb.ig

bb.ig:                                            ; preds = %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i
  %i.aig = ptrtoint ptr %.sroa.0.0.i.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !9893
  store i64 %i.aig, ptr %i.zl, align 8, !noalias !10167
  store i64 %.sroa.3.0.i.i.i.i.i.i, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !10167
  store ptr %.sroa.7.0.i.i.i, ptr %.sroa.579.0..sroa_idx.i, align 8, !noalias !10167
  store i64 %.sroa.9.0.i.i.i, ptr %.sroa.680.0..sroa_idx.i, align 8, !noalias !10167
  store i32 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, ptr %.sroa.781.0..sroa_idx.i, align 8, !noalias !10167
  store i32 %.sroa.0.0.lcssa.i.i.i.i97.i.i.i, ptr %.sroa.882.0..sroa_idx.i, align 4, !noalias !10167
  store i32 %.sroa.0.0.lcssa.i.i.i.i110.i.i.i, ptr %.sroa.983.0..sroa_idx.i, align 8, !noalias !10167
  store i32 %.sroa.0.0.lcssa.i.i.i.i123.i.i.i, ptr %.sroa.1084.0..sroa_idx.i, align 4, !noalias !10167
  store i32 %.sroa.0.0.lcssa.i.i.i.i.i.i177, ptr %.sroa.1185.0..sroa_idx.i, align 8, !noalias !10167
  store i32 %.sroa.0.0.lcssa.i.i.i.i219, ptr %.sroa.1286.0..sroa_idx.i, align 4, !noalias !10167
  store i32 %.sroa.0.0.lcssa.i.i.i.i196, ptr %.sroa.1387.0..sroa_idx.i, align 8, !noalias !10167
  store i16 %.sroa.0.0.lcssa.i.i.i.i.i180, ptr %.sroa.1488.0..sroa_idx.i, align 4, !noalias !10167
  store i16 %.sroa.0.0.lcssa.i.i.i.i204, ptr %.sroa.1589.0..sroa_idx.i, align 2, !noalias !10167
  %i.aih = load i64, ptr %i.zm, align 8, !alias.scope !10168, !noalias !10173, !noundef !17 ; 3 uses
  %i.aii = load i64, ptr %i.ab, align 8, !range !498, !alias.scope !10168, !noalias !10173, !noundef !17
  %i.aij = icmp eq i64 %i.aih, %i.aii
  br i1 %i.aij, label %bb.ih, label %bb.ik

bb.ih:                                            ; preds = %bb.ig
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #30
          to label %bb.ik unwind label %bb.ii, !noalias !10177

bb.ii:                                            ; preds = %bb.ih
  %i.aik = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionEEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #28
          to label %common.resume unwind label %bb.ij, !noalias !10177

bb.ij:                                            ; preds = %bb.ii
  %i.ail = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !10177
  unreachable

bb.ik:                                            ; preds = %bb.ih, %bb.ig
  %i.aim = load ptr, ptr %i.zn, align 8, !alias.scope !10168, !noalias !10173, !nonnull !17, !noundef !17
  %i.ain = getelementptr inbounds nuw [64 x i8], ptr %i.aim, i64 %i.aih
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ain, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.zl, i64 64, i1 false), !noalias !10178
  %i.aio = add i64 %i.aih, 1
  store i64 %i.aio, ptr %i.zm, align 8, !alias.scope !10168, !noalias !10173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !9893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10162
  %exitcond.not.i = icmp eq i64 %i.zr, %..i
  br i1 %exitcond.not.i, label %.thread, label %bb.ga

bb.il:                                            ; preds = %bb.hs, %bb.hn, %bb.hi, %bb.hd, %bb.gy, %bb.gu, %bb.gq, %bb.gm, %bb.gi, %bb.gf
  %.sroa.41.0.ph.i.i.i = phi i64 [ %i.zu, %bb.gi ], [ %i.aat, %bb.gm ], [ %i.abm, %bb.gq ], [ %i.acf, %bb.gu ], [ %i.acy, %bb.gy ], [ %i.adr, %bb.hd ], [ %i.aek, %bb.hi ], [ %i.afd, %bb.hn ], [ %i.afw, %bb.hs ], [ %.sroa.3.0488.i, %bb.gf ]
  %.sroa.28.0.ph.in.i.i.i = phi ptr [ %i.zv, %bb.gi ], [ %i.aas, %bb.gm ], [ %i.abl, %bb.gq ], [ %i.ace, %bb.gu ], [ %i.acx, %bb.gy ], [ %i.adq, %bb.hd ], [ %i.aej, %bb.hi ], [ %i.afc, %bb.hn ], [ %i.afv, %bb.hs ], [ %.sroa.0.0489.i, %bb.gf ]
  %i.aip = icmp eq i64 %.sroa.023.0490.i, 0
  br i1 %i.aip, label %bb.im, label %.thread

bb.im:                                            ; preds = %bb.il
  %i.aiq = ptrtoint ptr %.sroa.28.0.ph.in.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10179
  store i64 %i.aiq, ptr %i.ac, align 8, !noalias !10184
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.sroa.41.0.ph.i.i.i, ptr %.sroa.494.0..sroa_idx.i, align 8, !noalias !10184
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr inttoptr (i64 24 to ptr), ptr %.sroa.595.0..sroa_idx.i, align 8, !noalias !10184
  invoke void @_RNvXs_NtCsgkljs906P5b_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0489.i, i64 noundef %.sroa.3.0488.i, i8 noundef 42, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ac)
          to label %.thread140.i unwind label %bb.in, !noalias !9924

bb.in:                                            ; preds = %bb.im
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %.thread110.i

.thread140.i:                                     ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9893
  br label %.critedge.i

.critedge.i:                                      ; preds = %_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBH_2PE13parse_section0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2r_NtB6_9StreamingEEBN_.exit.i, %.thread140.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvXs3_NtCsgkljs906P5b_3nom5multiINtB6_6ManyMNNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBR_2PE13parse_section0EINtNtB8_8internal6ParserRShE7processINtB22_7OutputMNtB22_4EmitB2O_NtB22_9StreamingEEBX_.exit.thread538 unwind label %bb.io, !noalias !9924

bb.io:                                            ; preds = %.critedge.i
  %i.ais = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.ip, !noalias !9924

bb.ip:                                            ; preds = %bb.io
  %i.ait = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !9924
  unreachable

_RINvXs3_NtCsgkljs906P5b_3nom5multiINtB6_6ManyMNNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBR_2PE13parse_section0EINtNtB8_8internal6ParserRShE7processINtB22_7OutputMNtB22_4EmitB2O_NtB22_9StreamingEEBX_.exit.thread538: ; preds = %.critedge.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae), !noalias !9924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9893
  br label %.sink.split

.thread110.i:                                     ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit, %bb.in, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn109.i = phi { ptr, i32 } [ %i.air, %bb.in ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit143.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit146.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit148.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit151.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit153.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit156.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp159.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit ], [ %lpad.loopexit559, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit ], [ %lpad.loopexit562, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser7SectionEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #28
          to label %common.resume unwind label %bb.iq, !noalias !9924

bb.iq:                                            ; preds = %.thread110.i
  %i.aiu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !9924
  unreachable

.thread:                                          ; preds = %bb.ik, %bb.il
  %.sroa.23.24.copyload = load i64, ptr %i.ae, align 8, !noalias !10185 ; 2 uses
  %.sroa.28337.24.copyload = load ptr, ptr %i.yy, align 8, !noalias !10185
  %.sroa.31342.24.copyload = load i64, ptr %i.yz, align 8, !noalias !10185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9893
  %.not127 = icmp eq i64 %.sroa.23.24.copyload, -1
  br i1 %.not127, label %.sink.split, label %bb.ir

.sink.split:                                      ; preds = %bb.fw, %_RINvXs3_NtCsgkljs906P5b_3nom5multiINtB6_6ManyMNNCNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parserNtBR_2PE13parse_section0EINtNtB8_8internal6ParserRShE7processINtB22_7OutputMNtB22_4EmitB2O_NtB22_9StreamingEEBX_.exit.thread538, %bb.fx, %.thread
  br label %bb.ir

bb.ir:                                            ; preds = %.thread, %.sink.split
  %.sroa.91259.0 = phi i64 [ 0, %.sink.split ], [ %.sroa.31342.24.copyload, %.thread ]
  %.sroa.7.01260 = phi ptr [ inttoptr (i64 8 to ptr), %.sink.split ], [ %.sroa.28337.24.copyload, %.thread ]
  %.sroa.01258.0 = phi i64 [ 0, %.sink.split ], [ %.sroa.23.24.copyload, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.dg, i64 144
  store ptr inttoptr (i64 1 to ptr), ptr %i.aiv, align 8, !alias.scope !10186
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.dg, i64 152
  store i64 0, ptr %i.aiw, align 8, !alias.scope !10186
  %i.aix = getelementptr inbounds nuw i8, ptr %i.dg, i64 160
  store ptr inttoptr (i64 1 to ptr), ptr %i.aix, align 8, !alias.scope !10186
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.dg, i64 168
  store i64 0, ptr %i.aiy, align 8, !alias.scope !10186
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.dg, i64 192 ; 2 uses
  store i64 -2, ptr %i.aiz, align 8, !alias.scope !10186
  %i.aja = getelementptr inbounds nuw i8, ptr %i.dg, i64 176
  store ptr inttoptr (i64 1 to ptr), ptr %i.aja, align 8, !alias.scope !10186
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.dg, i64 184
  store i64 0, ptr %i.ajb, align 8, !alias.scope !10186
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.dg, i64 272
  store i32 2, ptr %i.ajc, align 8, !alias.scope !10186
  store i64 0, ptr %i.dg, align 8, !alias.scope !10186
  %.sroa.4.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i187, align 8, !alias.scope !10186
  %.sroa.5.0..sroa_idx.i188 = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i188, align 8, !alias.scope !10186
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.dg, i64 280 ; 2 uses
  store i64 -2, ptr %i.ajd, align 8, !alias.scope !10186
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 320
  store i64 -2, ptr %.sroa.446.0..sroa_idx.i, align 8, !alias.scope !10186
  %i.aje = getelementptr inbounds nuw i8, ptr %i.dg, i64 344 ; 2 uses
  store i64 -2, ptr %i.aje, align 8, !alias.scope !10186
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.dg, i64 368 ; 2 uses
  store i64 -2, ptr %i.ajf, align 8, !alias.scope !10186
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.dg, i64 392 ; 2 uses
  store i64 0, ptr %i.ajg, align 8, !alias.scope !10186
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.dg, i64 416 ; 2 uses
  store i64 -2, ptr %i.ajh, align 8, !alias.scope !10186
  %i.aji = getelementptr inbounds nuw i8, ptr %i.dg, i64 440 ; 2 uses
  store i64 -2, ptr %i.aji, align 8, !alias.scope !10186
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.dg, i64 464 ; 2 uses
  store i64 -2, ptr %i.ajj, align 8, !alias.scope !10186
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.dg, i64 512
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i32 0, ptr %i.ajl, align 8, !alias.scope !10186
  %.sroa.513.0..sroa_idx.i189 = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.513.0..sroa_idx.i189, i8 0, i64 112, i1 false), !alias.scope !10186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajk, i8 0, i64 56, i1 false), !alias.scope !10186
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.aiz, i64 80, i1 false)
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.dg, i64 276
  %i.ajn = load i32, ptr %i.ajm, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ajd, i64 24, i1 false)
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.dg, i64 304
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.ajo, i64 40, i1 false)
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aje, i64 24, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ajf, i64 24, i1 false)
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ajg, i64 24, i1 false)
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ajh, i64 24, i1 false)
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aji, i64 24, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.22.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ajj, i64 48, i1 false)
  store i64 %.sroa.01258.0, ptr %0, align 8
  %.sroa.043.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.01260, ptr %.sroa.043.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.043.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.91259.0, ptr %.sroa.043.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.043.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.7.0, ptr %.sroa.043.sroa.5.0..sroa_idx, align 8
  %.sroa.043.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
end_hunk_0
