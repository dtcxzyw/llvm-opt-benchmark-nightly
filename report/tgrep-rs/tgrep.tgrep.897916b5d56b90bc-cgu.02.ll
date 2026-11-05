Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.02?download=true
inline.NumInlined: 782
inline.NumDeleted: 344
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_server:.split
  %i.mg = load i32, ptr %i.db, align 8, !range !23, !noundef !6
  %i.mh = trunc nuw i32 %i.mg to i1
  br i1 %i.mh, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.split
  %i.mi = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %i.mk = call noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.mj)
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mk, ptr %i.ml, align 8
  store i8 1, ptr %0, align 8
  br label %bb.aeg

bb.b:                                             ; preds = %.split
  %i.mm = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.mn = load i32, ptr %i.mm, align 4, !range !24, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  store i32 %i.mn, ptr %i.mc, align 4
  %i.mo = invoke noundef ptr @_RNvMNtNtCs5Xr050g3D4S_3std3net3tcpNtB2_9TcpStream16set_read_timeout(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.mc, i64 300, i32 noundef 0)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.aff, %bb.aee, %bb.f, %bb.e, %bb.b
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.afn

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.mo, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.mq = invoke noundef nonnull ptr @_RNvXs_NtCsjYKKaZ3qa7A_6anyhow5errorNtB6_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.mo)
          to label %bb.afm unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ly)
  invoke fastcc void @_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions12all_patterns(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ly, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(624) %7)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.mr = load i64, ptr %i.ly, align 8, !range !15, !noundef !6 ; 2 uses
  %i.ms = icmp eq i64 %i.mr, -1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8            ; 5 uses
  br i1 %i.ms, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ly)
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mu, ptr %i.mv, align 8
  store i8 1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit1071

bb.i:                                             ; preds = %bb.g
  %.sroa.5356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %.sroa.5356.0.copyload = load i64, ptr %.sroa.5356.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ly)
  store i64 %i.mr, ptr %i.lz, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store ptr %i.mu, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  store i64 %.sroa.5356.0.copyload, ptr %.sroa.526.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lv)
  %.not597 = icmp eq i64 %.sroa.5356.0.copyload, 0
  br i1 %.not597, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.mw = getelementptr inbounds nuw i8, ptr %7, i64 208
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.lv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mw)
          to label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers_0B5_.exit unwind label %bb.s

_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers_0B5_.exit: ; preds = %bb.j
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  store i64 0, ptr %i.mx, align 8, !alias.scope !866
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !866
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lv, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !866
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.my = add i64 %.sroa.5356.0.copyload, -1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !867
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mu)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !868
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 384307168202282326) %i.my, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.q, !noalias !867

.noexc.i:                                         ; preds = %.noexc
  %i.mz = load i64, ptr %i.b, align 8, !range !20, !noalias !868, !noundef !6
  %i.na = trunc nuw i64 %i.mz to i1
  %i.nb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.nc = load i64, ptr %i.nb, align 8, !range !21, !noalias !868, !noundef !6 ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.na, label %bb.l, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i, !prof !10

bb.l:                                             ; preds = %.noexc.i
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !868
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.nc, i64 %i.ne) #24
          to label %.noexc1.i unwind label %bb.q, !noalias !867

.noexc1.i:                                        ; preds = %bb.l
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %.noexc.i
  %i.nf = load ptr, ptr %i.nd, align 8, !noalias !868, !nonnull !6, !noundef !6 ; 2 uses
  %i.ng = icmp ule i64 %i.my, %i.nc
  call void @llvm.assume(i1 %i.ng)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !868
  store i64 %i.nc, ptr %i.d, align 8, !noalias !868
  %i.nh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.nf, ptr %i.nh, align 8, !noalias !868
  %i.ni = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.nj = getelementptr [24 x i8], ptr %i.mu, i64 %.sroa.5356.0.copyload
  %i.nk = icmp eq i64 %i.nc, 0
  br i1 %i.nk, label %.loopexit1399, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.n
  %.sroa.012.023.i.i.pn = phi ptr [ %.sroa.012.023.i.i, %bb.n ], [ %i.mu, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %.sroa.7.022.i.i = phi i64 [ %i.nn, %bb.n ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %i.nl, %bb.n ], [ %i.nc, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %.sroa.012.023.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.pn, i64 24 ; 3 uses
  %i.nl = add i64 %.sroa.10.021.i.i, -1           ; 2 uses
  %i.nm = icmp eq ptr %.sroa.012.023.i.i, %i.nj
  br i1 %i.nm, label %.loopexit1399, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !868
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i.i)
          to label %bb.n unwind label %bb.p, !noalias !869

bb.n:                                             ; preds = %bb.m
  %i.nn = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.no = getelementptr inbounds nuw [24 x i8], ptr %i.nf, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.no, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !868
  %i.np = icmp eq i64 %i.nl, 0
  br i1 %i.np, label %.loopexit1399, label %.lr.ph.i.i

bb.o:                                             ; preds = %bb.p
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !869
  unreachable

bb.p:                                             ; preds = %bb.m
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.ni, align 8, !noalias !868
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #22
          to label %.body.i unwind label %bb.o, !noalias !869

bb.q:                                             ; preds = %bb.l, %.noexc
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %bb.p
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.nr, %bb.q ], [ %lpad.loopexit.i.i, %bb.p ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #22
          to label %.body869 unwind label %bb.r, !noalias !867

bb.r:                                             ; preds = %.body.i
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !867
  unreachable

.body869:                                         ; preds = %bb.afc, %.body.i, %bb.s, %.body1059
  %.pn710.pn.pn.pn = phi { ptr, i32 } [ %.pn710.pn.pn, %.body1059 ], [ %eh.lpad-body.i, %.body.i ], [ %i.nt, %bb.s ], [ %i.bne, %bb.afc ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.lz) #22
          to label %bb.afn unwind label %bb.xu

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i1062, %bb.k, %bb.j, %bb.aed
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %.body869

bb.t:                                             ; preds = %_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers_0B5_.exit, %.loopexit1399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lw)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lw, ptr noundef nonnull align 8 dereferenceable(24) %i.nu, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lv)
  %i.nv = getelementptr inbounds nuw i8, ptr %7, i64 576
  %i.nw = load i8, ptr %i.nv, align 8, !range !8, !noundef !6
  %i.nx = trunc nuw i8 %i.nw to i1
  %i.ny = getelementptr inbounds nuw i8, ptr %7, i64 607
  %i.nz = load i8, ptr %i.ny, align 1, !range !8
  %i.oa = trunc nuw i8 %i.nz to i1                ; 2 uses
  %or.cond = select i1 %i.nx, i1 true, i1 %i.oa   ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %7, i64 574 ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 2, !range !8
  %i.od = trunc nuw i8 %i.oc to i1                ; 2 uses
  %i.oe = select i1 %or.cond, i1 true, i1 %i.od
  br i1 %i.oe, label %16, label %11

.loopexit1399:                                    ; preds = %bb.n, %.lr.ph.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i
  store i64 %i.my, ptr %i.ni, align 8, !noalias !868
  %10 = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lv, ptr noundef nonnull align 8 dereferenceable(48) %i.da, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %bb.t

11:                                               ; preds = %bb.t
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 591
  %13 = load i8, ptr %12, align 1, !range !8, !noundef !6
  %14 = trunc nuw i8 %13 to i1
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %bb.t, %11
  %.sroa.027.0 = phi i1 [ %15, %11 ], [ false, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lu)
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 619
  %18 = load i8, ptr %17, align 1, !range !11, !alias.scope !871, !noundef !6
  %19 = invoke noundef zeroext i1 @_RNvMs_NtCsbNLsQi0JuJ4_5tgrep6outputNtB4_9ColorMode10is_enabled(i8 noundef %18)
          to label %.noexc871 unwind label %bb.w

.noexc871:                                        ; preds = %16
  br i1 %19, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.noexc871
  %i.of = getelementptr inbounds nuw i8, ptr %7, i64 578
  %i.og = load i8, ptr %i.of, align 2, !range !8, !alias.scope !871, !noundef !6
  %i.oh = trunc nuw i8 %i.og to i1
  %i.oi = getelementptr inbounds nuw i8, ptr %7, i64 579
  %i.oj = load i8, ptr %i.oi, align 1, !range !8, !alias.scope !871
  %i.ok = trunc nuw i8 %i.oj to i1
  %or.cond.i = select i1 %i.oh, i1 true, i1 %i.ok
  %i.ol = getelementptr inbounds nuw i8, ptr %7, i64 604
  %i.om = load i8, ptr %i.ol, align 4, !range !8, !alias.scope !871
  %i.on = trunc nuw i8 %i.om to i1
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.on
  %or.cond8.i = select i1 %or.cond5.i, i1 true, i1 %i.oa
  %i.oo = getelementptr inbounds nuw i8, ptr %7, i64 584
  %i.op = load i8, ptr %i.oo, align 8, !range !8, !alias.scope !871
  %i.oq = trunc nuw i8 %i.op to i1
  %or.cond11.i = select i1 %or.cond8.i, i1 true, i1 %i.oq
  %i.or = getelementptr inbounds nuw i8, ptr %7, i64 496
  %i.os = load i64, ptr %i.or, align 8, !range !15, !alias.scope !871
  %.not.i = icmp ne i64 %i.os, -1
  %or.cond13.not.i = select i1 %or.cond11.i, i1 true, i1 %.not.i
  br i1 %or.cond13.not.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ot = getelementptr inbounds nuw i8, ptr %7, i64 580
  %i.ou = load i8, ptr %i.ot, align 4, !range !8, !alias.scope !871, !noundef !6
  br label %bb.x

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.y, %.body, %bb.w
  %.pn710.pn = phi { ptr, i32 } [ %.pn705, %.body ], [ %i.ov, %bb.w ], [ %.pn710, %bb.y ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.lw) #22
          to label %.body1059 unwind label %bb.xu

bb.w:                                             ; preds = %16, %bb.aew, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderRNtNtNtCs5Xr050g3D4S_3std3net3tcp9TcpStreamEECsbNLsQi0JuJ4_5tgrep.exit1051
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit

bb.x:                                             ; preds = %.noexc871, %bb.u, %bb.v
  %.sroa.0.0.i = phi i8 [ %i.ou, %bb.v ], [ 1, %.noexc871 ], [ 1, %bb.u ]
  store i8 %.sroa.0.0.i, ptr %i.lu, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lt)
  %i.ow = getelementptr inbounds nuw i8, ptr %7, i64 112
  %.val859 = load i64, ptr %i.ow, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %7, i64 605
  %.val860 = load i8, ptr %i.ox, align 1, !range !8, !noundef !6
  %i.oy = trunc nuw i8 %.val860 to i1
  %i.oz = trunc nuw i64 %.val859 to i8
  %i.pa = and i8 %i.oz, 1
  %i.pb = select i1 %i.oy, i8 1, i8 %i.pa
  store i8 %i.pb, ptr %i.lt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ls)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lr)
  store ptr null, ptr %i.lr, align 8
  %.sroa.4371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  store i64 0, ptr %.sroa.4371.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cz, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.z unwind label %.body732

bb.y:                                             ; preds = %.body732, %.body846.thread, %.body843.thread, %bb.afk, %.body732.thread
  %.pn710 = phi { ptr, i32 } [ %eh.lpad-body8471091, %.body846.thread ], [ %.pn707, %bb.afk ], [ %eh.lpad-body8441096, %.body843.thread ], [ %eh.lpad-body7331284, %.body732.thread ], [ %i.aro, %.body732 ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lr)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json3map3MapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtBG_5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.xu

bb.z:                                             ; preds = %bb.x
  %i.pc = load i64, ptr %i.cz, align 8, !range !20, !noundef !6
  %i.pd = trunc nuw i64 %i.pc to i1
  %i.pe = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.pf = load i64, ptr %i.pe, align 8, !range !21, !noundef !6 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  br i1 %i.pd, label %bb.aa, label %bb.ab, !prof !10

bb.aa:                                            ; preds = %bb.z
  %i.ph = load i64, ptr %i.pg, align 8
  br label %.invoke1551

.invoke1551:                                      ; preds = %bb.rb, %bb.aw, %bb.al, %bb.aa
  %i.pi = phi i64 [ %i.pf, %bb.aa ], [ %i.py, %bb.al ], [ %i.qp, %bb.aw ], [ %i.ari, %bb.rb ]
  %i.pj = phi i64 [ %i.ph, %bb.aa ], [ %i.qa, %bb.al ], [ %i.qr, %bb.aw ], [ %i.ark, %bb.rb ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.pi, i64 %i.pj) #24
          to label %.cont1552 unwind label %.body732

.cont1552:                                        ; preds = %.invoke1551
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.pk = load ptr, ptr %i.pg, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.pl = icmp samesign ugt i64 %i.pf, 6
  call void @llvm.assume(i1 %i.pl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.pk, ptr noundef nonnull align 1 dereferenceable(7) @33, i64 7, i1 false)
  store i64 %i.pf, ptr %i.lp, align 8
  %.sroa.4375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store ptr %i.pk, ptr %.sroa.4375.0..sroa_idx, align 8
  %.sroa.6376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store i64 7, ptr %.sroa.6376.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ln)
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ln, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @35)
          to label %bb.ac unwind label %.body846.thread1092

.body846.thread1092:                              ; preds = %bb.ab
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %.body846.thread

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.pn = load i8, ptr %i.ln, align 8, !range !25, !alias.scope !873, !noundef !6
  %i.po = icmp eq i8 %i.pn, -1
  br i1 %i.po, label %bb.ad, label %bb.ah, !prof !10

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !874
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !alias.scope !873, !nonnull !6, !align !7, !noundef !6
  store ptr %i.pq, ptr %i.f, align 8, !noalias !874
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #24
          to label %bb.af unwind label %bb.ae, !noalias !875

bb.ae:                                            ; preds = %bb.ad
  %i.pr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #22
          to label %.body846.thread unwind label %bb.ag, !noalias !875

bb.af:                                            ; preds = %bb.ad
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !875
  unreachable

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lo, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ln, i64 32, i1 false), !alias.scope !875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ln)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.lq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.lp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.lo)
          to label %bb.ai unwind label %.body732

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp)
  %i.pt = load i8, ptr %i.lq, align 8, !range !25, !alias.scope !876, !noundef !6
  %i.pu = icmp eq i8 %i.pt, -1
  br i1 %i.pu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.lq)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit unwind label %.body732

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ll)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cy, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ak unwind label %.body732

bb.ak:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit
  %i.pv = load i64, ptr %i.cy, align 8, !range !20, !noundef !6
  %i.pw = trunc nuw i64 %i.pv to i1
  %i.px = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.py = load i64, ptr %i.px, align 8, !range !21, !noundef !6 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  br i1 %i.pw, label %bb.al, label %bb.am, !prof !10

bb.al:                                            ; preds = %bb.ak
  %i.qa = load i64, ptr %i.pz, align 8
  br label %.invoke1551

bb.am:                                            ; preds = %bb.ak
  %i.qb = load ptr, ptr %i.pz, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.qc = icmp samesign ugt i64 %i.py, 5
  call void @llvm.assume(i1 %i.qc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.qb, ptr noundef nonnull align 1 dereferenceable(6) @37, i64 6, i1 false)
  store i64 %i.py, ptr %i.ll, align 8
  %.sroa.4378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store ptr %i.qb, ptr %.sroa.4378.0..sroa_idx, align 8
  %.sroa.6379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store i64 6, ptr %.sroa.6379.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lj)
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.lj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @39)
          to label %bb.an unwind label %.body843.thread1097

.body843.thread1097:                              ; preds = %bb.am
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %.body843.thread

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.qe = load i8, ptr %i.lj, align 8, !range !25, !alias.scope !878, !noundef !6
  %i.qf = icmp eq i8 %i.qe, -1
  br i1 %i.qf, label %bb.ao, label %bb.as, !prof !10

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !879
  %i.qg = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !alias.scope !878, !nonnull !6, !align !7, !noundef !6
  store ptr %i.qh, ptr %i.g, align 8, !noalias !879
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #24
          to label %bb.aq unwind label %bb.ap, !noalias !880

bb.ap:                                            ; preds = %bb.ao
  %i.qi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #22
          to label %.body843.thread unwind label %bb.ar, !noalias !880

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.qj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !880
  unreachable

bb.as:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lk, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.lj, i64 32, i1 false), !alias.scope !880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lj)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.lm, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ll, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.lk)
          to label %bb.at unwind label %.body732

bb.at:                                            ; preds = %bb.as
end_hunk_0
begin_hunk_1_@_RNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_server:.split
  %i.aac = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  br i1 %i.zz, label %bb.gt, label %bb.gu, !prof !10

bb.gt:                                            ; preds = %bb.gs
  %i.aad = load i64, ptr %i.aac, align 8
  br label %.invoke

bb.gu:                                            ; preds = %bb.gs
  %i.aae = load ptr, ptr %i.aac, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aaf = icmp samesign ugt i64 %i.aab, 9
  call void @llvm.assume(i1 %i.aaf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.aae, ptr noundef nonnull align 1 dereferenceable(10) @52, i64 10, i1 false)
  store i64 %i.aab, ptr %i.jc, align 8
  %.sroa.4423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store ptr %i.aae, ptr %.sroa.4423.0..sroa_idx, align 8
  %.sroa.6424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store i64 10, ptr %.sroa.6424.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ja)
  %i.aag = getelementptr inbounds nuw i8, ptr %7, i64 376
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBP_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ja, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aag)
          to label %bb.gv unwind label %.body801.thread1167

.body801.thread1167:                              ; preds = %bb.gu
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %.body801.thread

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.aai = load i8, ptr %i.ja, align 8, !range !25, !alias.scope !949, !noundef !6
  %i.aaj = icmp eq i8 %i.aai, -1
  br i1 %i.aaj, label %bb.gw, label %bb.ha, !prof !10

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !950
  %i.aak = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.aal = load ptr, ptr %i.aak, align 8, !alias.scope !949, !nonnull !6, !align !7, !noundef !6
  store ptr %i.aal, ptr %i.u, align 8, !noalias !950
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #24
          to label %bb.gy unwind label %bb.gx, !noalias !951

bb.gx:                                            ; preds = %bb.gw
  %i.aam = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #22
          to label %.body801.thread unwind label %bb.gz, !noalias !951

bb.gy:                                            ; preds = %bb.gw
  unreachable

bb.gz:                                            ; preds = %bb.gx
  %i.aan = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !951
  unreachable

bb.ha:                                            ; preds = %bb.gv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jb, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ja, i64 32, i1 false), !alias.scope !951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ja)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.jd, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.jc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.jb)
          to label %bb.hb unwind label %.body735

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc)
  %i.aao = load i8, ptr %i.jd, align 8, !range !25, !alias.scope !952, !noundef !6
  %i.aap = icmp eq i8 %i.aao, -1
  br i1 %i.aap, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit909, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.jd)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit909 unwind label %.body735

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit909: ; preds = %bb.hb, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ci, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.hd unwind label %.body735

bb.hd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit909
  %i.aaq = load i64, ptr %i.ci, align 8, !range !20, !noundef !6
  %i.aar = trunc nuw i64 %i.aaq to i1
  %i.aas = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.aat = load i64, ptr %i.aas, align 8, !range !21, !noundef !6 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  br i1 %i.aar, label %bb.he, label %bb.hf, !prof !10

bb.he:                                            ; preds = %bb.hd
  %i.aav = load i64, ptr %i.aau, align 8
  br label %.invoke

bb.hf:                                            ; preds = %bb.hd
  %i.aaw = load ptr, ptr %i.aau, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aax = icmp samesign ugt i64 %i.aat, 11
  call void @llvm.assume(i1 %i.aax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.aaw, ptr noundef nonnull align 1 dereferenceable(12) @53, i64 12, i1 false)
  store i64 %i.aat, ptr %i.iy, align 8
  %.sroa.4426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store ptr %i.aaw, ptr %.sroa.4426.0..sroa_idx, align 8
  %.sroa.6427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store i64 12, ptr %.sroa.6427.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ix)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iw)
  %i.aay = getelementptr inbounds nuw i8, ptr %7, i64 583
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRbECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.iw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.aay)
          to label %bb.hg unwind label %.body798.thread1172

.body798.thread1172:                              ; preds = %bb.hf
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %.body798.thread

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.aba = load i8, ptr %i.iw, align 8, !range !25, !alias.scope !954, !noundef !6
  %i.abb = icmp eq i8 %i.aba, -1
  br i1 %i.abb, label %bb.hh, label %bb.hl, !prof !10

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !955
  %i.abc = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.abd = load ptr, ptr %i.abc, align 8, !alias.scope !954, !nonnull !6, !align !7, !noundef !6
  store ptr %i.abd, ptr %i.v, align 8, !noalias !955
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #24
          to label %bb.hj unwind label %bb.hi, !noalias !956

bb.hi:                                            ; preds = %bb.hh
  %i.abe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #22
          to label %.body798.thread unwind label %bb.hk, !noalias !956

bb.hj:                                            ; preds = %bb.hh
  unreachable

bb.hk:                                            ; preds = %bb.hi
  %i.abf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !956
  unreachable

bb.hl:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.iw, i64 32, i1 false), !alias.scope !956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.iz, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.iy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ix)
          to label %bb.hm unwind label %.body735

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ix)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iy)
  %i.abg = load i8, ptr %i.iz, align 8, !range !25, !alias.scope !957, !noundef !6
  %i.abh = icmp eq i8 %i.abg, -1
  br i1 %i.abh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit911, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.iz)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit911 unwind label %.body735

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit911: ; preds = %bb.hm, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ch, i64 noundef 13, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ho unwind label %.body735

bb.ho:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit911
  %i.abi = load i64, ptr %i.ch, align 8, !range !20, !noundef !6
  %i.abj = trunc nuw i64 %i.abi to i1
  %i.abk = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.abl = load i64, ptr %i.abk, align 8, !range !21, !noundef !6 ; 3 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  br i1 %i.abj, label %bb.hp, label %bb.hq, !prof !10

bb.hp:                                            ; preds = %bb.ho
  %i.abn = load i64, ptr %i.abm, align 8
  br label %.invoke

bb.hq:                                            ; preds = %bb.ho
  %i.abo = load ptr, ptr %i.abm, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.abp = icmp samesign ugt i64 %i.abl, 12
  call void @llvm.assume(i1 %i.abp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.abo, ptr noundef nonnull align 1 dereferenceable(13) @54, i64 13, i1 false)
  store i64 %i.abl, ptr %i.iu, align 8
  %.sroa.4429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.abo, ptr %.sroa.4429.0..sroa_idx, align 8
  %.sroa.6430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store i64 13, ptr %.sroa.6430.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.it)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.is)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ir)
  %i.abq = getelementptr inbounds nuw i8, ptr %7, i64 578 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %7, i64 584
  %.val862 = load i8, ptr %i.abr, align 8, !range !8, !noundef !6
  %i.abs = trunc nuw i8 %.val862 to i1
  %.val861 = load i8, ptr %i.abq, align 2
  %i.abt = and i8 %.val861, 1
  %i.abu = xor i8 %i.abt, 1
  %i.abv = select i1 %i.abs, i8 %i.abu, i8 0
  store i8 %i.abv, ptr %i.ir, align 1
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRbECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.is, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ir)
          to label %bb.hr unwind label %.body795.thread1177

.body795.thread1177:                              ; preds = %bb.hq
  %i.abw = landingpad { ptr, i32 }
          cleanup
  br label %.body795.thread

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.abx = load i8, ptr %i.is, align 8, !range !25, !alias.scope !959, !noundef !6
  %i.aby = icmp eq i8 %i.abx, -1
  br i1 %i.aby, label %bb.hs, label %bb.hw, !prof !10

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !960
  %i.abz = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.aca = load ptr, ptr %i.abz, align 8, !alias.scope !959, !nonnull !6, !align !7, !noundef !6
  store ptr %i.aca, ptr %i.w, align 8, !noalias !960
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #24
          to label %bb.hu unwind label %bb.ht, !noalias !961

bb.ht:                                            ; preds = %bb.hs
  %i.acb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #22
          to label %.body795.thread unwind label %bb.hv, !noalias !961

bb.hu:                                            ; preds = %bb.hs
  unreachable

bb.hv:                                            ; preds = %bb.ht
  %i.acc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !961
  unreachable

bb.hw:                                            ; preds = %bb.hr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.is, i64 32, i1 false), !alias.scope !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.is)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.iv, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.iu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.it)
          to label %bb.hx unwind label %.body735

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.it)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iu)
  %i.acd = load i8, ptr %i.iv, align 8, !range !25, !alias.scope !962, !noundef !6
  %i.ace = icmp eq i8 %i.acd, -1
  br i1 %i.ace, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit914, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.iv)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit914 unwind label %.body735

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit914: ; preds = %bb.hx, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ir)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ip)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cg, i64 noundef 13, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.hz unwind label %.body735

bb.hz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit914
  %i.acf = load i64, ptr %i.cg, align 8, !range !20, !noundef !6
  %i.acg = trunc nuw i64 %i.acf to i1
  %i.ach = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.aci = load i64, ptr %i.ach, align 8, !range !21, !noundef !6 ; 3 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  br i1 %i.acg, label %bb.ia, label %bb.ib, !prof !10

bb.ia:                                            ; preds = %bb.hz
  %i.ack = load i64, ptr %i.acj, align 8
  br label %.invoke

bb.ib:                                            ; preds = %bb.hz
  %i.acl = load ptr, ptr %i.acj, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.acm = icmp samesign ugt i64 %i.aci, 12
  call void @llvm.assume(i1 %i.acm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.acl, ptr noundef nonnull align 1 dereferenceable(13) @55, i64 13, i1 false)
  store i64 %i.aci, ptr %i.ip, align 8
  %.sroa.4432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr %i.acl, ptr %.sroa.4432.0..sroa_idx, align 8
  %.sroa.6433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 13, ptr %.sroa.6433.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.io)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.in)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.im)
  br i1 %.sroa.027.0, label %bb.ic, label %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions9after_ctx.exit

bb.ic:                                            ; preds = %bb.ib
  %i.acn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aco = load i64, ptr %i.acn, align 8, !range !20, !alias.scope !963, !noundef !6 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.acq = load i64, ptr %i.acp, align 8, !range !20, !alias.scope !963, !noundef !6
  %spec.select3.i = or i64 %i.acq, %i.aco
  %i.acr = trunc nuw i64 %spec.select3.i to i1
  br i1 %i.acr, label %bb.id, label %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions9after_ctx.exit

bb.id:                                            ; preds = %bb.ic
  %i.acs = trunc nuw i64 %i.aco to i1
  %spec.select.v.i = select i1 %i.acs, i64 24, i64 56
  %spec.select.i = getelementptr inbounds nuw i8, ptr %7, i64 %spec.select.v.i
  %.sroa.3.0.i = load i64, ptr %spec.select.i, align 8, !alias.scope !963
  br label %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions9after_ctx.exit

_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions9after_ctx.exit: ; preds = %bb.id, %bb.ic, %bb.ib
  %storemerge = phi i64 [ 0, %bb.ib ], [ %.sroa.3.0.i, %bb.id ], [ 0, %bb.ic ]
  store i64 %storemerge, ptr %i.im, align 8
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRjECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.in, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.im)
          to label %bb.ie unwind label %.body792.thread1182

.body792.thread1182:                              ; preds = %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions9after_ctx.exit
  %i.act = landingpad { ptr, i32 }
          cleanup
  br label %.body792.thread

bb.ie:                                            ; preds = %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions9after_ctx.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !964)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.acu = load i8, ptr %i.in, align 8, !range !25, !alias.scope !965, !noundef !6
  %i.acv = icmp eq i8 %i.acu, -1
  br i1 %i.acv, label %bb.if, label %bb.ij, !prof !10

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !966
  %i.acw = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.acx = load ptr, ptr %i.acw, align 8, !alias.scope !965, !nonnull !6, !align !7, !noundef !6
  store ptr %i.acx, ptr %i.x, align 8, !noalias !966
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #24
          to label %bb.ih unwind label %bb.ig, !noalias !967

bb.ig:                                            ; preds = %bb.if
  %i.acy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #22
          to label %.body792.thread unwind label %bb.ii, !noalias !967

bb.ih:                                            ; preds = %bb.if
  unreachable

bb.ii:                                            ; preds = %bb.ig
  %i.acz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !967
  unreachable

bb.ij:                                            ; preds = %bb.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.io, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.in, i64 32, i1 false), !alias.scope !967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.iq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ip, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.io)
          to label %bb.ik unwind label %.body735

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ip)
  %i.ada = load i8, ptr %i.iq, align 8, !range !25, !alias.scope !968, !noundef !6
  %i.adb = icmp eq i8 %i.ada, -1
  br i1 %i.adb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit917, label %bb.il

bb.il:                                            ; preds = %bb.ik
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.iq)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit917 unwind label %.body735

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit917: ; preds = %bb.ik, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.im)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.il)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ik)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cf, i64 noundef 14, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.im unwind label %.body735

bb.im:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit917
  %i.adc = load i64, ptr %i.cf, align 8, !range !20, !noundef !6
  %i.add = trunc nuw i64 %i.adc to i1
  %i.ade = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.adf = load i64, ptr %i.ade, align 8, !range !21, !noundef !6 ; 3 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  br i1 %i.add, label %bb.in, label %bb.io, !prof !10

bb.in:                                            ; preds = %bb.im
  %i.adh = load i64, ptr %i.adg, align 8
  br label %.invoke

bb.io:                                            ; preds = %bb.im
  %i.adi = load ptr, ptr %i.adg, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.adj = icmp samesign ugt i64 %i.adf, 13
  call void @llvm.assume(i1 %i.adj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.adi, ptr noundef nonnull align 1 dereferenceable(14) @56, i64 14, i1 false)
  store i64 %i.adf, ptr %i.ik, align 8
  %.sroa.4435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.adi, ptr %.sroa.4435.0..sroa_idx, align 8
  %.sroa.6436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store i64 14, ptr %.sroa.6436.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ij)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ii)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ih)
  br i1 %.sroa.027.0, label %bb.ip, label %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions10before_ctx.exit

bb.ip:                                            ; preds = %bb.io
  %i.adk = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.adl = load i64, ptr %i.adk, align 8, !range !20, !alias.scope !969, !noundef !6 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.adn = load i64, ptr %i.adm, align 8, !range !20, !alias.scope !969, !noundef !6
  %spec.select3.i918 = or i64 %i.adn, %i.adl
  %i.ado = trunc nuw i64 %spec.select3.i918 to i1
  br i1 %i.ado, label %bb.iq, label %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions10before_ctx.exit

bb.iq:                                            ; preds = %bb.ip
  %i.adp = trunc nuw i64 %i.adl to i1
  %spec.select.v.i920 = select i1 %i.adp, i64 40, i64 56
  %spec.select.i921 = getelementptr inbounds nuw i8, ptr %7, i64 %spec.select.v.i920
  %.sroa.3.0.i922 = load i64, ptr %spec.select.i921, align 8, !alias.scope !969
  br label %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions10before_ctx.exit

_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions10before_ctx.exit: ; preds = %bb.iq, %bb.ip, %bb.io
  %storemerge599 = phi i64 [ 0, %bb.io ], [ %.sroa.3.0.i922, %bb.iq ], [ 0, %bb.ip ]
  store i64 %storemerge599, ptr %i.ih, align 8
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRjECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ii, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ih)
          to label %bb.ir unwind label %.body789.thread1187

.body789.thread1187:                              ; preds = %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions10before_ctx.exit
  %i.adq = landingpad { ptr, i32 }
          cleanup
  br label %.body789.thread

bb.ir:                                            ; preds = %_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions10before_ctx.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.adr = load i8, ptr %i.ii, align 8, !range !25, !alias.scope !971, !noundef !6
  %i.ads = icmp eq i8 %i.adr, -1
  br i1 %i.ads, label %bb.is, label %bb.iw, !prof !10

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !972
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.adu = load ptr, ptr %i.adt, align 8, !alias.scope !971, !nonnull !6, !align !7, !noundef !6
  store ptr %i.adu, ptr %i.y, align 8, !noalias !972
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #24
          to label %bb.iu unwind label %bb.it, !noalias !973

bb.it:                                            ; preds = %bb.is
  %i.adv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #22
          to label %.body789.thread unwind label %bb.iv, !noalias !973

bb.iu:                                            ; preds = %bb.is
  unreachable

bb.iv:                                            ; preds = %bb.it
  %i.adw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !973
  unreachable

bb.iw:                                            ; preds = %bb.ir
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ii, i64 32, i1 false), !alias.scope !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.il, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ik, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ij)
          to label %bb.ix unwind label %.body735

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ik)
  %i.adx = load i8, ptr %i.il, align 8, !range !25, !alias.scope !974, !noundef !6
  %i.ady = icmp eq i8 %i.adx, -1
  br i1 %i.ady, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit924, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.il)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit924 unwind label %.body735

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit924: ; preds = %bb.ix, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ih)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.il)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ig)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.if)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ce, i64 noundef 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.iz unwind label %.body735

bb.iz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit924
  %i.adz = load i64, ptr %i.ce, align 8, !range !20, !noundef !6
  %i.aea = trunc nuw i64 %i.adz to i1
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.aec = load i64, ptr %i.aeb, align 8, !range !21, !noundef !6 ; 3 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  br i1 %i.aea, label %bb.ja, label %bb.jb, !prof !10

bb.ja:                                            ; preds = %bb.iz
  %i.aee = load i64, ptr %i.aed, align 8
  br label %.invoke

bb.jb:                                            ; preds = %bb.iz
  %i.aef = load ptr, ptr %i.aed, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aeg = icmp samesign ugt i64 %i.aec, 8
  call void @llvm.assume(i1 %i.aeg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.aef, ptr noundef nonnull align 1 dereferenceable(9) @57, i64 9, i1 false)
  store i64 %i.aec, ptr %i.if, align 8
  %.sroa.4438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %i.aef, ptr %.sroa.4438.0..sroa_idx, align 8
  %.sroa.6439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store i64 9, ptr %.sroa.6439.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ie)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.id)
  %i.aeh = getelementptr inbounds nuw i8, ptr %7, i64 587
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRbECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.id, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.aeh)
          to label %bb.jc unwind label %.body786.thread1192

.body786.thread1192:                              ; preds = %bb.jb
  %i.aei = landingpad { ptr, i32 }
          cleanup
  br label %.body786.thread

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.aej = load i8, ptr %i.id, align 8, !range !25, !alias.scope !976, !noundef !6
  %i.aek = icmp eq i8 %i.aej, -1
  br i1 %i.aek, label %bb.jd, label %bb.jh, !prof !10

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !977
  %i.ael = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.aem = load ptr, ptr %i.ael, align 8, !alias.scope !976, !nonnull !6, !align !7, !noundef !6
  store ptr %i.aem, ptr %i.z, align 8, !noalias !977
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 43, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #24
          to label %bb.jf unwind label %bb.je, !noalias !978

bb.je:                                            ; preds = %bb.jd
  %i.aen = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #22
          to label %.body786.thread unwind label %bb.jg, !noalias !978

bb.jf:                                            ; preds = %bb.jd
  unreachable

bb.jg:                                            ; preds = %bb.je
  %i.aeo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !978
  unreachable

bb.jh:                                            ; preds = %bb.jc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ie, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.id, i64 32, i1 false), !alias.scope !978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.id)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ig, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.if, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ie)
          to label %bb.ji unwind label %.body735

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ie)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.if)
  %i.aep = load i8, ptr %i.ig, align 8, !range !25, !alias.scope !979, !noundef !6
  %i.aeq = icmp eq i8 %i.aep, -1
  br i1 %i.aeq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit926, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ig)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit926 unwind label %.body735

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit926: ; preds = %bb.ji, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ig)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ic)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cd, i64 noundef 16, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.jk unwind label %.body735

bb.jk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit926
  %i.aer = load i64, ptr %i.cd, align 8, !range !20, !noundef !6
  %i.aes = trunc nuw i64 %i.aer to i1
  %i.aet = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.aeu = load i64, ptr %i.aet, align 8, !range !21, !noundef !6 ; 3 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  br i1 %i.aes, label %bb.jl, label %bb.jm, !prof !10

bb.jl:                                            ; preds = %bb.jk
  %i.aew = load i64, ptr %i.aev, align 8
  br label %.invoke

bb.jm:                                            ; preds = %bb.jk
  %i.aex = load ptr, ptr %i.aev, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aey = icmp samesign ugt i64 %i.aeu, 15
  call void @llvm.assume(i1 %i.aey)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aex, ptr noundef nonnull align 1 dereferenceable(16) @58, i64 16, i1 false)
  store i64 %i.aeu, ptr %i.ib, align 8
  %.sroa.4441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store ptr %i.aex, ptr %.sroa.4441.0..sroa_idx, align 8
  %.sroa.6442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store i64 16, ptr %.sroa.6442.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hy)
  %i.aez = getelementptr inbounds nuw i8, ptr %7, i64 588
end_hunk_1
begin_hunk_2_@_RNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_server:.split

bb.tn:                                            ; preds = %bb.tg
  %.not610 = icmp eq ptr %i.aub, null
  br i1 %.not610, label %bb.tp, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.auk = invoke fastcc noundef ptr @_RNvNtCsbNLsQi0JuJ4_5tgrep6search23require_server_coverage(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aub)
          to label %bb.tq unwind label %bb.td     ; 2 uses

bb.tp:                                            ; preds = %bb.tn
  %i.aul = invoke noundef nonnull ptr @_RINvMNtCsjYKKaZ3qa7A_6anyhow5errorNtB5_5Error3msgReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 21)
          to label %_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers1_0B5_.exit unwind label %bb.td

_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers1_0B5_.exit: ; preds = %bb.tp
  %i.aum = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aul, ptr %i.aum, align 8
  store i8 1, ptr %0, align 8
  br label %bb.tm

bb.tq:                                            ; preds = %bb.to
  %.not611 = icmp eq ptr %i.auk, null
  br i1 %.not611, label %bb.ts, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.auk, ptr %i.aun, align 8
  store i8 1, ptr %0, align 8
  br label %bb.tm

bb.ts:                                            ; preds = %bb.tq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  store i64 0, ptr %i.eq, align 8
  %i.auo = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.auo, align 8
  %i.aup = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 0, ptr %i.aup, align 8
  %i.auq = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aub, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 7)
          to label %bb.tu unwind label %bb.tt     ; 3 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetReEECsbNLsQi0JuJ4_5tgrep.exit1050: ; preds = %bb.adt, %bb.tt
  %.pn695 = phi { ptr, i32 } [ %i.aur, %bb.tt ], [ %.pn693, %bb.adt ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eq) #22
          to label %bb.tc unwind label %bb.xu

bb.tt:                                            ; preds = %bb.aek, %bb.adr, %bb.ua, %bb.tz, %bb.tx, %bb.ts
  %i.aur = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetReEECsbNLsQi0JuJ4_5tgrep.exit1050

bb.tu:                                            ; preds = %bb.ts
  %.not612 = icmp eq ptr %i.auq, null
  br i1 %.not612, label %bb.tw, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.aus = load i8, ptr %i.auq, align 8, !range !19, !alias.scope !1086, !noundef !6
  %.not1340 = icmp eq i8 %i.aus, 4
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auq, i64 8
  %spec.select = select i1 %.not1340, ptr %i.aut, ptr %i.eq
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.tu
  %.sroa.077.0 = phi ptr [ %i.eq, %bb.tu ], [ %spec.select, %bb.tv ] ; 5 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %7, i64 595
  %i.auv = load i8, ptr %i.auu, align 1, !range !8, !noundef !6
  %i.auw = trunc nuw i8 %i.auv to i1
  %i.aux = icmp eq i64 %i.asj, 2
  %or.cond7 = or i1 %i.aux, %i.auw
  br i1 %or.cond7, label %.thread1298, label %bb.tx

.thread1298:                                      ; preds = %bb.tw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  br label %bb.tz

bb.tx:                                            ; preds = %bb.tw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  %i.auy = getelementptr inbounds nuw i8, ptr %.sroa.077.0, i64 8 ; 2 uses
  %i.auz = load ptr, ptr %i.auy, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %.sroa.077.0, i64 16 ; 2 uses
  %i.avb = load i64, ptr %i.ava, align 8, !noundef !6
  %i.avc = getelementptr inbounds nuw [32 x i8], ptr %i.auz, i64 %i.avb
  store ptr %i.auz, ptr %i.ep, align 8
  %i.avd = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.avc, ptr %i.avd, align 8
  %i.ave = invoke fastcc noundef zeroext i1 @_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers3_0EB2m_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ep)
          to label %bb.ty unwind label %bb.tt

bb.ty:                                            ; preds = %bb.tx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  br i1 %i.ave, label %bb.ua, label %bb.tz

bb.tz:                                            ; preds = %.thread1298, %bb.ty
  %i.avf = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.ub unwind label %bb.tt     ; 2 uses

bb.ua:                                            ; preds = %bb.ty
  %i.avg = load ptr, ptr %i.auy, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.avh = load i64, ptr %i.ava, align 8, !noundef !6
  %i.avi = getelementptr inbounds nuw [32 x i8], ptr %i.avg, i64 %i.avh
  invoke fastcc void @_RINvXs7_NtNtNtCs5Xr050g3D4S_3std11collections4hash3setINtB6_7HashSetReEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1e_8adapters10filter_map9FilterMapINtNtB2r_6filter6FilterINtNtNtB1g_5slice4iter4IterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers4_0ENCB4z_s5_0EEB4D_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.eo, ptr noundef nonnull %i.avg, ptr noundef %i.avi)
          to label %bb.uc unwind label %bb.tt

bb.ub:                                            ; preds = %bb.tz
  %i.avj = extractvalue { i64, i64 } %i.avf, 0
  %i.avk = extractvalue { i64, i64 } %i.avf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  %.sroa.4516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store i64 %i.avj, ptr %.sroa.4516.0..sroa_idx, align 8
  %.sroa.5517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i64 %i.avk, ptr %.sroa.5517.0..sroa_idx, align 8
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ua, %bb.ub
  %.sroa.075.01300 = phi i1 [ true, %bb.ua ], [ false, %bb.ub ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  %i.avl = icmp eq i64 %i.asj, 0
  br i1 %i.avl, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.ue, %bb.uc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  %i.avm = getelementptr inbounds nuw i8, ptr %.sroa.077.0, i64 8
  %i.avn = load ptr, ptr %i.avm, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %.sroa.077.0, i64 16
  %i.avp = load i64, ptr %i.avo, align 8, !noundef !6
  %i.avq = getelementptr inbounds nuw [32 x i8], ptr %i.avn, i64 %i.avp
  store ptr %i.avn, ptr %i.el, align 8
  %i.avr = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.avq, ptr %i.avr, align 8
  %i.avs = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr %i.eo, ptr %i.avs, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr %6, ptr %.sroa.492.0..sroa_idx, align 8
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store ptr %2, ptr %.sroa.593.0..sroa_idx, align 8
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  store i64 %3, ptr %.sroa.694.0..sroa_idx, align 8
  %.sroa.795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  store ptr %7, ptr %.sroa.795.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtB2l_5slice4iter4IterB11_ENCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers6_0EE9from_iterB3Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.em, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.el)
          to label %bb.ui unwind label %bb.uh

bb.ue:                                            ; preds = %bb.uc
  %i.avt = load i64, ptr %i.asz, align 8, !range !20, !noundef !6
  %i.avu = icmp ne i64 %i.avt, 0
  %or.cond9 = or i1 %.sroa.075.01300, %i.avu
  br i1 %or.cond9, label %bb.ud, label %bb.uf

bb.uf:                                            ; preds = %bb.ue, %bb.ui
  %.sroa.0301.0 = phi i8 [ 1, %bb.ui ], [ 0, %bb.ue ] ; 6 uses
  %.sroa.077.1 = phi ptr [ %i.en, %bb.ui ], [ %.sroa.077.0, %bb.ue ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  %i.avv = getelementptr inbounds nuw i8, ptr %7, i64 568
  %i.avw = load i8, ptr %i.avv, align 8, !range !11, !noundef !6 ; 2 uses
  %.not614 = icmp eq i8 %i.avw, 2
  br i1 %.not614, label %bb.uk, label %bb.uj

bb.ug:                                            ; preds = %bb.aen, %.thread1306, %bb.uh
  %.sroa.0301.1 = phi i8 [ %.sroa.0301.2, %bb.uh ], [ %.sroa.0301.0, %bb.aen ], [ %.sroa.0301.0, %.thread1306 ]
  %.pn691 = phi { ptr, i32 } [ %i.avy, %bb.uh ], [ %.pn689, %bb.aen ], [ %.pn689, %.thread1306 ] ; 2 uses
  %i.avx = trunc nuw i8 %.sroa.0301.1 to i1
  br i1 %i.avx, label %bb.aeo, label %bb.adt

bb.uh:                                            ; preds = %bb.aej, %bb.adq, %bb.ud
  %.sroa.0301.2 = phi i8 [ %.sroa.0301.0, %bb.aej ], [ %.sroa.0301.0, %bb.adq ], [ 0, %bb.ud ]
  %i.avy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ug

bb.ui:                                            ; preds = %bb.ud
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  br label %bb.uf

bb.uj:                                            ; preds = %bb.uf
  %i.avz = getelementptr inbounds nuw i8, ptr %7, i64 569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  %i.awa = load i8, ptr %i.avz, align 1, !range !12, !noundef !6
  store i8 %i.avw, ptr %i.ej, align 1
  %i.awb = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store i8 %i.awa, ptr %i.awb, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  store i64 0, ptr %i.ei, align 8
  %i.awc = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.awc, align 8
  %i.awd = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 3 uses
  store i64 0, ptr %i.awd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.awe = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.um unwind label %bb.ul     ; 2 uses

bb.uk:                                            ; preds = %bb.uf, %bb.vm
  %.sroa.0298.0 = phi i8 [ 1, %bb.vm ], [ 0, %bb.uf ] ; 31 uses
  %.sroa.077.2 = phi ptr [ %i.ek, %bb.vm ], [ %.sroa.077.1, %bb.uf ] ; 6 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %.sroa.077.2, i64 16 ; 5 uses
  %i.awg = load i64, ptr %i.awf, align 8, !noundef !6 ; 3 uses
  %i.awh = icmp ult i64 %i.awg, 288230376151711744
  call void @llvm.assume(i1 %i.awh)
  %i.awi = icmp ne i64 %i.awg, 0                  ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 591
  %21 = load i8, ptr %20, align 1, !range !8, !noundef !6
  %22 = trunc nuw i8 %21 to i1
  br i1 %22, label %.loopexit1359, label %bb.vn

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit, %bb.ul
  %.sroa.0298.1 = phi i8 [ %.sroa.0298.2, %bb.ul ], [ %.sroa.0298.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit ]
  %.pn622 = phi { ptr, i32 } [ %i.awj, %bb.ul ], [ %.pn620, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei) #22
          to label %.thread1306 unwind label %bb.xu

bb.ul:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit983, %bb.uj
  %.sroa.0298.2 = phi i8 [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit983 ], [ 0, %bb.uj ]
  %i.awj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit

bb.um:                                            ; preds = %bb.uj
  %i.awk = extractvalue { i64, i64 } %i.awe, 0
  %i.awl = extractvalue { i64, i64 } %i.awe, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  %.sroa.4522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store i64 %i.awk, ptr %.sroa.4522.0..sroa_idx, align 8
  %.sroa.5523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store i64 %i.awl, ptr %.sroa.5523.0..sroa_idx, align 8
  %i.awm = getelementptr inbounds nuw i8, ptr %.sroa.077.1, i64 8
  %i.awn = load ptr, ptr %i.awm, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %.sroa.077.1, i64 16
  %i.awp = load i64, ptr %i.awo, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.awp, 5
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awn, i64 %.idx
  %i.awr = icmp eq i64 %i.awp, 0
  br i1 %i.awr, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.um
  %i.aws = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.awt = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %.sroa.4525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.6526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.awu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.awv = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %.sroa.4528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.sroa.6529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  br label %bb.un

bb.un:                                            ; preds = %.lr.ph, %.backedge1398
  %.sroa.096.01420 = phi ptr [ %i.awn, %.lr.ph ], [ %i.aww, %.backedge1398 ] ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %.sroa.096.01420, i64 32 ; 2 uses
  %i.awx = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.096.01420, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4)
          to label %bb.uo unwind label %.loopexit1393 ; 4 uses

._crit_edge:                                      ; preds = %.backedge1398, %bb.um
  %i.awy = load ptr, ptr %i.awc, align 8, !nonnull !6, !noundef !6
  %i.awz = load i64, ptr %i.awd, align 8, !noundef !6
  invoke fastcc void @_RINvMs_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_8SortMode13apply_indexedNtNtCsgCecv3eZDcN_5alloc6string6StringNvMB13_B11_6as_strEB7_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %i.ej, ptr noalias nofree noundef nonnull align 8 %i.awy, i64 noundef %i.awz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6)
          to label %bb.vf unwind label %.loopexit.split-lp1394

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.loopexit1393, %.loopexit.split-lp1394, %bb.vh
  %.sroa.0298.3 = phi i8 [ 0, %bb.vh ], [ 0, %.loopexit1393 ], [ %.sroa.0298.4.ph, %.loopexit.split-lp1394 ]
  %.pn620 = phi { ptr, i32 } [ %.pn618, %bb.vh ], [ %lpad.loopexit1395, %.loopexit1393 ], [ %lpad.loopexit.split-lp1396, %.loopexit.split-lp1394 ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eh)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.xu

.loopexit1393:                                    ; preds = %bb.vb, %bb.un, %bb.uq, %bb.uu, %bb.ux
  %lpad.loopexit1395 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit

.loopexit.split-lp1394:                           ; preds = %.invoke1556, %._crit_edge, %bb.vf, %bb.vl
  %.sroa.0298.4.ph = phi i8 [ 1, %bb.vl ], [ 0, %.invoke1556 ], [ 0, %._crit_edge ], [ 0, %bb.vf ]
  %lpad.loopexit.split-lp1396 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit

bb.uo:                                            ; preds = %bb.un
  %.not615 = icmp eq ptr %i.awx, null
  br i1 %.not615, label %.backedge1398, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.axa = load i8, ptr %i.awx, align 8, !range !19, !alias.scope !1087, !noundef !6
  %.not1341 = icmp eq i8 %i.axa, 3
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awx, i64 16
  %i.axc = load ptr, ptr %i.axb, align 8, !alias.scope !1087, !nonnull !6 ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awx, i64 24
  %i.axe = load i64, ptr %i.axd, align 8, !alias.scope !1087 ; 9 uses
  br i1 %.not1341, label %bb.uq, label %.backedge1398

bb.uq:                                            ; preds = %bb.up
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, i64 noundef %i.axe, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ur unwind label %.loopexit1393

bb.ur:                                            ; preds = %bb.uq
  %i.axf = load i64, ptr %i.bk, align 8, !range !20, !noundef !6
  %i.axg = trunc nuw i64 %i.axf to i1
  %i.axh = load i64, ptr %i.aws, align 8, !range !21, !noundef !6 ; 3 uses
  br i1 %i.axg, label %bb.us, label %bb.ut, !prof !10

bb.us:                                            ; preds = %bb.ur
  %i.axi = load i64, ptr %i.awt, align 8
  br label %.invoke1556

.invoke1556:                                      ; preds = %bb.uz, %bb.us
  %i.axj = phi i64 [ %i.axh, %bb.us ], [ %i.axr, %bb.uz ]
  %i.axk = phi i64 [ %i.axi, %bb.us ], [ %i.axs, %bb.uz ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.axj, i64 %i.axk) #24
          to label %.cont1557 unwind label %.loopexit.split-lp1394

.cont1557:                                        ; preds = %.invoke1556
  unreachable

bb.ut:                                            ; preds = %bb.ur
  %i.axl = load ptr, ptr %i.awt, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.axm = icmp ule i64 %i.axe, %i.axh
  call void @llvm.assume(i1 %i.axm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %.not617 = icmp eq i64 %i.axe, 0                ; 2 uses
  br i1 %.not617, label %bb.uu, label %bb.uv

bb.uu:                                            ; preds = %bb.uv, %bb.ut
  store i64 %i.axh, ptr %i.eg, align 8
  store ptr %i.axl, ptr %.sroa.4525.0..sroa_idx, align 8
  store i64 %i.axe, ptr %.sroa.6526.0..sroa_idx, align 8
  %i.axn = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.eg)
          to label %bb.uw unwind label %.loopexit1393

bb.uv:                                            ; preds = %bb.ut
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.axl, ptr nonnull align 1 %i.axc, i64 %i.axe, i1 false)
  br label %bb.uu

bb.uw:                                            ; preds = %bb.uu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br i1 %i.axn, label %.backedge1398, label %bb.ux

bb.ux:                                            ; preds = %bb.uw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bj, i64 noundef %i.axe, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.uy unwind label %.loopexit1393

.backedge1398:                                    ; preds = %bb.uw, %bb.uo, %bb.up, %bb.vd
  %i.axo = icmp eq ptr %i.aww, %i.awq
  br i1 %i.axo, label %._crit_edge, label %bb.un

bb.uy:                                            ; preds = %bb.ux
  %i.axp = load i64, ptr %i.bj, align 8, !range !20, !noundef !6
  %i.axq = trunc nuw i64 %i.axp to i1
  %i.axr = load i64, ptr %i.awu, align 8, !range !21, !noundef !6 ; 3 uses
  br i1 %i.axq, label %bb.uz, label %bb.va, !prof !10

bb.uz:                                            ; preds = %bb.uy
  %i.axs = load i64, ptr %i.awv, align 8
  br label %.invoke1556

bb.va:                                            ; preds = %bb.uy
  %i.axt = load ptr, ptr %i.awv, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.axu = icmp ule i64 %i.axe, %i.axr
  call void @llvm.assume(i1 %i.axu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br i1 %.not617, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %bb.vc, %bb.va
  store i64 %i.axr, ptr %i.ef, align 8
  store ptr %i.axt, ptr %.sroa.4528.0..sroa_idx, align 8
  store i64 %i.axe, ptr %.sroa.6529.0..sroa_idx, align 8
  invoke fastcc void @_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ef)
          to label %bb.vd unwind label %.loopexit1393

bb.vc:                                            ; preds = %bb.va
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.axt, ptr nonnull align 1 %i.axc, i64 %i.axe, i1 false)
  br label %bb.vb

bb.vd:                                            ; preds = %bb.vb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %.backedge1398

bb.ve:                                            ; preds = %bb.abx, %bb.yj, %bb.ye, %bb.xe, %bb.wz
  unreachable

bb.vf:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  %i.axv = load ptr, ptr %i.awc, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.axw = load i64, ptr %i.awd, align 8, !noundef !6
  %i.axx = getelementptr inbounds nuw [24 x i8], ptr %i.axv, i64 %i.axw
  store ptr %i.axv, ptr %i.ed, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.axx, ptr %.sroa.4105.0..sroa_idx, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 0, ptr %.sroa.5106.0..sroa_idx, align 8
  invoke void @_RINvXs1c_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapRejEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB15_jEE9from_iterINtNtNtB1g_8adapters3map3MapINtNtB2w_9enumerate9EnumerateINtNtNtB1i_5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers8_0EEB4x_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ee, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ed)
          to label %bb.vg unwind label %.loopexit.split-lp1394

bb.vg:                                            ; preds = %bb.vf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.077.1)
          to label %bb.vj unwind label %bb.vi

bb.vh:                                            ; preds = %bb.vk, %bb.vi
  %.pn618 = phi { ptr, i32 } [ %i.ayd, %bb.vk ], [ %i.axy, %bb.vi ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRejEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ee)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.xu

bb.vi:                                            ; preds = %bb.vg
  %i.axy = landingpad { ptr, i32 }
          cleanup
  br label %bb.vh

bb.vj:                                            ; preds = %bb.vg
  %i.axz = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.aya = load ptr, ptr %i.axz, align 8, !nonnull !6, !noundef !6
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ayc = load i64, ptr %i.ayb, align 8, !noundef !6
  invoke fastcc void @_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0EB1w_(ptr noalias nofree noundef nonnull align 8 %i.aya, i64 noundef %i.ayc, ptr noundef nonnull align 8 %i.ee)
          to label %bb.vl unwind label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  %i.ayd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ec) #22
          to label %bb.vh unwind label %bb.xu

bb.vl:                                            ; preds = %bb.vj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRejEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ee)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit983 unwind label %.loopexit.split-lp1394

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit983: ; preds = %bb.vl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eh)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit985 unwind label %bb.ul

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit985: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRejEECsbNLsQi0JuJ4_5tgrep.exit983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei)
          to label %bb.vm unwind label %.loopexit.split-lp1361

.thread1306:                                      ; preds = %.loopexit.split-lp1389.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1361, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1384.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.add, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit, %.loopexit.split-lp1371.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1366.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread1302, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit
  %.sroa.0298.5 = phi i8 [ %.sroa.0298.0, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0298.0, %bb.add ], [ %.sroa.0298.0, %.loopexit.split-lp1384.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0298.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit ], [ %.sroa.0298.0, %.loopexit.split-lp1366.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0298.0, %.loopexit.split-lp1371.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0298.0, %.thread1302 ], [ %.sroa.0298.6.ph, %.loopexit.split-lp1361 ], [ %.sroa.0298.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit ], [ %.sroa.0298.0, %.loopexit.split-lp1389.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn689 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1636, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.blr, %bb.add ], [ %lpad.loopexit.split-lp1667, %.loopexit.split-lp1384.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn675, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit ], [ %lpad.loopexit.split-lp1656, %.loopexit.split-lp1366.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp1371.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn6441305, %.thread1302 ], [ %lpad.loopexit.split-lp1363, %.loopexit.split-lp1361 ], [ %.pn622, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit ], [ %lpad.loopexit.split-lp1653, %.loopexit.split-lp1389.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aye = trunc nuw i8 %.sroa.0298.5 to i1
  br i1 %i.aye, label %bb.aen, label %bb.ug

.loopexit.split-lp1361:                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit985, %bb.vp, %bb.xv, %bb.xx, %bb.yb, %bb.ye, %bb.yr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit1030, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit1034, %bb.aci, %bb.acj, %bb.acq, %bb.act, %bb.acv, %bb.acw, %bb.acx, %bb.acz, %bb.adg, %bb.adi, %bb.adn, %._crit_edge1431, %bb.acg
  %.sroa.0298.6.ph = phi i8 [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit985 ], [ %.sroa.0298.0, %bb.xx ], [ %.sroa.0298.0, %bb.yr ], [ %.sroa.0298.0, %bb.ye ], [ %.sroa.0298.0, %bb.yb ], [ %.sroa.0298.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit1030 ], [ %.sroa.0298.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_3set7HashSetjEEECsbNLsQi0JuJ4_5tgrep.exit1034 ], [ %.sroa.0298.0, %bb.vp ], [ %.sroa.0298.0, %bb.acg ], [ %.sroa.0298.0, %._crit_edge1431 ], [ %.sroa.0298.0, %bb.acj ], [ %.sroa.0298.0, %bb.xv ], [ %.sroa.0298.0, %bb.acq ], [ %.sroa.0298.0, %bb.act ], [ %.sroa.0298.0, %bb.acw ], [ %.sroa.0298.0, %bb.acv ], [ %.sroa.0298.0, %bb.acx ], [ %.sroa.0298.0, %bb.adg ], [ %.sroa.0298.0, %bb.adi ], [ %.sroa.0298.0, %bb.aci ], [ %.sroa.0298.0, %bb.adn ], [ %.sroa.0298.0, %bb.acz ]
  %lpad.loopexit.split-lp1363 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1306

bb.vm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  br label %bb.uk

bb.vn:                                            ; preds = %bb.uk
  br i1 %i.od, label %bb.vp, label %bb.vo

.loopexit1359:                                    ; preds = %bb.xy, %bb.vr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit1036, %bb.abq, %bb.uk
  %i.ayf = load i8, ptr %i.aqr, align 4, !range !8, !noundef !6
  %i.ayg = trunc nuw i8 %i.ayf to i1
  br i1 %i.ayg, label %bb.acj, label %bb.aci

bb.vo:                                            ; preds = %bb.vn
  br i1 %or.cond, label %bb.vq, label %bb.vr

bb.vp:                                            ; preds = %bb.vn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  %i.ayh = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.abr unwind label %.loopexit.split-lp1361 ; 2 uses

bb.vq:                                            ; preds = %bb.vo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i64 0, ptr %i.dz, align 8
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ayi, align 8
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  store i64 0, ptr %i.ayj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  %i.ayk = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.yv unwind label %bb.yu     ; 2 uses

bb.vr:                                            ; preds = %bb.vo
  %i.ayl = getelementptr inbounds nuw i8, ptr %.sroa.077.2, i64 8
  %i.aym = load ptr, ptr %i.ayl, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.idx1432 = shl nuw nsw i64 %i.awg, 5
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 %.idx1432
  br i1 %i.awi, label %.lr.ph1423, label %.loopexit1359

.lr.ph1423:                                       ; preds = %bb.vr
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %.sroa.4561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.6562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %.sroa.4567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %.sroa.5568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %.sroa.4570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.6571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %.sroa.4573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.6574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.azc = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %i.azd = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.aze = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %.sroa.5251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.azf = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.azg = getelementptr inbounds nuw i8, ptr %i.dm, i64 104
  %i.azh = getelementptr inbounds nuw i8, ptr %i.dm, i64 112
  br label %bb.vs

bb.vs:                                            ; preds = %.lr.ph1423, %bb.xy
  %.sroa.0173.01421 = phi ptr [ %i.aym, %.lr.ph1423 ], [ %i.azi, %bb.xy ] ; 9 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %.sroa.0173.01421, i64 32 ; 2 uses
  %i.azj = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4)
          to label %bb.vt unwind label %.loopexit.split-lp1389.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.vt:                                            ; preds = %bb.vs
  %.not624 = icmp eq ptr %i.azj, null
  br i1 %.not624, label %bb.vv, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.azk = load i8, ptr %i.azj, align 8, !range !19, !alias.scope !1088, !noundef !6
  %.not1342 = icmp eq i8 %i.azk, 3                ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azj, i64 16
  %i.azm = load ptr, ptr %i.azl, align 8, !alias.scope !1088, !nonnull !6
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azj, i64 24
  %i.azo = load i64, ptr %i.azn, align 8, !alias.scope !1088
  %spec.select1335 = select i1 %.not1342, i64 %i.azo, i64 0
  %spec.select1336 = select i1 %.not1342, ptr %i.azm, ptr inttoptr (i64 1 to ptr)
  br label %bb.vv

bb.vv:                                            ; preds = %bb.vu, %bb.vt
  %.sroa.7181.0 = phi i64 [ %spec.select1335, %bb.vu ], [ 0, %bb.vt ] ; 13 uses
  %.sroa.0176.0 = phi ptr [ %spec.select1336, %bb.vu ], [ inttoptr (i64 1 to ptr), %bb.vt ] ; 5 uses
  %i.azp = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 4)
          to label %bb.vw unwind label %.loopexit.split-lp1389.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.vw:                                            ; preds = %bb.vv
  %.not626 = icmp eq ptr %i.azp, null
  br i1 %.not626, label %bb.vy, label %bb.vx

bb.vx:                                            ; preds = %bb.vw
  %i.azq = load i8, ptr %i.azp, align 8, !range !19, !alias.scope !1089, !noundef !6
  %i.azr = icmp eq i8 %i.azq, 2
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azp, i64 8
  %i.azt = load i64, ptr %i.azs, align 8, !range !16, !alias.scope !1089
  %i.azu = icmp eq i64 %i.azt, 0
  %or.cond.i988 = select i1 %i.azr, i1 %i.azu, i1 false
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azp, i64 16
  %i.azw = load i64, ptr %i.azv, align 8, !alias.scope !1089
  %spec.select717 = select i1 %or.cond.i988, i64 %i.azw, i64 0
  br label %bb.vy

bb.vy:                                            ; preds = %bb.vx, %bb.vw
  %.sroa.0192.0 = phi i64 [ %spec.select717, %bb.vx ], [ 0, %bb.vw ] ; 4 uses
  %i.azx = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 7)
          to label %bb.vz unwind label %.loopexit.split-lp1389.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.vz:                                            ; preds = %bb.vy
  %.not627 = icmp eq ptr %i.azx, null
  br i1 %.not627, label %bb.wb, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.azy = load i8, ptr %i.azx, align 8, !range !19, !alias.scope !1090, !noundef !6
  %.not1343 = icmp eq i8 %i.azy, 3                ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azx, i64 16
  %i.baa = load ptr, ptr %i.azz, align 8, !alias.scope !1090, !nonnull !6
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azx, i64 24
  %i.bac = load i64, ptr %i.bab, align 8, !alias.scope !1090
  %spec.select1337 = select i1 %.not1343, i64 %i.bac, i64 0
  %spec.select1338 = select i1 %.not1343, ptr %i.baa, ptr inttoptr (i64 1 to ptr)
  br label %bb.wb

bb.wb:                                            ; preds = %bb.wa, %bb.vz
  %.sroa.4200.0 = phi i64 [ %spec.select1337, %bb.wa ], [ 0, %bb.vz ] ; 10 uses
  %.sroa.0198.0 = phi ptr [ %spec.select1338, %bb.wa ], [ inttoptr (i64 1 to ptr), %bb.vz ] ; 2 uses
  %i.bad = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 4)
          to label %bb.wc unwind label %.loopexit.split-lp1389.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.wc:                                            ; preds = %bb.wb
  %.not629 = icmp eq ptr %i.bad, null
  br i1 %.not629, label %bb.we, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.bae = load i8, ptr %i.bad, align 8, !range !19, !alias.scope !1091, !noundef !6
  %.not1344 = icmp eq i8 %i.bae, 3                ; 2 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bad, i64 16
  %i.bag = load ptr, ptr %i.baf, align 8, !alias.scope !1091, !nonnull !6
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bad, i64 24
  %i.bai = load i64, ptr %i.bah, align 8, !alias.scope !1091
  %spec.select718 = select i1 %.not1344, i64 %i.bai, i64 5
  %spec.select719 = select i1 %.not1344, ptr %i.bag, ptr @94
  br label %bb.we

bb.we:                                            ; preds = %bb.wd, %bb.wc
  %.sroa.4210.0 = phi i64 [ %spec.select718, %bb.wd ], [ 5, %bb.wc ]
  %.sroa.0208.0 = phi ptr [ %spec.select719, %bb.wd ], [ @94, %bb.wc ] ; 4 uses
  %i.baj = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 6)
          to label %bb.wf unwind label %.loopexit.split-lp1389.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.wf:                                            ; preds = %bb.we
  %.not631 = icmp eq ptr %i.baj, null
  br i1 %.not631, label %bb.wh, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  %i.bak = load i8, ptr %i.baj, align 8, !range !19, !alias.scope !1092, !noundef !6
  %i.bal = icmp eq i8 %i.bak, 2
  %i.bam = getelementptr inbounds nuw i8, ptr %i.baj, i64 8
  %i.ban = load i64, ptr %i.bam, align 8, !range !16, !alias.scope !1092
  %i.bao = icmp eq i64 %i.ban, 0
  %or.cond.i995 = select i1 %i.bal, i1 %i.bao, i1 false
  %i.bap = getelementptr inbounds nuw i8, ptr %i.baj, i64 16
  %i.baq = load i64, ptr %i.bap, align 8, !alias.scope !1092
  %spec.select720 = select i1 %or.cond.i995, i64 %i.baq, i64 0
  br label %bb.wh

bb.wh:                                            ; preds = %bb.wg, %bb.wf
  %.sroa.0218.0 = phi i64 [ %spec.select720, %bb.wg ], [ 0, %bb.wf ] ; 3 uses
  %i.bar = invoke noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0173.01421, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 4)
          to label %bb.wi unwind label %.loopexit.split-lp1389.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.wi:                                            ; preds = %bb.wh
  %.not632 = icmp eq ptr %i.bar, null
  br i1 %.not632, label %bb.wk, label %bb.wj

bb.wj:                                            ; preds = %bb.wi
  %i.bas = load i8, ptr %i.bar, align 8, !range !19, !alias.scope !1093, !noundef !6
  %i.bat = icmp eq i8 %i.bas, 2
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bar, i64 8
  %i.bav = load i64, ptr %i.bau, align 8, !range !16, !alias.scope !1093
  %i.baw = icmp eq i64 %i.bav, 0
  %or.cond.i998 = select i1 %i.bat, i1 %i.baw, i1 false
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bar, i64 16
  %i.bay = load i64, ptr %i.bax, align 8, !alias.scope !1093
  %spec.select721 = select i1 %or.cond.i998, i64 %i.bay, i64 0
  br label %bb.wk

bb.wk:                                            ; preds = %bb.wj, %bb.wi
  %.sroa.0224.0 = phi i64 [ %spec.select721, %bb.wj ], [ 0, %bb.wi ] ; 2 uses
  switch i64 %.sroa.4210.0, label %bb.wo [
    i64 7, label %bb.wl
    i64 6, label %bb.wn
  ]
end_hunk_2
begin_hunk_3_@llvm.experimental.noalias.scope.decl
!670 = distinct !{!670, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!671 = distinct !{!671, !670, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!672 = distinct !{!672, !670, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!673 = distinct !{!673, !670, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!674 = distinct !{!674, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!675 = distinct !{!675, !674, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!676 = distinct !{!676, i1 true, !"_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions9after_ctx"}
!677 = distinct !{!677, !676, !"_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions9after_ctx: argument 0"}
!678 = distinct !{!678, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!679 = distinct !{!679, !678, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!680 = distinct !{!680, !678, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!681 = distinct !{!681, !678, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!682 = distinct !{!682, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!683 = distinct !{!683, !682, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!684 = distinct !{!684, i1 true, !"_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions10before_ctx"}
!685 = distinct !{!685, !684, !"_RNvMs0_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_13SearchOptions10before_ctx: argument 0"}
!686 = distinct !{!686, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!687 = distinct !{!687, !686, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!688 = distinct !{!688, !686, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!689 = distinct !{!689, !686, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!690 = distinct !{!690, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!691 = distinct !{!691, !690, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!692 = distinct !{!692, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!693 = distinct !{!693, !692, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!694 = distinct !{!694, !692, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!695 = distinct !{!695, !692, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!696 = distinct !{!696, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!697 = distinct !{!697, !696, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!698 = distinct !{!698, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!699 = distinct !{!699, !698, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!700 = distinct !{!700, !698, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!701 = distinct !{!701, !698, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!702 = distinct !{!702, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!703 = distinct !{!703, !702, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!704 = distinct !{!704, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!705 = distinct !{!705, !704, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!706 = distinct !{!706, !704, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!707 = distinct !{!707, !704, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!708 = distinct !{!708, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!709 = distinct !{!709, !708, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!710 = distinct !{!710, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!711 = distinct !{!711, !710, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!712 = distinct !{!712, !710, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!713 = distinct !{!713, !710, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!714 = distinct !{!714, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!715 = distinct !{!715, !714, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!716 = distinct !{!716, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!717 = distinct !{!717, !716, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!718 = distinct !{!718, !716, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!719 = distinct !{!719, !716, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!720 = distinct !{!720, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!721 = distinct !{!721, !720, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!722 = distinct !{!722, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!723 = distinct !{!723, !722, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!724 = distinct !{!724, !722, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!725 = distinct !{!725, !722, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!726 = distinct !{!726, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!727 = distinct !{!727, !726, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!728 = distinct !{!728, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!729 = distinct !{!729, !728, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!730 = distinct !{!730, !728, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!731 = distinct !{!731, !728, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!732 = distinct !{!732, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!733 = distinct !{!733, !732, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!734 = distinct !{!734, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!735 = distinct !{!735, !734, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!736 = distinct !{!736, !734, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!737 = distinct !{!737, !734, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!738 = distinct !{!738, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!739 = distinct !{!739, !738, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!740 = distinct !{!740, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!741 = distinct !{!741, !740, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!742 = distinct !{!742, !740, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!743 = distinct !{!743, !740, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!744 = distinct !{!744, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!745 = distinct !{!745, !744, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!746 = distinct !{!746, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!747 = distinct !{!747, !746, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!748 = distinct !{!748, !746, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!749 = distinct !{!749, !746, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!750 = distinct !{!750, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!751 = distinct !{!751, !750, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!752 = distinct !{!752, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!753 = distinct !{!753, !752, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!754 = distinct !{!754, !752, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!755 = distinct !{!755, !752, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!756 = distinct !{!756, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!757 = distinct !{!757, !756, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!758 = distinct !{!758, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!759 = distinct !{!759, !758, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!760 = distinct !{!760, !758, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!761 = distinct !{!761, !758, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!762 = distinct !{!762, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!763 = distinct !{!763, !762, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!764 = distinct !{!764, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!765 = distinct !{!765, !764, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!766 = distinct !{!766, !764, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!767 = distinct !{!767, !764, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!768 = distinct !{!768, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!769 = distinct !{!769, !768, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!770 = distinct !{!770, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep8matching12MatchOptionsEBF_"}
!771 = distinct !{!771, !770, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep8matching12MatchOptionsEBF_: argument 0"}
!772 = distinct !{!772, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep"}
!773 = distinct !{!773, !772, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!774 = distinct !{!774, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!775 = distinct !{!775, !774, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!776 = distinct !{!776, !774, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!777 = distinct !{!777, !774, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!778 = distinct !{!778, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!779 = distinct !{!779, !778, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!780 = distinct !{!780, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!781 = distinct !{!781, !780, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!782 = distinct !{!782, !780, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!783 = distinct !{!783, !780, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!784 = distinct !{!784, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!785 = distinct !{!785, !784, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!786 = distinct !{!786, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!787 = distinct !{!787, !786, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!788 = distinct !{!788, !786, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!789 = distinct !{!789, !786, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!790 = distinct !{!790, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!791 = distinct !{!791, !790, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!792 = distinct !{!792, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!793 = distinct !{!793, !792, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!794 = distinct !{!794, !792, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!795 = distinct !{!795, !792, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!796 = distinct !{!796, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!797 = distinct !{!797, !796, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!798 = distinct !{!798, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!799 = distinct !{!799, !798, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!800 = distinct !{!800, !798, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!801 = distinct !{!801, !798, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!802 = distinct !{!802, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!803 = distinct !{!803, !802, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!804 = distinct !{!804, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!805 = distinct !{!805, !804, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!806 = distinct !{!806, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!807 = distinct !{!807, !806, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!808 = distinct !{!808, !806, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!809 = distinct !{!809, !806, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!810 = distinct !{!810, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!811 = distinct !{!811, !810, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!812 = distinct !{!812, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!813 = distinct !{!813, !812, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!814 = distinct !{!814, !812, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!815 = distinct !{!815, !812, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!816 = distinct !{!816, i1 true, !"_RNvMs1_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_10IndexScope6prefix"}
!817 = distinct !{!817, !816, !"_RNvMs1_NtCsbNLsQi0JuJ4_5tgrep6searchNtB5_10IndexScope6prefix: argument 0"}
!818 = distinct !{!818, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!819 = distinct !{!819, !818, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!820 = distinct !{!820, !818, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!821 = distinct !{!821, !818, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!822 = distinct !{!822, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep"}
!823 = distinct !{!823, !822, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 0"}
!824 = distinct !{!824, !822, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 1"}
!825 = distinct !{!825, !822, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtBL_5error5ErrorE6unwrapCsbNLsQi0JuJ4_5tgrep: argument 2"}
!826 = distinct !{!826, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers0_0B5_"}
!827 = distinct !{!827, !826, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers0_0B5_: argument 0"}
!828 = distinct !{!828, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers2_0B5_"}
!829 = distinct !{!829, !828, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers2_0B5_: argument 0"}
!830 = distinct !{!830, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers7_0B5_"}
!831 = distinct !{!831, !830, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers7_0B5_: argument 0"}
!832 = distinct !{!832, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversi_0B5_"}
!833 = distinct !{!833, !832, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversi_0B5_: argument 0"}
!834 = distinct !{!834, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversj_0B5_"}
!835 = distinct !{!835, !834, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversj_0B5_: argument 0"}
!836 = distinct !{!836, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversk_0B5_"}
!837 = distinct !{!837, !836, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversk_0B5_: argument 0"}
!838 = distinct !{!838, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversl_0B5_"}
!839 = distinct !{!839, !838, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversl_0B5_: argument 0"}
!840 = distinct !{!840, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversm_0B5_"}
!841 = distinct !{!841, !840, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversm_0B5_: argument 0"}
!842 = distinct !{!842, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversn_0B5_"}
!843 = distinct !{!843, !842, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversn_0B5_: argument 0"}
!844 = distinct !{!844, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serverso_0B5_"}
!845 = distinct !{!845, !844, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serverso_0B5_: argument 0"}
!846 = distinct !{!846, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversq_0B5_"}
!847 = distinct !{!847, !846, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversq_0B5_: argument 0"}
!848 = distinct !{!848, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversb_0B5_"}
!849 = distinct !{!849, !848, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversb_0B5_: argument 0"}
!850 = distinct !{!850, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversc_0B5_"}
!851 = distinct !{!851, !850, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversc_0B5_: argument 0"}
!852 = distinct !{!852, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serverse_0B5_"}
!853 = distinct !{!853, !852, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serverse_0B5_: argument 0"}
!854 = distinct !{!854, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversf_0B5_"}
!855 = distinct !{!855, !854, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversf_0B5_: argument 0"}
!856 = distinct !{!856, i1 true, !"_RNvMs19_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_5EntryNtNtCsgCecv3eZDcN_5alloc6string6StringjE10or_defaultCsbNLsQi0JuJ4_5tgrep"}
!857 = distinct !{!857, !856, !"_RNvMs19_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_5EntryNtNtCsgCecv3eZDcN_5alloc6string6StringjE10or_defaultCsbNLsQi0JuJ4_5tgrep: argument 0"}
!858 = distinct !{!858, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversd_0B5_"}
!859 = distinct !{!859, !858, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversd_0B5_: argument 0"}
!860 = distinct !{!860, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversa_0B5_"}
!861 = distinct !{!861, !860, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversa_0B5_: argument 0"}
!862 = distinct !{!862, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serverss_0B5_"}
!863 = distinct !{!863, !862, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serverss_0B5_: argument 0"}
!864 = distinct !{!864, i1 true, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversu_0B5_"}
!865 = distinct !{!865, !864, !"_RNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_serversu_0B5_: argument 0"}
!866 = !{!555}
!867 = !{!558, !557}
!868 = !{!561, !560, !558, !557}
!869 = !{!561, !558, !557}
!870 = !{!557}
!871 = !{!563}
!872 = !{!565}
!873 = !{!566}
!874 = !{!565, !566, !567}
!875 = !{!565, !566}
!876 = !{!569}
!877 = !{!571}
!878 = !{!572}
!879 = !{!571, !572, !573}
!880 = !{!571, !572}
!881 = !{!575}
!882 = !{!577}
!883 = !{!578}
!884 = !{!577, !578, !579}
!885 = !{!577, !578}
!886 = !{!581}
!887 = !{!583}
!888 = !{!584}
!889 = !{!583, !584, !585}
!890 = !{!583, !584}
!891 = !{!587}
!892 = !{!589}
!893 = !{!590}
!894 = !{!589, !590, !591}
!895 = !{!589, !590}
!896 = !{!593}
!897 = !{!595}
!898 = !{!596}
!899 = !{!595, !596, !597}
!900 = !{!595, !596}
!901 = !{!599}
!902 = !{!601}
!903 = !{!602}
!904 = !{!601, !602, !603}
!905 = !{!601, !602}
!906 = !{!605}
!907 = !{!607}
!908 = !{!608}
!909 = !{!607, !608, !609}
!910 = !{!607, !608}
!911 = !{!611}
!912 = !{!613}
!913 = !{!614}
!914 = !{!613, !614, !615}
!915 = !{!613, !614}
!916 = !{!617}
!917 = !{!621, !619}
!918 = !{!623}
!919 = !{!624}
!920 = !{!623, !624, !625}
!921 = !{!623, !624}
!922 = !{!627}
!923 = !{!629}
!924 = !{!630}
!925 = !{!629, !630, !631}
!926 = !{!629, !630}
!927 = !{!633}
!928 = !{!635}
!929 = !{!636}
!930 = !{!635, !636, !637}
!931 = !{!635, !636}
!932 = !{!639}
!933 = !{!641}
!934 = !{!642}
!935 = !{!641, !642, !643}
!936 = !{!641, !642}
!937 = !{!645}
!938 = !{!647}
!939 = !{!648}
!940 = !{!647, !648, !649}
!941 = !{!647, !648}
!942 = !{!651}
!943 = !{!653}
!944 = !{!654}
!945 = !{!653, !654, !655}
!946 = !{!653, !654}
!947 = !{!657}
!948 = !{!659}
!949 = !{!660}
!950 = !{!659, !660, !661}
!951 = !{!659, !660}
!952 = !{!663}
!953 = !{!665}
!954 = !{!666}
!955 = !{!665, !666, !667}
!956 = !{!665, !666}
!957 = !{!669}
!958 = !{!671}
!959 = !{!672}
!960 = !{!671, !672, !673}
!961 = !{!671, !672}
!962 = !{!675}
!963 = !{!677}
!964 = !{!679}
!965 = !{!680}
!966 = !{!679, !680, !681}
!967 = !{!679, !680}
!968 = !{!683}
!969 = !{!685}
!970 = !{!687}
!971 = !{!688}
!972 = !{!687, !688, !689}
!973 = !{!687, !688}
!974 = !{!691}
!975 = !{!693}
!976 = !{!694}
!977 = !{!693, !694, !695}
!978 = !{!693, !694}
!979 = !{!697}
!980 = !{!699}
!981 = !{!700}
!982 = !{!699, !700, !701}
!983 = !{!699, !700}
!984 = !{!703}
!985 = !{!705}
!986 = !{!706}
!987 = !{!705, !706, !707}
!988 = !{!705, !706}
!989 = !{!709}
!990 = !{!711}
!991 = !{!712}
!992 = !{!711, !712, !713}
!993 = !{!711, !712}
!994 = !{!715}
!995 = !{!717}
!996 = !{!718}
!997 = !{!717, !718, !719}
!998 = !{!717, !718}
!999 = !{!721}
!1000 = !{!723}
!1001 = !{!724}
!1002 = !{!723, !724, !725}
!1003 = !{!723, !724}
!1004 = !{!727}
!1005 = !{!729}
!1006 = !{!730}
!1007 = !{!729, !730, !731}
!1008 = !{!729, !730}
!1009 = !{!733}
!1010 = !{!735}
!1011 = !{!736}
!1012 = !{!735, !736, !737}
!1013 = !{!735, !736}
!1014 = !{!739}
!1015 = !{!741}
!1016 = !{!742}
!1017 = !{!741, !742, !743}
!1018 = !{!741, !742}
!1019 = !{!745}
!1020 = !{!747}
!1021 = !{!748}
!1022 = !{!747, !748, !749}
!1023 = !{!747, !748}
!1024 = !{!751}
!1025 = !{!753}
!1026 = !{!754}
!1027 = !{!753, !754, !755}
!1028 = !{!753, !754}
!1029 = !{!757}
!1030 = !{!759}
!1031 = !{!760}
!1032 = !{!759, !760, !761}
!1033 = !{!759, !760}
!1034 = !{!763}
!1035 = !{!765}
!1036 = !{!766}
!1037 = !{!765, !766, !767}
!1038 = !{!765, !766}
!1039 = !{!769}
!1040 = !{!773, !771}
!1041 = !{!775}
!1042 = !{!776}
!1043 = !{!775, !776, !777}
!1044 = !{!775, !776}
!1045 = !{!779}
!1046 = !{!781}
!1047 = !{!782}
!1048 = !{!781, !782, !783}
!1049 = !{!781, !782}
!1050 = !{!785}
!1051 = !{!787}
!1052 = !{!788}
!1053 = !{!787, !788, !789}
!1054 = !{!787, !788}
!1055 = !{!791}
!1056 = !{!793}
!1057 = !{!794}
!1058 = !{!793, !794, !795}
!1059 = !{!793, !794}
!1060 = !{!797}
!1061 = !{!799}
!1062 = !{!800}
!1063 = !{!799, !800, !801}
!1064 = !{!799, !800}
!1065 = !{!803}
!1066 = !{!805}
!1067 = !{!807}
!1068 = !{!808}
!1069 = !{!807, !808, !809}
!1070 = !{!807, !808}
!1071 = !{!811}
end_hunk_3
