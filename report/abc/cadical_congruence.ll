Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_congruence?download=true
inline.NumInlined: 6068
inline.NumDeleted: 1716
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN7CaDiCaL7Closure28add_xor_matching_proof_chainEPNS_4GateEiRKSt6vectorINS_13LitClausePairESaIS4_EEiRS3_IlSaIlEESB_:bb.a

bb.bx:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit146
  store i32 %i.ee, ptr %i.no, align 4, !tbaa !130
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  store ptr %i.np, ptr %i.dz, align 8, !tbaa !311
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit154

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit146
  %i.nq = load ptr, ptr %i.f, align 8, !tbaa !129 ; 4 uses
  %i.nr = ptrtoint ptr %i.nn to i64
  %i.ns = ptrtoint ptr %i.nq to i64               ; 2 uses
  %i.nt = sub i64 %i.nr, %i.ns                    ; 5 uses
  %i.nu = icmp eq i64 %i.nt, 9223372036854775804
  br i1 %i.nu, label %bb.bz, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148

bb.bz:                                            ; preds = %bb.by
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148: ; preds = %bb.by
  %i.nv = ashr exact i64 %i.nt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i149 = call i64 @llvm.umax.i64(i64 %i.nv, i64 1)
  %i.nw = add nsw i64 %.sroa.speculated.i.i.i.i149, %i.nv ; 2 uses
  %i.nx = icmp ult i64 %i.nw, %i.nv
  %i.ny = call i64 @llvm.umin.i64(i64 %i.nw, i64 2305843009213693951)
  %i.nz = select i1 %i.nx, i64 2305843009213693951, i64 %i.ny ; 3 uses
  %.not.i.i.i.i150 = icmp ne i64 %i.nz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i150)
  %i.oa = shl nuw nsw i64 %i.nz, 2
  %i.ob = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oa) #23 ; 4 uses
  %i.oc = getelementptr inbounds i8, ptr %i.ob, i64 %i.nt ; 2 uses
  store i32 %i.ee, ptr %i.oc, align 4, !tbaa !130
  %i.od = icmp sgt i64 %i.nt, 0
  br i1 %i.od, label %bb.ca, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i151

bb.ca:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ob, ptr align 4 %i.nq, i64 %i.nt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i151

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i151: ; preds = %bb.ca, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i148
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %.not.i17.i.i.i152 = icmp eq ptr %i.nq, null
  br i1 %.not.i17.i.i.i152, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i153, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i151
  %i.of = load ptr, ptr %i.o, align 8, !tbaa !312
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = sub i64 %i.og, %i.ns
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.oh) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i153

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i153: ; preds = %bb.cb, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i151
  store ptr %i.ob, ptr %i.f, align 8, !tbaa !129
  store ptr %i.oe, ptr %i.dz, align 8, !tbaa !311
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.nz
  store ptr %i.oi, ptr %i.o, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit154

_ZNSt6vectorIiSaIiEE9push_backEOi.exit154:        ; preds = %bb.bx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i153
  %i.oj = call noundef i64 @_ZN7CaDiCaL7Closure31simplify_and_add_to_proof_chainERSt6vectorIiSaIiEEl(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0) ; 2 uses
  %i.ok = load ptr, ptr %i.dz, align 8, !tbaa !311 ; 3 uses
  %i.ol = load ptr, ptr %i.f, align 8, !tbaa !129 ; 2 uses
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = sub i64 %i.om, %i.on                    ; 2 uses
  %i.op = icmp ult i64 %i.oo, 5
  br i1 %i.op, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit154
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #22
  unreachable

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit154
  %i.oq = getelementptr i8, ptr %i.ol, i64 %i.oo
  %i.or = getelementptr i8, ptr %i.oq, i64 -8     ; 3 uses
  %.not.i.i155 = icmp eq ptr %i.ok, %i.or
  br i1 %.not.i.i155, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit156, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.or, ptr %i.dz, align 8, !tbaa !311
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit156

_ZNSt6vectorIiSaIiEE6resizeEm.exit156:            ; preds = %bb.cd, %bb.ce
  %i.os = phi ptr [ %i.or, %bb.ce ], [ %i.ok, %bb.cd ] ; 3 uses
  %i.ot = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 344
  %i.ov = load i8, ptr %i.ou, align 8, !tbaa !139, !range !269, !noundef !270
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.cf, label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE9push_backEOS1_.exit172

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit156
  %i.ox = load ptr, ptr %i.ea, align 8, !tbaa !273 ; 2 uses
  %i.oy = load ptr, ptr %i.eb, align 8, !tbaa !271
  %.not.i.i157 = icmp eq ptr %i.oy, %i.ox
  br i1 %.not.i.i157, label %_ZNSt6vectorIlSaIlEE5clearEv.exit158, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store ptr %i.ox, ptr %i.eb, align 8, !tbaa !271
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit158

_ZNSt6vectorIlSaIlEE5clearEv.exit158:             ; preds = %bb.cf, %bb.cg
  %i.oz = load ptr, ptr %i.f, align 8, !tbaa !129
  %i.pa = ptrtoint ptr %i.os to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = lshr exact i64 %i.pc, 2
  %i.pe = trunc i64 %i.pd to i32
  %i.pf = add i32 %i.pe, -1
  %i.pg = shl nuw i32 1, %i.pf
  %i.ph = xor i32 %i.pg, -1
  %i.pi = and i32 %.1, %i.ph                      ; 2 uses
  %.not.i.i159 = icmp eq ptr %.sroa.8.0502, %.sroa.14.0503
  br i1 %.not.i.i159, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit158
  store i32 %i.pi, ptr %.sroa.8.0502, align 8, !tbaa !130
  %.sroa.5223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.0502, i64 8
  store i64 %i.oj, ptr %.sroa.5223.0..sroa_idx, align 8, !tbaa !120
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.8.0502, i64 16
  br label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE9push_backEOS1_.exit172

bb.ci:                                            ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit158
  %i.pk = ptrtoint ptr %.sroa.14.0503 to i64
  %i.pl = ptrtoint ptr %.sroa.0252.0501 to i64
  %i.pm = sub i64 %i.pk, %i.pl                    ; 4 uses
  %i.pn = icmp eq i64 %i.pm, 9223372036854775792
  br i1 %i.pn, label %bb.cj, label %_ZNKSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i160

bb.cj:                                            ; preds = %bb.ci
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i160: ; preds = %bb.ci
  %i.po = ashr exact i64 %i.pm, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i161 = call i64 @llvm.umax.i64(i64 %i.po, i64 1)
  %i.pp = add nsw i64 %.sroa.speculated.i.i.i.i161, %i.po ; 2 uses
  %i.pq = icmp ult i64 %i.pp, %i.po
  %i.pr = call i64 @llvm.umin.i64(i64 %i.pp, i64 576460752303423487)
  %i.ps = select i1 %i.pq, i64 576460752303423487, i64 %i.pr ; 3 uses
  %.not.i.i.i.i162 = icmp ne i64 %i.ps, 0
  call void @llvm.assume(i1 %.not.i.i.i.i162)
  %i.pt = shl nuw nsw i64 %i.ps, 4
  %i.pu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pt) #23 ; 5 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.pm ; 2 uses
  store i32 %i.pi, ptr %i.pv, align 8, !tbaa !130
  %.sroa.5223.0..sroa_idx224 = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store i64 %i.oj, ptr %.sroa.5223.0..sroa_idx224, align 8, !tbaa !120
  %.not10.i.i.i.i.i.i163 = icmp eq ptr %.sroa.0252.0501, %.sroa.14.0503
  br i1 %.not10.i.i.i.i.i.i163, label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i168, label %.lr.ph.i.i.i.i.i.i164

.lr.ph.i.i.i.i.i.i164:                            ; preds = %_ZNKSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i160, %.lr.ph.i.i.i.i.i.i164
  %.012.i.i.i.i.i.i165 = phi ptr [ %i.px, %.lr.ph.i.i.i.i.i.i164 ], [ %i.pu, %_ZNKSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i160 ] ; 2 uses
  %.0911.i.i.i.i.i.i166 = phi ptr [ %i.pw, %.lr.ph.i.i.i.i.i.i164 ], [ %.sroa.0252.0501, %_ZNKSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i160 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i165, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i166, i64 16, i1 false), !tbaa.struct !439, !alias.scope !468
  %i.pw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i166, i64 16 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i165, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i167 = icmp eq ptr %i.pw, %.sroa.14.0503
  br i1 %.not.i.i.i.i.i.i167, label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i168, label %.lr.ph.i.i.i.i.i.i164, !llvm.loop !444

_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i168: ; preds = %.lr.ph.i.i.i.i.i.i164, %_ZNKSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i160
  %.0.lcssa.i.i.i.i.i.i169 = phi ptr [ %i.pu, %_ZNKSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i160 ], [ %i.px, %.lr.ph.i.i.i.i.i.i164 ]
  %i.py = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i169, i64 16
  %.not.i23.i.i.i170 = icmp eq ptr %.sroa.0252.0501, null
  br i1 %.not.i23.i.i.i170, label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i171, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i168
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.0501, i64 noundef %i.pm) #24
  br label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i171

_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i171: ; preds = %bb.ck, %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i168
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %i.ps
  %.pre531 = load ptr, ptr %i.dz, align 8, !tbaa !311
  br label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE9push_backEOS1_.exit172

_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE9push_backEOS1_.exit172: ; preds = %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i171, %bb.ch, %_ZNSt6vectorIiSaIiEE6resizeEm.exit156
  %i.qa = phi ptr [ %i.os, %_ZNSt6vectorIiSaIiEE6resizeEm.exit156 ], [ %.pre531, %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i171 ], [ %i.os, %bb.ch ] ; 3 uses
  %.sroa.0252.1 = phi ptr [ %.sroa.0252.0501, %_ZNSt6vectorIiSaIiEE6resizeEm.exit156 ], [ %i.pu, %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i171 ], [ %.sroa.0252.0501, %bb.ch ] ; 3 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0502, %_ZNSt6vectorIiSaIiEE6resizeEm.exit156 ], [ %i.py, %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i171 ], [ %i.pj, %bb.ch ] ; 2 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0503, %_ZNSt6vectorIiSaIiEE6resizeEm.exit156 ], [ %i.pz, %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i171 ], [ %.sroa.14.0503, %bb.ch ] ; 3 uses
  %i.qb = load ptr, ptr %i.f, align 8, !tbaa !129 ; 4 uses
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = sub i64 %i.qc, %i.qd
  %i.qf = ashr exact i64 %i.qe, 2
  %.not.i173 = icmp eq ptr %i.qa, %i.qb
  br i1 %.not.i173, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit, label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE9push_backEOS1_.exit172, %.lr.ph.i174
  %.0910.i = phi i64 [ %i.qk, %.lr.ph.i174 ], [ 0, %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE9push_backEOS1_.exit172 ] ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %.0910.i ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !130 ; 2 uses
  %i.qi = icmp slt i32 %i.qh, 0
  %i.qj = sub nsw i32 0, %i.qh
  store i32 %i.qj, ptr %i.qg, align 4, !tbaa !130
  %i.qk = add nuw i64 %.0910.i, 1                 ; 2 uses
  %i.ql = icmp ult i64 %i.qk, %i.qf
  %i.qm = select i1 %i.ql, i1 %i.qi, i1 false
  br i1 %i.qm, label %.lr.ph.i174, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit, !llvm.loop !472

_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit:     ; preds = %.lr.ph.i174, %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EE9push_backEOS1_.exit172
  %i.qn = add nuw nsw i64 %.047504, 1             ; 2 uses
  %.not48 = icmp eq i64 %i.qn, %i.gm
  br i1 %.not48, label %bb.ak, label %bb.al, !llvm.loop !473

bb.cl:                                            ; preds = %bb.ak
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ak
  %.sroa.0326.5 = phi ptr [ %.sroa.0260.1, %bb.cl ], [ %.sroa.0326.4, %bb.ak ] ; 4 uses
  %.sroa.11331.5 = phi ptr [ %.sroa.8263.1, %bb.cl ], [ %.sroa.11331.4, %bb.ak ] ; 2 uses
  %.sroa.23338.5 = phi ptr [ %.sroa.14266.1, %bb.cl ], [ %.sroa.23338.4, %bb.ak ] ; 2 uses
  %.sroa.0310.5 = phi ptr [ %.sroa.0252.1, %bb.cl ], [ %.sroa.0310.4, %bb.ak ] ; 4 uses
  %.sroa.11.5 = phi ptr [ %.sroa.8.1, %bb.cl ], [ %.sroa.11.4, %bb.ak ] ; 2 uses
  %.sroa.23.5 = phi ptr [ %.sroa.14.1, %bb.cl ], [ %.sroa.23.4, %bb.ak ] ; 2 uses
  %.sroa.0260.2 = phi ptr [ %.sroa.0326.4, %bb.cl ], [ %.sroa.0260.1, %bb.ak ] ; 3 uses
  %.sroa.14266.2 = phi ptr [ %.sroa.23338.4, %bb.cl ], [ %.sroa.14266.1, %bb.ak ]
  %.sroa.0252.2 = phi ptr [ %.sroa.0310.4, %bb.cl ], [ %.sroa.0252.1, %bb.ak ] ; 3 uses
  %.sroa.14.2 = phi ptr [ %.sroa.23.4, %bb.cl ], [ %.sroa.14.1, %bb.ak ]
  %.not.i.i.i175 = icmp eq ptr %.sroa.0252.2, null
  br i1 %.not.i.i.i175, label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.qo = ptrtoint ptr %.sroa.14.2 to i64
  %i.qp = ptrtoint ptr %.sroa.0252.2 to i64
  %i.qq = sub i64 %i.qo, %i.qp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0252.2, i64 noundef %i.qq) #24
  br label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit

_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit: ; preds = %bb.cm, %bb.cn
  %.not.i.i.i176 = icmp eq ptr %.sroa.0260.2, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit177, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit
  %i.qr = ptrtoint ptr %.sroa.14266.2 to i64
  %i.qs = ptrtoint ptr %.sroa.0260.2 to i64
  %i.qt = sub i64 %i.qr, %i.qs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0260.2, i64 noundef %i.qt) #24
  br label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit177

_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit177: ; preds = %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit, %bb.co
  %i.qu = load ptr, ptr %i.f, align 8, !tbaa !108 ; 2 uses
  %i.qv = load ptr, ptr %i.dz, align 8, !tbaa !108 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %bb.cp, label %bb.aj, !llvm.loop !474

bb.cp:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit177
  %i.qx = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 344
  %i.qz = load i8, ptr %i.qy, align 8, !tbaa !139, !range !269, !noundef !270
  %i.ra = trunc nuw i8 %i.qz to i1
  br i1 %i.ra, label %bb.cq, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit193

bb.cq:                                            ; preds = %bb.cp
  %i.rb = getelementptr inbounds i8, ptr %.sroa.11331.5, i64 -8 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !271 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !272
  %.not.i178 = icmp eq ptr %i.rd, %i.rf
  br i1 %.not.i178, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rg = load i64, ptr %i.rb, align 8, !tbaa !120
  store i64 %i.rg, ptr %i.rd, align 8, !tbaa !120
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store ptr %i.rh, ptr %i.rc, align 8, !tbaa !271
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit185

bb.cs:                                            ; preds = %bb.cq
  %i.ri = load ptr, ptr %5, align 8, !tbaa !273   ; 4 uses
  %i.rj = ptrtoint ptr %i.rd to i64
  %i.rk = ptrtoint ptr %i.ri to i64               ; 2 uses
  %i.rl = sub i64 %i.rj, %i.rk                    ; 5 uses
  %i.rm = icmp eq i64 %i.rl, 9223372036854775800
  br i1 %i.rm, label %bb.ct, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i179

bb.ct:                                            ; preds = %bb.cs
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i179: ; preds = %bb.cs
  %i.rn = ashr exact i64 %i.rl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i180 = call i64 @llvm.umax.i64(i64 %i.rn, i64 1)
  %i.ro = add nsw i64 %.sroa.speculated.i.i.i180, %i.rn ; 2 uses
  %i.rp = icmp ult i64 %i.ro, %i.rn
  %i.rq = call i64 @llvm.umin.i64(i64 %i.ro, i64 1152921504606846975)
  %i.rr = select i1 %i.rp, i64 1152921504606846975, i64 %i.rq ; 3 uses
  %.not.i.i.i181 = icmp ne i64 %i.rr, 0
  call void @llvm.assume(i1 %.not.i.i.i181)
  %i.rs = shl nuw nsw i64 %i.rr, 3
  %i.rt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rs) #23 ; 4 uses
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 %i.rl ; 2 uses
  %i.rv = load i64, ptr %i.rb, align 8, !tbaa !120
  store i64 %i.rv, ptr %i.ru, align 8, !tbaa !120
  %i.rw = icmp sgt i64 %i.rl, 0
  br i1 %i.rw, label %bb.cu, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i182

bb.cu:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i179
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rt, ptr align 8 %i.ri, i64 %i.rl, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i182

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i182: ; preds = %bb.cu, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i179
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %.not.i17.i.i183 = icmp eq ptr %i.ri, null
  br i1 %.not.i17.i.i183, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i184, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i182
  %i.ry = load ptr, ptr %i.re, align 8, !tbaa !272
  %i.rz = ptrtoint ptr %i.ry to i64
  %i.sa = sub i64 %i.rz, %i.rk
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef %i.sa) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i184

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i184: ; preds = %bb.cv, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i182
  store ptr %i.rt, ptr %5, align 8, !tbaa !273
  store ptr %i.rx, ptr %i.rc, align 8, !tbaa !271
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.rr
  store ptr %i.sb, ptr %i.re, align 8, !tbaa !272
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit185

_ZNSt6vectorIlSaIlEE9push_backERKl.exit185:       ; preds = %bb.cr, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i184
  %i.sc = getelementptr inbounds i8, ptr %.sroa.11.5, i64 -8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !271 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !272
  %.not.i186 = icmp eq ptr %i.se, %i.sg
  br i1 %.not.i186, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit185
  %i.sh = load i64, ptr %i.sc, align 8, !tbaa !120
  store i64 %i.sh, ptr %i.se, align 8, !tbaa !120
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store ptr %i.si, ptr %i.sd, align 8, !tbaa !271
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit193

bb.cx:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit185
  %i.sj = load ptr, ptr %6, align 8, !tbaa !273   ; 4 uses
  %i.sk = ptrtoint ptr %i.se to i64
  %i.sl = ptrtoint ptr %i.sj to i64               ; 2 uses
  %i.sm = sub i64 %i.sk, %i.sl                    ; 5 uses
  %i.sn = icmp eq i64 %i.sm, 9223372036854775800
  br i1 %i.sn, label %bb.cy, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i187

bb.cy:                                            ; preds = %bb.cx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i187: ; preds = %bb.cx
  %i.so = ashr exact i64 %i.sm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i188 = call i64 @llvm.umax.i64(i64 %i.so, i64 1)
  %i.sp = add nsw i64 %.sroa.speculated.i.i.i188, %i.so ; 2 uses
  %i.sq = icmp ult i64 %i.sp, %i.so
  %i.sr = call i64 @llvm.umin.i64(i64 %i.sp, i64 1152921504606846975)
  %i.ss = select i1 %i.sq, i64 1152921504606846975, i64 %i.sr ; 3 uses
  %.not.i.i.i189 = icmp ne i64 %i.ss, 0
  call void @llvm.assume(i1 %.not.i.i.i189)
  %i.st = shl nuw nsw i64 %i.ss, 3
  %i.su = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.st) #23 ; 4 uses
  %i.sv = getelementptr inbounds i8, ptr %i.su, i64 %i.sm ; 2 uses
  %i.sw = load i64, ptr %i.sc, align 8, !tbaa !120
  store i64 %i.sw, ptr %i.sv, align 8, !tbaa !120
  %i.sx = icmp sgt i64 %i.sm, 0
  br i1 %i.sx, label %bb.cz, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i190

bb.cz:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i187
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.su, ptr align 8 %i.sj, i64 %i.sm, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i190

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i190: ; preds = %bb.cz, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i187
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %.not.i17.i.i191 = icmp eq ptr %i.sj, null
  br i1 %.not.i17.i.i191, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i192, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i190
  %i.sz = load ptr, ptr %i.sf, align 8, !tbaa !272
  %i.ta = ptrtoint ptr %i.sz to i64
  %i.tb = sub i64 %i.ta, %i.sl
  call void @_ZdlPvm(ptr noundef nonnull %i.sj, i64 noundef %i.tb) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i192

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i192: ; preds = %bb.da, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i190
  store ptr %i.su, ptr %6, align 8, !tbaa !273
  store ptr %i.sy, ptr %i.sd, align 8, !tbaa !271
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.ss
  store ptr %i.tc, ptr %i.sf, align 8, !tbaa !272
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit193

_ZNSt6vectorIlSaIlEE9push_backERKl.exit193:       ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i192, %bb.cw, %bb.cp
  %.not.i.i.i194 = icmp eq ptr %.sroa.0310.5, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit195, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit193
  %i.td = ptrtoint ptr %.sroa.23.5 to i64
  %i.te = ptrtoint ptr %.sroa.0310.5 to i64
  %i.tf = sub i64 %i.td, %i.te
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0310.5, i64 noundef %i.tf) #24
  br label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit195

_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit195: ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit193, %bb.db
  %.not.i.i.i196 = icmp eq ptr %.sroa.0326.5, null
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL7Closure13check_ternaryEiii:bb.a

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24
  tail call void @_ZN7CaDiCaL8External32check_solution_on_learned_clauseEv(ptr noundef nonnull align 8 dereferenceable(616) %i.ca) #21
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit

_ZN7CaDiCaL8External20check_learned_clauseEv.exit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24, %bb.s
  %i.cd = phi ptr [ %i.by, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit24 ], [ %.pre, %bb.s ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3488
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !321 ; 2 uses
  %.not8 = icmp eq ptr %i.cf, null
  br i1 %.not8, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 104 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !383
  %i.ci = add nsw i64 %i.ch, 1                    ; 3 uses
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !383
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN7CaDiCaL5Proof18add_derived_clauseElbRKSt6vectorIiSaIiEERKS1_IlSaIlEE(ptr noundef nonnull align 8 dereferenceable(120) %i.cf, i64 noundef %i.ci, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %4) #21
  %i.cj = load ptr, ptr %4, align 8, !tbaa !273   ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !272
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 3488
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !321
  call void @_ZN7CaDiCaL5Proof13delete_clauseElbRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(120) %i.cr, i64 noundef %i.ci, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %i.h) #21
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !129 ; 2 uses
  %i.ct = load ptr, ptr %i.i, align 8, !tbaa !311
  %.not.i.i = icmp eq ptr %i.ct, %i.cs
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.cs, ptr %i.i, align 8, !tbaa !311
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.w, %bb.v, %bb.b, %bb.a
  ret void
}

declare void @_ZN7CaDiCaL5Proof18add_derived_clauseElbRKSt6vectorIiSaIiEERKS1_IlSaIlEE(ptr noundef nonnull align 8 dereferenceable(120), i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure29add_xor_shrinking_proof_chainEPNS_4GateEi(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::vector.19", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !321
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.f = load i8, ptr %i.e, align 8, !tbaa !139, !range !269, !noundef !270
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %1, align 8, !tbaa !128
  call void @_ZN7CaDiCaL7Closure34simplify_and_sort_xor_lrat_clausesERKSt6vectorINS_13LitClausePairESaIS2_EERS4_iib(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.i, i32 noundef %2, i1 noundef zeroext false)
  %i.j = load i32, ptr %1, align 8, !tbaa !128
  %i.k = load ptr, ptr %3, align 8, !tbaa !365    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !365  ; 3 uses
  %.not13.i = icmp eq ptr %i.k, %i.m
  br i1 %.not13.i, label %_ZN7CaDiCaL7Closure22gate_sort_lrat_reasonsERSt6vectorINS_13LitClausePairESaIS2_EEiib.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.010.014.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @_ZN7CaDiCaL7Closure22gate_sort_lrat_reasonsERNS_13LitClausePairEiib(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.014.i, i32 noundef %2, i32 noundef %i.j, i1 noundef zeroext false)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i, label %_ZN7CaDiCaL7Closure22gate_sort_lrat_reasonsERSt6vectorINS_13LitClausePairESaIS2_EEiib.exit, label %.lr.ph.i

_ZN7CaDiCaL7Closure22gate_sort_lrat_reasonsERSt6vectorINS_13LitClausePairESaIS2_EEiib.exit: ; preds = %.lr.ph.i, %bb.c
  tail call void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPNS_13LitClausePairESt6vectorIS3_SaIS3_EEEENS_23smaller_pair_first_rankEEEvT_SA_T0_(ptr %i.k, ptr %i.m)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %bb.d

bb.d:                                             ; preds = %_ZN7CaDiCaL7Closure22gate_sort_lrat_reasonsERSt6vectorINS_13LitClausePairESaIS2_EEiib.exit, %bb.b
  %i.o = phi ptr [ %i.k, %_ZN7CaDiCaL7Closure22gate_sort_lrat_reasonsERSt6vectorINS_13LitClausePairESaIS2_EEiib.exit ], [ null, %bb.b ]
  %i.p = phi ptr [ %.pre, %_ZN7CaDiCaL7Closure22gate_sort_lrat_reasonsERSt6vectorINS_13LitClausePairESaIS2_EEiib.exit ], [ %i.b, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1112 ; 17 uses
  %i.r = load i32, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.s = sub nsw i32 0, %i.r                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1120 ; 19 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !311  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1128 ; 11 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !312  ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.s, ptr %i.u, align 4, !tbaa !130
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !311
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.f:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !129  ; 4 uses
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #23 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  store i32 %i.s, ptr %i.ak, align 4, !tbaa !130
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 4 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !312
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ap) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aj, ptr %i.q, align 8, !tbaa !129
  store ptr %i.am, ptr %i.t, align 8, !tbaa !311
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah ; 2 uses
  store ptr %i.aq, ptr %i.v, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.ar = phi ptr [ %i.w, %bb.e ], [ %i.aq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ]
  %i.as = phi ptr [ %i.x, %bb.e ], [ %i.am, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !108 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !108 ; 2 uses
  %.not134153 = icmp eq ptr %i.au, %i.aw
  br i1 %.not134153, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre165 = load ptr, ptr %3, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ax = phi ptr [ %.pre165, %._crit_edge.loopexit ], [ %i.o, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %i.ay = phi ptr [ %i.ck, %._crit_edge.loopexit ], [ %i.as, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !129
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = trunc i64 %i.bd to i32
  %i.bf = add i32 %i.be, -1
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = icmp slt i32 %i.r, 1                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 11 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 12 uses
  %i.bk = sub nsw i32 0, %2                       ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 5 uses
  %4 = zext i32 %i.bg to i64
  br label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bm = phi ptr [ %i.cj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ar, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %i.bn = phi ptr [ %i.ck, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.as, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.0115.0154 = phi ptr [ %i.cl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.au, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.bo = load i32, ptr %.sroa.0115.0154, align 4, !tbaa !130 ; 2 uses
  %.not.i43 = icmp eq ptr %i.bn, %i.bm
  br i1 %.not.i43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !130
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  store ptr %i.bp, ptr %i.t, align 8, !tbaa !311
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !129 ; 4 uses
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 5 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775804
  br i1 %i.bu, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bv = ashr exact i64 %i.bt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #23 ; 4 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  store i32 %i.bo, ptr %i.cc, align 4, !tbaa !130
  %i.cd = icmp sgt i64 %i.bt, 0
  br i1 %i.cd, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr align 4 %i.bq, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.cf = load ptr, ptr %i.v, align 8, !tbaa !312
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.ch) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.cb, ptr %i.q, align 8, !tbaa !129
  store ptr %i.ce, ptr %i.t, align 8, !tbaa !311
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bz ; 2 uses
  store ptr %i.ci, ptr %i.v, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.cj = phi ptr [ %i.bm, %bb.j ], [ %i.ci, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.ck = phi ptr [ %i.bp, %bb.j ], [ %i.ce, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0115.0154, i64 4 ; 2 uses
  %.not134 = icmp eq ptr %i.cl, %i.aw
  br i1 %.not134, label %._crit_edge.loopexit, label %.lr.ph

.preheader:                                       ; preds = %._crit_edge, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit100
  %indvars.iv = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit100 ] ; 3 uses
  %.sroa.14.0158 = phi ptr [ null, %._crit_edge ], [ %.sroa.14.1, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit100 ] ; 9 uses
  %.sroa.8.0157 = phi ptr [ null, %._crit_edge ], [ %.sroa.8.1, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit100 ] ; 8 uses
  %.sroa.0120.0156 = phi ptr [ null, %._crit_edge ], [ %.sroa.0120.1, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit100 ] ; 10 uses
  %.not39 = icmp eq i64 %indvars.iv, 0
  br i1 %.not39, label %.critedge, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader
  %i.cm = load ptr, ptr %i.q, align 8, !tbaa !108 ; 5 uses
  %i.cn = load ptr, ptr %i.t, align 8, !tbaa !108 ; 3 uses
  %.not8.i = icmp eq ptr %i.cm, %i.cn
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2
  br i1 %.not8.i, label %.lr.ph155.split.us, label %.lr.ph.i44

.lr.ph155.split.us:                               ; preds = %.lr.ph155
  tail call void @llvm.assume(i1 %i.bh)
  br label %.critedge

.lr.ph.i44:                                       ; preds = %.lr.ph155, %.lr.ph.i44.backedge
  %.010.i = phi i32 [ %.010.i.be, %.lr.ph.i44.backedge ], [ 0, %.lr.ph155 ] ; 2 uses
  %.sroa.05.09.i = phi ptr [ %.sroa.05.09.i.be, %.lr.ph.i44.backedge ], [ %i.cm, %.lr.ph155 ] ; 2 uses
  %i.cs = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !130
  %.lobit.i = lshr i32 %i.cs, 31                  ; 2 uses
  %i.ct = xor i32 %.lobit.i, %.010.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i45 = icmp eq ptr %i.cu, %i.cn
  br i1 %.not.i45, label %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i44.backedge

.lr.ph.i44.backedge:                              ; preds = %.lr.ph.i48, %.lr.ph.i44
  %.010.i.be = phi i32 [ %i.ct, %.lr.ph.i44 ], [ 0, %.lr.ph.i48 ]
  %.sroa.05.09.i.be = phi ptr [ %i.cu, %.lr.ph.i44 ], [ %i.cm, %.lr.ph.i48 ]
  br label %.lr.ph.i44, !llvm.loop !472

_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i44
  %i.cv = icmp ne i32 %.lobit.i, %.010.i
  %.not40 = xor i1 %i.bh, %i.cv
  br i1 %.not40, label %.critedge, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit, %.lr.ph.i48
  %.0910.i = phi i64 [ %i.da, %.lr.ph.i48 ], [ 0, %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0910.i ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !130 ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  %i.cz = sub nsw i32 0, %i.cx
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !130
  %i.da = add nuw i64 %.0910.i, 1                 ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cr
  %i.dc = select i1 %i.db, i1 %i.cy, i1 false
  br i1 %i.dc, label %.lr.ph.i48, label %.lr.ph.i44.backedge, !llvm.loop !472

.critedge:                                        ; preds = %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit, %.lr.ph155.split.us, %.preheader
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !97  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 344
  %i.df = load i8, ptr %i.de, align 8, !tbaa !139, !range !269, !noundef !270
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %.thread, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.dh = load ptr, ptr %i.t, align 8, !tbaa !311 ; 4 uses
  %i.di = load ptr, ptr %i.v, align 8, !tbaa !312
  %.not.i49 = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %2, ptr %i.dh, align 4, !tbaa !130
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store ptr %i.dj, ptr %i.t, align 8, !tbaa !311
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit56

bb.q:                                             ; preds = %bb.o
  %i.dk = load ptr, ptr %i.q, align 8, !tbaa !129 ; 4 uses
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dn = sub i64 %i.dl, %i.dm                    ; 5 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775804
  br i1 %i.do, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i50

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i50: ; preds = %bb.q
  %i.dp = ashr exact i64 %i.dn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i51 = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i51, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 2305843009213693951)
  %i.dt = select i1 %i.dr, i64 2305843009213693951, i64 %i.ds ; 3 uses
  %.not.i.i.i52 = icmp ne i64 %i.dt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i52)
  %i.du = shl nuw nsw i64 %i.dt, 2
  %i.dv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #23 ; 4 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.dn ; 2 uses
  store i32 %2, ptr %i.dw, align 4, !tbaa !130
  %i.dx = icmp sgt i64 %i.dn, 0
  br i1 %i.dx, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i53

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dv, ptr align 4 %i.dk, i64 %i.dn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i53

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i53: ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i50
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %.not.i17.i.i54 = icmp eq ptr %i.dk, null
  br i1 %.not.i17.i.i54, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i55, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i53
  %i.dz = load ptr, ptr %i.v, align 8, !tbaa !312
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.eb) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i55

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i55: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i53
  store ptr %i.dv, ptr %i.q, align 8, !tbaa !129
  store ptr %i.dy, ptr %i.t, align 8, !tbaa !311
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.ec, ptr %i.v, align 8, !tbaa !312
  %.pre166 = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit56

_ZNSt6vectorIiSaIiEE9push_backERKi.exit56:        ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i55
  %i.ed = phi ptr [ %i.dd, %bb.p ], [ %.pre166, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i55 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 7264
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !374 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 528
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !375
  %.not.i.i57 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i57, label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit56
  tail call void @_ZN7CaDiCaL8External32check_solution_on_learned_clauseEv(ptr noundef nonnull align 8 dereferenceable(616) %i.ef) #21
  %.pre.i58 = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i

_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit56
  %i.ei = phi ptr [ %i.ed, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit56 ], [ %.pre.i58, %bb.u ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 104 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !383
  %i.el = add nsw i64 %i.ek, 1                    ; 2 uses
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !383
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 3488
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !321 ; 2 uses
  %.not.i59 = icmp eq ptr %i.en, null
  br i1 %.not.i59, label %_ZN7CaDiCaL7Closure28check_and_add_to_proof_chainERSt6vectorIiSaIiEE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i
  tail call void @_ZN7CaDiCaL5Proof18add_derived_clauseElbRKSt6vectorIiSaIiEERKS1_IlSaIlEE(ptr noundef nonnull align 8 dereferenceable(120) %i.en, i64 noundef %i.el, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #21
  %i.eo = load ptr, ptr %i.bi, align 8, !tbaa !273 ; 2 uses
  %i.ep = load ptr, ptr %i.bj, align 8, !tbaa !271
  %.not.i.i.i60 = icmp eq ptr %i.ep, %i.eo
  br i1 %.not.i.i.i60, label %_ZN7CaDiCaL7Closure28check_and_add_to_proof_chainERSt6vectorIiSaIiEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.eo, ptr %i.bj, align 8, !tbaa !271
  br label %_ZN7CaDiCaL7Closure28check_and_add_to_proof_chainERSt6vectorIiSaIiEE.exit

_ZN7CaDiCaL7Closure28check_and_add_to_proof_chainERSt6vectorIiSaIiEE.exit: ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i, %bb.v, %bb.w
  %i.eq = load ptr, ptr %i.t, align 8, !tbaa !311 ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4 ; 4 uses
  store ptr %i.er, ptr %i.t, align 8, !tbaa !311
  %i.es = load ptr, ptr %i.v, align 8, !tbaa !312
  %.not.i.i61 = icmp eq ptr %i.er, %i.es
  br i1 %.not.i.i61, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN7CaDiCaL7Closure28check_and_add_to_proof_chainERSt6vectorIiSaIiEE.exit
  store i32 %i.bk, ptr %i.er, align 4, !tbaa !130
  store ptr %i.eq, ptr %i.t, align 8, !tbaa !311
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit68

bb.y:                                             ; preds = %_ZN7CaDiCaL7Closure28check_and_add_to_proof_chainERSt6vectorIiSaIiEE.exit
  %i.et = load ptr, ptr %i.q, align 8, !tbaa !129 ; 4 uses
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 9223372036854775804
  br i1 %i.ex, label %bb.z, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i62

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i62: ; preds = %bb.y
  %i.ey = ashr exact i64 %i.ew, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i63 = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 1)
  %i.ez = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.ey ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  %i.fb = tail call i64 @llvm.umin.i64(i64 %i.ez, i64 2305843009213693951)
  %i.fc = select i1 %i.fa, i64 2305843009213693951, i64 %i.fb ; 3 uses
  %.not.i.i.i.i64 = icmp ne i64 %i.fc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i64)
  %i.fd = shl nuw nsw i64 %i.fc, 2
  %i.fe = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #23 ; 4 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %i.ew ; 2 uses
  store i32 %i.bk, ptr %i.ff, align 4, !tbaa !130
  %i.fg = icmp sgt i64 %i.ew, 0
  br i1 %i.fg, label %bb.aa, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i65

bb.aa:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fe, ptr align 4 %i.et, i64 %i.ew, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i65

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i65: ; preds = %bb.aa, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %.not.i17.i.i.i66 = icmp eq ptr %i.et, null
  br i1 %.not.i17.i.i.i66, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i67, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i65
  %i.fi = load ptr, ptr %i.v, align 8, !tbaa !312
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = sub i64 %i.fj, %i.ev
  tail call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.fk) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i67

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i67: ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i65
  store ptr %i.fe, ptr %i.q, align 8, !tbaa !129
  store ptr %i.fh, ptr %i.t, align 8, !tbaa !311
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fc
  store ptr %i.fl, ptr %i.v, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit68

_ZNSt6vectorIiSaIiEE9push_backEOi.exit68:         ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i67
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !97  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 7264
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !374 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 528
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !375
  %.not.i.i69 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i69, label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i71, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit68
  tail call void @_ZN7CaDiCaL8External32check_solution_on_learned_clauseEv(ptr noundef nonnull align 8 dereferenceable(616) %i.fo) #21
  %.pre.i70 = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i71

_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i71: ; preds = %bb.ac, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit68
  %i.fr = phi ptr [ %i.fm, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit68 ], [ %.pre.i70, %bb.ac ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 104 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !383
  %i.fu = add nsw i64 %i.ft, 1                    ; 2 uses
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !383
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 3488
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !321 ; 2 uses
  %.not.i72 = icmp eq ptr %i.fw, null
  br i1 %.not.i72, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i71
  tail call void @_ZN7CaDiCaL5Proof18add_derived_clauseElbRKSt6vectorIiSaIiEERKS1_IlSaIlEE(ptr noundef nonnull align 8 dereferenceable(120) %i.fw, i64 noundef %i.fu, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #21
  %i.fx = load ptr, ptr %i.bi, align 8, !tbaa !273 ; 2 uses
  %i.fy = load ptr, ptr %i.bj, align 8, !tbaa !271
  %.not.i.i.i73 = icmp eq ptr %i.fy, %i.fx
  br i1 %.not.i.i.i73, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.fx, ptr %i.bj, align 8, !tbaa !271
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i71
  %i.fz = load ptr, ptr %i.t, align 8, !tbaa !311
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -4
  store ptr %i.ga, ptr %i.t, align 8, !tbaa !311
  %.pre167 = load ptr, ptr %i.a, align 8, !tbaa !97
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre167, i64 344
  %.pre168 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !139, !range !269
  %i.gb = trunc nuw i8 %.pre168 to i1
  br i1 %i.gb, label %.thread, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86

.thread:                                          ; preds = %.critedge, %bb.af
  %5 = shl nuw nsw i64 %indvars.iv, 1             ; 2 uses
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %5
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !366 ; 2 uses
  %i.gf = load ptr, ptr %i.bj, align 8, !tbaa !271 ; 4 uses
  %i.gg = load ptr, ptr %i.bl, align 8, !tbaa !272 ; 2 uses
  %.not.i75 = icmp eq ptr %i.gf, %i.gg
  br i1 %.not.i75, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.gh = load i64, ptr %i.ge, align 8, !tbaa !120
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !120
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  store ptr %i.gi, ptr %i.bj, align 8, !tbaa !271
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.ah:                                            ; preds = %.thread
  %i.gj = load ptr, ptr %i.bi, align 8, !tbaa !273 ; 4 uses
  %i.gk = ptrtoint ptr %i.gf to i64
  %i.gl = ptrtoint ptr %i.gj to i64               ; 2 uses
  %i.gm = sub i64 %i.gk, %i.gl                    ; 5 uses
  %i.gn = icmp eq i64 %i.gm, 9223372036854775800
  br i1 %i.gn, label %bb.ai, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.go = ashr exact i64 %i.gm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i76 = tail call i64 @llvm.umax.i64(i64 %i.go, i64 1)
  %i.gp = add nsw i64 %.sroa.speculated.i.i.i76, %i.go ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.go
  %i.gr = tail call i64 @llvm.umin.i64(i64 %i.gp, i64 1152921504606846975)
  %i.gs = select i1 %i.gq, i64 1152921504606846975, i64 %i.gr ; 3 uses
  %.not.i.i.i77 = icmp ne i64 %i.gs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i77)
  %i.gt = shl nuw nsw i64 %i.gs, 3
  %i.gu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gt) #23 ; 4 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.gm ; 2 uses
  %i.gw = load i64, ptr %i.ge, align 8, !tbaa !120
  store i64 %i.gw, ptr %i.gv, align 8, !tbaa !120
  %i.gx = icmp sgt i64 %i.gm, 0
  br i1 %i.gx, label %bb.aj, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.aj:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr align 8 %i.gj, i64 %i.gm, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.aj, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  %.not.i17.i.i78 = icmp eq ptr %i.gj, null
  br i1 %.not.i17.i.i78, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.gz = load ptr, ptr %i.bl, align 8, !tbaa !272
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = sub i64 %i.ha, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.hb) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.gu, ptr %i.bi, align 8, !tbaa !273
  store ptr %i.gy, ptr %i.bj, align 8, !tbaa !271
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gs ; 2 uses
  store ptr %i.hc, ptr %i.bl, align 8, !tbaa !272
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %bb.ag, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i
  %i.hd = phi ptr [ %i.gg, %bb.ag ], [ %i.hc, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ] ; 2 uses
  %i.he = phi ptr [ %i.gi, %bb.ag ], [ %i.gy, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %5
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !366 ; 2 uses
  %.not.i79 = icmp eq ptr %i.he, %i.hd
  br i1 %.not.i79, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !120
  store i64 %i.hi, ptr %i.he, align 8, !tbaa !120
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %i.hj, ptr %i.bj, align 8, !tbaa !271
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86

bb.am:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.hk = load ptr, ptr %i.bi, align 8, !tbaa !273 ; 4 uses
  %i.hl = ptrtoint ptr %i.hd to i64
  %i.hm = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hn = sub i64 %i.hl, %i.hm                    ; 5 uses
  %i.ho = icmp eq i64 %i.hn, 9223372036854775800
  br i1 %i.ho, label %bb.an, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i80

bb.an:                                            ; preds = %bb.am
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i80: ; preds = %bb.am
  %i.hp = ashr exact i64 %i.hn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i81 = tail call i64 @llvm.umax.i64(i64 %i.hp, i64 1)
  %i.hq = add nsw i64 %.sroa.speculated.i.i.i81, %i.hp ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.hp
  %i.hs = tail call i64 @llvm.umin.i64(i64 %i.hq, i64 1152921504606846975)
  %i.ht = select i1 %i.hr, i64 1152921504606846975, i64 %i.hs ; 3 uses
  %.not.i.i.i82 = icmp ne i64 %i.ht, 0
  tail call void @llvm.assume(i1 %.not.i.i.i82)
  %i.hu = shl nuw nsw i64 %i.ht, 3
  %i.hv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #23 ; 4 uses
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.hn ; 2 uses
  %i.hx = load i64, ptr %i.hh, align 8, !tbaa !120
  store i64 %i.hx, ptr %i.hw, align 8, !tbaa !120
  %i.hy = icmp sgt i64 %i.hn, 0
  br i1 %i.hy, label %bb.ao, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i83

bb.ao:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hv, ptr align 8 %i.hk, i64 %i.hn, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i83

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i83: ; preds = %bb.ao, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i80
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %.not.i17.i.i84 = icmp eq ptr %i.hk, null
  br i1 %.not.i17.i.i84, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i85, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i83
  %i.ia = load ptr, ptr %i.bl, align 8, !tbaa !272
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = sub i64 %i.ib, %i.hm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.ic) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i85

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i85: ; preds = %bb.ap, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i83
  store ptr %i.hv, ptr %i.bi, align 8, !tbaa !273
  store ptr %i.hz, ptr %i.bj, align 8, !tbaa !271
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ht
  store ptr %i.id, ptr %i.bl, align 8, !tbaa !272
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86

_ZNSt6vectorIlSaIlEE9push_backERKl.exit86:        ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i85, %bb.al, %bb.af
  %i.ie = load ptr, ptr %i.t, align 8, !tbaa !311
  %i.if = load ptr, ptr %i.q, align 8, !tbaa !129
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = icmp ugt i64 %i.ii, 4
  br i1 %i.ij, label %bb.aq, label %_ZNSt6vectorIlSaIlEE5clearEv.exit

bb.aq:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86
  %i.ik = load ptr, ptr %i.a, align 8, !tbaa !97  ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 344
  %i.im = load i8, ptr %i.il, align 8, !tbaa !139, !range !269, !noundef !270
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.io = tail call noundef ptr @_ZN7CaDiCaL7Closure14new_tmp_clauseERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q) ; 2 uses
  %.not.i.i87 = icmp eq ptr %.sroa.8.0157, %.sroa.14.0158
  br i1 %.not.i.i87, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %.sroa.8.0157, align 8, !tbaa !130
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.0157, i64 8
  store ptr %i.io, ptr %.sroa.5108.0..sroa_idx, align 8, !tbaa !279
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit

bb.at:                                            ; preds = %bb.ar
  %i.ip = ptrtoint ptr %.sroa.14.0158 to i64
  %i.iq = ptrtoint ptr %.sroa.0120.0156 to i64
  %i.ir = sub i64 %i.ip, %i.iq                    ; 4 uses
  %i.is = icmp eq i64 %i.ir, 9223372036854775792
  br i1 %i.is, label %bb.au, label %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.at
  %i.it = ashr exact i64 %i.ir, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i88 = tail call i64 @llvm.umax.i64(i64 %i.it, i64 1)
  %i.iu = add nsw i64 %.sroa.speculated.i.i.i.i88, %i.it ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.it
  %i.iw = tail call i64 @llvm.umin.i64(i64 %i.iu, i64 576460752303423487)
  %i.ix = select i1 %i.iv, i64 576460752303423487, i64 %i.iw ; 3 uses
  %.not.i.i.i.i89 = icmp ne i64 %i.ix, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i89)
  %i.iy = shl nuw nsw i64 %i.ix, 4
  %i.iz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #23 ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ir ; 2 uses
  store i32 0, ptr %i.ja, align 8, !tbaa !130
  %.sroa.5108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store ptr %i.io, ptr %.sroa.5108.0..sroa_idx109, align 8, !tbaa !279
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0120.0156, %.sroa.14.0158
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i ], [ %i.iz, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0120.0156, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !368, !alias.scope !525
  %i.jb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jb, %.sroa.14.0158
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !437

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.iz, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.jc, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0120.0156, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.0156, i64 noundef %i.ir) #24
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %i.ix
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.as, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.0120.4 = phi ptr [ %i.iz, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0120.0156, %bb.as ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.8.0157, %bb.as ]
  %.sroa.14.4 = phi ptr [ %i.jd, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.14.0158, %bb.as ] ; 2 uses
  %.sroa.8.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.bi, align 8, !tbaa !273 ; 2 uses
  %i.jf = load ptr, ptr %i.bj, align 8, !tbaa !271
  %.not.i.i90 = icmp eq ptr %i.jf, %i.je
  br i1 %.not.i.i90, label %_ZNSt6vectorIlSaIlEE5clearEv.exit, label %_ZNSt6vectorIlSaIlEE5clearEv.exit.sink.split

bb.aw:                                            ; preds = %bb.aq
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ik, i64 7264
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !374 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 528
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !375
  %.not.i.i91 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i91, label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i93, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZN7CaDiCaL8External32check_solution_on_learned_clauseEv(ptr noundef nonnull align 8 dereferenceable(616) %i.jh) #21
  %.pre.i92 = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i93

_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i93: ; preds = %bb.ax, %bb.aw
  %i.jk = phi ptr [ %i.ik, %bb.aw ], [ %.pre.i92, %bb.ax ] ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 104 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !383
  %i.jn = add nsw i64 %i.jm, 1                    ; 2 uses
  store i64 %i.jn, ptr %i.jl, align 8, !tbaa !383
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 3488
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !321 ; 2 uses
  %.not.i94 = icmp eq ptr %i.jp, null
  br i1 %.not.i94, label %_ZNSt6vectorIlSaIlEE5clearEv.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i93
  tail call void @_ZN7CaDiCaL5Proof18add_derived_clauseElbRKSt6vectorIiSaIiEERKS1_IlSaIlEE(ptr noundef nonnull align 8 dereferenceable(120) %i.jp, i64 noundef %i.jn, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #21
  %i.jq = load ptr, ptr %i.bi, align 8, !tbaa !273 ; 2 uses
  %i.jr = load ptr, ptr %i.bj, align 8, !tbaa !271
  %.not.i.i.i95 = icmp eq ptr %i.jr, %i.jq
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIlSaIlEE5clearEv.exit, label %_ZNSt6vectorIlSaIlEE5clearEv.exit.sink.split

_ZNSt6vectorIlSaIlEE5clearEv.exit.sink.split:     ; preds = %bb.ay, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit
  %.sink = phi ptr [ %i.je, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit ], [ %i.jq, %bb.ay ]
  %.sroa.0120.1.ph = phi ptr [ %.sroa.0120.4, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0120.0156, %bb.ay ]
  %.sroa.8.1.ph = phi ptr [ %.sroa.8.3, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.8.0157, %bb.ay ]
  %.sroa.14.1.ph = phi ptr [ %.sroa.14.4, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.14.0158, %bb.ay ]
  store ptr %.sink, ptr %i.bj, align 8, !tbaa !271
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit

_ZNSt6vectorIlSaIlEE5clearEv.exit:                ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit.sink.split, %bb.ay, %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i93, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86
  %.sroa.0120.1 = phi ptr [ %.sroa.0120.0156, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86 ], [ %.sroa.0120.0156, %bb.ay ], [ %.sroa.0120.4, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0120.0156, %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i93 ], [ %.sroa.0120.1.ph, %_ZNSt6vectorIlSaIlEE5clearEv.exit.sink.split ] ; 3 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0157, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86 ], [ %.sroa.8.0157, %bb.ay ], [ %.sroa.8.3, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.8.0157, %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i93 ], [ %.sroa.8.1.ph, %_ZNSt6vectorIlSaIlEE5clearEv.exit.sink.split ] ; 2 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0158, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86 ], [ %.sroa.14.0158, %bb.ay ], [ %.sroa.14.4, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.14.0158, %_ZN7CaDiCaL8External20check_learned_clauseEv.exit.i93 ], [ %.sroa.14.1.ph, %_ZNSt6vectorIlSaIlEE5clearEv.exit.sink.split ] ; 3 uses
  %i.js = load ptr, ptr %i.t, align 8, !tbaa !311 ; 2 uses
  %i.jt = load ptr, ptr %i.q, align 8, !tbaa !129 ; 3 uses
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv                    ; 2 uses
  %i.jx = ashr exact i64 %i.jw, 2
  %i.jy = icmp eq i64 %i.jw, 4
  br i1 %i.jy, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit
  %.not.i97 = icmp eq ptr %i.js, %i.jt
  br i1 %.not.i97, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit100, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.az, %.lr.ph.i98
  %.0910.i99 = phi i64 [ %i.kd, %.lr.ph.i98 ], [ 0, %bb.az ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %.0910.i99 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !130 ; 2 uses
  %i.kb = icmp slt i32 %i.ka, 0
  %i.kc = sub nsw i32 0, %i.ka
  store i32 %i.kc, ptr %i.jz, align 4, !tbaa !130
  %i.kd = add nuw i64 %.0910.i99, 1               ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.jx
  %i.kf = select i1 %i.ke, i1 %i.kb, i1 false
  br i1 %i.kf, label %.lr.ph.i98, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit100, !llvm.loop !472

_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit100:  ; preds = %.lr.ph.i98, %bb.az
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %4
  br i1 %exitcond, label %.critedge42, label %.preheader, !llvm.loop !529

.critedge42:                                      ; preds = %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit100
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !324 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !431 ; 2 uses
  store ptr %.sroa.0120.1, ptr %i.kg, align 8, !tbaa !324
  store ptr %.sroa.8.1, ptr %i.ki, align 8, !tbaa !370
  store ptr %.sroa.14.1, ptr %i.kj, align 8, !tbaa !431
  %i.kl = load ptr, ptr %i.q, align 8, !tbaa !129 ; 2 uses
  %i.km = load ptr, ptr %i.t, align 8, !tbaa !311
  %.not.i.i101 = icmp eq ptr %i.km, %i.kl
  br i1 %.not.i.i101, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.ba

bb.ba:                                            ; preds = %.critedge42
  store ptr %i.kl, ptr %i.t, align 8, !tbaa !311
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit, %bb.ba, %.critedge42
  %.sroa.0120.3 = phi ptr [ %i.kh, %bb.ba ], [ %i.kh, %.critedge42 ], [ %.sroa.0120.1, %_ZNSt6vectorIlSaIlEE5clearEv.exit ] ; 3 uses
  %.sroa.14.3 = phi ptr [ %i.kk, %bb.ba ], [ %i.kk, %.critedge42 ], [ %.sroa.14.1, %_ZNSt6vectorIlSaIlEE5clearEv.exit ]
  %.not.i.i.i102 = icmp eq ptr %.sroa.0120.3, null
  br i1 %.not.i.i.i102, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.kn = ptrtoint ptr %.sroa.14.3 to i64
  %i.ko = ptrtoint ptr %.sroa.0120.3 to i64
  %i.kp = sub i64 %i.kn, %i.ko
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.3, i64 noundef %i.kp) #24
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.bb
  %.not.i.i.i103 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit104, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !431
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.ax to i64
  %i.ku = sub i64 %i.ks, %i.kt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.ku) #24
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit104

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit104: ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit104
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure22gate_sort_lrat_reasonsERSt6vectorINS_13LitClausePairESaIS2_EEiib(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !365    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !365  ; 3 uses
  %.not13 = icmp eq ptr %i.a, %i.c
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %1, align 8, !tbaa !365
  %.pre15 = load ptr, ptr %i.b, align 8, !tbaa !365
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.d = phi ptr [ %.pre15, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  tail call void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPNS_13LitClausePairESt6vectorIS3_SaIS3_EEEENS_23smaller_pair_first_rankEEEvT_SA_T0_(ptr %i.e, ptr %i.d)
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.010.014 = phi ptr [ %i.f, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN7CaDiCaL7Closure22gate_sort_lrat_reasonsERNS_13LitClausePairEiib(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.014, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i64 -9223372036854775807, -9223372036854775808) i64 @_ZN7CaDiCaL7Closure28check_and_add_to_proof_chainERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !374  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !375
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8External32check_solution_on_learned_clauseEv(ptr noundef nonnull align 8 dereferenceable(616) %i.d) #21
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit

_ZN7CaDiCaL8External20check_learned_clauseEv.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !383
  %i.j = add nsw i64 %i.i, 1                      ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !383
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 3488
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !321  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNSt6vectorIlSaIlEE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  tail call void @_ZN7CaDiCaL5Proof18add_derived_clauseElbRKSt6vectorIiSaIiEERKS1_IlSaIlEE(ptr noundef nonnull align 8 dereferenceable(120) %i.l, i64 noundef %i.j, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #21
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !273  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.o, align 8, !tbaa !271
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit

_ZNSt6vectorIlSaIlEE5clearEv.exit:                ; preds = %bb.d, %bb.c, %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure22check_xor_gate_impliedEPKNS_4GateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1040) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.48", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.d = load i8, ptr %i.c, align 8, !tbaa !139, !range !269, !noundef !270
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 3656
  %i.g = load i32, ptr %i.f, align 8, !tbaa !427
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %1, align 8, !tbaa !128    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1112 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108  ; 2 uses
  %.not4344 = icmp eq ptr %i.k, %i.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 1120 ; 4 uses
  br i1 %.not4344, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.c
  %.pre50 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !311
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  %.pre52 = load ptr, ptr %.phi.trans.insert51, align 8, !tbaa !312
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1128 ; 3 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !311
  %.pre49 = load ptr, ptr %i.n, align 8, !tbaa !312
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.._crit_edge_crit_edge
  %i.o = phi ptr [ %.pre52, %.._crit_edge_crit_edge ], [ %i.bu, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.p = phi ptr [ %.pre50, %.._crit_edge_crit_edge ], [ %i.bv, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.q = sub nsw i32 0, %i.h                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1120 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store i32 %i.q, ptr %i.p, align 4, !tbaa !130
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.t, ptr %i.r, align 8, !tbaa !311
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.e:                                             ; preds = %._crit_edge
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !129  ; 4 uses
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 5 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775804
  br i1 %i.y, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.z = ashr exact i64 %i.x, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 2305843009213693951)
end_hunk_1
begin_hunk_2_@_ZN7CaDiCaL7Closure22check_xor_gate_impliedEPKNS_4GateE:bb.a

bb.j:                                             ; preds = %bb.i
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !130
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  store ptr %i.ba, ptr %.phi.trans.insert, align 8, !tbaa !311
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !129 ; 4 uses
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 5 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775804
  br i1 %i.bf, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bg = ashr exact i64 %i.be, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 2305843009213693951)
  %i.bk = select i1 %i.bi, i64 2305843009213693951, i64 %i.bj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #23 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i32 %i.az, ptr %i.bn, align 4, !tbaa !130
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bq = load ptr, ptr %i.n, align 8, !tbaa !312
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bs) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bm, ptr %i.i, align 8, !tbaa !129
  store ptr %i.bp, ptr %.phi.trans.insert, align 8, !tbaa !311
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bk ; 2 uses
  store ptr %i.bt, ptr %i.n, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.bu = phi ptr [ %i.ax, %bb.j ], [ %i.bt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.bv = phi ptr [ %i.ba, %bb.j ], [ %i.bp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.039.045, i64 4 ; 2 uses
  %.not43 = icmp eq ptr %i.bw, %i.m
  br i1 %.not43, label %._crit_edge, label %bb.i

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit35
  %.047 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.dy, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit35 ] ; 2 uses
  %.not23 = icmp eq i32 %.047, 0
  br i1 %.not23, label %.critedge, label %.lr.ph46

.lr.ph46:                                         ; preds = %.preheader
  %i.bx = load ptr, ptr %i.i, align 8, !tbaa !108 ; 5 uses
  %i.by = load ptr, ptr %i.r, align 8, !tbaa !108 ; 3 uses
  %.not8.i = icmp eq ptr %i.bx, %i.by
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2
  br i1 %.not8.i, label %.lr.ph46.split.us, label %.lr.ph.i

.lr.ph46.split.us:                                ; preds = %.lr.ph46
  call void @llvm.assume(i1 %i.av)
  br label %.critedge

bb.o:                                             ; preds = %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit35
  %i.cd = load ptr, ptr %i.i, align 8, !tbaa !129 ; 2 uses
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !311
  %.not.i.i26 = icmp eq ptr %i.ce, %i.cd
  br i1 %.not.i.i26, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.cd, ptr %i.r, align 8, !tbaa !311
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

.lr.ph.i:                                         ; preds = %.lr.ph46, %.lr.ph.i.backedge
  %.010.i = phi i32 [ %.010.i.be, %.lr.ph.i.backedge ], [ 0, %.lr.ph46 ] ; 2 uses
  %.sroa.05.09.i = phi ptr [ %.sroa.05.09.i.be, %.lr.ph.i.backedge ], [ %i.bx, %.lr.ph46 ] ; 2 uses
  %i.cf = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !130
  %.lobit.i = lshr i32 %i.cf, 31                  ; 2 uses
  %i.cg = xor i32 %.lobit.i, %.010.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i27 = icmp eq ptr %i.ch, %i.by
  br i1 %.not.i27, label %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %.lr.ph.i29, %.lr.ph.i
  %.010.i.be = phi i32 [ %i.cg, %.lr.ph.i ], [ 0, %.lr.ph.i29 ]
  %.sroa.05.09.i.be = phi ptr [ %i.ch, %.lr.ph.i ], [ %i.bx, %.lr.ph.i29 ]
  br label %.lr.ph.i, !llvm.loop !472

_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i
  %i.ci = icmp ne i32 %.lobit.i, %.010.i
  %.not24 = xor i1 %i.av, %i.ci
  br i1 %.not24, label %.critedge, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit, %.lr.ph.i29
  %.0910.i = phi i64 [ %i.cn, %.lr.ph.i29 ], [ 0, %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.0910.i ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !130 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  %i.cm = sub nsw i32 0, %i.ck
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !130
  %i.cn = add nuw i64 %.0910.i, 1                 ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cc
  %i.cp = select i1 %i.co, i1 %i.cl, i1 false
  br i1 %i.cp, label %.lr.ph.i29, label %.lr.ph.i.backedge, !llvm.loop !472

.critedge:                                        ; preds = %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit, %.lr.ph46.split.us, %.preheader
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !97  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 7264
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !374 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 528
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !375
  %.not.i30 = icmp eq ptr %i.cu, null
  br i1 %.not.i30, label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit, label %bb.q

bb.q:                                             ; preds = %.critedge
  call void @_ZN7CaDiCaL8External32check_solution_on_learned_clauseEv(ptr noundef nonnull align 8 dereferenceable(616) %i.cs) #21
  %.pre53 = load ptr, ptr %i.a, align 8, !tbaa !97
  br label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit

_ZN7CaDiCaL8External20check_learned_clauseEv.exit: ; preds = %.critedge, %bb.q
  %i.cv = phi ptr [ %i.cq, %.critedge ], [ %.pre53, %bb.q ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 3488
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !321 ; 2 uses
  %.not25 = icmp eq ptr %i.cx, null
  br i1 %.not25, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 104 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !383
  %i.da = add nsw i64 %i.cz, 1                    ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !383
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN7CaDiCaL5Proof18add_derived_clauseElbRKSt6vectorIiSaIiEERKS1_IlSaIlEE(ptr noundef nonnull align 8 dereferenceable(120) %i.cx, i64 noundef %i.da, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  %i.db = load ptr, ptr %2, align 8, !tbaa !273   ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = load ptr, ptr %i.aw, align 8, !tbaa !272
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.df) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !97  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 3488
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !321
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !383
  call void @_ZN7CaDiCaL5Proof13delete_clauseElbRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(120) %i.di, i64 noundef %i.dk, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #21
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  %i.dl = load ptr, ptr %i.r, align 8, !tbaa !311 ; 2 uses
  %i.dm = load ptr, ptr %i.i, align 8, !tbaa !129 ; 3 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 2
  %.not.i32 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i32, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit35, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.t, %.lr.ph.i33
  %.0910.i34 = phi i64 [ %i.dv, %.lr.ph.i33 ], [ 0, %bb.t ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.0910.i34 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !130 ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  %i.du = sub nsw i32 0, %i.ds
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !130
  %i.dv = add nuw i64 %.0910.i34, 1               ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.dq
  %i.dx = select i1 %i.dw, i1 %i.dt, i1 false
  br i1 %i.dx, label %.lr.ph.i33, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit35, !llvm.loop !472

_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit35:   ; preds = %.lr.ph.i33, %bb.t
  %i.dy = add nuw i32 %.047, 1                    ; 2 uses
  %.not22 = icmp eq i32 %i.dy, %i.au
  br i1 %.not22, label %bb.o, label %.preheader, !llvm.loop !530

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.p, %bb.o, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN7CaDiCaL7Closure13find_xor_litsERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 1, ptr %i.b, align 4, !tbaa !389
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !312
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = load <2 x ptr>, ptr %i.c, align 8, !tbaa !108
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !108
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !312
  store ptr %i.i, ptr %i.d, align 8, !tbaa !312
  store <2 x ptr> %i.h, ptr %1, align 8, !tbaa !108
  store ptr %i.e, ptr %i.g, align 8, !tbaa !312
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.k = tail call ptr @_ZNSt10_HashtableIPN7CaDiCaL4GateES2_SaIS2_ENSt8__detail9_IdentityENS0_11GateEqualToENS0_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(1040) %0) ; 2 uses
  %.not28.i = icmp eq ptr %i.k, null
  br i1 %.not28.i, label %_ZN7CaDiCaL7Closure14find_gate_litsERSt6vectorIiSaIiEENS_9Gate_TypeEPNS_4GateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !354
  br label %_ZN7CaDiCaL7Closure14find_gate_litsERSt6vectorIiSaIiEENS_9Gate_TypeEPNS_4GateE.exit

_ZN7CaDiCaL7Closure14find_gate_litsERSt6vectorIiSaIiEENS_9Gate_TypeEPNS_4GateE.exit: ; preds = %bb.a, %bb.b
  %.2.i = phi ptr [ null, %bb.a ], [ %i.m, %bb.b ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !312
  %i.r = load <2 x ptr>, ptr %1, align 8, !tbaa !108
  %i.s = load <2 x ptr>, ptr %i.o, align 8, !tbaa !108
  store <2 x ptr> %i.r, ptr %i.o, align 8, !tbaa !108
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !312
  store ptr %i.t, ptr %i.p, align 8, !tbaa !312
  store <2 x ptr> %i.s, ptr %1, align 8, !tbaa !108
  store ptr %i.q, ptr %i.g, align 8, !tbaa !312
  ret ptr %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure25reset_xor_gate_extractionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1040) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  tail call void @_ZN7CaDiCaL8Internal10clear_occsEv(ptr noundef nonnull align 8 dereferenceable(7296) %i.b) #21
  ret void
}

declare void @_ZN7CaDiCaL8Internal10clear_occsEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL7Closure23normalize_ite_lits_gateEPNS_4GateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1040) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %2 = alloca %"struct.CaDiCaL::LitClausePair", align 8 ; 4 uses
  %3 = alloca %"struct.CaDiCaL::LitClausePair", align 8 ; 4 uses
  %4 = alloca %"struct.CaDiCaL::LitClausePair", align 8 ; 4 uses
  %5 = alloca %"struct.CaDiCaL::LitClausePair", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !129  ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !130  ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  %i.h = load i8, ptr %i.g, align 8, !tbaa !139, !range !269, !noundef !270
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = sub nsw i32 0, %i.d
  store i32 %i.j, ptr %i.c, align 4, !tbaa !130
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !130
  %i.m = shufflevector <2 x i32> %i.l, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.m, ptr %i.k, align 4, !tbaa !130
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !324  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !368
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !324  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !368
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !122   ; 2 uses
  %i.v = shl i8 %i.u, 2
  %i.w = and i8 %i.v, 12
  %i.x = lshr i8 %i.u, 2
  %i.y = and i8 %i.x, 3
  %i.z = or disjoint i8 %i.w, %i.y
  store i8 %i.z, ptr %i.t, align 8, !tbaa !122
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !129
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.aa = phi ptr [ %.pre, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !130 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 1                   ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 344
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !139, !range !269, !noundef !270
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = sub nsw i32 0, %i.ac
  store i32 %i.ai, ptr %i.ab, align 4, !tbaa !130
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !130
  %i.al = sub nsw i32 0, %i.ak
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !130
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !324 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !368
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !324 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !368
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !122 ; 3 uses
  %trunc = trunc i8 %i.at to i2
  %rev = tail call i2 @llvm.bitreverse.i2(i2 %trunc)
  %i.au = shl i8 %i.at, 1
  %i.av = and i8 %i.au, 8
  %i.aw = zext i2 %rev to i8
  %i.ax = lshr i8 %i.at, 1
  %i.ay = and i8 %i.ax, 4
  %i.az = or disjoint i8 %i.ay, %i.av
  %i.ba = or disjoint i8 %i.az, %i.aw
  store i8 %i.ba, ptr %i.as, align 8, !tbaa !122
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  ret i1 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN7CaDiCaL7Closure13find_ite_gateEPNS_4GateERb(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7CaDiCaL7Closure23normalize_ite_lits_gateEPNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1)
  %i.b = zext i1 %i.a to i8
  store i8 %i.b, ptr %2, align 1, !tbaa !531
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = tail call noundef ptr @_ZN7CaDiCaL7Closure14find_gate_litsERSt6vectorIiSaIiEENS_9Gate_TypeEPNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef signext 2, ptr noundef %1)
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure19add_clause_to_chainESt6vectorIiSaIiEEl(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr nofree noundef readonly align 8 captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i64 %2, 32
  %i.b = trunc nuw i64 %i.a to i32                ; 2 uses
  %i.c = trunc i64 %2 to i32                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !311  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !312  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.b, ptr %i.f, align 4, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store ptr %i.i, ptr %i.e, align 8, !tbaa !311
end_hunk_2
begin_hunk_3_@_ZN7CaDiCaL7Closure34extract_xor_gates_with_base_clauseEPNS_6ClauseE:bb.a
  %i.bv = tail call noundef i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bt, i32 1)
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !120
  %i.bz = trunc i64 %i.by to i32
  %.highbits = lshr i32 %i.bz, %i.bp
  %.not109.not = icmp eq i32 %.highbits, 0
  br i1 %.not109.not, label %.thread202, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = sub nsw i32 0, %i.bt
  %i.cb = tail call i32 @llvm.abs.i32(i32 %i.bt, i1 true)
  %i.cc = tail call noundef i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.ca, i32 1)
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !120
  %i.cg = trunc i64 %i.cf to i32
  %.highbits.1 = lshr i32 %i.cg, %i.bp
  %.not109.not.1 = icmp eq i32 %.highbits.1, 0
  br i1 %.not109.not.1, label %.thread202, label %.critedge118

.critedge118:                                     ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0184.0236, i64 4 ; 2 uses
  %.not208 = icmp eq ptr %i.ch, %i.bl
  br i1 %.not208, label %.critedge120, label %bb.t

.critedge120:                                     ; preds = %.critedge118, %bb.s
  %i.ci = shl nuw i32 1, %i.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cl = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  store i32 0, ptr %i.cl, align 8, !tbaa !130
  %.sroa.5180.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %1, ptr %.sroa.5180.0..sroa_idx181, align 8, !tbaa !279
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %.not112 = icmp eq i32 %.297, 0
  br label %.preheader210

.preheader210:                                    ; preds = %.critedge120, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147
  %.080251 = phi i32 [ 0, %.critedge120 ], [ %i.ew, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147 ] ; 4 uses
  %i.cn = phi ptr [ %i.cm, %.critedge120 ], [ %i.ei, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147 ] ; 8 uses
  %i.co = phi ptr [ %i.cm, %.critedge120 ], [ %i.eh, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147 ] ; 4 uses
  %i.cp = phi ptr [ %i.cl, %.critedge120 ], [ %i.eg, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147 ] ; 7 uses
  %.not111 = icmp eq i32 %.080251, 0
  br i1 %.not111, label %.critedge121, label %.lr.ph239

.lr.ph239:                                        ; preds = %.preheader210
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !108 ; 3 uses
  %.not8.i = icmp eq ptr %i.cq, %i.cr
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 2
  br label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit

.critedge124.preheader:                           ; preds = %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147
  store ptr %i.ei, ptr %i.cj, align 8
  store ptr %i.eh, ptr %i.ck, align 8
  store ptr %i.eg, ptr %2, align 8
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !108 ; 8 uses
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !108 ; 5 uses
  %.not8.i148 = icmp eq ptr %i.cw, %i.cx
  %.not8.i148.fr = freeze i1 %.not8.i148
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  br i1 %.not8.i148.fr, label %.critedge124.preheader.split.us, label %.lr.ph.i149

.critedge124.preheader.split.us:                  ; preds = %.critedge124.preheader
  %.not114.us = icmp eq i32 %.297, 0
  tail call void @llvm.assume(i1 %.not114.us)
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit

_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit:     ; preds = %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit.backedge, %.lr.ph239
  br i1 %.not8.i, label %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit, %.lr.ph.i
  %.010.i = phi i32 [ %i.dd, %.lr.ph.i ], [ 0, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit ] ; 2 uses
  %.sroa.05.09.i = phi ptr [ %i.de, %.lr.ph.i ], [ %i.cq, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit ] ; 2 uses
  %i.dc = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !130
  %.lobit.i = lshr i32 %i.dc, 31                  ; 2 uses
  %i.dd = xor i32 %.lobit.i, %.010.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i127 = icmp eq ptr %i.de, %i.cr
  br i1 %.not.i127, label %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit.thread, label %.lr.ph.i

_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit: ; preds = %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit
  br i1 %.not112, label %.critedge, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit.backedge

_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit.backedge: ; preds = %.lr.ph.i129, %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit
  br label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit

_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit.thread: ; preds = %.lr.ph.i
  %i.df = icmp ne i32 %.lobit.i, %.010.i
  %i.dg = zext i1 %i.df to i32
  %.not112310 = icmp eq i32 %.297, %i.dg
  br i1 %.not112310, label %.critedge, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit.thread, %.lr.ph.i129
  %.0910.i = phi i64 [ %i.dl, %.lr.ph.i129 ], [ 0, %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit.thread ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.0910.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !130 ; 2 uses
  %i.dj = icmp slt i32 %i.di, 0
  %i.dk = sub nsw i32 0, %i.di
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !130
  %i.dl = add nuw i64 %.0910.i, 1                 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.cv
  %i.dn = select i1 %i.dm, i1 %i.dj, i1 false
  br i1 %i.dn, label %.lr.ph.i129, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit.backedge, !llvm.loop !472

.critedge:                                        ; preds = %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit.thread, %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit
  %i.do = tail call noundef ptr @_ZN7CaDiCaL7Closure26find_large_xor_side_clauseERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 3 uses
  %.not113.not = icmp eq ptr %i.do, null
  br i1 %.not113.not, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.critedge
  %.not.i.i130 = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i130, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %.080251, ptr %i.cn, align 8, !tbaa !130
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.do, ptr %.sroa.5172.0..sroa_idx, align 8, !tbaa !279
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  br label %.critedge121

bb.x:                                             ; preds = %bb.v
  %i.dq = ptrtoint ptr %i.cn to i64
  %i.dr = ptrtoint ptr %i.cp to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 4 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775792
  br i1 %i.dt, label %bb.y, label %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131: ; preds = %bb.x
  %i.du = ashr exact i64 %i.ds, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i132 = tail call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i.i132, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 576460752303423487)
  %i.dy = select i1 %i.dw, i64 576460752303423487, i64 %i.dx ; 3 uses
  %.not.i.i.i.i133 = icmp ne i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i133)
  %i.dz = shl nuw nsw i64 %i.dy, 4
  %i.ea = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #23 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ds ; 2 uses
  store i32 %.080251, ptr %i.eb, align 8, !tbaa !130
  %.sroa.5172.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.do, ptr %.sroa.5172.0..sroa_idx173, align 8, !tbaa !279
  %.not10.i.i.i.i.i.i134 = icmp eq ptr %i.cp, %i.cn
  br i1 %.not10.i.i.i.i.i.i134, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142, label %.lr.ph.i.i.i.i.i.i135

.lr.ph.i.i.i.i.i.i135:                            ; preds = %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131, %.lr.ph.i.i.i.i.i.i135
  %.012.i.i.i.i.i.i136 = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i135 ], [ %i.ea, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131 ] ; 2 uses
  %.0911.i.i.i.i.i.i137 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i135 ], [ %i.cp, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i136, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i137, i64 16, i1 false), !tbaa.struct !368, !alias.scope !566
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i137, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i136, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i138 = icmp eq ptr %i.ec, %i.cn
  br i1 %.not.i.i.i.i.i.i138, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142, label %.lr.ph.i.i.i.i.i.i135, !llvm.loop !437

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142: ; preds = %.lr.ph.i.i.i.i.i.i135, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131
  %.0.lcssa.i.i.i.i.i.i140 = phi ptr [ %i.ea, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131 ], [ %i.ed, %.lr.ph.i.i.i.i.i.i135 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i140, i64 16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ds) #24
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.dy
  br label %.critedge121

.critedge121:                                     ; preds = %.preheader210, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142, %bb.w
  %i.eg = phi ptr [ %i.cp, %bb.w ], [ %i.ea, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142 ], [ %i.cp, %.preheader210 ] ; 5 uses
  %i.eh = phi ptr [ %i.co, %bb.w ], [ %i.ef, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142 ], [ %i.co, %.preheader210 ] ; 5 uses
  %i.ei = phi ptr [ %i.dp, %bb.w ], [ %i.ee, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142 ], [ %i.cn, %.preheader210 ] ; 2 uses
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !311 ; 2 uses
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !129 ; 3 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 2
  %.not.i144 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i144, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %.critedge121, %.lr.ph.i145
  %.0910.i146 = phi i64 [ %i.et, %.lr.ph.i145 ], [ 0, %.critedge121 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.0910.i146 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !130 ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  %i.es = sub nsw i32 0, %i.eq
  store i32 %i.es, ptr %i.ep, align 4, !tbaa !130
  %i.et = add nuw i64 %.0910.i146, 1              ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eo
  %i.ev = select i1 %i.eu, i1 %i.er, i1 false
  br i1 %i.ev, label %.lr.ph.i145, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147, !llvm.loop !472

_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147:  ; preds = %.lr.ph.i145, %.critedge121
  %i.ew = add nuw i32 %.080251, 1                 ; 2 uses
  %.not110 = icmp eq i32 %i.ew, %i.ci
  br i1 %.not110, label %.critedge124.preheader, label %.preheader210, !llvm.loop !570

._crit_edge.loopexit.i154:                        ; preds = %.lr.ph.i149
  %i.ex = icmp ne i32 %.lobit.i152, %.010.i150
  %i.ey = zext i1 %i.ex to i32
  %.not114 = icmp eq i32 %.297, %i.ey
  br i1 %.not114, label %.split.us, label %.lr.ph.i158

.lr.ph.i149:                                      ; preds = %.critedge124.preheader, %.lr.ph.i149.backedge
  %.010.i150 = phi i32 [ %.010.i150.be, %.lr.ph.i149.backedge ], [ 0, %.critedge124.preheader ] ; 2 uses
  %.sroa.05.09.i151 = phi ptr [ %.sroa.05.09.i151.be, %.lr.ph.i149.backedge ], [ %i.cw, %.critedge124.preheader ] ; 2 uses
  %i.ez = load i32, ptr %.sroa.05.09.i151, align 4, !tbaa !130
  %.lobit.i152 = lshr i32 %i.ez, 31               ; 2 uses
  %i.fa = xor i32 %.lobit.i152, %.010.i150
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i151, i64 4 ; 2 uses
  %.not.i153 = icmp eq ptr %i.fb, %i.cx
  br i1 %.not.i153, label %._crit_edge.loopexit.i154, label %.lr.ph.i149.backedge

.lr.ph.i149.backedge:                             ; preds = %.lr.ph.i158, %.lr.ph.i149
  %.010.i150.be = phi i32 [ %i.fa, %.lr.ph.i149 ], [ 0, %.lr.ph.i158 ]
  %.sroa.05.09.i151.be = phi ptr [ %i.fb, %.lr.ph.i149 ], [ %i.cw, %.lr.ph.i158 ]
  br label %.lr.ph.i149, !llvm.loop !571

.lr.ph.i158:                                      ; preds = %._crit_edge.loopexit.i154, %.lr.ph.i158
  %.0910.i159 = phi i64 [ %i.fg, %.lr.ph.i158 ], [ 0, %._crit_edge.loopexit.i154 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.0910.i159 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !130 ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 0
  %i.ff = sub nsw i32 0, %i.fd
  store i32 %i.ff, ptr %i.fc, align 4, !tbaa !130
  %i.fg = add nuw i64 %.0910.i159, 1              ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.db
  %i.fi = select i1 %i.fh, i1 %i.fe, i1 false
  br i1 %i.fi, label %.lr.ph.i158, label %.lr.ph.i149.backedge, !llvm.loop !472

.split.us:                                        ; preds = %._crit_edge.loopexit.i154
  %.not115 = icmp eq i32 %.297, 0
  br i1 %.not115, label %.lr.ph257.split.us, label %.preheader

.preheader:                                       ; preds = %.split.us, %.preheader
  %.sroa.0165.0 = phi ptr [ %i.fl, %.preheader ], [ %i.cw, %.split.us ] ; 3 uses
  %i.fj = load i32, ptr %.sroa.0165.0, align 4, !tbaa !130 ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0165.0, i64 4
  br i1 %i.fk, label %.preheader, label %.lr.ph257, !llvm.loop !572

.lr.ph257:                                        ; preds = %.preheader
  %i.fm = sub nsw i32 0, %i.fj
  store i32 %i.fm, ptr %.sroa.0165.0, align 4, !tbaa !130
  br label %.lr.ph257.split

.lr.ph257.split.us:                               ; preds = %.split.us, %.lr.ph257.split.us
  %.sroa.0162.0255.us = phi ptr [ %i.fu, %.lr.ph257.split.us ], [ %i.cw, %.split.us ] ; 2 uses
  %i.fn = load i32, ptr %.sroa.0162.0255.us, align 4, !tbaa !130
  %i.fo = sub nsw i32 0, %i.fn
  %i.fp = call noundef ptr @_ZN7CaDiCaL7Closure12new_xor_gateERKSt6vectorINS_13LitClausePairESaIS2_EEi(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.fo) ; 0 uses
  %i.fq = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %i.fs = load i8, ptr %i.fr, align 4, !tbaa !348, !range !269, !noundef !270
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0162.0255.us, i64 4 ; 2 uses
  %.not209.us = icmp eq ptr %i.fu, %i.cx
  %or.cond259 = select i1 %i.ft, i1 true, i1 %.not209.us
  br i1 %or.cond259, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, label %.lr.ph257.split.us

.lr.ph257.split:                                  ; preds = %.lr.ph257, %.lr.ph257.split
  %.sroa.0162.0255 = phi ptr [ %i.gb, %.lr.ph257.split ], [ %i.cw, %.lr.ph257 ] ; 2 uses
  %i.fv = load i32, ptr %.sroa.0162.0255, align 4, !tbaa !130
  %i.fw = call noundef ptr @_ZN7CaDiCaL7Closure12new_xor_gateERKSt6vectorINS_13LitClausePairESaIS2_EEi(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.fv) ; 0 uses
  %i.fx = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 20
  %i.fz = load i8, ptr %i.fy, align 4, !tbaa !348, !range !269, !noundef !270
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0162.0255, i64 4 ; 2 uses
  %.not209 = icmp eq ptr %i.gb, %i.cx
  %or.cond260 = select i1 %i.ga, i1 true, i1 %.not209
  br i1 %or.cond260, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, label %.lr.ph257.split

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit: ; preds = %.critedge, %.lr.ph257.split, %.lr.ph257.split.us, %.critedge124.preheader.split.us
  %i.gc = phi ptr [ %i.eh, %.critedge124.preheader.split.us ], [ %i.eh, %.lr.ph257.split.us ], [ %i.eh, %.lr.ph257.split ], [ %i.co, %.critedge ]
  %i.gd = phi ptr [ %i.eg, %.critedge124.preheader.split.us ], [ %i.eg, %.lr.ph257.split.us ], [ %i.eg, %.lr.ph257.split ], [ %i.cp, %.critedge ] ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gg) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.thread202

.thread202:                                       ; preds = %bb.f, %bb.i, %bb.k, %bb.t, %bb.u, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.e, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure17extract_xor_gatesEv(ptr noundef nonnull align 8 dereferenceable(1040) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3760
  %i.d = load i32, ptr %i.c, align 8, !tbaa !573
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZN7CaDiCaL7Closure24init_xor_gate_extractionERSt6vectorIPNS_6ClauseESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = load ptr, ptr %1, align 8, !tbaa !277    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !277  ; 2 uses
  %.not1011 = icmp eq ptr %i.e, %i.g
  br i1 %.not1011, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.sroa.06.012 = phi ptr [ %i.p, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.06.012, align 8, !tbaa !279 ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i8, ptr %i.j, align 4, !tbaa !348, !range !269, !noundef !270
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 512
  %.not5 = icmp eq i32 %i.o, 0
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN7CaDiCaL7Closure34extract_xor_gates_with_base_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %i.h)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 8 ; 2 uses
  %.not10 = icmp eq ptr %i.p, %i.g
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !97
  call void @_ZN7CaDiCaL8Internal10clear_occsEv(ptr noundef nonnull align 8 dereferenceable(7296) %i.q) #21
  %i.r = load ptr, ptr %1, align 8, !tbaa !295    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !319
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #24
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure10find_unitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1040) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !406, !nonnull !270, !align !407
  %i.e = load i32, ptr %i.d, align 4, !tbaa !130  ; 2 uses
  %.not100121 = icmp eq i32 %i.e, 0
  br i1 %.not100121, label %.loopexit103, label %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph

_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 5 uses
  br label %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader

_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader: ; preds = %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph, %.loopexit
  %i.k = phi ptr [ %i.b, %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph ], [ %i.hm, %.loopexit ]
  %i.l = phi ptr [ %i.b, %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph ], [ %i.hn, %.loopexit ]
  %.sroa.070.0122 = phi i32 [ 1, %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph ], [ %i.ho, %.loopexit ] ; 7 uses
  %i.m = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.070.0122, i1 true) ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i32 0, %.sroa.070.0122           ; 2 uses
  %i.p = tail call i32 @llvm.abs.i32(i32 %.sroa.070.0122, i1 true)
  %i.q = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.o, i32 1)
  %i.r = zext i32 %i.q to i64
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %.sroa.070.0122, i32 1)
  %i.t = zext i32 %i.s to i64
  br label %_ZN7CaDiCaL7Closure10unmark_allEv.exit58

_ZN7CaDiCaL7Closure10unmark_allEv.exit58:         ; preds = %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader, %_ZN7CaDiCaL7Closure10unmark_allEv.exit
  %i.u = phi ptr [ %i.dg, %_ZN7CaDiCaL7Closure10unmark_allEv.exit ], [ %i.k, %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader ] ; 2 uses
  %i.v = phi ptr [ %i.dg, %_ZN7CaDiCaL7Closure10unmark_allEv.exit ], [ %i.l, %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 760
end_hunk_3
