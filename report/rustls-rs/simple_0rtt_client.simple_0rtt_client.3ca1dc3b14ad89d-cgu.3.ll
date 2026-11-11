Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/simple_0rtt_client.simple_0rtt_client.3ca1dc3b14ad89d-cgu.3?download=true
inline.NumInlined: 317
inline.NumDeleted: 142
begin_hunk_0_@_RINvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB6_16ConnectionCommonNtNtNtB8_6client11client_conn20ClientConnectionDataE11complete_ioNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECskaDheoimX9_18simple_0rtt_client:bb.a
  invoke void %i.lk(ptr noundef nonnull %.val.i83.i.i)
          to label %bb.dn unwind label %bb.dp, !noalias !162

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.ll = getelementptr inbounds nuw i8, ptr %.val1.i84.i.i, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !range !11, !invariant.load !6, !noalias !162 ; 2 uses
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lo = getelementptr inbounds nuw i8, ptr %.val1.i84.i.i, i64 16
  %i.lp = load i64, ptr %i.lo, align 8, !range !12, !invariant.load !6, !noalias !162
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i83.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i83.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.lm, i64 noundef range(i64 1, 536870913) %i.lp) #15, !noalias !162
  br label %bb.dt

bb.dp:                                            ; preds = %bb.dm
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.val1.i84.i.i, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !range !11, !invariant.load !6, !noalias !162 ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 0
  br i1 %i.lt, label %.body87.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lu = getelementptr inbounds nuw i8, ptr %.val1.i84.i.i, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !range !12, !invariant.load !6, !noalias !162
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i83.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ls, i64 noundef range(i64 1, 536870913) %i.lv) #15, !noalias !162
  br label %.body87.i.i

bb.dr:                                            ; preds = %bb.dk
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi)
          to label %bb.dt unwind label %bb.ds, !noalias !114

bb.ds:                                            ; preds = %bb.dr
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body87.i.i

.body87.i.i:                                      ; preds = %bb.ds, %bb.dq, %bb.dp
  %eh.lpad-body88.i.i = phi { ptr, i32 } [ %i.lw, %bb.ds ], [ %i.lq, %bb.dq ], [ %i.lq, %bb.dp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.al, i64 64, i1 false), !noalias !113
  br label %bb.di

bb.dt:                                            ; preds = %bb.dr, %bb.do, %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.al, i64 64, i1 false), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.lx = load i64, ptr %i.ao, align 8, !alias.scope !163, !noalias !112, !noundef !6
  %i.ly = load i64, ptr %i.bl, align 8, !alias.scope !163, !noalias !112, !noundef !6 ; 2 uses
  %i.lz = call i64 @llvm.usub.sat.i64(i64 %i.lx, i64 %i.ly)
  store i64 %i.lz, ptr %i.ao, align 8, !alias.scope !163, !noalias !112
  store i64 0, ptr %i.bl, align 8, !alias.scope !163, !noalias !112
  invoke void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer7discard(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd, i64 noundef %i.ly)
          to label %bb.du unwind label %bb.dj, !noalias !114

bb.du:                                            ; preds = %bb.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 64, i1 false), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !112
  %i.ma = load ptr, ptr %.sroa.10.2.i.i, align 8, !invariant.load !6, !noalias !114 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  invoke void %i.ma(ptr noundef nonnull %.sroa.0.2.i.i)
          to label %bb.dw unwind label %bb.dy, !noalias !114

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i.i, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !range !11, !invariant.load !6, !noalias !114 ; 2 uses
  %i.md = icmp eq i64 %i.mc, 0
  br i1 %i.md, label %bb.fi, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i.i, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !range !12, !invariant.load !6, !noalias !114
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.mc, i64 noundef range(i64 1, 536870913) %i.mf) #15, !noalias !114
  br label %bb.fi

bb.dy:                                            ; preds = %bb.dv
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i.i, i64 8
  %i.mi = load i64, ptr %i.mh, align 8, !range !11, !invariant.load !6, !noalias !114 ; 2 uses
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %.thread236, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i.i, i64 16
  %i.ml = load i64, ptr %i.mk, align 8, !range !12, !invariant.load !6, !noalias !114
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.mi, i64 noundef range(i64 1, 536870913) %i.ml) #15, !noalias !114
  br label %.thread236

.thread116.i.i:                                   ; preds = %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp, %bb.di, %bb.bd, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.thread129.loopexit.split-lp.loopexit.i.i, %.thread129.loopexit.i.i
  %.pn35.pn115.i.i = phi { ptr, i32 } [ %i.hy, %bb.bd ], [ %.pn35.i.i, %bb.di ], [ %lpad.loopexit.i.i, %.thread129.loopexit.i.i ], [ %lpad.loopexit139.i.i, %.thread129.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit148.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit152.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit341, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp342, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp ]
  %.sroa.0.0114.i.i = phi ptr [ %.sroa.0.2.i.i, %bb.bd ], [ %.sroa.0.2.i.i, %bb.di ], [ %.sroa.0.2.i.i, %.thread129.loopexit.i.i ], [ %.sroa.0.2.i.i, %.thread129.loopexit.split-lp.loopexit.i.i ], [ %.sroa.0.2.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.0.1.ph.ph.ph.ph.ph.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.0.1.ph.ph.ph.ph.ph151.i.i.ph, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit ], [ %.sroa.0.2.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp ]
  %.sroa.10.0113.i.i = phi ptr [ %.sroa.10.2.i.i, %bb.bd ], [ %.sroa.10.2.i.i, %bb.di ], [ %.sroa.10.2.i.i, %.thread129.loopexit.i.i ], [ %.sroa.10.2.i.i, %.thread129.loopexit.split-lp.loopexit.i.i ], [ %.sroa.10.2.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.10.1.ph.ph.ph.ph.ph.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %.sroa.10.1.ph.ph.ph.ph.ph150.i.i.ph, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit ], [ %.sroa.10.2.i.i, %.thread129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6client11client_conn20ClientConnectionDataEEL_EECskaDheoimX9_18simple_0rtt_client(ptr %.sroa.0.0114.i.i, ptr %.sroa.10.0113.i.i) #16
          to label %.thread236 unwind label %bb.cy, !noalias !114

bb.ea:                                            ; preds = %.body95.i.i, %bb.eb
  %.pn38.i.i = phi { ptr, i32 } [ %eh.lpad-body96.i.i, %.body95.i.i ], [ %i.mm, %bb.eb ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ar) #16
          to label %.thread236 unwind label %bb.cy, !noalias !114

bb.eb:                                            ; preds = %bb.u
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ec:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i64 64, i1 false), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !112
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.mn = load i8, ptr %i.bi, align 8, !range !10, !alias.scope !165, !noundef !6
  %i.mo = icmp eq i8 %i.mn, -1
  br i1 %i.mo, label %bb.ed, label %bb.ej

bb.ed:                                            ; preds = %bb.ec
  %.val.i91.i.i = load ptr, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !alias.scope !165 ; 5 uses
  %.val1.i92.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !165, !nonnull !6, !align !14, !noundef !6 ; 5 uses
  %i.mp = load ptr, ptr %.val1.i92.i.i, align 8, !invariant.load !6, !noalias !166 ; 2 uses
  %.not.i.i93.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i93.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i91.i.i) ]
  invoke void %i.mp(ptr noundef nonnull %.val.i91.i.i)
          to label %bb.ef unwind label %bb.eh, !noalias !166

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.mq = getelementptr inbounds nuw i8, ptr %.val1.i92.i.i, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !range !11, !invariant.load !6, !noalias !166 ; 2 uses
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit98.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.mt = getelementptr inbounds nuw i8, ptr %.val1.i92.i.i, i64 16
  %i.mu = load i64, ptr %i.mt, align 8, !range !12, !invariant.load !6, !noalias !166
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i91.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i91.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.mr, i64 noundef range(i64 1, 536870913) %i.mu) #15, !noalias !166
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit98.i.i

bb.eh:                                            ; preds = %bb.ee
  %i.mv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.val1.i92.i.i, i64 8
  %i.mx = load i64, ptr %i.mw, align 8, !range !11, !invariant.load !6, !noalias !166 ; 2 uses
  %i.my = icmp eq i64 %i.mx, 0
  br i1 %i.my, label %.body95.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.mz = getelementptr inbounds nuw i8, ptr %.val1.i92.i.i, i64 16
  %i.na = load i64, ptr %i.mz, align 8, !range !12, !invariant.load !6, !noalias !166
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i91.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.mx, i64 noundef range(i64 1, 536870913) %i.na) #15, !noalias !166
  br label %.body95.i.i

bb.ej:                                            ; preds = %bb.ec
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit98.i.i unwind label %bb.ek, !noalias !114

bb.ek:                                            ; preds = %bb.ej
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %.body95.i.i

.body95.i.i:                                      ; preds = %bb.ek, %bb.ei, %bb.eh
  %eh.lpad-body96.i.i = phi { ptr, i32 } [ %i.nb, %bb.ek ], [ %i.mv, %bb.ei ], [ %i.mv, %bb.eh ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 64, i1 false), !noalias !113
  br label %bb.ea

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit98.i.i: ; preds = %bb.ej, %bb.eg, %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 64, i1 false), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !112
  br label %bb.fi

.lr.ph2422:                                       ; preds = %.lr.ph958.preheader, %.lr.ph958
  %i.nc = load i8, ptr %i.aw, align 2, !range !5, !alias.scope !107, !noundef !6
  %i.nd = trunc nuw i8 %i.nc to i1
  %i.ne = load i64, ptr %i.ay, align 8
  %i.nf = icmp eq i64 %i.ne, 0
  %or.cond = select i1 %i.nd, i1 true, i1 %i.nf
  br i1 %or.cond, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit143.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit143.thread: ; preds = %.lr.ph2422
  %i.ng = invoke noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7is_full(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bc)
          to label %.noexc145 unwind label %bb.ew

.noexc145:                                        ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit143.thread
  br i1 %i.ng, label %bb.em, label %bb.el

bb.el:                                            ; preds = %.noexc145
  %i.nh = load i8, ptr %i.ba, align 1, !range !5, !alias.scope !167, !noundef !6
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %bb.en

bb.em:                                            ; preds = %.noexc145
  %i.nj = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 30) #17
          to label %bb.eq unwind label %bb.ew

bb.en:                                            ; preds = %bb.el
  %i.nk = load i64, ptr %i.be, align 8, !alias.scope !167, !noundef !6 ; 2 uses
  %i.nl = icmp ult i64 %i.nk, 230584300921369396
  call void @llvm.assume(i1 %i.nl)
  %i.nm = icmp ne i64 %i.nk, 0
  %i.nn = invoke { i64, ptr } @_RNvMs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @2, i1 noundef zeroext %i.nm)
          to label %.noexc147 unwind label %bb.ew

.noexc147:                                        ; preds = %bb.en
  %.fr325 = freeze { i64, ptr } %i.nn             ; 2 uses
  %i.no = extractvalue { i64, ptr } %.fr325, 0
  %i.np = extractvalue { i64, ptr } %.fr325, 1    ; 3 uses
  %i.nq = trunc nuw i64 %i.no to i1               ; 2 uses
  %i.nr = icmp ne ptr %i.np, null                 ; 2 uses
  %or.cond.not.i = or i1 %i.nr, %i.nq
  br i1 %or.cond.not.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %.noexc147
  store i8 1, ptr %i.bg, align 4, !alias.scope !167
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163

bb.ep:                                            ; preds = %.noexc147
  br i1 %i.nq, label %bb.eq, label %bb.ev

bb.eq:                                            ; preds = %bb.em, %bb.ep
  %.sroa.5.0.i285 = phi ptr [ %i.np, %bb.ep ], [ %i.nj, %bb.em ] ; 15 uses
  %3 = ptrtoint ptr %.sroa.5.0.i285 to i64        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i285) ]
  %i.ns = and i64 %3, 3                           ; 3 uses
  switch i64 %i.ns, label %default.unreachable [
    i64 2, label %bb.er
    i64 3, label %bb.es
    i64 0, label %bb.et
    i64 1, label %bb.eu
  ], !prof !7

bb.er:                                            ; preds = %bb.eq
  %i.nt = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc151 unwind label %bb.fg

.noexc151:                                        ; preds = %bb.er
  %i.nu = lshr i64 %3, 32
  %i.nv = trunc nuw i64 %i.nu to i32
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !nonnull !6, !noundef !6
  %i.ny = invoke noundef i8 %i.nx(i32 noundef %i.nv)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153 unwind label %bb.fg, !inline_history !27

bb.es:                                            ; preds = %bb.eq
  %i.nz = lshr i64 %3, 32
  %i.oa = icmp ult ptr %.sroa.5.0.i285, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i149 = trunc i64 %i.nz to i8 ; 2 uses
  %i.ob = icmp ne i8 %switch.idx.cast.i.i.i149, -1
  call void @llvm.assume(i1 %i.oa)
  call void @llvm.assume(i1 %i.ob)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153

bb.et:                                            ; preds = %bb.eq
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i285, i64 16
  %i.od = load i8, ptr %i.oc, align 8, !range !105, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153

bb.eu:                                            ; preds = %bb.eq
  %i.oe = getelementptr i8, ptr %.sroa.5.0.i285, i64 31
  %i.of = load i8, ptr %i.oe, align 8, !range !105, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153

bb.ev:                                            ; preds = %bb.ep
  %4 = ptrtoint ptr %i.np to i64
  %.not1474 = xor i1 %i.nr, true
  %i.og = add i64 %.sroa.033.0, %4
  %spec.select = zext i1 %.not1474 to i8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163

bb.ew:                                            ; preds = %bb.en, %bb.em, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit143.thread, %bb.ff
  %lpad.thr_comm.split-lp296 = landingpad { ptr, i32 }
          cleanup
  br label %.thread236

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153: ; preds = %bb.eu, %bb.et, %bb.es, %.noexc151
  %.sroa.0.0.i148 = phi i8 [ %i.of, %bb.eu ], [ %switch.idx.cast.i.i.i149, %bb.es ], [ %i.od, %bb.et ], [ %i.ny, %.noexc151 ]
  %i.oh = icmp eq i8 %.sroa.0.0.i148, 13
  br i1 %i.oh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %bb.ex

bb.ex:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit153
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i285) ]
  switch i64 %i.ns, label %default.unreachable [
    i64 2, label %bb.ey
    i64 3, label %bb.ez
    i64 0, label %bb.fa
    i64 1, label %bb.fb
  ], !prof !7

bb.ey:                                            ; preds = %bb.ex
  %i.oi = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc157 unwind label %bb.fg

.noexc157:                                        ; preds = %bb.ey
  %i.oj = lshr i64 %3, 32
  %i.ok = trunc nuw i64 %i.oj to i32
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !nonnull !6, !noundef !6
  %i.on = invoke noundef i8 %i.om(i32 noundef %i.ok)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159 unwind label %bb.fg, !inline_history !27

bb.ez:                                            ; preds = %bb.ex
  %i.oo = lshr i64 %3, 32
  %i.op = icmp ult ptr %.sroa.5.0.i285, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i155 = trunc i64 %i.oo to i8 ; 2 uses
  %i.oq = icmp ne i8 %switch.idx.cast.i.i.i155, -1
  call void @llvm.assume(i1 %i.op)
  call void @llvm.assume(i1 %i.oq)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159

bb.fa:                                            ; preds = %bb.ex
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i285, i64 16
  %i.os = load i8, ptr %i.or, align 8, !range !105, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159

bb.fb:                                            ; preds = %bb.ex
  %i.ot = getelementptr i8, ptr %.sroa.5.0.i285, i64 31
  %i.ou = load i8, ptr %i.ot, align 8, !range !105, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159: ; preds = %bb.fb, %bb.fa, %bb.ez, %.noexc157
  %.sroa.0.0.i154 = phi i8 [ %i.ou, %bb.fb ], [ %switch.idx.cast.i.i.i155, %bb.ez ], [ %i.os, %bb.fa ], [ %i.on, %.noexc157 ]
  %i.ov = icmp eq i8 %.sroa.0.0.i154, 35
  br i1 %i.ov, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i285, ptr %i.ow, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196

bb.fd:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i285) ]
  switch i64 %i.ns, label %default.unreachable [
    i64 2, label %.lr.ph958
    i64 3, label %bb.fe
    i64 0, label %.lr.ph958
    i64 1, label %bb.ff
  ], !prof !7

bb.fe:                                            ; preds = %bb.fd
  %i.ox = icmp ult ptr %.sroa.5.0.i285, inttoptr (i64 188978561024 to ptr)
  %i.oy = and i64 %3, 1095216660480
  %i.oz = icmp ne i64 %i.oy, 1095216660480
  call void @llvm.assume(i1 %i.ox)
  call void @llvm.assume(i1 %i.oz)
  br label %.lr.ph958

bb.ff:                                            ; preds = %bb.fd
  %i.pa = getelementptr i8, ptr %.sroa.5.0.i285, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pa) ]
  store ptr %i.pa, ptr %i.bf, align 8, !alias.scope !168
  store i8 3, ptr %i.i, align 8, !alias.scope !168
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.lr.ph958 unwind label %bb.ew

.lr.ph958:                                        ; preds = %bb.fe, %bb.fd, %bb.fd, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.pb = load i64, ptr %i.az, align 8, !alias.scope !107, !noundef !6
  %i.pc = icmp ne i64 %i.pb, 0
  %i.pd = load i8, ptr %i.ba, align 1, !range !5, !alias.scope !107
  %i.pe = trunc nuw i8 %i.pd to i1
  %or.cond.i141 = select i1 %i.pc, i1 true, i1 %i.pe
  br i1 %or.cond.i141, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit163, label %.lr.ph2422

bb.fg:                                            ; preds = %.noexc157, %.noexc151, %bb.er, %bb.ey
  %lpad.thr_comm295 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr %.sroa.5.0.i285) #16
          to label %.thread236 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fm, %bb.fk, %.thread236, %.split.thread, %bb.fg, %bb.gu, %bb.hb, %bb.hg, %bb.fr
  %i.pf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.fi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit98.i.i, %bb.dx, %bb.dw, %bb.cx
  %.pr = load i8, ptr %i.av, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !110
  %.not = icmp eq i8 %.pr, -1
  br i1 %.not, label %bb.fs, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 64, i1 false)
  %i.pg = invoke { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bb, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %bb.fl unwind label %bb.fr     ; 2 uses

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc68.i.i, %.noexc69.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit82.i.i, %bb.fq
  %lpad.loopexit.split-lp2439 = landingpad { ptr, i32 }
          cleanup
  br label %.thread236

bb.fk:                                            ; preds = %bb.fm
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client(i64 %i.ph, ptr %i.pi) #16
          to label %.thread236 unwind label %bb.fh

bb.fl:                                            ; preds = %bb.fj
  %i.ph = extractvalue { i64, ptr } %i.pg, 0      ; 2 uses
  %i.pi = extractvalue { i64, ptr } %i.pg, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 64, i1 false)
  %i.pj = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(i8 noundef 21, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.at)
          to label %bb.fn unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.pk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client(ptr null) #16
          to label %bb.fk unwind label %bb.fh

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pj, ptr %i.pl, align 8
  store i64 1, ptr %0, align 8
  %i.pm = icmp eq i64 %i.ph, 0
  br i1 %i.pm, label %bb.hc, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pi) ]
  %i.pn = ptrtoint ptr %i.pi to i64               ; 2 uses
  %i.po = and i64 %i.pn, 3
  switch i64 %i.po, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171
    i64 3, label %bb.fp
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171
    i64 1, label %bb.fq
  ], !prof !7

bb.fp:                                            ; preds = %bb.fo
  %i.pp = icmp ult ptr %i.pi, inttoptr (i64 188978561024 to ptr)
  %i.pq = and i64 %i.pn, 1095216660480
  %i.pr = icmp ne i64 %i.pq, 1095216660480
  call void @llvm.assume(i1 %i.pp)
  call void @llvm.assume(i1 %i.pr)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171

bb.fq:                                            ; preds = %bb.fo
  %i.ps = getelementptr i8, ptr %i.pi, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ps) ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.ps, ptr %i.pt, align 8, !alias.scope !169
  store i8 3, ptr %i.h, align 8, !alias.scope !169
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pt)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i171: ; preds = %bb.fq, %bb.fp, %bb.fo, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.hc

bb.fr:                                            ; preds = %bb.fj
  %i.pu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.au) #16
          to label %.thread236 unwind label %bb.fh

bb.fs:                                            ; preds = %.thread301, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %.val89 = load i64, ptr %i.ay, align 8, !noundef !6
  %i.pv = icmp ne i64 %.val89, 0                  ; 2 uses
  %.not71 = icmp eq ptr %.sroa.0198.2, null       ; 2 uses
  %brmerge3 = or i1 %.not71, %i.pv
  br i1 %brmerge3, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  br i1 %i.dm, label %bb.fw, label %bb.fx

bb.fu:                                            ; preds = %bb.fs
  %i.pw = icmp eq i64 %.sroa.033.1, 0
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.pw, label %bb.fv, label %.thread313

.thread313:                                       ; preds = %bb.fu
  store i64 %.sroa.033.1, ptr %i.px, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1350, ptr %i.py, align 8
  store i64 0, ptr %0, align 8
  br label %bb.hd

bb.fv:                                            ; preds = %bb.fu
  store ptr %.sroa.0198.2, ptr %i.px, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit196

bb.fw:                                            ; preds = %bb.fx, %bb.ft
  %i.pz = call { ptr, ptr } @_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE3zipBI_ECskaDheoimX9_18simple_0rtt_client(ptr noundef %.sroa.0.5, ptr noundef %.sroa.0198.2) ; 2 uses
  %i.qa = extractvalue { ptr, ptr } %i.pz, 0      ; 9 uses
  %i.qb = extractvalue { ptr, ptr } %i.pz, 1      ; 12 uses
  %.val = load i8, ptr %i.aw, align 2, !range !5, !noundef !6
  %.val83 = load i8, ptr %i.ax, align 1
  %i.qc = trunc nuw i8 %.val to i1
  %i.qd = trunc nuw i8 %.val83 to i1
  %i.qe = select i1 %i.qc, i1 %i.qd, i1 false
  %.sroa.0.0.i182 = xor i1 %i.qe, true            ; 2 uses
  %or.cond7 = select i1 %i.dm, i1 true, i1 %.sroa.0.0.i182
  br i1 %or.cond7, label %bb.gf, label %bb.gg

bb.fx:                                            ; preds = %bb.ft
  %.val84 = load i8, ptr %i.aw, align 2, !range !5, !noundef !6
  %.val85 = load i8, ptr %i.ax, align 1
  %i.qf = trunc nuw i8 %.val84 to i1
  %i.qg = trunc nuw i8 %.val85 to i1
  %i.qh = select i1 %i.qf, i1 %i.qg, i1 false
  %brmerge329.demorgan = and i1 %i.pv, %i.qh
  br i1 %brmerge329.demorgan, label %bb.fy, label %bb.fw

bb.fy:                                            ; preds = %bb.fx
  br i1 %.not71, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit178, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.qi = ptrtoint ptr %.sroa.0198.2 to i64       ; 2 uses
  %i.qj = and i64 %i.qi, 3
  switch i64 %i.qj, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i175
    i64 3, label %bb.ga
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i175
    i64 1, label %bb.gb
  ], !prof !7

bb.ga:                                            ; preds = %bb.fz
  %i.qk = icmp ult ptr %.sroa.0198.2, inttoptr (i64 188978561024 to ptr)
  %i.ql = and i64 %i.qi, 1095216660480
  %i.qm = icmp ne i64 %i.ql, 1095216660480
  call void @llvm.assume(i1 %i.qk)
  call void @llvm.assume(i1 %i.qm)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i175

bb.gb:                                            ; preds = %bb.fz
  %i.qn = getelementptr i8, ptr %.sroa.0198.2, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qn) ]
  store ptr %i.qn, ptr %i.dg, align 8, !alias.scope !170
  store i8 3, ptr %i.g, align 8, !alias.scope !170
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i175 unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit.i175: ; preds = %bb.gb, %bb.ga, %bb.fz, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskaDheoimX9_18simple_0rtt_client.exit178

end_hunk_0
