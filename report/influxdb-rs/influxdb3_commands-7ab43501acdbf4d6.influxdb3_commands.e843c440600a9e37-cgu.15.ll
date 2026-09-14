Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_commands-7ab43501acdbf4d6.influxdb3_commands.e843c440600a9e37-cgu.15?download=true
inline.NumInlined: 542
inline.NumDeleted: 212
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs0_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB5_16WriteChunkStreamNtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_next:bb.a
  %i.cs = phi i64 [ %i.co, %bb.i ], [ %.pre.i.i, %.noexc.i ]
  %i.ct = load ptr, ptr %i.j, align 8, !alias.scope !704, !noalias !705, !nonnull !3, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull readonly align 1 %.sroa.4.0.copyload.i, i64 range(i64 0, -9223372036854775808) %.sroa.533.0.copyload.i, i1 false), !noalias !697
  %i.cv = load i64, ptr %i.w, align 8, !alias.scope !704, !noalias !705, !noundef !3
  %i.cw = load i64, ptr %i.v, align 8, !alias.scope !704, !noalias !705, !noundef !3 ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 2 uses
  %i.cy = icmp ugt i64 %.sroa.533.0.copyload.i, %i.cx
  br i1 %i.cy, label %bb.l, label %bb.o, !prof !19

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !706
  store i64 %.sroa.533.0.copyload.i, ptr %i.f, align 8, !noalias !706
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.cx, ptr %i.cz, align 8, !noalias !706
  invoke void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f) #29
          to label %.noexc8.i unwind label %.loopexit.split-lp.i, !noalias !697

.noexc8.i:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit12.i
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %.thread42.i, !noalias !697

.loopexit.i:                                      ; preds = %bb.j
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %bb.l
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.032.0.copyload.i) ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.032.0.copyload.i, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !707, !nonnull !3, !noundef !3
  invoke void %i.db(ptr noundef %.sroa.634.0.copyload.i, ptr noundef %.sroa.4.0.copyload.i, i64 noundef %.sroa.533.0.copyload.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %bb.q, !noalias !697, !inline_history !627

bb.o:                                             ; preds = %bb.k
  %i.dc = add i64 %i.cw, %.sroa.533.0.copyload.i
  store i64 %i.dc, ptr %i.v, align 8, !alias.scope !704, !noalias !705
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.032.0.copyload.i) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.032.0.copyload.i, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !708, !nonnull !3, !noundef !3
  invoke void %i.de(ptr noundef %.sroa.634.0.copyload.i, ptr noundef %.sroa.4.0.copyload.i, i64 noundef %.sroa.533.0.copyload.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit12.i unwind label %bb.p, !noalias !697, !inline_history !627

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.p, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.df, %bb.p ], [ %lpad.phi.i, %bb.n ]
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.thread.i unwind label %bb.q, !noalias !697

bb.p:                                             ; preds = %bb.o
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit.i

bb.q:                                             ; preds = %.thread.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit.i, %bb.n
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !697
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !699
  %.sroa.026.0.copyload.i = load ptr, ptr %i.j, align 8, !noalias !699 ; 4 uses
  %.sroa.528.0.copyload.i = load i64, ptr %i.v, align 8, !noalias !699 ; 2 uses
  %.sroa.730.0.copyload.i = load i64, ptr %i.w, align 8, !noalias !699
  %.sroa.831.0.copyload.i = load ptr, ptr %i.x, align 8, !noalias !699 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.dh = ptrtoint ptr %.sroa.831.0.copyload.i to i64 ; 2 uses
  %i.di = and i64 %i.dh, 1
  %.not.i15.i = icmp eq i64 %i.di, 0
  br i1 %.not.i15.i, label %bb.s, label %.noexc16.i

.noexc16.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEECsjWl3uGiVprL_18influxdb3_commands.exit.i
  %i.dj = lshr i64 %i.dh, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !710
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.copyload.i) ]
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %.sroa.026.0.copyload.i, i64 %i.dk
  %i.dm = add i64 %i.dj, %.sroa.528.0.copyload.i
  %i.dn = add i64 %i.dj, %.sroa.730.0.copyload.i  ; 2 uses
  %i.do = icmp sgt i64 %i.dn, -1
  call void @llvm.assume(i1 %i.do)
  store i64 %i.dn, ptr %i.e, align 8, !noalias !710
  store ptr %i.dl, ptr %i.z, align 8, !noalias !710
  store i64 %i.dm, ptr %i.aa, align 8, !noalias !710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !710
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !697
  call void @llvm.experimental.noalias.scope.decl(metadata !711)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !710
  store i64 %i.dj, ptr %i.c, align 8, !noalias !712
  %i.dp = load i64, ptr %i.ab, align 8, !alias.scope !711, !noalias !710, !noundef !3 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.dj, %i.dp
  br i1 %.not.i.i.i, label %bb.r, label %bb.u, !prof !19

bb.r:                                             ; preds = %.noexc16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !712
  store i64 %i.dp, ptr %i.b, align 8, !noalias !712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !712
  store ptr %i.c, ptr %i.a, align 8, !noalias !712
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !712
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dq, align 8, !noalias !712
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !712
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #29
          to label %.noexc.i.i unwind label %bb.t, !noalias !713

.noexc.i.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEECsjWl3uGiVprL_18influxdb3_commands.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.copyload.i) ]
  store ptr %.sroa.026.0.copyload.i, ptr %i.ad, align 8, !alias.scope !714, !noalias !715
  store i64 %.sroa.528.0.copyload.i, ptr %i.ae, align 8, !alias.scope !714, !noalias !715
  store ptr %.sroa.831.0.copyload.i, ptr %i.af, align 8, !alias.scope !714, !noalias !715
  store ptr @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, ptr %i.o, align 8, !alias.scope !714, !noalias !715
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.t:                                             ; preds = %bb.r
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !718, !noalias !710, !noundef !3
  %i.du = load ptr, ptr %i.d, align 8, !alias.scope !718, !noalias !710, !nonnull !3, !align !13, !noundef !3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !719, !nonnull !3, !noundef !3
  %i.dx = load ptr, ptr %i.ac, align 8, !alias.scope !718, !noalias !710, !noundef !3
  invoke void %i.dw(ptr noundef %i.dt, ptr noundef %i.dx, i64 noundef %i.dp)
          to label %common.resume unwind label %bb.v, !noalias !713, !inline_history !627

bb.u:                                             ; preds = %.noexc16.i
  %i.dy = sub nuw i64 %i.dp, %i.dj
  store i64 %i.dy, ptr %i.ab, align 8, !alias.scope !711, !noalias !710
  %i.dz = load ptr, ptr %i.ac, align 8, !alias.scope !711, !noalias !710, !noundef !3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dj
  store ptr %i.ea, ptr %i.ac, align 8, !alias.scope !711, !noalias !710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !710
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.v:                                             ; preds = %bb.t
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !713
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !699
  %.pre = load i64, ptr %i.r, align 8
  br label %_RNvMs_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB4_16WriteChunkStream8coalesce.exit

common.resume:                                    ; preds = %.body45, %bb.ad, %.thread, %bb.as, %bb.t, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %i.gt, %bb.as ], [ %.pn538.i, %.thread.i ], [ %i.dr, %bb.t ], [ %i.fa, %bb.ad ], [ %i.ga, %.body45 ], [ %.pn80, %.thread ]
  resume { ptr, i32 } %common.resume.op

.thread.i:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit.i, %.thread42.i
  %.pn538.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread42.i ], [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit.i ]
  invoke void @_RNvXs0_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %common.resume unwind label %bb.q, !noalias !697

_RNvMs_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB4_16WriteChunkStream8coalesce.exit: ; preds = %bb.g, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i
  %i.ec = phi i64 [ %i.bc, %bb.g ], [ %.pre, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ed = load ptr, ptr %i.ad, align 8, !noundef !3 ; 6 uses
  %i.ee = load i64, ptr %i.ae, align 8, !noundef !3 ; 7 uses
  %i.ef = load i8, ptr %i.s, align 8, !range !696, !noundef !3
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = icmp eq i64 %i.ee, 0
  br i1 %i.eh, label %.thread88, label %bb.w

bb.w:                                             ; preds = %_RNvMs_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB4_16WriteChunkStream8coalesce.exit
  %.not.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i, label %.loopexit.i40, label %.lr.ph

.loopexit.i40:                                    ; preds = %bb.y, %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.loopexit.i40
  %.sroa.02.08.i.i = phi i64 [ %i.em, %bb.x ], [ 0, %.loopexit.i40 ] ; 3 uses
  %i.ej = phi ptr [ %i.el, %bb.x ], [ %i.ed, %.loopexit.i40 ] ; 2 uses
  %.val.i.i41 = load i8, ptr %i.ej, align 1, !alias.scope !720, !noalias !721, !noundef !3
  %i.ek = icmp eq i8 %.val.i.i41, 10
  br i1 %i.ek, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 2 uses
  %i.em = add nuw i64 %.sroa.02.08.i.i, 1
  %i.en = icmp eq ptr %i.el, %i.ei
  br i1 %i.en, label %bb.ab, label %.lr.ph.i.i

.lr.ph:                                           ; preds = %bb.w
  %.sroa.0.0.i.i39 = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 1, -9223372036854775808) %i.ee, i64 %i.ec) ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sroa.0.0.i.i39
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %i.ep = add nsw i64 %.sroa.03.0.i.i313, -1
  %i.eq = icmp eq ptr %i.ed, %i.es
  br i1 %i.eq, label %.loopexit.i40, label %bb.z

bb.z:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.03.0.i.i313 = phi i64 [ %.sroa.0.0.i.i39, %.lr.ph ], [ %i.ep, %bb.y ] ; 2 uses
  %i.er = phi ptr [ %i.eo, %.lr.ph ], [ %i.es, %bb.y ]
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -1 ; 3 uses
  %.val.i10.i = load i8, ptr %i.es, align 1, !alias.scope !720, !noalias !722, !noundef !3
  %i.et = icmp eq i8 %.val.i10.i, 10
  br i1 %i.et, label %.thread84, label %bb.y

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.eu = icmp ult i64 %.sroa.02.08.i.i, %i.ee
  call void @llvm.assume(i1 %i.eu)
  %i.ev = add nuw nsw i64 %.sroa.02.08.i.i, 1
  br label %.thread84

.thread81:                                        ; preds = %.thread84
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.x
  br i1 %i.eg, label %.thread84, label %.thread88

.thread84:                                        ; preds = %bb.ab, %bb.z, %bb.aa
  %.sroa.6.0.i87 = phi i64 [ %.sroa.03.0.i.i313, %bb.z ], [ %i.ev, %bb.aa ], [ %i.ee, %bb.ab ] ; 3 uses
  invoke void @_RINvMNtCsuxFxh2mtOX_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range7RangeTojEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noundef nonnull align 8 %i.o, i64 noundef %.sroa.6.0.i87)
          to label %bb.aw unwind label %.thread81

.thread88:                                        ; preds = %_RNvMs_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB4_16WriteChunkStream8coalesce.exit, %bb.ab
  %.sroa.0.0.copyload = load ptr, ptr %i.o, align 8 ; 3 uses
  %.sroa.7.0.copyload = load ptr, ptr %i.af, align 8 ; 2 uses
  %i.ex = load i64, ptr %i.q, align 8, !alias.scope !723, !noalias !724, !noundef !3 ; 3 uses
  %i.ey = load i64, ptr %1, align 8, !range !10, !alias.scope !723, !noalias !724, !noundef !3
  %i.ez = icmp eq i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %.thread88
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE8grow_oneCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.af unwind label %bb.ad, !noalias !724

bb.ad:                                            ; preds = %bb.ac
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !725, !nonnull !3, !noundef !3
  invoke void %i.fc(ptr noundef %.sroa.7.0.copyload, ptr noundef %i.ed, i64 noundef %i.ee)
          to label %common.resume unwind label %bb.ae, !noalias !724, !inline_history !627

bb.ae:                                            ; preds = %bb.ad
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !724
  unreachable

bb.af:                                            ; preds = %bb.ac, %.thread88
  %i.fe = load ptr, ptr %i.p, align 8, !alias.scope !723, !noalias !724, !nonnull !3, !noundef !3
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.fe, i64 %i.ex ; 4 uses
  store ptr %.sroa.0.0.copyload, ptr %i.ff, align 8
  %.sroa.5.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.ed, ptr %.sroa.5.0..sroa_idx55, align 8
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i64 %i.ee, ptr %.sroa.6.0..sroa_idx57, align 8
  %.sroa.7.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx59, align 8
  %i.fg = add i64 %i.ex, 1
  store i64 %i.fg, ptr %i.q, align 8, !alias.scope !723, !noalias !724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RNvMs_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB4_16WriteChunkStream12buffered_len.exit.thread

bb.ag:                                            ; preds = %_RNvMs_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB4_16WriteChunkStream12buffered_len.exit.thread
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBK_6marker4SendEL_EEB1K_9poll_nextB31_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.fh = load i8, ptr %i.l, align 8, !range !726, !noundef !3 ; 3 uses
  %i.fi = icmp eq i8 %i.fh, -3
  br i1 %i.fi, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %_RNvMs_NtCsjWl3uGiVprL_18influxdb3_commands5writeNtB4_16WriteChunkStream12buffered_len.exit.thread
  store i8 -2, ptr %0, align 8
  br label %bb.av

bb.ai:                                            ; preds = %bb.ag
  store i8 -3, ptr %0, align 8
  br label %bb.av

bb.aj:                                            ; preds = %bb.ag
  %.sroa.426.sroa.2.0.copyload = load ptr, ptr %.sroa.426.sroa.2.0..sroa.426.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  %.sroa.426.sroa.3.0.copyload = load ptr, ptr %.sroa.426.sroa.3.0..sroa.426.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.426.sroa.4.0.copyload = load i64, ptr %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.426.sroa.5.0.copyload = load ptr, ptr %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  switch i8 %i.fh, label %bb.al [
    i8 -2, label %bb.ak
    i8 -1, label %bb.ao
  ]

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.s, align 8
  br label %.backedge

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 %i.fh, ptr %i.k, align 8
  %.sroa.426.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.426.0..sroa_idx27, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.426.0..sroa_idx, i64 7, i1 false)
  %.sroa.426.sroa.2.0..sroa.426.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.426.sroa.2.0.copyload, ptr %.sroa.426.sroa.2.0..sroa.426.0..sroa_idx27.sroa_idx, align 8
  %.sroa.426.sroa.3.0..sroa.426.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.426.sroa.3.0.copyload, ptr %.sroa.426.sroa.3.0..sroa.426.0..sroa_idx27.sroa_idx, align 8
  %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.426.sroa.4.0.copyload, ptr %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx27.sroa_idx, align 8
  %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %.sroa.426.sroa.5.0.copyload, ptr %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx27.sroa_idx, align 8
  %.sroa.528.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.528.0..sroa_idx29, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.528.0..sroa_idx, i64 24, i1 false)
  %i.fj = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.fk = load i64, ptr %i.q, align 8, !noundef !3 ; 4 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit, label %.lr.ph315

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit.i43: ; preds = %.lr.ph315
  %i.fm = icmp eq i64 %i.fo, %i.fk
  br i1 %i.fm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit, label %.lr.ph315

.lr.ph315:                                        ; preds = %bb.al, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit.i43
  %.sroa.0.0.i44314 = phi i64 [ %i.fo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit.i43 ], [ 0, %bb.al ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %.sroa.0.0.i44314 ; 4 uses
  %i.fo = add nuw nsw i64 %.sroa.0.0.i44314, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !730, !noundef !3
  %i.fr = load ptr, ptr %i.fn, align 8, !alias.scope !730, !nonnull !3, !align !13, !noundef !3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !730, !nonnull !3, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !730, !noundef !3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !730, !noundef !3
  invoke void %i.ft(ptr noundef %i.fq, ptr noundef %i.fv, i64 noundef %i.fx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit.i43 unwind label %bb.am, !noalias !727, !inline_history !627

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit7.i: ; preds = %.lr.ph317
  %i.fy = add i64 %.sroa.0.1.i316, 1              ; 2 uses
  %i.fz = icmp eq i64 %i.fy, %i.fk
  br i1 %i.fz, label %.body45, label %.lr.ph317

bb.am:                                            ; preds = %.lr.ph315
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = icmp eq i64 %i.fo, %i.fk
  br i1 %i.gb, label %.body45, label %.lr.ph317

.lr.ph317:                                        ; preds = %bb.am, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit7.i
  %.sroa.0.1.i316 = phi i64 [ %i.fy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit7.i ], [ %i.fo, %bb.am ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %.sroa.0.1.i316 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !733, !noundef !3
  %i.gf = load ptr, ptr %i.gc, align 8, !alias.scope !733, !nonnull !3, !align !13, !noundef !3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !733, !nonnull !3, !noundef !3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !733, !noundef !3
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !733, !noundef !3
  invoke void %i.gh(ptr noundef %i.ge, ptr noundef %i.gj, i64 noundef %i.gl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands.exit7.i unwind label %bb.an, !noalias !727, !inline_history !627

bb.an:                                            ; preds = %.lr.ph317
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !727
  unreachable

bb.ao:                                            ; preds = %bb.aj
  %i.gn = icmp eq i64 %.sroa.426.sroa.4.0.copyload, 0
  br i1 %i.gn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.426.sroa.2.0.copyload) ]
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.426.sroa.2.0.copyload, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !734, !nonnull !3, !noundef !3
  call void %i.gp(ptr noundef %.sroa.426.sroa.5.0.copyload, ptr noundef %.sroa.426.sroa.3.0.copyload, i64 noundef 0), !noalias !734, !inline_history !668
  br label %.backedge

.backedge:                                        ; preds = %bb.ap, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE8push_mutCsjWl3uGiVprL_18influxdb3_commands.exit48, %bb.ak
  br label %bb.b

bb.aq:                                            ; preds = %bb.ao
  %i.gq = load i64, ptr %i.q, align 8, !alias.scope !735, !noalias !736, !noundef !3 ; 3 uses
  %i.gr = load i64, ptr %1, align 8, !range !10, !alias.scope !735, !noalias !736, !noundef !3
  %i.gs = icmp eq i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE8push_mutCsjWl3uGiVprL_18influxdb3_commands.exit48

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE8grow_oneCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE8push_mutCsjWl3uGiVprL_18influxdb3_commands.exit48 unwind label %bb.as, !noalias !736

bb.as:                                            ; preds = %bb.ar
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.426.sroa.2.0.copyload) ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.426.sroa.2.0.copyload, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !737, !nonnull !3, !noundef !3
  invoke void %i.gv(ptr noundef %.sroa.426.sroa.5.0.copyload, ptr noundef %.sroa.426.sroa.3.0.copyload, i64 noundef %.sroa.426.sroa.4.0.copyload)
          to label %common.resume unwind label %bb.at, !noalias !736, !inline_history !627

bb.at:                                            ; preds = %bb.as
  %i.gw = landingpad { ptr, i32 }
end_hunk_0
