Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.02?download=true
inline.NumInlined: 2281
inline.NumDeleted: 862
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtCs8frGy5WneL6_4fish7threads7threads5spawnNCNvMs2_NtB6_10fd_monitorNtBT_9FdMonitor3add0EB6_:bb.a
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.bt, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.bv = load i64, ptr %i.bu, align 8, !range !22, !noundef !10
  br label %.invoke

bb.z:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.by = load i64, ptr %i.bu, align 8, !range !16, !noundef !10 ; 2 uses
  %i.bz = icmp samesign ugt i64 %i.by, 10
  call void @llvm.assume(i1 %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bx, ptr noundef nonnull align 1 dereferenceable(11) @44, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 11
  store ptr %i.bx, ptr %i.k, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.by, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bx, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.ca, ptr %i.cd, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.aa unwind label %bb.q

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ce = load i64, ptr %i.av, align 8, !alias.scope !1427, !noundef !10 ; 3 uses
  %i.cf = load i64, ptr %i.w, align 8, !range !16, !alias.scope !1427, !noundef !10
  %i.cg = icmp eq i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.ac unwind label %bb.q

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.ch = load ptr, ptr %i.au, align 8, !alias.scope !1427, !nonnull !10, !noundef !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ce
  store i8 32, ptr %i.ci, align 1
  %i.cj = add i64 %i.ce, 1
  store i64 %i.cj, ptr %i.av, align 8, !alias.scope !1427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.x, ptr %i.e, align 8, !noalias !1428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1428
  store ptr %i.e, ptr %i.d, align 8, !noalias !1428
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdNtB6_5Debug3fmtBC_, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1428
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @748, ptr noundef nonnull %i.d)
          to label %bb.ad unwind label %bb.q

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.cm = load i64, ptr %i.u, align 8, !range !16, !noundef !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noundef !10 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, -1
  call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  store ptr %i.cl, ptr %i.j, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.cm, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cl, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.cq, ptr %i.ct, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.ae unwind label %bb.q

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.cu = load i64, ptr %i.av, align 8, !alias.scope !1429, !noundef !10 ; 3 uses
  %i.cv = load i64, ptr %i.w, align 8, !range !16, !alias.scope !1429, !noundef !10
  %i.cw = icmp eq i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.ag unwind label %bb.q

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.cx = load ptr, ptr %i.au, align 8, !alias.scope !1429, !nonnull !10, !noundef !10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu
  store i8 32, ptr %i.cy, align 1
  %i.cz = add i64 %i.cu, 1
  store i64 %i.cz, ptr %i.av, align 8, !alias.scope !1429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ah unwind label %bb.q

bb.ah:                                            ; preds = %bb.ag
  %i.da = load i64, ptr %i.i, align 8, !range !12, !noundef !10
  %i.db = trunc nuw i64 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.db, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.dd = load i64, ptr %i.dc, align 8, !range !22, !noundef !10
  br label %.invoke

.invoke:                                          ; preds = %bb.y, %bb.ai
  %.sink67.sroa.phi = phi ptr [ %.sink67.sroa.gep, %bb.y ], [ %.sink67.sroa.gep68, %bb.ai ]
  %i.de = phi i64 [ %i.bv, %bb.y ], [ %i.dd, %bb.ai ]
  %i.df = load i64, ptr %.sink67.sroa.phi, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.de, i64 %i.df) #49
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.di = load i64, ptr %i.dc, align 8, !range !16, !noundef !10 ; 2 uses
  %i.dj = icmp samesign ugt i64 %i.di, 6
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dh, ptr noundef nonnull align 1 dereferenceable(7) @45, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 7
  store ptr %i.dh, ptr %i.h, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.di, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.dh, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.dk, ptr %i.dn, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.ak unwind label %bb.q

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.do = load i64, ptr %i.av, align 8, !alias.scope !1430, !noundef !10 ; 3 uses
  %i.dp = load i64, ptr %i.w, align 8, !range !16, !alias.scope !1430, !noundef !10
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.am unwind label %bb.q

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.dr = load ptr, ptr %i.au, align 8, !alias.scope !1430, !nonnull !10, !noundef !10
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.do
  store i8 10, ptr %i.ds, align 1
  %i.dt = add i64 %i.do, 1                        ; 2 uses
  store i64 %i.dt, ptr %i.av, align 8, !alias.scope !1430
  %i.du = load ptr, ptr %i.au, align 8, !nonnull !10, !noundef !10
  %i.dv = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !1431 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1431
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef range(i64 0, -9223372036854775808) %i.dt, i32 noundef %i.dv)
          to label %.noexc29 unwind label %bb.q

.noexc29:                                         ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1431
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit:    ; preds = %.noexc29, %bb.am
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.thread47 unwind label %bb.aq

bb.ap:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %.thread58

bb.aq:                                            ; preds = %bb.ao
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.o

bb.ar:                                            ; preds = %bb.bd, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dz = call noundef i32 @_RNvMsJ_NtNtCse7JGOylGlDZ_3nix3sys6signalNtB5_6SigSet15thread_set_mask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ae) ; 2 uses
  %.not.i = icmp eq i32 %i.dz, -1
  br i1 %.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCse7JGOylGlDZ_3nix5errno6consts5ErrnoE6expectCs8frGy5WneL6_4fish.exit, label %.noexc38, !prof !21

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.at, %bb.be, %.body34, %bb.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.thread47, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.thread47:                                        ; preds = %bb.ao, %bb.q, %.thread58
  %.pn50 = phi { ptr, i32 } [ %i.aw, %bb.q ], [ %lpad.thr_comm56, %.thread58 ], [ %i.dx, %bb.ao ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #50
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.at, %.loopexit.split-lp62
  %.pn12 = phi { ptr, i32 } [ %lpad.loopexit.split-lp64, %.loopexit.split-lp62 ], [ %i.ea, %bb.at ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #50
          to label %.body34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp62:                             ; preds = %.noexc32.preheader, %bb.l
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.as:                                            ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 30, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef 1)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.av, %bb.as
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %i.eb = load i8, ptr %i.p, align 8, !range !15, !alias.scope !1432, !noundef !10
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.av, label %.noexc32.preheader, !prof !13

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1433
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !range !37, !alias.scope !1432, !noundef !10
  store i8 %i.ee, ptr %i.g, align 1, !noalias !1433
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #53
          to label %.noexc unwind label %bb.at

.noexc:                                           ; preds = %bb.av
  unreachable

.noexc32.preheader:                               ; preds = %bb.au
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33 unwind label %.loopexit.split-lp62

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33: ; preds = %.noexc32.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ef = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, i32 noundef 2)
          to label %bb.ax unwind label %bb.aw     ; 0 uses

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #50
          to label %.body34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body34 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ax
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.ba

.body34:                                          ; preds = %bb.ba, %bb.ay, %bb.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn14 = phi { ptr, i32 } [ %.pn12, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.eg, %bb.aw ], [ %i.ej, %bb.ba ], [ %i.eh, %bb.ay ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #50
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body34

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1434
  %i.ek = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.el = and i64 %i.ek, 3
  switch i64 %i.el, label %default.unreachable [
    i64 2, label %bb.bd
    i64 3, label %bb.bb
    i64 0, label %bb.bd
    i64 1, label %bb.bc
  ], !prof !27

default.unreachable:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  unreachable

bb.bb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.em = icmp ult ptr %i.ar, inttoptr (i64 188978561024 to ptr)
  %i.en = and i64 %i.ek, 1095216660480
  %i.eo = icmp ne i64 %i.en, 1095216660480
  call void @llvm.assume(i1 %i.em)
  call void @llvm.assume(i1 %i.eo)
  br label %bb.bd

bb.bc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.ep = getelementptr i8, ptr %i.ar, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ep, ptr %i.eq, align 8, !alias.scope !1435, !noalias !1434
  store i8 3, ptr %i.b, align 8, !alias.scope !1435, !noalias !1434
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eq)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ar

.noexc38:                                         ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.dz, ptr %i.a, align 4
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 37, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #53
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCse7JGOylGlDZ_3nix5errno6consts5ErrnoE6expectCs8frGy5WneL6_4fish.exit: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  ret i1 %i.ap

.thread:                                          ; preds = %.thread47, %.body34, %bb.be
  %.pn1641 = phi { ptr, i32 } [ %.pn14, %.body34 ], [ %lpad.thr_comm, %bb.be ], [ %.pn50, %.thread47 ]
  resume { ptr, i32 } %.pn1641

bb.be:                                            ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs2_NtCs8frGy5WneL6_4fish10fd_monitorNtBJ_9FdMonitor3add0EBL_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.af) #50
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2i_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtCs1xwejQucwHj_5alloc3vec3VecBJ_EECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !1442
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !1442, !nonnull !10, !noundef !10 ; 6 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !1442 ; 3 uses
  %i.d = icmp ult i64 %.sroa.55.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.d)
  %.idx = mul nuw nsw i64 %.sroa.55.0.copyload.i, 24
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 %.idx
  store ptr %.sroa.44.0.copyload.i, ptr %i.c, align 8, !alias.scope !1441
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %i.f, align 8, !alias.scope !1441
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.44.0.copyload.i, ptr %i.g, align 8, !alias.scope !1441
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.e, ptr %i.h, align 8, !alias.scope !1441
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.i = icmp eq i64 %.sroa.55.0.copyload.i, 0
  br i1 %i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 24
  store ptr %i.j, ptr %i.g, align 8, !alias.scope !1443
  %.sroa.0.0.copyload3 = load i64, ptr %.sroa.44.0.copyload.i, align 8, !noalias !1443 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload3, -1
  br i1 %.not, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0.copyload3, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1P_8for_each4callBX_NCINvXs1Y_BZ_BX_INtNtB1T_7collect6ExtendBX_E6extendBI_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1Y_BT_BR_INtNtB1N_7collect6ExtendBR_E6extendB3_E0ECs8frGy5WneL6_4fish.exit unwind label %bb.d

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.a, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1Y_BT_BR_INtNtB1N_7collect6ExtendBR_E6extendB3_E0ECs8frGy5WneL6_4fish.exit, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #50
          to label %bb.f unwind label %bb.e

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_eachNCINvXs1Y_BT_BR_INtNtB1N_7collect6ExtendBR_E6extendB3_E0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i32 @_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
  %.not7 = icmp eq i32 %i.a, -1
  br i1 %.not7, label %._crit_edge, label %_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit

.lr.ph:                                           ; preds = %_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit
  %i.b = icmp eq i64 %i.c, -1
  br i1 %i.b, label %.noexc, label %_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit

.noexc:                                           ; preds = %.lr.ph
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #53
  unreachable

end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB5_10ThreadPool12spawn_thread:bb.a
bb.y:                                             ; preds = %bb.x
  %i.bu = load i64, ptr %i.l, align 8, !range !12, !noundef !10
  %i.bv = trunc nuw i64 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.bv, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.bx = load i64, ptr %i.bw, align 8, !range !22, !noundef !10
  br label %.invoke.i

bb.aa:                                            ; preds = %bb.y
  %i.by = load ptr, ptr %.sink68.i.sroa.gep, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.bz = load i64, ptr %i.bw, align 8, !range !16, !noundef !10 ; 2 uses
  %i.ca = icmp samesign ugt i64 %i.bz, 10
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.by, ptr noundef nonnull align 1 dereferenceable(11) @44, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  store ptr %i.by, ptr %i.k, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.bz, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.by, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.cb, ptr %i.ce, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.ab unwind label %bb.r

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cf = load i64, ptr %i.ax, align 8, !alias.scope !2149, !noundef !10 ; 3 uses
  %i.cg = load i64, ptr %i.w, align 8, !range !16, !alias.scope !2149, !noundef !10
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.ad unwind label %bb.r

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ci = load ptr, ptr %i.aw, align 8, !alias.scope !2149, !nonnull !10, !noundef !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cf
  store i8 32, ptr %i.cj, align 1
  %i.ck = add i64 %i.cf, 1
  store i64 %i.ck, ptr %i.ax, align 8, !alias.scope !2149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.x, ptr %i.e, align 8, !noalias !2150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2150
  store ptr %i.e, ptr %i.d, align 8, !noalias !2150
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdNtB6_5Debug3fmtBC_, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !2150
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @748, ptr noundef nonnull %i.d)
          to label %bb.ae unwind label %bb.r

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.cn = load i64, ptr %i.u, align 8, !range !16, !noundef !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noundef !10 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp
  store ptr %i.cm, ptr %i.j, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.cn, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cm, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.cr, ptr %i.cu, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.af unwind label %bb.r

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.cv = load i64, ptr %i.ax, align 8, !alias.scope !2151, !noundef !10 ; 3 uses
  %i.cw = load i64, ptr %i.w, align 8, !range !16, !alias.scope !2151, !noundef !10
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.ah unwind label %bb.r

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cy = load ptr, ptr %i.aw, align 8, !alias.scope !2151, !nonnull !10, !noundef !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cv
  store i8 32, ptr %i.cz, align 1
  %i.da = add i64 %i.cv, 1
  store i64 %i.da, ptr %i.ax, align 8, !alias.scope !2151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ai unwind label %bb.r

bb.ai:                                            ; preds = %bb.ah
  %i.db = load i64, ptr %i.i, align 8, !range !12, !noundef !10
  %i.dc = trunc nuw i64 %i.db to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.dc, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.de = load i64, ptr %i.dd, align 8, !range !22, !noundef !10
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.aj, %bb.z
  %.sink68.i.sroa.phi = phi ptr [ %.sink68.i.sroa.gep, %bb.z ], [ %.sink68.i.sroa.gep1, %bb.aj ]
  %i.df = phi i64 [ %i.bx, %bb.z ], [ %i.de, %bb.aj ]
  %i.dg = load i64, ptr %.sink68.i.sroa.phi, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #49
          to label %.cont.i unwind label %bb.r

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dh = load ptr, ptr %.sink68.i.sroa.gep1, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.di = load i64, ptr %i.dd, align 8, !range !16, !noundef !10 ; 2 uses
  %i.dj = icmp samesign ugt i64 %i.di, 6
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dh, ptr noundef nonnull align 1 dereferenceable(7) @45, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 7
  store ptr %i.dh, ptr %i.h, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.di, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.dh, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.dk, ptr %i.dn, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.al unwind label %bb.r

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.do = load i64, ptr %i.ax, align 8, !alias.scope !2152, !noundef !10 ; 3 uses
  %i.dp = load i64, ptr %i.w, align 8, !range !16, !alias.scope !2152, !noundef !10
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #52
          to label %bb.an unwind label %bb.r

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dr = load ptr, ptr %i.aw, align 8, !alias.scope !2152, !nonnull !10, !noundef !10
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.do
  store i8 10, ptr %i.ds, align 1
  %i.dt = add i64 %i.do, 1                        ; 2 uses
  store i64 %i.dt, ptr %i.ax, align 8, !alias.scope !2152
  %i.du = load ptr, ptr %i.aw, align 8, !nonnull !10, !noundef !10
  %i.dv = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !2153 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2153
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef range(i64 0, -9223372036854775808) %i.dt, i32 noundef %i.dv)
          to label %.noexc29.i unwind label %bb.r

.noexc29.i:                                       ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2153
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i:  ; preds = %.noexc29.i, %bb.an
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.thread48.i unwind label %bb.ar

bb.aq:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %.thread59.i

bb.ar:                                            ; preds = %bb.ap
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.p

bb.as:                                            ; preds = %bb.be, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dz = call noundef i32 @_RNvMsJ_NtNtCse7JGOylGlDZ_3nix3sys6signalNtB5_6SigSet15thread_set_mask(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ae) ; 2 uses
  %.not.i.i = icmp eq i32 %i.dz, -1
  br i1 %.not.i.i, label %_RINvNtNtCs8frGy5WneL6_4fish7threads7threads5spawnNCNvMs1_B2_NtB2_10ThreadPool12spawn_thread0EB6_.exit, label %.noexc38.i, !prof !21

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bg, %.body34.i, %bb.ax, %bb.au, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %.thread48.i, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.thread48.i:                                      ; preds = %bb.ap, %bb.r, %.thread59.i
  %.pn51.i = phi { ptr, i32 } [ %i.ay, %bb.r ], [ %lpad.thr_comm57.i, %.thread59.i ], [ %i.dx, %bb.ap ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #50
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtBJ_10ThreadPool12spawn_thread0EBN_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.au, %.loopexit.split-lp63.i
  %.pn12.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp65.i, %.loopexit.split-lp63.i ], [ %i.ea, %bb.au ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #50
          to label %.body34.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp63.i:                           ; preds = %.noexc32.i.preheader, %bb.m
  %lpad.loopexit.split-lp65.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

bb.at:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 30, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef 1)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  %i.eb = load i8, ptr %i.p, align 8, !range !15, !alias.scope !2154, !noundef !10
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.aw, label %.noexc32.i.preheader, !prof !13

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2155
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !range !37, !alias.scope !2154, !noundef !10
  store i8 %i.ee, ptr %i.g, align 1, !noalias !2155
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #53
          to label %.noexc.i unwind label %bb.au

.noexc.i:                                         ; preds = %bb.aw
  unreachable

.noexc32.i.preheader:                             ; preds = %bb.av
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33.i unwind label %.loopexit.split-lp63.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33.i: ; preds = %.noexc32.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ef = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, i32 noundef 2)
          to label %bb.ay unwind label %bb.ax     ; 0 uses

bb.ax:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #50
          to label %.body34.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body34.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.bb

.body34.i:                                        ; preds = %bb.bb, %bb.az, %bb.ax, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i
  %.pn14.i = phi { ptr, i32 } [ %.pn12.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i ], [ %i.eg, %bb.ax ], [ %i.ej, %bb.bb ], [ %i.eh, %bb.az ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #50
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtBJ_10ThreadPool12spawn_thread0EBN_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2156
  %i.ek = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.el = and i64 %i.ek, 3
  switch i64 %i.el, label %default.unreachable [
    i64 2, label %bb.be
    i64 3, label %bb.bc
    i64 0, label %bb.be
    i64 1, label %bb.bd
  ], !prof !27

default.unreachable:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  unreachable

bb.bc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.em = icmp ult ptr %i.at, inttoptr (i64 188978561024 to ptr)
  %i.en = and i64 %i.ek, 1095216660480
  %i.eo = icmp ne i64 %i.en, 1095216660480
  call void @llvm.assume(i1 %i.em)
  call void @llvm.assume(i1 %i.eo)
  br label %bb.be

bb.bd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.ep = getelementptr i8, ptr %i.at, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ep, ptr %i.eq, align 8, !alias.scope !2157, !noalias !2156
  store i8 3, ptr %i.b, align 8, !alias.scope !2157, !noalias !2156
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eq)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.as

.noexc38.i:                                       ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.dz, ptr %i.a, align 4
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 37, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @168, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #53
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtBJ_10ThreadPool12spawn_thread0EBN_.exit.i: ; preds = %bb.bg, %bb.bf, %.body34.i, %.thread48.i
  %.pn1642.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.bf ], [ %.pn14.i, %.body34.i ], [ %lpad.thr_comm.i, %bb.bg ], [ %.pn51.i, %.thread48.i ]
  resume { ptr, i32 } %.pn1642.i

bb.bf:                                            ; preds = %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !2158
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.bg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtBJ_10ThreadPool12spawn_thread0EBN_.exit.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.af) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtBJ_10ThreadPool12spawn_thread0EBN_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtNtCs8frGy5WneL6_4fish7threads7threads5spawnNCNvMs1_B2_NtB2_10ThreadPool12spawn_thread0EB6_.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  ret i1 %i.ar

bb.bh:                                            ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB5_10ThreadPool3new(i64 noundef %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i32 0, ptr %i.c, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4
  %.sroa.0.sroa.5.sroa.0.sroa.4.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.0.sroa.5.sroa.0.sroa.4.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.0.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.5.sroa.0.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.0.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.sroa.0.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 32, i1 false)
  store i64 %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !2161
  %i.d = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #48, !noalias !2161 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEE3newB16_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #49
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1k_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1k_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEE3newB16_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9wrap_copyCs8frGy5WneL6_4fish(i64 %.0.val, ptr nofree captures(none) %.8.val, i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 %1, %0                           ; 2 uses
  %i.d = add i64 %i.c, %.0.val                    ; 2 uses
  %.not = icmp ult i64 %i.d, %.0.val
  %. = select i1 %.not, i64 %i.d, i64 %i.c
  %i.e = icmp ult i64 %., %2                      ; 2 uses
  %i.f = sub i64 %.0.val, %0                      ; 11 uses
  %i.g = sub i64 %.0.val, %1                      ; 11 uses
  %i.h = icmp ult i64 %i.f, %2
  %i.i = icmp ult i64 %i.g, %2                    ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %0
end_hunk_1
begin_hunk_2_@_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl18load_old_if_needed:bb.a
  %i.cn = load ptr, ptr %i.bs, align 8, !alias.scope !2492, !nonnull !10, !noundef !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ck
  store i8 32, ptr %i.co, align 1
  %i.cp = add i64 %i.cf, 2
  store i64 %i.cp, ptr %i.bt, align 8, !alias.scope !2492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !10 ; 2 uses
  store i64 4, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.cr, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 19, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.r, i64 noundef 1)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2493)
  %i.ct = load i8, ptr %i.s, align 8, !range !15, !alias.scope !2493, !noundef !10
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.z, label %.noexc48.preheader, !prof !13

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2494
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !range !37, !alias.scope !2493, !noundef !10
  store i8 %i.cw, ptr %i.h, align 1, !noalias !2494
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #53
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.z
  unreachable

.noexc48.preheader:                               ; preds = %bb.y
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit49 unwind label %bb.aa

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.x, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.aa ], [ %i.cs, %bb.x ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #50
          to label %.body51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %.noexc48.preheader
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit49: ; preds = %.noexc48.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit49, %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #50
          to label %.body51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.db = load i64, ptr %i.v, align 8, !range !16, !noundef !10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !10 ; 2 uses
  %i.de = icmp sgt i64 %i.dd, -1
  call void @llvm.assume(i1 %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dd
  store ptr %i.da, ptr %i.m, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.db, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.da, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.df, ptr %i.di, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.ac unwind label %bb.ab

bb.ac:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body51 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.q

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.dl = load i64, ptr %i.bt, align 8, !alias.scope !2495, !noundef !10 ; 3 uses
  %i.dm = load i64, ptr %i.x, align 8, !range !16, !alias.scope !2495, !noundef !10
  %i.dn = icmp eq i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #52
          to label %bb.ag unwind label %bb.q

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.af
  %i.do = load ptr, ptr %i.bs, align 8, !alias.scope !2495, !nonnull !10, !noundef !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dl
  store i8 10, ptr %i.dp, align 1
  %i.dq = add i64 %i.dl, 1                        ; 2 uses
  store i64 %i.dq, ptr %i.bt, align 8, !alias.scope !2495
  %i.dr = load ptr, ptr %i.bs, align 8, !nonnull !10, !noundef !10
  %i.ds = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !2496 ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2496
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef range(i64 0, -9223372036854775808) %i.dq, i32 noundef %i.ds)
          to label %.noexc56 unwind label %bb.q

.noexc56:                                         ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2496
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit:    ; preds = %.noexc56, %bb.ag
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body58 unwind label %bb.ak

bb.aj:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.m

bb.ak:                                            ; preds = %bb.ai
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.al

bb.al:                                            ; preds = %bb.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43
  %.sroa.6119.0 = phi i64 [ 0, %bb.bt ], [ %.sroa.6119.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43 ] ; 2 uses
  %.sroa.5114.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.bt ], [ %.sroa.5114.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43 ] ; 2 uses
  %.sroa.4109.0 = phi i64 [ 0, %bb.bt ], [ %.sroa.4109.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43 ] ; 2 uses
  %.sroa.0103.0 = phi i64 [ 0, %bb.bt ], [ %.sroa.0103.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit43 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history4file11HistoryFileEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %bb.bu unwind label %bb.am, !noalias !2497

bb.am:                                            ; preds = %bb.al
  %i.dw = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0103.0, ptr %i.af, align 8, !alias.scope !2498
  %.sroa.4.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx107, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !alias.scope !2498
  %.sroa.4109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.4109.0, ptr %.sroa.4109.0..sroa_idx110, align 8, !alias.scope !2498
  %.sroa.5114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.5114.0, ptr %.sroa.5114.0..sroa_idx115, align 8, !alias.scope !2498
  %.sroa.6119.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.6119.0, ptr %.sroa.6119.0..sroa_idx120, align 8, !alias.scope !2498
  br label %.body60

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.an, %bb.x, %bb.k, %.body60, %.body71, %.body79, %bb.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body51, %.body58, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history12TimeProfilerEBH_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.an:                                            ; preds = %bb.h
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtNtCs8frGy5WneL6_4fish7history4fileNtB5_10MmapRegionNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %.body60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body79:                                          ; preds = %bb.bq, %bb.ao, %.body71
  %.pn30 = phi { ptr, i32 } [ %eh.lpad-body72, %.body71 ], [ %i.dy, %bb.ao ], [ %i.gt, %bb.bq ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #50
          to label %.body60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.br
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body79

bb.ap:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.dz = load ptr, ptr %i.ax, align 8, !nonnull !10, !noundef !10 ; 4 uses
  store ptr %i.dz, ptr %i.q, align 8
  %i.ea = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories12history_file, i64 40) monotonic, align 8
  %.not29 = icmp eq i8 %i.ea, 0
  br i1 %.not29, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit81, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2499
  %i.eb = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ec = and i64 %i.eb, 3
  switch i64 %i.ec, label %default.unreachable [
    i64 2, label %bb.bt
    i64 3, label %bb.ar
    i64 0, label %bb.bt
    i64 1, label %bb.as
  ], !prof !27

default.unreachable:                              ; preds = %bb.bz, %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.ed = icmp ult ptr %i.dz, inttoptr (i64 188978561024 to ptr)
  %i.ee = and i64 %i.eb, 1095216660480
  %i.ef = icmp ne i64 %i.ee, 1095216660480
  call void @llvm.assume(i1 %i.ed)
  call void @llvm.assume(i1 %i.ef)
  br label %bb.bt

bb.as:                                            ; preds = %bb.aq
  %i.eg = getelementptr i8, ptr %i.dz, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eg) ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.eg, ptr %i.eh, align 8, !alias.scope !2500, !noalias !2499
  store i8 3, ptr %i.f, align 8, !alias.scope !2500, !noalias !2499
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %bb.bt unwind label %bb.f

bb.at:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 8 uses
  store i64 0, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories12history_file, i64 24))
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.bp, %bb.bn, %bb.bf, %bb.az, %bb.ax, %bb.bl, %bb.bd, %bb.bc, %bb.ba, %bb.av, %bb.at
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.body71:                                          ; preds = %bb.bh, %bb.au
  %eh.lpad-body72 = phi { ptr, i32 } [ %i.ek, %bb.au ], [ %i.gd, %bb.bh ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #50
          to label %.body79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.el = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.en = load i64, ptr %i.o, align 8, !range !16, !noundef !10
  %i.eo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !10 ; 2 uses
  %i.eq = icmp sgt i64 %i.ep, -1
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ep
  store ptr %i.em, ptr %i.l, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.en, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.em, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.er, ptr %i.eu, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ev = load i64, ptr %i.ej, align 8, !alias.scope !2501, !noundef !10 ; 4 uses
  %i.ew = load i64, ptr %i.p, align 8, !range !16, !alias.scope !2501, !noundef !10
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #52
          to label %bb.ay unwind label %bb.au

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.ey = load ptr, ptr %i.ei, align 8, !alias.scope !2501, !nonnull !10, !noundef !10
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ev
  store i8 58, ptr %i.ez, align 1
  %i.fa = add i64 %i.ev, 1                        ; 3 uses
  store i64 %i.fa, ptr %i.ej, align 8, !alias.scope !2501
  %i.fb = load i64, ptr %i.p, align 8, !range !16, !alias.scope !2502, !noundef !10
  %i.fc = icmp eq i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #52
          to label %bb.ba unwind label %bb.au

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.fd = load ptr, ptr %i.ei, align 8, !alias.scope !2502, !nonnull !10, !noundef !10
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fa
  store i8 32, ptr %i.fe, align 1
  %i.ff = add i64 %i.ev, 2
  store i64 %i.ff, ptr %i.ej, align 8, !alias.scope !2502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bb unwind label %bb.au

bb.bb:                                            ; preds = %bb.ba
  %i.fg = load i64, ptr %i.k, align 8, !range !12, !noundef !10
  %i.fh = trunc nuw i64 %i.fg to i1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %i.fh, label %bb.bc, label %bb.bd, !prof !13

bb.bc:                                            ; preds = %bb.bb
  %i.fj = load i64, ptr %i.fi, align 8, !range !22, !noundef !10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fl = load i64, ptr %i.fk, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.fj, i64 %i.fl) #49
          to label %bb.by unwind label %bb.au

bb.bd:                                            ; preds = %bb.bb
  %i.fm = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.fo = load i64, ptr %i.fi, align 8, !range !16, !noundef !10 ; 2 uses
  %i.fp = icmp samesign ugt i64 %i.fo, 31
  call void @llvm.assume(i1 %i.fp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fn, ptr noundef nonnull align 1 dereferenceable(32) @235, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store ptr %i.fn, ptr %i.j, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.fo, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.fn, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.fq, ptr %i.ft, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.be unwind label %bb.au

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fu = load i64, ptr %i.ej, align 8, !alias.scope !2503, !noundef !10 ; 3 uses
  %i.fv = load i64, ptr %i.p, align 8, !range !16, !alias.scope !2503, !noundef !10
  %i.fw = icmp eq i64 %i.fu, %i.fv
  br i1 %i.fw, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #52
          to label %bb.bg unwind label %bb.au

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.fx = load ptr, ptr %i.ei, align 8, !alias.scope !2503, !nonnull !10, !noundef !10
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fu
  store i8 32, ptr %i.fy, align 1
  %i.fz = add i64 %i.fu, 1
  store i64 %i.fz, ptr %i.ej, align 8, !alias.scope !2503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2504
  store i64 0, ptr %i.e, align 8, !noalias !2504
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2504
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2504
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.ga, align 8, !noalias !2504
  store ptr %i.e, ptr %i.d, align 8, !noalias !2504
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @672, ptr %i.gb, align 8, !noalias !2504
  %i.gc = invoke noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
end_hunk_2
begin_hunk_3_@_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl4save:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2818
  %i.cx = load i64, ptr %i.bz, align 8, !alias.scope !2818, !noundef !10 ; 2 uses
  %i.cy = icmp ult i64 %i.co, %i.cx
  br i1 %i.cy, label %bb.n, label %.backedge.i

bb.n:                                             ; preds = %bb.m
  %i.cz = add i64 %i.cx, -1
  store i64 %i.cz, ptr %i.bz, align 8, !alias.scope !2818
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.n, %bb.m, %bb.j, %bb.d
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl17compact_new_items.exit, label %bb.c

bb.o:                                             ; preds = %bb.f
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body, %.body129, %bb.fi, %bb.f, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.ra, %bb.fi ], [ %i.dj, %bb.r ], [ %lpad.phi.i, %bb.f ], [ %.pn32, %.body129 ], [ %.pn28.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl17compact_new_items.exit: ; preds = %.backedge.i, %bb.b
  call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2818
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !10 ; 2 uses
  %i.dd = icmp ult i64 %i.dc, 2305843009213693952
  call void @llvm.assume(i1 %i.dd)
  %i.de = icmp eq i64 %i.dc, 0
  br i1 %i.de, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl17compact_new_items.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call fastcc void @_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl17history_file_path(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %0)
  %i.df = load i64, ptr %i.bx, align 8, !range !25, !noundef !10 ; 2 uses
  switch i64 %i.df, label %bb.s [
    i64 -2, label %bb.gs
    i64 -1, label %bb.t
  ], !prof !2819

bb.q:                                             ; preds = %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl17compact_new_items.exit
  %i.dg = load i64, ptr %i.cb, align 8, !noundef !10 ; 2 uses
  %i.dh = icmp ult i64 %i.dg, 104811045873349726
  call void @llvm.assume(i1 %i.dh)
  store i64 %i.dg, ptr %i.bz, align 8
  call void @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history13DeletionScopeEE5clearB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cf)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history4file11HistoryFileEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.di)
          to label %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.di, align 8, !alias.scope !2820
  br label %common.resume

_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state.exit: ; preds = %bb.q
  store i64 2, ptr %i.di, align 8, !alias.scope !2820
  br label %bb.gq

bb.s:                                             ; preds = %bb.p
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.df, ptr %i.by, align 8
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.dk = load i64, ptr %i.cg, align 8
  %i.dl = icmp ne i64 %i.dk, 0
  %or.cond7.not = select i1 %1, i1 true, i1 %i.dl
  br i1 %or.cond7.not, label %bb.u, label %bb.av

bb.t:                                             ; preds = %bb.p
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #53
  unreachable

bb.u:                                             ; preds = %bb.fe, %bb.s
  %i.dm = load ptr, ptr %.sroa.5.0..sroa_idx9, align 8, !nonnull !10, !noundef !10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  %i.dp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7history, i64 40) monotonic, align 8, !noalias !2822
  %.not.i35 = icmp eq i8 %i.dp, 0
  br i1 %.not.i35, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc36, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2822
  invoke void @_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMs3_NtNtB4_7history7historyNtB10_11HistoryImpl25save_internal_via_rewrite0uEB4_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aq, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dm, i64 noundef %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %0)
          to label %.noexc unwind label %bb.dx

.noexc:                                           ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.dr = load i8, ptr %i.dq, align 8, !range !23, !noalias !2822, !noundef !10
  %i.ds = icmp eq i8 %i.dr, 2
  %i.dt = load ptr, ptr %i.aq, align 8, !noalias !2822 ; 5 uses
  br i1 %i.ds, label %bb.fl, label %bb.at

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2822
  store i64 0, ptr %i.ax, align 8, !noalias !2822
  %i.du = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.du, align 8, !noalias !2822
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 6 uses
  store i64 0, ptr %i.dv, align 8, !noalias !2822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2822
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7history, i64 24))
          to label %bb.y unwind label %bb.x, !noalias !2822

.body.i:                                          ; preds = %bb.am, %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %bb.x
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i ], [ %i.fc, %bb.ak ], [ %i.dw, %bb.x ], [ %i.fn, %bb.am ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #50
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2822

bb.x:                                             ; preds = %bb.aq, %bb.ao, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i, %bb.ac, %bb.aa, %bb.y, %bb.w
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2822
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !2822, !nonnull !10, !noundef !10 ; 3 uses
  %i.dz = load i64, ptr %i.aw, align 8, !range !16, !noalias !2822, !noundef !10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !2822, !noundef !10 ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, -1
  call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.eb
  store ptr %i.dy, ptr %i.ap, align 8, !noalias !2822
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.dz, ptr %i.ee, align 8, !noalias !2822
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.dy, ptr %i.ef, align 8, !noalias !2822
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.ed, ptr %i.eg, align 8, !noalias !2822
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ap)
          to label %bb.z unwind label %bb.x, !noalias !2822

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2822
  %i.eh = load i64, ptr %i.dv, align 8, !alias.scope !2823, !noalias !2822, !noundef !10 ; 4 uses
  %i.ei = load i64, ptr %i.ax, align 8, !range !16, !alias.scope !2823, !noalias !2822, !noundef !10
  %i.ej = icmp eq i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #52
          to label %bb.ab unwind label %bb.x, !noalias !2822

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ek = load ptr, ptr %i.du, align 8, !alias.scope !2823, !noalias !2822, !nonnull !10, !noundef !10
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eh
  store i8 58, ptr %i.el, align 1, !noalias !2822
  %i.em = add i64 %i.eh, 1                        ; 3 uses
  store i64 %i.em, ptr %i.dv, align 8, !alias.scope !2823, !noalias !2822
  %i.en = load i64, ptr %i.ax, align 8, !range !16, !alias.scope !2824, !noalias !2822, !noundef !10
  %i.eo = icmp eq i64 %i.em, %i.en
  br i1 %i.eo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #52
          to label %bb.ad unwind label %bb.x, !noalias !2822

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ep = load ptr, ptr %i.du, align 8, !alias.scope !2824, !noalias !2822, !nonnull !10, !noundef !10
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.em
  store i8 32, ptr %i.eq, align 1, !noalias !2822
  %i.er = add i64 %i.eh, 2
  store i64 %i.er, ptr %i.dv, align 8, !alias.scope !2824, !noalias !2822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2822
  store i64 0, ptr %i.at, align 8, !noalias !2822
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !2822
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 0, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !2822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2822
  %i.es = load i64, ptr %i.cb, align 8, !alias.scope !2821, !noundef !10 ; 3 uses
  %i.et = icmp ult i64 %i.es, 104811045873349726
  call void @llvm.assume(i1 %i.et)
  %i.eu = load i64, ptr %i.bz, align 8, !alias.scope !2821, !noundef !10 ; 2 uses
  %i.ev = icmp ult i64 %i.es, %i.eu
  br i1 %i.ev, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ew = sub nuw nsw i64 %i.es, %i.eu
  store i64 4, ptr %i.ar, align 8, !noalias !2822
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ew, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2822
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 27, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.ar, i64 noundef 1)
          to label %bb.ai unwind label %bb.ah, !noalias !2822

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #49
          to label %bb.ag unwind label %.loopexit.split-lp28.i, !noalias !2822

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ah, %.loopexit.split-lp28.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp30.i, %.loopexit.split-lp28.i ], [ %i.ex, %bb.ah ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at) #50
          to label %.body.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2822

.loopexit.split-lp28.i:                           ; preds = %.noexc20.i.preheader, %bb.af
  %lpad.loopexit.split-lp30.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.aj, %bb.ae
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2822

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  %i.ey = load i8, ptr %i.as, align 8, !range !15, !alias.scope !2825, !noalias !2822, !noundef !10
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.aj, label %.noexc20.i.preheader, !prof !13

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2826
  %i.fa = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !range !37, !alias.scope !2825, !noalias !2822, !noundef !10
  store i8 %i.fb, ptr %i.an, align 1, !noalias !2826
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #53
          to label %.noexc.i unwind label %bb.ah, !noalias !2822

.noexc.i:                                         ; preds = %bb.aj
  unreachable

.noexc20.i.preheader:                             ; preds = %bb.ai
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit21.i unwind label %.loopexit.split-lp28.i, !noalias !2822

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit21.i: ; preds = %.noexc20.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !2822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2822
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i unwind label %bb.ak, !noalias !2822

bb.ak:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit21.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au) #50
          to label %.body.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2822

_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit21.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2822
  %i.fd = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !2822, !nonnull !10, !noundef !10 ; 3 uses
  %i.ff = load i64, ptr %i.av, align 8, !range !16, !noalias !2822, !noundef !10
  %i.fg = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !2822, !noundef !10 ; 2 uses
  %i.fi = icmp sgt i64 %i.fh, -1
  call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fh
  store ptr %i.fe, ptr %i.ao, align 8, !noalias !2822
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.ff, ptr %i.fk, align 8, !noalias !2822
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.fe, ptr %i.fl, align 8, !noalias !2822
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.fj, ptr %i.fm, align 8, !noalias !2822
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ao)
          to label %bb.al unwind label %bb.ak, !noalias !2822

bb.al:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2822
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.am, !noalias !2822

bb.am:                                            ; preds = %bb.al
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body.i unwind label %bb.an, !noalias !2822

bb.an:                                            ; preds = %bb.am
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2822
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.x, !noalias !2822

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2822
  %i.fp = load i64, ptr %i.dv, align 8, !alias.scope !2827, !noalias !2822, !noundef !10 ; 3 uses
  %i.fq = load i64, ptr %i.ax, align 8, !range !16, !alias.scope !2827, !noalias !2822, !noundef !10
  %i.fr = icmp eq i64 %i.fp, %i.fq
  br i1 %i.fr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #52
          to label %bb.ap unwind label %bb.x, !noalias !2822

bb.ap:                                            ; preds = %bb.ao, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.fs = load ptr, ptr %i.du, align 8, !alias.scope !2827, !noalias !2822, !nonnull !10, !noundef !10
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fp
  store i8 10, ptr %i.ft, align 1, !noalias !2822
  %i.fu = add i64 %i.fp, 1                        ; 2 uses
  store i64 %i.fu, ptr %i.dv, align 8, !alias.scope !2827, !noalias !2822
  %i.fv = load ptr, ptr %i.du, align 8, !noalias !2822, !nonnull !10, !noundef !10
  %i.fw = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !2828 ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2828
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fv, i64 noundef range(i64 0, -9223372036854775808) %i.fu, i32 noundef %i.fw)
          to label %.noexc26.i unwind label %bb.x, !noalias !2822

.noexc26.i:                                       ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2828
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i:  ; preds = %.noexc26.i, %bb.ap
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ar, !noalias !2822

bb.ar:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body unwind label %bb.as, !noalias !2822

bb.as:                                            ; preds = %bb.ar
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2822
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.noexc36 unwind label %bb.dx

.noexc36:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2822
  br label %bb.v

bb.at:                                            ; preds = %.noexc
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.0..sroa_idx.i, i64 48, i1 false), !noalias !2829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2822
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.dt, ptr %i.ga, align 8, !alias.scope !2821
  %i.gb = load i64, ptr %i.cb, align 8, !alias.scope !2821, !noundef !10 ; 2 uses
  %i.gc = icmp ult i64 %i.gb, 104811045873349726
  call void @llvm.assume(i1 %i.gc)
  store i64 %i.gb, ptr %i.bz, align 8, !alias.scope !2821
  invoke void @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history13DeletionScopeEE5clearB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cf)
          to label %.noexc37 unwind label %bb.dx

.noexc37:                                         ; preds = %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history4file11HistoryFileEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.gd)
          to label %_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl25save_internal_via_rewrite.exit.thread unwind label %bb.au

bb.au:                                            ; preds = %.noexc37
  %i.ge = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.gd, align 8, !alias.scope !2830
  br label %.body

_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl25save_internal_via_rewrite.exit.thread: ; preds = %.noexc37
  store i64 2, ptr %i.gd, align 8, !alias.scope !2830
  br label %bb.fh

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ak, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i, %.body.i
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2822
  unreachable

bb.av:                                            ; preds = %bb.s
  %i.gf = load ptr, ptr %.sroa.5.0..sroa_idx9, align 8, !nonnull !10, !noundef !10
  %i.gg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  %i.gi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7history, i64 40) monotonic, align 8, !noalias !2832
  %.not.i38 = icmp eq i8 %i.gi, 0
  br i1 %.not.i38, label %.thread, label %bb.ax

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2832
  %.pre = load i64, ptr %i.cg, align 8, !alias.scope !2831
  %i.gj = icmp eq i64 %.pre, 0
  br i1 %i.gj, label %.thread, label %bb.bu, !prof !2833

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2832
  store i64 0, ptr %i.al, align 8, !noalias !2832
  %i.gk = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.gk, align 8, !noalias !2832
  %i.gl = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 6 uses
  store i64 0, ptr %i.gl, align 8, !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2832
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7history, i64 24))
          to label %bb.az unwind label %bb.ay

.body38.i:                                        ; preds = %bb.bn, %bb.bl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i42, %bb.ay
  %.pn22.pn.i = phi { ptr, i32 } [ %.pn22.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i42 ], [ %i.hs, %bb.bl ], [ %i.gm, %bb.ay ], [ %i.id, %bb.bn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #50
          to label %.body unwind label %.loopexit.split-lp108.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.br, %bb.bp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i44, %bb.bd, %bb.bb, %bb.az, %bb.ax
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body38.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2832
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !2832, !nonnull !10, !noundef !10 ; 3 uses
  %i.gp = load i64, ptr %i.ak, align 8, !range !16, !noalias !2832, !noundef !10
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !2832, !noundef !10 ; 2 uses
  %i.gs = icmp sgt i64 %i.gr, -1
  call void @llvm.assume(i1 %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gr
  store ptr %i.go, ptr %i.ab, align 8, !noalias !2832
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.gp, ptr %i.gu, align 8, !noalias !2832
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.go, ptr %i.gv, align 8, !noalias !2832
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.gt, ptr %i.gw, align 8, !noalias !2832
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ab)
          to label %bb.ba unwind label %bb.ay

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2832
  %i.gx = load i64, ptr %i.gl, align 8, !alias.scope !2834, !noalias !2832, !noundef !10 ; 4 uses
  %i.gy = load i64, ptr %i.al, align 8, !range !16, !alias.scope !2834, !noalias !2832, !noundef !10
  %i.gz = icmp eq i64 %i.gx, %i.gy
  br i1 %i.gz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #52
          to label %bb.bc unwind label %bb.ay

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ha = load ptr, ptr %i.gk, align 8, !alias.scope !2834, !noalias !2832, !nonnull !10, !noundef !10
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gx
  store i8 58, ptr %i.hb, align 1
  %i.hc = add i64 %i.gx, 1                        ; 3 uses
  store i64 %i.hc, ptr %i.gl, align 8, !alias.scope !2834, !noalias !2832
  %i.hd = load i64, ptr %i.al, align 8, !range !16, !alias.scope !2835, !noalias !2832, !noundef !10
  %i.he = icmp eq i64 %i.hc, %i.hd
  br i1 %i.he, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #52
          to label %bb.be unwind label %bb.ay

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hf = load ptr, ptr %i.gk, align 8, !alias.scope !2835, !noalias !2832, !nonnull !10, !noundef !10
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hc
  store i8 32, ptr %i.hg, align 1
  %i.hh = add i64 %i.gx, 2
  store i64 %i.hh, ptr %i.gl, align 8, !alias.scope !2835, !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2832
  store i64 0, ptr %i.ah, align 8, !noalias !2832
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !2832
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2832
  %i.hi = load i64, ptr %i.cb, align 8, !alias.scope !2831, !noundef !10 ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 104811045873349726
  call void @llvm.assume(i1 %i.hj)
  %i.hk = load i64, ptr %i.bz, align 8, !alias.scope !2831, !noundef !10 ; 2 uses
  %i.hl = icmp ult i64 %i.hi, %i.hk
  br i1 %i.hl, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hm = sub nuw nsw i64 %i.hi, %i.hk
  store i64 4, ptr %i.af, align 8, !noalias !2832
  %.sroa.4.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.hm, ptr %.sroa.4.0..sroa_idx.i41, align 8, !noalias !2832
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 29, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.af, i64 noundef 1)
          to label %bb.bj unwind label %bb.bi

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #49
          to label %bb.bh unwind label %.loopexit.split-lp112.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i42: ; preds = %bb.bi, %.loopexit.split-lp112.i
  %.pn22.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp114.i, %.loopexit.split-lp112.i ], [ %i.hn, %bb.bi ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #50
          to label %.body38.i unwind label %.loopexit.split-lp108.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp112.i:                          ; preds = %.noexc35.i.preheader, %bb.bg
  %lpad.loopexit.split-lp114.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i42

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %bb.bk, %bb.bf
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i42 unwind label %.loopexit.split-lp108.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  %i.ho = load i8, ptr %i.ag, align 8, !range !15, !alias.scope !2836, !noalias !2832, !noundef !10
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bk, label %.noexc35.i.preheader, !prof !13

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2837
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !range !37, !alias.scope !2836, !noalias !2832, !noundef !10
  store i8 %i.hr, ptr %i.z, align 1, !noalias !2837
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #53
          to label %.noexc.i57 unwind label %bb.bi

.noexc.i57:                                       ; preds = %bb.bk
  unreachable

.noexc35.i.preheader:                             ; preds = %bb.bj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit36.i unwind label %.loopexit.split-lp112.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit36.i: ; preds = %.noexc35.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !2832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2832
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i43 unwind label %bb.bl

bb.bl:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i43, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit36.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #50
          to label %.body38.i unwind label %.loopexit.split-lp108.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i43: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit36.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2832
  %i.ht = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !2832, !nonnull !10, !noundef !10 ; 3 uses
  %i.hv = load i64, ptr %i.aj, align 8, !range !16, !noalias !2832, !noundef !10
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !2832, !noundef !10 ; 2 uses
  %i.hy = icmp sgt i64 %i.hx, -1
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hx
  store ptr %i.hu, ptr %i.aa, align 8, !noalias !2832
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.hv, ptr %i.ia, align 8, !noalias !2832
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.hu, ptr %i.ib, align 8, !noalias !2832
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.hz, ptr %i.ic, align 8, !noalias !2832
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.bm unwind label %bb.bl

bb.bm:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2832
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i44 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body38.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i44: ; preds = %bb.bm
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i45 unwind label %bb.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i45: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2832
  %i.if = load i64, ptr %i.gl, align 8, !alias.scope !2838, !noalias !2832, !noundef !10 ; 3 uses
  %i.ig = load i64, ptr %i.al, align 8, !range !16, !alias.scope !2838, !noalias !2832, !noundef !10
  %i.ih = icmp eq i64 %i.if, %i.ig
  br i1 %i.ih, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i45
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #52
          to label %bb.bq unwind label %bb.ay

bb.bq:                                            ; preds = %bb.bp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i45
  %i.ii = load ptr, ptr %i.gk, align 8, !alias.scope !2838, !noalias !2832, !nonnull !10, !noundef !10
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.if
  store i8 10, ptr %i.ij, align 1
  %i.ik = add i64 %i.if, 1                        ; 2 uses
  store i64 %i.ik, ptr %i.gl, align 8, !alias.scope !2838, !noalias !2832
  %i.il = load ptr, ptr %i.gk, align 8, !noalias !2832, !nonnull !10, !noundef !10
  %i.im = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !2839 ; 2 uses
  %i.in = icmp slt i32 %i.im, 0
  br i1 %i.in, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i46, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2839
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.il, i64 noundef range(i64 0, -9223372036854775808) %i.ik, i32 noundef %i.im)
          to label %.noexc43.i unwind label %bb.ay

.noexc43.i:                                       ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2839
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i46

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i46: ; preds = %.noexc43.i, %bb.bq
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i47 unwind label %bb.bs

bb.bs:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i46
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i47: ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit.i46
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.aw unwind label %bb.dx

bb.bu:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #53
          to label %.noexc61 unwind label %bb.dx

.noexc61:                                         ; preds = %bb.bu
  unreachable

.thread:                                          ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2832
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish2fsNtB4_10LockedFile3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ad, i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.gf, i64 noundef %i.gh)
          to label %.noexc62 unwind label %bb.dx

.noexc62:                                         ; preds = %.thread
  %i.iq = load i32, ptr %i.ad, align 8, !range !33, !noalias !2832, !noundef !10
  %i.ir = trunc nuw i32 %i.iq to i1
  br i1 %i.ir, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.noexc62
  %i.is = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !noalias !2832, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2832
  br label %bb.ea

bb.bw:                                            ; preds = %.noexc62
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 3 uses
  %i.iw = load <2 x i32>, ptr %i.iu, align 4, !noalias !2832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2832
  store <2 x i32> %i.iw, ptr %i.ae, align 8, !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2840
  invoke void @_RNvMs2_NtCsaL1QbXo9JQH_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ae)
          to label %.noexc44.i unwind label %bb.ca

.noexc44.i:                                       ; preds = %bb.bw
  %i.ix = load i64, ptr %i.w, align 8, !range !29, !noalias !2840, !noundef !10
  %i.iy = icmp eq i64 %i.ix, 2
  br i1 %i.iy, label %bb.bx, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_.exit.i.i: ; preds = %.noexc44.i
  %.sroa.gep5.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.iz = load i64, ptr %.sroa.gep5.i.i, align 8, !alias.scope !2841, !noalias !2842, !noundef !10
  %.sroa.gep7.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ja = load i64, ptr %.sroa.gep7.i.i, align 8, !alias.scope !2841, !noalias !2842, !noundef !10
  %.sroa.gep10.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.jb = load i64, ptr %.sroa.gep10.i.i, align 8, !alias.scope !2841, !noalias !2842, !noundef !10
  %.sroa.gep13.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.jc = load i64, ptr %.sroa.gep13.i.i, align 8, !alias.scope !2841, !noalias !2842, !noundef !10
  %.sroa.gep16.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.jd = load i64, ptr %.sroa.gep16.i.i, align 8, !alias.scope !2841, !noalias !2842, !noundef !10
  %.sroa.gep19.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.je = load i64, ptr %.sroa.gep19.i.i, align 8, !alias.scope !2841, !noalias !2842, !noundef !10
  %.sroa.gep22.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.jf = load i64, ptr %.sroa.gep22.i.i, align 8, !alias.scope !2841, !noalias !2842, !noundef !10
  br label %bb.cb

bb.bx:                                            ; preds = %.noexc44.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val224.i.i = load ptr, ptr %i.jg, align 8, !noalias !2840, !nonnull !10, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2843
  %i.jh = ptrtoint ptr %.val224.i.i to i64        ; 2 uses
  %i.ji = and i64 %i.jh, 3
  switch i64 %i.ji, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i
    i64 3, label %bb.by
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i
    i64 1, label %bb.bz
  ], !prof !27

default.unreachable:                              ; preds = %bb.gt, %bb.fm, %bb.eb, %bb.ci, %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.jj = icmp ult ptr %.val224.i.i, inttoptr (i64 188978561024 to ptr)
  %i.jk = and i64 %i.jh, 1095216660480
  %i.jl = icmp ne i64 %i.jk, 1095216660480
  call void @llvm.assume(i1 %i.jj)
  call void @llvm.assume(i1 %i.jl)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.jm = getelementptr i8, ptr %.val224.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jm) ]
  %i.jn = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.jm, ptr %i.jn, align 8, !alias.scope !2844, !noalias !2843
  store i8 3, ptr %i.v, align 8, !alias.scope !2844, !noalias !2843
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.ca

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2843
  br label %bb.cb
end_hunk_3
begin_hunk_4_@_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl4save:bb.a
bb.cw:                                            ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit51.i.i
  store i64 %i.mw, ptr %i.r, align 8, !noalias !2853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2853
  store <2 x ptr> <ptr @32, ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish>, ptr %i.q, align 16, !noalias !2853
  store ptr %i.r, ptr %i.kx, align 16, !noalias !2853
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !2853
  %i.mx = invoke noundef ptr @_RNvYINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull @33, ptr noundef nonnull %i.q)
          to label %bb.cx unwind label %.loopexit.split-lp.i.i, !noalias !2852 ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  %.not.i72.i = icmp eq ptr %i.mx, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2853
  br i1 %.not.i72.i, label %bb.cy, label %bb.dp

bb.cy:                                            ; preds = %bb.cx
  %i.my = icmp eq i64 %i.mt, %i.mp
  %.not46.i.i = icmp eq i32 %i.mv, %i.mr
  %or.cond.i.i = and i1 %i.my, %.not46.i.i
  br i1 %or.cond.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2853
  %i.mz = invoke noundef i64 @_RNvNtNtCs8frGy5WneL6_4fish7history4file15time_to_seconds(i64 noundef %i.mt, i32 noundef %i.mv)
          to label %bb.db unwind label %.loopexit.split-lp.i.i, !noalias !2852

bb.da:                                            ; preds = %bb.dc, %bb.cy
  %i.na = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.nb = load ptr, ptr %i.na, align 8, !alias.scope !2852, !nonnull !10, !noundef !10 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.nd = load i64, ptr %i.nc, align 8, !alias.scope !2852, !noundef !10 ; 2 uses
  %i.ne = icmp eq i64 %i.nd, 0
  br i1 %i.ne, label %.loopexit.i.i, label %bb.df

bb.db:                                            ; preds = %bb.cz
  store i64 %i.mz, ptr %i.p, align 8, !noalias !2853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2853
  store <2 x ptr> <ptr @35, ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs8frGy5WneL6_4fish>, ptr %i.o, align 16, !noalias !2853
  store ptr %i.p, ptr %i.ky, align 16, !noalias !2853
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !2853
  %i.nf = invoke noundef ptr @_RNvYINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull @33, ptr noundef nonnull %i.o)
          to label %bb.dc unwind label %.loopexit.split-lp.i.i, !noalias !2852 ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %.not47.i.i = icmp eq ptr %i.nf, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2853
  br i1 %.not47.i.i, label %bb.da, label %bb.dp

.loopexit.i.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit56.i.i, %bb.da
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit58.i.i unwind label %bb.dd, !noalias !2852

bb.dd:                                            ; preds = %.loopexit.i.i
  %i.ng = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i52 unwind label %bb.de, !noalias !2852

bb.de:                                            ; preds = %bb.dd
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2852
  unreachable

bb.df:                                            ; preds = %bb.da
  %i.ni = invoke noundef ptr @_RNvYINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 19 to ptr))
          to label %bb.dg unwind label %.loopexit.split-lp.i.i, !noalias !2852 ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %.not48.i.i = icmp eq ptr %i.ni, null
  br i1 %.not48.i.i, label %.lr.ph.i.i, label %bb.dp

.lr.ph.i.i:                                       ; preds = %bb.dg
  %.idx.i.i = mul nuw nsw i64 %i.nd, 24
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 %.idx.i.i
  br label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit56.i.i, %.lr.ph.i.i
  %.sroa.019.060.i.i = phi ptr [ %i.nb, %.lr.ph.i.i ], [ %i.nk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit56.i.i ] ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.019.060.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2853
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.019.060.i.i)
          to label %bb.di unwind label %.loopexit59.i.i, !noalias !2852

bb.di:                                            ; preds = %bb.dh
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend20escape_yaml_fish_2_0(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.dk unwind label %bb.dj, !noalias !2852

bb.dj:                                            ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit53.i.i, %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit52.i.i, %bb.dk, %bb.di
  %i.nl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #50
          to label %.body.i.i unwind label %bb.do, !noalias !2852

bb.dk:                                            ; preds = %bb.di
  invoke void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 6)
          to label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit52.i.i unwind label %bb.dj, !noalias !2852

_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit52.i.i: ; preds = %bb.dk
  %i.nm = load ptr, ptr %i.kz, align 8, !noalias !2853, !nonnull !10, !noundef !10
  %i.nn = load i64, ptr %i.la, align 8, !noalias !2853, !noundef !10
  invoke void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nm, i64 noundef range(i64 0, -9223372036854775808) %i.nn)
          to label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit53.i.i unwind label %bb.dj, !noalias !2852

_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit53.i.i: ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit52.i.i
  invoke void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 1)
          to label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit54.i.i unwind label %bb.dj, !noalias !2852

_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit54.i.i: ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit53.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.dm unwind label %bb.dl, !noalias !2852

bb.dl:                                            ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit54.i.i
  %i.no = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i.i unwind label %bb.dn, !noalias !2852

bb.dm:                                            ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit54.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit56.i.i unwind label %.loopexit59.i.i, !noalias !2852

bb.dn:                                            ; preds = %bb.dl
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2852
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit56.i.i: ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2853
  %i.nq = icmp eq ptr %i.nk, %i.nj
  br i1 %i.nq, label %.loopexit.i.i, label %bb.dh

bb.do:                                            ; preds = %bb.dj, %.body.i.i
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2852
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit58.i.i: ; preds = %bb.dp, %.loopexit.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.2.i.i, %bb.dp ], [ null, %.loopexit.i.i ] ; 2 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.ds unwind label %.loopexit.i55

bb.dp:                                            ; preds = %bb.dg, %bb.dc, %bb.cx
  %.sroa.0.2.i.i = phi ptr [ %i.ni, %bb.dg ], [ %i.mx, %bb.cx ], [ %i.nf, %bb.dc ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit58.i.i unwind label %bb.dq, !noalias !2852

bb.dq:                                            ; preds = %bb.dp
  %i.ns = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i52 unwind label %bb.dr, !noalias !2852

bb.dr:                                            ; preds = %bb.dq
  %i.nt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !2852
  unreachable

bb.ds:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit58.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2853
  %.not.i.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not.i.i, label %._RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit_crit_edge.i, label %bb.dt, !prof !21

._RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit_crit_edge.i: ; preds = %bb.ds
  %.pre.i = load i64, ptr %i.cb, align 8, !alias.scope !2831
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit.i

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2832
  store ptr %.sroa.0.1.i.i, ptr %i.y, align 8, !noalias !2832
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #49
          to label %bb.dv unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.nu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #50
          to label %.body.i52 unwind label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  unreachable

bb.dw:                                            ; preds = %bb.du
  %i.nv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit.i: ; preds = %._RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit_crit_edge.i, %bb.ct
  %i.nw = phi i64 [ %.pre.i, %._RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8frGy5WneL6_4fish.exit_crit_edge.i ], [ %i.mc, %bb.ct ] ; 3 uses
  %i.nx = add nuw nsw i64 %.sroa.04.0124.i, 1     ; 3 uses
  %i.ny = icmp ult i64 %i.nw, 104811045873349726
  call void @llvm.assume(i1 %i.ny)
  %i.nz = icmp ult i64 %i.nx, %i.nw
  br i1 %i.nz, label %bb.ct, label %._crit_edge.loopexit.i

.loopexit.split-lp108.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.body.i52, %bb.bl, %bb.bi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i42, %.body38.i
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.au, %bb.ar, %.body.i, %.body38.i, %bb.bs, %.body46.i, %bb.dx, %.body105, %.body80
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %.body80 ], [ %.pn, %.body105 ], [ %.pn.pn.i, %.body.i ], [ %i.fy, %bb.ar ], [ %i.ge, %bb.au ], [ %i.oa, %bb.dx ], [ %i.io, %bb.bs ], [ %.pn22.pn.i, %.body38.i ], [ %.pn.i48, %.body46.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by) #50
          to label %common.resume unwind label %bb.fg

bb.dx:                                            ; preds = %bb.fo, %bb.ed, %.thread, %bb.bu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i47, %bb.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i, %bb.v
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dy:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2832
  %.val27.i = load i32, ptr %i.ae, align 8, !range !28, !noalias !2832, !noundef !10
  %.val28.i = load i32, ptr %i.iv, align 4, !noalias !2832
  %i.ob = call noundef i32 @close(i32 noundef %.val27.i) #48 ; 0 uses
  %i.oc = call noundef i32 @close(i32 noundef %.val28.i) #48 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2832
  br label %bb.fh

.body80:                                          ; preds = %bb.fb, %bb.dz, %.body74
  %.pn28 = phi { ptr, i32 } [ %eh.lpad-body75, %.body74 ], [ %i.od, %bb.dz ], [ %i.qx, %bb.fb ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bt) #50
          to label %.body unwind label %bb.fg

bb.dz:                                            ; preds = %bb.fc
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.body80

bb.ea:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit71.i, %bb.bv
  %.sroa.0.0.i53.ph = phi ptr [ %.sroa.0.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit71.i ], [ %i.it, %bb.bv ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr %.sroa.0.0.i53.ph, ptr %i.bt, align 8
  %i.oe = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7history, i64 40) monotonic, align 8
  %.not24 = icmp eq i8 %i.oe, 0
  br i1 %.not24, label %bb.eb, label %bb.ee

bb.eb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2854
  %i.of = ptrtoint ptr %.sroa.0.0.i53.ph to i64   ; 2 uses
  %i.og = and i64 %i.of, 3
  switch i64 %i.og, label %default.unreachable [
    i64 2, label %bb.fe
    i64 3, label %bb.ec
    i64 0, label %bb.fe
    i64 1, label %bb.ed
  ], !prof !27

bb.ec:                                            ; preds = %bb.eb
  %i.oh = icmp ult ptr %.sroa.0.0.i53.ph, inttoptr (i64 188978561024 to ptr)
  %i.oi = and i64 %i.of, 1095216660480
  %i.oj = icmp ne i64 %i.oi, 1095216660480
  call void @llvm.assume(i1 %i.oh)
  call void @llvm.assume(i1 %i.oj)
  br label %bb.fe

bb.ed:                                            ; preds = %bb.eb
  %i.ok = getelementptr i8, ptr %.sroa.0.0.i53.ph, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ok) ]
  %i.ol = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.ok, ptr %i.ol, align 8, !alias.scope !2855, !noalias !2854
  store i8 3, ptr %i.m, align 8, !alias.scope !2855, !noalias !2854
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ol)
          to label %bb.fe unwind label %bb.dx

bb.ee:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store i64 0, ptr %i.bs, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.om, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 8 uses
  store i64 0, ptr %i.on, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7history, i64 24))
          to label %bb.eg unwind label %bb.ef

bb.ef:                                            ; preds = %bb.fa, %bb.ey, %bb.eq, %bb.ek, %bb.ei, %bb.ew, %bb.eo, %bb.en, %bb.el, %bb.eg, %bb.ee
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.body74:                                          ; preds = %bb.es, %bb.ef
  %eh.lpad-body75 = phi { ptr, i32 } [ %i.oo, %bb.ef ], [ %i.qh, %bb.es ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bs) #50
          to label %.body80 unwind label %bb.fg

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.op = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.or = load i64, ptr %i.br, align 8, !range !16, !noundef !10
  %i.os = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ot = load i64, ptr %i.os, align 8, !noundef !10 ; 2 uses
  %i.ou = icmp sgt i64 %i.ot, -1
  call void @llvm.assume(i1 %i.ou)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ot
  store ptr %i.oq, ptr %i.bj, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %i.or, ptr %i.ow, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.oq, ptr %i.ox, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.ov, ptr %i.oy, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bj)
          to label %bb.eh unwind label %bb.ef

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.oz = load i64, ptr %i.on, align 8, !alias.scope !2856, !noundef !10 ; 4 uses
  %i.pa = load i64, ptr %i.bs, align 8, !range !16, !alias.scope !2856, !noundef !10
  %i.pb = icmp eq i64 %i.oz, %i.pa
  br i1 %i.pb, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs) #52
          to label %bb.ej unwind label %bb.ef

bb.ej:                                            ; preds = %bb.eh, %bb.ei
  %i.pc = load ptr, ptr %i.om, align 8, !alias.scope !2856, !nonnull !10, !noundef !10
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.oz
  store i8 58, ptr %i.pd, align 1
  %i.pe = add i64 %i.oz, 1                        ; 3 uses
  store i64 %i.pe, ptr %i.on, align 8, !alias.scope !2856
  %i.pf = load i64, ptr %i.bs, align 8, !range !16, !alias.scope !2857, !noundef !10
  %i.pg = icmp eq i64 %i.pe, %i.pf
  br i1 %i.pg, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs) #52
          to label %bb.el unwind label %bb.ef

bb.el:                                            ; preds = %bb.ej, %bb.ek
  %i.ph = load ptr, ptr %i.om, align 8, !alias.scope !2857, !nonnull !10, !noundef !10
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pe
  store i8 32, ptr %i.pi, align 1
  %i.pj = add i64 %i.oz, 2
  store i64 %i.pj, ptr %i.on, align 8, !alias.scope !2857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.em unwind label %bb.ef

bb.em:                                            ; preds = %bb.el
  %i.pk = load i64, ptr %i.bi, align 8, !range !12, !noundef !10
  %i.pl = trunc nuw i64 %i.pk to i1
  %i.pm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  br i1 %i.pl, label %bb.en, label %bb.eo, !prof !13

bb.en:                                            ; preds = %bb.em
  %i.pn = load i64, ptr %i.pm, align 8, !range !22, !noundef !10
  %i.po = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.pp = load i64, ptr %i.po, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.pn, i64 %i.pp) #49
          to label %bb.ff unwind label %bb.ef

bb.eo:                                            ; preds = %bb.em
  %i.pq = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.ps = load i64, ptr %i.pm, align 8, !range !16, !noundef !10 ; 2 uses
  %i.pt = icmp samesign ugt i64 %i.ps, 27
  call void @llvm.assume(i1 %i.pt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.pr, ptr noundef nonnull align 1 dereferenceable(28) @253, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 28
  store ptr %i.pr, ptr %i.bh, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.ps, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.pr, ptr %i.pw, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store ptr %i.pu, ptr %i.px, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bh)
          to label %bb.ep unwind label %bb.ef

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.py = load i64, ptr %i.on, align 8, !alias.scope !2858, !noundef !10 ; 3 uses
  %i.pz = load i64, ptr %i.bs, align 8, !range !16, !alias.scope !2858, !noundef !10
  %i.qa = icmp eq i64 %i.py, %i.pz
  br i1 %i.qa, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs) #52
          to label %bb.er unwind label %bb.ef

bb.er:                                            ; preds = %bb.ep, %bb.eq
  %i.qb = load ptr, ptr %i.om, align 8, !alias.scope !2858, !nonnull !10, !noundef !10
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.py
  store i8 32, ptr %i.qc, align 1
  %i.qd = add i64 %i.py, 1
  store i64 %i.qd, ptr %i.on, align 8, !alias.scope !2858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2859
  store i64 0, ptr %i.l, align 8, !noalias !2859
end_hunk_4
begin_hunk_5_@_RNvNtCs8frGy5WneL6_4fish4flog16set_flog_file_fd:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs8frGy5WneL6_4fish4flog18apply_one_wildcard(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvNtCs8frGy5WneL6_4fish10parse_util18unescape_wildcards(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories14all_categories(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.p, %bb.d, %bb.b, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn13 = phi { ptr, i32 } [ %i.s, %bb.d ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.ak, %bb.n ], [ %i.i, %bb.b ], [ %i.al, %bb.p ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #50
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %._crit_edge, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.l = load i64, ptr %i.g, align 8, !range !16, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !10 ; 3 uses
  %i.o = icmp ult i64 %i.n, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %.idx = shl nuw nsw i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.k, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = zext i1 %2 to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %i.t = phi ptr [ %i.k, %.lr.ph ], [ %i.ap, %bb.t ] ; 2 uses
  %.sroa.0.027 = phi i1 [ false, %.lr.ph ], [ %.sroa.0.1, %bb.t ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3611)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3611
  %i.v = load ptr, ptr %i.t, align 8, !noalias !3611, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !10, !align !31, !noundef !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noundef !10
  %i.aa = invoke noundef zeroext i1 @_RINvNtCs8frGy5WneL6_4fish8wildcard14wildcard_matchRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrRNtNtBR_9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.x, i64 noundef %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.d

._crit_edge:                                      ; preds = %bb.t, %bb.c
  %.sroa.0.0.lcssa = phi i1 [ false, %bb.c ], [ %.sroa.0.1, %bb.t ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEEB1w_.exit17 unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEEB1w_.exit17: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.sroa.0.0.lcssa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEEB1w_.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.56.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 35, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef 1)
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit23, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtNtCs8frGy5WneL6_4fish4flog10categories8CategoryEEB1w_.exit17
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %.pn13, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.j:                                             ; preds = %bb.l, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !3612)
  %i.ae = load i8, ptr %i.c, align 8, !range !15, !alias.scope !3612, !noundef !10
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %.noexc19.preheader, !prof !13

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3613
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !37, !alias.scope !3612, !noundef !10
  store i8 %i.ah, ptr %i.a, align 1, !noalias !3613
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314) #53
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.l
  unreachable

.noexc19.preheader:                               ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit20 unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.j, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ad, %bb.j ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #50
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.noexc19.preheader
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit20: ; preds = %.noexc19.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, i32 noundef 2)
          to label %bb.o unwind label %bb.n       ; 0 uses

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit20
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #50
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit20
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit23 unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit23: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.d, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.r:                                             ; preds = %bb.e
  br i1 %i.aa, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store atomic i8 %i.r, ptr %i.an monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0.1 = phi i1 [ %.sroa.0.027, %bb.r ], [ true, %bb.s ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3614, !nonnull !10, !noundef !10
  %i.ap = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3614, !nonnull !10, !noundef !10 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ao
  br i1 %i.aq, label %._crit_edge, label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish4flog22log_extra_to_flog_file(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4
  %i.b = tail call { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB4_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i32 noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish4flog35activate_flog_categories_by_pattern(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.d = load i64, ptr %i.a, align 8, !range !12, !noundef !10
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !22, !noundef !10 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #49
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10 ; 15 uses
  %i.k = icmp ule i64 %1, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge15.thread, label %.lr.ph.preheader

._crit_edge15.thread:                             ; preds = %bb.c
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.48.0..sroa_idx19, align 8
  %.sroa.69.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %.sroa.69.0..sroa_idx20, align 8
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.l = shl i64 %1, 2                            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr nonnull align 4 %0, i64 %i.l, i1 false)
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %.sroa.69.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = add i64 %i.l, -4                         ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 28
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %i.j, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue42, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue42 ] ; 2 uses
  %i.s = shl i64 %index, 2                        ; 8 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep21 = getelementptr i8, ptr %i.t, i64 4
  %i.u = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep22 = getelementptr i8, ptr %i.u, i64 8
  %i.v = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep23 = getelementptr i8, ptr %i.v, i64 12
  %i.w = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep24 = getelementptr i8, ptr %i.w, i64 16
  %i.x = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep25 = getelementptr i8, ptr %i.x, i64 20
  %i.y = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep26 = getelementptr i8, ptr %i.y, i64 24
  %i.z = getelementptr i8, ptr %i.j, i64 %i.s
  %next.gep27 = getelementptr i8, ptr %i.z, i64 28
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load28 = load <4 x i32>, ptr %i.aa, align 4
  %i.ab = icmp eq <4 x i32> %wide.load, splat (i32 95) ; 4 uses
  %i.ac = icmp eq <4 x i32> %wide.load28, splat (i32 95) ; 4 uses
  %i.ad = extractelement <4 x i1> %i.ab, i64 0
  br i1 %i.ad, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 45, ptr %next.gep, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ae = extractelement <4 x i1> %i.ab, i64 1
  br i1 %i.ae, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue
  store i32 45, ptr %next.gep21, align 4
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue
  %i.af = extractelement <4 x i1> %i.ab, i64 2
  br i1 %i.af, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  store i32 45, ptr %next.gep22, align 4
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.ag = extractelement <4 x i1> %i.ab, i64 3
  br i1 %i.ag, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  store i32 45, ptr %next.gep23, align 4
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.ah = extractelement <4 x i1> %i.ac, i64 0
  br i1 %i.ah, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  store i32 45, ptr %next.gep24, align 4
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.ai = extractelement <4 x i1> %i.ac, i64 1
  br i1 %i.ai, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  store i32 45, ptr %next.gep25, align 4
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %i.aj = extractelement <4 x i1> %i.ac, i64 2
  br i1 %i.aj, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  store i32 45, ptr %next.gep26, align 4
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.ak = extractelement <4 x i1> %i.ac, i64 3
  br i1 %i.ak, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  store i32 45, ptr %next.gep27, align 4
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !3615

middle.block:                                     ; preds = %pred.store.continue42
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.014.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %bb.e
  %.sroa.0.014 = phi ptr [ %i.am, %bb.e ], [ %.sroa.0.014.ph, %.lr.ph.preheader43 ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 4 ; 2 uses
  %i.an = load i32, ptr %.sroa.0.014, align 4, !range !24, !noundef !10
  %i.ao = icmp eq i32 %i.an, 95
  br i1 %i.ao, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %middle.block, %._crit_edge15.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.j, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 44, ptr %.sroa.33.0..sroa_idx, align 8
end_hunk_5
begin_hunk_6_@_RNvXs3_NtCs8frGy5WneL6_4fish6signaljINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9RawSignalE4from:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3976
  store i8 3, ptr %i.a, align 1, !noalias !3976
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @174, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @626) #53, !noalias !3976
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 48                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !3979
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !3979
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !3979
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_3KeyE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4000)
  %i.h = icmp eq i32 %.sroa.0.0.extract.trunc, 45
  br i1 %i.h, label %.loopexit.i, label %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader

_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader: ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4002)
  switch i32 %.sroa.0.0.extract.trunc, label %bb.a [
    i32 44, label %.loopexit.i
    i32 62720, label %.loopexit.i.fold.split
    i32 62721, label %.loopexit.i.fold.split42.a
    i32 62722, label %.loopexit.i.fold.split43.a
    i32 62723, label %.loopexit.i.fold.split44.a
    i32 62724, label %.loopexit.i.fold.split45.a
    i32 62725, label %.loopexit.i.fold.split46.a
    i32 62726, label %.loopexit.i.fold.split47.a
    i32 62727, label %.loopexit.i.fold.split48.a
    i32 62728, label %.loopexit.i.fold.split49.a
    i32 62729, label %.loopexit.i.fold.split50.a
    i32 62730, label %.loopexit.i.fold.split51.a
    i32 62731, label %.loopexit.i.fold.split52.a
    i32 62732, label %.loopexit.i.fold.split53.a
    i32 62733, label %.loopexit.i.fold.split54.a
    i32 62734, label %.loopexit.i.fold.split55.a
    i32 62735, label %.loopexit.i.fold.split56.a
    i32 62736, label %.loopexit.i.fold.split57
  ]

bb.a:                                             ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  store i64 -1, ptr %i.g, align 8, !alias.scope !4000
  %i.i = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish3key12function_key(i8 noundef 1)
          to label %.noexc.i unwind label %bb.m, !noalias !4003

.loopexit.i.fold.split:                           ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split42.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split43.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split44.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split45.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split46.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split47.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split48.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split49.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split50.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split51.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split52.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split53.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split54.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split55.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split56.a:                       ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i.fold.split57:                         ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader, %.loopexit.i.fold.split57, %.loopexit.i.fold.split56.a, %.loopexit.i.fold.split55.a, %.loopexit.i.fold.split54.a, %.loopexit.i.fold.split53.a, %.loopexit.i.fold.split52.a, %.loopexit.i.fold.split51.a, %.loopexit.i.fold.split50.a, %.loopexit.i.fold.split49.a, %.loopexit.i.fold.split48.a, %.loopexit.i.fold.split47.a, %.loopexit.i.fold.split46.a, %.loopexit.i.fold.split45.a, %.loopexit.i.fold.split44.a, %.loopexit.i.fold.split43.a, %.loopexit.i.fold.split42.a, %.loopexit.i.fold.split, %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i
  %.lcssa10.i = phi ptr [ @651, %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.lr.ph.i ], [ getelementptr inbounds nuw (i8, ptr @651, i64 24), %_RNCNvXs4_NtCs8frGy5WneL6_4fish3keyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtB7_3KeyE4from0B9_.exit.i.preheader ], [ getelementptr inbounds nuw (i8, ptr @651, i64 408), %.loopexit.i.fold.split56.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 48), %.loopexit.i.fold.split ], [ getelementptr inbounds nuw (i8, ptr @651, i64 72), %.loopexit.i.fold.split42.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 96), %.loopexit.i.fold.split43.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 120), %.loopexit.i.fold.split44.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 144), %.loopexit.i.fold.split45.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 168), %.loopexit.i.fold.split46.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 192), %.loopexit.i.fold.split47.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 216), %.loopexit.i.fold.split48.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 240), %.loopexit.i.fold.split49.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 264), %.loopexit.i.fold.split50.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 288), %.loopexit.i.fold.split51.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 312), %.loopexit.i.fold.split52.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 336), %.loopexit.i.fold.split53.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 360), %.loopexit.i.fold.split54.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 384), %.loopexit.i.fold.split55.a ], [ getelementptr inbounds nuw (i8, ptr @651, i64 432), %.loopexit.i.fold.split57 ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa10.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4002, !noalias !4004, !noundef !10 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.lcssa10.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4002, !noalias !4004, !nonnull !10, !align !31, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4005
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !4005
  %i.n = load i64, ptr %i.e, align 8, !range !12, !noalias !4005, !noundef !10
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !22, !noalias !4005, !noundef !10 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %.loopexit.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !4005
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #49, !noalias !4005
  unreachable

bb.c:                                             ; preds = %.loopexit.i
  %i.t = load ptr, ptr %i.r, align 8, !noalias !4005, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = icmp ule i64 %i.k, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4005
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull readonly align 4 %i.m, i64 %i.v, i1 false), !noalias !4006
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread: ; preds = %bb.c, %bb.d
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !4007
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !alias.scope !4003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %bb.o

.noexc.i:                                         ; preds = %bb.a
  %i.w = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish3key12function_key(i8 noundef 12)
          to label %.noexc2.i unwind label %bb.m, !noalias !4003

.noexc2.i:                                        ; preds = %.noexc.i
  %.not.i.i.i12 = icmp samesign ule i32 %i.i, %.sroa.0.0.extract.trunc
  %i.x = icmp samesign uge i32 %i.w, %.sroa.0.0.extract.trunc
  %or.cond.i.i = select i1 %.not.i.i.i12, i1 %i.x, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread29

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread29: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %bb.p

bb.e:                                             ; preds = %.noexc2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4010
  store i64 0, ptr %i.d, align 8, !noalias !4010
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !4010
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !4010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4010
  %i.y = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish3key12function_key(i8 noundef 1)
          to label %bb.f unwind label %.loopexit.split-lp2.i.i.i, !noalias !4010 ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.j, %.loopexit.split-lp2.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp4.i.i.i, %.loopexit.split-lp2.i.i.i ], [ %i.ad, %bb.j ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #50
          to label %.body.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4010

.loopexit.split-lp2.i.i.i:                        ; preds = %.noexc7.i.i.i.preheader, %bb.g, %bb.e
  %lpad.loopexit.split-lp4.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = icmp samesign ugt i32 %i.y, %.sroa.0.0.extract.trunc
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #49
          to label %bb.h unwind label %.loopexit.split-lp2.i.i.i, !noalias !4010

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.aa = add nuw nsw i32 %.sroa.0.0.extract.trunc, 1
  %i.ab = sub nuw nsw i32 %i.aa, %i.y
  %i.ac = zext nneg i32 %i.ab to i64
  store i64 4, ptr %i.b, align 8, !noalias !4010
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4010
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 3, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef 1)
          to label %bb.k unwind label %bb.j, !noalias !4010

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4010

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4011)
  %i.ae = load i8, ptr %i.c, align 8, !range !15, !alias.scope !4011, !noalias !4010, !noundef !10
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %.noexc7.i.i.i.preheader, !prof !13

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4012
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !37, !alias.scope !4011, !noalias !4010, !noundef !10
  store i8 %i.ah, ptr %i.a, align 1, !noalias !4012
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #53
          to label %.noexc.i.i.i unwind label %bb.j, !noalias !4010

.noexc.i.i.i:                                     ; preds = %bb.l
  unreachable

.noexc7.i.i.i.preheader:                          ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit unwind label %.loopexit.split-lp2.i.i.i, !noalias !4010

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !4010
  unreachable

bb.m:                                             ; preds = %.noexc.i, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %.pn.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #50
          to label %common.resume unwind label %bb.n, !noalias !4008

common.resume:                                    ; preds = %bb.t, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.an, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %.body.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !4008
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit: ; preds = %.noexc7.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4010
  %.sroa.018.0.copyload20 = load i64, ptr %i.d, align 8, !noalias !4009 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !4009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not = icmp eq i64 %.sroa.018.0.copyload20, -1
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit
  %.sroa.018.128 = phi i64 [ %i.q, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread ], [ %.sroa.018.0.copyload20, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit ]
  store i64 %.sroa.018.128, ptr %i.f, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit.thread29, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7or_elseNCNvXs4_NtCs8frGy5WneL6_4fish3keyBI_INtNtB5_7convert4FromNtB1Q_3KeyE4froms_0EB1S_.exit
  %i.ak = and i64 %1, 72340172821233664
  %.not34 = icmp eq i64 %i.ak, 0
  call void @_RNvNtCs8frGy5WneL6_4fish3key14char_to_symbol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i32 noundef %.sroa.0.0.extract.trunc, i1 noundef zeroext %.not34)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.al = and i64 %1, 281474976710656
  %.not35 = icmp eq i64 %i.al, 0
  br i1 %.not35, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.am = and i64 %1, 1099511627776
  %.not36 = icmp eq i64 %i.am, 0
  br i1 %.not36, label %bb.u, label %bb.v

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @652, i64 noundef 6)
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.s
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #50
          to label %common.resume unwind label %bb.aa

bb.u:                                             ; preds = %bb.v, %bb.r
  %i.ao = and i64 %1, 4294967296
  %.not37 = icmp eq i64 %i.ao, 0
  br i1 %.not37, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.r
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @653, i64 noundef 4)
          to label %bb.u unwind label %bb.t

bb.w:                                             ; preds = %bb.x, %bb.u
  %i.ap = and i64 %1, 72057594037927936
  %.not38 = icmp eq i64 %i.ap, 0
  br i1 %.not38, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @654, i64 noundef 5)
          to label %bb.w unwind label %bb.t

bb.y:                                             ; preds = %bb.z, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.z:                                             ; preds = %bb.w
  invoke void @_RNvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32String12insert_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @655, i64 noundef 6)
          to label %bb.y unwind label %bb.t

bb.aa:                                            ; preds = %bb.t
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs8frGy5WneL6_4fish5input7bindingINtB5_16EventQueuePeekerNtNtNtB9_6reader6reader6ReaderENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !10
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = select i1 %i.d, i1 %i.g, i1 false, !prof !30
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !align !14, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEBL_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  call void @_RINvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB9_5input5input16InputEventQueuer12insert_frontINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtBP_9CharEventEEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @656, ptr noundef nonnull inttoptr (i64 109 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @657) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCs1xwejQucwHj_5alloc5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8truncateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 5 uses
  %i.d = icmp ult i64 %i.c, 384307168202282326
  tail call void @llvm.assume(i1 %i.d)
  %.not.i = icmp samesign ugt i64 %i.c, %1
  br i1 %.not.i, label %bb.b, label %.preheader.i, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @157, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @659) #53, !noalias !4022
  unreachable

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10
  %.not.i1 = icmp eq i64 %i.c, 0
  br i1 %.not.i1, label %_RNvXs3_NtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_13CloneFromSpecBx_E15spec_clone_fromCs8frGy5WneL6_4fish.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i
  %.sroa.0.02.i = phi i64 [ %i.l, %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.02.i ; 5 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.02.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4023
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !4024
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.lr.ph.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4025
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4023
  %i.l = add nuw nsw i64 %.sroa.0.02.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.l, %i.c
  br i1 %exitcond.not.i, label %_RNvXs3_NtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_13CloneFromSpecBx_E15spec_clone_fromCs8frGy5WneL6_4fish.exit, label %.lr.ph.i

_RNvXs3_NtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_13CloneFromSpecBx_E15spec_clone_fromCs8frGy5WneL6_4fish.exit: ; preds = %_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtCs3oUPovFnLWP_4core5clone5Clone10clone_fromCs8frGy5WneL6_4fish.exit.i, %.preheader.i
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
end_hunk_6
begin_hunk_7_@_RNvXs_NtNtCs8frGy5WneL6_4fish7history7historyNtB4_12TimeProfilerNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop:bb.a
  %i.bs = trunc i128 %i.aj to i64
  %i.bt = trunc i128 %i.ao to i64
  %i.bu = and i64 %i.bt, 4294967295
  store i64 0, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.br, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 4, ptr %i.bv, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %i.bs, ptr %.sroa.42.0..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i64 4, ptr %i.bw, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i64 %i.bu, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @681, i64 noundef 14, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef 3)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.p) #50
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !4075)
  %i.by = load i8, ptr %i.q, align 8, !range !15, !alias.scope !4075, !noundef !10
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %.preheader.preheader, !prof !13

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4076
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !range !37, !alias.scope !4075, !noundef !10
  store i8 %i.cb, ptr %i.c, align 1, !noalias !4076
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @682) #53
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %bb.q
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cc)
          to label %.preheader.1 unwind label %bb.s

.preheader.1:                                     ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cd)
          to label %.preheader.2 unwind label %bb.s

.preheader.2:                                     ; preds = %.preheader.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit unwind label %bb.u

.preheader.preheader:                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p)
          to label %.preheader unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.ce = add nuw nsw i64 %.sroa.0.1.i.i63, 1     ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 3
  br i1 %i.cf, label %.body, label %.lr.ph

bb.s:                                             ; preds = %.preheader.1, %.preheader, %.preheader.preheader
  %i.cg = phi i1 [ false, %.preheader.preheader ], [ false, %.preheader ], [ true, %.preheader.1 ]
  %.lcssa = phi i64 [ 1, %.preheader.preheader ], [ 2, %.preheader ], [ 3, %.preheader.1 ]
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cg, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.r
  %.sroa.0.1.i.i63 = phi i64 [ %i.ce, %bb.r ], [ %.lcssa, %bb.s ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.0.1.i.i63
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ci) #50
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.r, %bb.s, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.o ], [ %i.ch, %bb.s ], [ %i.ch, %bb.r ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #50
          to label %.body33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.preheader.2, %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #50
          to label %.body33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit: ; preds = %.preheader.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.cn = load i64, ptr %i.t, align 8, !range !16, !noundef !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noundef !10 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp
  store ptr %i.cm, ptr %i.g, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.cn, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.cm, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.cr, ptr %i.cu, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.v unwind label %bb.u

bb.v:                                             ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body33 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cx = load i64, ptr %i.as, align 8, !alias.scope !4077, !noundef !10 ; 3 uses
  %i.cy = load i64, ptr %i.v, align 8, !range !16, !alias.scope !4077, !noundef !10
  %i.cz = icmp eq i64 %i.cx, %i.cy
  br i1 %i.cz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #52
          to label %bb.z unwind label %bb.h

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.y
  %i.da = load ptr, ptr %i.ar, align 8, !alias.scope !4077, !nonnull !10, !noundef !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cx
  store i8 10, ptr %i.db, align 1
  %i.dc = add i64 %i.cx, 1                        ; 2 uses
  store i64 %i.dc, ptr %i.as, align 8, !alias.scope !4077
  %i.dd = load ptr, ptr %i.ar, align 8, !nonnull !10, !noundef !10
  %i.de = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4, !noalias !4078 ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4078
  invoke void @_RNvCs3pTQYeTDvAj_9fish_util11write_to_fd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef range(i64 0, -9223372036854775808) %i.dc, i32 noundef %i.de)
          to label %.noexc38 unwind label %bb.h

.noexc38:                                         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4078
  br label %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit

_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit:    ; preds = %.noexc38, %bb.z
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.ax, %.body33, %.body50, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %.pn19, %.body33 ], [ %i.dg, %bb.ab ], [ %.pn24, %.body50 ], [ %i.fl, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.f

bb.ad:                                            ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit59, %bb.f
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.aq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body50, %bb.u, %.body, %bb.o, %.body33
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.ae:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  store i64 0, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories15profile_history, i64 24))
          to label %bb.ag unwind label %bb.af

.body50:                                          ; preds = %bb.as, %bb.af, %bb.aq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn24 = phi { ptr, i32 } [ %.pn22, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.ep, %bb.aq ], [ %i.dk, %bb.af ], [ %i.fa, %bb.as ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #50
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.aw, %bb.au, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i49, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body50

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.dn = load i64, ptr %i.n, align 8, !range !16, !noundef !10
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !noundef !10 ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dp
  store ptr %i.dm, ptr %i.f, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.dn, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.dm, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.dr, ptr %i.du, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.ah unwind label %bb.af

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.dv = load i64, ptr %i.dj, align 8, !alias.scope !4079, !noundef !10 ; 4 uses
  %i.dw = load i64, ptr %i.o, align 8, !range !16, !alias.scope !4079, !noundef !10
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #52
          to label %bb.aj unwind label %bb.af

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.dy = load ptr, ptr %i.di, align 8, !alias.scope !4079, !nonnull !10, !noundef !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  store i8 58, ptr %i.dz, align 1
  %i.ea = add i64 %i.dv, 1                        ; 3 uses
  store i64 %i.ea, ptr %i.dj, align 8, !alias.scope !4079
  %i.eb = load i64, ptr %i.o, align 8, !range !16, !alias.scope !4080, !noundef !10
  %i.ec = icmp eq i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #52
          to label %bb.al unwind label %bb.af

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.ed = load ptr, ptr %i.di, align 8, !alias.scope !4080, !nonnull !10, !noundef !10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ea
  store i8 32, ptr %i.ee, align 1
  %i.ef = add i64 %i.dv, 2
  store i64 %i.ef, ptr %i.dj, align 8, !alias.scope !4080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.eg = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !10
  store i64 0, ptr %i.i, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.eg, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ei, ptr %.sroa.59.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @683, i64 noundef 10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @47, ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef 1)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !4081)
  %i.ek = load i8, ptr %i.j, align 8, !range !15, !alias.scope !4081, !noundef !10
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ao, label %.noexc44.preheader, !prof !13

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4082
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.en = load i8, ptr %i.em, align 1, !range !37, !alias.scope !4081, !noundef !10
  store i8 %i.en, ptr %i.d, align 1, !noalias !4082
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @684) #53
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.ao
  unreachable

.noexc44.preheader:                               ; preds = %bb.an
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45 unwind label %bb.ap

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.am, %bb.ap
  %.pn22 = phi { ptr, i32 } [ %i.eo, %bb.ap ], [ %i.ej, %bb.am ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #50
          to label %.body50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %.noexc44.preheader
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45: ; preds = %.noexc44.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit47 unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45, %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit47
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #50
          to label %.body50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit47: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.es = load i64, ptr %i.m, align 8, !range !16, !noundef !10
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !noundef !10 ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, -1
  call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  store ptr %i.er, ptr %i.e, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.es, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.er, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ew, ptr %i.ez, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.ar unwind label %bb.aq

bb.ar:                                            ; preds = %_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i49 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body50 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i49: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit53 unwind label %bb.af

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit53: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.fc = load i64, ptr %i.dj, align 8, !alias.scope !4083, !noundef !10 ; 3 uses
  %i.fd = load i64, ptr %i.o, align 8, !range !16, !alias.scope !4083, !noundef !10
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit53
end_hunk_7
begin_hunk_8_@llvm.umin.i64
!2633 = !{!2562}
!2634 = !{!2561, !2562}
!2635 = !{!2568, !2566, !2564}
!2636 = !{!2570}
!2637 = !{!2572}
!2638 = !{!2572, !2570}
!2639 = !{!2574}
!2640 = !{!2576}
!2641 = !{!2579, !2578, !2576}
!2642 = !{!2581}
!2643 = !{!2583}
!2644 = !{!2584}
!2645 = !{!2583, !2584}
!2646 = !{!2586}
!2647 = !{!2586, !2584}
!2648 = !{!2588}
!2649 = !{!2588, !2586, !2584}
!2650 = !{!2588, !2586, !2583}
!2651 = !{!2590, !2584}
!2652 = !{!2590}
!2653 = !{!2592}
!2654 = !{!2592, !2590, !2584}
!2655 = !{!2592, !2590, !2583}
!2656 = !{!2594, !2584}
!2657 = !{!2594}
!2658 = !{!2596}
!2659 = !{!2596, !2594, !2584}
!2660 = !{!2596, !2594, !2583}
!2661 = !{!2598}
!2662 = !{!2598, !2584}
!2663 = !{!2600}
!2664 = !{!2600, !2598, !2584}
!2665 = !{!2600, !2598, !2583}
!2666 = !{!2602, !2584}
!2667 = !{!2602}
!2668 = !{!2604}
!2669 = !{!2604, !2602, !2584}
!2670 = !{!2604, !2602, !2583}
!2671 = !{!2606, !2584}
!2672 = !{!2606}
!2673 = !{!2608}
!2674 = !{!2608, !2606, !2584}
!2675 = !{!2608, !2606, !2583}
!2676 = !{!2610}
!2677 = !{!2613}
!2678 = !{!2614}
!2679 = !{!2613, !2614}
!2680 = distinct !{!2680, i1 true, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem5merge"}
!2681 = distinct !{!2681, !2680, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem5merge: argument 0"}
!2682 = distinct !{!2682, !2680, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem5merge: argument 1"}
!2683 = distinct !{!2683, !2680, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem5merge: argument 2"}
!2684 = distinct !{!2684, i1 true, !"_RNvMs1_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_10Timestamps17update_last_added"}
!2685 = distinct !{!2685, !2684, !"_RNvMs1_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_10Timestamps17update_last_added: argument 0"}
!2686 = distinct !{!2686, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE8push_mutBL_"}
!2687 = distinct !{!2687, !2686, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE8push_mutBL_: argument 0"}
!2688 = distinct !{!2688, !2686, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE8push_mutBL_: argument 1"}
!2689 = !{!2681}
!2690 = !{!2682}
!2691 = !{!2683}
!2692 = !{!2681, !2682, !2683}
!2693 = !{!2685, !2682}
!2694 = !{!2681, !2682}
!2695 = !{!2681, !2683}
!2696 = !{!2687}
!2697 = !{!2688}
!2698 = distinct !{!2698, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl17compact_new_items"}
!2699 = distinct !{!2699, !2698, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl17compact_new_items: argument 0"}
!2700 = distinct !{!2700, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state"}
!2701 = distinct !{!2701, !2700, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state: argument 0"}
!2702 = distinct !{!2702, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl25save_internal_via_rewrite"}
!2703 = distinct !{!2703, !2702, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl25save_internal_via_rewrite: argument 0"}
!2704 = distinct !{!2704, !2702, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl25save_internal_via_rewrite: argument 1"}
!2705 = distinct !{!2705, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2706 = distinct !{!2706, !2705, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2707 = distinct !{!2707, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2708 = distinct !{!2708, !2707, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2709 = distinct !{!2709, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!2710 = distinct !{!2710, !2709, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!2711 = distinct !{!2711, !2709, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!2712 = distinct !{!2712, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2713 = distinct !{!2713, !2712, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2714 = distinct !{!2714, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!2715 = distinct !{!2715, !2714, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!2716 = distinct !{!2716, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state"}
!2717 = distinct !{!2717, !2716, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state: argument 0"}
!2718 = distinct !{!2718, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl27save_internal_via_appending"}
!2719 = distinct !{!2719, !2718, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl27save_internal_via_appending: argument 0"}
!2720 = distinct !{!2720, !2718, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl27save_internal_via_appending: argument 1"}
!2721 = distinct !{!2721, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2722 = distinct !{!2722, !2721, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2723 = distinct !{!2723, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2724 = distinct !{!2724, !2723, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2725 = distinct !{!2725, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!2726 = distinct !{!2726, !2725, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!2727 = distinct !{!2727, !2725, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!2728 = distinct !{!2728, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2729 = distinct !{!2729, !2728, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2730 = distinct !{!2730, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!2731 = distinct !{!2731, !2730, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!2732 = distinct !{!2732, i1 true, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file"}
!2733 = distinct !{!2733, !2732, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file: argument 1"}
!2734 = distinct !{!2734, !2732, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file: argument 0"}
!2735 = distinct !{!2735, i1 true, !"_RNvYNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileId7from_mdINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std2fs8MetadataEE9call_onceB9_"}
!2736 = distinct !{!2736, !2735, !"_RNvYNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileId7from_mdINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std2fs8MetadataEE9call_onceB9_: argument 1"}
!2737 = distinct !{!2737, i1 true, !"_RNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB2_6FileId7from_md"}
!2738 = distinct !{!2738, !2737, !"_RNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB2_6FileId7from_md: argument 1"}
!2739 = distinct !{!2739, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_"}
!2740 = distinct !{!2740, !2739, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_: argument 1"}
!2741 = distinct !{!2741, !2739, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_: argument 0"}
!2742 = distinct !{!2742, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish"}
!2743 = distinct !{!2743, !2742, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish: argument 0"}
!2744 = distinct !{!2744, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!2745 = distinct !{!2745, !2744, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!2746 = distinct !{!2746, i1 true, !"_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq"}
!2747 = distinct !{!2747, !2746, !"_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq: argument 1"}
!2748 = distinct !{!2748, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state"}
!2749 = distinct !{!2749, !2748, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state: argument 0"}
!2750 = distinct !{!2750, i1 true, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file"}
!2751 = distinct !{!2751, !2750, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file: argument 1"}
!2752 = distinct !{!2752, !2750, !"_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file: argument 0"}
!2753 = distinct !{!2753, i1 true, !"_RNvYNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileId7from_mdINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std2fs8MetadataEE9call_onceB9_"}
!2754 = distinct !{!2754, !2753, !"_RNvYNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileId7from_mdINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std2fs8MetadataEE9call_onceB9_: argument 1"}
!2755 = distinct !{!2755, i1 true, !"_RNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB2_6FileId7from_md"}
!2756 = distinct !{!2756, !2755, !"_RNvMNtNtCs8frGy5WneL6_4fish5wutil6fileidNtB2_6FileId7from_md: argument 1"}
!2757 = distinct !{!2757, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_"}
!2758 = distinct !{!2758, !2757, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_: argument 1"}
!2759 = distinct !{!2759, !2757, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE6map_orNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdNvMB1Q_B1O_7from_mdEB1U_: argument 0"}
!2760 = distinct !{!2760, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish"}
!2761 = distinct !{!2761, !2760, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish: argument 0"}
!2762 = distinct !{!2762, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!2763 = distinct !{!2763, !2762, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!2764 = distinct !{!2764, i1 true, !"_RINvMs8_NtNtCs8frGy5WneL6_4fish7history4fileNtNtB8_7history11HistoryItem8write_toINtNtCs1xwejQucwHj_5alloc3vec3VechEEBa_"}
!2765 = distinct !{!2765, !2764, !"_RINvMs8_NtNtCs8frGy5WneL6_4fish7history4fileNtNtB8_7history11HistoryItem8write_toINtNtCs1xwejQucwHj_5alloc3vec3VechEEBa_: argument 0"}
!2766 = distinct !{!2766, !2764, !"_RINvMs8_NtNtCs8frGy5WneL6_4fish7history4fileNtNtB8_7history11HistoryItem8write_toINtNtCs1xwejQucwHj_5alloc3vec3VechEEBa_: argument 1"}
!2767 = distinct !{!2767, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish"}
!2768 = distinct !{!2768, !2767, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish: argument 0"}
!2769 = distinct !{!2769, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!2770 = distinct !{!2770, !2769, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!2771 = distinct !{!2771, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2772 = distinct !{!2772, !2771, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2773 = distinct !{!2773, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2774 = distinct !{!2774, !2773, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2775 = distinct !{!2775, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2776 = distinct !{!2776, !2775, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2777 = distinct !{!2777, i1 true, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish"}
!2778 = distinct !{!2778, !2777, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 1"}
!2779 = distinct !{!2779, !2777, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 0"}
!2780 = distinct !{!2780, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2781 = distinct !{!2781, !2780, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2782 = distinct !{!2782, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!2783 = distinct !{!2783, !2782, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!2784 = distinct !{!2784, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish"}
!2785 = distinct !{!2785, !2784, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish: argument 0"}
!2786 = distinct !{!2786, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!2787 = distinct !{!2787, !2786, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!2788 = distinct !{!2788, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2789 = distinct !{!2789, !2788, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2790 = distinct !{!2790, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2791 = distinct !{!2791, !2790, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2792 = distinct !{!2792, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2793 = distinct !{!2793, !2792, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2794 = distinct !{!2794, i1 true, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish"}
!2795 = distinct !{!2795, !2794, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 1"}
!2796 = distinct !{!2796, !2794, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 0"}
!2797 = distinct !{!2797, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2798 = distinct !{!2798, !2797, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2799 = distinct !{!2799, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!2800 = distinct !{!2800, !2799, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!2801 = distinct !{!2801, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish"}
!2802 = distinct !{!2802, !2801, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish: argument 0"}
!2803 = distinct !{!2803, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!2804 = distinct !{!2804, !2803, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!2805 = distinct !{!2805, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2806 = distinct !{!2806, !2805, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2807 = distinct !{!2807, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2808 = distinct !{!2808, !2807, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2809 = distinct !{!2809, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2810 = distinct !{!2810, !2809, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2811 = distinct !{!2811, i1 true, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish"}
!2812 = distinct !{!2812, !2811, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 1"}
!2813 = distinct !{!2813, !2811, !"_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_12SpecToString14spec_to_stringCs8frGy5WneL6_4fish: argument 0"}
!2814 = distinct !{!2814, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!2815 = distinct !{!2815, !2814, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2816 = distinct !{!2816, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!2817 = distinct !{!2817, !2816, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!2818 = !{!2699}
!2819 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!2820 = !{!2701}
!2821 = !{!2703}
!2822 = !{!2703, !2704}
!2823 = !{!2706}
!2824 = !{!2708}
!2825 = !{!2710}
!2826 = !{!2710, !2711, !2703, !2704}
!2827 = !{!2713}
!2828 = !{!2715, !2703, !2704}
!2829 = !{!2704}
!2830 = !{!2717, !2703}
!2831 = !{!2719}
!2832 = !{!2719, !2720}
!2833 = !{!"branch_weights", !"expected", i32 2145766191, i32 1717457}
!2834 = !{!2722}
!2835 = !{!2724}
!2836 = !{!2726}
!2837 = !{!2726, !2727, !2719, !2720}
!2838 = !{!2729}
!2839 = !{!2731, !2719, !2720}
!2840 = !{!2734, !2733, !2719, !2720}
!2841 = !{!2738, !2736}
!2842 = !{!2741, !2740, !2734, !2733, !2719, !2720}
!2843 = !{!2743, !2734, !2733, !2719, !2720}
!2844 = !{!2745}
!2845 = !{!2747, !2719}
!2846 = !{!2749, !2719}
!2847 = !{!2752, !2751, !2719, !2720}
!2848 = !{!2756, !2754}
!2849 = !{!2759, !2758, !2752, !2751, !2719, !2720}
!2850 = !{!2761, !2752, !2751, !2719, !2720}
!2851 = !{!2763}
!2852 = !{!2765}
!2853 = !{!2765, !2766, !2719, !2720}
!2854 = !{!2768}
!2855 = !{!2770}
!2856 = !{!2772}
!2857 = !{!2774}
!2858 = !{!2776}
!2859 = !{!2779, !2778}
!2860 = !{!2779}
!2861 = !{!2778}
!2862 = !{!2781}
!2863 = !{!2783}
!2864 = !{!2785}
!2865 = !{!2787}
!2866 = !{!2789}
!2867 = !{!2791}
!2868 = !{!2793}
!2869 = !{!2796, !2795}
!2870 = !{!2796}
!2871 = !{!2795}
!2872 = !{!2798}
!2873 = !{!2800}
!2874 = !{!2802}
!2875 = !{!2804}
!2876 = !{!2806}
!2877 = !{!2808}
!2878 = !{!2810}
!2879 = !{!2813, !2812}
!2880 = !{!2813}
!2881 = !{!2812}
!2882 = !{!2815}
!2883 = !{!2817}
!2884 = distinct !{!2884, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1v_6marker4SendEL_EE24handle_capacity_increaseCs8frGy5WneL6_4fish"}
!2885 = distinct !{!2885, !2884, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1v_6marker4SendEL_EE24handle_capacity_increaseCs8frGy5WneL6_4fish: argument 0"}
!2886 = !{!2885}
!2887 = distinct !{!2887, i1 true, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE18rotate_right_innerCs8frGy5WneL6_4fish"}
!2888 = distinct !{!2888, !2887, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE18rotate_right_innerCs8frGy5WneL6_4fish: argument 0"}
!2889 = distinct !{!2889, i1 true, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE17rotate_left_innerCs8frGy5WneL6_4fish"}
!2890 = distinct !{!2890, !2889, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE17rotate_left_innerCs8frGy5WneL6_4fish: argument 0"}
!2891 = !{!2888}
!2892 = !{!2890}
!2893 = distinct !{!2893, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE24handle_capacity_increaseCs8frGy5WneL6_4fish"}
!2894 = distinct !{!2894, !2893, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE24handle_capacity_increaseCs8frGy5WneL6_4fish: argument 0"}
!2895 = !{!2894}
!2896 = distinct !{!2896, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish"}
!2897 = distinct !{!2897, !2896, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish: argument 0"}
!2898 = !{!2897}
!2899 = distinct !{!2899, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_"}
!2900 = distinct !{!2900, !2899, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_: argument 0"}
!2901 = !{!2900}
!2902 = distinct !{!2902, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_"}
!2903 = distinct !{!2903, !2902, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_: argument 0"}
!2904 = !{!2903}
!2905 = distinct !{!2905, i1 true, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_"}
!2906 = distinct !{!2906, !2905, !"_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE24handle_capacity_increaseB1b_: argument 0"}
!2907 = !{!2906}
!2908 = distinct !{!2908, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_"}
!2909 = distinct !{!2909, !2908, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullEB1c_: argument 0"}
!2910 = !{!2909}
!2911 = distinct !{!2911, i1 true, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish"}
!2912 = distinct !{!2912, !2911, !"_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs8frGy5WneL6_4fish: argument 0"}
!2913 = !{!2912}
!2914 = distinct !{!2914, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2915 = distinct !{!2915, !2914, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2916 = !{!2915}
!2917 = distinct !{!2917, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2918 = distinct !{!2918, !2917, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2919 = distinct !{!2919, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl11get_history"}
!2920 = distinct !{!2920, !2919, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl11get_history: argument 1"}
!2921 = distinct !{!2921, !2919, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl11get_history: argument 0"}
!2922 = distinct !{!2922, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish"}
!2923 = distinct !{!2923, !2922, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2924 = distinct !{!2924, !2922, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 1"}
!2925 = distinct !{!2925, !45}
!2926 = distinct !{!2926, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish"}
!2927 = distinct !{!2927, !2926, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!2928 = distinct !{!2928, !2926, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 1"}
!2929 = !{!2918}
!2930 = !{!2920}
!2931 = !{!2921, !2920}
!2932 = !{!2921}
!2933 = !{!2923}
!2934 = !{!2924, !2921}
!2935 = !{!2927}
!2936 = !{!2928, !2921}
!2937 = distinct !{!2937, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2938 = distinct !{!2938, !2937, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2939 = distinct !{!2939, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl13clear_session"}
!2940 = distinct !{!2940, !2939, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl13clear_session: argument 0"}
!2941 = !{!2938}
!2942 = !{!2940}
!2943 = distinct !{!2943, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2944 = distinct !{!2944, !2943, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2945 = distinct !{!2945, i1 true, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!2946 = distinct !{!2946, !2945, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!2947 = distinct !{!2947, !2945, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!2948 = !{!2944}
!2949 = !{!2946}
!2950 = !{!2947}
!2951 = !{!2946, !2947}
!2952 = distinct !{!2952, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2953 = distinct !{!2953, !2952, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2954 = !{!2953}
!2955 = distinct !{!2955, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2956 = distinct !{!2956, !2955, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2957 = !{!2956}
!2958 = distinct !{!2958, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2959 = distinct !{!2959, !2958, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2960 = distinct !{!2960, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl22remove_ephemeral_items"}
!2961 = distinct !{!2961, !2960, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl22remove_ephemeral_items: argument 0"}
!2962 = distinct !{!2962, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_"}
!2963 = distinct !{!2963, !2962, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB13_: argument 0"}
!2964 = !{!2959}
!2965 = !{!2961}
!2966 = !{!2963}
!2967 = distinct !{!2967, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2968 = distinct !{!2968, !2967, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2969 = distinct !{!2969, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl28incorporate_external_changes"}
!2970 = distinct !{!2970, !2969, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl28incorporate_external_changes: argument 0"}
!2971 = distinct !{!2971, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state"}
!2972 = distinct !{!2972, !2971, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl16clear_file_state: argument 0"}
!2973 = !{!2968}
!2974 = !{!2970}
!2975 = !{!2972, !2970}
!2976 = distinct !{!2976, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_"}
!2977 = distinct !{!2977, !2976, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryImplEINtBM_11PoisonErrorBH_EE6unwrapB1I_: argument 0"}
!2978 = distinct !{!2978, i1 true, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem3new"}
!2979 = distinct !{!2979, !2978, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem3new: argument 1"}
!2980 = distinct !{!2980, !2978, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem3new: argument 2"}
!2981 = distinct !{!2981, !2978, !"_RNvMs2_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItem3new: argument 0"}
!2982 = distinct !{!2982, i1 true, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl24disable_automatic_saving"}
!2983 = distinct !{!2983, !2982, !"_RNvMs3_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryImpl24disable_automatic_saving: argument 0"}
!2984 = distinct !{!2984, i1 true, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!2985 = distinct !{!2985, !2984, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!2986 = distinct !{!2986, !2984, !"_RNvXsr_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_11HistoryItemNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!2987 = distinct !{!2987, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_"}
!2988 = distinct !{!2988, !2987, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolEEB1f_: argument 0"}
!2989 = distinct !{!2989, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_"}
!2990 = distinct !{!2990, !2989, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7threads7threads10ThreadPoolENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_: argument 0"}
!2991 = distinct !{!2991, i1 true, !"_RINvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB6_10ThreadPool7performNCNvMs4_NtNtBa_7history7historyNtB1g_7History31add_pending_with_file_detection0EBa_"}
!2992 = distinct !{!2992, !2991, !"_RINvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB6_10ThreadPool7performNCNvMs4_NtNtBa_7history7historyNtB1g_7History31add_pending_with_file_detection0EBa_: argument 1"}
!2993 = distinct !{!2993, !2991, !"_RINvMs1_NtNtCs8frGy5WneL6_4fish7threads7threadsNtB6_10ThreadPool7performNCNvMs4_NtNtBa_7history7historyNtB1g_7History31add_pending_with_file_detection0EBa_: argument 0"}
!2994 = distinct !{!2994, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtBM_7History31add_pending_with_file_detection0E3newBQ_"}
!2995 = distinct !{!2995, !2994, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNCNvMs4_NtNtCs8frGy5WneL6_4fish7history7historyNtBM_7History31add_pending_with_file_detection0E3newBQ_: argument 0"}
!2996 = distinct !{!2996, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7threads7threads19ThreadPoolProtectedEINtBM_11PoisonErrorBH_EE6expectB1I_"}
!2997 = distinct !{!2997, !2996, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7threads7threads19ThreadPoolProtectedEINtBM_11PoisonErrorBH_EE6expectB1I_: argument 0"}
!2998 = distinct !{!2998, !2996, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish7threads7threads19ThreadPoolProtectedEINtBM_11PoisonErrorBH_EE6expectB1I_: argument 1"}
!2999 = distinct !{!2999, i1 true, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1v_6marker4SendEL_EE13push_back_mutCs8frGy5WneL6_4fish"}
!3000 = distinct !{!3000, !2999, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1v_6marker4SendEL_EE13push_back_mutCs8frGy5WneL6_4fish: argument 0"}
!3001 = distinct !{!3001, !2999, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1v_6marker4SendEL_EE13push_back_mutCs8frGy5WneL6_4fish: argument 1"}
!3002 = distinct !{!3002, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3003 = distinct !{!3003, !3002, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3004 = distinct !{!3004, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3005 = distinct !{!3005, !3004, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3006 = distinct !{!3006, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3007 = distinct !{!3007, !3006, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3008 = distinct !{!3008, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3009 = distinct !{!3009, !3008, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3010 = distinct !{!3010, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3011 = distinct !{!3011, !3010, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3012 = distinct !{!3012, i1 true, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl"}
!3013 = distinct !{!3013, !3012, !"_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl: argument 0"}
!3014 = distinct !{!3014, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3015 = distinct !{!3015, !3014, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3016 = distinct !{!3016, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3017 = distinct !{!3017, !3016, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3018 = distinct !{!3018, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!3019 = distinct !{!3019, !3018, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3020 = distinct !{!3020, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs8frGy5WneL6_4fish"}
!3021 = distinct !{!3021, !3020, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs8frGy5WneL6_4fish: argument 0"}
!3022 = distinct !{!3022, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs8frGy5WneL6_4fish"}
!3023 = distinct !{!3023, !3022, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs8frGy5WneL6_4fish: argument 0"}
!3024 = distinct !{!3024, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs8frGy5WneL6_4fish"}
!3025 = distinct !{!3025, !3024, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs8frGy5WneL6_4fish: argument 0"}
!3026 = distinct !{!3026, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!3027 = distinct !{!3027, !3026, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!3028 = distinct !{!3028, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs8frGy5WneL6_4fish"}
!3029 = distinct !{!3029, !3028, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs8frGy5WneL6_4fish: argument 0"}
!3030 = distinct !{!3030, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs8frGy5WneL6_4fish"}
!3031 = distinct !{!3031, !3030, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECs8frGy5WneL6_4fish: argument 0"}
!3032 = distinct !{!3032, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs8frGy5WneL6_4fish"}
!3033 = distinct !{!3033, !3032, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECs8frGy5WneL6_4fish: argument 0"}
end_hunk_8
