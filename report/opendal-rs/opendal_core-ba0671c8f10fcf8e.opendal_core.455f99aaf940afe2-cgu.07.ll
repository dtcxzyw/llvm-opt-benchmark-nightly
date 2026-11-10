Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.07?download=true
inline.NumInlined: 369
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXNvXNvNtNtCs5XgW7KoffLW_12opendal_core5types10capabilitys_1__NtB8_10CapabilityNtNtCskkYVyhWgx5W_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1k_7Visitor9visit_strNtNtCsdMEyVxnODSb_10serde_json5error5ErrorEBc_:bb.a

bb.fb:                                            ; preds = %bb.cx
  %i.abw = load i32, ptr %1, align 1
  %i.abx = icmp ne i32 %i.abw, 1953720684
  %i.aby = zext i1 %i.abx to i32
  %i.abz = icmp eq i32 %i.aby, 0
  br i1 %i.abz, label %bb.fc, label %bb.fy

bb.fc:                                            ; preds = %bb.fb
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 78, ptr %i.aca, align 1
  br label %bb.ga

bb.fd:                                            ; preds = %bb.cv
  %i.acb = load i64, ptr %1, align 1
  %i.acc = xor i64 %i.acb, 8388367032813578604
  %i.acd = getelementptr i8, ptr %1, i64 7
  %i.ace = load i64, ptr %i.acd, align 1
  %i.acf = xor i64 %i.ace, 8388356080511445108
  %i.acg = or i64 %i.acc, %i.acf
  %i.ach = icmp ne i64 %i.acg, 0
  %i.aci = zext i1 %i.ach to i32
  %i.acj = icmp eq i32 %i.aci, 0
  br i1 %i.acj, label %bb.fe, label %bb.fy

bb.fe:                                            ; preds = %bb.fd
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 79, ptr %i.ack, align 1
  br label %bb.ga

bb.ff:                                            ; preds = %bb.ed
  %i.acl = load i128, ptr %1, align 1
  %i.acm = xor i128 %i.acl, 126881285951023366265037618503300114796
  %i.acn = getelementptr i8, ptr %1, i64 5
  %i.aco = load i128, ptr %i.acn, align 1
  %i.acp = xor i128 %i.aco, 152058774373114470960244260716066138487
  %i.acq = or i128 %i.acm, %i.acp
  %i.acr = icmp ne i128 %i.acq, 0
  %i.acs = zext i1 %i.acr to i32
  %i.act = icmp eq i32 %i.acs, 0
  br i1 %i.act, label %bb.fg, label %bb.fy

bb.fg:                                            ; preds = %bb.ff
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 80, ptr %i.acu, align 1
  br label %bb.ga

bb.fh:                                            ; preds = %bb.dp
  %i.acv = load i128, ptr %1, align 1
  %i.acw = xor i128 %i.acv, 153455522274046265978256855085043902828
  %i.acx = getelementptr i8, ptr %1, i64 3
  %i.acy = load i128, ptr %i.acx, align 1
  %i.acz = xor i128 %i.acy, 134866857403253890215417075054014848884
  %i.ada = or i128 %i.acw, %i.acz
  %i.adb = icmp ne i128 %i.ada, 0
  %i.adc = zext i1 %i.adb to i32
  %i.add = icmp eq i32 %i.adc, 0
  br i1 %i.add, label %bb.fi, label %bb.fy

bb.fi:                                            ; preds = %bb.fh
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 81, ptr %i.ade, align 1
  br label %bb.ga

bb.fj:                                            ; preds = %bb.db
  %i.adf = load i128, ptr %1, align 1
  %i.adg = xor i128 %i.adf, 148091840242787855151887526902315051372
  %i.adh = getelementptr i8, ptr %1, i64 16
  %i.adi = load i16, ptr %i.adh, align 1
  %i.adj = zext i16 %i.adi to i128
  %i.adk = xor i128 %i.adj, 29550
  %i.adl = or i128 %i.adg, %i.adk
  %i.adm = icmp ne i128 %i.adl, 0
  %i.adn = zext i1 %i.adm to i32
  %i.ado = icmp eq i32 %i.adn, 0
  br i1 %i.ado, label %bb.fk, label %bb.fy

bb.fk:                                            ; preds = %bb.fj
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 82, ptr %i.adp, align 1
  br label %bb.ga

bb.fl:                                            ; preds = %bb.ar
  %i.adq = load i128, ptr %1, align 1
  %i.adr = xor i128 %i.adq, 134856391121257392653038267611206609260
  %i.ads = getelementptr i8, ptr %1, i64 16
  %i.adt = load i8, ptr %i.ads, align 1
  %i.adu = zext i8 %i.adt to i128
  %i.adv = xor i128 %i.adu, 100
  %i.adw = or i128 %i.adr, %i.adv
  %i.adx = icmp ne i128 %i.adw, 0
  %i.ady = zext i1 %i.adx to i32
  %i.adz = icmp eq i32 %i.ady, 0
  br i1 %i.adz, label %bb.fm, label %bb.fy

bb.fm:                                            ; preds = %bb.fl
  %i.aea = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 83, ptr %i.aea, align 1
  br label %bb.ga

bb.fn:                                            ; preds = %bb.er
  %i.aeb = load i32, ptr %1, align 1
  %i.aec = xor i32 %i.aeb, 1936028272
  %i.aed = getelementptr i8, ptr %1, i64 3
  %i.aee = load i32, ptr %i.aed, align 1
  %i.aef = xor i32 %i.aee, 1852270963
  %i.aeg = or i32 %i.aec, %i.aef
  %i.aeh = icmp ne i32 %i.aeg, 0
  %i.aei = zext i1 %i.aeh to i32
  %i.aej = icmp eq i32 %i.aei, 0
  br i1 %i.aej, label %bb.fo, label %bb.fy

bb.fo:                                            ; preds = %bb.fn
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 84, ptr %i.aek, align 1
  br label %bb.ga

bb.fp:                                            ; preds = %bb.a
  %i.ael = load i64, ptr %1, align 1
  %i.aem = xor i64 %i.ael, 6876547383646581360
  %i.aen = getelementptr i8, ptr %1, i64 8
  %i.aeo = load i32, ptr %i.aen, align 1
  %i.aep = zext i32 %i.aeo to i64
  %i.aeq = xor i64 %i.aep, 1684104562
  %i.aer = or i64 %i.aem, %i.aeq
  %i.aes = icmp ne i64 %i.aer, 0
  %i.aet = zext i1 %i.aes to i32
  %i.aeu = icmp eq i32 %i.aet, 0
  br i1 %i.aeu, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 85, ptr %i.aev, align 1
  br label %bb.ga

bb.fr:                                            ; preds = %bb.fp
  %i.aew = load i64, ptr %1, align 1
  %i.aex = xor i64 %i.aew, 6876547383646581360
  %i.aey = getelementptr i8, ptr %1, i64 8
  %i.aez = load i32, ptr %i.aey, align 1
  %i.afa = zext i32 %i.aez to i64
  %i.afb = xor i64 %i.afa, 1952543859
  %i.afc = or i64 %i.aex, %i.afb
  %i.afd = icmp ne i64 %i.afc, 0
  %i.afe = zext i1 %i.afd to i32
  %i.aff = icmp eq i32 %i.afe, 0
  br i1 %i.aff, label %bb.fs, label %bb.fy

bb.fs:                                            ; preds = %bb.fr
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 86, ptr %i.afg, align 1
  br label %bb.ga

bb.ft:                                            ; preds = %bb.a
  %i.afh = load i64, ptr %1, align 1
  %i.afi = xor i64 %i.afh, 6876547383646581360
  %i.afj = getelementptr i8, ptr %1, i64 5
  %i.afk = load i64, ptr %i.afj, align 1
  %i.afl = xor i64 %i.afk, 7310584035479088743
  %i.afm = or i64 %i.afi, %i.afl
  %i.afn = icmp ne i64 %i.afm, 0
  %i.afo = zext i1 %i.afn to i32
  %i.afp = icmp eq i32 %i.afo, 0
  br i1 %i.afp, label %bb.fu, label %bb.fy

bb.fu:                                            ; preds = %bb.ft
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 87, ptr %i.afq, align 1
  br label %bb.ga

bb.fv:                                            ; preds = %bb.dl
  %i.afr = load i64, ptr %1, align 1
  %i.afs = xor i64 %i.afr, 6876547383646581360
  %i.aft = getelementptr i8, ptr %1, i64 6
  %i.afu = load i64, ptr %i.aft, align 1
  %i.afv = xor i64 %i.afu, 7310579611361107822
  %i.afw = or i64 %i.afs, %i.afv
  %i.afx = icmp ne i64 %i.afw, 0
  %i.afy = zext i1 %i.afx to i32
  %i.afz = icmp eq i32 %i.afy, 0
  br i1 %i.afz, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 88, ptr %i.aga, align 1
  br label %bb.ga

bb.fx:                                            ; preds = %bb.ex
  %i.agb = load i32, ptr %1, align 1
  %i.agc = xor i32 %i.agb, 1918986355
  %i.agd = getelementptr i8, ptr %1, i64 4
  %i.age = load i16, ptr %i.agd, align 1
  %i.agf = zext i16 %i.age to i32
  %i.agg = xor i32 %i.agf, 25701
  %i.agh = or i32 %i.agc, %i.agg
  %i.agi = icmp ne i32 %i.agh, 0
  %i.agj = zext i1 %i.agi to i32
  %i.agk = icmp eq i32 %i.agj, 0
  br i1 %i.agk, label %bb.fz, label %bb.fy, !prof !5

bb.fy:                                            ; preds = %bb.a, %bb.dv, %bb.an, %bb.av, %bb.bb, %bb.bt, %bb.cf, %bb.dd, %bb.dh, %bb.dj, %bb.fv, %bb.ft, %bb.fn, %bb.fl, %bb.fj, %bb.fh, %bb.ff, %bb.fd, %bb.fb, %bb.ez, %bb.ev, %bb.et, %bb.ep, %bb.en, %bb.ej, %bb.eh, %bb.fr, %bb.fx
  %i.agl = tail call noundef nonnull align 8 ptr @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error13unknown_fieldCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @93, i64 noundef 90)
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.agl, ptr %i.agm, align 8
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 89, ptr %i.agn, align 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fw, %bb.fu, %bb.fs, %bb.fq, %bb.fo, %bb.fm, %bb.fk, %bb.fi, %bb.fg, %bb.fe, %bb.fc, %bb.fa, %bb.ey, %bb.ew, %bb.eu, %bb.es, %bb.eq, %bb.eo, %bb.em, %bb.ek, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dc, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.sink = phi i8 [ 0, %bb.fz ], [ 1, %bb.fy ], [ 0, %bb.fw ], [ 0, %bb.fu ], [ 0, %bb.fs ], [ 0, %bb.fq ], [ 0, %bb.fo ], [ 0, %bb.fm ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fg ], [ 0, %bb.fe ], [ 0, %bb.fc ], [ 0, %bb.fa ], [ 0, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eu ], [ 0, %bb.es ], [ 0, %bb.eq ], [ 0, %bb.eo ], [ 0, %bb.em ], [ 0, %bb.ek ], [ 0, %bb.ei ], [ 0, %bb.eg ], [ 0, %bb.ee ], [ 0, %bb.ec ], [ 0, %bb.ea ], [ 0, %bb.dy ], [ 0, %bb.dw ], [ 0, %bb.du ], [ 0, %bb.ds ], [ 0, %bb.dq ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.dk ], [ 0, %bb.di ], [ 0, %bb.dg ], [ 0, %bb.de ], [ 0, %bb.dc ], [ 0, %bb.da ], [ 0, %bb.cy ], [ 0, %bb.cw ], [ 0, %bb.cu ], [ 0, %bb.cs ], [ 0, %bb.cq ], [ 0, %bb.co ], [ 0, %bb.cm ], [ 0, %bb.ck ], [ 0, %bb.ci ], [ 0, %bb.cg ], [ 0, %bb.ce ], [ 0, %bb.cc ], [ 0, %bb.ca ], [ 0, %bb.by ], [ 0, %bb.bw ], [ 0, %bb.bu ], [ 0, %bb.bs ], [ 0, %bb.bq ], [ 0, %bb.bo ], [ 0, %bb.bm ], [ 0, %bb.bk ], [ 0, %bb.bi ], [ 0, %bb.bg ], [ 0, %bb.be ], [ 0, %bb.bc ], [ 0, %bb.ba ], [ 0, %bb.ay ], [ 0, %bb.aw ], [ 0, %bb.au ], [ 0, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %bb.ai ], [ 0, %bb.ag ], [ 0, %bb.ae ], [ 0, %bb.ac ], [ 0, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.w ], [ 0, %bb.u ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.c ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map4KeysNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtBc_6result6ResultNtNtB2X_8operator8OperatorNtNtB2Z_5error5ErrorEEENCINvXs8_NtCsfBDUjroi3FF_9hashbrown3setINtB5i_7HashSetB2b_NtNtNtB1s_4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB2b_E6extendBX_E0ENtNtB6K_8iterator8Iterator4folduNCINvNvB7t_8for_each4callTB2b_uENCINvXs1i_NtB5k_3mapINtB8F_7HashMapB2b_uB65_EIB6G_B8o_E6extendBN_E0E0EB31_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !362 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !363
  store ptr %1, ptr %i.a, align 8, !noalias !364
  call void @_RINvXsG_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_4IterNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1x_8operator8OperatorNtNtB1z_5error5ErrorEENtNtNtNtB2F_4iter6traits8iterator8Iterator4folduNCINvXsJ_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB4T_4KeysBL_B1m_EB3Y_4folduNCINvNtNtB44_8adapters3map8map_foldRBL_BL_uNvYBL_NtNtB2F_5clone5Clone5cloneNCIB6a_BL_TBL_uEuNCINvXs8_NtB8_3setINtB7K_7HashSetBL_NtNtNtB4Z_4hash6random11RandomStateEINtNtB42_7collect6ExtendBL_E6extendINtNtB6e_6cloned6ClonedB5D_EE0NCINvNvB3Y_8for_each4callB7u_NCINvXs1i_B6_INtB6_7HashMapBL_uB8b_EIB8M_B7u_E6extendINtB6c_3MapB9k_B7B_EE0E0E0E0E0EB1B_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !363
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTReNtNtCs6i54tJFfzR_5alloc6string6StringEENCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB2b_5ErrorNtNtBc_3fmt7Display3fmt0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3u_8for_each4callB1q_NCINvMsj_NtB1u_3vecINtB4K_3VecB1q_E14extend_trustedBN_E0E0EB2f_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !377 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTReNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_BT_uNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB36_5ErrorNtNtBb_3fmt7Display3fmt0NCINvNvB1w_8for_each4callBT_NCINvMsj_NtBX_3vecINtB4Z_3VecBT_E14extend_trustedINtB2m_3MapBF_B2Y_EE0E0E0EB3a_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 40
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !379
  store ptr %i.k, ptr %i.c, align 8, !noalias !379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !379
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.b, align 8, !noalias !379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !379
  store ptr %i.c, ptr %i.a, align 8, !noalias !379
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !379
  store ptr %i.b, ptr %i.j, align 8, !noalias !379
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs6i54tJFfzR_5alloc6string6StringNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !379
  invoke void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @102, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e, !noalias !380

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !379
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !381
  %i.n = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !378
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.i
  br i1 %i.p, label %_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTReNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_BT_uNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB36_5ErrorNtNtBb_3fmt7Display3fmt0NCINvNvB1w_8for_each4callBT_NCINvMsj_NtBX_3vecINtB4Z_3VecBT_E14extend_trustedINtB2m_3MapBF_B2Y_EE0E0E0EB3a_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !380
  resume { ptr, i32 } %i.q

_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTReNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_BT_uNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB36_5ErrorNtNtBb_3fmt7Display3fmt0NCINvNvB1w_8for_each4callBT_NCINvMsj_NtBX_3vecINtB4Z_3VecBT_E14extend_trustedINtB2m_3MapBF_B2Y_EE0E0E0EB3a_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !380
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtB14_6string6StringB1L_EENCINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB2j_11OperatorUri3newINtB12_3VecB1K_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1K_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1K_E0INtNtBc_6result6ResultB4x_zEEB2p_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 !guid !382 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringBX_EENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB1t_8adapters3map12map_try_foldBW_BW_B2r_INtNtB1v_6result6ResultB2r_zENCINvMNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uriNtB4s_11OperatorUri3newINtB8_3VecBW_EE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B3T_EB4y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB7_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB15_EINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorTB15_B15_EE9from_iterINtB7_8IntoIterB15_B15_EECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !383 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCs9k3SxhrAWiO_3std6thread5localINtB6_8LocalKeyINtNtCsgxBkk5gSRhY_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @134)
          to label %_RNvXs3_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_11RandomStateNtNtCsgxBkk5gSRhY_4core7default7Default7default.exit unwind label %bb.e ; 2 uses

_RNvXs3_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_11RandomStateNtNtCsgxBkk5gSRhY_4core7default7Default7default.exit: ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @95, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  invoke void @_RINvXs1i_NtCsfBDUjroi3FF_9hashbrown3mapINtB7_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBP_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect6ExtendTBP_BP_EE6extendINtNtNtNtB1z_11collections4hash3map8IntoIterBP_BP_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RNvXs3_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_11RandomStateNtNtCsgxBkk5gSRhY_4core7default7Default7default.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBP_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map8IntoIterNtNtCs6i54tJFfzR_5alloc6string6StringB1x_EECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.c:                                             ; preds = %_RNvXs3_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_11RandomStateNtNtCsgxBkk5gSRhY_4core7default7Default7default.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map8IntoIterNtNtCs6i54tJFfzR_5alloc6string6StringB1x_EECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.e, %bb.b
  %.pn6 = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn6

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6i54tJFfzR_5alloc6string6StringBT_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map8IntoIterNtNtCs6i54tJFfzR_5alloc6string6StringB1x_EECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB7_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB15_EINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorTB15_B15_EE9from_iterINtNtNtB1S_8adapters10filter_map9FilterMapINtNtNtCs76KlaVGnJsc_4http6header3map4IterNtNtB3R_5value11HeaderValueENCNvNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util6header22parse_prefixed_headers0EEB54_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !384 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCs9k3SxhrAWiO_3std6thread5localINtB6_8LocalKeyINtNtCsgxBkk5gSRhY_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @134) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @95, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  invoke void @_RINvXs1i_NtCsfBDUjroi3FF_9hashbrown3mapINtB7_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBP_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect6ExtendTBP_BP_EE6extendINtNtNtB2o_8adapters10filter_map9FilterMapINtNtNtCs76KlaVGnJsc_4http6header3map4IterNtNtB4b_5value11HeaderValueENCNvNtNtNtCs5XgW7KoffLW_12opendal_core3raw9http_util6header22parse_prefixed_headers0EEB5o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBP_EENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1w_EECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RINvXs4_NtNtCsdMEyVxnODSb_10serde_json5value3serNtB6_12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap13serialize_keyeECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 4, 39) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !396 {
bb.a:
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!155 = distinct !{!155, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!156 = distinct !{!156, !155, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!157 = distinct !{!157, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!158 = distinct !{!158, !157, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!159 = distinct !{!159, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!160 = distinct !{!160, !159, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!161 = distinct !{!161, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!162 = distinct !{!162, !161, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!163 = distinct !{!163, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!164 = distinct !{!164, !163, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!165 = distinct !{!165, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!166 = distinct !{!166, !165, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!167 = distinct !{!167, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!168 = distinct !{!168, !167, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!169 = !{i64 -6373979255612070465}
!170 = !{!154}
!171 = !{!156}
!172 = !{!158}
!173 = !{!160}
!174 = !{!162}
!175 = !{!164}
!176 = !{!166}
!177 = !{!168}
!178 = distinct !{!178, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!179 = distinct !{!179, !178, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!180 = distinct !{!180, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!181 = distinct !{!181, !180, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!182 = distinct !{!182, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!183 = distinct !{!183, !182, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!184 = distinct !{!184, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!185 = distinct !{!185, !184, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!186 = distinct !{!186, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!187 = distinct !{!187, !186, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!188 = distinct !{!188, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!189 = distinct !{!189, !188, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!190 = distinct !{!190, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!191 = distinct !{!191, !190, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!192 = distinct !{!192, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!193 = distinct !{!193, !192, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!194 = !{i64 -76923188323768146}
!195 = !{!179}
!196 = !{!181}
!197 = !{!183}
!198 = !{!185}
!199 = !{!187}
!200 = !{!189}
!201 = !{!191}
!202 = !{!193}
!203 = distinct !{!203, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!204 = distinct !{!204, !203, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!205 = distinct !{!205, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!206 = distinct !{!206, !205, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!207 = distinct !{!207, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!208 = distinct !{!208, !207, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!209 = distinct !{!209, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!210 = distinct !{!210, !209, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!211 = distinct !{!211, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1S_EEECs5XgW7KoffLW_12opendal_core"}
!212 = distinct !{!212, !211, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1S_EEECs5XgW7KoffLW_12opendal_core: argument 0"}
!213 = distinct !{!213, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1S_EEECs5XgW7KoffLW_12opendal_core"}
!214 = distinct !{!214, !213, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1S_EEECs5XgW7KoffLW_12opendal_core: argument 0"}
!215 = distinct !{!215, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!216 = distinct !{!216, !215, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!217 = distinct !{!217, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!218 = distinct !{!218, !217, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!219 = distinct !{!219, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!220 = distinct !{!220, !219, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!221 = distinct !{!221, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!222 = distinct !{!222, !221, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!223 = distinct !{!223, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB13_"}
!224 = distinct !{!224, !223, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB13_: argument 0"}
!225 = distinct !{!225, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_"}
!226 = distinct !{!226, !225, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_: argument 0"}
!227 = distinct !{!227, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!228 = distinct !{!228, !227, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
!229 = distinct !{!229, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core"}
!230 = distinct !{!230, !229, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!231 = distinct !{!231, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core"}
!232 = distinct !{!232, !231, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core: argument 0"}
!233 = distinct !{!233, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!234 = distinct !{!234, !233, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!235 = !{i64 -4473084031815374154}
!236 = !{!204}
!237 = !{!206}
!238 = !{!208}
!239 = !{!210}
!240 = !{!212}
!241 = !{!214}
!242 = !{!216}
!243 = !{!218}
!244 = !{!220}
!245 = !{!222}
!246 = !{!224}
!247 = !{!226}
!248 = !{!228}
!249 = !{!230}
!250 = !{!230, !228, !226, !224}
!251 = !{!234, !232, !230, !228, !226, !224}
!252 = distinct !{!252, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!253 = distinct !{!253, !252, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!254 = distinct !{!254, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!255 = distinct !{!255, !254, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!256 = distinct !{!256, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!257 = distinct !{!257, !256, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!258 = distinct !{!258, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!259 = distinct !{!259, !258, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!260 = distinct !{!260, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!261 = distinct !{!261, !260, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!262 = distinct !{!262, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB13_"}
!263 = distinct !{!263, !262, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB13_: argument 0"}
!264 = distinct !{!264, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_"}
!265 = distinct !{!265, !264, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_: argument 0"}
!266 = distinct !{!266, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!267 = distinct !{!267, !266, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
!268 = distinct !{!268, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core"}
!269 = distinct !{!269, !268, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!270 = distinct !{!270, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core"}
!271 = distinct !{!271, !270, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core: argument 0"}
!272 = distinct !{!272, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!273 = distinct !{!273, !272, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!274 = !{i64 510586838091409557}
!275 = !{!253}
!276 = !{!255}
!277 = !{!257}
!278 = !{!259}
!279 = !{!261}
!280 = !{!263}
!281 = !{!265}
!282 = !{!267}
!283 = !{!269}
!284 = !{!269, !267, !265, !263}
!285 = !{!273, !271, !269, !267, !265, !263}
!286 = distinct !{!286, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!287 = distinct !{!287, !286, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!288 = distinct !{!288, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!289 = distinct !{!289, !288, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!290 = distinct !{!290, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!291 = distinct !{!291, !290, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!292 = distinct !{!292, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!293 = distinct !{!293, !292, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!294 = distinct !{!294, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1S_EEECs5XgW7KoffLW_12opendal_core"}
!295 = distinct !{!295, !294, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1S_EEECs5XgW7KoffLW_12opendal_core: argument 0"}
!296 = distinct !{!296, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1S_EEECs5XgW7KoffLW_12opendal_core"}
!297 = distinct !{!297, !296, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringB1S_EEECs5XgW7KoffLW_12opendal_core: argument 0"}
!298 = distinct !{!298, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!299 = distinct !{!299, !298, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!300 = distinct !{!300, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!301 = distinct !{!301, !300, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!302 = distinct !{!302, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!303 = distinct !{!303, !302, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!304 = distinct !{!304, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!305 = distinct !{!305, !304, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!306 = distinct !{!306, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB13_"}
!307 = distinct !{!307, !306, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB13_: argument 0"}
!308 = distinct !{!308, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_"}
!309 = distinct !{!309, !308, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_: argument 0"}
!310 = distinct !{!310, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!311 = distinct !{!311, !310, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
!312 = distinct !{!312, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core"}
!313 = distinct !{!313, !312, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!314 = distinct !{!314, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core"}
!315 = distinct !{!315, !314, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core: argument 0"}
!316 = distinct !{!316, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!317 = distinct !{!317, !316, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!318 = !{i64 -5936471121263197805}
!319 = !{!287}
!320 = !{!289}
!321 = !{!291}
!322 = !{!293}
!323 = !{!295}
!324 = !{!297}
!325 = !{!299}
!326 = !{!301}
!327 = !{!303}
!328 = !{!305}
!329 = !{!307}
!330 = !{!309}
!331 = !{!311}
!332 = !{!313}
!333 = !{!313, !311, !309, !307}
!334 = !{!317, !315, !313, !311, !309, !307}
!335 = distinct !{!335, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!336 = distinct !{!336, !335, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!337 = !{i64 -37269980611895284}
!338 = !{!336}
!339 = distinct !{!339, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!340 = distinct !{!340, !339, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!341 = !{i64 -735301235240245004}
!342 = !{!340}
!343 = !{i64 -1671061308102385821}
!344 = !{i64 -8621933822263398929}
!345 = !{i64 -6082011907132565832}
!346 = !{i64 2743842860993859253}
!347 = distinct !{!347, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsdMEyVxnODSb_10serde_json5value3ser12SerializeMapECs5XgW7KoffLW_12opendal_core"}
!348 = distinct !{!348, !347, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCsdMEyVxnODSb_10serde_json5value3ser12SerializeMapECs5XgW7KoffLW_12opendal_core: argument 0"}
!349 = distinct !{!349, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!350 = distinct !{!350, !349, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!351 = !{i64 4492084415667712520}
!352 = !{!350, !348}
!353 = !{i64 -9076018676279840252}
!354 = !{i64 -9151769742465959002}
!355 = !{!"branch_weights", i32 0, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 1196638428, i32 398879476, i32 398879476, i32 398879476}
!356 = distinct !{!356, i1 true, !"_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map4KeysNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtBb_6result6ResultNtNtB2G_8operator8OperatorNtNtB2I_5error5ErrorEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1U_TB1U_uEuNCINvXs8_NtCsfBDUjroi3FF_9hashbrown3setINtB6e_7HashSetB1U_NtNtNtB1b_4hash6random11RandomStateEINtNtB4W_7collect6ExtendB1U_E6extendBP_E0NCINvNvB4S_8for_each4callB5X_NCINvXs1i_NtB6g_3mapINtB8T_7HashMapB1U_uB71_EIB7C_B5X_E6extendINtB5B_3MapBP_B65_EE0E0E0EB2K_"}
!357 = distinct !{!357, !356, !"_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map4KeysNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtBb_6result6ResultNtNtB2G_8operator8OperatorNtNtB2I_5error5ErrorEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1U_TB1U_uEuNCINvXs8_NtCsfBDUjroi3FF_9hashbrown3setINtB6e_7HashSetB1U_NtNtNtB1b_4hash6random11RandomStateEINtNtB4W_7collect6ExtendB1U_E6extendBP_E0NCINvNvB4S_8for_each4callB5X_NCINvXs1i_NtB6g_3mapINtB8T_7HashMapB1U_uB71_EIB7C_B5X_E6extendINtB5B_3MapBP_B65_EE0E0E0EB2K_: argument 1"}
!358 = distinct !{!358, !356, !"_RINvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map4KeysNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtBb_6result6ResultNtNtB2G_8operator8OperatorNtNtB2I_5error5ErrorEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1U_TB1U_uEuNCINvXs8_NtCsfBDUjroi3FF_9hashbrown3setINtB6e_7HashSetB1U_NtNtNtB1b_4hash6random11RandomStateEINtNtB4W_7collect6ExtendB1U_E6extendBP_E0NCINvNvB4S_8for_each4callB5X_NCINvXs1i_NtB6g_3mapINtB8T_7HashMapB1U_uB71_EIB7C_B5X_E6extendINtB5B_3MapBP_B65_EE0E0E0EB2K_: argument 0"}
!359 = distinct !{!359, i1 true, !"_RINvXsJ_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB6_4KeysNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1N_8operator8OperatorNtNtB1P_5error5ErrorEENtNtNtNtB2V_4iter6traits8iterator8Iterator4folduNCINvNtNtB4k_8adapters3map8map_foldRB11_B11_uNvYB11_NtNtB2V_5clone5Clone5cloneNCIB53_B11_TB11_uEuNCINvXs8_NtCsfBDUjroi3FF_9hashbrown3setINtB6I_7HashSetB11_NtNtNtBc_4hash6random11RandomStateEINtNtB4i_7collect6ExtendB11_E6extendINtNtB57_6cloned6ClonedBQ_EE0NCINvNvB4e_8for_each4callB6r_NCINvXs1i_NtB6K_3mapINtB9K_7HashMapB11_uB7v_EIB85_B6r_E6extendINtB55_3MapB8E_B6z_EE0E0E0E0EB1R_"}
!360 = distinct !{!360, !359, !"_RINvXsJ_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB6_4KeysNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1N_8operator8OperatorNtNtB1P_5error5ErrorEENtNtNtNtB2V_4iter6traits8iterator8Iterator4folduNCINvNtNtB4k_8adapters3map8map_foldRB11_B11_uNvYB11_NtNtB2V_5clone5Clone5cloneNCIB53_B11_TB11_uEuNCINvXs8_NtCsfBDUjroi3FF_9hashbrown3setINtB6I_7HashSetB11_NtNtNtBc_4hash6random11RandomStateEINtNtB4i_7collect6ExtendB11_E6extendINtNtB57_6cloned6ClonedBQ_EE0NCINvNvB4e_8for_each4callB6r_NCINvXs1i_NtB6K_3mapINtB9K_7HashMapB11_uB7v_EIB85_B6r_E6extendINtB55_3MapB8E_B6z_EE0E0E0E0EB1R_: argument 1"}
!361 = distinct !{!361, !359, !"_RINvXsJ_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB6_4KeysNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1N_8operator8OperatorNtNtB1P_5error5ErrorEENtNtNtNtB2V_4iter6traits8iterator8Iterator4folduNCINvNtNtB4k_8adapters3map8map_foldRB11_B11_uNvYB11_NtNtB2V_5clone5Clone5cloneNCIB53_B11_TB11_uEuNCINvXs8_NtCsfBDUjroi3FF_9hashbrown3setINtB6I_7HashSetB11_NtNtNtBc_4hash6random11RandomStateEINtNtB4i_7collect6ExtendB11_E6extendINtNtB57_6cloned6ClonedBQ_EE0NCINvNvB4e_8for_each4callB6r_NCINvXs1i_NtB6K_3mapINtB9K_7HashMapB11_uB7v_EIB85_B6r_E6extendINtB55_3MapB8E_B6z_EE0E0E0E0EB1R_: argument 0"}
!362 = !{i64 2145102816341023545}
!363 = !{!358, !357}
!364 = !{!361, !360, !358, !357}
!365 = distinct !{!365, i1 true, !"_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTReNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_BT_uNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB36_5ErrorNtNtBb_3fmt7Display3fmt0NCINvNvB1w_8for_each4callBT_NCINvMsj_NtBX_3vecINtB4Z_3VecBT_E14extend_trustedINtB2m_3MapBF_B2Y_EE0E0E0EB3a_"}
!366 = distinct !{!366, !365, !"_RINvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB7_4IterTReNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_BT_uNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB36_5ErrorNtNtBb_3fmt7Display3fmt0NCINvNvB1w_8for_each4callBT_NCINvMsj_NtBX_3vecINtB4Z_3VecBT_E14extend_trustedINtB2m_3MapBF_B2Y_EE0E0E0EB3a_: argument 0"}
!367 = distinct !{!367, i1 true, !"_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRTReNtNtCs6i54tJFfzR_5alloc6string6StringEBY_uNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB1M_5ErrorNtNtBa_3fmt7Display3fmt0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtB12_3vecINtB49_3VecBY_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0E0B1Q_"}
!368 = distinct !{!368, !367, !"_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRTReNtNtCs6i54tJFfzR_5alloc6string6StringEBY_uNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB1M_5ErrorNtNtBa_3fmt7Display3fmt0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtB12_3vecINtB49_3VecBY_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0E0B1Q_: argument 1"}
!369 = distinct !{!369, !367, !"_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRTReNtNtCs6i54tJFfzR_5alloc6string6StringEBY_uNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB1M_5ErrorNtNtBa_3fmt7Display3fmt0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsj_NtB12_3vecINtB49_3VecBY_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0E0B1Q_: argument 0"}
!370 = distinct !{!370, i1 true, !"_RNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB7_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt0Bb_"}
!371 = distinct !{!371, !370, !"_RNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB7_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt0Bb_: argument 1"}
!372 = distinct !{!372, !370, !"_RNCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB7_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt0Bb_: argument 0"}
!373 = distinct !{!373, i1 true, !"_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs6i54tJFfzR_5alloc6string6StringNCINvMsj_NtB1j_3vecINtB1Z_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTReB1f_EENCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB3N_5ErrorNtNtBe_3fmt7Display3fmt0EE0E0B3R_"}
!374 = distinct !{!374, !373, !"_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs6i54tJFfzR_5alloc6string6StringNCINvMsj_NtB1j_3vecINtB1Z_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTReB1f_EENCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB3N_5ErrorNtNtBe_3fmt7Display3fmt0EE0E0B3R_: argument 0"}
!375 = distinct !{!375, i1 true, !"_RNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterTReBH_EENCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB2O_5ErrorNtNtB1s_3fmt7Display3fmt0EE0B2S_"}
!376 = distinct !{!376, !375, !"_RNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterTReBH_EENCNvXs2_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB2O_5ErrorNtNtB1s_3fmt7Display3fmt0EE0B2S_: argument 0"}
!377 = !{i64 2355608987347983580}
!378 = !{!369, !368, !366}
!379 = !{!372, !371, !369, !368, !366}
!380 = !{!366}
!381 = !{!376, !374, !369, !366}
!382 = !{i64 -5974802100208157678}
!383 = !{i64 7328646167423317822}
!384 = !{i64 7211948255441994773}
!385 = distinct !{!385, i1 true, !"_RINvXNtNtCskkYVyhWgx5W_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCsdMEyVxnODSb_10serde_json5value3ser16MapKeySerializerECs5XgW7KoffLW_12opendal_core"}
!386 = distinct !{!386, !385, !"_RINvXNtNtCskkYVyhWgx5W_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCsdMEyVxnODSb_10serde_json5value3ser16MapKeySerializerECs5XgW7KoffLW_12opendal_core: argument 1"}
!387 = distinct !{!387, !385, !"_RINvXNtNtCskkYVyhWgx5W_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCsdMEyVxnODSb_10serde_json5value3ser16MapKeySerializerECs5XgW7KoffLW_12opendal_core: argument 0"}
!388 = distinct !{!388, i1 true, !"_RNvXs5_NtNtCsdMEyVxnODSb_10serde_json5value3serNtB5_16MapKeySerializerNtNtCskkYVyhWgx5W_10serde_core3ser10Serializer13serialize_str"}
!389 = distinct !{!389, !388, !"_RNvXs5_NtNtCsdMEyVxnODSb_10serde_json5value3serNtB5_16MapKeySerializerNtNtCskkYVyhWgx5W_10serde_core3ser10Serializer13serialize_str: argument 1"}
!390 = distinct !{!390, !388, !"_RNvXs5_NtNtCsdMEyVxnODSb_10serde_json5value3serNtB5_16MapKeySerializerNtNtCskkYVyhWgx5W_10serde_core3ser10Serializer13serialize_str: argument 0"}
!391 = distinct !{!391, i1 true, !"_RINvXs_NvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs5XgW7KoffLW_12opendal_core"}
!392 = distinct !{!392, !391, !"_RINvXs_NvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs5XgW7KoffLW_12opendal_core: argument 1"}
!393 = distinct !{!393, !391, !"_RINvXs_NvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs5XgW7KoffLW_12opendal_core: argument 0"}
!394 = distinct !{!394, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core"}
!395 = distinct !{!395, !394, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core: argument 0"}
!396 = !{i64 -1713934225986850117}
!397 = !{!393, !392, !390, !389, !387, !386}
!398 = !{!393, !390, !387}
!399 = !{!395}
!400 = distinct !{!400, i1 true, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value3ser12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core"}
!401 = distinct !{!401, !400, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value3ser12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core: argument 0"}
!402 = distinct !{!402, !400, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value3ser12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core: argument 2"}
!403 = distinct !{!403, i1 true, !"_RINvXs4_NtNtCsdMEyVxnODSb_10serde_json5value3serNtB6_12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_valueINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core"}
!404 = distinct !{!404, !403, !"_RINvXs4_NtNtCsdMEyVxnODSb_10serde_json5value3serNtB6_12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_valueINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core: argument 0"}
!405 = distinct !{!405, !400, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value3ser12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core: argument 1"}
!406 = distinct !{!406, !403, !"_RINvXs4_NtNtCsdMEyVxnODSb_10serde_json5value3serNtB6_12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_valueINtNtCsgxBkk5gSRhY_4core6option6OptionjEECs5XgW7KoffLW_12opendal_core: argument 1"}
!407 = distinct !{!407, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core"}
!408 = distinct !{!408, !407, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core: argument 0"}
!409 = !{i64 4453477819026733915}
!410 = !{!401}
!411 = !{!402}
!412 = !{!404}
!413 = !{!401, !405, !402}
!414 = !{!404, !401}
!415 = !{!404, !406, !401, !405, !402}
!416 = !{!406, !405, !402}
!417 = !{!404, !405}
!418 = !{!404, !406, !405, !402}
!419 = !{!405}
!420 = !{!408}
!421 = distinct !{!421, i1 true, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value3ser12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_entryebECs5XgW7KoffLW_12opendal_core"}
!422 = distinct !{!422, !421, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value3ser12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_entryebECs5XgW7KoffLW_12opendal_core: argument 0"}
!423 = distinct !{!423, !421, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value3ser12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_entryebECs5XgW7KoffLW_12opendal_core: argument 2"}
!424 = distinct !{!424, i1 true, !"_RINvXs4_NtNtCsdMEyVxnODSb_10serde_json5value3serNtB6_12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_valuebECs5XgW7KoffLW_12opendal_core"}
!425 = distinct !{!425, !424, !"_RINvXs4_NtNtCsdMEyVxnODSb_10serde_json5value3serNtB6_12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_valuebECs5XgW7KoffLW_12opendal_core: argument 0"}
!426 = distinct !{!426, !421, !"_RINvYNtNtNtCsdMEyVxnODSb_10serde_json5value3ser12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_entryebECs5XgW7KoffLW_12opendal_core: argument 1"}
!427 = distinct !{!427, !424, !"_RINvXs4_NtNtCsdMEyVxnODSb_10serde_json5value3serNtB6_12SerializeMapNtNtCskkYVyhWgx5W_10serde_core3ser12SerializeMap15serialize_valuebECs5XgW7KoffLW_12opendal_core: argument 1"}
!428 = distinct !{!428, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core"}
!429 = distinct !{!429, !428, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core: argument 0"}
!430 = !{i64 8423550747682576834}
!431 = !{!422}
!432 = !{!423}
!433 = !{!425}
!434 = !{!422, !426, !423}
!435 = !{!425, !422}
!436 = !{!425, !427, !422, !426, !423}
!437 = !{!427, !426, !423}
!438 = !{!425, !426}
!439 = !{!425, !427, !426, !423}
!440 = !{!426}
!441 = !{!429}
!442 = distinct !{!442, i1 true, !"_RINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map4KeysNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2x_8adapters3map8map_foldRBX_BX_uNvYBX_NtNtB2z_5clone5Clone5cloneNCINvNvB2r_8for_each4callBX_NCINvMsj_NtBc_3vecINtB5g_3VecBX_E14extend_trustedINtNtB3z_6cloned6ClonedB3_EE0E0E0EB1q_"}
!443 = distinct !{!443, !442, !"_RINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map4KeysNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2x_8adapters3map8map_foldRBX_BX_uNvYBX_NtNtB2z_5clone5Clone5cloneNCINvNvB2r_8for_each4callBX_NCINvMsj_NtBc_3vecINtB5g_3VecBX_E14extend_trustedINtNtB3z_6cloned6ClonedB3_EE0E0E0EB1q_: argument 1"}
!444 = distinct !{!444, !442, !"_RINvYINtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map4KeysNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2x_8adapters3map8map_foldRBX_BX_uNvYBX_NtNtB2z_5clone5Clone5cloneNCINvNvB2r_8for_each4callBX_NCINvMsj_NtBc_3vecINtB5g_3VecBX_E14extend_trustedINtNtB3z_6cloned6ClonedB3_EE0E0E0EB1q_: argument 0"}
!445 = distinct !{!445, i1 true, !"_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtCs6i54tJFfzR_5alloc6string6StringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3a_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtNtBZ_11collections5btree3map4KeysBV_NtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEE0E0E0B4Z_"}
!446 = distinct !{!446, !445, !"_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtCs6i54tJFfzR_5alloc6string6StringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3a_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtNtBZ_11collections5btree3map4KeysBV_NtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEE0E0E0B4Z_: argument 1"}
!447 = distinct !{!447, !445, !"_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map8map_foldRNtNtCs6i54tJFfzR_5alloc6string6StringBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtBZ_3vecINtB3a_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtNtBZ_11collections5btree3map4KeysBV_NtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEE0E0E0B4Z_: argument 0"}
!448 = distinct !{!448, i1 true, !"_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs6i54tJFfzR_5alloc6string6StringNCINvMsj_NtB1j_3vecINtB1Z_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtNtNtB1j_11collections5btree3map4KeysB1f_NtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEE0E0B43_"}
!449 = distinct !{!449, !448, !"_RNCINvNvNtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs6i54tJFfzR_5alloc6string6StringNCINvMsj_NtB1j_3vecINtB1Z_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtNtNtB1j_11collections5btree3map4KeysB1f_NtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEE0E0B43_: argument 0"}
!450 = distinct !{!450, i1 true, !"_RNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtNtBa_11collections5btree3map4KeysBH_NtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEE0B32_"}
!451 = distinct !{!451, !450, !"_RNCINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters6cloned6ClonedINtNtNtNtBa_11collections5btree3map4KeysBH_NtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEE0B32_: argument 0"}
!452 = !{i64 8270351899920345563}
!453 = !{!443}
!454 = !{!447, !446, !444, !443}
!455 = !{!451, !449, !447, !443}
!456 = !{i64 4651068976296203743}
!457 = distinct !{!457, i1 true, !"_RINvXs2_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB8_5ValueNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer18deserialize_optionINtNtBW_5impls13OptionVisitorjEECs5XgW7KoffLW_12opendal_core"}
!458 = distinct !{!458, !457, !"_RINvXs2_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB8_5ValueNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer18deserialize_optionINtNtBW_5impls13OptionVisitorjEECs5XgW7KoffLW_12opendal_core: argument 0"}
!459 = distinct !{!459, !457, !"_RINvXs2_NtNtCsdMEyVxnODSb_10serde_json5value2deNtB8_5ValueNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer18deserialize_optionINtNtBW_5impls13OptionVisitorjEECs5XgW7KoffLW_12opendal_core: argument 1"}
!460 = distinct !{!460, i1 true, !"_RINvXsd_NtNtCskkYVyhWgx5W_10serde_core2de5implsINtB6_13OptionVisitorjENtB8_7Visitor10visit_someNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core"}
!461 = distinct !{!461, !460, !"_RINvXsd_NtNtCskkYVyhWgx5W_10serde_core2de5implsINtB6_13OptionVisitorjENtB8_7Visitor10visit_someNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core: argument 0"}
!462 = distinct !{!462, i1 true, !"_RINvXsd_NtNtCskkYVyhWgx5W_10serde_core2de5implsINtB6_13OptionVisitorjENtB8_7Visitor10visit_noneNtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core"}
!463 = distinct !{!463, !462, !"_RINvXsd_NtNtCskkYVyhWgx5W_10serde_core2de5implsINtB6_13OptionVisitorjENtB8_7Visitor10visit_noneNtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core: argument 0"}
!464 = !{i64 -4473769706055097662}
!465 = !{!458}
!466 = !{!459}
!467 = !{!458, !459}
!468 = !{!461, !458}
!469 = !{!463, !458}
!470 = distinct !{!470, i1 true, !"_RNCINvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE11get_or_initNCNvB4_10try_insert0E0B11_"}
!471 = distinct !{!471, !470, !"_RNCINvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE11get_or_initNCNvB4_10try_insert0E0B11_: argument 1"}
!472 = distinct !{!472, i1 true, !"_RNCNvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB4_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10try_insert0B10_"}
!473 = distinct !{!473, !472, !"_RNCNvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB4_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10try_insert0B10_: argument 1"}
!474 = distinct !{!474, !470, !"_RNCINvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE11get_or_initNCNvB4_10try_insert0E0B11_: argument 0"}
!475 = distinct !{!475, !472, !"_RNCNvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB4_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10try_insert0B10_: argument 0"}
!476 = !{i64 -3100794387892612807}
!477 = !{!471}
!478 = !{!473}
!479 = !{!473, !471}
!480 = !{!475, !473, !474, !471}
!481 = distinct !{!481, i1 true, !"_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1P_"}
!482 = distinct !{!482, !481, !"_RNvYNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1P_: argument 0"}
!483 = distinct !{!483, i1 true, !"_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0B1M_"}
!484 = distinct !{!484, !483, !"_RNCINvMs0_NtNtCs9k3SxhrAWiO_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0B1M_: argument 0"}
!485 = distinct !{!485, i1 true, !"_RNCINvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE11get_or_initNCNvB4_10try_insert0E0B11_"}
!486 = distinct !{!486, !485, !"_RNCINvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE11get_or_initNCNvB4_10try_insert0E0B11_: argument 1"}
!487 = distinct !{!487, i1 true, !"_RNCNvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB4_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10try_insert0B10_"}
!488 = distinct !{!488, !487, !"_RNCNvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB4_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10try_insert0B10_: argument 1"}
!489 = distinct !{!489, !485, !"_RNCINvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE11get_or_initNCNvB4_10try_insert0E0B11_: argument 0"}
!490 = distinct !{!490, !487, !"_RNCNvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB4_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10try_insert0B10_: argument 0"}
!491 = !{i64 4811543739640510068}
!492 = !{!482}
!493 = !{!484}
!494 = !{!486}
!495 = !{!488}
!496 = !{!488, !486}
!497 = !{!484, !482}
!498 = !{!490, !488, !489, !486, !484, !482}
!499 = distinct !{!499, i1 true, !"_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present"}
!500 = distinct !{!500, !499, !"_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present: argument 0"}
!501 = distinct !{!501, i1 true, !"_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset"}
!502 = distinct !{!502, !501, !"_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset: argument 0"}
!503 = distinct !{!503, i1 true, !"_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset"}
!504 = distinct !{!504, !503, !"_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset: argument 0"}
!505 = distinct !{!505, i1 true, !"_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset"}
!506 = distinct !{!506, !505, !"_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset: argument 0"}
!507 = !{i64 1182895288264017053}
!508 = !{!500}
!509 = !{!502}
!510 = !{!504}
!511 = !{!506}
!512 = distinct !{!512, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_"}
!513 = distinct !{!513, !512, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_: argument 0"}
!514 = distinct !{!514, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!515 = distinct !{!515, !514, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
!516 = distinct !{!516, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core"}
!517 = distinct !{!517, !516, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!518 = distinct !{!518, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core"}
!519 = distinct !{!519, !518, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core: argument 0"}
!520 = distinct !{!520, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!521 = distinct !{!521, !520, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!522 = distinct !{!522, i1 true, !"_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtB2_11ReadContext12set_metadata"}
!523 = distinct !{!523, !522, !"_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4readNtB2_11ReadContext12set_metadata: argument 0"}
!524 = distinct !{!524, i1 true, !"_RNvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB2_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10try_insertBY_"}
!525 = distinct !{!525, !524, !"_RNvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB2_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10try_insertBY_: argument 1"}
!526 = distinct !{!526, !524, !"_RNvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB2_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE10try_insertBY_: argument 0"}
!527 = distinct !{!527, i1 true, !"_RINvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEBZ_"}
!528 = distinct !{!528, !527, !"_RINvMNtNtCs9k3SxhrAWiO_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEBZ_: argument 0"}
!529 = distinct !{!529, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB14_"}
!530 = distinct !{!530, !529, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEEB14_: argument 0"}
!531 = distinct !{!531, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_"}
!532 = distinct !{!532, !531, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_: argument 0"}
!533 = distinct !{!533, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!534 = distinct !{!534, !533, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
!535 = distinct !{!535, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core"}
!536 = distinct !{!536, !535, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc4sync3ArcShEEECs5XgW7KoffLW_12opendal_core: argument 0"}
!537 = distinct !{!537, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core"}
!538 = distinct !{!538, !537, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcShEECs5XgW7KoffLW_12opendal_core: argument 0"}
!539 = distinct !{!539, i1 true, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core"}
!540 = distinct !{!540, !539, !"_RNvXsE_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core: argument 0"}
!541 = !{i64 4485628220548006188}
!542 = !{!513}
!543 = !{!515}
!544 = !{!517}
!545 = !{!517, !515, !513}
!546 = !{!521, !519, !517, !515, !513}
!547 = !{!526, !525, !523}
!548 = !{!523}
!549 = !{!528, !526, !525, !523}
!550 = !{!525, !523}
!551 = !{!540, !538, !536, !534, !532, !530, !523}
!552 = distinct !{!552, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_"}
!553 = distinct !{!553, !552, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_: argument 0"}
!554 = distinct !{!554, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_"}
!555 = distinct !{!555, !554, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types7compact13CompactValuesEBH_: argument 0"}
end_hunk_1
