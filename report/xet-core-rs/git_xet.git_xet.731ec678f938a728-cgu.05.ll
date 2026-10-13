Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet.git_xet.731ec678f938a728-cgu.05?download=true
inline.NumInlined: 1046
inline.NumDeleted: 416
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations15shard_set_unionINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_ECs9SMuO7kbZ2K_7git_xet:bb.a
  br i1 %i.mp, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.mq = extractvalue { i64, ptr } %i.mn, 1
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1967
  %exitcond.not.i = icmp eq i32 %i.jt, %i.jc
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.dq:                                            ; preds = %bb.do, %bb.dl
  %.sink579 = phi ptr [ %i.mq, %bb.do ], [ %i.mk, %bb.dl ]
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.mr, align 8, !alias.scope !1965, !noalias !1969
  %.sroa.4481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink579, ptr %.sroa.4481.0..sroa_idx.i, align 8, !alias.scope !1965, !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1967
  br label %bb.de

bb.dr:                                            ; preds = %bb.de, %bb.bu, %bb.br, %bb.bn, %bb.bg, %.loopexit587.a, %bb.ay, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1967
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.du, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1967
  br label %bb.gt

bb.ds:                                            ; preds = %.thread.i, %bb.gr, %.thread151.i, %bb.gm, %bb.gk, %bb.gj
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !1966
  unreachable

bb.dt:                                            ; preds = %bb.z
  %i.mt = extractvalue { i64, ptr } %i.eh, 0
  %i.mu = extractvalue { i64, ptr } %i.eh, 1      ; 2 uses
  %i.mv = trunc nuw i64 %i.mt to i1
  br i1 %i.mv, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.mw, align 8, !alias.scope !1965, !noalias !1969
  %.sroa.4517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.mu, ptr %.sroa.4517.0..sroa_idx.i, align 8, !alias.scope !1965, !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1967
  br label %.critedge.i

bb.dv:                                            ; preds = %bb.dt
  %i.mx = ptrtoint ptr %i.mu to i64
  %i.my = add i64 %.sroa.0.0.i, %i.mx             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1967
  store i64 0, ptr %i.z, align 8, !noalias !1967
  %i.mz = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.mz, align 8, !noalias !1967
  %i.na = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 6 uses
  store i64 0, ptr %i.na, align 8, !noalias !1967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1967
  store i64 0, ptr %i.y, align 8, !noalias !1967
  %i.nb = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.nb, align 8, !noalias !1967
  %i.nc = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 7 uses
  store i64 0, ptr %i.nc, align 8, !noalias !1967
  store i64 %i.my, ptr %i.bd, align 8, !noalias !1967
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !1967, !noundef !9
  %i.nf = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i64 noundef %i.ne)
          to label %bb.dw unwind label %.thread165.loopexit.split-lp.i, !noalias !1966 ; 2 uses

.thread165.loopexit.i:                            ; preds = %bb.ei
  %lpad.loopexit223.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread151.i

.thread165.loopexit.split-lp.i:                   ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTymEEECs9SMuO7kbZ2K_7git_xet.exit708.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit702.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit.i, %bb.ek, %bb.ee, %bb.eb, %bb.dy, %bb.dv
  %.sroa.0385.1.ph.ph.i = phi i1 [ true, %bb.ee ], [ true, %bb.eb ], [ true, %bb.dy ], [ true, %bb.dv ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTymEEECs9SMuO7kbZ2K_7git_xet.exit708.i ], [ false, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit702.i ], [ true, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit.i ], [ true, %bb.ek ]
  %.sroa.0387.3.ph.ph.i = phi i1 [ true, %bb.ee ], [ true, %bb.eb ], [ true, %bb.dy ], [ true, %bb.dv ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTymEEECs9SMuO7kbZ2K_7git_xet.exit708.i ], [ false, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit702.i ], [ false, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit.i ], [ true, %bb.ek ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread151.i

bb.dw:                                            ; preds = %bb.dv
  %i.ng = extractvalue { i64, ptr } %i.nf, 0
  %i.nh = trunc nuw i64 %i.ng to i1
  br i1 %i.nh, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ni = extractvalue { i64, ptr } %i.nf, 1
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.nj, align 8, !alias.scope !1965, !noalias !1969
  %.sroa.4520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ni, ptr %.sroa.4520.0..sroa_idx.i, align 8, !alias.scope !1965, !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  br label %.invoke948.i

bb.dy:                                            ; preds = %bb.dw
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.nl = load i64, ptr %i.nk, align 8, !noalias !1967, !noundef !9
  %i.nm = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0, i64 noundef %i.nl)
          to label %bb.dz unwind label %.thread165.loopexit.split-lp.i, !noalias !1966 ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  %i.nn = extractvalue { i64, ptr } %i.nm, 0
  %i.no = trunc nuw i64 %i.nn to i1
  br i1 %i.no, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.np = extractvalue { i64, ptr } %i.nm, 1
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.nq, align 8, !alias.scope !1965, !noalias !1969
  %.sroa.4523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.np, ptr %.sroa.4523.0..sroa_idx.i, align 8, !alias.scope !1965, !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  br label %.invoke948.i

bb.eb:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1967
  invoke fastcc void @_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_Es_0Cs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.w, ptr noalias nofree noundef align 8 dereferenceable(16) %2)
          to label %bb.ec unwind label %.thread165.loopexit.split-lp.i, !noalias !1966

bb.ec:                                            ; preds = %bb.eb
  %i.nr = load i64, ptr %i.w, align 8, !range !16, !noalias !1967, !noundef !9 ; 3 uses
  %i.ns = icmp eq i64 %i.nr, 2
  %i.nt = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6257.i, ptr noundef nonnull align 8 dereferenceable(40) %i.nt, i64 40, i1 false), !noalias !1967
  br i1 %i.ns, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1967
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.nu, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6257.i, i64 40, i1 false), !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  br label %bb.gq

bb.ee:                                            ; preds = %bb.ec
  %.sroa.5527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.5527.0.copyload.i = load i64, ptr %.sroa.5527.0..sroa_idx.i, align 8, !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1967
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6267.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1967
  invoke fastcc void @_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_Es_0Cs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.v, ptr noalias nofree noundef align 8 dereferenceable(16) %4)
          to label %bb.ef unwind label %.thread165.loopexit.split-lp.i, !noalias !1966

bb.ef:                                            ; preds = %bb.ee
  %i.nv = load i64, ptr %i.v, align 8, !range !16, !noalias !1967, !noundef !9 ; 3 uses
  %i.nw = icmp eq i64 %i.nv, 2
  %i.nx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6267.i, ptr noundef nonnull align 8 dereferenceable(40) %i.nx, i64 40, i1 false), !noalias !1967
  br i1 %i.nw, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1967
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ny, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6267.i, i64 40, i1 false), !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6267.i)
  br label %bb.gq

bb.eh:                                            ; preds = %bb.ef
  %.sroa.5530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.5530.0.copyload.i = load i64, ptr %.sroa.5530.0..sroa_idx.i, align 8, !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1967
  %.sroa.2273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2273.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6267.i, i64 40, i1 false), !noalias !1967
  store i64 %i.nr, ptr %i.x, align 8, !noalias !1967
  %.sroa.2263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2263.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6257.i, i64 40, i1 false), !noalias !1967
  %.sroa.3264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 4 uses
  store i64 %.sroa.5527.0.copyload.i, ptr %.sroa.3264.0..sroa_idx.i, align 8, !noalias !1967
  %i.nz = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 6 uses
  store i64 %i.nv, ptr %i.nz, align 8, !noalias !1967
  %.sroa.3274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store i64 %.sroa.5530.0.copyload.i, ptr %.sroa.3274.0..sroa_idx.i, align 8, !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6267.i)
  %.sroa.4569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %.sroa.5570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.4555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.3303.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.4563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.sroa.5564.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.oc = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %i.od = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.oe = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.of = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %.sroa.3334.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.og = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  %i.oi = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  br label %bb.ei

bb.ei:                                            ; preds = %bb.fh, %bb.eh
  %i.ok = phi i64 [ %i.nr, %bb.eh ], [ %.pre710.i, %bb.fh ] ; 3 uses
  %i.ol = phi i64 [ 0, %bb.eh ], [ %i.qz, %bb.fh ] ; 4 uses
  %i.om = phi i64 [ 0, %bb.eh ], [ %i.ra, %bb.fh ] ; 4 uses
  %i.on = phi i64 [ %i.nv, %bb.eh ], [ %.pre711.i, %bb.fh ]
  %.sroa.0252.0.i = phi i32 [ 0, %bb.eh ], [ %.sroa.0252.2.i.1, %bb.fh ] ; 6 uses
  %.sroa.0.8.i = phi i64 [ %i.my, %bb.eh ], [ %.sroa.0.10.i.1, %bb.fh ] ; 5 uses
  %i.oo = trunc nuw i64 %i.ok to i1               ; 3 uses
  %.sroa.2263.0..sroa_idx..i = select i1 %i.oo, ptr %.sroa.2263.0..sroa_idx.i, ptr null
  %i.op = trunc nuw i64 %i.on to i1
  %.sroa.0282.0.i = select i1 %i.op, ptr %.sroa.2273.0..sroa_idx.i, ptr null
  %i.oq = invoke fastcc i16 @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations16get_next_actions(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.2263.0..sroa_idx..i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.0282.0.i)
          to label %bb.ej unwind label %.thread165.loopexit.i ; 3 uses

bb.ej:                                            ; preds = %bb.ei
  %i.or = and i16 %i.oq, 255
  %.not639.i = icmp eq i16 %i.or, 255
  br i1 %.not639.i, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !1967
  %i.os = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.os, i8 0, i64 16, i1 false), !noalias !1967
  %i.ot = invoke { i64, ptr } @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.gg unwind label %.thread165.loopexit.split-lp.i, !noalias !1966 ; 2 uses

.loopexit.i.loopexit:                             ; preds = %.lr.ph507.i, %bb.fu, %bb.fv
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread151.i

.loopexit.i.loopexit.split-lp:                    ; preds = %.lr.ph507.i.1, %bb.ez, %bb.fa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread151.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.fe, %bb.fd, %bb.eu, %bb.eq, %bb.eo, %bb.gc, %bb.fz, %bb.fo, %bb.fn, %bb.fj
  %lpad.loopexit220.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread151.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke944.i
  %lpad.loopexit.split-lp221.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread151.i

bb.el:                                            ; preds = %bb.ej
  %.sroa.4.0.extract.shift = lshr i16 %i.oq, 8
  %.sroa.4.0.extract.trunc = trunc nuw nsw i16 %.sroa.4.0.extract.shift to i8
  %i.ou = trunc i16 %i.oq to i8
  switch i8 %i.ou, label %default.unreachable.i [
    i8 0, label %bb.fi
    i8 1, label %bb.fy
    i8 2, label %bb.em
    i8 3, label %bb.em
  ]

bb.em:                                            ; preds = %bb.el, %bb.el, %bb.fr, %bb.gf
  %.pre710.i390 = phi i64 [ %i.sa, %bb.fr ], [ %i.td, %bb.gf ], [ %i.ok, %bb.el ], [ %i.ok, %bb.el ] ; 3 uses
  %i.ov = phi i64 [ %i.rg, %bb.fr ], [ %i.ol, %bb.gf ], [ %i.ol, %bb.el ], [ %i.ol, %bb.el ] ; 4 uses
  %i.ow = phi i64 [ %i.rd, %bb.fr ], [ %i.om, %bb.gf ], [ %i.om, %bb.el ], [ %i.om, %bb.el ] ; 4 uses
  %.sroa.0252.2.i = phi i32 [ %i.rz, %bb.fr ], [ %.sroa.0252.0.i, %bb.gf ], [ %.sroa.0252.0.i, %bb.el ], [ %.sroa.0252.0.i, %bb.el ] ; 6 uses
  %.sroa.0.10.i = phi i64 [ %.sroa.0.11.lcssa.i, %bb.fr ], [ %.sroa.0.8.i, %bb.gf ], [ %.sroa.0.8.i, %bb.el ], [ %.sroa.0.8.i, %bb.el ] ; 4 uses
  switch i8 %.sroa.4.0.extract.trunc, label %default.unreachable [
    i8 0, label %bb.et
    i8 1, label %bb.en
    i8 2, label %bb.fh
    i8 3, label %bb.fh
  ]

bb.en:                                            ; preds = %bb.em
  %i.ox = load i64, ptr %i.nz, align 8, !range !11, !noalias !1967, !noundef !9
  %i.oy = trunc nuw i64 %i.ox to i1
  br i1 %i.oy, label %bb.eo, label %.invoke944.i, !prof !8

bb.eo:                                            ; preds = %bb.en
  %i.oz = load i32, ptr %i.of, align 4, !noalias !1967, !noundef !9
  %i.pa = zext i32 %i.oz to i64
  %i.pb = mul nuw nsw i64 %i.pa, 48
  %i.pc = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 2, i64 noundef %i.pb)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.i, !noalias !1966 ; 2 uses

bb.ep:                                            ; preds = %bb.eo
  %i.pd = extractvalue { i64, ptr } %i.pc, 0
  %i.pe = trunc nuw i64 %i.pd to i1
  br i1 %i.pe, label %bb.gb, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6327.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1967
  invoke fastcc void @_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_Es_0Cs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.r, ptr noalias nofree noundef align 8 dereferenceable(16) %4)
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.i, !noalias !1966

bb.er:                                            ; preds = %bb.eq
  %i.pf = load i64, ptr %i.r, align 8, !range !16, !noalias !1967, !noundef !9 ; 2 uses
  %i.pg = icmp eq i64 %i.pf, 2
  br i1 %i.pg, label %bb.ge, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6327.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4569.0..sroa_idx.i, i64 40, i1 false), !noalias !1967
  %.sroa.5570.0.copyload.i.1 = load i64, ptr %.sroa.5570.0..sroa_idx.i, align 8, !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.oe, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6327.i, i64 40, i1 false), !noalias !1967
  store i64 %i.pf, ptr %i.nz, align 8, !noalias !1967
  store i64 %.sroa.5570.0.copyload.i.1, ptr %.sroa.3334.0..sroa_idx.i.1, align 8, !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6327.i)
  br label %bb.fh

bb.et:                                            ; preds = %bb.em
  %i.ph = load i64, ptr %i.nz, align 8, !range !11, !noalias !1967, !noundef !9
  %i.pi = trunc nuw i64 %i.ph to i1
  br i1 %i.pi, label %bb.eu, label %.invoke944.i, !prof !8

bb.eu:                                            ; preds = %bb.et
  %i.pj = load i32, ptr %i.oh, align 4, !noalias !1967, !noundef !9
  %i.pk = zext i32 %i.pj to i64
  %i.pl = add i64 %i.ow, %i.pk                    ; 2 uses
  store i64 %i.pl, ptr %i.bl, align 8, !noalias !1967
  %i.pm = load i32, ptr %i.oi, align 8, !noalias !1967, !noundef !9
  %i.pn = zext i32 %i.pm to i64
  %i.po = add i64 %i.ov, %i.pn                    ; 2 uses
  store i64 %i.po, ptr %i.bn, align 8, !noalias !1967
  %i.pp = invoke { i64, ptr } @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.og, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ev unwind label %.loopexit.split-lp.loopexit.i, !noalias !1966 ; 2 uses

bb.ev:                                            ; preds = %bb.eu
  %i.pq = extractvalue { i64, ptr } %i.pp, 0
  %i.pr = extractvalue { i64, ptr } %i.pp, 1      ; 2 uses
  %i.ps = trunc nuw i64 %i.pq to i1
  br i1 %i.ps, label %bb.fl, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = add i64 %.sroa.0.10.i, %i.pt            ; 2 uses
  %i.pv = load i32, ptr %i.oj, align 4, !noalias !1967, !noundef !9 ; 3 uses
  %.not531.i.1 = icmp eq i32 %i.pv, 0
  br i1 %.not531.i.1, label %._crit_edge508.i.1, label %.lr.ph507.i.1

.lr.ph507.i.1:                                    ; preds = %bb.ew, %bb.fc
  %.sroa.0.11505.i.1 = phi i64 [ %i.qm, %bb.fc ], [ %i.pu, %bb.ew ]
  %.sroa.0552.0504.i.1 = phi i32 [ %i.pw, %bb.fc ], [ 0, %bb.ew ] ; 2 uses
  %i.pw = add nuw i32 %.sroa.0552.0504.i.1, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1967
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.ex unwind label %.loopexit.i.loopexit.split-lp, !noalias !1966

bb.ex:                                            ; preds = %.lr.ph507.i.1
  %i.px = load i64, ptr %i.t, align 8, !range !11, !noalias !1967, !noundef !9
  %i.py = trunc nuw i64 %i.px to i1
  %i.pz = load ptr, ptr %i.oa, align 8, !noalias !1967 ; 2 uses
  br i1 %i.py, label %.loopexit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3303.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4555.0..sroa_idx.i, i64 40, i1 false), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1967
  %i.qa = ptrtoint ptr %i.pz to i64               ; 2 uses
  store i64 %i.qa, ptr %i.u, align 8, !noalias !1967
  %i.qb = load i64, ptr %i.nc, align 8, !alias.scope !1980, !noalias !1981, !noundef !9 ; 3 uses
  %i.qc = load i64, ptr %i.y, align 8, !range !13, !alias.scope !1980, !noalias !1981, !noundef !9
  %i.qd = icmp eq i64 %i.qb, %i.qc
  br i1 %i.qd, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyTmmEEE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #19
          to label %bb.fa unwind label %.loopexit.i.loopexit.split-lp, !noalias !1966

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.qe = load ptr, ptr %i.nb, align 8, !alias.scope !1980, !noalias !1981, !nonnull !9, !noundef !9
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %i.qb ; 3 uses
  store i64 %i.qa, ptr %i.qf, align 8, !noalias !1966
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store i32 %.sroa.0252.2.i, ptr %.sroa.4.0..sroa_idx.i.1, align 8, !noalias !1966
  %.sroa.530.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.qf, i64 12
  store i32 %.sroa.0552.0504.i.1, ptr %.sroa.530.0..sroa_idx.i.1, align 4, !noalias !1966
  %i.qg = add i64 %i.qb, 1
  store i64 %i.qg, ptr %i.nc, align 8, !alias.scope !1980, !noalias !1981
  %i.qh = invoke { i64, ptr } @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.fb unwind label %.loopexit.i.loopexit.split-lp, !noalias !1966 ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %i.qi = extractvalue { i64, ptr } %i.qh, 0
  %i.qj = extractvalue { i64, ptr } %i.qh, 1      ; 2 uses
  %i.qk = trunc nuw i64 %i.qi to i1
  br i1 %i.qk, label %.loopexit384, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = add i64 %.sroa.0.11505.i.1, %i.ql       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1967
  %exitcond708.not.i.1 = icmp eq i32 %i.pw, %i.pv
  br i1 %exitcond708.not.i.1, label %._crit_edge508.i.1, label %.lr.ph507.i.1

._crit_edge508.i.1:                               ; preds = %bb.fc, %bb.ew
  %.sroa.0.11.lcssa.i.1 = phi i64 [ %i.pu, %bb.ew ], [ %i.qm, %bb.fc ]
  %i.qn = load i64, ptr %i.og, align 8, !noalias !1967, !noundef !9
  %i.qo = load i64, ptr %i.na, align 8, !alias.scope !1982, !noalias !1967, !noundef !9 ; 3 uses
  %i.qp = load i64, ptr %i.z, align 8, !range !13, !alias.scope !1982, !noalias !1967, !noundef !9
  %i.qq = icmp eq i64 %i.qo, %i.qp
  br i1 %i.qq, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %._crit_edge508.i.1
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTymEE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #19
          to label %bb.fe unwind label %.loopexit.split-lp.loopexit.i, !noalias !1966

bb.fe:                                            ; preds = %bb.fd, %._crit_edge508.i.1
  %i.qr = load ptr, ptr %i.mz, align 8, !alias.scope !1982, !noalias !1967, !nonnull !9, !noundef !9
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.qr, i64 %i.qo ; 2 uses
  store i64 %i.qn, ptr %i.qs, align 8, !noalias !1966
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store i32 %.sroa.0252.2.i, ptr %i.qt, align 8, !noalias !1966
  %i.qu = add i64 %i.qo, 1
  store i64 %i.qu, ptr %i.na, align 8, !alias.scope !1982, !noalias !1967
  %i.qv = add i32 %.sroa.0252.2.i, 1
  %i.qw = add i32 %i.qv, %i.pv
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6311.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1967
  invoke fastcc void @_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_Es_0Cs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.s, ptr noalias nofree noundef align 8 dereferenceable(16) %4)
          to label %bb.ff unwind label %.loopexit.split-lp.loopexit.i, !noalias !1966

bb.ff:                                            ; preds = %bb.fe
  %i.qx = load i64, ptr %i.s, align 8, !range !16, !noalias !1967, !noundef !9 ; 2 uses
  %i.qy = icmp eq i64 %i.qx, 2
  br i1 %i.qy, label %bb.fq, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6311.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4563.0..sroa_idx.i, i64 40, i1 false), !noalias !1967
  %.sroa.5564.0.copyload.i.1 = load i64, ptr %.sroa.5564.0..sroa_idx.i, align 8, !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.og, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6311.i, i64 40, i1 false), !noalias !1967
  store i64 %i.qx, ptr %i.nz, align 8, !noalias !1967
  store i64 %.sroa.5564.0.copyload.i.1, ptr %i.oi, align 8, !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6311.i)
  %.pre710.i.pre = load i64, ptr %i.x, align 8, !range !11, !noalias !1967
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.es, %bb.em, %bb.em
  %.pre710.i = phi i64 [ %.pre710.i.pre, %bb.fg ], [ %.pre710.i390, %bb.es ], [ %.pre710.i390, %bb.em ], [ %.pre710.i390, %bb.em ]
  %i.qz = phi i64 [ %i.po, %bb.fg ], [ %i.ov, %bb.es ], [ %i.ov, %bb.em ], [ %i.ov, %bb.em ]
  %i.ra = phi i64 [ %i.pl, %bb.fg ], [ %i.ow, %bb.es ], [ %i.ow, %bb.em ], [ %i.ow, %bb.em ]
  %.sroa.0252.2.i.1 = phi i32 [ %i.qw, %bb.fg ], [ %.sroa.0252.2.i, %bb.es ], [ %.sroa.0252.2.i, %bb.em ], [ %.sroa.0252.2.i, %bb.em ]
  %.sroa.0.10.i.1 = phi i64 [ %.sroa.0.11.lcssa.i.1, %bb.fg ], [ %.sroa.0.10.i, %bb.es ], [ %.sroa.0.10.i, %bb.em ], [ %.sroa.0.10.i, %bb.em ]
  %.pre711.i = load i64, ptr %i.nz, align 8, !range !11, !noalias !1967
  br label %bb.ei

bb.fi:                                            ; preds = %bb.el
  br i1 %i.oo, label %bb.fj, label %.invoke944.i, !prof !8

bb.fj:                                            ; preds = %bb.fi
  %i.rb = load i32, ptr %i.oc, align 4, !noalias !1967, !noundef !9
  %i.rc = zext i32 %i.rb to i64
  %i.rd = add i64 %i.om, %i.rc                    ; 2 uses
  store i64 %i.rd, ptr %i.bl, align 8, !noalias !1967
  %i.re = load i32, ptr %.sroa.3264.0..sroa_idx.i, align 8, !noalias !1967, !noundef !9
  %i.rf = zext i32 %i.re to i64
  %i.rg = add i64 %i.ol, %i.rf                    ; 2 uses
  store i64 %i.rg, ptr %i.bn, align 8, !noalias !1967
  %i.rh = invoke { i64, ptr } @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.2263.0..sroa_idx.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.fk unwind label %.loopexit.split-lp.loopexit.i, !noalias !1966 ; 2 uses

bb.fk:                                            ; preds = %bb.fj
  %i.ri = extractvalue { i64, ptr } %i.rh, 0
  %i.rj = extractvalue { i64, ptr } %i.rh, 1      ; 2 uses
  %i.rk = trunc nuw i64 %i.ri to i1
  br i1 %i.rk, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.ev, %bb.fk
  %.lcssa204 = phi ptr [ %i.rj, %bb.fk ], [ %i.pr, %bb.ev ]
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.rl, align 8, !alias.scope !1965, !noalias !1969
  %.sroa.4550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.lcssa204, ptr %.sroa.4550.0..sroa_idx.i, align 8, !alias.scope !1965, !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  br label %bb.go

bb.fm:                                            ; preds = %bb.fk
  %i.rm = ptrtoint ptr %i.rj to i64
  %i.rn = add i64 %.sroa.0.8.i, %i.rm             ; 2 uses
  %i.ro = load i32, ptr %i.od, align 4, !noalias !1967, !noundef !9 ; 3 uses
  %.not531.i = icmp eq i32 %i.ro, 0
  br i1 %.not531.i, label %._crit_edge508.i, label %.lr.ph507.i

._crit_edge508.i:                                 ; preds = %bb.fx, %bb.fm
  %.sroa.0.11.lcssa.i = phi i64 [ %i.rn, %bb.fm ], [ %i.ss, %bb.fx ]
  %i.rp = load i64, ptr %.sroa.2263.0..sroa_idx.i, align 8, !noalias !1967, !noundef !9
  %i.rq = load i64, ptr %i.na, align 8, !alias.scope !1982, !noalias !1967, !noundef !9 ; 3 uses
  %i.rr = load i64, ptr %i.z, align 8, !range !13, !alias.scope !1982, !noalias !1967, !noundef !9
  %i.rs = icmp eq i64 %i.rq, %i.rr
  br i1 %i.rs, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %._crit_edge508.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTymEE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #19
          to label %bb.fo unwind label %.loopexit.split-lp.loopexit.i, !noalias !1966

.lr.ph507.i:                                      ; preds = %bb.fm, %bb.fx
  %.sroa.0.11505.i = phi i64 [ %i.ss, %bb.fx ], [ %i.rn, %bb.fm ]
  %.sroa.0552.0504.i = phi i32 [ %i.rt, %bb.fx ], [ 0, %bb.fm ] ; 2 uses
  %i.rt = add nuw i32 %.sroa.0552.0504.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1967
  invoke void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry11deserializeINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.fs unwind label %.loopexit.i.loopexit, !noalias !1966

bb.fo:                                            ; preds = %bb.fn, %._crit_edge508.i
  %i.ru = load ptr, ptr %i.mz, align 8, !alias.scope !1982, !noalias !1967, !nonnull !9, !noundef !9
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %i.ru, i64 %i.rq ; 2 uses
  store i64 %i.rp, ptr %i.rv, align 8, !noalias !1966
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  store i32 %.sroa.0252.0.i, ptr %i.rw, align 8, !noalias !1966
  %i.rx = add i64 %i.rq, 1
  store i64 %i.rx, ptr %i.na, align 8, !alias.scope !1982, !noalias !1967
  %i.ry = add i32 %.sroa.0252.0.i, 1
  %i.rz = add i32 %i.ry, %i.ro
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6311.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1967
  invoke fastcc void @_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_Es_0Cs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.s, ptr noalias nofree noundef align 8 dereferenceable(16) %2)
          to label %bb.fp unwind label %.loopexit.split-lp.loopexit.i, !noalias !1966

bb.fp:                                            ; preds = %bb.fo
  %i.sa = load i64, ptr %i.s, align 8, !range !16, !noalias !1967, !noundef !9 ; 3 uses
  %i.sb = icmp eq i64 %i.sa, 2
  br i1 %i.sb, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.ff, %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6311.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4563.0..sroa_idx.i, i64 40, i1 false), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1967
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.sc, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6311.i, i64 40, i1 false), !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6311.i)
  br label %bb.go

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6311.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4563.0..sroa_idx.i, i64 40, i1 false), !noalias !1967
  %.sroa.5564.0.copyload.i = load i64, ptr %.sroa.5564.0..sroa_idx.i, align 8, !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2263.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6311.i, i64 40, i1 false), !noalias !1967
  store i64 %i.sa, ptr %i.x, align 8, !noalias !1967
  store i64 %.sroa.5564.0.copyload.i, ptr %.sroa.3264.0..sroa_idx.i, align 8, !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6311.i)
  br label %bb.em

bb.fs:                                            ; preds = %.lr.ph507.i
  %i.sd = load i64, ptr %i.t, align 8, !range !11, !noalias !1967, !noundef !9
  %i.se = trunc nuw i64 %i.sd to i1
  %i.sf = load ptr, ptr %i.oa, align 8, !noalias !1967 ; 2 uses
  br i1 %i.se, label %.loopexit, label %bb.ft

.loopexit:                                        ; preds = %bb.fs, %bb.ex
  %.lcssa = phi ptr [ %i.pz, %bb.ex ], [ %i.sf, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1967
  br label %.loopexit384

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3303.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4555.0..sroa_idx.i, i64 40, i1 false), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1967
  %i.sg = ptrtoint ptr %i.sf to i64               ; 2 uses
  store i64 %i.sg, ptr %i.u, align 8, !noalias !1967
  %i.sh = load i64, ptr %i.nc, align 8, !alias.scope !1980, !noalias !1981, !noundef !9 ; 3 uses
  %i.si = load i64, ptr %i.y, align 8, !range !13, !alias.scope !1980, !noalias !1981, !noundef !9
  %i.sj = icmp eq i64 %i.sh, %i.si
  br i1 %i.sj, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyTmmEEE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #19
          to label %bb.fv unwind label %.loopexit.i.loopexit, !noalias !1966

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.sk = load ptr, ptr %i.nb, align 8, !alias.scope !1980, !noalias !1981, !nonnull !9, !noundef !9
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %i.sk, i64 %i.sh ; 3 uses
  store i64 %i.sg, ptr %i.sl, align 8, !noalias !1966
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  store i32 %.sroa.0252.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1966
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sl, i64 12
  store i32 %.sroa.0552.0504.i, ptr %.sroa.530.0..sroa_idx.i, align 4, !noalias !1966
  %i.sm = add i64 %i.sh, 1
  store i64 %i.sm, ptr %i.nc, align 8, !alias.scope !1980, !noalias !1981
  %i.sn = invoke { i64, ptr } @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.fw unwind label %.loopexit.i.loopexit, !noalias !1966 ; 2 uses

bb.fw:                                            ; preds = %bb.fv
  %i.so = extractvalue { i64, ptr } %i.sn, 0
  %i.sp = extractvalue { i64, ptr } %i.sn, 1      ; 2 uses
  %i.sq = trunc nuw i64 %i.so to i1
  br i1 %i.sq, label %.loopexit384, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = add i64 %.sroa.0.11505.i, %i.sr         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1967
  %exitcond708.not.i = icmp eq i32 %i.rt, %i.ro
  br i1 %exitcond708.not.i, label %._crit_edge508.i, label %.lr.ph507.i

.loopexit384:                                     ; preds = %bb.fw, %bb.fb, %.loopexit
  %.lcssa199.sink = phi ptr [ %.lcssa, %.loopexit ], [ %i.qj, %bb.fb ], [ %i.sp, %bb.fw ]
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.st, align 8, !alias.scope !1965, !noalias !1969
  %.sroa.4560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.lcssa199.sink, ptr %.sroa.4560.0..sroa_idx.i, align 8, !alias.scope !1965, !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1967
  br label %bb.go

bb.fy:                                            ; preds = %bb.el
  br i1 %i.oo, label %bb.fz, label %.invoke944.i, !prof !8

bb.fz:                                            ; preds = %bb.fy
  %i.su = load i32, ptr %i.ob, align 4, !noalias !1967, !noundef !9
  %i.sv = zext i32 %i.su to i64
  %i.sw = mul nuw nsw i64 %i.sv, 48
  %i.sx = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 2, i64 noundef %i.sw)
          to label %bb.ga unwind label %.loopexit.split-lp.loopexit.i, !noalias !1966 ; 2 uses

.invoke944.i:                                     ; preds = %bb.et, %bb.en, %bb.fy, %bb.fi
  %i.sy = phi ptr [ @7, %bb.fi ], [ @8, %bb.fy ], [ @8, %bb.en ], [ @7, %bb.et ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sy) #23
          to label %.cont945.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1966

.cont945.i:                                       ; preds = %.invoke944.i
  unreachable

bb.ga:                                            ; preds = %bb.fz
  %i.sz = extractvalue { i64, ptr } %i.sx, 0
  %i.ta = trunc nuw i64 %i.sz to i1
  br i1 %i.ta, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ep, %bb.ga
  %.lcssa202 = phi { i64, ptr } [ %i.sx, %bb.ga ], [ %i.pc, %bb.ep ]
  %i.tb = extractvalue { i64, ptr } %.lcssa202, 1
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.tc, align 8, !alias.scope !1965, !noalias !1969
  %.sroa.4566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.tb, ptr %.sroa.4566.0..sroa_idx.i, align 8, !alias.scope !1965, !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  br label %bb.go

bb.gc:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6327.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1967
  invoke fastcc void @_RNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2a_Es_0Cs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.r, ptr noalias nofree noundef align 8 dereferenceable(16) %2)
          to label %bb.gd unwind label %.loopexit.split-lp.loopexit.i, !noalias !1966

bb.gd:                                            ; preds = %bb.gc
  %i.td = load i64, ptr %i.r, align 8, !range !16, !noalias !1967, !noundef !9 ; 3 uses
  %i.te = icmp eq i64 %i.td, 2
  br i1 %i.te, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.er, %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6327.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4569.0..sroa_idx.i, i64 40, i1 false), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1967
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.tf, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6327.i, i64 40, i1 false), !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6327.i)
  br label %bb.go

bb.gf:                                            ; preds = %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6327.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4569.0..sroa_idx.i, i64 40, i1 false), !noalias !1967
  %.sroa.5570.0.copyload.i = load i64, ptr %.sroa.5570.0..sroa_idx.i, align 8, !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2263.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6327.i, i64 40, i1 false), !noalias !1967
  store i64 %i.td, ptr %i.x, align 8, !noalias !1967
  store i64 %.sroa.5570.0.copyload.i, ptr %.sroa.3264.0..sroa_idx.i, align 8, !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6327.i)
  br label %bb.em

bb.gg:                                            ; preds = %bb.ek
  %i.tg = extractvalue { i64, ptr } %i.ot, 0
  %i.th = extractvalue { i64, ptr } %i.ot, 1      ; 2 uses
  %i.ti = trunc nuw i64 %i.tg to i1
  br i1 %i.ti, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.tj, align 8, !alias.scope !1965, !noalias !1969
  %.sroa.4572.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.th, ptr %.sroa.4572.0..sroa_idx.i, align 8, !alias.scope !1965, !noalias !1969
  store i64 1, ptr %0, align 8, !alias.scope !1965, !noalias !1969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1967
  br label %bb.go

bb.gi:                                            ; preds = %bb.gg
  %i.tk = ptrtoint ptr %i.th to i64
  %i.tl = add i64 %.sroa.0.8.i, %i.tk             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1967
  store i64 %i.tl, ptr %i.be, align 8, !noalias !1967
  %i.tm = load i64, ptr %i.ck, align 8, !noalias !1967, !noundef !9 ; 5 uses
  %i.tn = icmp ult i64 %i.tm, 576460752303423488
  call void @llvm.assume(i1 %i.tn)
  store i64 %i.tm, ptr %i.bf, align 8, !noalias !1967
  %i.to = mul nuw nsw i64 %i.tm, 12
  %i.tp = add i64 %i.to, %i.tl                    ; 2 uses
  %i.tq = load ptr, ptr %i.cj, align 8, !noalias !1967, !nonnull !9, !noundef !9 ; 4 uses
  %i.tr = load i64, ptr %i.av, align 8, !range !13, !noalias !1967, !noundef !9
  %.idx.i = shl nuw nsw i64 %i.tm, 4
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1967
  store ptr %i.tq, ptr %i.p, align 8, !noalias !1967
  %.sroa.5341.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %i.tq, ptr %.sroa.5341.0..sroa_idx.i, align 8, !noalias !1967
  %.sroa.6342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.tr, ptr %.sroa.6342.0..sroa_idx.i, align 8, !noalias !1967
  %.sroa.7343.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.ts, ptr %.sroa.7343.0..sroa_idx.i, align 8, !noalias !1967
  %i.tt = icmp eq i64 %i.tm, 0
  br i1 %i.tt, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit.i, label %.lr.ph526.i

bb.gj:                                            ; preds = %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit.i, %.lr.ph526.i
  %i.tu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.thread151.i unwind label %bb.ds, !noalias !1966

.lr.ph526.i:                                      ; preds = %bb.gi, %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit721.i
  %i.tv = phi ptr [ %i.vl, %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit721.i ], [ %i.tq, %bb.gi ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  store ptr %i.tw, ptr %.sroa.5341.0..sroa_idx.i, align 8, !alias.scope !1983, !noalias !1984
  %i.tx = load i64, ptr %i.tv, align 8, !noalias !1985, !noundef !9
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tz = load i32, ptr %i.ty, align 8, !noalias !1985, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1967
  store i64 %i.tx, ptr %i.j, align 8, !noalias !1967
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8)
          to label %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit.i unwind label %bb.gj, !noalias !1966

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit.i: ; preds = %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit721.i, %bb.gi
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTymEEECs9SMuO7kbZ2K_7git_xet.exit700.i unwind label %.thread165.loopexit.split-lp.i, !noalias !1966

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTymEEECs9SMuO7kbZ2K_7git_xet.exit700.i: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1967
  store i64 %i.tp, ptr %i.bg, align 8, !noalias !1967
  %i.ua = load i64, ptr %i.na, align 8, !noalias !1967, !noundef !9 ; 5 uses
  %i.ub = icmp ult i64 %i.ua, 576460752303423488
  call void @llvm.assume(i1 %i.ub)
  store i64 %i.ua, ptr %i.bh, align 8, !noalias !1967
  %i.uc = mul nuw nsw i64 %i.ua, 12
  %i.ud = add i64 %i.uc, %i.tp                    ; 2 uses
  %i.ue = load ptr, ptr %i.mz, align 8, !noalias !1967, !nonnull !9, !noundef !9 ; 4 uses
  %i.uf = load i64, ptr %i.z, align 8, !range !13, !noalias !1967, !noundef !9
  %.idx532.i = shl nuw nsw i64 %i.ua, 4
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 %.idx532.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1967
  store ptr %i.ue, ptr %i.o, align 8, !noalias !1967
  %.sroa.5351.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %i.ue, ptr %.sroa.5351.0..sroa_idx.i, align 8, !noalias !1967
  %.sroa.6352.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.uf, ptr %.sroa.6352.0..sroa_idx.i, align 8, !noalias !1967
  %.sroa.7353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store ptr %i.ug, ptr %.sroa.7353.0..sroa_idx.i, align 8, !noalias !1967
  %i.uh = icmp eq i64 %i.ua, 0
  br i1 %i.uh, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit702.i, label %.lr.ph527.i

bb.gk:                                            ; preds = %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit706.i, %.lr.ph527.i
  %i.ui = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %.thread151.i unwind label %bb.ds, !noalias !1966

.lr.ph527.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTymEEECs9SMuO7kbZ2K_7git_xet.exit700.i, %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit719.i
  %i.uj = phi ptr [ %i.vi, %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit719.i ], [ %i.ue, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTymEEECs9SMuO7kbZ2K_7git_xet.exit700.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  store ptr %i.uk, ptr %.sroa.5351.0..sroa_idx.i, align 8, !alias.scope !1986, !noalias !1987
  %i.ul = load i64, ptr %i.uj, align 8, !noalias !1988, !noundef !9
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.un = load i32, ptr %i.um, align 8, !noalias !1988, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1967
  store i64 %i.ul, ptr %i.h, align 8, !noalias !1967
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8)
          to label %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit706.i unwind label %bb.gk, !noalias !1966

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit702.i: ; preds = %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit719.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTymEEECs9SMuO7kbZ2K_7git_xet.exit700.i
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTymEEECs9SMuO7kbZ2K_7git_xet.exit708.i unwind label %.thread165.loopexit.split-lp.i, !noalias !1966

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTymEEECs9SMuO7kbZ2K_7git_xet.exit708.i: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTymEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit702.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1967
  %i.uo = load ptr, ptr %i.nb, align 8, !noalias !1967, !nonnull !9, !noundef !9
  %i.up = load i64, ptr %i.nc, align 8, !noalias !1967, !noundef !9
  invoke fastcc void @_RINvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB5_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2U_Es2_0ECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 %i.uo, i64 noundef %i.up)
          to label %bb.gl unwind label %.thread165.loopexit.split-lp.i, !noalias !1966

bb.gl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTymEEECs9SMuO7kbZ2K_7git_xet.exit708.i
  store i64 %i.ud, ptr %i.bi, align 8, !noalias !1967
  %i.uq = load i64, ptr %i.nc, align 8, !noalias !1967, !noundef !9 ; 4 uses
  %i.ur = icmp ult i64 %i.uq, 576460752303423488
  call void @llvm.assume(i1 %i.ur)
  store i64 %i.uq, ptr %i.bj, align 8, !noalias !1967
  %i.us = shl nuw nsw i64 %i.uq, 4                ; 2 uses
  %i.ut = add i64 %i.us, %i.ud
  %i.uu = load ptr, ptr %i.nb, align 8, !noalias !1967, !nonnull !9, !noundef !9 ; 4 uses
  %i.uv = load i64, ptr %i.y, align 8, !range !13, !noalias !1967, !noundef !9
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1967
  store ptr %i.uu, ptr %i.n, align 8, !noalias !1967
  %.sroa.5361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.uu, ptr %.sroa.5361.0..sroa_idx.i, align 8, !noalias !1967
  %.sroa.6362.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.uv, ptr %.sroa.6362.0..sroa_idx.i, align 8, !noalias !1967
  %.sroa.7363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  store ptr %i.uw, ptr %.sroa.7363.0..sroa_idx.i, align 8, !noalias !1967
  %i.ux = icmp eq i64 %i.uq, 0
  br i1 %i.ux, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTmmEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit.i, label %.lr.ph529.i

bb.gm:                                            ; preds = %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit715.i, %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit711.i, %.lr.ph529.i
  %i.uy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTmmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %common.resume.i unwind label %bb.ds, !noalias !1966

.lr.ph529.i:                                      ; preds = %bb.gl, %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit717.i
  %i.uz = phi ptr [ %i.vf, %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit717.i ], [ %i.uu, %bb.gl ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  store ptr %i.va, ptr %.sroa.5361.0..sroa_idx.i, align 8, !alias.scope !1989, !noalias !1990
  %.sroa.539.8.copyload.i = load i64, ptr %i.uz, align 8, !noalias !1991
  %.sroa.740.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %.sroa.740.8.copyload.i = load i32, ptr %.sroa.740.8..sroa_idx.i, align 8, !noalias !1991
  %.sroa.841.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uz, i64 12
  %.sroa.841.8.copyload.i = load i32, ptr %.sroa.841.8..sroa_idx.i, align 4, !noalias !1991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1967
  store i64 %.sroa.539.8.copyload.i, ptr %i.f, align 8, !noalias !1967
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8)
          to label %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit711.i unwind label %bb.gm, !noalias !1966

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTmmEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit.i: ; preds = %_RNvXs7_NtNtCsexYYUdYSQU6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs9SMuO7kbZ2K_7git_xet.exit717.i, %bb.gl
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTmmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n), !noalias !1966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1967
  store i64 %i.ut, ptr %i.bo, align 8, !noalias !1967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1967
  call void @_RINvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_18MDBShardFileFooter9serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5), !noalias !1966
  %i.vb = load i64, ptr %i.m, align 8, !range !1968, !noalias !1967, !noundef !9 ; 2 uses
  %.not640.i = icmp eq i64 %i.vb, -1
  br i1 %.not640.i, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyTmmEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs9SMuO7kbZ2K_7git_xet.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.vc = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.vc, ptr noundef nonnull align 8 dereferenceable(200) %i.ay, i64 200, i1 false), !noalias !1967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i64 48, i1 false), !noalias !1967
end_hunk_0
