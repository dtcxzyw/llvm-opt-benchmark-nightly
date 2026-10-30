Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.09?download=true
inline.NumInlined: 822
inline.NumDeleted: 279
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB5_9EchConfig3new:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %.idx = shl nuw nsw i64 %3, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.al = icmp eq i64 %3, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.422.0..sroa_idx.i.i90 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.523.0..sroa_idx.i.i91 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.428.0..sroa_idx.i.i92 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.529.0..sroa_idx.i.i93 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.434.0..sroa_idx.i.i94 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.535.0..sroa_idx.i.i95 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.422.0..sroa_idx.i.i98 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.523.0..sroa_idx.i.i99 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.428.0..sroa_idx.i.i100 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.529.0..sroa_idx.i.i101 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.434.0..sroa_idx.i.i102 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.535.0..sroa_idx.i.i103 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  br label %bb.e

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.split, %.lr.ph.i.split.us, %bb.m, %bb.o, %bb.at, %bb.aw, %bb.w, %bb.y, %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.body73:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa, %bb.af
  %eh.lpad-body74 = phi { ptr, i32 } [ %.pn.i.i, %bb.af ], [ %i.fd, %bb.aa ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #27
          to label %.body unwind label %bb.az

bb.e:                                             ; preds = %.lr.ph191, %.backedge144
  %.sroa.0.0189 = phi ptr [ %i.ad, %.lr.ph191 ], [ %i.be, %.backedge144 ] ; 23 uses
  %.sroa.8107.0188 = phi i64 [ 0, %.lr.ph191 ], [ %i.bf, %.backedge144 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 112 ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.8107.0188, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bg = load i64, ptr %.sroa.0.0189, align 8, !range !19, !noundef !9
  %i.bh = icmp eq i64 %i.bg, -1
  br i1 %i.bh, label %bb.av, label %bb.m

._crit_edge192:                                   ; preds = %.backedge144, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.bi, align 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %.sroa.4125.0..sroa_idx, align 1
  store i64 -2, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge192
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.v, align 8, !alias.scope !2605 ; 2 uses
  %i.bk = icmp eq i64 %.val2.i, 0
  br i1 %i.bk, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val3.i = load ptr, ptr %i.ac, align 8, !alias.scope !2606, !nonnull !9, !noundef !9
  %i.bl = mul nuw i64 %.val2.i, 112
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2607
  br label %.body

bb.h:                                             ; preds = %._crit_edge192
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !2605 ; 2 uses
  %i.bm = icmp eq i64 %.val.i, 0
  br i1 %i.bm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i = load ptr, ptr %i.ac, align 8, !alias.scope !2606, !nonnull !9, !noundef !9
  %i.bn = mul nuw i64 %.val.i, 112
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2608
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_.exit: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bo = load i64, ptr %1, align 8, !range !19, !alias.scope !2609, !noundef !9
  %.not.i.i = icmp eq i64 %i.bo, -1
  br i1 %.not.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types18EchConfigListBytesECs7ZUl82OSlxp_6rustls.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %1, align 8, !alias.scope !2610 ; 2 uses
  %i.bq = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bq, label %common.resume, label %common.resume.sink.split

bb.l:                                             ; preds = %bb.j
  %.val.i.i.i = load i64, ptr %1, align 8, !alias.scope !2610 ; 2 uses
  %i.br = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.br, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types18EchConfigListBytesECs7ZUl82OSlxp_6rustls.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types18EchConfigListBytesECs7ZUl82OSlxp_6rustls.exit.sink.split

common.resume.sink.split:                         ; preds = %bb.k, %bb.aq
  %.val2.i.i.i84.sink = phi i64 [ %.val2.i.i.i84, %bb.aq ], [ %.val2.i.i.i, %bb.k ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ga, %bb.aq ], [ %i.bp, %bb.k ]
  %.val3.i.i.i85 = load ptr, ptr %.sroa.012.0.in, align 8, !nonnull !9, !noundef !9
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i85, i64 noundef %.val2.i.i.i84.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !9
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body, %bb.aq, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ga, %bb.aq ], [ %i.bp, %bb.k ], [ %.pn, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types18EchConfigListBytesECs7ZUl82OSlxp_6rustls.exit.sink.split: ; preds = %bb.l, %bb.ar
  %.val.i.i.i87.sink = phi i64 [ %.val.i.i.i87, %bb.ar ], [ %.val.i.i.i, %bb.l ]
  %.val1.i.i.i88 = load ptr, ptr %.sroa.012.0.in, align 8, !nonnull !9, !noundef !9
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i88, i64 noundef %.val.i.i.i87.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !9
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types18EchConfigListBytesECs7ZUl82OSlxp_6rustls.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types18EchConfigListBytesECs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types18EchConfigListBytesECs7ZUl82OSlxp_6rustls.exit.sink.split, %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_.exit82, %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_.exit
  ret void

bb.m:                                             ; preds = %bb.e
  store ptr %.sroa.0.0189, ptr %i.t, align 8, !captures !34
  %i.bs = invoke noundef zeroext i1 @_RNvMs1S_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContents31has_unknown_mandatory_extension(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0189)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.bs, label %bb.as, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = invoke noundef zeroext i1 @_RNvMs1S_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContents23has_duplicate_extension(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0189)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  br i1 %i.bt, label %bb.as, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !9 ; 2 uses
  %.idx194 = shl nuw nsw i64 %i.bx, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx194
  %i.bz = icmp eq i64 %i.bx, 0
  br i1 %i.bz, label %.backedge144, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 48 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 50
  br i1 %i.al, label %.backedge144, label %.lr.ph.split

.backedge144:                                     ; preds = %.backedge, %.lr.ph, %bb.q, %bb.ax, %bb.as, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.cc = icmp eq ptr %i.be, %i.ag
  br i1 %i.cc, label %._crit_edge192, label %bb.e

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %.sroa.020.0185 = phi ptr [ %i.cd, %.backedge ], [ %i.bv, %.lr.ph ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.020.0185, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.020.0185, i64 4
  %.val = load i16, ptr %i.ce, align 2, !range !35, !noundef !9
  %switch.i = icmp samesign ult i16 %.val, 3
  br i1 %switch.i, label %.lr.ph.i, label %.backedge

.lr.ph.i:                                         ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cf = load i16, ptr %i.ca, align 8, !range !2611, !noundef !9 ; 4 uses
  %i.cg = load i16, ptr %i.cb, align 2            ; 3 uses
  %.sroa.023.0.copyload = load i64, ptr %.sroa.020.0185, align 2
  %.sroa.023.0.copyload.fr = freeze i64 %.sroa.023.0.copyload ; 5 uses
  store i16 %i.cf, ptr %i.ai, align 8
  store i16 %i.cg, ptr %i.aj, align 2
  store i64 %.sroa.023.0.copyload.fr, ptr %i.o, align 8
  %i.ch = trunc i64 %.sroa.023.0.copyload.fr to i16 ; 3 uses
  %i.ci = lshr i64 %.sroa.023.0.copyload.fr, 16
  %i.cj = trunc i64 %i.ci to i16                  ; 2 uses
  %i.ck = lshr i64 %.sroa.023.0.copyload.fr, 32
  %i.cl = trunc i64 %i.ck to i16                  ; 2 uses
  %i.cm = lshr i64 %.sroa.023.0.copyload.fr, 48
  %i.cn = trunc nuw i64 %i.cm to i16
  %i.co = icmp ne i16 %i.cf, 5                    ; 2 uses
  %i.cp = icmp ne i16 %i.ch, 3                    ; 2 uses
  %i.cq = icmp eq i16 %i.cl, 4
  br i1 %i.cq, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %bb.t
  %i.cr = phi ptr [ %i.cs, %bb.t ], [ %2, %.lr.ph.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2612
  %i.ct = load ptr, ptr %i.cr, align 8, !noalias !2612, !nonnull !9, !noundef !9 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !2612, !nonnull !9, !align !13, !noundef !9 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %i.cx = load ptr, ptr %i.cw, align 8, !invariant.load !9, !noalias !2612, !nonnull !9
  invoke void %i.cx(ptr noalias nofree noundef nonnull sret([12 x i8]) align 2 captures(address) dereferenceable(12) %i.k, ptr noundef nonnull %i.ct) #33
          to label %.noexc.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2564

.noexc.us:                                        ; preds = %.lr.ph.i.split.us
  %i.cy = load i16, ptr %i.am, align 2, !range !2611, !noalias !2612, !noundef !9
  %i.cz = icmp eq i16 %i.cy, %i.cf
  br i1 %i.cz, label %bb.r, label %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i.us

bb.r:                                             ; preds = %.noexc.us
  %i.da = load i16, ptr %i.an, align 2, !noalias !2612
  %i.db = icmp eq i16 %i.da, %i.cg
  %or.cond.i.us = select i1 %i.co, i1 true, i1 %i.db
  %i.dc = load i16, ptr %i.k, align 2, !range !2613, !noalias !2612
  %i.dd = icmp eq i16 %i.dc, %i.ch
  %or.cond19.i.us = select i1 %or.cond.i.us, i1 %i.dd, i1 false
  br i1 %or.cond19.i.us, label %bb.s, label %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i.us

bb.s:                                             ; preds = %bb.r
  %i.de = load i16, ptr %i.ao, align 2, !noalias !2612
  %i.df = icmp eq i16 %i.de, %i.cj
  %or.cond11.i.us = select i1 %i.cp, i1 true, i1 %i.df
  %i.dg = load i16, ptr %i.ap, align 2, !range !35, !noalias !2612
  %i.dh = icmp eq i16 %i.dg, 4
  %or.cond21.i.us = select i1 %or.cond11.i.us, i1 %i.dh, i1 false
  br i1 %or.cond21.i.us, label %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.i.us, label %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i.us

_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i.us: ; preds = %bb.s, %bb.r, %.noexc.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2612
  br label %bb.t

_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.i.us: ; preds = %bb.s
  %i.di = load i16, ptr %i.aq, align 2, !alias.scope !2614, !noalias !2612, !noundef !9
  %i.dj = icmp eq i16 %i.di, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2612
  br i1 %i.dj, label %.loopexit139.split.us, label %bb.t

bb.t:                                             ; preds = %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.i.us, %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i.us
  %i.dk = icmp eq ptr %i.cs, %i.ak
  br i1 %i.dk, label %.loopexit140, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i
  %i.dl = phi ptr [ %i.dm, %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i ], [ %2, %.lr.ph.i ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2612
  %i.dn = load ptr, ptr %i.dl, align 8, !noalias !2612, !nonnull !9, !noundef !9 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !2612, !nonnull !9, !align !13, !noundef !9 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %i.dr = load ptr, ptr %i.dq, align 8, !invariant.load !9, !noalias !2612, !nonnull !9
  invoke void %i.dr(ptr noalias nofree noundef nonnull sret([12 x i8]) align 2 captures(address) dereferenceable(12) %i.k, ptr noundef nonnull %i.dn) #33
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2564

.noexc:                                           ; preds = %.lr.ph.i.split
  %i.ds = load i16, ptr %i.am, align 2, !range !2611, !noalias !2612, !noundef !9
  %i.dt = icmp eq i16 %i.ds, %i.cf
  br i1 %i.dt, label %bb.u, label %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i

bb.u:                                             ; preds = %.noexc
  %i.du = load i16, ptr %i.an, align 2, !noalias !2612
  %i.dv = icmp eq i16 %i.du, %i.cg
  %or.cond.i = select i1 %i.co, i1 true, i1 %i.dv
  %i.dw = load i16, ptr %i.k, align 2, !range !2613, !noalias !2612
  %i.dx = icmp eq i16 %i.dw, %i.ch
  %or.cond19.i = select i1 %or.cond.i, i1 %i.dx, i1 false
  br i1 %or.cond19.i, label %bb.v, label %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.dy = load i16, ptr %i.ao, align 2, !noalias !2612
  %i.dz = icmp eq i16 %i.dy, %i.cj
  %or.cond11.i = select i1 %i.cp, i1 true, i1 %i.dz
  %i.ea = load i16, ptr %i.ap, align 2, !range !35, !noalias !2612
  %i.eb = icmp eq i16 %i.ea, %i.cl
  %or.cond21.i = select i1 %or.cond11.i, i1 %i.eb, i1 false
  br i1 %or.cond21.i, label %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread5.i, label %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i

_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread5.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2612
  br label %.loopexit139.split.us

_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i: ; preds = %bb.v, %bb.u, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2612
  %i.ec = icmp eq ptr %i.dm, %i.ak
  br i1 %i.ec, label %.loopexit140, label %.lr.ph.i.split

.loopexit140:                                     ; preds = %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.backedge

.backedge:                                        ; preds = %.loopexit140, %.lr.ph.split
  %i.ed = icmp eq ptr %i.cd, %i.by
  br i1 %i.ed, label %.backedge144, label %.lr.ph.split

.loopexit139.split.us:                            ; preds = %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.i.us, %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread5.i
  %4 = phi ptr [ %i.dp, %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread5.i ], [ %i.cv, %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.i.us ]
  %i.ee = phi ptr [ %i.dn, %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.thread5.i ], [ %i.ct, %_RNCNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_9EchConfig3news_0Bb_.exit.i.us ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 32
  %i.eg = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 6
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp samesign ugt i64 %i.eg, 3
  br i1 %i.ei, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit139.split.us
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 52
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.ej, ptr %i.n, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.el, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls6crypto4hpkeNtB5_9HpkeSuiteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.458.0..sroa_idx, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.ek, ptr %i.em, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXsH_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsNameNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2615
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 4, ptr %i.en, align 8, !noalias !2615
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @22, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !2615
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 19, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !2615
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store ptr @20, ptr %i.eo, align 8, !noalias !2615
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store ptr %i.n, ptr %i.ep, align 8, !noalias !2615
  store i64 0, ptr %i.j, align 8, !noalias !2615
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @22, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !2615
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 19, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !2615
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.eq, align 8, !noalias !2615
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @21, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !2615
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 24, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !2615
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i32 1, ptr %i.er, align 8, !noalias !2615
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i32 146, ptr %i.es, align 4, !noalias !2615
  invoke void @_RNvXs0_NtCs4KeUGOPwGKr_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.j)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit139.split.us, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  %i.et = load i64, ptr %.sroa.0.0189, align 8, !range !19, !alias.scope !2617, !noundef !9
  %i.eu = icmp eq i64 %i.et, -1
  br i1 %i.eu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ev = load <2 x i16>, ptr %i.ef, align 8, !alias.scope !2617
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ex, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ew)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %bb.y
  %i.ey = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store <2 x i16> %i.ev, ptr %i.ey, align 8, !alias.scope !2616
  store i64 -1, ptr %i.m, align 8, !alias.scope !2616
  br label %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2619
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 52
  %i.fa = load i8, ptr %i.ez, align 4, !alias.scope !2622, !noundef !9
  %i.fb = load <2 x i16>, ptr %i.ca, align 8, !alias.scope !2622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2623
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0189)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2623
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 24
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc)
          to label %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i unwind label %bb.aa, !noalias !2624

bb.aa:                                            ; preds = %.noexc72
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEEBI_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #27
          to label %.body73 unwind label %bb.ab, !noalias !2624

bb.ab:                                            ; preds = %bb.aa
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !2624
  unreachable

_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %.noexc72
  %i.ff = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  store i8 %i.fa, ptr %i.ff, align 4, !alias.scope !2620, !noalias !2619
  %i.fg = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <2 x i16> %i.fb, ptr %i.fg, align 8, !alias.scope !2620, !noalias !2619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2625
  %i.fh = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2623
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 104
  %i.fj = load i8, ptr %i.fi, align 8, !alias.scope !2626, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2619
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 80 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !range !19, !alias.scope !2626, !noundef !9
  %.not.i.i70 = icmp eq i64 %i.fl, -1
  br i1 %.not.i.i70, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2619
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fk)
          to label %bb.ah unwind label %bb.ag, !noalias !2627

bb.ad:                                            ; preds = %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 88
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !2626, !nonnull !9, !noundef !9
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 96
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !2626, !noundef !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %bb.ad
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.0.copyload5.i.i, %bb.ah ], [ %i.fp, %bb.ad ]
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload3.i.i, %bb.ah ], [ %i.fn, %bb.ad ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.ah ], [ -1, %bb.ad ]
  store i64 %.sroa.0.0.i.i, ptr %i.h, align 8, !noalias !2619
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2619
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2619
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 56
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fq)
          to label %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i unwind label %bb.ai, !noalias !2627

bb.af:                                            ; preds = %bb.ai, %bb.ag
  %.pn.i.i = phi { ptr, i32 } [ %i.fs, %bb.ai ], [ %i.fr, %bb.ag ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13HpkeKeyConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.i) #27
          to label %.body73 unwind label %bb.aj, !noalias !2627

bb.ag:                                            ; preds = %bb.ac
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %bb.ac
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.f, align 8, !noalias !2619
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0.copyload3.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !2619
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0.copyload5.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !2619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2619
  br label %bb.ae

bb.ai:                                            ; preds = %bb.ae
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.af unwind label %bb.aj, !noalias !2627

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !2627
  unreachable

_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !2628
  %.sroa.0.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.80..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !2628
  %.sroa.0.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.56..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !2628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.i, i64 104, i1 false), !noalias !2617
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  store i8 %i.fj, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2616
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.ak:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ee, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %4, ptr %.sroa.529.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.an unwind label %bb.al

bb.al:                                            ; preds = %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i75 = load i64, ptr %i.v, align 8, !alias.scope !2629 ; 2 uses
  %i.fv = icmp eq i64 %.val2.i75, 0
  br i1 %i.fv, label %.body, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val3.i76 = load ptr, ptr %i.ac, align 8, !alias.scope !2630, !nonnull !9, !noundef !9
  %i.fw = mul nuw i64 %.val2.i75, 112
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i76, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2631
  br label %.body

bb.an:                                            ; preds = %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  %.val.i78 = load i64, ptr %i.v, align 8, !alias.scope !2629 ; 2 uses
  %i.fx = icmp eq i64 %.val.i78, 0
  br i1 %i.fx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_.exit82, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val1.i79 = load ptr, ptr %i.ac, align 8, !alias.scope !2630, !nonnull !9, !noundef !9
  %i.fy = mul nuw i64 %.val.i78, 112
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i79, i64 noundef %i.fy, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !2632
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_.exit82

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_.exit82: ; preds = %bb.ao, %bb.an, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.fz = load i64, ptr %1, align 8, !range !19, !alias.scope !2633, !noundef !9
  %.not.i.i83 = icmp eq i64 %i.fz, -1
  br i1 %.not.i.i83, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types18EchConfigListBytesECs7ZUl82OSlxp_6rustls.exit, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_.exit82
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i84 = load i64, ptr %1, align 8, !alias.scope !2634 ; 2 uses
  %i.gb = icmp eq i64 %.val2.i.i.i84, 0
  br i1 %i.gb, label %common.resume, label %common.resume.sink.split

bb.ar:                                            ; preds = %bb.ap
  %.val.i.i.i87 = load i64, ptr %1, align 8, !alias.scope !2634 ; 2 uses
  %i.gc = icmp eq i64 %.val.i.i.i87, 0
  br i1 %i.gc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types18EchConfigListBytesECs7ZUl82OSlxp_6rustls.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types18EchConfigListBytesECs7ZUl82OSlxp_6rustls.exit.sink.split

bb.as:                                            ; preds = %bb.n, %bb.p
  %i.gd = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ge = icmp ult i64 %i.gd, 6
  call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp samesign ugt i64 %i.gd, 1
  br i1 %i.gf, label %bb.at, label %.backedge144

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.t, ptr %i.p, align 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17EchConfigContentsNtB6_5Debug3fmtBC_, ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2635
  store i64 2, ptr %i.ar, align 8, !noalias !2635
  store ptr @22, ptr %.sroa.422.0..sroa_idx.i.i90, align 8, !noalias !2635
  store i64 19, ptr %.sroa.523.0..sroa_idx.i.i91, align 8, !noalias !2635
  store ptr @23, ptr %i.as, align 8, !noalias !2635
  store ptr %i.p, ptr %i.at, align 8, !noalias !2635
  store i64 0, ptr %i.c, align 8, !noalias !2635
  store ptr @22, ptr %.sroa.428.0..sroa_idx.i.i92, align 8, !noalias !2635
  store i64 19, ptr %.sroa.529.0..sroa_idx.i.i93, align 8, !noalias !2635
  store i64 0, ptr %i.au, align 8, !noalias !2635
  store ptr @21, ptr %.sroa.434.0..sroa_idx.i.i94, align 8, !noalias !2635
  store i64 24, ptr %.sroa.535.0..sroa_idx.i.i95, align 8, !noalias !2635
  store i32 1, ptr %i.av, align 8, !noalias !2635
  store i32 128, ptr %i.aw, align 4, !noalias !2635
  invoke void @_RNvXs0_NtCs4KeUGOPwGKr_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.backedge144

bb.av:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.0189, i64 32
  store ptr %i.gg, ptr %i.s, align 8
  %i.gh = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.gi = icmp ult i64 %i.gh, 6
  call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp samesign ugt i64 %i.gh, 1
  br i1 %i.gj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %i.bf, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  store ptr %i.s, ptr %i.ax, align 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10EchVersionNtB6_5Debug3fmtBC_, ptr %.sroa.446.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2636
  store i64 2, ptr %i.ay, align 8, !noalias !2636
  store ptr @22, ptr %.sroa.422.0..sroa_idx.i.i98, align 8, !noalias !2636
  store i64 19, ptr %.sroa.523.0..sroa_idx.i.i99, align 8, !noalias !2636
  store ptr @24, ptr %i.az, align 8, !noalias !2636
  store ptr %i.q, ptr %i.ba, align 8, !noalias !2636
  store i64 0, ptr %i.b, align 8, !noalias !2636
  store ptr @22, ptr %.sroa.428.0..sroa_idx.i.i100, align 8, !noalias !2636
  store i64 19, ptr %.sroa.529.0..sroa_idx.i.i101, align 8, !noalias !2636
  store i64 0, ptr %i.bb, align 8, !noalias !2636
  store ptr @21, ptr %.sroa.434.0..sroa_idx.i.i102, align 8, !noalias !2636
  store i64 24, ptr %.sroa.535.0..sroa_idx.i.i103, align 8, !noalias !2636
  store i32 1, ptr %i.bc, align 8, !noalias !2636
  store i32 118, ptr %i.bd, align 4, !noalias !2636
  invoke void @_RNvXs0_NtCs4KeUGOPwGKr_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.av, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.backedge144

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ax

bb.az:                                            ; preds = %.body73, %.body
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ba:                                            ; preds = %bb.c
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.gl, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %.sroa.437.0..sroa_idx, align 1
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEEB1e_.exit82
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB5_9EchConfig5state(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(344) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %2, align 8, !range !10, !noundef !9
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.f, ptr noundef nonnull align 1 dereferenceable(17) %i.e, i64 17, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !19, !noundef !9
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload6, %bb.h ], [ %i.l, %bb.e ]
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload4, %bb.h ], [ %i.j, %bb.e ]
  %.sroa.01.0 = phi i64 [ %.sroa.01.0.copyload2, %bb.h ], [ -1, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.58.0..sroa_idx, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.j, %bb.s
  %.pn = phi { ptr, i32 } [ %i.au, %bb.s ], [ %i.aa, %bb.j ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32) %2) #27
          to label %common.resume unwind label %bb.t

bb.h:                                             ; preds = %bb.d
  %.sroa.01.0.copyload2 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload4 = load ptr, ptr %.sroa.5.0..sroa_idx3, align 8
end_hunk_0
