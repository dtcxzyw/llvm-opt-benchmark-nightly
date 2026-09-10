Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/handshake_server?download=true
inline.NumInlined: 789
inline.NumDeleted: 419
begin_hunk_0_@_ZN4bssl20ssl_server_handshakeEPNS_13SSL_HANDSHAKEE:bb.a
bb.po:                                            ; preds = %bb.pn, %bb.pm
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 136, ptr noundef nonnull @.str.22, i32 noundef 1303)
  br label %.critedge.i91

bb.pp:                                            ; preds = %bb.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  store ptr null, ptr %i.j, align 8, !tbaa !182
  %i.afy = call i32 @CBS_strdup(ptr noundef nonnull %26, ptr noundef nonnull %i.j)
  %.not114.not.i = icmp eq i32 %i.afy, 0
  br i1 %.not114.not.i, label %bb.pq, label %.thread.i93

.thread.i93:                                      ; preds = %bb.pp
  %i.afz = load ptr, ptr %i.ae, align 8, !tbaa !209
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 128
  %i.agb = load ptr, ptr %i.j, align 8, !tbaa !182
  call void @_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc(ptr noundef nonnull align 8 dereferenceable(8) %i.aga, ptr noundef %i.agb) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  br label %bb.pr

bb.pq:                                            ; preds = %bb.pp
  call void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.afg, i32 noundef 2, i32 noundef 80)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  br label %bb.te

bb.pr:                                            ; preds = %.thread.i93, %bb.pi
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  %i.agc = and i32 %i.afo, 1
  %.not115.i = icmp eq i32 %i.agc, 0
  br i1 %.not115.i, label %bb.ra, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #13
  %i.agd = invoke i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %25, ptr noundef nonnull %28)
          to label %bb.pt unwind label %bb.pw

bb.pt:                                            ; preds = %bb.ps
  %.not121.i = icmp ne i32 %i.agd, 0
  %i.age = load i64, ptr %i.ar, align 8
  %.not122.i94 = icmp eq i64 %i.age, 0
  %or.cond175.i = select i1 %.not121.i, i1 %.not122.i94, i1 false
  br i1 %or.cond175.i, label %bb.px, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str.22, i32 noundef 1322)
          to label %bb.pv unwind label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  invoke void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.afg, i32 noundef 2, i32 noundef 50)
          to label %.thread166.i unwind label %bb.pw

.thread166.i:                                     ; preds = %bb.pv
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  br label %bb.ta

bb.pw:                                            ; preds = %bb.pv, %bb.pu, %bb.ps
  %i.agf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4bssl5ArrayIhED2Ev.exit158.i

bb.px:                                            ; preds = %bb.pt
  %i.agg = load ptr, ptr %i.at, align 8, !tbaa !361
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !234
  %i.agj = invoke i32 @EVP_PKEY_size(ptr noundef %i.agi)
          to label %bb.py unwind label %bb.qa     ; 3 uses

bb.py:                                            ; preds = %bb.px
  %i.agk = sext i32 %i.agj to i64                 ; 8 uses
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc unwind label %bb.qa

.noexc:                                           ; preds = %bb.py
  %i.agl = icmp eq i32 %i.agj, 0
  br i1 %i.agl, label %bb.qb, label %bb.pz

bb.pz:                                            ; preds = %.noexc
  %i.agm = invoke ptr @OPENSSL_malloc(i64 noundef %i.agk)
          to label %.noexc179 unwind label %bb.qa ; 2 uses

.noexc179:                                        ; preds = %bb.pz
  %i.agn = icmp eq ptr %i.agm, null
  br i1 %i.agn, label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit, label %bb.qb

bb.qa:                                            ; preds = %bb.pz, %bb.py, %bb.px
  %i.ago = landingpad { ptr, i32 }
          cleanup
  br label %bb.qy

bb.qb:                                            ; preds = %.noexc179, %.noexc
  %.sroa.0.2.ph = phi ptr [ null, %.noexc ], [ %i.agm, %.noexc179 ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  %i.agp = load ptr, ptr %28, align 8, !tbaa !22
  %i.agq = load i64, ptr %i.au, align 8, !tbaa !23
  %i.agr = invoke noundef i32 @_ZN4bssl23ssl_private_key_decryptEPNS_13SSL_HANDSHAKEEPhPmmNS_4SpanIKhEE(ptr noundef nonnull %0, ptr noundef %.sroa.0.2.ph, ptr noundef nonnull %i.k, i64 noundef %i.agk, ptr %i.agp, i64 %i.agq)
          to label %bb.qc unwind label %bb.qd

bb.qc:                                            ; preds = %bb.qb
  switch i32 %i.agr, label %bb.qf [
    i32 1, label %bb.qe
    i32 2, label %.loopexit.i102
  ]

bb.qd:                                            ; preds = %.invoke.i106, %.invoke204.i, %bb.qi, %bb.qg, %bb.qb
  %i.ags = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  br label %bb.qy

bb.qe:                                            ; preds = %bb.qc
  br label %.loopexit.i102

bb.qf:                                            ; preds = %bb.qc
  %i.agt = load i64, ptr %i.k, align 8, !tbaa !332
  %.not123.i105 = icmp eq i64 %i.agt, %i.agk
  br i1 %.not123.i105, label %bb.qg, label %.invoke204.i

bb.qg:                                            ; preds = %bb.qf
  %i.agu = invoke noundef zeroext i1 @_ZN4bssl5ArrayIhE16InitForOverwriteEm(ptr noundef nonnull align 8 dereferenceable(16) %27, i64 noundef 48)
          to label %bb.qh unwind label %bb.qd

bb.qh:                                            ; preds = %bb.qg
  br i1 %i.agu, label %bb.qi, label %.loopexit.i102

bb.qi:                                            ; preds = %bb.qh
  %i.agv = load ptr, ptr %27, align 8, !tbaa !206
  %i.agw = load i64, ptr %i.av, align 8, !tbaa !222
  %i.agx = invoke i32 @RAND_bytes(ptr noundef %i.agv, i64 noundef %i.agw)
          to label %bb.qj unwind label %bb.qd

bb.qj:                                            ; preds = %bb.qi
  %.not124.i = icmp eq i32 %i.agx, 0
  br i1 %.not124.i, label %.loopexit.i102, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.agy = load i64, ptr %i.k, align 8, !tbaa !332 ; 6 uses
  %i.agz = load i64, ptr %i.av, align 8, !tbaa !222 ; 6 uses
  %i.aha = add i64 %i.agz, 11
  %i.ahb = icmp ult i64 %i.agy, %i.aha
  br i1 %i.ahb, label %.invoke204.i, label %bb.ql

.invoke204.i:                                     ; preds = %bb.qk, %bb.qf
  %i.ahc = phi i32 [ 1349, %bb.qf ], [ 1366, %bb.qk ]
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 138, ptr noundef nonnull @.str.22, i32 noundef %i.ahc)
          to label %.invoke.i106 unwind label %bb.qd

.invoke.i106:                                     ; preds = %.invoke204.i
  invoke void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.afg, i32 noundef 2, i32 noundef 51)
          to label %.loopexit.i102 unwind label %bb.qd

bb.ql:                                            ; preds = %bb.qk
  %i.ahd = sub i64 %i.agy, %i.agz                 ; 5 uses
  switch i32 %i.agj, label %bb.qo [
    i32 0, label %bb.qm
    i32 1, label %bb.qn
  ]

bb.qm:                                            ; preds = %bb.ql
  call void @abort() #14
  unreachable

bb.qn:                                            ; preds = %bb.ql
  call void @abort() #14
  unreachable

bb.qo:                                            ; preds = %bb.ql
  %i.ahe = load i8, ptr %.sroa.0.2.ph, align 1, !tbaa !175
  %i.ahf = zext i8 %i.ahe to i64
  %i.ahg = add nsw i64 %i.ahf, -1
  %i.ahh = getelementptr inbounds nuw i8, ptr %.sroa.0.2.ph, i64 1
  %i.ahi = load i8, ptr %i.ahh, align 1, !tbaa !175
  %i.ahj = xor i8 %i.ahi, 2
  %i.ahk = zext i8 %i.ahj to i64
  %i.ahl = add nsw i64 %i.ahk, -1
  %.neg.i.i.i.i.i180.i = and i64 %i.ahl, %i.ahg
  %i.ahm = ashr i64 %.neg.i.i.i.i.i180.i, 63
  %i.ahn = trunc nsw i64 %i.ahm to i32
  %i.aho = and i32 %i.ahn, 255                    ; 3 uses
  %i.ahp = add i64 %i.ahd, -1                     ; 4 uses
  %i.ahq = icmp ugt i64 %i.ahp, 2
  br i1 %i.ahq, label %.lr.ph.preheader.i108, label %._crit_edge.i107

.lr.ph.preheader.i108:                            ; preds = %bb.qo
  %i.ahr = add nsw i64 %i.agk, -2
  %i.ahs = add i64 %i.agy, -4
  %i.aht = sub i64 %i.ahs, %i.agz
  %.not201.not.i = icmp ugt i64 %i.ahr, %i.aht
  br i1 %.not201.not.i, label %.lr.ph.i109.preheader, label %bb.qq

.lr.ph.i109.preheader:                            ; preds = %.lr.ph.preheader.i108
  %i.ahu = add i64 %i.agy, -3
  %i.ahv = sub i64 %i.ahu, %i.agz                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ahv, 8
  br i1 %min.iters.check, label %.lr.ph.i109.preheader339, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i109.preheader
  %n.vec = and i64 %i.ahv, -8                     ; 3 uses
  %i.ahw = or disjoint i64 %n.vec, 2
  %71 = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.aho, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %71, %vector.ph ], [ %74, %vector.body ]
  %vec.phi337 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %75, %vector.body ]
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.0.2.ph, i64 %index ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 2
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 6
  %wide.load = load <4 x i8>, ptr %i.ahy, align 1, !tbaa !175
  %wide.load338 = load <4 x i8>, ptr %i.ahz, align 1, !tbaa !175
  %i.aia = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.aib = icmp eq <4 x i8> %wide.load338, zeroinitializer
  %72 = select <4 x i1> %i.aia, <4 x i32> splat (i32 -256), <4 x i32> splat (i32 -1)
  %73 = select <4 x i1> %i.aib, <4 x i32> splat (i32 -256), <4 x i32> splat (i32 -1)
  %74 = and <4 x i32> %72, %vec.phi               ; 2 uses
  %75 = and <4 x i32> %73, %vec.phi337            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aic = icmp eq i64 %index.next, %n.vec
  br i1 %i.aic, label %middle.block, label %vector.body, !llvm.loop !259

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %75, %74
  %76 = call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ahv, %n.vec
  br i1 %cmp.n, label %._crit_edge.i107, label %.lr.ph.i109.preheader339

.lr.ph.i109.preheader339:                         ; preds = %.lr.ph.i109.preheader, %middle.block
  %.082187.i.ph = phi i64 [ 2, %.lr.ph.i109.preheader ], [ %i.ahw, %middle.block ]
  %.083186.i.ph = phi i32 [ %i.aho, %.lr.ph.i109.preheader ], [ %76, %middle.block ]
  br label %.lr.ph.i109

._crit_edge.i107:                                 ; preds = %.lr.ph.i109, %middle.block, %bb.qo
  %.083.lcssa.i = phi i32 [ %i.aho, %bb.qo ], [ %76, %middle.block ], [ %77, %.lr.ph.i109 ]
  %i.aid = icmp ult i64 %i.ahp, %i.agk
  br i1 %i.aid, label %bb.qr, label %bb.qp

bb.qp:                                            ; preds = %._crit_edge.i107
  call void @abort() #14
  unreachable

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.preheader339, %.lr.ph.i109
  %.082187.i = phi i64 [ %i.aih, %.lr.ph.i109 ], [ %.082187.i.ph, %.lr.ph.i109.preheader339 ] ; 2 uses
  %.083186.i = phi i32 [ %77, %.lr.ph.i109 ], [ %.083186.i.ph, %.lr.ph.i109.preheader339 ]
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.0.2.ph, i64 %.082187.i
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !175
  %.not183.i = icmp eq i8 %i.aif, 0
  %i.aig = select i1 %.not183.i, i32 -256, i32 -1
  %77 = and i32 %i.aig, %.083186.i                ; 2 uses
  %i.aih = add nuw i64 %.082187.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aih, %i.ahp
  br i1 %exitcond.not.i, label %._crit_edge.i107, label %.lr.ph.i109, !llvm.loop !260

bb.qq:                                            ; preds = %.lr.ph.preheader.i108
  call void @abort() #14
  unreachable

bb.qr:                                            ; preds = %._crit_edge.i107
  %i.aii = getelementptr inbounds nuw i8, ptr %.sroa.0.2.ph, i64 %i.ahp
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !175
  %i.aik = icmp ult i64 %i.ahd, %i.agk
  br i1 %i.aik, label %bb.qt, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  call void @abort() #14
  unreachable

bb.qt:                                            ; preds = %bb.qr
  %i.ail = add nuw i64 %i.ahd, 1                  ; 2 uses
  %i.aim = icmp ult i64 %i.ail, %i.agk
  br i1 %i.aim, label %78, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  call void @abort() #14
  unreachable

78:                                               ; preds = %bb.qt
  %.not192.i = icmp eq i64 %i.agz, 0
  br i1 %.not192.i, label %.loopexit.i102, label %.lr.ph191.i

.lr.ph191.i:                                      ; preds = %78
  %i.ain = getelementptr inbounds nuw i8, ptr %.sroa.0.2.ph, i64 %i.ail
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !175
  %79 = load i16, ptr %i.aw, align 4, !tbaa !339  ; 2 uses
  %80 = trunc i16 %79 to i8
  %isneg182.i = icmp eq i8 %i.aio, %80
  %81 = lshr i16 %79, 8
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.0.2.ph, i64 %i.ahd
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !175
  %82 = zext i8 %i.aiq to i16
  %isneg181.i = icmp eq i16 %81, %82
  %83 = select i1 %isneg182.i, i1 %isneg181.i, i1 false
  %isneg.i = icmp eq i8 %i.aij, 0
  %84 = select i1 %83, i1 %isneg.i, i1 false
  %85 = zext nneg i32 %.083.lcssa.i to i64
  %86 = select i1 %84, i64 %85, i64 0
  %87 = add i64 %i.agz, %i.agk                    ; 2 uses
  %88 = sub i64 %87, %i.agy
  %invariant.gep = getelementptr i8, ptr %.sroa.0.2.ph, i64 %i.ahd
  %exitcond.not335.a = icmp eq i64 %87, %i.agy
  br i1 %exitcond.not335.a, label %.lr.ph191.i._crit_edge, label %_ZN4bssl5ArrayIhEixEm.exit157.i.preheader

_ZN4bssl5ArrayIhEixEm.exit157.i.preheader:        ; preds = %.lr.ph191.i
  %i.air = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %86) #16, !srcloc !519
  %i.ais = trunc i64 %i.air to i8                 ; 2 uses
  %i.ait = xor i8 %i.ais, -1
  br label %_ZN4bssl5ArrayIhEixEm.exit157.i

bb.qv:                                            ; preds = %_ZN4bssl5ArrayIhEixEm.exit157.i
  %exitcond.not = icmp eq i64 %i.ajb, %88
  br i1 %exitcond.not, label %.lr.ph191.i._crit_edge, label %_ZN4bssl5ArrayIhEixEm.exit157.i, !llvm.loop !261

.lr.ph191.i._crit_edge:                           ; preds = %.lr.ph191.i, %bb.qv
  call void @abort() #14
  unreachable

_ZN4bssl5ArrayIhEixEm.exit157.i:                  ; preds = %_ZN4bssl5ArrayIhEixEm.exit157.i.preheader, %bb.qv
  %.081189.i336 = phi i64 [ %i.ajb, %bb.qv ], [ 0, %_ZN4bssl5ArrayIhEixEm.exit157.i.preheader ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.081189.i336
  %i.aiu = load i8, ptr %gep, align 1, !tbaa !175
  %i.aiv = load ptr, ptr %27, align 8, !tbaa !206
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 %.081189.i336 ; 2 uses
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !175
  %i.aiy = and i8 %i.aiu, %i.ais
  %i.aiz = and i8 %i.aix, %i.ait
  %i.aja = or disjoint i8 %i.aiy, %i.aiz
  store i8 %i.aja, ptr %i.aiw, align 1, !tbaa !175
  %i.ajb = add nuw i64 %.081189.i336, 1           ; 3 uses
  %i.ajc = load i64, ptr %i.av, align 8, !tbaa !222
  %i.ajd = icmp ult i64 %i.ajb, %i.ajc
  br i1 %i.ajd, label %bb.qv, label %.loopexit.i102, !llvm.loop !261

.loopexit.i102:                                   ; preds = %_ZN4bssl5ArrayIhEixEm.exit157.i, %78, %.invoke.i106, %bb.qj, %bb.qh, %bb.qe, %bb.qc
  %i.aje = phi i1 [ false, %bb.qc ], [ false, %bb.qh ], [ false, %.invoke.i106 ], [ true, %78 ], [ false, %bb.qe ], [ false, %bb.qj ], [ true, %_ZN4bssl5ArrayIhEixEm.exit157.i ]
  %.3.i103 = phi i32 [ 0, %bb.qc ], [ 0, %bb.qh ], [ 0, %.invoke.i106 ], [ 0, %78 ], [ 9, %bb.qe ], [ 0, %bb.qj ], [ 0, %_ZN4bssl5ArrayIhEixEm.exit157.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  br label %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit

_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit:       ; preds = %.noexc179, %.loopexit.i102
  %.sroa.0.2205 = phi ptr [ %.sroa.0.2.ph, %.loopexit.i102 ], [ null, %.noexc179 ]
  %.387.i = phi i1 [ %i.aje, %.loopexit.i102 ], [ false, %.noexc179 ]
  %.4.i95 = phi i32 [ %.3.i103, %.loopexit.i102 ], [ 0, %.noexc179 ] ; 2 uses
  invoke void @OPENSSL_free(ptr noundef %.sroa.0.2205)
          to label %bb.qx unwind label %bb.qw

bb.qw:                                            ; preds = %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit
  %i.ajf = landingpad { ptr, i32 }
          catch ptr null
  %i.ajg = extractvalue { ptr, i32 } %i.ajf, 0
  call void @__clang_call_terminate(ptr %i.ajg) #14
  unreachable

bb.qx:                                            ; preds = %_ZN4bssl5ArrayIhE16InitForOverwriteEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  br i1 %.387.i, label %bb.rp, label %bb.ta

bb.qy:                                            ; preds = %bb.qd, %bb.qa
  %.sroa.0.1 = phi ptr [ %.sroa.0.2.ph, %bb.qd ], [ null, %bb.qa ]
  %.pn127.pn.i = phi { ptr, i32 } [ %i.ags, %bb.qd ], [ %i.ago, %bb.qa ]
  invoke void @OPENSSL_free(ptr noundef %.sroa.0.1)
          to label %_ZN4bssl5ArrayIhED2Ev.exit158.i unwind label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.ajh = landingpad { ptr, i32 }
          catch ptr null
  %i.aji = extractvalue { ptr, i32 } %i.ajh, 0
  call void @__clang_call_terminate(ptr %i.aji) #14
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit158.i:                  ; preds = %bb.qy, %bb.pw
  %.pn130.i = phi { ptr, i32 } [ %i.agf, %bb.pw ], [ %.pn127.pn.i, %bb.qy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  br label %bb.tc

bb.ra:                                            ; preds = %bb.pr
  %i.ajj = and i32 %i.afo, 2
  %.not116.i = icmp eq i32 %i.ajj, 0
  br i1 %.not116.i, label %bb.rm, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  %i.ajk = invoke i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %25, ptr noundef nonnull %29)
          to label %bb.rc unwind label %bb.rf

bb.rc:                                            ; preds = %bb.rb
  %.not118.i = icmp ne i32 %i.ajk, 0
  %i.ajl = load i64, ptr %i.ar, align 8
  %.not119.i = icmp eq i64 %i.ajl, 0
  %or.cond177.i = select i1 %.not118.i, i1 %.not119.i, i1 false
  br i1 %or.cond177.i, label %bb.rg, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str.22, i32 noundef 1398)
          to label %bb.re unwind label %bb.rf

bb.re:                                            ; preds = %bb.rd
  invoke void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.afg, i32 noundef 2, i32 noundef 50)
          to label %.critedge145.i unwind label %bb.rf

bb.rf:                                            ; preds = %bb.re, %bb.rd, %bb.rb
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  br label %bb.rl

bb.rg:                                            ; preds = %bb.rc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  store i8 50, ptr %i.l, align 1, !tbaa !175
  %i.ajn = load ptr, ptr %i.ax, align 8, !tbaa !225 ; 2 uses
  %i.ajo = load ptr, ptr %29, align 8, !tbaa !22
  %i.ajp = load i64, ptr %i.ay, align 8, !tbaa !23
  %i.ajq = load ptr, ptr %i.ajn, align 8, !tbaa !227
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 40
  %i.ajs = load ptr, ptr %i.ajr, align 8
  %i.ajt = invoke noundef zeroext i1 %i.ajs(ptr noundef nonnull align 8 dereferenceable(8) %i.ajn, ptr noundef nonnull %27, ptr noundef nonnull %i.l, ptr %i.ajo, i64 %i.ajp)
          to label %bb.rh unwind label %bb.rj, !call_target !523

bb.rh:                                            ; preds = %bb.rg
  br i1 %i.ajt, label %.thread169.i, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.aju = load i8, ptr %i.l, align 1, !tbaa !175
  %i.ajv = zext i8 %i.aju to i32
  invoke void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.afg, i32 noundef 2, i32 noundef %i.ajv)
          to label %bb.rk unwind label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %bb.rg
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  br label %bb.rl

.thread169.i:                                     ; preds = %bb.rh
  call void @_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef null) #13
  call void @_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  br label %bb.rp

bb.rk:                                            ; preds = %bb.ri
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  br label %bb.ta

bb.rl:                                            ; preds = %bb.rj, %bb.rf
  %.pn.i110 = phi { ptr, i32 } [ %i.ajm, %bb.rf ], [ %i.ajw, %bb.rj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  br label %bb.tc

bb.rm:                                            ; preds = %bb.ra
  %i.ajx = and i32 %i.afo, 4
  %.not117.i = icmp eq i32 %i.ajx, 0
  br i1 %.not117.i, label %bb.rn, label %bb.rp

bb.rn:                                            ; preds = %bb.rm
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.22, i32 noundef 1414)
          to label %.invoke202.i.a unwind label %bb.ro

bb.ro:                                            ; preds = %bb.sy, %bb.sw, %bb.su, %.invoke202.i.a, %bb.rr, %bb.rn
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  br label %bb.tc

bb.rp:                                            ; preds = %bb.rm, %.thread169.i, %bb.qx
  %.8.i = phi i32 [ %.4.i95, %bb.qx ], [ 0, %.thread169.i ], [ 0, %bb.rm ]
  br i1 %.not.i89, label %bb.su, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.ajz = load ptr, ptr %i.af, align 8, !tbaa !174
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 72 ; 2 uses
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !235
  %i.akc = icmp eq ptr %i.akb, null
  br i1 %i.akc, label %bb.rr, label %bb.rs

bb.rr:                                            ; preds = %bb.rq
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.22, i32 noundef 1423)
          to label %.invoke202.i.a unwind label %bb.ro

.invoke202.i.a:                                   ; preds = %bb.rr, %bb.rn
  %i.akd = phi i32 [ 80, %bb.rr ], [ 40, %bb.rn ]
  invoke void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.afg, i32 noundef 2, i32 noundef %i.akd)
          to label %bb.ta unwind label %bb.ro

bb.rs:                                            ; preds = %bb.rq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  %i.ake = load ptr, ptr %i.aka, align 8, !tbaa !235
  %i.akf = load ptr, ptr %i.ae, align 8, !tbaa !209
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 128
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !182
  %i.aki = invoke noundef i32 %i.ake(ptr noundef nonnull %i.afg, ptr noundef %i.akh, ptr noundef nonnull %i.m, i32 noundef 256)
          to label %bb.rt unwind label %bb.rv     ; 5 uses

bb.rt:                                            ; preds = %bb.rs
  %i.akj = icmp ugt i32 %i.aki, 256
  br i1 %i.akj, label %bb.ru, label %bb.rw

bb.ru:                                            ; preds = %bb.rt
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.22, i32 noundef 1433)
          to label %.invoke203.i unwind label %bb.rv

bb.rv:                                            ; preds = %bb.rz, %.invoke203.i, %bb.rx, %bb.ru, %bb.rs
  %i.akk = landingpad { ptr, i32 }
          cleanup
  br label %bb.st

bb.rw:                                            ; preds = %bb.rt
  %i.akl = icmp eq i32 %i.aki, 0
  br i1 %i.akl, label %bb.rx, label %bb.ry

bb.rx:                                            ; preds = %bb.rw
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 195, ptr noundef nonnull @.str.22, i32 noundef 1438)
          to label %.invoke203.i unwind label %bb.rv

.invoke203.i:                                     ; preds = %bb.rx, %bb.ru
  %i.akm = phi i32 [ 115, %bb.rx ], [ 80, %bb.ru ]
  invoke void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.afg, i32 noundef 2, i32 noundef %i.akm)
          to label %.thread170.i unwind label %bb.rv

bb.ry:                                            ; preds = %bb.rw
  %i.akn = and i32 %i.afo, 4
  %.not132.i = icmp eq i32 %i.akn, 0
  br i1 %.not132.i, label %bb.sb, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.ako = zext nneg i32 %i.aki to i64
  %i.akp = invoke noundef zeroext i1 @_ZN4bssl5ArrayIhE4InitEm(ptr noundef nonnull align 8 dereferenceable(16) %27, i64 noundef %i.ako)
          to label %bb.sa unwind label %bb.rv

bb.sa:                                            ; preds = %bb.rz
  br i1 %i.akp, label %bb.sb, label %.thread170.i

bb.sb:                                            ; preds = %bb.sa, %bb.ry
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  invoke void @CBB_zero(ptr noundef nonnull align 8 dereferenceable(48) %30)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEEC2Ev.exit.i97 unwind label %bb.sn

end_hunk_0
begin_hunk_1_@CBB_add_bytes
declare i32 @CBB_add_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CBB_add_u8_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @SSL_CIPHER_get_protocol_id(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_add_u8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl26ssl_add_serverhello_tlsextEPNS_13SSL_HANDSHAKEEP6cbb_st(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl19ssl_add_message_cbbEP6ssl_stP6cbb_st(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #2

declare void @CBB_zero(ptr noundef) local_unnamed_addr #2

declare void @CBB_cleanup(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl26ssl_send_tls12_certificateEPNS_13SSL_HANDSHAKEE(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_add_u24_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CRYPTO_BUFFER_data(ptr noundef) local_unnamed_addr #2

declare i64 @CRYPTO_BUFFER_len(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_init(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @CBB_add_u16_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl11SSLKeyShare6CreateEt(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8, i16 noundef zeroext) local_unnamed_addr #2

declare ptr @CBB_data(ptr noundef) local_unnamed_addr #2

declare i64 @CBB_len(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl14CBBFinishArrayEP6cbb_stPNS_5ArrayIhEE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_size(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_reserve(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl20ssl_private_key_signEPNS_13SSL_HANDSHAKEEPhPmmtNS_4SpanIKhEE(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext, ptr noundef byval(%"class.bssl::Span.120") align 8) local_unnamed_addr #2

declare i32 @CBB_did_write(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl24tls12_add_verify_sigalgsEPKNS_13SSL_HANDSHAKEEP6cbb_st(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl22ssl_add_client_CA_listEPKNS_13SSL_HANDSHAKEEP6cbb_st(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl20ssl_parse_cert_chainEPhPSt10unique_ptrI22stack_st_CRYPTO_BUFFERNS_8internal7DeleterEEPS1_I11evp_pkey_stS4_ES0_P6cbs_stP21crypto_buffer_pool_st(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl20ssl_verify_peer_certEPNS_13SSL_HANDSHAKEE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4bssl5ArrayIhE16InitForOverwriteEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !206
  tail call void @OPENSSL_free(ptr noundef %i.a)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZN4bssl5ArrayIhE17InitUninitializedEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef %1) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !206
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4bssl5ArrayIhE17InitUninitializedEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.e, align 8, !tbaa !222
  br label %_ZN4bssl5ArrayIhE17InitUninitializedEm.exit

_ZN4bssl5ArrayIhE17InitUninitializedEm.exit:      ; preds = %bb.a, %bb.c, %bb.b
  %.0.i3 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.a ]
  ret i1 %.0.i3
}

declare noundef i32 @_ZN4bssl23ssl_private_key_decryptEPNS_13SSL_HANDSHAKEEPhPmmNS_4SpanIKhEE(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !225    ; 4 uses
  store ptr %1, ptr %0, align 8, !tbaa !225
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt15__uniq_ptr_implIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #13, !call_target !232, !inline_history !629
  invoke void @OPENSSL_free(ptr noundef nonnull %i.a)
          to label %_ZNSt15__uniq_ptr_implIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #14
  unreachable

_ZNSt15__uniq_ptr_implIN4bssl11SSLKeyShareENS0_8internal7DeleterEE5resetEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4bssl5ArrayIhE4InitEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !206
  tail call void @OPENSSL_free(ptr noundef %i.a)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZN4bssl5ArrayIhE17InitUninitializedEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef %1) ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !206
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4bssl5ArrayIhE17InitUninitializedEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.e, align 8, !tbaa !222
  store i8 0, ptr %i.c, align 1, !tbaa !175
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4bssl5ArrayIhE17InitUninitializedEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.f, i1 false)
  br label %_ZN4bssl5ArrayIhE17InitUninitializedEm.exit

_ZN4bssl5ArrayIhE17InitUninitializedEm.exit:      ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0.i3 = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.a ]
  ret i1 %.0.i3
}

declare noundef zeroext i1 @_ZN4bssl27tls1_generate_master_secretEPNS_13SSL_HANDSHAKEENS_4SpanIhEENS2_IKhEE(ptr noundef, ptr, i64, ptr, i64) local_unnamed_addr #2

declare void @CRYPTO_BUFFER_init_CBS(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl24ssl_cert_check_key_usageEPK6cbs_stNS_15ssl_key_usage_tE(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl23tls12_check_peer_sigalgEPKNS_13SSL_HANDSHAKEEPhtP11evp_pkey_st(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl35tls1_get_legacy_signature_algorithmEPtPK11evp_pkey_st(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl21ssl_public_key_verifyEP6ssl_stNS_4SpanIKhEEtP11evp_pkey_stS4_(ptr noundef, ptr, i64, i16 noundef zeroext, ptr noundef, ptr noundef byval(%"class.bssl::Span.120") align 8) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl24tls1_change_cipher_stateEPNS_13SSL_HANDSHAKEE20evp_aead_direction_t(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl22tls1_verify_channel_idEPNS_13SSL_HANDSHAKEERKNS_10SSLMessageE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef i32 @_ZN4bssl16ssl_get_finishedEPNS_13SSL_HANDSHAKEE(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl43tls1_record_handshake_hashes_for_channel_idEPNS_13SSL_HANDSHAKEE(ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl23ssl_session_rebase_timeEP6ssl_stP14ssl_session_st(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl15SSL_SESSION_dupEP14ssl_session_sti(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.41") align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CBB_add_u32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl18ssl_encrypt_ticketEPNS_13SSL_HANDSHAKEEP6cbb_stPK14ssl_session_st(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bssl17ssl_send_finishedEPNS_13SSL_HANDSHAKEE(ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl16ssl_update_cacheEP6ssl_st(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4bssl8internal11DeleterImplI22stack_st_CRYPTO_BUFFERvE4FreeEPS2_ENUlPFvPvES5_E_8__invokeES7_S5_(ptr noundef %0, ptr noundef %1) #9 comdat align 2 {
bb.a:
  tail call void @CRYPTO_BUFFER_free(ptr noundef %1)
  ret void
}

declare void @CRYPTO_BUFFER_free(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_SESSION_up_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind memory(none) }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !24}
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "SSLKeyShare", scope: !233, file: !228, line: 1343, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4bssl11SSLKeyShareE")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS6ssl_st", !13, i64 0}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"short", !9, i64 0}
!18 = !{!"_ZTS22ssl_early_callback_ctx", !14, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !15, i64 32, !16, i64 40, !15, i64 48, !16, i64 56, !15, i64 64, !16, i64 72, !15, i64 80, !16, i64 88, !15, i64 96, !16, i64 104, !15, i64 112, !16, i64 120}
!19 = !{!18, !15, i64 80}
!20 = !{!18, !16, i64 88}
!21 = !{!"_ZTS6cbs_st", !15, i64 0, !16, i64 8}
!22 = !{!21, !15, i64 0}
!23 = !{!21, !16, i64 8}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"p1 _ZTSN4bssl10SSL_CONFIGE", !13, i64 0}
!26 = !{!"_ZTSN4bssl13ssl_hs_wait_tE", !9, i64 0}
!27 = !{!"_ZTSN4bssl13InplaceVectorIhLm48EEE", !9, i64 0, !9, i64 48}
!28 = !{!"p1 _ZTS17err_save_state_st", !13, i64 0}
!29 = !{!"_ZTSSt10_Head_baseILm0EP17err_save_state_stLb0EE", !28, i64 0}
!30 = !{!"_ZTSSt11_Tuple_implILm0EJP17err_save_state_stN4bssl8internal7DeleterEEE", !29, i64 0}
!31 = !{!"_ZTSSt5tupleIJP17err_save_state_stN4bssl8internal7DeleterEEE", !30, i64 0}
!32 = !{!"_ZTSSt15__uniq_ptr_implI17err_save_state_stN4bssl8internal7DeleterEE", !31, i64 0}
!33 = !{!"_ZTSSt15__uniq_ptr_dataI17err_save_state_stN4bssl8internal7DeleterELb1ELb1EE", !32, i64 0}
!34 = !{!"_ZTSSt10unique_ptrI17err_save_state_stN4bssl8internal7DeleterEE", !33, i64 0}
!35 = !{!"p1 _ZTS10buf_mem_st", !13, i64 0}
!36 = !{!"_ZTSSt10_Head_baseILm0EP10buf_mem_stLb0EE", !35, i64 0}
!37 = !{!"_ZTSSt11_Tuple_implILm0EJP10buf_mem_stN4bssl8internal7DeleterEEE", !36, i64 0}
!38 = !{!"_ZTSSt5tupleIJP10buf_mem_stN4bssl8internal7DeleterEEE", !37, i64 0}
!39 = !{!"_ZTSSt15__uniq_ptr_implI10buf_mem_stN4bssl8internal7DeleterEE", !38, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_dataI10buf_mem_stN4bssl8internal7DeleterELb1ELb1EE", !39, i64 0}
!41 = !{!"_ZTSSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE", !40, i64 0}
!42 = !{!"p1 _ZTS9env_md_st", !13, i64 0}
!43 = !{!"p1 _ZTS15evp_pkey_ctx_st", !13, i64 0}
!44 = !{!"p1 _ZTS15evp_md_pctx_ops", !13, i64 0}
!45 = !{!"_ZTS13env_md_ctx_st", !42, i64 0, !13, i64 8, !43, i64 16, !44, i64 24}
!46 = !{!"_ZTSN4bssl8internal21StackAllocatedMovableI13env_md_ctx_stiXadL_Z15EVP_MD_CTX_initEEXadL_Z18EVP_MD_CTX_cleanupEEXadL_Z15EVP_MD_CTX_moveEEEE", !45, i64 0}
!47 = !{!"bool", !9, i64 0}
!48 = !{!"_ZTSN4bssl13SSLTranscriptE", !41, i64 0, !46, i64 8, !47, i64 40, !17, i64 42}
!49 = !{!"_ZTSN4bssl5ArrayIhEE", !15, i64 0, !16, i64 8}
!50 = !{!"p1 short", !13, i64 0}
!51 = !{!"_ZTSN4bssl5ArrayItEE", !50, i64 0, !16, i64 8}
!52 = !{!"p1 _ZTS15evp_hpke_kem_st", !13, i64 0}
!53 = !{!"p1 _ZTS16evp_hpke_aead_st", !13, i64 0}
!54 = !{!"p1 _ZTS15evp_hpke_kdf_st", !13, i64 0}
!55 = !{!"p1 _ZTS11evp_aead_st", !13, i64 0}
!56 = !{!"_ZTS15evp_aead_ctx_st", !55, i64 0, !9, i64 8, !9, i64 568}
!57 = !{!"_ZTS15evp_hpke_ctx_st", !52, i64 0, !53, i64 8, !54, i64 16, !56, i64 24, !9, i64 600, !9, i64 624, !16, i64 688, !10, i64 696}
!58 = !{!"_ZTSN4bssl8internal14StackAllocatedI15evp_hpke_ctx_stvXadL_Z17EVP_HPKE_CTX_zeroEEXadL_Z20EVP_HPKE_CTX_cleanupEEEE", !57, i64 0}
!59 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !15, i64 0}
!60 = !{!"_ZTSSt11_Tuple_implILm0EJPcN4bssl8internal7DeleterEEE", !59, i64 0}
!61 = !{!"_ZTSSt5tupleIJPcN4bssl8internal7DeleterEEE", !60, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_implIcN4bssl8internal7DeleterEE", !61, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_dataIcN4bssl8internal7DeleterELb1ELb1EE", !62, i64 0}
!64 = !{!"_ZTSSt10unique_ptrIcN4bssl8internal7DeleterEE", !63, i64 0}
!65 = !{!"p1 _ZTS22stack_st_CRYPTO_BUFFER", !13, i64 0}
!66 = !{!"_ZTSSt10_Head_baseILm0EP22stack_st_CRYPTO_BUFFERLb0EE", !65, i64 0}
!67 = !{!"_ZTSSt11_Tuple_implILm0EJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !66, i64 0}
!68 = !{!"_ZTSSt5tupleIJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !67, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_implI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !68, i64 0}
!70 = !{!"_ZTSSt15__uniq_ptr_dataI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterELb1ELb1EE", !69, i64 0}
!71 = !{!"_ZTSSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !70, i64 0}
!72 = !{!"_ZTSSt22_Optional_payload_baseIN4bssl5ArrayIhEEE", !9, i64 0, !47, i64 16}
!73 = !{!"_ZTSSt17_Optional_payloadIN4bssl5ArrayIhEELb1ELb0ELb0EE", !72, i64 0}
!74 = !{!"_ZTSSt17_Optional_payloadIN4bssl5ArrayIhEELb0ELb0ELb0EE", !73, i64 0}
!75 = !{!"_ZTSSt14_Optional_baseIN4bssl5ArrayIhEELb0ELb0EE", !74, i64 0}
!76 = !{!"_ZTSSt8optionalIN4bssl5ArrayIhEEE", !75, i64 0}
!77 = !{!"p1 _ZTS18stack_st_X509_NAME", !13, i64 0}
!78 = !{!"p1 _ZTS17ssl_credential_st", !13, i64 0}
!79 = !{!"_ZTSSt10_Head_baseILm0EP17ssl_credential_stLb0EE", !78, i64 0}
!80 = !{!"_ZTSSt11_Tuple_implILm0EJP17ssl_credential_stN4bssl8internal7DeleterEEE", !79, i64 0}
!81 = !{!"_ZTSSt5tupleIJP17ssl_credential_stN4bssl8internal7DeleterEEE", !80, i64 0}
!82 = !{!"_ZTSSt15__uniq_ptr_implI17ssl_credential_stN4bssl8internal7DeleterEE", !81, i64 0}
!83 = !{!"_ZTSSt15__uniq_ptr_dataI17ssl_credential_stN4bssl8internal7DeleterELb1ELb1EE", !82, i64 0}
!84 = !{!"_ZTSSt10unique_ptrI17ssl_credential_stN4bssl8internal7DeleterEE", !83, i64 0}
!85 = !{!"p1 _ZTS11evp_pkey_st", !13, i64 0}
!86 = !{!"_ZTSSt10_Head_baseILm0EP11evp_pkey_stLb0EE", !85, i64 0}
!87 = !{!"_ZTSSt11_Tuple_implILm0EJP11evp_pkey_stN4bssl8internal7DeleterEEE", !86, i64 0}
!88 = !{!"_ZTSSt5tupleIJP11evp_pkey_stN4bssl8internal7DeleterEEE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_implI11evp_pkey_stN4bssl8internal7DeleterEE", !88, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_dataI11evp_pkey_stN4bssl8internal7DeleterELb1ELb1EE", !89, i64 0}
!91 = !{!"_ZTSSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEE", !90, i64 0}
!92 = !{!"p1 _ZTS14ssl_session_st", !13, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE", !92, i64 0}
!94 = !{!"_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN4bssl8internal7DeleterEEE", !93, i64 0}
!95 = !{!"_ZTSSt5tupleIJP14ssl_session_stN4bssl8internal7DeleterEEE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implI14ssl_session_stN4bssl8internal7DeleterEE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE", !97, i64 0}
!99 = !{!"p1 _ZTS15ssl_ech_keys_st", !13, i64 0}
!100 = !{!"_ZTSSt10_Head_baseILm0EP15ssl_ech_keys_stLb0EE", !99, i64 0}
!101 = !{!"_ZTSSt11_Tuple_implILm0EJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !100, i64 0}
!102 = !{!"_ZTSSt5tupleIJP15ssl_ech_keys_stN4bssl8internal7DeleterEEE", !101, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_implI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !102, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_dataI15ssl_ech_keys_stN4bssl8internal7DeleterELb1ELb1EE", !103, i64 0}
!105 = !{!"_ZTSSt10unique_ptrI15ssl_ech_keys_stN4bssl8internal7DeleterEE", !104, i64 0}
!106 = !{!"p1 _ZTSN4bssl9ECHConfigE", !13, i64 0}
!107 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl9ECHConfigELb0EE", !106, i64 0}
!108 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !107, i64 0}
!109 = !{!"_ZTSSt5tupleIJPN4bssl9ECHConfigENS0_8internal7DeleterEEE", !108, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl9ECHConfigENS0_8internal7DeleterEE", !109, i64 0}
!111 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl9ECHConfigENS0_8internal7DeleterELb1ELb1EE", !110, i64 0}
!112 = !{!"_ZTSSt10unique_ptrIN4bssl9ECHConfigENS0_8internal7DeleterEE", !111, i64 0}
!113 = !{!"p1 _ZTS13ssl_cipher_st", !13, i64 0}
!114 = !{!"p1 _ZTSN4bssl19SSL_HANDSHAKE_HINTSE", !13, i64 0}
!115 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl19SSL_HANDSHAKE_HINTSELb0EE", !114, i64 0}
!116 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !115, i64 0}
!117 = !{!"_ZTSSt5tupleIJPN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEEE", !116, i64 0}
!118 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !117, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterELb1ELb1EE", !118, i64 0}
!120 = !{!"_ZTSSt10unique_ptrIN4bssl19SSL_HANDSHAKE_HINTSENS0_8internal7DeleterEE", !119, i64 0}
!121 = !{!"_ZTSN4bssl13InplaceVectorIhLm32EEE", !9, i64 0, !9, i64 32}
!122 = !{!"p1 _ZTSN4bssl12SSLPAKEShareE", !13, i64 0}
!123 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl12SSLPAKEShareELb0EE", !122, i64 0}
!124 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl12SSLPAKEShareENS0_8internal7DeleterEEE", !123, i64 0}
!125 = !{!"_ZTSSt5tupleIJPN4bssl12SSLPAKEShareENS0_8internal7DeleterEEE", !124, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl12SSLPAKEShareENS0_8internal7DeleterEE", !125, i64 0}
!127 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl12SSLPAKEShareENS0_8internal7DeleterELb1ELb1EE", !126, i64 0}
!128 = !{!"_ZTSSt10unique_ptrIN4bssl12SSLPAKEShareENS0_8internal7DeleterEE", !127, i64 0}
!129 = !{!"p1 _ZTSN4bssl10spake2plus6ProverE", !13, i64 0}
!130 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10spake2plus6ProverELb0EE", !129, i64 0}
!131 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10spake2plus6ProverENS0_8internal7DeleterEEE", !130, i64 0}
!132 = !{!"_ZTSSt5tupleIJPN4bssl10spake2plus6ProverENS0_8internal7DeleterEEE", !131, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10spake2plus6ProverENS0_8internal7DeleterEE", !132, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10spake2plus6ProverENS0_8internal7DeleterELb1ELb1EE", !133, i64 0}
!135 = !{!"_ZTSSt10unique_ptrIN4bssl10spake2plus6ProverENS0_8internal7DeleterEE", !134, i64 0}
!136 = !{!"p1 _ZTSN4bssl10spake2plus8VerifierE", !13, i64 0}
!137 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10spake2plus8VerifierELb0EE", !136, i64 0}
!138 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10spake2plus8VerifierENS0_8internal7DeleterEEE", !137, i64 0}
!139 = !{!"_ZTSSt5tupleIJPN4bssl10spake2plus8VerifierENS0_8internal7DeleterEEE", !138, i64 0}
!140 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10spake2plus8VerifierENS0_8internal7DeleterEE", !139, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10spake2plus8VerifierENS0_8internal7DeleterELb1ELb1EE", !140, i64 0}
!142 = !{!"_ZTSSt10unique_ptrIN4bssl10spake2plus8VerifierENS0_8internal7DeleterEE", !141, i64 0}
!143 = !{!"_ZTSN4bssl13SSL_HANDSHAKEE", !14, i64 0, !25, i64 8, !26, i64 16, !10, i64 20, !10, i64 24, !17, i64 28, !17, i64 30, !27, i64 32, !27, i64 81, !27, i64 130, !27, i64 179, !27, i64 228, !27, i64 277, !27, i64 326, !9, i64 376, !10, i64 380, !34, i64 384, !9, i64 392, !48, i64 408, !48, i64 456, !9, i64 504, !49, i64 536, !49, i64 552, !49, i64 568, !49, i64 584, !49, i64 600, !49, i64 616, !49, i64 632, !51, i64 648, !51, i64 664, !51, i64 680, !49, i64 696, !49, i64 712, !17, i64 728, !58, i64 736, !49, i64 1440, !64, i64 1456, !71, i64 1464, !76, i64 1472, !49, i64 1496, !77, i64 1512, !49, i64 1520, !84, i64 1536, !91, i64 1544, !98, i64 1552, !98, i64 1560, !105, i64 1568, !112, i64 1576, !113, i64 1584, !49, i64 1592, !120, i64 1608, !47, i64 1616, !47, i64 1616, !47, i64 1616, !47, i64 1616, !47, i64 1616, !47, i64 1616, !47, i64 1616, !47, i64 1616, !47, i64 1617, !47, i64 1617, !47, i64 1617, !47, i64 1617, !47, i64 1617, !47, i64 1617, !47, i64 1617, !47, i64 1617, !47, i64 1618, !47, i64 1618, !47, i64 1618, !47, i64 1618, !47, i64 1618, !47, i64 1618, !47, i64 1618, !47, i64 1618, !47, i64 1619, !47, i64 1619, !47, i64 1619, !47, i64 1619, !17, i64 1620, !17, i64 1622, !17, i64 1624, !17, i64 1626, !9, i64 1628, !121, i64 1629, !9, i64 1662, !128, i64 1672, !49, i64 1680, !135, i64 1696, !142, i64 1704}
!144 = !{!143, !10, i64 20}
!145 = !{!143, !14, i64 0}
!146 = !{!"p1 _ZTSN4bssl19SSL_PROTOCOL_METHODE", !13, i64 0}
!147 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10SSL_CONFIGELb0EE", !25, i64 0}
!148 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !147, i64 0}
!149 = !{!"_ZTSSt5tupleIJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !148, i64 0}
!150 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !149, i64 0}
!151 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10SSL_CONFIGENS0_8internal7DeleterELb1ELb1EE", !150, i64 0}
!152 = !{!"_ZTSSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !151, i64 0}
!153 = !{!"p1 _ZTS6bio_st", !13, i64 0}
!154 = !{!"_ZTSSt10_Head_baseILm0EP6bio_stLb0EE", !153, i64 0}
!155 = !{!"_ZTSSt11_Tuple_implILm0EJP6bio_stN4bssl8internal7DeleterEEE", !154, i64 0}
!156 = !{!"_ZTSSt5tupleIJP6bio_stN4bssl8internal7DeleterEEE", !155, i64 0}
!157 = !{!"_ZTSSt15__uniq_ptr_implI6bio_stN4bssl8internal7DeleterEE", !156, i64 0}
!158 = !{!"_ZTSSt15__uniq_ptr_dataI6bio_stN4bssl8internal7DeleterELb1ELb1EE", !157, i64 0}
!159 = !{!"_ZTSSt10unique_ptrI6bio_stN4bssl8internal7DeleterEE", !158, i64 0}
!160 = !{!"p1 _ZTSN4bssl10SSL3_STATEE", !13, i64 0}
!161 = !{!"p1 _ZTSN4bssl11DTLS1_STATEE", !13, i64 0}
!162 = !{!"p1 _ZTS10ssl_ctx_st", !13, i64 0}
!163 = !{!"_ZTSSt10_Head_baseILm0EP10ssl_ctx_stLb0EE", !162, i64 0}
!164 = !{!"_ZTSSt11_Tuple_implILm0EJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !163, i64 0}
!165 = !{!"_ZTSSt5tupleIJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !164, i64 0}
!166 = !{!"_ZTSSt15__uniq_ptr_implI10ssl_ctx_stN4bssl8internal7DeleterEE", !165, i64 0}
!167 = !{!"_ZTSSt15__uniq_ptr_dataI10ssl_ctx_stN4bssl8internal7DeleterELb1ELb1EE", !166, i64 0}
!168 = !{!"_ZTSSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEE", !167, i64 0}
!169 = !{!"p1 _ZTS13stack_st_void", !13, i64 0}
!170 = !{!"_ZTS17crypto_ex_data_st", !169, i64 0}
!171 = !{!"p1 _ZTS18ssl_quic_method_st", !13, i64 0}
!172 = !{!"_ZTS22ssl_renegotiate_mode_t", !9, i64 0}
!173 = !{!"_ZTS6ssl_st", !146, i64 0, !152, i64 8, !17, i64 16, !159, i64 24, !159, i64 32, !13, i64 40, !160, i64 48, !161, i64 56, !13, i64 64, !13, i64 72, !10, i64 80, !98, i64 88, !13, i64 96, !168, i64 104, !168, i64 112, !170, i64 120, !10, i64 128, !10, i64 132, !10, i64 136, !64, i64 144, !171, i64 152, !172, i64 160, !47, i64 164, !47, i64 164, !47, i64 164, !47, i64 164}
!174 = !{!143, !25, i64 8}
!175 = !{!9, !9, i64 0}
!176 = !{!162, !162, i64 0}
!177 = !{!99, !99, i64 0}
end_hunk_1
