Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.04?download=true
inline.NumInlined: 680
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling19handle_client_hello:bb.a
  %i.dh = icmp eq i16 %i.dg, %i.de
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dh
  br i1 %or.cond.i.i, label %bb.y, label %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i

_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos0_0Ba_.exit.i: ; preds = %bb.v, %.noexc236
  %i.di = icmp eq ptr %i.cx, %i.cs
  br i1 %i.di, label %.loopexit369, label %bb.u

bb.w:                                             ; preds = %.loopexit370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.dj = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
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
  %.pr = load i64, ptr %i.ak, align 8, !alias.scope !716
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
  %i.do = load i64, ptr %i.dn, align 8, !range !5, !noundef !6
  %.not149 = icmp eq i64 %i.do, -1
  br i1 %.not149, label %.thread310, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %.val202, i64 546
  %i.dq = load i8, ptr %i.dp, align 2, !range !19, !noundef !6
  %.not150 = icmp eq i8 %i.dq, 2
  br i1 %.not150, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds nuw i8, ptr %.val202, i64 208 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !6 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 384307168202282326
  call void @llvm.assume(i1 %i.dt)
  %i.du = icmp eq i64 %i.ds, 0
  br i1 %i.du, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.dv = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.dv, i8 noundef 25, i8 undef, i8 noundef 32)
          to label %bb.bj unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %.val202, i64 184 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !6 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, 288230376151711744
  call void @llvm.assume(i1 %i.dy)
  %.not151 = icmp eq i64 %i.ds, %i.dx
  br i1 %.not151, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.dz = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.dz, i8 noundef 16, i8 undef, i8 noundef 30)
          to label %bb.bi unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !6, !noundef !6
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  invoke void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig12current_time(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.ec)
          to label %bb.ag unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ed = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.ed, i8 noundef 13, i8 undef, i8 noundef 40)
          to label %bb.bh unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ae
  %i.ee = load i8, ptr %i.ag, align 8, !range !23, !noundef !6 ; 2 uses
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
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.eh = getelementptr inbounds nuw i8, ptr %.val202, i64 176
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ej = load i64, ptr %i.dw, align 8, !noundef !6 ; 2 uses
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
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !6, !noundef !6
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0265.0386, i64 16
  %i.et = load i64, ptr %i.es, align 8, !noundef !6
  %.val206 = load ptr, ptr %i.ea, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling31attempt_tls13_ticket_decryption(ptr noalias nofree noundef align 8 captures(address) dereferenceable(144) %i.f, ptr nonnull %.val206, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef %i.et)
          to label %bb.ak unwind label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.eu = load i64, ptr %i.f, align 8, !range !5, !noundef !6
  %.not154 = icmp eq i64 %i.eu, -1
  br i1 %.not154, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ev = load <2 x i64>, ptr %.sroa.4295.0..sroa_idx, align 8
  %.sroa.4295.0.copyload = load i64, ptr %.sroa.4295.0..sroa_idx, align 8
  %.sroa.6297.0.copyload = load i32, ptr %.sroa.6297.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7298.0.copyload = load i8, ptr %.sroa.7298.0..sroa_idx, align 4
  %.sroa.9300.0.copyload = load i16, ptr %.sroa.9300.0..sroa_idx, align 2
  %i.ew = getelementptr i8, ptr %.sroa.0265.0386, i64 24
  %.val207 = load i32, ptr %i.ew, align 8, !noundef !6
  %i.ex = call i64 @llvm.usub.sat.i64(i64 %i.eg, i64 %.sroa.4295.0.copyload)
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ey, i32 1000) ; 2 uses
  %i.fa = extractvalue { i32, i1 } %i.ez, 0
  %i.fb = extractvalue { i32, i1 } %i.ez, 1
  br i1 %i.fb, label %bb.am, label %bb.ap, !prof !14

bb.am:                                            ; preds = %bb.al
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  store i64 -1, ptr %i.ae, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %i.fc = load ptr, ptr %i.em, align 8, !nonnull !6, !align !11, !noundef !6
  %i.fd = load ptr, ptr %i.en, align 8, !nonnull !6, !align !11, !noundef !6
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 112
  invoke fastcc void @_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueE6filterNCNvMNtNtNtBO_6server5tls1312client_helloNtB1T_27CompleteClientHelloHandling19handle_client_hellos2_0EBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(144) %i.af, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe)
          to label %bb.aq unwind label %.loopexit

bb.ap:                                            ; preds = %bb.am, %bb.al
  %.sroa.01.0.i = phi i32 [ -1, %bb.am ], [ %i.fa, %bb.al ] ; 3 uses
  %9 = sub i32 %.val207, %.sroa.6297.0.copyload   ; 3 uses
  %10 = icmp ult i32 %.sroa.01.0.i, %9
  %11 = sub nuw i32 %9, %.sroa.01.0.i
  %i.ff = sub nuw i32 %.sroa.01.0.i, %9
  %.sroa.0.0.i239 = select i1 %10, i32 %11, i32 %i.ff
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
  %i.fi = load i64, ptr %i.af, align 8, !range !5, !noundef !6
  %.not155 = icmp eq i64 %i.fi, -1
  br i1 %.not155, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ad, ptr noundef nonnull align 8 dereferenceable(144) %i.af, i64 144, i1 false)
  %i.fj = load i64, ptr %i.dr, align 8, !noundef !6 ; 2 uses
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
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !6
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !nonnull !6, !noundef !6
  %i.fr = load ptr, ptr %i.em, align 8, !nonnull !6, !align !11, !noundef !6
  %i.fs = getelementptr inbounds nuw i8, ptr %.val202, i64 200
  %i.ft = load ptr, ptr %i.fs, align 8, !nonnull !6, !noundef !6
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %.sroa.8267.0385 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  %.val209 = load ptr, ptr %i.fv, align 8, !nonnull !6, !noundef !6
  %i.fw = getelementptr i8, ptr %i.fu, i64 16
  %.val210 = load i64, ptr %i.fw, align 8, !noundef !6
  %i.fx = invoke fastcc noundef zeroext i1 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling12check_binder(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fq, i64 noundef %i.fo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val209, i64 noundef %.val210)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.fx, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.fy = load ptr, ptr %2, align 8, !nonnull !6, !align !11, !noundef !6
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.fy, i8 noundef 17, i8 undef, i8 noundef 23)
          to label %bb.bb unwind label %bb.bd

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, ptr noundef nonnull align 8 dereferenceable(144) %i.ad, i64 144, i1 false)
  %i.fz = load i64, ptr %i.ak, align 8, !range !5, !alias.scope !717, !noundef !6
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
  %i.gd = load i64, ptr %i.ak, align 8, !range !5, !alias.scope !718, !noundef !6
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
  %i.gg = load i8, ptr %i.gf, align 2, !range !19, !noundef !6
  %i.gh = icmp eq i8 %i.gg, 1
  br i1 %i.gh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread310
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gj = load ptr, ptr %i.gi, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 240
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !6 ; 2 uses
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
  %i.gu = load i64, ptr %i.ak, align 8, !range !5, !alias.scope !719, !noundef !6
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
  %.sroa.049.0 = phi i64 [ %i.gz, %bb.br ], [ %i.hg, %bb.bu ], [ %..i, %bb.bt ]
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %.sroa.049.0, ptr %i.gx, align 8
  %.pr320 = load i64, ptr %i.ak, align 8
  %.not160 = icmp eq i64 %.pr320, -1
  br i1 %.not160, label %bb.bw, label %bb.bv
end_hunk_0
