Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/verify_certificate_chain?download=true
inline.NumInlined: 1284
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4bssl22VerifyCertificateChainERKSt6vectorISt10shared_ptrIKNS_17ParsedCertificateEESaIS4_EERKNS_16CertificateTrustEPNS_30VerifyCertificateChainDelegateERKNS_3der15GeneralizedTimeENS_10KeyPurposeENS_21InitialExplicitPolicyERKSt3setINSE_5InputESt4lessISL_ESaISL_EENS_27InitialPolicyMappingInhibitENS_23InitialAnyPolicyInhibitEPSP_PNS_14CertPathErrorsE:bb.a
.noexc75:                                         ; preds = %_ZNSt6vectorIPKN4bssl15NameConstraintsESaIS3_EE9push_backEOS3_.exit.i.i
  br i1 %i.lq, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %.noexc75
  %i.lr = load i64, ptr %i.bt, align 8, !tbaa !77 ; 2 uses
  %.not.i85.i = icmp eq i64 %i.lr, 0
  br i1 %.not.i85.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ls = add i64 %i.lr, -1
  store i64 %i.ls, ptr %i.bt, align 8, !tbaa !77
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.lt = load i64, ptr %i.bz, align 8, !tbaa !79 ; 2 uses
  %.not29.i.i = icmp eq i64 %i.lt, 0
  br i1 %.not29.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lu = add i64 %i.lt, -1
  store i64 %i.lu, ptr %i.bz, align 8, !tbaa !79
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.lv = load i64, ptr %i.bw, align 8, !tbaa !78 ; 2 uses
  %.not30.i.i = icmp eq i64 %i.lv, 0
  br i1 %.not30.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lw = add i64 %i.lv, -1
  store i64 %i.lw, ptr %i.bw, align 8, !tbaa !78
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %.noexc75
  %i.lx = getelementptr inbounds nuw i8, ptr %i.dq, i64 592
  %i.ly = load i8, ptr %i.lx, align 8, !tbaa !219, !range !68, !noundef !69
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit.i.i.i, label %bb.cd

_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit.i.i.i: ; preds = %bb.cc
  %i.ma = getelementptr inbounds nuw i8, ptr %i.dq, i64 594
  %i.mb = load i8, ptr %i.ma, align 2, !tbaa !220, !range !68, !noundef !69
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %_ZNKRSt8optionalIhE5valueEv.exit.i.i.i, label %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit14.i.i.i

_ZNKRSt8optionalIhE5valueEv.exit.i.i.i:           ; preds = %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit.i.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.dq, i64 593
  %i.me = load i8, ptr %i.md, align 1, !tbaa !150
  %i.mf = zext i8 %i.me to i64                    ; 2 uses
  %i.mg = load i64, ptr %i.bt, align 8, !tbaa !77
  %i.mh = icmp ugt i64 %i.mg, %i.mf
  br i1 %i.mh, label %_ZNKRSt8optionalIhE5valueEv.exit13.i.i.i, label %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit14.i.i.i

_ZNKRSt8optionalIhE5valueEv.exit13.i.i.i:         ; preds = %_ZNKRSt8optionalIhE5valueEv.exit.i.i.i
  store i64 %i.mf, ptr %i.bt, align 8, !tbaa !77
  br label %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit14.i.i.i

_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit14.i.i.i: ; preds = %_ZNKRSt8optionalIhE5valueEv.exit13.i.i.i, %_ZNKRSt8optionalIhE5valueEv.exit.i.i.i, %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit.i.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.dq, i64 596
  %i.mj = load i8, ptr %i.mi, align 4, !tbaa !220, !range !68, !noundef !69
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %_ZNKRSt8optionalIhE5valueEv.exit16.i.i.i, label %bb.cd

_ZNKRSt8optionalIhE5valueEv.exit16.i.i.i:         ; preds = %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit14.i.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.dq, i64 595
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !150
  %i.mn = zext i8 %i.mm to i64                    ; 2 uses
  %i.mo = load i64, ptr %i.bz, align 8, !tbaa !79
  %i.mp = icmp ugt i64 %i.mo, %i.mn
  br i1 %i.mp, label %_ZNKRSt8optionalIhE5valueEv.exit18.i.i.i, label %bb.cd

_ZNKRSt8optionalIhE5valueEv.exit18.i.i.i:         ; preds = %_ZNKRSt8optionalIhE5valueEv.exit16.i.i.i
  store i64 %i.mn, ptr %i.bz, align 8, !tbaa !79
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNKRSt8optionalIhE5valueEv.exit18.i.i.i, %_ZNKRSt8optionalIhE5valueEv.exit16.i.i.i, %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit14.i.i.i, %bb.cc
  %i.mq = getelementptr inbounds nuw i8, ptr %i.dq, i64 625
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !220, !range !68, !noundef !69
  %i.ms = trunc nuw i8 %i.mr to i1
  br i1 %i.ms, label %_ZNKRSt8optionalIhE5valueEv.exit19.i.i.i, label %_ZN4bssl12_GLOBAL__N_112PathVerifier22ApplyPolicyConstraintsERKNS_17ParsedCertificateE.exit.i.i

_ZNKRSt8optionalIhE5valueEv.exit19.i.i.i:         ; preds = %bb.cd
  %i.mt = getelementptr inbounds nuw i8, ptr %i.dq, i64 624
  %i.mu = load i8, ptr %i.mt, align 8, !tbaa !150
  %i.mv = zext i8 %i.mu to i64                    ; 2 uses
  %i.mw = load i64, ptr %i.bw, align 8, !tbaa !78
  %i.mx = icmp ugt i64 %i.mw, %i.mv
  br i1 %i.mx, label %_ZNKRSt8optionalIhE5valueEv.exit20.i.i.i, label %_ZN4bssl12_GLOBAL__N_112PathVerifier22ApplyPolicyConstraintsERKNS_17ParsedCertificateE.exit.i.i

_ZNKRSt8optionalIhE5valueEv.exit20.i.i.i:         ; preds = %_ZNKRSt8optionalIhE5valueEv.exit19.i.i.i
  store i64 %i.mv, ptr %i.bw, align 8, !tbaa !78
  br label %_ZN4bssl12_GLOBAL__N_112PathVerifier22ApplyPolicyConstraintsERKNS_17ParsedCertificateE.exit.i.i

_ZN4bssl12_GLOBAL__N_112PathVerifier22ApplyPolicyConstraintsERKNS_17ParsedCertificateE.exit.i.i: ; preds = %_ZNKRSt8optionalIhE5valueEv.exit20.i.i.i, %_ZNKRSt8optionalIhE5valueEv.exit19.i.i.i, %bb.cd
  %i.my = getelementptr inbounds nuw i8, ptr %i.dq, i64 344 ; 2 uses
  %i.mz = load i8, ptr %i.my, align 8, !tbaa !217, !range !68, !noundef !69
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit.i.i, label %.sink.split.i.i

_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit.i.i: ; preds = %_ZN4bssl12_GLOBAL__N_112PathVerifier22ApplyPolicyConstraintsERKNS_17ParsedCertificateE.exit.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.dq, i64 345
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !223, !range !68, !noundef !69
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %.noexc76, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit.i.i, %_ZN4bssl12_GLOBAL__N_112PathVerifier22ApplyPolicyConstraintsERKNS_17ParsedCertificateE.exit.i.i
  %_ZN4bssl11cert_errors31kBasicConstraintsIndicatesNotCaE.sink.i.i = phi ptr [ @_ZN4bssl11cert_errors24kMissingBasicConstraintsE, %_ZN4bssl12_GLOBAL__N_112PathVerifier22ApplyPolicyConstraintsERKNS_17ParsedCertificateE.exit.i.i ], [ @_ZN4bssl11cert_errors31kBasicConstraintsIndicatesNotCaE, %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit.i.i ]
  %i.ne = load ptr, ptr %_ZN4bssl11cert_errors31kBasicConstraintsIndicatesNotCaE.sink.i.i, align 8, !tbaa !66
  invoke void @_ZN4bssl10CertErrors8AddErrorEPKv(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef %i.ne)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit

.noexc76:                                         ; preds = %.sink.split.i.i, %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit.i.i
  %i.nf = load ptr, ptr %i.kf, align 8, !tbaa !74
  %i.ng = load i64, ptr %i.kh, align 8, !tbaa !75
  %i.nh = load ptr, ptr %i.jg, align 8, !tbaa !74
  %i.ni = load i64, ptr %i.ji, align 8, !tbaa !75
  %i.nj = invoke noundef zeroext i1 @_ZN4bssl3dereqENS0_5InputES1_(ptr %i.nf, i64 %i.ng, ptr %i.nh, i64 %i.ni)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit

.noexc77:                                         ; preds = %.noexc76
  br i1 %i.nj, label %.noexc78, label %bb.ce

bb.ce:                                            ; preds = %.noexc77
  %i.nk = load i64, ptr %i.ca, align 8, !tbaa !210 ; 2 uses
  %i.nl = icmp eq i64 %i.nk, 0
  br i1 %i.nl, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN4bssl10CertErrors8AddErrorEPKv(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef %i.cr)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit

bb.cg:                                            ; preds = %bb.ce
  %i.nm = add i64 %i.nk, -1
  store i64 %i.nm, ptr %i.ca, align 8, !tbaa !210
  br label %.noexc78

.noexc78:                                         ; preds = %bb.cf, %bb.cg, %.noexc77
  %i.nn = load i8, ptr %i.my, align 8, !tbaa !217, !range !68, !noundef !69
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit33.i.i, label %bb.ch

_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit33.i.i: ; preds = %.noexc78
  %i.np = getelementptr inbounds nuw i8, ptr %i.dq, i64 346
  %i.nq = load i8, ptr %i.np, align 2, !tbaa !224, !range !68, !noundef !69
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit34.i.i, label %bb.ch

_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit34.i.i: ; preds = %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit33.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.dq, i64 347
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !225
  %i.nu = zext i8 %i.nt to i64                    ; 2 uses
  %i.nv = load i64, ptr %i.ca, align 8, !tbaa !210
  %i.nw = icmp ugt i64 %i.nv, %i.nu
  br i1 %i.nw, label %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit35.i.i, label %bb.ch

_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit35.i.i: ; preds = %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit34.i.i
  store i64 %i.nu, ptr %i.ca, align 8, !tbaa !210
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit35.i.i, %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit34.i.i, %_ZNK4bssl17ParsedCertificate17basic_constraintsEv.exit33.i.i, %.noexc78
  %i.nx = getelementptr inbounds nuw i8, ptr %i.dq, i64 348
  %i.ny = load i8, ptr %i.nx, align 4, !tbaa !151, !range !68, !noundef !69
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %_ZNK4bssl17ParsedCertificate9key_usageEv.exit.i.i, label %_ZN4bssl12_GLOBAL__N_112PathVerifier25PrepareForNextCertificateERKNS_17ParsedCertificateENS_10KeyPurposeEPNS_10CertErrorsE.exit.i

_ZNK4bssl17ParsedCertificate9key_usageEv.exit.i.i: ; preds = %bb.ch
  %i.oa = getelementptr inbounds nuw i8, ptr %i.dq, i64 352
  %i.ob = invoke noundef zeroext i1 @_ZNK4bssl3der9BitString10AssertsBitEm(ptr noundef nonnull align 8 dereferenceable(17) %i.oa, i64 noundef 5)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit

.noexc79:                                         ; preds = %_ZNK4bssl17ParsedCertificate9key_usageEv.exit.i.i
  br i1 %i.ob, label %_ZN4bssl12_GLOBAL__N_112PathVerifier25PrepareForNextCertificateERKNS_17ParsedCertificateENS_10KeyPurposeEPNS_10CertErrorsE.exit.i, label %bb.ci

bb.ci:                                            ; preds = %.noexc79
  invoke void @_ZN4bssl10CertErrors8AddErrorEPKv(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef %i.cs)
          to label %_ZN4bssl12_GLOBAL__N_112PathVerifier25PrepareForNextCertificateERKNS_17ParsedCertificateENS_10KeyPurposeEPNS_10CertErrorsE.exit.i unwind label %.loopexit.split-lp.loopexit

_ZN4bssl12_GLOBAL__N_112PathVerifier25PrepareForNextCertificateERKNS_17ParsedCertificateENS_10KeyPurposeEPNS_10CertErrorsE.exit.i: ; preds = %bb.ci, %.noexc79, %bb.ch
  %i.oc = load ptr, ptr %i.m, align 8, !tbaa !65  ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !71
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.of = load ptr, ptr %i.oe, align 8
  %i.og = invoke noundef zeroext i1 %i.of(ptr noundef nonnull align 8 dereferenceable(8) %i.oc)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit, !inline_history !191

.noexc81:                                         ; preds = %_ZN4bssl12_GLOBAL__N_112PathVerifier25PrepareForNextCertificateERKNS_17ParsedCertificateENS_10KeyPurposeEPNS_10CertErrorsE.exit.i
  invoke fastcc void @_ZN4bssl12_GLOBAL__N_136VerifyNoUnconsumedCriticalExtensionsERKNS_17ParsedCertificateEPNS_10CertErrorsEbNS_10KeyPurposeE(ptr noundef nonnull align 8 dereferenceable(784) %i.dq, ptr noundef %i.dr, i1 noundef zeroext %i.og, i32 noundef %4)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit

bb.cj:                                            ; preds = %.noexc70
  %i.oh = load ptr, ptr %2, align 8, !tbaa !71
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = invoke noundef zeroext i1 %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit, !inline_history !191

.noexc83:                                         ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.ol = load i64, ptr %i.bt, align 8, !tbaa !77 ; 2 uses
  %.not.i86.i = icmp eq i64 %i.ol, 0
  br i1 %.not.i86.i, label %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit.i.i.a, label %bb.ck

bb.ck:                                            ; preds = %.noexc83
  %i.om = add i64 %i.ol, -1
  store i64 %i.om, ptr %i.bt, align 8, !tbaa !77
  br label %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit.i.i.a

_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit.i.i.a: ; preds = %bb.ck, %.noexc83
  %i.on = getelementptr inbounds nuw i8, ptr %i.dq, i64 592
  %i.oo = load i8, ptr %i.on, align 8, !tbaa !219, !range !68, !noundef !69
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit15.i.i, label %.critedge.i87.i

_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit15.i.i: ; preds = %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit.i.i.a
  %i.oq = getelementptr inbounds nuw i8, ptr %i.dq, i64 593
  %26 = getelementptr inbounds nuw i8, ptr %i.dq, i64 594
  %27 = load i8, ptr %26, align 2, !tbaa !220, !range !68, !noundef !69
  %28 = trunc nuw i8 %27 to i1
  %i.or = load i8, ptr %i.oq, align 1
  %i.os = icmp eq i8 %i.or, 0
  %or.cond.i95.i = select i1 %28, i1 %i.os, i1 false
  br i1 %or.cond.i95.i, label %bb.cl, label %.critedge.i87.i

bb.cl:                                            ; preds = %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit15.i.i
  store i64 0, ptr %i.bt, align 8, !tbaa !77
  br label %.critedge.i87.i

.critedge.i87.i:                                  ; preds = %bb.cl, %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit15.i.i, %_ZNK4bssl17ParsedCertificate18policy_constraintsEv.exit.i.i.a
  invoke fastcc void @_ZN4bssl12_GLOBAL__N_136VerifyNoUnconsumedCriticalExtensionsERKNS_17ParsedCertificateEPNS_10CertErrorsEbNS_10KeyPurposeE(ptr noundef nonnull readonly align 8 dereferenceable(784) %i.dq, ptr noundef %i.dr, i1 noundef zeroext %i.ok, i32 noundef %4)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit

.noexc84:                                         ; preds = %.critedge.i87.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %.val.i.i.i = load ptr, ptr %25, align 8, !tbaa !162, !noalias !228 ; 3 uses
  %.val39.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !162, !noalias !228 ; 5 uses
  %i.ot = icmp eq ptr %.val.i.i.i, %.val39.i.i.i
  br i1 %i.ot, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.noexc84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !alias.scope !228
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !27, !alias.scope !228
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !28, !alias.scope !228
  store i64 0, ptr %i.da, align 8, !tbaa !29, !alias.scope !228
  br label %_ZN4bssl12_GLOBAL__N_116ValidPolicyGraph27GetUserConstrainedPolicySetERKSt3setINS_3der5InputESt4lessIS4_ESaIS4_EE.exit.i.i

bb.cn:                                            ; preds = %.noexc84
  %i.ou = load ptr, ptr %i.cu, align 8, !tbaa !26, !noalias !228 ; 3 uses
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.ou, null
  br i1 %.not13.i.i.i.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread242.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.cn, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i ], [ %i.ou, %bb.cn ] ; 8 uses
  %.0814.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i ], [ %i.cv, %bb.cn ]
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not17.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not17.i.i.i.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i.i:                 ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ov = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ov, align 8 ; 4 uses
  %i.ow = add i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i, -1 ; 5 uses
  %i.ox = load i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.oy = icmp ult i8 %i.ox, 85
  br i1 %i.oy, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i
  %.not = icmp eq i8 %i.ox, 85
  br i1 %.not, label %bb.cp, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  %exitcond.not.i.i.i = icmp eq i64 %i.ow, 0
  br i1 %exitcond.not.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %bb.cp
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, i64 1
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !150 ; 2 uses
  %i.pb = icmp ult i8 %i.pa, 29
  br i1 %i.pb, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1
  %.not288 = icmp eq i8 %i.pa, 29
  br i1 %.not288, label %bb.cr, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i

bb.cr:                                            ; preds = %bb.cq
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.ow, 1
  br i1 %exitcond.not.i.i.i.1, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %bb.cr
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, i64 2
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !150 ; 2 uses
  %i.pe = icmp ult i8 %i.pd, 32
  br i1 %i.pe, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2
  %.not289 = icmp eq i8 %i.pd, 32
  br i1 %.not289, label %bb.ct, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %exitcond.not.i.i.i.2 = icmp eq i64 %i.ow, 2
  br i1 %exitcond.not.i.i.i.2, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.i.3:                         ; preds = %bb.ct
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, i64 3
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !150
  %.not290 = icmp ne i8 %i.pg, 0
  %i.ph = icmp ugt i64 %i.ow, 2
  %or.cond = or i1 %.not290, %i.ph
  br i1 %or.cond, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i: ; preds = %bb.ct, %bb.cr, %bb.cp
  %.old = icmp ugt i64 %i.ow, 2
  br i1 %.old, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i
  br label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i: ; preds = %bb.co, %bb.cq, %bb.cs, %.lr.ph.i.i.i.i.i.i.i.i.3, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i ], [ 16, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i ], [ 16, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ 16, %bb.cs ], [ 16, %bb.cq ], [ 16, %bb.co ]
  %.19.i.i.i.i.i.i = phi ptr [ %.0814.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ %.015.i.i.i.i.i.i, %bb.cs ], [ %.015.i.i.i.i.i.i, %bb.cq ], [ %.015.i.i.i.i.i.i, %bb.co ] ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 %.sink.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %i.pi, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i88.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i88.i, label %_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i, !llvm.loop !196

_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i.i: ; preds = %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.thread11.i.i.i.i.i.i
  %i.pj = icmp eq ptr %.19.i.i.i.i.i.i, %i.cv
  br i1 %i.pj, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8 ; 4 uses
  %.not159.i.i.i = icmp samesign eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not159.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.cu
  %i.pk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.pk, align 8 ; 4 uses
  %i.pl = add i64 %.sroa.2.0.copyload.i.i.i.i.i.i, -1 ; 4 uses
  %umin197.i.i.i = call i64 @llvm.umin.i64(i64 %i.pl, i64 3)
  %i.pm = add nuw nsw i64 %umin197.i.i.i, 1       ; 2 uses
  %i.pn = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 1, !tbaa !150 ; 2 uses
  %i.po = icmp ugt i8 %i.pn, 85
  br i1 %i.po, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %.not291 = icmp eq i8 %i.pn, 85
  br i1 %.not291, label %bb.cw, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %exitcond198.not.i.i.i = icmp eq i64 %i.pl, 0
  br i1 %exitcond198.not.i.i.i, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %bb.cw
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 1
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !150 ; 2 uses
  %i.pr = icmp ugt i8 %i.pq, 29
  br i1 %i.pr, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %.not292 = icmp eq i8 %i.pq, 29
  br i1 %.not292, label %bb.cy, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %exitcond198.not.i.i.i.1 = icmp eq i64 %i.pl, 1
  br i1 %exitcond198.not.i.i.i.1, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %bb.cy
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 2
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !150 ; 2 uses
  %i.pu = icmp ugt i8 %i.pt, 32
  br i1 %i.pu, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %.not293 = icmp eq i8 %i.pt, 32
  br i1 %.not293, label %bb.da, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i

bb.da:                                            ; preds = %bb.cz
  %exitcond198.not.i.i.i.2 = icmp eq i64 %i.pl, 2
  br i1 %exitcond198.not.i.i.i.2, label %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %bb.da
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 3
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !150
  %.not294 = icmp eq i8 %i.pw, 0
  %.not237.i.i.i = icmp eq i64 %i.pm, %.sroa.2.0.copyload.i.i.i.i.i.i
  %or.cond314 = select i1 %.not294, i1 %.not237.i.i.i, i1 false
  br i1 %or.cond314, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i

_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i: ; preds = %bb.da, %bb.cy, %bb.cw
  %.not237.i.i.i.old = icmp eq i64 %i.pm, %.sroa.2.0.copyload.i.i.i.i.i.i
  br i1 %.not237.i.i.i.old, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i, label %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i

_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.3, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i, %_ZNKSt8_Rb_treeIN4bssl3der5InputES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i.i.i
  %i.px = load i8, ptr %i.f, align 8, !tbaa !76, !range !68, !noalias !228, !noundef !69
  %i.py = trunc nuw i8 %i.px to i1
  br i1 %i.py, label %bb.dc, label %bb.df

_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread242.i.i.i: ; preds = %bb.cn
  %i.pz = load i8, ptr %i.f, align 8, !tbaa !76, !range !68, !noalias !228, !noundef !69
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %.thread243.i.i.i, label %bb.df

.thread243.i.i.i:                                 ; preds = %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread242.i.i.i
  store i32 0, ptr %i.cw, align 8, !tbaa !25, !alias.scope !228
  store ptr null, ptr %i.cx, align 8, !tbaa !26, !alias.scope !228
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !27, !alias.scope !228
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !28, !alias.scope !228
  store i64 0, ptr %i.da, align 8, !tbaa !29, !alias.scope !228
  br label %_ZN4bssl12_GLOBAL__N_116ValidPolicyGraph27GetUserConstrainedPolicySetERKSt3setINS_3der5InputESt4lessIS4_ESaIS4_EE.exit.i.i

_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.3, %bb.cv, %bb.cx, %bb.cz, %_ZNKSt4lessIN4bssl3der5InputEEclERKS2_S5_.exit.i.i.i.i.i, %bb.cu
  %i.qb = load i8, ptr %i.f, align 8, !tbaa !76, !range !68, !noalias !228, !noundef !69
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %bb.db, label %bb.df

bb.db:                                            ; preds = %_ZNKSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EE5countERKS2_.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !228
  store ptr @_ZN4bssl13kAnyPolicyOidE, ptr %12, align 8, !noalias !228
  store i64 4, ptr %.sroa.2.0..sroa_idx.i61.i.i.i, align 8, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !228
  invoke void @_ZNSt3setIN4bssl3der5InputESt4lessIS2_ESaIS2_EEC2ESt16initializer_listIS2_ERKS4_RKS5_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr nonnull %12, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit

.noexc85:                                         ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !228
end_hunk_0
