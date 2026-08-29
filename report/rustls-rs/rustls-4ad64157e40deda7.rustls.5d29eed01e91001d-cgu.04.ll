Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.04?download=true
inline.NumInlined: 680
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling19handle_client_hello:bb.a
  br label %bb.u

bb.u:                                             ; preds = %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i, %.lr.ph.i
  %i.cw = phi ptr [ %i.cp, %.lr.ph.i ], [ %i.cx, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.cy = invoke { i16, i16 } %i.cv(ptr noundef nonnull %6) #29
          to label %.noexc236 unwind label %.loopexit364, !inline_history !685 ; 2 uses

.noexc236:                                        ; preds = %bb.u
  %i.cz = extractvalue { i16, i16 } %i.cy, 0      ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.db = load i16, ptr %i.da, align 8, !range !686, !alias.scope !684, !noalias !687, !noundef !5
  %i.dc = icmp eq i16 %i.db, %i.cz
  br i1 %i.dc, label %bb.v, label %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i

bb.v:                                             ; preds = %.noexc236
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 26
  %i.de = extractvalue { i16, i16 } %i.cy, 1
  %i.df = icmp ne i16 %i.cz, 15
  %i.dg = load i16, ptr %i.dd, align 2, !alias.scope !684, !noalias !687
  %i.dh = icmp eq i16 %i.dg, %i.de
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dh
  br i1 %or.cond.i.i, label %bb.y, label %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i

_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i: ; preds = %bb.v, %.noexc236
  %i.di = icmp eq ptr %i.cx, %i.cs
  br i1 %i.di, label %.loopexit369, label %bb.u

bb.w:                                             ; preds = %.loopexit370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.dj = load ptr, ptr %2, align 8, !nonnull !5, !align !23, !noundef !5
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.dj, i8 noundef 13, i8 undef, i8 noundef 9)
          to label %bb.fc unwind label %.loopexit.split-lp365.loopexit.split-lp

.loopexit369:                                     ; preds = %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i, %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.dl = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash11add_message(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %4)
          to label %bb.em unwind label %.loopexit.split-lp365.loopexit.split-lp ; 0 uses

.thread336:                                       ; preds = %.loopexit, %.loopexit.split-lp, %bb.ea, %bb.dx, %bb.dq, %bb.dm, %bb.ef, %bb.cj, %bb.au, %bb.ek, %bb.by, %bb.bd
  %.sroa.086.2.ph = phi i8 [ 1, %bb.au ], [ 1, %bb.bd ], [ 1, %bb.by ], [ 0, %bb.ea ], [ %.sroa.086.5.ph, %bb.ek ], [ 0, %bb.cj ], [ 0, %bb.ef ], [ 0, %bb.dm ], [ 0, %bb.dq ], [ 0, %bb.dx ], [ 1, %.loopexit ], [ %.sroa.086.3.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.092.2.ph = phi i8 [ 1, %bb.au ], [ 1, %bb.bd ], [ 1, %bb.by ], [ 0, %bb.ea ], [ 1, %bb.ek ], [ 1, %bb.cj ], [ 1, %bb.ef ], [ 0, %bb.dm ], [ 0, %bb.dq ], [ 0, %bb.dx ], [ 1, %.loopexit ], [ 1, %.loopexit.split-lp ] ; 2 uses
  %.pn173.ph = phi { ptr, i32 } [ %i.fm, %bb.au ], [ %i.gb, %bb.bd ], [ %i.ho, %bb.by ], [ %i.ny, %bb.ea ], [ %.pn171.ph, %bb.ek ], [ %lpad.thr_comm.split-lp, %bb.cj ], [ %i.ob, %bb.ef ], [ %i.mp, %bb.dm ], [ %i.nb, %bb.dq ], [ %i.no, %bb.dx ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.pr = load i64, ptr %i.ak, align 8, !alias.scope !688
  %i.dm = icmp eq i64 %.pr, -1
  br i1 %i.dm, label %.body, label %bb.x

bb.x:                                             ; preds = %.thread336
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %.body unwind label %bb.be

.loopexit:                                        ; preds = %bb.ao, %bb.aj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread336

.loopexit.split-lp:                               ; preds = %bb.ab, %bb.ad, %bb.ae, %bb.af, %bb.bb, %bb.bm, %bb.bv, %bb.bw, %bb.bz, %bb.eh, %bb.ca
  %.sroa.086.3.ph = phi i8 [ 1, %bb.bb ], [ 1, %bb.ae ], [ 1, %bb.bv ], [ 1, %bb.bz ], [ 1, %bb.bw ], [ 1, %bb.bm ], [ 1, %bb.ca ], [ 0, %bb.eh ], [ 1, %bb.af ], [ 1, %bb.ad ], [ 1, %bb.ab ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread336

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.cw, ptr %i.al, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %6, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %7, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 -1, ptr %i.ak, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.val202, i64 168
  %i.do = load i64, ptr %i.dn, align 8, !range !4, !noundef !5
  %.not149 = icmp eq i64 %i.do, -1
  br i1 %.not149, label %.thread310, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %.val202, i64 546
  %i.dq = load i8, ptr %i.dp, align 2, !range !476, !noundef !5
  %.not150 = icmp eq i8 %i.dq, 2
  br i1 %.not150, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds nuw i8, ptr %.val202, i64 208 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !5 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 384307168202282326
  call void @llvm.assume(i1 %i.dt)
  %i.du = icmp eq i64 %i.ds, 0
  br i1 %i.du, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.dv = load ptr, ptr %2, align 8, !nonnull !5, !align !23, !noundef !5
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.dv, i8 noundef 25, i8 undef, i8 noundef 32)
          to label %bb.bj unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %.val202, i64 184 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, 288230376151711744
  call void @llvm.assume(i1 %i.dy)
  %.not151 = icmp eq i64 %i.ds, %i.dx
  br i1 %.not151, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.dz = load ptr, ptr %2, align 8, !nonnull !5, !align !23, !noundef !5
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.dz, i8 noundef 16, i8 undef, i8 noundef 30)
          to label %bb.bi unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !5, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  invoke void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig12current_time(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.ec)
          to label %bb.ag unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ed = load ptr, ptr %2, align 8, !nonnull !5, !align !23, !noundef !5
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.ed, i8 noundef 13, i8 undef, i8 noundef 40)
          to label %bb.bh unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ae
  %i.ee = load i8, ptr %i.ag, align 8, !range !563, !noundef !5 ; 2 uses
  %.not152 = icmp eq i8 %i.ee, -1
  br i1 %.not152, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4119.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4115.0..sroa_idx, i64 7, i1 false)
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5116.0.copyload = load i64, ptr %.sroa.5116.0..sroa_idx, align 8
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6121.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6117.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i8 %i.ee, ptr %0, align 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5116.0.copyload, ptr %.sroa.5120.0..sroa_idx, align 8
  br label %bb.bf

bb.ai:                                            ; preds = %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.eh = getelementptr inbounds nuw i8, ptr %.val202, i64 176
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ej = load i64, ptr %i.dw, align 8, !noundef !5 ; 2 uses
  %.idx387 = shl nuw nsw i64 %i.ej, 5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx387
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %.thread310, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai
  %.sroa.4295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %.sroa.6297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %.sroa.7298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %.sroa.9300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 142
  %.sroa.4288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %.sroa.6290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %.sroa.7291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 140
  %.sroa.8292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 141
  %.sroa.9293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 142
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %bb.as
  %.sroa.0265.0386 = phi ptr [ %i.ei, %.lr.ph ], [ %i.eo, %bb.as ] ; 4 uses
  %.sroa.8267.0385 = phi i64 [ 0, %.lr.ph ], [ %i.ep, %bb.as ] ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0265.0386, i64 32 ; 2 uses
  %i.ep = add nuw nsw i64 %.sroa.8267.0385, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0265.0386, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !5, !noundef !5
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0265.0386, i64 16
  %i.et = load i64, ptr %i.es, align 8, !noundef !5
  %.val206 = load ptr, ptr %i.ea, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling31attempt_tls13_ticket_decryption(ptr noalias nofree noundef align 8 captures(address) dereferenceable(144) %i.f, ptr nonnull %.val206, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef %i.et)
          to label %bb.ak unwind label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.eu = load i64, ptr %i.f, align 8, !range !4, !noundef !5
  %.not154 = icmp eq i64 %i.eu, -1
  br i1 %.not154, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ev = load <2 x i64>, ptr %.sroa.4295.0..sroa_idx, align 8
  %.sroa.4295.0.copyload = load i64, ptr %.sroa.4295.0..sroa_idx, align 8
  %.sroa.6297.0.copyload = load i32, ptr %.sroa.6297.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7298.0.copyload = load i8, ptr %.sroa.7298.0..sroa_idx, align 4
  %.sroa.9300.0.copyload = load i16, ptr %.sroa.9300.0..sroa_idx, align 2
  %i.ew = getelementptr i8, ptr %.sroa.0265.0386, i64 24
  %.val207 = load i32, ptr %i.ew, align 8, !noundef !5
  %i.ex = call i64 @llvm.usub.sat.i64(i64 %i.eg, i64 %.sroa.4295.0.copyload)
  %i.ey = trunc i64 %i.ex to i32
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ey, i32 1000) ; 2 uses
  %10 = extractvalue { i32, i1 } %9, 0
  %11 = extractvalue { i32, i1 } %9, 1
  br i1 %11, label %bb.am, label %bb.ap, !prof !26

bb.am:                                            ; preds = %bb.al
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  store i64 -1, ptr %i.ae, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %i.ez = load ptr, ptr %i.em, align 8, !nonnull !5, !align !23, !noundef !5
  %i.fa = load ptr, ptr %i.en, align 8, !nonnull !5, !align !23, !noundef !5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 112
  invoke fastcc void @_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueE6filterNCNvMNtNtNtBO_6server5tls1312client_helloNtB1T_27CompleteClientHelloHandling19handle_client_hellos2_0EBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(144) %i.af, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ez, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb)
          to label %bb.aq unwind label %.loopexit

bb.ap:                                            ; preds = %bb.am, %bb.al
  %.sroa.01.0.i = phi i32 [ -1, %bb.am ], [ %10, %bb.al ] ; 3 uses
  %i.fc = sub i32 %.val207, %.sroa.6297.0.copyload ; 3 uses
  %i.fd = icmp ult i32 %.sroa.01.0.i, %i.fc
  %i.fe = sub nuw i32 %i.fc, %.sroa.01.0.i
  %i.ff = sub nuw i32 %.sroa.01.0.i, %i.fc
  %.sroa.0.0.i239 = select i1 %i.fd, i32 %i.fe, i32 %i.ff
  %i.fg = icmp ult i32 %.sroa.0.0.i239, 60001
  %i.fh = zext i1 %i.fg to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ae, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false)
  store <2 x i64> %i.ev, ptr %.sroa.4288.0..sroa_idx, align 8
  store i32 %.sroa.6297.0.copyload, ptr %.sroa.6290.0..sroa_idx, align 8
  store i8 %.sroa.7298.0.copyload, ptr %.sroa.7291.0..sroa_idx, align 4
  store i8 %i.fh, ptr %.sroa.8292.0..sroa_idx, align 1
  store i16 %.sroa.9300.0.copyload, ptr %.sroa.9293.0..sroa_idx, align 2
  br label %bb.ao

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.fi = load i64, ptr %i.af, align 8, !range !4, !noundef !5
  %.not155 = icmp eq i64 %i.fi, -1
  br i1 %.not155, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ad, ptr noundef nonnull align 8 dereferenceable(144) %i.af, i64 144, i1 false)
  %i.fj = load i64, ptr %i.dr, align 8, !noundef !5 ; 2 uses
  %i.fk = icmp ult i64 %.sroa.8267.0385, %i.fj
  br i1 %i.fk, label %bb.aw, label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.fl = icmp eq ptr %i.eo, %i.ek
  br i1 %i.fl, label %.thread310, label %bb.aj

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8267.0385, i64 noundef %i.fj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31
          to label %bb.av unwind label %bb.bd

bb.au:                                            ; preds = %bb.ba
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i64 144, i1 false)
  br label %.thread336

bb.av:                                            ; preds = %bb.at
  unreachable

bb.aw:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !5
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !nonnull !5, !noundef !5
  %i.fr = load ptr, ptr %i.em, align 8, !nonnull !5, !align !23, !noundef !5
  %i.fs = getelementptr inbounds nuw i8, ptr %.val202, i64 200
  %i.ft = load ptr, ptr %i.fs, align 8, !nonnull !5, !noundef !5
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %.sroa.8267.0385 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  %.val209 = load ptr, ptr %i.fv, align 8, !nonnull !5, !noundef !5
  %i.fw = getelementptr i8, ptr %i.fu, i64 16
  %.val210 = load i64, ptr %i.fw, align 8, !noundef !5
  %i.fx = invoke fastcc noundef zeroext i1 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling12check_binder(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fq, i64 noundef %i.fo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val209, i64 noundef %.val210)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.fx, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.fy = load ptr, ptr %2, align 8, !nonnull !5, !align !23, !noundef !5
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.fy, i8 noundef 17, i8 undef, i8 noundef 23)
          to label %bb.bb unwind label %bb.bd

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, ptr noundef nonnull align 8 dereferenceable(144) %i.ad, i64 144, i1 false)
  %i.fz = load i64, ptr %i.ak, align 8, !range !4, !alias.scope !691, !noundef !5
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241 unwind label %bb.au

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.ad)
          to label %bb.bc unwind label %.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bf

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241: ; preds = %bb.az, %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.thread310

bb.bd:                                            ; preds = %bb.ay, %bb.aw, %bb.at
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.ad) #25
          to label %.thread336 unwind label %bb.be

bb.be:                                            ; preds = %bb.fo, %bb.fm, %bb.fl, %bb.x, %.noexc258, %bb.fg, %bb.ek, %bb.ej, %bb.ef, %bb.bd, %.body
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bf:                                            ; preds = %bb.ah, %bb.bc, %bb.ei, %bb.bj, %bb.bi, %bb.bh
  %.sroa.086.4 = phi i8 [ 1, %bb.bj ], [ 1, %bb.bi ], [ 1, %bb.bh ], [ %.sroa.086.9, %bb.ei ], [ 1, %bb.bc ], [ 1, %bb.ah ] ; 3 uses
  %i.gd = load i64, ptr %i.ak, align 8, !range !4, !alias.scope !694, !noundef !5
  %i.ge = icmp eq i64 %i.gd, -1
  br i1 %i.ge, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit243, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit243 unwind label %.loopexit.split-lp365.loopexit.split-lp

bb.bh:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.bf

bb.bi:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.bf

bb.bj:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bf

.thread310:                                       ; preds = %bb.as, %bb.ai, %bb.y, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241
  %.sroa.442.0 = phi i64 [ undef, %bb.y ], [ %.sroa.8267.0385, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241 ], [ undef, %bb.ai ], [ undef, %bb.as ]
  %.sroa.041.0 = phi i64 [ 0, %bb.y ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEEB13_.exit241 ], [ 0, %bb.ai ], [ 0, %bb.as ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val202, i64 546
  %i.gg = load i8, ptr %i.gf, align 2, !range !476, !noundef !5
  %i.gh = icmp eq i8 %i.gg, 1
  br i1 %i.gh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread310
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gj = load ptr, ptr %i.gi, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 240
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !5 ; 2 uses
  %.not158 = icmp eq i64 %i.gl, 0
  br i1 %.not158, label %bb.br, label %bb.bs

bb.bl:                                            ; preds = %.thread310
  %i.gm = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.gn = icmp ult i64 %i.gm, 6
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp samesign ugt i64 %i.gm, 3
  br i1 %i.go, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @32, ptr %i.aa, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 35, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr @32, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 35, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr @31, ptr %i.gs, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aa)
          to label %bb.bp unwind label %.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bl, %bb.bp
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 0, ptr %i.gt, align 8
  %i.gu = load i64, ptr %i.ak, align 8, !range !4, !alias.scope !697, !noundef !5
  %i.gv = icmp eq i64 %i.gu, -1
  br i1 %i.gv, label %.thread321, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %.thread321 unwind label %.thread

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.bn

.thread:                                          ; preds = %bb.bo
  %i.gw = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.ak, align 8
  br label %.body

.thread321:                                       ; preds = %bb.bo, %bb.bn
  store i64 -1, ptr %i.ak, align 8
  br label %bb.bw

bb.bq:                                            ; preds = %bb.br, %bb.bu, %bb.bt
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1340ExpectCertificateOrCompressedCertificateINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE20handle_decrypt_errorB8_:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1340ExpectCertificateOrCompressedCertificateINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE22export_keying_materialB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree readonly align 8 captures(none) %1, ptr noalias nofree nonnull readnone captures(none) %2, i64 range(i64 0, -9223372036854775808) %3, ptr noalias nofree nonnull readonly captures(none) %4, i64 range(i64 0, -9223372036854775808) %5, ptr noalias nofree readonly captures(none) %6, i64 %7) unnamed_addr #6 {
bb.a:
  store i8 16, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1340ExpectCertificateOrCompressedCertificateINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE23send_key_update_requestB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  store i8 16, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXss_CshEiLVZluVSb_7zeroizeINtB5_9ZeroizingNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20PresharedKeyIdentityENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake11ResponderIdENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13KeyShareEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20PresharedKeyIdentityENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMaptNtNtB4_7set_val9SetValZSTENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtCs7ZUl82OSlxp_6rustls5tls12NtB5_17ConnectionSecretsNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(120)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs7ZUl82OSlxp_6rustls6cryptoNtB5_12SharedSecretNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB4_3TagNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls6crypto6cipherNtB5_7AeadKeyNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCs37Y8JGf013z_9hashbrownNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameINtB2_10EquivalentBq_E10equivalentCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error16PeerIncompatibleEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(840), i8 noundef range(i8 0, 36), i8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCs7ZUl82OSlxp_6rustls6server2hs10can_resume(i64 noundef range(i64 0, 2), ptr noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i1 noundef zeroext, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(840), i8 noundef range(i8 0, 36), i8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeTbINtNtB9_3vec3VechEEE9pop_frontCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayload10into_owned(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload10into_owned(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs3ccsNtB2_23ChangeCipherSpecPayloadNtNtB4_5codec5Codec4read(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs5alertNtB2_19AlertMessagePayloadNtNtB4_5codec5Codec4read(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayload12read_version(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias nofree noundef align 8 dereferenceable(24), i16 noundef range(i16 0, 10), i16) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs5alertNtB2_19AlertMessagePayloadNtNtB4_5codec5Codec6encode(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs3ccsNtB2_23ChangeCipherSpecPayloadNtNtB4_5codec5Codec6encode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB2_7PayloadNtNtB4_5codec5Codec6encode(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23HandshakeMessagePayloadNtNtB6_5codec5Codec12get_encodingB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB6_7Payload3newINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB2_3Tag3new(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs0_NtNtCs7ZUl82OSlxp_6rustls6crypto4hmacNtB5_3TagINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(840), i8 noundef range(i8 0, 36), i8, i8 noundef range(i8 0, 75)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCs7ZUl82OSlxp_6rustls5tls12NtB5_17ConnectionSecrets10new_resume(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120), ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState22start_encryption_tls12(ptr noalias nofree noundef align 8 dereferenceable(840), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs17_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16CertificateChain10into_owned(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB5_9ExpectCcsINtNtB9_12common_state5StateNtNtB7_11client_conn20ClientConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6client5tls129ExpectCcsINtNtB8_12common_state5StateNtNtB6_11client_conn20ClientConnectionDataE19into_external_stateB8_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB5_15ExpectNewTicketINtNtB9_12common_state5StateNtNtB7_11client_conn20ClientConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1215ExpectNewTicketINtNtB8_12common_state5StateNtNtB6_11client_conn20ClientConnectionDataE19into_external_stateB8_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB2_17ExpectCertificateINtNtB6_12common_state5StateNtNtB4_11client_conn20ClientConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6client5tls1217ExpectCertificateINtNtB8_12common_state5StateNtNtB6_11client_conn20ClientConnectionDataE19into_external_stateB8_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayload19total_binder_length(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash10hash_given(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB2_16KeyScheduleEarly3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB2_16KeyScheduleEarly46resumption_psk_binder_key_and_sign_verify_data(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeE6retainNvMBH_BF_18supported_in_tls13EBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMsQ_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_18ClientHelloPayload38has_keyshare_extension_with_duplicates(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMsQ_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_18ClientHelloPayload53has_certificate_compression_extension_with_duplicates(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig12current_time(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash11add_message(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCs7ZUl82OSlxp_6rustls5tls1312key_scheduleNtB5_20KeyScheduleHandshake23set_handshake_decrypter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168), i64 noundef range(i64 0, 2), i64, ptr noalias nofree noundef align 8 dereferenceable(840)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs7_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB5_14EarlyDataState6reject(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs7_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB5_14EarlyDataState6accept(ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState23check_aligned_handshake(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(840)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState22start_outgoing_traffic(ptr noalias nofree noundef align 8 dereferenceable(840), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_15ExpectEarlyDataINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1315ExpectEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE19into_external_stateB8_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_14ExpectFinishedINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1314ExpectFinishedINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE19into_external_stateB8_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB4_40ExpectCertificateOrCompressedCertificateINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1340ExpectCertificateOrCompressedCertificateINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE19into_external_stateB8_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_17ExpectCertificateINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1317ExpectCertificateINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE19into_external_stateB8_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB5_17ExpectClientHelloINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server2hs17ExpectClientHelloINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE19into_external_stateB8_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB2_30ExpectAndSkipRejectedEarlyDataINtNtB6_12common_state5StateNtNtB4_11server_conn20ServerConnectionDataE6handle(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1330ExpectAndSkipRejectedEarlyDataINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE19into_external_stateB8_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert4FromRShE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig16supports_version(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344), i16 noundef range(i16 0, 10), i16, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig17supports_protocol(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsH_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_21ClientExtensionsInput9from_alpn(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2
end_hunk_1
