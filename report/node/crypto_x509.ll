inline.NumInlined: 2597
inline.NumDeleted: 1169
begin_hunk_0_@_ZN4node6crypto15X509Certificate8toObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE:bb.a
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.cp, ptr noundef %i.ct, i32 noundef 0, i32 noundef %i.cw) #25 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.k, label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i.i, !prof !5

bb.k:                                             ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i.i

_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i.i: ; preds = %bb.k, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i, %bb.j
  %.sroa.0.0.i45.i = phi ptr [ %i.cs, %bb.j ], [ %i.cx, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i ], [ null, %bb.k ]
  %i.cz = load i8, ptr %i.cm, align 8, !range !26, !noundef !30
  %i.da = trunc nuw i8 %i.cz to i1
  store i8 0, ptr %i.cm, align 8
  br i1 %i.da, label %bb.l, label %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit.i

bb.l:                                             ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i.i
  %i.db = load ptr, ptr %6, align 8               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.de = load i64, ptr %i.dc, align 8
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #28
  br label %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit.i

_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store ptr %.sroa.0.0.i45.i, ptr %i.cl, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK7ncrypto8X509View14getFingerprintB5cxx11ERKNS_6DigestE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.569") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7ncrypto6Digest6SHA256E) #25
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.di = load i8, ptr %i.dh, align 8, !range !26, !noundef !30
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = load ptr, ptr %i.h, align 8             ; 2 uses
  br i1 %i.dj, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i50.i, label %bb.m, !prof !28

bb.m:                                             ; preds = %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit.i
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = add i64 %i.dl, 648
  %i.dn = inttoptr i64 %i.dm to ptr
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i46.i

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i50.i: ; preds = %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit.i
  %i.do = load ptr, ptr %5, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.dk, ptr noundef %i.do, i32 noundef 0, i32 noundef %i.dr) #25 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.n, label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i46.i, !prof !5

bb.n:                                             ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i50.i
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i46.i

_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i46.i: ; preds = %bb.n, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i50.i, %bb.m
  %.sroa.0.0.i47.i = phi ptr [ %i.dn, %bb.m ], [ %i.ds, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i50.i ], [ null, %bb.n ]
  %i.du = load i8, ptr %i.dh, align 8, !range !26, !noundef !30
  %i.dv = trunc nuw i8 %i.du to i1
  store i8 0, ptr %i.dh, align 8
  br i1 %i.dv, label %bb.o, label %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit51.i

bb.o:                                             ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i46.i
  %i.dw = load ptr, ptr %5, align 8               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48.i: ; preds = %bb.o
  %i.dz = load i64, ptr %i.dx, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #28
  br label %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit51.i

_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit51.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i48.i, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  store ptr %.sroa.0.0.i47.i, ptr %i.dg, align 16
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK7ncrypto8X509View14getFingerprintB5cxx11ERKNS_6DigestE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.569") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7ncrypto6Digest6SHA512E) #25
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ed = load i8, ptr %i.ec, align 8, !range !26, !noundef !30
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = load ptr, ptr %i.h, align 8             ; 2 uses
  br i1 %i.ee, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i56.i, label %bb.p, !prof !28

bb.p:                                             ; preds = %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit51.i
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = add i64 %i.eg, 648
  %i.ei = inttoptr i64 %i.eh to ptr
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i52.i

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i56.i: ; preds = %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit51.i
  %i.ej = load ptr, ptr %4, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = trunc i64 %i.el to i32
  %i.en = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.ef, ptr noundef %i.ej, i32 noundef 0, i32 noundef %i.em) #25 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.q, label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i52.i, !prof !5

bb.q:                                             ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i56.i
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #25
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i52.i

_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i52.i: ; preds = %bb.q, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i56.i, %bb.p
  %.sroa.0.0.i53.i = phi ptr [ %i.ei, %bb.p ], [ %i.en, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i56.i ], [ null, %bb.q ]
  %i.ep = load i8, ptr %i.ec, align 8, !range !26, !noundef !30
  %i.eq = trunc nuw i8 %i.ep to i1
  store i8 0, ptr %i.ec, align 8
  br i1 %i.eq, label %bb.r, label %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit57.i

bb.r:                                             ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i52.i
  %i.er = load ptr, ptr %4, align 8               ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit57.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54.i: ; preds = %bb.r
  %i.eu = load i64, ptr %i.es, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #28
  br label %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit57.i

_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit57.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i54.i, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit.i52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  store ptr %.sroa.0.0.i53.i, ptr %i.eb, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPKcEZN4node6crypto12_GLOBAL__N_111GetKeyUsageEPNS3_11EnvironmentERKN7ncrypto8X509ViewEE3$_0E9_M_invokeERKSt9_Any_dataOS1_", ptr %i.ey, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPKcEZN4node6crypto12_GLOBAL__N_111GetKeyUsageEPNS3_11EnvironmentERKN7ncrypto8X509ViewEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation", ptr %i.ex, align 8
  %i.ez = call noundef zeroext i1 @_ZNK7ncrypto8X509View10enumUsagesESt8functionIFvPKcEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #25
  %i.fa = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not.i.i58.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i58.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit57.i
  %i.fb = call noundef zeroext i1 %i.fa(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #25, !inline_history !42 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.s, %_ZN4node6crypto12_GLOBAL__N_120GetFingerprintDigestEPNS_11EnvironmentERKN7ncrypto6DigestERKNS4_8X509ViewE.exit57.i
  %i.fc = load ptr, ptr %i.a, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 200
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  br i1 %i.ez, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = add i64 %i.ff, 648
  %i.fh = inttoptr i64 %i.fg to ptr
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.fi = load ptr, ptr %2, align 8               ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 3
  %i.fp = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.fe, ptr noundef %i.fi, i64 noundef %i.fo) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.02.0.i.i = phi ptr [ %i.fp, %bb.u ], [ %i.fh, %bb.t ]
  %i.fq = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4node6crypto12_GLOBAL__N_111GetKeyUsageEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fv) #28
  br label %_ZN4node6crypto12_GLOBAL__N_111GetKeyUsageEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit.i

_ZN4node6crypto12_GLOBAL__N_111GetKeyUsageEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %.sroa.02.0.i.i, ptr %i.ew, align 16
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.fx = call fastcc ptr @_ZN4node6crypto12_GLOBAL__N_115GetSerialNumberEPNS_11EnvironmentERKN7ncrypto8X509ViewE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr %i.fx, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 2 uses
  %i.fz = call fastcc ptr @_ZN4node6crypto12_GLOBAL__N_16GetDerEPNS_11EnvironmentERKN7ncrypto8X509ViewE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr %i.fz, ptr %i.fy, align 16
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 2 uses
  %i.gb = load ptr, ptr %i.h, align 8
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = add i64 %i.gc, 648                      ; 2 uses
  store i64 %i.gd, ptr %i.ga, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 2 uses
  store i64 %i.gd, ptr %i.ge, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %12, ptr %15, align 8
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.f, ptr %.sroa.464.0..sroa_idx.i, align 8
  store ptr @"_ZNSt17_Function_handlerIFbRKN7ncrypto3RsaEEZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS5_11EnvironmentERKNS0_8X509ViewEE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.gg, align 8
  store ptr @"_ZNSt17_Function_handlerIFbRKN7ncrypto3RsaEEZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS5_11EnvironmentERKNS0_8X509ViewEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.gf, align 8
  %i.gh = call noundef zeroext i1 @_ZNK7ncrypto8X509View5ifRsaESt8functionIFbRKNS_3RsaEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %15) #25 ; 0 uses
  %i.gi = load ptr, ptr %i.gf, align 8            ; 2 uses
  %.not.i59.i = icmp eq ptr %i.gi, null
  br i1 %.not.i59.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN4node6crypto12_GLOBAL__N_111GetKeyUsageEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit.i
  %i.gj = call noundef zeroext i1 %i.gi(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3) #25, !inline_history !43 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.x, %_ZN4node6crypto12_GLOBAL__N_111GetKeyUsageEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %12, ptr %16, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr @"_ZNSt17_Function_handlerIFbRKN7ncrypto2EcEEZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS5_11EnvironmentERKNS0_8X509ViewEE3$_1E9_M_invokeERKSt9_Any_dataS3_", ptr %i.gl, align 8
  store ptr @"_ZNSt17_Function_handlerIFbRKN7ncrypto2EcEEZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS5_11EnvironmentERKNS0_8X509ViewEE3$_1E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.gk, align 8
  %i.gm = call noundef zeroext i1 @_ZNK7ncrypto8X509View4ifEcESt8functionIFbRKNS_2EcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %16) #25 ; 0 uses
  %i.gn = load ptr, ptr %i.gk, align 8            ; 2 uses
  %.not.i60.i = icmp eq ptr %i.gn, null
  br i1 %.not.i60.i, label %_ZNSt14_Function_baseD2Ev.exit61.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.go = call noundef zeroext i1 %i.gn(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3) #25, !inline_history !43 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit61.i

_ZNSt14_Function_baseD2Ev.exit61.i:               ; preds = %bb.y, %_ZNSt14_Function_baseD2Ev.exit.i
  %17 = load <16 x ptr>, ptr %12, align 16
  %.fr = freeze <16 x ptr> %17
  %18 = icmp eq <16 x ptr> %.fr, splat (ptr null)
  %19 = load ptr, ptr %i.fy, align 16
  %.fr31 = freeze ptr %19
  %20 = icmp eq ptr %.fr31, null
  %21 = load ptr, ptr %i.ga, align 8
  %.fr29 = freeze ptr %21
  %22 = icmp eq ptr %.fr29, null
  %23 = load ptr, ptr %i.ge, align 16
  %.not27 = icmp eq ptr %23, null
  %24 = bitcast <16 x i1> %18 to i16
  %25 = icmp ne i16 %24, 0
  %op.rdx = or i1 %25, %20
  %26 = or i1 %op.rdx, %22
  %op.rdx28 = select i1 %26, i1 true, i1 %.not27
  br i1 %op.rdx28, label %_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i, label %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i

_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit61.i
  %i.gp = load ptr, ptr %i.f, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 3008
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 192
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.gs, align 8
  %i.gt = call ptr @_ZN2v818DictionaryTemplate11NewInstanceENS_5LocalINS_7ContextEEENS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.067.0.i, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull %12, i64 19) #25 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i
  %i.gv = call noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %i.gt) #25
  br label %_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i

_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i: ; preds = %bb.z, %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i, %_ZNSt14_Function_baseD2Ev.exit61.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.gv, %bb.z ], [ null, %_ZN4node21NewDictionaryInstanceEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.i ], [ null, %_ZNSt14_Function_baseD2Ev.exit61.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.gw = load ptr, ptr %11, align 8              ; 2 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit, label %bb.aa, !prof !5

bb.aa:                                            ; preds = %_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = add i64 %i.gy, 560
  %i.ha = inttoptr i64 %i.gz to ptr               ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.ha, align 8
  %i.hd = load ptr, ptr %i.hb, align 8
  store ptr %i.hd, ptr %i.ha, align 8
  store ptr %i.hc, ptr %i.hb, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = add nsw i32 %i.hf, -1
  store i32 %i.hg, ptr %i.he, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.hi, %i.hk
  br i1 %.not.i.i, label %_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit, label %bb.ab, !prof !28

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.hk, ptr %i.hh, align 8
  %i.hl = load ptr, ptr %11, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.hl) #25
  br label %_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit

_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit: ; preds = %_ZN2v820EscapableHandleScope11EscapeMaybeINS_6ObjectEEENS_10MaybeLocalIT_EES5_.exit.i, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %_ZNK2v810MaybeLocalINS_6ObjectEE9FromMaybeINS_5ValueEEENS_5LocalIT_EES7_.exit

_ZNK2v810MaybeLocalINS_6ObjectEE9FromMaybeINS_5ValueEEENS_5LocalIT_EES7_.exit: ; preds = %_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit, %bb.a
  %.sroa.04.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.i.i.i, %_ZN4node6crypto12_GLOBAL__N_112X509ToObjectEPNS_11EnvironmentERKN7ncrypto8X509ViewE.exit ]
  ret ptr %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6crypto15X509CertificateC2EPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEESt10shared_ptrINS0_11ManagedX509EES7_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef readonly captures(none) %1, ptr %2, ptr noundef captures(none) %3, ptr %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3008
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN4node10BaseObjectC2EPNS_5RealmEN2v85LocalINS3_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b, ptr %2) #25
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4node6crypto15X509CertificateE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %3, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  store ptr null, ptr %i.f, align 8
  store ptr %i.g, ptr %i.e, align 8
  store ptr null, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr null, ptr %i.h, align 8
  tail call void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  %i.i = icmp eq ptr %4, null
  br i1 %i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %4, align 8                ; 2 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i16, ptr %i.o, align 2              ; 2 uses
  %i.q = icmp eq i16 %i.p, 1040
  %i.r = add i16 %i.p, -1057
  %i.s = icmp ult i16 %i.r, 1002
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.u = add i64 %i.j, 39
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 8
  %i.x = inttoptr i64 %i.w to ptr
  br label %_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.y = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %4, i32 noundef 1) #25
  br label %_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit

_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %i.z = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.z, label %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC2EPS2_.exit.i, label %_ZNK4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE12pointer_dataEv.exit.i.i

_ZNK4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE12pointer_dataEv.exit.i.i: ; preds = %_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit
  %i.aa = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i) #25
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE12pointer_dataEv.exit.i.i
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC1EPS2_E20error_and_abort_args_0) #25
  tail call void @abort() #26
  unreachable

bb.f:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE12pointer_dataEv.exit.i.i
  tail call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i) #25
  %i.ab = ptrtoint ptr %.0.i.i.i.i to i64
  br label %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC2EPS2_.exit.i

_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC2EPS2_.exit.i: ; preds = %bb.f, %_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit
  %.sroa.0.0.i = phi i64 [ 0, %_ZN4node10BaseObject6UnwrapINS_6crypto15X509CertificateEEEPT_N2v85LocalINS6_5ValueEEE.exit ], [ %i.ab, %bb.f ]
  %i.ac = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE5resetEPS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC2EPS2_.exit.i
  tail call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ac) #25
  br label %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE5resetEPS2_.exit

_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE5resetEPS2_.exit: ; preds = %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EEC2EPS2_.exit.i, %bb.g
  store i64 %.sroa.0.0.i, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_6crypto15X509CertificateELb0EE5resetEPS2_.exit, %bb.a
  ret void
}

declare void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4node6crypto15X509Certificate10MemoryInfoEPNS_13MemoryTrackerE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4node13MemoryTracker10TrackFieldINS_6crypto11ManagedX509EEEvPKcRKSt10shared_ptrIT_ES5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load i64, ptr %i.d, align 8
  %.not.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.not.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.f, %bb.c ], [ %.sroa.06.0.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8 ; 4 uses
  %i.g = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %i.g, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i, label %bb.d, !llvm.loop !44

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = ptrtoint ptr %i.b to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = urem i64 %i.l, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.b, %i.u
  br i1 %i.v, label %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq ptr %i.b, %i.z
  br i1 %i.w, label %_ZNSt13unordered_mapIPKN4node14MemoryRetainerEPNS0_18MemoryRetainerNodeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !45
end_hunk_0
