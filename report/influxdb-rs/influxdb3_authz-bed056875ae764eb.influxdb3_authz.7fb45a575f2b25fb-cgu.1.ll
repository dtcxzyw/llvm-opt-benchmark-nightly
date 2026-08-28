Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_authz-bed056875ae764eb.influxdb3_authz.7fb45a575f2b25fb-cgu.1?download=true
inline.NumInlined: 396
inline.NumDeleted: 126
begin_hunk_0_@_RNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB7_31TokenAuthenticatorAndAuthorizerNtB9_12AuthProvider16authorize_action0B9_:bb.a

bb.bd:                                            ; preds = %bb.bc
  %i.fy = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s_10___CALLSITE)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.0.0.i195 = phi i8 [ %i.fw, %bb.bc ], [ %i.fy, %bb.bd ] ; 2 uses
  %i.ga = icmp eq i8 %.sroa.0.0.i195, 0
  br i1 %i.ga, label %.thread315, label %bb.bh

bb.bg:                                            ; preds = %bb.bh
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bh:                                            ; preds = %bb.bf
  %i.gc = load ptr, ptr @_RNvNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s_10___CALLSITE, align 8, !nonnull !4, !align !27, !noundef !4
  %i.gd = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gc, i8 noundef %.sroa.0.0.i195)
          to label %bb.bi unwind label %bb.bg

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.gd, label %bb.bv, label %.thread315

.thread315:                                       ; preds = %.noexc113, %bb.bf, %bb.bi
  %i.ge = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not327 = icmp eq i8 %i.ge, 0
  br i1 %.not327, label %bb.bj, label %bb.bu

bb.bj:                                            ; preds = %.thread315
  %i.gf = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.gg = icmp ult i64 %i.gf, 6
  call void @llvm.assume(i1 %i.gg)
  %i.gh = icmp samesign ugt i64 %i.gf, 4
  br i1 %i.gh, label %bb.bk, label %bb.bu

bb.bk:                                            ; preds = %bb.bj
  %i.gi = load ptr, ptr @_RNvNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s_10___CALLSITE, align 8, !nonnull !4, !align !27, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.gj = getelementptr i8, ptr %i.gi, i64 32
  %.val163 = load ptr, ptr %i.gj, align 8, !nonnull !4, !noundef !4
  %i.gk = getelementptr i8, ptr %i.gi, i64 40
  %.val164 = load i64, ptr %i.gk, align 8, !noundef !4
  store i64 5, ptr %i.ah, align 8, !alias.scope !173
  %.sroa.6263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.val163, ptr %.sroa.6263.0..sroa_idx, align 8, !alias.scope !173
  %.sroa.8264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.val164, ptr %.sroa.8264.0..sroa_idx, align 8, !alias.scope !173
  %i.gl = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.bm unwind label %bb.bl     ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bm:                                            ; preds = %bb.bk
  %i.gn = extractvalue { ptr, ptr } %i.gl, 0      ; 2 uses
  %i.go = extractvalue { ptr, ptr } %i.gl, 1      ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !invariant.load !4, !nonnull !4
  %i.gr = invoke noundef zeroext i1 %i.gq(ptr noundef %i.gn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bm
  br i1 %i.gr, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.gt = load ptr, ptr @_RNvNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s_10___CALLSITE, align 8, !nonnull !4, !align !27, !noundef !4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr @18, ptr %i.ae, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 41 to ptr), ptr %i.gv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.bk, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.an, ptr %i.ac, align 8
  store ptr %i.ae, ptr %i.af, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @6, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ad, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @15, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ac, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr @19, ptr %i.ha, align 8
  store i64 1, ptr %i.ag, align 8, !alias.scope !177, !noalias !180
  %.sroa.4.0..sroa_idx.i200 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx.i200, align 8, !alias.scope !177, !noalias !180
  %.sroa.5.0..sroa_idx.i201 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i201, align 8, !alias.scope !177, !noalias !180
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.gu, ptr %i.hb, align 8, !alias.scope !177, !noalias !180
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gi, ptr noundef nonnull %i.gn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.go, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bp

bb.bt:                                            ; preds = %bb.bn, %bb.br, %bb.bl
  %.pn52.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.br ], [ %i.gs, %bb.bn ], [ %i.gm, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.by

bb.bu:                                            ; preds = %bb.bp, %bb.bj, %.thread315, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %. = select i1 %i.ft, i64 -2, i64 -1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit

bb.bv:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.hd = load ptr, ptr @_RNvNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s_10___CALLSITE, align 8, !nonnull !4, !align !27, !noundef !4
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr @18, ptr %i.ak, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr inttoptr (i64 41 to ptr), ptr %i.hf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.bk, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.an, ptr %i.ai, align 8
  store ptr %i.ak, ptr %i.al, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @6, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.aj, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr @15, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.ai, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr @19, ptr %i.hk, align 8
  store i64 1, ptr %i.am, align 8
  %.sroa.8256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %.sroa.8256.0..sroa_idx, align 8
  %.sroa.9257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 3, ptr %.sroa.9257.0..sroa_idx, align 8
  %.sroa.10258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.he, ptr %.sroa.10258.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s_0Bb_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.am)
          to label %bb.bx unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bu

bb.by:                                            ; preds = %bb.bt, %bb.be, %bb.bg, %bb.bw
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %i.hl, %bb.bw ], [ %.pn52.pn.pn.pn.pn, %bb.bt ], [ %i.fz, %bb.be ], [ %i.gb, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %.body214

.body214:                                         ; preds = %bb.et, %bb.es, %bb.ei, %bb.eh, %bb.cq, %bb.cb, %bb.cd, %bb.ay, %bb.aj, %bb.al, %bb.u, %bb.f, %bb.h, %bb.dz, %bb.ek, %bb.dg, %bb.de, %bb.by, %bb.ba, %bb.af, %bb.dv, %bb.du, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.dj, %bb.di, %bb.ct, %bb.x, %bb.ac
  %.pn90.pn = phi { ptr, i32 } [ %i.kh, %bb.de ], [ %.pn39.pn.pn.pn, %bb.ay ], [ %i.km, %bb.di ], [ %i.kn, %bb.dj ], [ %i.ko, %bb.dk ], [ %i.kp, %bb.dm ], [ %i.kt, %bb.do ], [ %i.kv, %bb.dq ], [ %i.kz, %bb.ds ], [ %i.ld, %bb.du ], [ %i.le, %bb.dv ], [ %i.jf, %bb.ct ], [ %.pn23.pn.pn.pn.pn, %bb.u ], [ %i.hs, %bb.cb ], [ %.pn69.pn.pn.pn.pn, %bb.cq ], [ %i.ee, %bb.af ], [ %i.bt, %bb.h ], [ %i.mb, %bb.ek ], [ %i.ek, %bb.aj ], [ %i.em, %bb.al ], [ %i.li, %bb.dz ], [ %i.kl, %bb.dg ], [ %i.do, %bb.ac ], [ %i.mn, %bb.es ], [ %i.hu, %bb.cd ], [ %i.df, %bb.x ], [ %i.lu, %bb.eh ], [ %i.br, %bb.f ], [ %i.fs, %bb.ba ], [ %i.lu, %bb.ei ], [ %.pn59.pn.pn.pn, %bb.by ], [ %i.mn, %bb.et ]
  store i8 2, ptr %i.bc, align 8
  resume { ptr, i32 } %.pn90.pn

.noexc:                                           ; preds = %bb.c
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store ptr %i.hm, ptr %i.bk, align 8
  %i.hn = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %bb.bz, label %.thread321

bb.bz:                                            ; preds = %.noexc
  %i.hp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s1_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.hq = icmp ult i8 %i.hp, 3
  br i1 %i.hq, label %bb.cc, label %bb.ca, !prof !150

bb.ca:                                            ; preds = %bb.bz
  %i.hr = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s1_10___CALLSITE)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body214

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.0.0.i204 = phi i8 [ %i.hp, %bb.bz ], [ %i.hr, %bb.ca ] ; 2 uses
  %i.ht = icmp eq i8 %.sroa.0.0.i204, 0
  br i1 %i.ht, label %.thread321, label %bb.ce

bb.cd:                                            ; preds = %bb.ce
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body214

bb.ce:                                            ; preds = %bb.cc
  %i.hv = load ptr, ptr @_RNvNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s1_10___CALLSITE, align 8, !nonnull !4, !align !27, !noundef !4
  %i.hw = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hv, i8 noundef %.sroa.0.0.i204)
          to label %bb.cf unwind label %bb.cd

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.hw, label %bb.cs, label %.thread321

.thread321:                                       ; preds = %.noexc, %bb.cc, %bb.cf
  %i.hx = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.hx, 0
  br i1 %.not, label %bb.cg, label %bb.cr

bb.cg:                                            ; preds = %.thread321
  %i.hy = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.hz = icmp ult i64 %i.hy, 6
  tail call void @llvm.assume(i1 %i.hz)
  %i.ia = icmp samesign ugt i64 %i.hy, 4
  br i1 %i.ia, label %bb.ch, label %bb.cr

bb.ch:                                            ; preds = %bb.cg
  %i.ib = load ptr, ptr @_RNvNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s1_10___CALLSITE, align 8, !nonnull !4, !align !27, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ic = getelementptr i8, ptr %i.ib, i64 32
  %.val161 = load ptr, ptr %i.ic, align 8, !nonnull !4, !noundef !4
  %i.id = getelementptr i8, ptr %i.ib, i64 40
  %.val162 = load i64, ptr %i.id, align 8, !noundef !4
  store i64 5, ptr %i.n, align 8, !alias.scope !183
  %.sroa.6287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.val161, ptr %.sroa.6287.0..sroa_idx, align 8, !alias.scope !183
  %.sroa.8288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val162, ptr %.sroa.8288.0..sroa_idx, align 8, !alias.scope !183
  %i.ie = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.cj unwind label %bb.ci     ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cj:                                            ; preds = %bb.ch
  %i.ig = extractvalue { ptr, ptr } %i.ie, 0      ; 2 uses
  %i.ih = extractvalue { ptr, ptr } %i.ie, 1      ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !invariant.load !4, !nonnull !4
  %i.ik = invoke noundef zeroext i1 %i.ij(ptr noundef %i.ig, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cl:                                            ; preds = %bb.cj
  br i1 %i.ik, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.cr

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.im = load ptr, ptr @_RNvNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s1_10___CALLSITE, align 8, !nonnull !4, !align !27, !noundef !4
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @20, ptr %i.k, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 41 to ptr), ptr %i.io, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.bk, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.bi, ptr %i.i, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @6, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @21, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.i, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @16, ptr %i.it, align 8
  store i64 1, ptr %i.m, align 8, !alias.scope !187, !noalias !190
  %.sroa.4.0..sroa_idx.i209 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i209, align 8, !alias.scope !187, !noalias !190
  %.sroa.5.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i210, align 8, !alias.scope !187, !noalias !190
  %i.iu = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.in, ptr %i.iu, align 8, !alias.scope !187, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ib, ptr noundef nonnull %i.ig, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ih, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.cp unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.cm

bb.cq:                                            ; preds = %bb.ck, %bb.co, %bb.ci
  %.pn69.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iv, %bb.co ], [ %i.il, %bb.ck ], [ %i.if, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.body214

bb.cr:                                            ; preds = %bb.cm, %bb.cg, %.thread321, %bb.cu
  %i.iw = load i8, ptr %i.bi, align 8, !range !161, !noundef !4
  switch i8 %i.iw, label %default.unreachable343 [
    i8 0, label %bb.cv
    i8 1, label %bb.cw
    i8 2, label %bb.cx
    i8 3, label %bb.cy
    i8 4, label %bb.cz
    i8 5, label %bb.dn
    i8 6, label %bb.da
    i8 7, label %bb.dr
    i8 8, label %bb.dt
    i8 9, label %bb.dw
  ], !prof !193

bb.cs:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ix = load ptr, ptr @_RNvNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB9_31TokenAuthenticatorAndAuthorizerNtBb_12AuthProvider16authorize_action0s1_10___CALLSITE, align 8, !nonnull !4, !align !27, !noundef !4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @20, ptr %i.q, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 41 to ptr), ptr %i.iz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.bk, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.bi, ptr %i.o, align 8
  store ptr %i.q, ptr %i.r, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @6, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.p, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @21, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.o, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @16, ptr %i.je, align 8
  store i64 1, ptr %i.s, align 8
  %.sroa.8280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.8280.0..sroa_idx, align 8
  %.sroa.9281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 3, ptr %.sroa.9281.0..sroa_idx, align 8
  %.sroa.10282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.iy, ptr %.sroa.10282.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNCNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB7_31TokenAuthenticatorAndAuthorizerNtB9_12AuthProvider16authorize_action0B9_:bb.a
bb.cv:                                            ; preds = %bb.cr
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.jh = load i32, ptr %i.jg, align 4, !range !162, !noundef !4 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jj = load i32, ptr %i.ji, align 8            ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.jl = load i16, ptr %i.jk, align 2, !noundef !4
  %i.jm = trunc nuw i32 %i.jh to i1
  br i1 %i.jm, label %bb.dc, label %bb.db

bb.cw:                                            ; preds = %bb.cr
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.jo = load i32, ptr %i.jn, align 4, !noundef !4
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.jq = load i16, ptr %i.jp, align 2, !noundef !4
  %i.jr = invoke fastcc noundef zeroext i1 @_RNvNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer26check_user_database_access(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh, i32 noundef 1, i32 %i.jo, i16 noundef %i.jq)
          to label %bb.dh unwind label %bb.di

bb.cx:                                            ; preds = %bb.cr
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.jt = load i16, ptr %i.js, align 2, !noundef !4
  %i.ju = invoke fastcc noundef zeroext i1 @_RNvNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer26check_user_database_access(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh, i32 noundef 0, i32 undef, i16 noundef %i.jt)
          to label %bb.dh unwind label %bb.dj

bb.cy:                                            ; preds = %bb.cr
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #20
          to label %bb.dl unwind label %bb.dk

bb.cz:                                            ; preds = %bb.cr
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.jw = load i16, ptr %i.jv, align 2, !noundef !4
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.jy = load i16, ptr %i.jx, align 4, !noundef !4
  %i.jz = invoke fastcc noundef zeroext i1 @_RNvNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer24check_user_system_access(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh, i16 noundef %i.jw, i16 noundef %i.jy)
          to label %bb.dh unwind label %bb.dm

bb.da:                                            ; preds = %bb.cr
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.kb = load i8, ptr %i.ka, align 1, !range !60, !noundef !4 ; 2 uses
  %i.kc = icmp eq i8 %i.kb, 0
  br i1 %i.kc, label %.critedge108, label %bb.dp

bb.db:                                            ; preds = %bb.dc, %bb.cv
  %i.kd = invoke fastcc noundef zeroext i1 @_RNvNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer26check_user_database_access(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh, i32 noundef %i.jh, i32 %i.jj, i16 noundef %i.jl)
          to label %bb.dh unwind label %bb.dg

bb.dc:                                            ; preds = %bb.cv
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.jj, ptr %i.ke, align 8
  %i.kf = icmp eq i32 %i.jj, 0
  br i1 %i.kf, label %bb.dd, label %bb.db

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 9, ptr %i.h, align 8
  %i.kg = invoke { ptr, ptr } @_RNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB5_31TokenAuthenticatorAndAuthorizerNtB7_12AuthProvider16authorize_action(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.h)
          to label %bb.df unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.body214

bb.df:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ki = extractvalue { ptr, ptr } %i.kg, 0
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ki, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr @75, ptr %i.kk, align 8
  br label %bb.el

bb.dg:                                            ; preds = %bb.db
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %.body214

bb.dh:                                            ; preds = %bb.cz, %bb.cx, %bb.cw, %bb.db
  %.sroa.013.0.shrunk = phi i1 [ %i.jz, %bb.cz ], [ %i.kd, %bb.db ], [ %i.jr, %bb.cw ], [ %i.ju, %bb.cx ]
  br i1 %.sroa.013.0.shrunk, label %.critedge108, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit

bb.di:                                            ; preds = %bb.cw
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.body214

bb.dj:                                            ; preds = %bb.cx
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.body214

bb.dk:                                            ; preds = %bb.cy
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.body214

bb.dl:                                            ; preds = %bb.cy
  unreachable

bb.dm:                                            ; preds = %bb.cz
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %.body214

bb.dn:                                            ; preds = %bb.cr
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.kr = load i8, ptr %i.kq, align 1, !range !60, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.kr, ptr %i.f, align 1
  %i.ks = invoke noundef zeroext i1 @_RINvMsb_NtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissionsNtB6_11Permissions14has_permissionNtB6_14UserPermissionEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f)
          to label %.split325 unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body214

.split325:                                        ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.ks, label %.critedge108, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit

bb.dp:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.kb, ptr %i.e, align 1
  %i.ku = invoke noundef zeroext i1 @_RINvMsb_NtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissionsNtB6_11Permissions14has_permissionNtB6_14RolePermissionEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e)
          to label %.split324 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body214

.split324:                                        ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.ku, label %.critedge108, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit

bb.dr:                                            ; preds = %bb.cr
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.kx = load i8, ptr %i.kw, align 1, !range !148, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.kx, ptr %i.d, align 1
  %i.ky = invoke noundef zeroext i1 @_RINvMsb_NtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissionsNtB6_11Permissions14has_permissionNtB6_20AdminTokenPermissionEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d)
          to label %.split323 unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.body214

.split323:                                        ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ky, label %.critedge108, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit

bb.dt:                                            ; preds = %bb.cr
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.lb = load i8, ptr %i.la, align 1, !range !194, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.lb, ptr %i.c, align 1
  %i.lc = invoke noundef zeroext i1 @_RINvMsb_NtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissionsNtB6_11Permissions14has_permissionNtB6_15TokenPermissionEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c)
          to label %.split unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body214

.split:                                           ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.lc, label %.critedge108, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit

bb.dv:                                            ; preds = %bb.dw
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.body214

bb.dw:                                            ; preds = %bb.cr
  %i.lf = getelementptr i8, ptr %i.bh, i64 8
  %.val175 = load ptr, ptr %i.lf, align 8, !nonnull !4, !noundef !4
  %i.lg = getelementptr i8, ptr %i.bh, i64 16
  %.val176 = load i64, ptr %i.lg, align 8, !noundef !4
  %i.lh = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10PermissionNtB5_13SliceContains14slice_containsBI_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) @24, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val175, i64 noundef range(i64 0, 768614336404564651) %.val176)
          to label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10Permission8containsBA_.exit unwind label %bb.dv

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10Permission8containsBA_.exit: ; preds = %bb.dw
  br i1 %i.lh, label %.critedge108, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit

.critedge108:                                     ; preds = %.split325, %.split324, %.split323, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10Permission8containsBA_.exit, %.split, %bb.da, %bb.dh
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit

common.ret:                                       ; preds = %bb.en, %bb.ec, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit
  %.sink = phi i8 [ 4, %bb.en ], [ 3, %bb.ec ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit ]
  store i8 %.sink, ptr %i.bc, align 8
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit: ; preds = %bb.b, %bb.bu, %bb.er, %bb.eq, %bb.eg, %bb.ef, %bb.dh, %.split, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10Permission8containsBA_.exit, %.split323, %.split324, %.split325, %bb.bb, %.thread309, %bb.ao, %bb.au, %.critedge108
  %.sroa.9.sroa.4.0 = phi i64 [ undef, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10Permission8containsBA_.exit ], [ %.sroa.9.sroa.4.0.copyload239, %bb.ef ], [ %.sroa.9.sroa.4.0.copyload239, %bb.eg ], [ undef, %bb.au ], [ undef, %bb.ao ], [ undef, %.thread309 ], [ undef, %bb.bb ], [ undef, %bb.bu ], [ %.sroa.9.sroa.4.0.copyload240, %bb.eq ], [ %.sroa.9.sroa.4.0.copyload240, %bb.er ], [ undef, %.critedge108 ], [ undef, %bb.dh ], [ undef, %.split325 ], [ undef, %.split324 ], [ undef, %.split323 ], [ undef, %.split ], [ undef, %bb.b ]
  %.sroa.9.sroa.0.0 = phi ptr [ undef, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10Permission8containsBA_.exit ], [ %.sroa.9.sroa.0.0.copyload237.a, %bb.ef ], [ %.sroa.9.sroa.0.0.copyload237.a, %bb.eg ], [ undef, %bb.au ], [ undef, %bb.ao ], [ undef, %.thread309 ], [ undef, %bb.bb ], [ undef, %bb.bu ], [ %.sroa.9.sroa.0.0.copyload238, %bb.eq ], [ %.sroa.9.sroa.0.0.copyload238, %bb.er ], [ undef, %.critedge108 ], [ undef, %bb.dh ], [ undef, %.split325 ], [ undef, %.split324 ], [ undef, %.split323 ], [ undef, %.split ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ -1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10Permission8containsBA_.exit ], [ %i.ll, %bb.ef ], [ %i.ll, %bb.eg ], [ -1, %bb.au ], [ -1, %bb.ao ], [ -1, %.thread309 ], [ -1, %bb.bb ], [ %., %bb.bu ], [ %i.me, %bb.eq ], [ %i.me, %bb.er ], [ -2, %.critedge108 ], [ -1, %bb.dh ], [ -1, %.split325 ], [ -1, %.split324 ], [ -1, %.split323 ], [ -1, %.split ], [ -1, %bb.b ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.sroa.4.0, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  br label %common.ret

bb.dx:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #20
  unreachable

bb.dy:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #20
  unreachable

bb.dz:                                            ; preds = %bb.ea
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.val139 = load ptr, ptr %i.lk, align 8
  %i.lj = getelementptr i8, ptr %1, i64 80
  %.val140 = load ptr, ptr %i.lj, align 8, !nonnull !4, !align !27, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_(ptr %.val139, ptr nonnull %.val140) #19
          to label %.body214 unwind label %bb.ej

bb.ea:                                            ; preds = %bb.ad, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2d_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.lk, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.eb unwind label %bb.dz

bb.eb:                                            ; preds = %bb.ea
  %i.ll = load i64, ptr %i.ap, align 8, !range !195, !noundef !4 ; 3 uses
  %i.lm = icmp eq i64 %i.ll, -3
  br i1 %i.lm, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.ed:                                            ; preds = %bb.eb
  %.sroa.9.0..sroa_idx224 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.9.sroa.0.0.copyload237.a = load ptr, ptr %.sroa.9.0..sroa_idx224, align 8 ; 2 uses
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx224.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.9.sroa.4.0.copyload239 = load i64, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx224.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.val137 = load ptr, ptr %i.lk, align 8         ; 5 uses
  %i.ln = getelementptr i8, ptr %1, i64 80
  %.val138 = load ptr, ptr %i.ln, align 8, !nonnull !4, !align !27, !noundef !4 ; 5 uses
  %i.lo = load ptr, ptr %.val138, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val137) ]
  invoke void %i.lo(ptr noundef nonnull %.val137)
          to label %bb.ef unwind label %bb.eh

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.lp = getelementptr inbounds nuw i8, ptr %.val138, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ls = getelementptr inbounds nuw i8, ptr %.val138, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val137) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val137, i64 noundef range(i64 1, -9223372036854775808) %i.lq, i64 noundef range(i64 1, 536870913) %i.lt) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit

bb.eh:                                            ; preds = %bb.ee
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.val138, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %.body214, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ly = getelementptr inbounds nuw i8, ptr %.val138, i64 16
  %i.lz = load i64, ptr %i.ly, align 8, !range !6, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val137, i64 noundef range(i64 1, -9223372036854775808) %i.lw, i64 noundef range(i64 1, 536870913) %i.lz) #17
  br label %.body214

bb.ej:                                            ; preds = %bb.dz, %bb.ek
  %i.ma = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.ek:                                            ; preds = %bb.el
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val135 = load ptr, ptr %i.md, align 8
  %i.mc = getelementptr i8, ptr %1, i64 80
  %.val136 = load ptr, ptr %i.mc, align 8, !nonnull !4, !align !27, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_(ptr %.val135, ptr nonnull %.val136) #19
          to label %.body214 unwind label %bb.ej

bb.el:                                            ; preds = %bb.df, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB8_6marker4SendEL_EEB1u_4pollB2d_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.md, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.em unwind label %bb.ek

bb.em:                                            ; preds = %bb.el
  %i.me = load i64, ptr %i.g, align 8, !range !195, !noundef !4 ; 3 uses
  %i.mf = icmp eq i64 %i.me, -3
  br i1 %i.mf, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.eo:                                            ; preds = %bb.em
  %.sroa.9.0..sroa_idx225 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.9.sroa.0.0.copyload238 = load ptr, ptr %.sroa.9.0..sroa_idx225, align 8 ; 2 uses
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx225.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.9.sroa.4.0.copyload240 = load i64, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx225.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val = load ptr, ptr %i.md, align 8            ; 5 uses
  %i.mg = getelementptr i8, ptr %1, i64 80
  %.val134 = load ptr, ptr %i.mg, align 8, !nonnull !4, !align !27, !noundef !4 ; 5 uses
  %i.mh = load ptr, ptr %.val134, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i216 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i216, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.mh(ptr noundef nonnull %.val)
          to label %bb.eq unwind label %bb.es

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.mi = getelementptr inbounds nuw i8, ptr %.val134, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ml = getelementptr inbounds nuw i8, ptr %.val134, i64 16
  %i.mm = load i64, ptr %i.ml, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.mj, i64 noundef range(i64 1, 536870913) %i.mm) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsaXLCtUcOqO5_15influxdb3_authz26ResourceAuthorizationErrorENtNtB4_6marker4SendEL_EEEB2r_.exit

bb.es:                                            ; preds = %bb.ep
  %i.mn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.val134, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %.body214, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.mr = getelementptr inbounds nuw i8, ptr %.val134, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !range !6, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.mp, i64 noundef range(i64 1, 536870913) %i.ms) #17
  br label %.body214
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs5_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB7_31TokenAuthenticatorAndAuthorizerNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer9authorize0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  %.sroa.5.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.427.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 10 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
end_hunk_1
begin_hunk_2_@_RNCNvYNtNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer31TokenAuthenticatorAndAuthorizerNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe0B8_:bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %i.ge, ptr %i.hr, align 8, !noalias !332
  %i.hs = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr @10, ptr %i.hs, align 8, !noalias !332
  store i64 1, ptr %i.m, align 8, !alias.scope !384, !noalias !387
  %.sroa.4.0..sroa_idx.i77.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i77.i.i, align 8, !alias.scope !384, !noalias !387
  %.sroa.5.0..sroa_idx.i78.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 5, ptr %.sroa.5.0..sroa_idx.i78.i.i, align 8, !alias.scope !384, !noalias !387
  %i.ht = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.hh, ptr %i.ht, align 8, !alias.scope !384, !noalias !387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !332
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gv, ptr noundef nonnull %i.ha, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.cf unwind label %bb.ce, !noalias !336

bb.ce:                                            ; preds = %bb.cd
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !332
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !332
  br label %bb.cc

bb.cg:                                            ; preds = %bb.ce, %bb.ca, %bb.by
  %.pn32.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.hu, %bb.ce ], [ %i.hf, %bb.ca ], [ %i.gz, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !332
  br label %.body.i.i

bb.ch:                                            ; preds = %_RNCNCINvMs0_CsegCbah0zZ22_7backoffNtBa_7Backoff23retry_some_with_backoffNCNCINvB6_18retry_with_backoffNCNCNvYNtNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer31TokenAuthenticatorAndAuthorizerNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1E_00lEINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB35_14iox_authorizer5ErrorEB4L_E00B1C_B3V_B48_B4L_E00B1N_.exit.i.i, %bb.cc, %bb.bw, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !332
  %i.hv = load i64, ptr %i.gc, align 8, !noalias !332, !noundef !4
  %i.hw = load i32, ptr %i.gd, align 8, !range !390, !noalias !332, !noundef !4
  invoke void @_RNvNtNtCseCDlJsl44RV_5tokio4time5sleep5sleep(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.h, i64 noundef %i.hv, i32 noundef %i.hw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %bb.co unwind label %bb.cn, !noalias !336

bb.ci:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !332
  %i.hx = load ptr, ptr @_RNvNCNvMs0_CsegCbah0zZ22_7backoffNtB9_7Backoff23retry_some_with_backoff010___CALLSITE, align 8, !noalias !332, !nonnull !4, !align !27, !noundef !4 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !332
  store ptr @5, ptr %i.q, align 8, !noalias !332
  %i.hz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 99 to ptr), ptr %i.hz, align 8, !noalias !332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !332
  store ptr %i.ev, ptr %i.p, align 8, !noalias !332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !332
  %.val61.i.i = load i64, ptr %i.gc, align 8, !noalias !332, !noundef !4
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 %.val61.i.i, ptr %i.o, align 8, !noalias !332
  store ptr %i.q, ptr %i.r, align 8, !noalias !332
  %i.ib = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @6, ptr %i.ib, align 8, !noalias !332
  %i.ic = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.p, ptr %i.ic, align 8, !noalias !332
  %i.id = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @7, ptr %i.id, align 8, !noalias !332
  %i.ie = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.ia, ptr %i.ie, align 8, !noalias !332
  %i.if = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @8, ptr %i.if, align 8, !noalias !332
  %i.ig = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.o, ptr %i.ig, align 8, !noalias !332
  %i.ih = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr @9, ptr %i.ih, align 8, !noalias !332
  %i.ii = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %i.ge, ptr %i.ii, align 8, !noalias !332
  %i.ij = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr @10, ptr %i.ij, align 8, !noalias !332
  store i64 1, ptr %i.s, align 8, !noalias !332
  %.sroa.9102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.9102.0..sroa_idx.i.i, align 8, !noalias !332
  %.sroa.10103.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 5, ptr %.sroa.10103.0..sroa_idx.i.i, align 8, !noalias !332
  %.sroa.11104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.hy, ptr %.sroa.11104.0..sroa_idx.i.i, align 8, !noalias !332
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc83.i.i unwind label %bb.cm, !noalias !336

.noexc83.i.i:                                     ; preds = %bb.ci
  %i.ik = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !391
  %i.il = icmp eq i8 %i.ik, 0
  br i1 %i.il, label %bb.cj, label %_RNCNCINvMs0_CsegCbah0zZ22_7backoffNtBa_7Backoff23retry_some_with_backoffNCNCINvB6_18retry_with_backoffNCNCNvYNtNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer31TokenAuthenticatorAndAuthorizerNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1E_00lEINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB35_14iox_authorizer5ErrorEB4L_E00B1C_B3V_B48_B4L_E00B1N_.exit.i.i

bb.cj:                                            ; preds = %.noexc83.i.i
  %i.im = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !391 ; 2 uses
  %i.in = icmp ult i64 %i.im, 6
  call void @llvm.assume(i1 %i.in)
  %i.io = icmp samesign ugt i64 %i.im, 1
  br i1 %i.io, label %bb.ck, label %_RNCNCINvMs0_CsegCbah0zZ22_7backoffNtBa_7Backoff23retry_some_with_backoffNCNCINvB6_18retry_with_backoffNCNCNvYNtNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer31TokenAuthenticatorAndAuthorizerNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1E_00lEINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB35_14iox_authorizer5ErrorEB4L_E00B1C_B3V_B48_B4L_E00B1N_.exit.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.ip = load ptr, ptr @_RNvNCNvMs0_CsegCbah0zZ22_7backoffNtB9_7Backoff23retry_some_with_backoff010___CALLSITE, align 8, !noalias !391, !nonnull !4, !align !27, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !391
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !336, !nonnull !4, !noundef !4
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.it = load i64, ptr %i.is, align 8, !noalias !336, !noundef !4
  store i64 2, ptr %i.b, align 8, !noalias !391
  %.sroa.3.0..sroa_idx.i81.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ir, ptr %.sroa.3.0..sroa_idx.i81.i.i, align 8, !noalias !391
  %.sroa.5.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.it, ptr %.sroa.5.0..sroa_idx.i82.i.i, align 8, !noalias !391
  %i.iu = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc84.i.i unwind label %bb.cm, !noalias !336 ; 2 uses

.noexc84.i.i:                                     ; preds = %bb.ck
  %i.iv = extractvalue { ptr, ptr } %i.iu, 0      ; 2 uses
  %i.iw = extractvalue { ptr, ptr } %i.iu, 1      ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !invariant.load !4, !noalias !336, !nonnull !4
  %i.iz = invoke noundef zeroext i1 %i.iy(ptr noundef %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc85.i.i unwind label %bb.cm, !noalias !336, !inline_history !394

.noexc85.i.i:                                     ; preds = %.noexc84.i.i
  br i1 %i.iz, label %bb.cl, label %.noexc86.i.i

bb.cl:                                            ; preds = %.noexc85.i.i
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ip, ptr noundef nonnull %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc86.i.i unwind label %bb.cm, !noalias !336

.noexc86.i.i:                                     ; preds = %bb.cl, %.noexc85.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !391
  br label %_RNCNCINvMs0_CsegCbah0zZ22_7backoffNtBa_7Backoff23retry_some_with_backoffNCNCINvB6_18retry_with_backoffNCNCNvYNtNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer31TokenAuthenticatorAndAuthorizerNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1E_00lEINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB35_14iox_authorizer5ErrorEB4L_E00B1C_B3V_B48_B4L_E00B1N_.exit.i.i

bb.cm:                                            ; preds = %bb.cl, %.noexc84.i.i, %bb.ck, %bb.ci
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !332
  br label %.body.i.i

_RNCNCINvMs0_CsegCbah0zZ22_7backoffNtBa_7Backoff23retry_some_with_backoffNCNCINvB6_18retry_with_backoffNCNCNvYNtNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer31TokenAuthenticatorAndAuthorizerNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1E_00lEINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB35_14iox_authorizer5ErrorEB4L_E00B1C_B3V_B48_B4L_E00B1N_.exit.i.i: ; preds = %.noexc86.i.i, %bb.cj, %.noexc83.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !332
  br label %bb.ch

bb.cn:                                            ; preds = %bb.ch
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !332
  br label %.body.i.i

bb.co:                                            ; preds = %bb.ch
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.jc, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.h, i64 112, i1 false), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !332
  br label %bb.p

.body.i.i:                                        ; preds = %bb.cn, %bb.cm, %bb.cg, %bb.bs, %bb.bq, %bb.bn, %bb.bj, %bb.y, %bb.w, %bb.o
  %i.jd = phi ptr [ %i.er, %bb.bj ], [ %i.er, %bb.cm ], [ %i.er, %bb.cg ], [ %i.er, %bb.bq ], [ %i.er, %bb.bn ], [ %i.er, %bb.bs ], [ %i.er, %bb.cn ], [ %i.bo, %bb.o ], [ %i.bo, %bb.y ], [ %i.bo, %bb.w ]
  %i.je = phi ptr [ %i.es, %bb.bj ], [ %i.es, %bb.cm ], [ %i.es, %bb.cg ], [ %i.es, %bb.bq ], [ %i.es, %bb.bn ], [ %i.es, %bb.bs ], [ %i.es, %bb.cn ], [ %i.bp, %bb.o ], [ %i.bp, %bb.y ], [ %i.bp, %bb.w ]
  %i.jf = phi ptr [ %i.et, %bb.bj ], [ %i.et, %bb.cm ], [ %i.et, %bb.cg ], [ %i.et, %bb.bq ], [ %i.et, %bb.bn ], [ %i.et, %bb.bs ], [ %i.et, %bb.cn ], [ %i.bq, %bb.o ], [ %i.bq, %bb.y ], [ %i.bq, %bb.w ]
  %.pn46.pn.i.i = phi { ptr, i32 } [ %i.fx, %bb.bj ], [ %i.ja, %bb.cm ], [ %.pn32.pn.pn.pn.pn.i.i, %bb.cg ], [ %i.gm, %bb.bq ], [ %i.ga, %bb.bn ], [ %i.go, %bb.bs ], [ %i.jb, %bb.cn ], [ %i.bn, %bb.o ], [ %i.cg, %bb.y ], [ %i.cc, %bb.w ]
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz14iox_authorizer5ErrorECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.jg) #19
          to label %.body70.i.i unwind label %bb.cp, !noalias !336

bb.cp:                                            ; preds = %.body.i.i, %bb.o
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body3.i

.body3.i:                                         ; preds = %bb.cp, %bb.ag, %bb.af
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !336
  unreachable

.thread.i:                                        ; preds = %bb.bh, %bb.q
  %i.ji = phi ptr [ %i.er, %bb.bh ], [ %i.bo, %bb.q ]
  %i.jj = phi ptr [ %i.es, %bb.bh ], [ %i.bp, %bb.q ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.bh ], [ 4, %bb.q ]
  store i8 %.sink.i.ph.i, ptr %i.jj, align 8, !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.0.sroa.3.i.i)
  br label %bb.cu

bb.cq:                                            ; preds = %bb.bl
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %.sroa.595.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  %.sroa.595.0.copyload.i.i = load i32, ptr %.sroa.595.0..sroa_idx.i.i, align 8, !noalias !336
  %.sroa.094.0.copyload.i.i = load i64, ptr %i.jk, align 8, !noalias !336
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.ev, align 8, !noalias !332 ; 2 uses
  %.sroa.423.sroa.0.0.copyload.i.i = load i64, ptr %i.ew, align 8, !noalias !332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.927, ptr noundef nonnull align 8 dereferenceable(32) %i.ez, i64 32, i1 false)
  store i8 1, ptr %i.es, align 8, !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.0.sroa.3.i.i)
  %i.jl = icmp eq i64 %.sroa.022.0.copyload.i.i, -3
  br i1 %i.jl, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %.thread, %bb.cq
  %.sroa.715.1.i.i46 = phi i64 [ -2, %.thread ], [ %.sroa.022.0.copyload.i.i, %bb.cq ] ; 2 uses
  %.sroa.010.1.i.i45 = phi i64 [ undef, %.thread ], [ %.sroa.094.0.copyload.i.i, %bb.cq ] ; 2 uses
  %.sroa.715.1.i.i47 = phi i32 [ undef, %.thread ], [ %.sroa.595.0.copyload.i.i, %bb.cq ]
  %.sroa.412.sroa.0.0.i.i43 = phi i64 [ -1, %.thread ], [ %.sroa.423.sroa.0.0.copyload.i.i, %bb.cq ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs0_CsegCbah0zZ22_7backoffNtBK_7Backoff23retry_some_with_backoffNCNCINvBG_18retry_with_backoffNCNCNvYNtNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer31TokenAuthenticatorAndAuthorizerNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB2e_00lEINtNtB4_6result6ResultuNtNtB3F_14iox_authorizer5ErrorEB55_E00B2c_B4v_B4I_B55_E0EB2n_(ptr noundef nonnull align 8 %i.et)
          to label %bb.cv unwind label %bb.cs, !noalias !331

bb.cs:                                            ; preds = %bb.cr
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.ct:                                            ; preds = %.body.i
  %i.jn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !331
  unreachable

common.ret:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit, %bb.cu
  %storemerge = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit ], [ 3, %bb.cu ]
  store i8 %storemerge, ptr %i.t, align 8
  ret void

bb.cu:                                            ; preds = %bb.cq, %.thread.i
  %i.jo = phi ptr [ %i.er, %bb.cq ], [ %i.ji, %.thread.i ]
  store i8 3, ptr %i.jo, align 8, !noalias !327
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.cv:                                            ; preds = %bb.cr
  store i8 1, ptr %i.er, align 8, !noalias !327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.927, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927)
  %.not.i = icmp eq i64 %.sroa.715.1.i.i46, -2
  br i1 %.not.i, label %bb.da, label %bb.cw, !prof !395

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !396
  store i64 %.sroa.715.1.i.i46, ptr %i.a, align 8, !noalias !400
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %.sroa.412.sroa.0.0.i.i43, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !400
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.010.1.i.i45, ptr %.sroa.631.0..sroa_idx, align 8, !noalias !400
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %.sroa.715.1.i.i47, ptr %.sroa.732.0..sroa_idx, align 8, !noalias !400
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #20
          to label %bb.cy unwind label %bb.cx, !noalias !396

bb.cx:                                            ; preds = %bb.cw
  %i.jp = landingpad { ptr, i32 }
          cleanup
  %i.jq = load i64, ptr %i.a, align 8, !range !3, !alias.scope !401, !noalias !396, !noundef !4
  %.not.i.i14 = icmp eq i64 %i.jq, -1
  %.sink.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel = select i1 %.not.i.i14, ptr %.sroa.3.0..sroa_idx, ptr %i.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz14iox_authorizer5ErrorECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sink.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs0_CsegCbah0zZ22_7backoffNtBK_7Backoff18retry_with_backoffNCNCNvYNtNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer31TokenAuthenticatorAndAuthorizerNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1F_00lEINtNtB4_6result6ResultuNtNtB36_14iox_authorizer5ErrorEB4w_E0EB1O_.exit unwind label %bb.cz, !noalias !396

bb.cy:                                            ; preds = %bb.cw
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !396
  unreachable

bb.da:                                            ; preds = %bb.cv
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.js, align 8, !noundef !4 ; 4 uses
  %i.jt = getelementptr i8, ptr %1, i64 16
  %.val6 = load ptr, ptr %i.jt, align 8           ; 6 uses
  %i.ju = icmp eq ptr %.val, null
  br i1 %i.ju, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.jv = load ptr, ptr %.val6, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  invoke void %i.jv(ptr noundef nonnull %.val)
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.jw = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.jz = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !range !6, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.jx, i64 noundef range(i64 1, 536870913) %i.ka) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit

bb.df:                                            ; preds = %bb.dc
  %i.kb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %.body17, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kf = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !range !6, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.kd, i64 noundef range(i64 1, 536870913) %i.kg) #17
  br label %.body17

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit: ; preds = %bb.de, %bb.dd, %bb.da
  store i64 %.sroa.412.sroa.0.0.i.i43, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %.sroa.334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.010.1.i.i45, ptr %.sroa.334.0..sroa_idx, align 8
  br label %common.ret

bb.dh:                                            ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs0_CsegCbah0zZ22_7backoffNtBK_7Backoff18retry_with_backoffNCNCNvYNtNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer31TokenAuthenticatorAndAuthorizerNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1F_00lEINtNtB4_6result6ResultuNtNtB36_14iox_authorizer5ErrorEB4w_E0EB1O_.exit
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer24check_user_system_access(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i16 noundef %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = icmp ult i16 %1, 4
  br i1 %i.d, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.a
  %switch.idx.cast = trunc nuw i16 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %switch.idx.cast, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actionsNtB5_12SystemAction11from_bitmap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i16 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %switch.lookup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions12SystemActionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions12SystemActionEEB1d_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions12SystemActionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.q, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions12SystemActionEEB1d_.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions12SystemActionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %.sink.split

bb.e:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 %i.f
  store ptr %i.k, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.l, ptr %i.o, align 8
  %i.p = invoke noundef zeroext i1 @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions12SystemActionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1Z_3all5checkBW_NCNvNtB12_10authorizer24check_user_system_access0E0INtNtNtB27_3ops12control_flow11ControlFlowuEEB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c)
          to label %bb.h unwind label %bb.g

.sink.split:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions12SystemActionEEB1d_.exit, %bb.h
  %.sroa.0.0.ph = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions12SystemActionEEB1d_.exit ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions12SystemActionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %common.resume unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.r = xor i1 %i.p, true
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions12SystemActionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCsaXLCtUcOqO5_15influxdb3_authz10authorizer26check_user_database_access(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i32 noundef range(i32 0, 2) %1, i32 %2, i16 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [2 x i8], align 2                 ; 2 uses
  store i16 %3, ptr %i.c, align 2
  %i.d = trunc nuw i32 %1 to i1
  %spec.select = select i1 %i.d, i32 %2, i32 undef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsb_NtCsaXLCtUcOqO5_15influxdb3_authz11permissionsNtB7_15DatabaseActions19to_database_actions(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = icmp samesign eq i64 %i.h, 0
  br i1 %i.l, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions14DatabaseActionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBW_10authorizer26check_user_database_access0EBW_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %bb.a
  %i.m = phi ptr [ %i.o, %.noexc ], [ %i.f, %bb.a ] ; 2 uses
  %.val4.i = load i8, ptr %i.m, align 1, !range !59, !noalias !404, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !408
  store i8 %.val4.i, ptr %i.j, align 4, !noalias !408
  store i32 %1, ptr %i.a, align 4, !noalias !408
  store i32 %spec.select, ptr %i.k, align 4, !noalias !408
  %i.n = invoke noundef zeroext i1 @_RINvMsb_NtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissionsNtB6_11Permissions14has_permissionNtB6_18DatabasePermissionEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !408
  %.not = xor i1 %i.n, true
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  %or.cond = select i1 %.not, i1 true, i1 %i.p
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions14DatabaseActionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBW_10authorizer26check_user_database_access0EBW_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions14DatabaseActionEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #19
          to label %common.resume unwind label %bb.e

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions14DatabaseActionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBW_10authorizer26check_user_database_access0EBW_.exit: ; preds = %.noexc, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.n, %.noexc ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions14DatabaseActionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions14DatabaseActionEEB1d_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions14DatabaseActionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBW_10authorizer26check_user_database_access0EBW_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions14DatabaseActionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.q, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions14DatabaseActionEEB1d_.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions14DatabaseActionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBW_10authorizer26check_user_database_access0EBW_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role7actions14DatabaseActionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.lcssa

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB5_31TokenAuthenticatorAndAuthorizerNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 31, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 13, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs3_NtCsaXLCtUcOqO5_15influxdb3_authz10authorizerNtB5_31TokenAuthenticatorAndAuthorizerNtB7_12AuthProvider12authenticate(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !410
  %i.d = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 449) 56, i64 noundef range(i64 1, 9) 8) #17, !noalias !410 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
end_hunk_2
