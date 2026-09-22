Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow_scalar-a013406b1266b330.lance_arrow_scalar.ee02aeb3e4ff360f-cgu.0?download=true
inline.NumInlined: 1322
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_NtCskqViAy2tSOx_18lance_arrow_scalar5serdeNtB6_11ArrowScalar19encode_with_options:bb.a
  %i.ga = lshr i64 %i.fr, 7                       ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %._crit_edge.i88, label %.lr.ph.i85

bb.bi:                                            ; preds = %._crit_edge.i88, %bb.bg
  %i.gc = load ptr, ptr %i.bc, align 8, !alias.scope !1685, !nonnull !3, !noundef !3
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fn
  store i8 %.lcssa.i89, ptr %i.gd, align 1
  %i.ge = add i64 %i.fn, 1                        ; 3 uses
  store i64 %i.ge, ptr %i.bd, align 8, !alias.scope !1685
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.09.0224, i64 24 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fg
  br i1 %i.gg, label %.lr.ph226.preheader, label %.lr.ph

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %bb.bk
  %.pre234 = phi i64 [ %.pre235, %bb.bk ], [ %.pre233, %.lr.ph226.preheader ] ; 2 uses
  %i.gh = phi i64 [ %i.gv, %bb.bk ], [ %.pre233, %.lr.ph226.preheader ] ; 2 uses
  %i.gi = phi i64 [ %i.gx, %bb.bk ], [ %i.ge, %.lr.ph226.preheader ] ; 5 uses
  %.sroa.012.0225 = phi ptr [ %i.gy, %bb.bk ], [ %i.ei, %.lr.ph226.preheader ] ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.012.0225, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !nonnull !3, !noundef !3
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.012.0225, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  %i.gn = sub i64 %i.gh, %i.gi
  %i.go = icmp ugt i64 %i.gm, %i.gn
  br i1 %i.go, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.thread.i97, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i95, !prof !14

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.thread.i97: ; preds = %.lr.ph226
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.gi, i64 noundef %i.gm, i64 noundef 1, i64 noundef 1)
          to label %.noexc98 unwind label %.loopexit206

.noexc98:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.thread.i97
  %i.gp = load i64, ptr %i.bd, align 8, !alias.scope !1687, !noundef !3 ; 2 uses
  %i.gq = icmp sgt i64 %i.gp, -1
  call void @llvm.assume(i1 %i.gq)
  %.pre.pre = load i64, ptr %i.ah, align 8, !range !5, !alias.scope !1684
  br label %bb.bj

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i95: ; preds = %.lr.ph226
  %i.gr = icmp sgt i64 %i.gi, -1
  call void @llvm.assume(i1 %i.gr)
  %.not.i96 = icmp eq i64 %i.gm, 0
  br i1 %.not.i96, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i95, %.noexc98
  %.pre = phi i64 [ %.pre.pre, %.noexc98 ], [ %.pre234, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i95 ] ; 2 uses
  %i.gs = phi i64 [ %i.gp, %.noexc98 ], [ %i.gi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i95 ] ; 2 uses
  %i.gt = load ptr, ptr %i.bc, align 8, !alias.scope !1687, !nonnull !3, !noundef !3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gu, ptr nonnull readonly align 1 %i.gk, i64 %i.gm, i1 false), !noalias !1687
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i95
  %.pre235 = phi i64 [ %.pre, %bb.bj ], [ %.pre234, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i95 ]
  %i.gv = phi i64 [ %.pre, %bb.bj ], [ %i.gh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i95 ]
  %i.gw = phi i64 [ %i.gs, %bb.bj ], [ %i.gi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i95 ]
  %i.gx = add i64 %i.gw, %i.gm                    ; 2 uses
  store i64 %i.gx, ptr %i.bd, align 8, !alias.scope !1687
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.012.0225, i64 24 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.fg
  br i1 %i.gz, label %.loopexit, label %.lr.ph226

.loopexit:                                        ; preds = %bb.bk, %bb.bf, %_RNvNtCskqViAy2tSOx_18lance_arrow_scalar5serde13encode_varint.exit72
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECskqViAy2tSOx_18lance_arrow_scalar.exit52, %bb.bn, %.loopexit
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(136) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  ret void

bb.bm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECskqViAy2tSOx_18lance_arrow_scalar.exit
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECskqViAy2tSOx_18lance_arrow_scalar.exit52: ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.bl

.invoke:                                          ; preds = %bb.c, %bb.b
  %i.hc = phi i64 [ 64, %bb.b ], [ 27, %bb.c ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.hc) #29
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.bn:                                            ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.az, ptr noundef nonnull align 1 dereferenceable(27) @41, i64 27, i1 false)
  store i64 -9223372036854775794, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 27, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.az, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 27, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.bl

bb.bo:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECskqViAy2tSOx_18lance_arrow_scalar.exit
  resume { ptr, i32 } %.pn32
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCskqViAy2tSOx_18lance_arrow_scalar5serdeNtB6_11ArrowScalar6decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  call void @_RNvMs_NtCskqViAy2tSOx_18lance_arrow_scalar5serdeNtB6_11ArrowScalar19decode_with_options(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCskqViAy2tSOx_18lance_arrow_scalar5serdeNtB6_11ArrowScalar6encode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1
  call void @_RNvMs_NtCskqViAy2tSOx_18lance_arrow_scalar5serdeNtB6_11ArrowScalar19encode_with_options(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE5sliceCskqViAy2tSOx_18lance_arrow_scalar(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  store ptr %i.c, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  %i.l = shl nuw i64 %2, 2
  %i.m = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.m, label %.invoke.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.n, label %.invoke.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1713
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.l, i64 noundef %i.o)
          to label %bb.g unwind label %bb.e, !noalias !1714

.invoke.i:                                        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ @2, %bb.b ], [ @42, %bb.c ]
  %i.q = phi ptr [ @45, %bb.b ], [ @44, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #29
          to label %.cont.i unwind label %bb.e, !noalias !1713

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.e:                                             ; preds = %.invoke.i, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.aa, %bb.i ], [ %i.aa, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !1718, !noalias !1714, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !1719
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECskqViAy2tSOx_18lance_arrow_scalar.exit.i

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECskqViAy2tSOx_18lance_arrow_scalar.exit.i unwind label %bb.m, !noalias !1714

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1721, !noalias !1722, !noundef !3
  %i.x = ptrtoint ptr %i.w to i64                 ; 3 uses
  %4 = add i64 %i.x, 3
  %i.y = and i64 %4, -4                           ; 2 uses
  %5 = sub i64 %i.y, %i.x
  %6 = icmp ult i64 %5, 4
  call void @llvm.assume(i1 %6)
  %i.z = icmp eq i64 %i.y, %i.x
  br i1 %i.z, label %bb.k, label %.invoke.i.i, !prof !12

bb.h:                                             ; preds = %.invoke.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !1723
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.j, !noalias !1724

.invoke.i.i:                                      ; preds = %bb.g
  %i.ad = load ptr, ptr %i.a, align 8, !alias.scope !1721, !noalias !1722, !nonnull !3, !noundef !3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1725, !noundef !3
  %.not.i.i = icmp eq ptr %i.af, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @211, ptr @213
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @210, ptr @212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #29
          to label %.cont.i.i unwind label %bb.h, !noalias !1725

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !1724
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !1726, !noalias !1712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1713
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  %i.ah = load ptr, ptr %i.b, align 8, !alias.scope !1730, !noalias !1714, !nonnull !3, !noundef !3
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !1731
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCskqViAy2tSOx_18lance_arrow_scalar.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !1714
  br label %_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCskqViAy2tSOx_18lance_arrow_scalar.exit

bb.m:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !1714
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECskqViAy2tSOx_18lance_arrow_scalar.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5valueCskqViAy2tSOx_18lance_arrow_scalar(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = lshr i64 %.40.val, 1                     ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @51, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5valueCskqViAy2tSOx_18lance_arrow_scalar(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = lshr i64 %.40.val, 2                     ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @51, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5valueCskqViAy2tSOx_18lance_arrow_scalar(ptr nofree readonly captures(none) %.32.val, i64 %.40.val, i64 noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  %i.d = lshr i64 %.40.val, 3                     ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @51, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc { i1, i8 } @_RNvMsl_NtCscI6d9CVNmLh_4core3numa16from_ascii_radix(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #5 {
bb.a:
  switch i64 %1, label %thread-pre-split [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

.loopexit:                                        ; preds = %bb.j, %bb.g, %bb.i, %bb.m, %bb.o, %bb.p, %.lr.ph149, %bb.f, %..loopexit116_crit_edge, %.lr.ph138, %bb.l, %bb.n, %bb.h, %bb.b, %bb.b, %bb.a
  %.sroa.12.0 = phi i8 [ %spec.select171, %.lr.ph149 ], [ 1, %bb.b ], [ 0, %bb.a ], [ 1, %bb.b ], [ %spec.select, %bb.h ], [ %i.ae, %..loopexit116_crit_edge ], [ 1, %.lr.ph138 ], [ %spec.select107, %bb.n ], [ 0, %bb.l ], [ %i.av, %bb.p ], [ 0, %bb.f ], [ 1, %bb.m ], [ 2, %bb.o ], [ %i.y, %bb.j ], [ 3, %bb.i ], [ 1, %bb.g ]
  %.sroa.037.0 = phi i1 [ %i.az, %.lr.ph149 ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.h ], [ false, %..loopexit116_crit_edge ], [ true, %.lr.ph138 ], [ true, %bb.n ], [ false, %bb.l ], [ false, %bb.p ], [ false, %bb.f ], [ true, %bb.m ], [ true, %bb.o ], [ false, %bb.j ], [ true, %bb.i ], [ true, %bb.g ]
  %i.a = insertvalue { i1, i8 } poison, i1 %.sroa.037.0, 0
  %i.b = insertvalue { i1, i8 } %i.a, i8 %.sroa.12.0, 1
  ret { i1, i8 } %i.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !noundef !3    ; 2 uses
  switch i8 %i.c, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i8, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.b
  %i.d = phi i8 [ %.pr, %thread-pre-split ], [ %i.c, %bb.b ]
  switch i8 %i.d, label %bb.k [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = add nsw i64 %1, -1
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = add nsw i64 %1, -1                       ; 2 uses
  %i.i = icmp samesign ult i64 %1, 3
  br i1 %i.i, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCscI6d9CVNmLh_4core3str4iter6SplitNcEE9from_iterCskqViAy2tSOx_18lance_arrow_scalar:bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1766
  %i.f = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, 9) 8) #26, !noalias !1766 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqViAy2tSOx_18lance_arrow_scalar.exit

bb.b:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #29
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i
  store ptr %i.d, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.e, ptr %i.h, align 8
  store i64 4, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  %i.i = invoke fastcc { ptr, i64 } @_RNvXs1i_NtNtCscI6d9CVNmLh_4core3str4iterINtB6_6SplitNcENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqViAy2tSOx_18lance_arrow_scalar.exit
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %.not8.i.i = icmp eq ptr %i.j, null
  br i1 %.not8.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core3str4iter6SplitNcEE11spec_extendCskqViAy2tSOx_18lance_arrow_scalar.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc12
  %i.k = phi ptr [ %i.r, %.noexc12 ], [ %i.f, %.noexc ]
  %i.l = phi i64 [ %i.s, %.noexc12 ], [ 4, %.noexc ] ; 3 uses
  %i.m = phi i64 [ %i.v, %.noexc12 ], [ 1, %.noexc ] ; 4 uses
  %.pn.i.i = phi { ptr, i64 } [ %i.w, %.noexc12 ], [ %i.i, %.noexc ]
  %i.n = phi ptr [ %i.x, %.noexc12 ], [ %i.j, %.noexc ]
  %i.o = extractvalue { ptr, i64 } %.pn.i.i, 1
  %i.p = icmp samesign ult i64 %i.m, 576460752303423488
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.m, %i.l
  br i1 %i.q, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i.i, label %bb.c

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i.i: ; preds = %.lr.ph.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.l, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc11 unwind label %bb.f

.noexc11:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i.i
  %.pre9.i.i = load i64, ptr %i.b, align 8, !range !5, !alias.scope !1769, !noalias !1770
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1769, !noalias !1770
  br label %bb.c

bb.c:                                             ; preds = %.noexc11, %.lr.ph.i.i
  %i.r = phi ptr [ %i.k, %.lr.ph.i.i ], [ %.pre, %.noexc11 ] ; 2 uses
  %i.s = phi i64 [ %i.l, %.lr.ph.i.i ], [ %.pre9.i.i, %.noexc11 ]
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.m ; 2 uses
  store ptr %i.n, ptr %i.t, align 8, !noalias !1771
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.o, ptr %i.u, align 8, !noalias !1771
  %i.v = add nuw nsw i64 %i.m, 1                  ; 2 uses
  store i64 %i.v, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !1769, !noalias !1770
  %i.w = invoke fastcc { ptr, i64 } @_RNvXs1i_NtNtCscI6d9CVNmLh_4core3str4iterINtB6_6SplitNcENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %.noexc12 unwind label %bb.f   ; 2 uses

.noexc12:                                         ; preds = %bb.c
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.x, null
  br i1 %.not.i.i10, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core3str4iter6SplitNcEE11spec_extendCskqViAy2tSOx_18lance_arrow_scalar.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core3str4iter6SplitNcEE11spec_extendCskqViAy2tSOx_18lance_arrow_scalar.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.thread:                                          ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqViAy2tSOx_18lance_arrow_scalar.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecReE7reserveCskqViAy2tSOx_18lance_arrow_scalar.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre = load i64, ptr %i.b, align 8         ; 2 uses
  %i.aa = icmp eq i64 %.val.pre, 0
  br i1 %i.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECskqViAy2tSOx_18lance_arrow_scalar.exit, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %lpad.phi21 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread ], [ %lpad.loopexit, %bb.f ]
  %.val20 = phi i64 [ 4, %.thread ], [ %.val.pre, %bb.f ]
  %.val9 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.ab = shl nuw i64 %.val20, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECskqViAy2tSOx_18lance_arrow_scalar.exit

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core3str4iter6SplitNcEE11spec_extendCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %.noexc12, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %bb.g, %bb.f
  %lpad.phi22 = phi { ptr, i32 } [ %lpad.phi21, %bb.g ], [ %lpad.loopexit, %bb.f ]
  resume { ptr, i32 } %lpad.phi22
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCskqViAy2tSOx_18lance_arrow_scalar7convertNtB7_11ArrowScalarINtNtCscI6d9CVNmLh_4core7convert4FromReE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.split.i.i:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 16               ; 9 uses
  %i.h = alloca [32 x i8], align 16               ; 9 uses
  %i.i = alloca [136 x i8], align 8               ; 10 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1816
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1818
  %i.k = tail call noundef align 128 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 128) #26, !noalias !1818 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.noexc53.i, label %bb.s, !prof !14

.noexc53.i:                                       ; preds = %.split.i.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 64) #29, !noalias !1816
  unreachable

bb.a:                                             ; preds = %bb.g
  unreachable

bb.b:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.c:                                             ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1816
  %i.n = load ptr, ptr %i.au, align 16, !noalias !1816, !nonnull !3, !noundef !3 ; 3 uses
  %i.o = load i64, ptr %i.av, align 8, !noalias !1816, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1816
  store i64 1, ptr %i.c, align 8, !noalias !1816
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.p, align 8, !noalias !1816
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.n, ptr %i.q, align 8, !noalias !1816
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.o, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1816
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !1816
  %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.r = load <2 x i64>, ptr %i.h, align 16, !noalias !1816
  store <2 x i64> %i.r, ptr %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx.i, align 8, !noalias !1816
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1819
  %i.s = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1819 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.h, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #29
          to label %.noexc64.i unwind label %bb.e, !noalias !1816

.noexc64.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #27
          to label %bb.ab unwind label %bb.f, !noalias !1816

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !1816
  unreachable

bb.g:                                             ; preds = %bb.aa
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %bb.a unwind label %bb.b, !noalias !1816

bb.h:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !1816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1816
  store ptr %i.s, ptr %i.f, align 8, !noalias !1816
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.n, ptr %i.w, align 8, !noalias !1816
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.o, ptr %i.x, align 8, !noalias !1816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1816
  %i.y = ptrtoint ptr %i.n to i64                 ; 3 uses
  %3 = add i64 %i.y, 3
  %i.z = and i64 %3, -4                           ; 2 uses
  %4 = sub i64 %i.z, %i.y
  %5 = icmp ult i64 %4, 4
  call void @llvm.assume(i1 %5)
  %i.aa = icmp eq i64 %i.z, %i.y
  br i1 %i.aa, label %bb.l, label %.invoke.i.i, !prof !12

bb.i:                                             ; preds = %.invoke.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !1820
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.ab

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ab unwind label %bb.k, !noalias !1821

.invoke.i.i:                                      ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1822, !noundef !3
  %.not.i.i = icmp eq ptr %i.af, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @211, ptr @213
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @210, ptr @212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #29
          to label %.cont.i.i unwind label %bb.i, !noalias !1822

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !1821
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 24, i64 24, i1 false), !noalias !1816
  %i.ah = load ptr, ptr %i.ax, align 16, !noalias !1816, !nonnull !3, !noundef !3 ; 2 uses
  %i.ai = load i64, ptr %i.ay, align 8, !noalias !1816, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1816
  store i64 1, ptr %i.b, align 8, !noalias !1816
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aj, align 8, !noalias !1816
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ah, ptr %i.ak, align 8, !noalias !1816
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ai, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !1816
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !1816
  %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.al = load <2 x i64>, ptr %i.g, align 16, !noalias !1816
  store <2 x i64> %i.al, ptr %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i, align 8, !noalias !1816
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1823
  %i.am = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1823 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.m, label %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEE16from_iter_valuesReINtNtCs40k4W9msRzi_5alloc3vec3VecB28_EECskqViAy2tSOx_18lance_arrow_scalar.exit, !prof !14

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #29
          to label %.noexc68.i unwind label %bb.n, !noalias !1816

.noexc68.i:                                       ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #27
          to label %.body.i unwind label %bb.o, !noalias !1816

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !1816
  unreachable

.body.i:                                          ; preds = %bb.n
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(24) %i.d) #27
          to label %bb.q unwind label %bb.p, !noalias !1816

bb.p:                                             ; preds = %bb.ac, %bb.ab, %bb.r, %.body.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !1816
  unreachable

bb.q:                                             ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  %i.ar = load ptr, ptr %i.e, align 8, !alias.scope !1829, !noalias !1816, !nonnull !3, !noundef !3
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !1830
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.r, label %common.resume

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.p, !noalias !1816

.loopexit.i:                                      ; preds = %bb.z, %.noexc37.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %.split.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.au, align 16, !alias.scope !1817, !noalias !1816
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  store i64 128, ptr %i.h, align 16, !alias.scope !1817, !noalias !1816
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 64, ptr %i.aw, align 8, !alias.scope !1817, !noalias !1816
  store i32 0, ptr %i.k, align 128, !noalias !1816
  store i64 4, ptr %i.av, align 8, !alias.scope !1831, !noalias !1816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1816
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr inttoptr (i64 128 to ptr), ptr %i.ax, align 16, !alias.scope !1832, !noalias !1816
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 6 uses
  store i64 0, ptr %i.ay, align 8, !alias.scope !1832, !noalias !1816
  store i64 128, ptr %i.g, align 16, !alias.scope !1832, !noalias !1816
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.az, align 8, !alias.scope !1832, !noalias !1816
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.v, label %bb.t, !prof !12

.invoke.i:                                        ; preds = %bb.y, %bb.v, %bb.u
  %i.ba = phi ptr [ @32, %bb.v ], [ @29, %bb.y ], [ @29, %bb.u ]
  %i.bb = phi i64 [ 22, %bb.v ], [ 35, %bb.y ], [ 35, %bb.u ]
  %i.bc = phi ptr [ @33, %bb.v ], [ @31, %bb.y ], [ @31, %bb.u ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc) #29
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !1816

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bd = and i64 %2, 63
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.noexc37.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %reass.sub.i.i = and i64 %2, -64
  %i.bf = add i64 %reass.sub.i.i, 64              ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %2
  br i1 %i.bg, label %.invoke.i, label %.noexc37.i

.noexc37.i:                                       ; preds = %bb.u, %bb.t
  %.sroa.4.0.i.i = phi i64 [ %2, %bb.t ], [ %i.bf, %bb.u ]
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %.sroa.4.0.i.i)
          to label %.noexc37._crit_edge.i unwind label %.loopexit.i, !noalias !1816

.noexc37._crit_edge.i:                            ; preds = %.noexc37.i
  %.pre.i = load i64, ptr %i.ay, align 8, !noalias !1816
  %.pre = load ptr, ptr %i.ax, align 16, !noalias !1816
  br label %bb.v

bb.v:                                             ; preds = %.noexc37._crit_edge.i, %bb.s
  %i.bh = phi ptr [ %.pre, %.noexc37._crit_edge.i ], [ inttoptr (i64 128 to ptr), %bb.s ]
  %i.bi = phi i64 [ %.pre.i, %.noexc37._crit_edge.i ], [ 0, %bb.s ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %1, i64 %2, i1 false), !noalias !1816
  %i.bk = load i64, ptr %i.ay, align 8, !noalias !1816, !noundef !3
  %i.bl = add i64 %i.bk, %2                       ; 2 uses
  store i64 %i.bl, ptr %i.ay, align 8, !noalias !1816
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = load i64, ptr %i.av, align 8, !alias.scope !1833, !noalias !1816, !noundef !3 ; 3 uses
  %i.bo = add i64 %i.bn, 4                        ; 5 uses
  %i.bp = icmp ugt i64 %i.bn, -5
  br i1 %i.bp, label %.invoke.i, label %bb.w, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.bq = load i64, ptr %i.aw, align 8, !alias.scope !1833, !noalias !1816, !noundef !3 ; 2 uses
  %i.br = icmp ugt i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.x, label %bb.aa, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.bs = and i64 %i.bo, 63
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %reass.sub.i.i72.i = and i64 %i.bo, -64
  %i.bu = add i64 %reass.sub.i.i72.i, 64          ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bo
  br i1 %i.bv, label %.invoke.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.4.0.i.i73.i = phi i64 [ %i.bo, %bb.x ], [ %i.bu, %bb.y ]
  %i.bw = shl i64 %i.bq, 1
  %.sroa.0.0.i.i74.i = call noundef i64 @llvm.umax.i64(i64 %i.bw, i64 %.sroa.4.0.i.i73.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %.sroa.0.0.i.i74.i)
          to label %.noexc77.i unwind label %.loopexit.i, !noalias !1816

end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar:bb.a
  store <2 x i64> %i.ac, ptr %.sroa.53.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2165, !noalias !2166
  call fastcc void @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEE4fromCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array8is_emptyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ult i64 %i.b, 8
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array9data_typeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #9 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array18logical_null_countCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array21get_array_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !3
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array22get_buffer_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !3
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, -9223372036854775808) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array3lenCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = lshr i64 %i.b, 1
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array5nullsCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array5sliceCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2209
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !2210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2209
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2212
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2213, !noalias !2214, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !2212
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2213, !noalias !2214, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2213, !noalias !2214, !noundef !3
  store ptr %i.h, ptr %i.b, align 8, !noalias !2212
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !2212
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !2212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  %i.q = shl nuw i64 %1, 1
  %i.r = icmp slt i64 %1, 0
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i64 %2, 0
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2216
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !2217

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @2, %bb.b ], [ @42, %bb.c ]
  %i.v = phi ptr [ @45, %bb.b ], [ @44, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #29
          to label %.cont.i.i.i unwind label %bb.e, !noalias !2216

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !2221, !noalias !2217, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !2222
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !2217

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2224, !noalias !2225, !noundef !3
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 1
  %i.ad = and i64 %3, -2                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 2
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !12

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2226
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !2227

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !2224, !noalias !2225, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2228, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @211, ptr @213
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @210, ptr @212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #29
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !2228

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2227
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !2229, !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2216
  call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !2234, !noalias !2217, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2235
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !2209

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2217
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.u, !noalias !2210

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2212
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !2208, !noalias !2210, !noundef !3
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2209
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !2210

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !2240, !noalias !2209, !nonnull !3, !noundef !3
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !2241
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !2210

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !2209
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2209
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2210
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2208
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2242
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2242 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt16TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit, !prof !14

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt16TypeEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt16TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @129, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array6as_anyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @130, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array6offsetCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2248
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !2246
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2247, !noalias !2246, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !2248
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2247, !noalias !2246, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_2
begin_hunk_3_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2248
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeEE4fromCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array8is_emptyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ult i64 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array9data_typeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array13shrink_to_fitCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array18logical_null_countCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array21get_array_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !3
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array22get_buffer_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !3
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 4611686018427387904) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array3lenCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array5nullsCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array5sliceCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2290
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !2291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2290
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2293
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2294, !noalias !2295, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !2293
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2294, !noalias !2295, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2294, !noalias !2295, !noundef !3
  store ptr %i.h, ptr %i.b, align 8, !noalias !2293
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !2293
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !2293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2296)
  %i.q = shl nuw i64 %1, 2
  %i.r = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2297
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !2298

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @2, %bb.b ], [ @42, %bb.c ]
  %i.v = phi ptr [ @45, %bb.b ], [ @44, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #29
          to label %.cont.i.i.i unwind label %bb.e, !noalias !2297

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !2302, !noalias !2298, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !2303
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !2298

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2305, !noalias !2306, !noundef !3
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 3
  %i.ad = and i64 %3, -4                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 4
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !12

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2307
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !2308

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !2305, !noalias !2306, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2309, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @211, ptr @213
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @210, ptr @212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #29
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !2309

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2308
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !2310, !noalias !2311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2297
  call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !2315, !noalias !2298, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2316
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !2290

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2298
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.u, !noalias !2291

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2293
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !2289, !noalias !2291, !noundef !3
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2290
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !2291

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !2321, !noalias !2290, !nonnull !3, !noundef !3
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !2322
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !2291

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !2290
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2290
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2291
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2289
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2323
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2323 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt32TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit, !prof !14

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt32TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @131, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array6as_anyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @132, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array6offsetCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2329
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !2327
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2328, !noalias !2327, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !2329
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2328, !noalias !2327, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_3
begin_hunk_4_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2329
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeEE4fromCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array8is_emptyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ult i64 %i.b, 4
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array9data_typeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array13shrink_to_fitCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array18logical_null_countCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array21get_array_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !3
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array22get_buffer_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !3
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 2305843009213693952) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array3lenCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = lshr i64 %i.b, 3
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array5nullsCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array5sliceCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2371
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !2372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2371
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2374
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2375, !noalias !2376, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !2374
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2375, !noalias !2376, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2375, !noalias !2376, !noundef !3
  store ptr %i.h, ptr %i.b, align 8, !noalias !2374
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !2374
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !2374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  %i.q = shl nuw i64 %1, 3
  %i.r = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2378
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !2379

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @2, %bb.b ], [ @42, %bb.c ]
  %i.v = phi ptr [ @45, %bb.b ], [ @44, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #29
          to label %.cont.i.i.i unwind label %bb.e, !noalias !2378

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !2383, !noalias !2379, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !2384
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !2379

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2386, !noalias !2387, !noundef !3
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 7
  %i.ad = and i64 %3, -8                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 8
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !12

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2388
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !2389

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !2386, !noalias !2387, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2390, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @211, ptr @213
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @210, ptr @212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #29
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !2390

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2389
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !2391, !noalias !2392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2378
  call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !2396, !noalias !2379, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2397
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !2371

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2379
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.u, !noalias !2372

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2374
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !2370, !noalias !2372, !noundef !3
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2371
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !2372

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !2402, !noalias !2371, !nonnull !3, !noundef !3
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !2403
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !2372

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !2371
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2371
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2372
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2370
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2404
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2404 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit, !prof !14

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @133, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array6as_anyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @134, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array6offsetCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2410
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !2408
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2409, !noalias !2408, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !2410
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2409, !noalias !2408, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_4
begin_hunk_5_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2410
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEE4fromCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array8is_emptyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ult i64 %i.b, 8
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array9data_typeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array13shrink_to_fitCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array18logical_null_countCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array21get_array_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !3
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array22get_buffer_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !3
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, -9223372036854775808) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array3lenCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = lshr i64 %i.b, 1
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array5nullsCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array5sliceCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2452
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !2453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2452
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2455
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2456, !noalias !2457, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !2455
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2456, !noalias !2457, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2456, !noalias !2457, !noundef !3
  store ptr %i.h, ptr %i.b, align 8, !noalias !2455
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !2455
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !2455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  %i.q = shl nuw i64 %1, 1
  %i.r = icmp slt i64 %1, 0
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i64 %2, 0
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2459
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !2460

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @2, %bb.b ], [ @42, %bb.c ]
  %i.v = phi ptr [ @45, %bb.b ], [ @44, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #29
          to label %.cont.i.i.i unwind label %bb.e, !noalias !2459

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !2464, !noalias !2460, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !2465
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !2460

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2467, !noalias !2468, !noundef !3
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 1
  %i.ad = and i64 %3, -2                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 2
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !12

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2469
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !2470

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !2467, !noalias !2468, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2471, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @211, ptr @213
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @210, ptr @212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #29
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !2471

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2470
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !2472, !noalias !2473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2459
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !2477, !noalias !2460, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2478
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !2452

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2460
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.u, !noalias !2453

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2455
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !2451, !noalias !2453, !noundef !3
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2452
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !2453

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  call void @llvm.experimental.noalias.scope.decl(metadata !2481)
  call void @llvm.experimental.noalias.scope.decl(metadata !2482)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !2483, !noalias !2452, !nonnull !3, !noundef !3
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !2484
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !2453

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !2452
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2452
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2453
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2451
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2485
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2485 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float16TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit, !prof !14

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float16TypeEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float16TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @135, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array6as_anyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @136, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array6offsetCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2491
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !2489
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2490, !noalias !2489, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !2491
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2490, !noalias !2489, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_5
begin_hunk_6_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2491
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeEE4fromCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array8is_emptyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ult i64 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array9data_typeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array13shrink_to_fitCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array18logical_null_countCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array21get_array_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !3
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array22get_buffer_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !3
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 4611686018427387904) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array3lenCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = lshr i64 %i.b, 2
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array5nullsCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array5sliceCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2533
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !2534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2533
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2536
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2537, !noalias !2538, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !2536
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2537, !noalias !2538, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2537, !noalias !2538, !noundef !3
  store ptr %i.h, ptr %i.b, align 8, !noalias !2536
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !2536
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !2536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  %i.q = shl nuw i64 %1, 2
  %i.r = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2540
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !2541

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @2, %bb.b ], [ @42, %bb.c ]
  %i.v = phi ptr [ @45, %bb.b ], [ @44, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #29
          to label %.cont.i.i.i unwind label %bb.e, !noalias !2540

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  call void @llvm.experimental.noalias.scope.decl(metadata !2543)
  call void @llvm.experimental.noalias.scope.decl(metadata !2544)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !2545, !noalias !2541, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !2546
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !2541

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2548, !noalias !2549, !noundef !3
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 3
  %i.ad = and i64 %3, -4                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 4
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !12

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2550
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !2551

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !2548, !noalias !2549, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2552, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @211, ptr @213
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @210, ptr @212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #29
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !2552

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2551
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !2553, !noalias !2554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2540
  call void @llvm.experimental.noalias.scope.decl(metadata !2555)
  call void @llvm.experimental.noalias.scope.decl(metadata !2556)
  call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !2558, !noalias !2541, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2559
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !2533

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2541
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.u, !noalias !2534

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2536
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !2532, !noalias !2534, !noundef !3
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2533
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !2534

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !2564, !noalias !2533, !nonnull !3, !noundef !3
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !2565
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !2534

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !2533
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2533
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2534
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2532
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2566
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2566 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit, !prof !14

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float32TypeEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float32TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @137, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array6as_anyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @138, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array6offsetCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2572
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !2570
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2571, !noalias !2570, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !2572
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2571, !noalias !2570, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_6
begin_hunk_7_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2572
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeEE4fromCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array8is_emptyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ult i64 %i.b, 4
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array9data_typeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array13shrink_to_fitCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array18logical_null_countCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array21get_array_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !3
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array22get_buffer_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !3
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 2305843009213693952) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array3lenCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = lshr i64 %i.b, 3
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array5nullsCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array5sliceCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2614
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !2615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2614
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2617
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2618, !noalias !2619, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !2617
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2618, !noalias !2619, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2618, !noalias !2619, !noundef !3
  store ptr %i.h, ptr %i.b, align 8, !noalias !2617
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !2617
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !2617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %i.q = shl nuw i64 %1, 3
  %i.r = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2621
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !2622

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @2, %bb.b ], [ @42, %bb.c ]
  %i.v = phi ptr [ @45, %bb.b ], [ @44, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #29
          to label %.cont.i.i.i unwind label %bb.e, !noalias !2621

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  call void @llvm.experimental.noalias.scope.decl(metadata !2624)
  call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !2626, !noalias !2622, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !2627
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !2622

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2629, !noalias !2630, !noundef !3
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 7
  %i.ad = and i64 %3, -8                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 8
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !12

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2631
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !2632

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !2629, !noalias !2630, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2633, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @211, ptr @213
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @210, ptr @212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #29
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !2633

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2632
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !2634, !noalias !2635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2621
  call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !2639, !noalias !2622, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2640
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !2614

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2622
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.u, !noalias !2615

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2617
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !2613, !noalias !2615, !noundef !3
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2614
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !2615

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !2645, !noalias !2614, !nonnull !3, !noundef !3
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !2646
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !2615

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !2614
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2614
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2615
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2613
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2647
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2647 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float64TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit, !prof !14

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float64TypeEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float64TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types11Float64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @139, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array6as_anyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @140, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array6offsetCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2653
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !2651
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2652, !noalias !2651, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !2653
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2652, !noalias !2651, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_7
begin_hunk_8_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2713
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeEE4fromCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array8is_emptyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array9data_typeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array18logical_null_countCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array21get_array_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !3
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array22get_buffer_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !3
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, -9223372036854775808) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array3lenCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = lshr i64 %i.b, 1
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array5nullsCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array5sliceCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2755
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !2756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2755
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2758
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2759, !noalias !2760, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !2758
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2759, !noalias !2760, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2759, !noalias !2760, !noundef !3
  store ptr %i.h, ptr %i.b, align 8, !noalias !2758
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !2758
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !2758
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  %i.q = shl nuw i64 %1, 1
  %i.r = icmp slt i64 %1, 0
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i64 %2, 0
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2762
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !2763

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @2, %bb.b ], [ @42, %bb.c ]
  %i.v = phi ptr [ @45, %bb.b ], [ @44, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #29
          to label %.cont.i.i.i unwind label %bb.e, !noalias !2762

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  call void @llvm.experimental.noalias.scope.decl(metadata !2765)
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !2767, !noalias !2763, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !2768
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !2763

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2770, !noalias !2771, !noundef !3
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 1
  %i.ad = and i64 %3, -2                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 2
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !12

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2772
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !2773

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !2770, !noalias !2771, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2774, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @211, ptr @213
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @210, ptr @212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #29
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !2774

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2773
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !2775, !noalias !2776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2762
  call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  call void @llvm.experimental.noalias.scope.decl(metadata !2778)
  call void @llvm.experimental.noalias.scope.decl(metadata !2779)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !2780, !noalias !2763, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2781
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !2755

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2763
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.u, !noalias !2756

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2758
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !2754, !noalias !2756, !noundef !3
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2755
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !2756

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2782)
  call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !2786, !noalias !2755, !nonnull !3, !noundef !3
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !2787
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !2756

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !2755
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2755
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2756
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2754
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2788
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2788 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int16TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit, !prof !14

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int16TypeEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int16TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int16TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @143, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array6as_anyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @144, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array6offsetCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2794
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !2792
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2793, !noalias !2792, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !2794
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2793, !noalias !2792, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_8
begin_hunk_9_@_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2823
  call fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeEE4fromCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array8is_emptyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ult i64 %i.b, 4
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array9data_typeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array13shrink_to_fitCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array18logical_null_countCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array21get_array_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.f, %bb.c ], [ %.sroa.0.0, %bb.a ]
  %i.e = add i64 %.sroa.0.1, 96
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.02.0 = load i64, ptr %.sroa.02.0.in, align 8, !noundef !3
  %i.f = add i64 %.sroa.02.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array22get_buffer_memory_sizeCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %.sroa.0.0, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !3
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 2305843009213693952) i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array3lenCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = lshr i64 %i.b, 3
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array5nullsCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(96) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array5sliceCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2865
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !2866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2865
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2867)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2868
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2869, !noalias !2870, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !2868
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2869, !noalias !2870, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2869, !noalias !2870, !noundef !3
  store ptr %i.h, ptr %i.b, align 8, !noalias !2868
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !2868
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.p, align 8, !noalias !2868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2871)
  %i.q = shl nuw i64 %1, 3
  %i.r = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.r, label %.invoke.i.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.s, label %.invoke.i.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2872
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %i.t)
          to label %bb.g unwind label %bb.e, !noalias !2873

.invoke.i.i.i:                                    ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ @2, %bb.b ], [ @42, %bb.c ]
  %i.v = phi ptr [ @45, %bb.b ], [ @44, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #29
          to label %.cont.i.i.i unwind label %bb.e, !noalias !2872

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2874)
  call void @llvm.experimental.noalias.scope.decl(metadata !2875)
  call void @llvm.experimental.noalias.scope.decl(metadata !2876)
  %i.x = load ptr, ptr %i.b, align 8, !alias.scope !2877, !noalias !2873, !nonnull !3, !noundef !3
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !2878
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body.i

bb.f:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !2873

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  call void @llvm.experimental.noalias.scope.decl(metadata !2880)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2880, !noalias !2881, !noundef !3
  %i.ac = ptrtoint ptr %i.ab to i64               ; 3 uses
  %3 = add i64 %i.ac, 7
  %i.ad = and i64 %3, -8                          ; 2 uses
  %4 = sub i64 %i.ad, %i.ac
  %5 = icmp ult i64 %4, 8
  call void @llvm.assume(i1 %5)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.k, label %.invoke.i.i.i.i, !prof !12

bb.h:                                             ; preds = %.invoke.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !2882
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.body.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i.i unwind label %bb.j, !noalias !2883

.invoke.i.i.i.i:                                  ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !2880, !noalias !2881, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2884, !noundef !3
  %.not.i.i.i.i = icmp eq ptr %i.ak, null         ; 3 uses
  %.2.i.i.i.i = select i1 %.not.i.i.i.i, ptr @211, ptr @213
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr @210, ptr @212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i, ptr noundef nonnull %.1.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i) #29
          to label %.cont.i.i.i.i unwind label %bb.h, !noalias !2884

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2883
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !2885, !noalias !2886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2872
  call void @llvm.experimental.noalias.scope.decl(metadata !2887)
  call void @llvm.experimental.noalias.scope.decl(metadata !2888)
  call void @llvm.experimental.noalias.scope.decl(metadata !2889)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !2890, !noalias !2873, !nonnull !3, !noundef !3
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2891
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o, !noalias !2865

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2873
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.o, %bb.f, %.body.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aq, %bb.o ], [ %eh.lpad-body.i.i.i, %bb.f ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.u, !noalias !2866

bb.o:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2868
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !2864, !noalias !2866, !noundef !3
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2865
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i64 noundef %1, i64 noundef %2)
          to label %bb.t unwind label %bb.r, !noalias !2866

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2892)
  call void @llvm.experimental.noalias.scope.decl(metadata !2893)
  call void @llvm.experimental.noalias.scope.decl(metadata !2894)
  call void @llvm.experimental.noalias.scope.decl(metadata !2895)
  %i.au = load ptr, ptr %i.d, align 8, !alias.scope !2896, !noalias !2865, !nonnull !3, !noundef !3
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !2897
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.u, !noalias !2866

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.c, align 8, !noalias !2865
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2865
  br label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit

bb.u:                                             ; preds = %bb.s, %.body.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !2866
  unreachable

common.resume:                                    ; preds = %bb.w, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bc, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %bb.p, %bb.t
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.t ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2864
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2898
  %i.ba = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2898 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.v, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int64TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit, !prof !14

bb.v:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #29
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int64TypeEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.az)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int64TypeEEE3newCskqViAy2tSOx_18lance_arrow_scalar.exit: ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9Int64TypeE5sliceCskqViAy2tSOx_18lance_arrow_scalar.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @147, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array6as_anyCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #9 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @148, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array6offsetCskqViAy2tSOx_18lance_arrow_scalar(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7to_dataCskqViAy2tSOx_18lance_arrow_scalar(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2904
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !2902
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2903, !noalias !2902, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !2904
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2903, !noalias !2902, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_9
begin_hunk_10_@_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a
  store i8 30, ptr %0, align 8
  br label %bb.au

bb.bf:                                            ; preds = %bb.af
  tail call void @llvm.trap()
  unreachable

bb.bg:                                            ; preds = %bb.ag
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.bu, align 8
  store i8 31, ptr %0, align 8
  br label %bb.au

bb.bh:                                            ; preds = %bb.ag
  tail call void @llvm.trap()
  unreachable

bb.bi:                                            ; preds = %bb.ah
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.bw, align 8
  store i8 32, ptr %0, align 8
  br label %bb.au

bb.bj:                                            ; preds = %bb.ah
  tail call void @llvm.trap()
  unreachable

bb.bk:                                            ; preds = %bb.ai
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !range !18, !noundef !3
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.by, ptr %i.cb, align 1
  store i8 33, ptr %0, align 8
  br label %bb.au

bb.bl:                                            ; preds = %bb.ai
  tail call void @llvm.trap()
  unreachable

bb.bm:                                            ; preds = %bb.am
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.an, %bb.bm
  %eh.lpad-body = phi { ptr, i32 } [ %i.cc, %bb.bm ], [ %i.ax, %bb.an ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %common.resume unwind label %bb.bo

bb.bn:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3056
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.au, ptr %i.ce, align 8
  store i8 34, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.au

bb.bo:                                            ; preds = %.body
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bp:                                            ; preds = %bb.as
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !range !18, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ch, ptr %i.cj, align 1
  store i8 39, ptr %0, align 8
  br label %bb.au

bb.bq:                                            ; preds = %bb.as
  tail call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.at
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %bb.bu, label %bb.bt

bb.bs:                                            ; preds = %bb.at
  tail call void @llvm.trap()
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cl, ptr %i.cp, align 8
  store i8 40, ptr %0, align 8
  br label %bb.au

bb.bu:                                            ; preds = %bb.br
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCskqViAy2tSOx_18lance_arrow_scalar7convertNtB7_11ArrowScalarINtNtCscI6d9CVNmLh_4core7convert4FromRShE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.split.i.i:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 16               ; 9 uses
  %i.h = alloca [32 x i8], align 16               ; 9 uses
  %i.i = alloca [136 x i8], align 8               ; 10 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3102)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3103
  %i.k = tail call noundef align 128 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 128) #26, !noalias !3103 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.noexc53.i, label %bb.s, !prof !14

.noexc53.i:                                       ; preds = %.split.i.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 64) #29, !noalias !3101
  unreachable

bb.a:                                             ; preds = %bb.g
  unreachable

bb.b:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.c:                                             ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3101
  %i.n = load ptr, ptr %i.au, align 16, !noalias !3101, !nonnull !3, !noundef !3 ; 3 uses
  %i.o = load i64, ptr %i.av, align 8, !noalias !3101, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3101
  store i64 1, ptr %i.c, align 8, !noalias !3101
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.p, align 8, !noalias !3101
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.n, ptr %i.q, align 8, !noalias !3101
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.o, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !3101
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !3101
  %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.r = load <2 x i64>, ptr %i.h, align 16, !noalias !3101
  store <2 x i64> %i.r, ptr %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx.i, align 8, !noalias !3101
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3104
  %i.s = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3104 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.h, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #29
          to label %.noexc64.i unwind label %bb.e, !noalias !3101

.noexc64.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #27
          to label %bb.ab unwind label %bb.f, !noalias !3101

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !3101
  unreachable

bb.g:                                             ; preds = %bb.aa
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %bb.a unwind label %bb.b, !noalias !3101

bb.h:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !3101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3101
  store ptr %i.s, ptr %i.f, align 8, !noalias !3101
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.n, ptr %i.w, align 8, !noalias !3101
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.o, ptr %i.x, align 8, !noalias !3101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3101
  %i.y = ptrtoint ptr %i.n to i64                 ; 3 uses
  %3 = add i64 %i.y, 3
  %i.z = and i64 %3, -4                           ; 2 uses
  %4 = sub i64 %i.z, %i.y
  %5 = icmp ult i64 %4, 4
  call void @llvm.assume(i1 %5)
  %i.aa = icmp eq i64 %i.z, %i.y
  br i1 %i.aa, label %bb.l, label %.invoke.i.i, !prof !12

bb.i:                                             ; preds = %.invoke.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !3105
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.ab

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ab unwind label %bb.k, !noalias !3106

.invoke.i.i:                                      ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !3107, !noundef !3
  %.not.i.i = icmp eq ptr %i.af, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @211, ptr @213
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @210, ptr @212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #29
          to label %.cont.i.i unwind label %bb.i, !noalias !3107

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !3106
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 20, i64 24, i1 false), !noalias !3101
  %i.ah = load ptr, ptr %i.ax, align 16, !noalias !3101, !nonnull !3, !noundef !3 ; 2 uses
  %i.ai = load i64, ptr %i.ay, align 8, !noalias !3101, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3101
  store i64 1, ptr %i.b, align 8, !noalias !3101
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aj, align 8, !noalias !3101
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ah, ptr %i.ak, align 8, !noalias !3101
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ai, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !3101
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !3101
  %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.al = load <2 x i64>, ptr %i.g, align 16, !noalias !3101
  store <2 x i64> %i.al, ptr %.sroa.524.sroa.4.0..sroa.524.0..sroa_idx.sroa_idx.i, align 8, !noalias !3101
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3108
  %i.am = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3108 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.m, label %_RINvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEE16from_iter_valuesRShINtNtCs40k4W9msRzi_5alloc3vec3VecB28_EECskqViAy2tSOx_18lance_arrow_scalar.exit, !prof !14

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #29
          to label %.noexc68.i unwind label %bb.n, !noalias !3101

.noexc68.i:                                       ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #27
          to label %.body.i unwind label %bb.o, !noalias !3101

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !3101
  unreachable

.body.i:                                          ; preds = %bb.n
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECskqViAy2tSOx_18lance_arrow_scalar(ptr noalias noundef align 8 dereferenceable(24) %i.d) #27
          to label %bb.q unwind label %bb.p, !noalias !3101

bb.p:                                             ; preds = %bb.ac, %bb.ab, %bb.r, %.body.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !3101
  unreachable

bb.q:                                             ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3109)
  call void @llvm.experimental.noalias.scope.decl(metadata !3110)
  call void @llvm.experimental.noalias.scope.decl(metadata !3111)
  call void @llvm.experimental.noalias.scope.decl(metadata !3112)
  call void @llvm.experimental.noalias.scope.decl(metadata !3113)
  %i.ar = load ptr, ptr %i.e, align 8, !alias.scope !3114, !noalias !3101, !nonnull !3, !noundef !3
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !3115
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.r, label %common.resume

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.p, !noalias !3101

.loopexit.i:                                      ; preds = %bb.z, %.noexc37.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %.split.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.au, align 16, !alias.scope !3102, !noalias !3101
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 6 uses
  store i64 128, ptr %i.h, align 16, !alias.scope !3102, !noalias !3101
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 64, ptr %i.aw, align 8, !alias.scope !3102, !noalias !3101
  store i32 0, ptr %i.k, align 128, !noalias !3101
  store i64 4, ptr %i.av, align 8, !alias.scope !3116, !noalias !3101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3101
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr inttoptr (i64 128 to ptr), ptr %i.ax, align 16, !alias.scope !3117, !noalias !3101
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 6 uses
  store i64 0, ptr %i.ay, align 8, !alias.scope !3117, !noalias !3101
  store i64 128, ptr %i.g, align 16, !alias.scope !3117, !noalias !3101
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.az, align 8, !alias.scope !3117, !noalias !3101
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.v, label %bb.t, !prof !12

.invoke.i:                                        ; preds = %bb.y, %bb.v, %bb.u
  %i.ba = phi ptr [ @32, %bb.v ], [ @29, %bb.y ], [ @29, %bb.u ]
  %i.bb = phi i64 [ 22, %bb.v ], [ 35, %bb.y ], [ 35, %bb.u ]
  %i.bc = phi ptr [ @33, %bb.v ], [ @31, %bb.y ], [ @31, %bb.u ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc) #29
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !3101

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bd = and i64 %2, 63
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.noexc37.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %reass.sub.i.i = and i64 %2, 9223372036854775744
  %i.bf = add nuw i64 %reass.sub.i.i, 64          ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %2
  br i1 %i.bg, label %.invoke.i, label %.noexc37.i

.noexc37.i:                                       ; preds = %bb.u, %bb.t
  %.sroa.4.0.i.i = phi i64 [ %2, %bb.t ], [ %i.bf, %bb.u ]
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %.sroa.4.0.i.i)
          to label %.noexc37._crit_edge.i unwind label %.loopexit.i, !noalias !3101

.noexc37._crit_edge.i:                            ; preds = %.noexc37.i
  %.pre.i = load i64, ptr %i.ay, align 8, !noalias !3101
  %.pre = load ptr, ptr %i.ax, align 16, !noalias !3101
  br label %bb.v

bb.v:                                             ; preds = %.noexc37._crit_edge.i, %bb.s
  %i.bh = phi ptr [ %.pre, %.noexc37._crit_edge.i ], [ inttoptr (i64 128 to ptr), %bb.s ]
  %i.bi = phi i64 [ %.pre.i, %.noexc37._crit_edge.i ], [ 0, %bb.s ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %1, i64 %2, i1 false), !noalias !3101
  %i.bk = load i64, ptr %i.ay, align 8, !noalias !3101, !noundef !3
  %i.bl = add i64 %i.bk, %2                       ; 2 uses
  store i64 %i.bl, ptr %i.ay, align 8, !noalias !3101
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = load i64, ptr %i.av, align 8, !alias.scope !3118, !noalias !3101, !noundef !3 ; 3 uses
  %i.bo = add i64 %i.bn, 4                        ; 5 uses
  %i.bp = icmp ugt i64 %i.bn, -5
  br i1 %i.bp, label %.invoke.i, label %bb.w, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.bq = load i64, ptr %i.aw, align 8, !alias.scope !3118, !noalias !3101, !noundef !3 ; 2 uses
  %i.br = icmp ugt i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.x, label %bb.aa, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.bs = and i64 %i.bo, 63
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %reass.sub.i.i72.i = and i64 %i.bo, -64
  %i.bu = add i64 %reass.sub.i.i72.i, 64          ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bo
  br i1 %i.bv, label %.invoke.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.4.0.i.i73.i = phi i64 [ %i.bo, %bb.x ], [ %i.bu, %bb.y ]
  %i.bw = shl i64 %i.bq, 1
  %.sroa.0.0.i.i74.i = call noundef i64 @llvm.umax.i64(i64 %i.bw, i64 %.sroa.4.0.i.i73.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %.sroa.0.0.i.i74.i)
          to label %.noexc77.i unwind label %.loopexit.i, !noalias !3101

end_hunk_10
