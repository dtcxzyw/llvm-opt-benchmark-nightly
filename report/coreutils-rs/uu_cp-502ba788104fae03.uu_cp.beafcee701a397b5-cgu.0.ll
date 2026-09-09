Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_cp-502ba788104fae03.uu_cp.beafcee701a397b5-cgu.0?download=true
inline.NumInlined: 2514
inline.NumDeleted: 1152
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvCsgn1j6LDYpaP_5uu_cp4copy:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit

bb.dl:                                            ; preds = %.loopexit
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.rh = load double, ptr %i.rg, align 8, !noundef !7
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, double noundef %i.rh) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.di

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit: ; preds = %bb.dj, %bb.di, %bb.dk
  %i.ri = icmp eq i64 %.sroa.0548.0.copyload549, 0
  %or.cond = select i1 %.sroa.050.0.not, i1 true, i1 %i.ri
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit278, label %bb.dm

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit278: ; preds = %bb.dm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.dn

bb.dm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5550.0.copyload552, i64 noundef %.sroa.0548.0.copyload549, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !3362
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit278

bb.dn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit278, %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !3363)
  %.val.i279 = load i64, ptr %i.be, align 8, !range !8, !alias.scope !3363, !noundef !7 ; 2 uses
  %i.rj = icmp eq i64 %.val.i279, 0
  br i1 %i.rj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i279, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !3363
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit: ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.dx

bb.dp:                                            ; preds = %_RNvCsgn1j6LDYpaP_5uu_cp11copy_source.exit.thread, %_RNvCsgn1j6LDYpaP_5uu_cp11copy_source.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %i.au, i64 56, i1 false)
  call fastcc void @_RNvCsgn1j6LDYpaP_5uu_cp20show_error_if_needed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.at) #39
  %i.rk = load i64, ptr %i.at, align 8, !range !25, !noundef !7 ; 2 uses
  %i.rl = icmp ne i64 %i.rk, -9223372036854775804
  call void @llvm.assume(i1 %i.rl)
  %i.rm = icmp ne i64 %i.rk, -9223372036854775802
  %i.rn = load i8, ptr %i.gl, align 8, !range !22
  %i.ro = trunc nuw i8 %i.rn to i1
  %or.cond.not = select i1 %i.rm, i1 true, i1 %i.ro
  %spec.select = select i1 %or.cond.not, i1 true, i1 %.sroa.0.0781
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgn1j6LDYpaP_5uu_cp7CpErrorEBD_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.au) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.du

bb.dq:                                            ; preds = %_RNvCsgn1j6LDYpaP_5uu_cp11copy_source.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.rp = icmp eq i64 %.val1.i.i195, 0
  br i1 %i.rp, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgn1j6LDYpaP_5uu_cp.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !3364
  %i.rq = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i195, i64 noundef range(i64 1, 9) 1) #39, !noalias !3364 ; 3 uses
  %i.rr = icmp eq ptr %i.rq, null
  br i1 %i.rr, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1.i.i195) #43, !noalias !3365
  unreachable

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rq, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val1.i.i195, i1 false), !noalias !3366
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgn1j6LDYpaP_5uu_cp.exit

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgn1j6LDYpaP_5uu_cp.exit: ; preds = %bb.dq, %bb.dt
  %.sroa.5590.0 = phi ptr [ %i.rq, %bb.dt ], [ inttoptr (i64 1 to ptr), %bb.dq ]
  store i64 %.val1.i.i195, ptr %i.as, align 8
  store ptr %.sroa.5590.0, ptr %.sroa.4596.0..sroa_idx, align 8
  store i64 %.val1.i.i195, ptr %.sroa.5597.0..sroa_idx, align 8
  %i.rs = call fastcc noundef zeroext i1 @_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtCs2vKOLqTMYjT_3std4path7PathBufuNtNtNtBR_4hash6random11RandomStateE6insertCsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bz, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.as) #39 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.du

bb.du:                                            ; preds = %bb.dp, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgn1j6LDYpaP_5uu_cp.exit
  %.sroa.0.2 = phi i1 [ %spec.select, %bb.dp ], [ %.sroa.0.0781, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgn1j6LDYpaP_5uu_cp.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3367)
  %.val.i281 = load i64, ptr %i.be, align 8, !range !8, !alias.scope !3367, !noundef !7 ; 2 uses
  %i.rt = icmp eq i64 %.val.i281, 0
  br i1 %i.rt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit283, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i281, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !3367
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit283

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit283: ; preds = %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.dw

bb.dw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit381, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit283
  %.sroa.0.3 = phi i1 [ %.sroa.0.0781, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit381 ], [ %.sroa.0.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit283 ] ; 2 uses
  %i.ru = call fastcc noundef zeroext i1 @_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtCs2vKOLqTMYjT_3std4path7PathBufuNtNtNtBR_4hash6random11RandomStateE6insertCsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cc, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ar) #39 ; 0 uses
  %i.rv = icmp eq ptr %i.ip, %i.fe
  br i1 %i.rv, label %._crit_edge.loopexit, label %bb.ac

bb.dx:                                            ; preds = %bb.ed, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit
  %.val.i284 = load i64, ptr %i.ar, align 8, !range !8, !noundef !7 ; 2 uses
  %i.rw = icmp eq i64 %.val.i284, 0
  br i1 %i.rw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit286, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val1.i285 = load ptr, ptr %i.rx, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i285, i64 noundef %.val.i284, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !3368
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit286

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit286: ; preds = %bb.dx, %bb.dy
  call void @llvm.experimental.noalias.scope.decl(metadata !3369)
  %i.ry = load ptr, ptr %i.bx, align 8, !alias.scope !3369, !noundef !7 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECsgn1j6LDYpaP_5uu_cp.exit, label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit286
  call void @llvm.experimental.noalias.scope.decl(metadata !3370)
  %i.sa = atomicrmw sub ptr %i.ry, i64 1 release, align 8, !noalias !3371
  %i.sb = icmp eq i64 %i.sa, 1
  br i1 %i.sb, label %bb.ea, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECsgn1j6LDYpaP_5uu_cp.exit.i.i

bb.ea:                                            ; preds = %bb.dz
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEE9drop_slowB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx) #40
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECsgn1j6LDYpaP_5uu_cp.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECsgn1j6LDYpaP_5uu_cp.exit.i.i: ; preds = %bb.ea, %bb.dz
  %i.sc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3372)
  call void @llvm.experimental.noalias.scope.decl(metadata !3373)
  %i.sd = load ptr, ptr %i.sc, align 8, !alias.scope !3374, !nonnull !7, !noundef !7
  %i.se = atomicrmw sub ptr %i.sd, i64 1 release, align 8, !noalias !3375
  %i.sf = icmp eq i64 %i.se, 1
  br i1 %i.sf, label %bb.eb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECsgn1j6LDYpaP_5uu_cp.exit.i.i

bb.eb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECsgn1j6LDYpaP_5uu_cp.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sc) #40
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECsgn1j6LDYpaP_5uu_cp.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECsgn1j6LDYpaP_5uu_cp.exit.i.i: ; preds = %bb.eb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECsgn1j6LDYpaP_5uu_cp.exit.i.i
  %i.sg = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3376)
  call void @llvm.experimental.noalias.scope.decl(metadata !3377)
  %i.sh = load ptr, ptr %i.sg, align 8, !alias.scope !3378, !nonnull !7, !noundef !7
  %i.si = atomicrmw sub ptr %i.sh, i64 1 release, align 8, !noalias !3379
  %i.sj = icmp eq i64 %i.si, 1
  br i1 %i.sj, label %bb.ec, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECsgn1j6LDYpaP_5uu_cp.exit

bb.ec:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECsgn1j6LDYpaP_5uu_cp.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexINtNtCs6JMX4GRUq9U_4core6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar6TickerEEE9drop_slowCsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.sg) #40
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECsgn1j6LDYpaP_5uu_cp.exit

bb.ed:                                            ; preds = %bb.af
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !noalias !3307, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3307
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.sl, ptr %.sroa.4580.0..sroa_idx, align 8
  br label %bb.dx

bb.ee:                                            ; preds = %bb.af
  %.sroa.8501.0.copyload = load i32, ptr %.sroa.8501.0..sroa_idx, align 8, !noalias !3380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3307
  %i.sm = and i32 %.sroa.8501.0.copyload, 61440
  %i.sn = icmp eq i32 %i.sm, 16384                ; 2 uses
  %.143 = select i1 %i.sn, i64 9, i64 4           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.483.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.584.0..sroa_idx, align 8
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !3381
  %i.so = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.143, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !3381 ; 9 uses
  %i.sp = icmp eq ptr %i.so, null
  br i1 %i.sp, label %bb.ef, label %thread-pre-split.i320

bb.ef:                                            ; preds = %bb.ee
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.143) #43
  unreachable

thread-pre-split.i320:                            ; preds = %bb.ee
  %.144 = select i1 %i.sn, ptr @116, ptr @91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.so, ptr noundef nonnull align 1 dereferenceable(4) %.144, i64 %.143, i1 false)
  %.pr.i321 = load i8, ptr %i.so, align 1, !alias.scope !3382, !noalias !3383
  switch i8 %.pr.i321, label %.lr.ph150.i315.preheader.a [
    i8 43, label %bb.eg
    i8 45, label %bb.eh
  ]

.lr.ph150.i315.preheader.a:                       ; preds = %bb.eg, %thread-pre-split.i320
  %.sroa.0.4149.i316.ph = phi ptr [ %i.so, %thread-pre-split.i320 ], [ %6, %bb.eg ]
  %.sroa.26.4148.i317.ph = phi i64 [ %.143, %thread-pre-split.i320 ], [ %7, %bb.eg ]
  br label %.lr.ph150.i315

bb.eg:                                            ; preds = %thread-pre-split.i320
  %6 = getelementptr inbounds nuw i8, ptr %i.so, i64 1
  %7 = add nsw i64 %.143, -1
  br label %.lr.ph150.i315.preheader.a

bb.eh:                                            ; preds = %thread-pre-split.i320
  %i.sq = add nsw i64 %.143, -1
  br label %.lr.ph141.i300

.lr.ph141.i300:                                   ; preds = %bb.eh, %bb.ei
  %.sroa.0.2140.i301.pn = phi ptr [ %.sroa.0.2140.i301, %bb.ei ], [ %i.so, %bb.eh ]
  %.sroa.26.2139.i302 = phi i64 [ %i.sw, %bb.ei ], [ %i.sq, %bb.eh ]
  %.sroa.084.2138.i303 = phi i64 [ %i.sy, %bb.ei ], [ 0, %bb.eh ]
  %.sroa.0.2140.i301 = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i301.pn, i64 1 ; 2 uses
  %i.sr = load i8, ptr %.sroa.0.2140.i301, align 1, !alias.scope !3382, !noalias !3383, !noundef !7
  %i.ss = zext i8 %i.sr to i32
  %i.st = add nsw i32 %i.ss, -48                  ; 2 uses
  %i.su = icmp ult i32 %i.st, 10
  br i1 %i.su, label %bb.ei, label %.loopexit667

bb.ei:                                            ; preds = %.lr.ph141.i300
  %i.sv = mul i64 %.sroa.084.2138.i303, 10
  %i.sw = add nsw i64 %.sroa.26.2139.i302, -1     ; 2 uses
  %i.sx = zext nneg i32 %i.st to i64
  %i.sy = sub i64 %i.sv, %i.sx                    ; 2 uses
  %.not103.i304 = icmp eq i64 %i.sw, 0
  br i1 %.not103.i304, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit322, label %.lr.ph141.i300

.lr.ph150.i315:                                   ; preds = %.lr.ph150.i315.preheader.a, %bb.ej
  %.sroa.0.4149.i316 = phi ptr [ %i.tf, %bb.ej ], [ %.sroa.0.4149.i316.ph, %.lr.ph150.i315.preheader.a ] ; 2 uses
  %.sroa.26.4148.i317 = phi i64 [ %i.te, %bb.ej ], [ %.sroa.26.4148.i317.ph, %.lr.ph150.i315.preheader.a ]
  %.sroa.084.4147.i318 = phi i64 [ %i.th, %bb.ej ], [ 0, %.lr.ph150.i315.preheader.a ]
  %i.sz = load i8, ptr %.sroa.0.4149.i316, align 1, !alias.scope !3382, !noalias !3383, !noundef !7
  %i.ta = zext i8 %i.sz to i32
  %i.tb = add nsw i32 %i.ta, -48                  ; 2 uses
  %i.tc = icmp ult i32 %i.tb, 10
  br i1 %i.tc, label %bb.ej, label %.loopexit667

bb.ej:                                            ; preds = %.lr.ph150.i315
  %i.td = mul i64 %.sroa.084.4147.i318, 10
  %i.te = add nsw i64 %.sroa.26.4148.i317, -1     ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i316, i64 1
  %i.tg = zext nneg i32 %i.tb to i64
  %i.th = add i64 %i.td, %i.tg                    ; 2 uses
  %.not105.i319 = icmp eq i64 %i.te, 0
  br i1 %.not105.i319, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit322, label %.lr.ph150.i315

.loopexit667:                                     ; preds = %.lr.ph141.i300, %.lr.ph150.i315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.so, i64 noundef %.143) #40
  %i.ti = load i8, ptr %i.bp, align 8, !range !22, !noundef !7
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.ez, label %bb.fa

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit322: ; preds = %bb.ei, %bb.ej
  %.sroa.12506.0 = phi i64 [ %i.th, %bb.ej ], [ %i.sy, %bb.ei ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 9, i64 noundef %.sroa.12506.0) #39
  br label %bb.ek

bb.ek:                                            ; preds = %bb.fa, %bb.ez, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit322
  %.sroa.049.0 = phi i1 [ false, %bb.ez ], [ true, %bb.fa ], [ true, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit322 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store i64 1, ptr %i.bn, align 8
  store ptr %i.ir, ptr %.sroa.489.0..sroa_idx, align 8
  store i64 %i.it, ptr %.sroa.590.0..sroa_idx, align 8
  store i8 1, ptr %i.gn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3384
  store i64 0, ptr %i.i, align 8, !noalias !3384
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i323, align 8, !noalias !3384
  store i64 0, ptr %.sroa.5.0..sroa_idx.i324, align 8, !noalias !3384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3384
  store i64 1610612768, ptr %i.go, align 8, !noalias !3384
  store ptr %i.i, ptr %i.h, align 8, !noalias !3384
  store ptr @264, ptr %i.gp, align 8, !noalias !3384
  %i.tk = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #39, !noalias !3385
  br i1 %i.tk, label %bb.el, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp.exit325, !prof !10

bb.el:                                            ; preds = %bb.ek
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @265, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #41, !noalias !3385
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp.exit325: ; preds = %bb.ek
  %.sroa.0507.0.copyload508 = load i64, ptr %i.i, align 8, !noalias !3386 ; 3 uses
  %.sroa.5509.0.copyload511 = load ptr, ptr %.sroa.4.0..sroa_idx.i323, align 8, !noalias !3386, !nonnull !7, !noundef !7 ; 8 uses
  %.sroa.8513.0.copyload515 = load i64, ptr %.sroa.5.0..sroa_idx.i324, align 8, !noalias !3386 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  switch i64 %.sroa.8513.0.copyload515, label %thread-pre-split.i357 [
    i64 0, label %.loopexit660
    i64 1, label %bb.em
  ]

bb.em:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp.exit325
  %i.tl = load i8, ptr %.sroa.5509.0.copyload511, align 1, !alias.scope !3387, !noalias !3388, !noundef !7 ; 2 uses
  switch i8 %i.tl, label %bb.en [
    i8 43, label %.loopexit660
    i8 45, label %.loopexit660
  ]

thread-pre-split.i357:                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp.exit325
  %.pr.i358 = load i8, ptr %.sroa.5509.0.copyload511, align 1, !alias.scope !3387, !noalias !3388
  br label %bb.en

bb.en:                                            ; preds = %thread-pre-split.i357, %bb.em
  %i.tm = phi i8 [ %.pr.i358, %thread-pre-split.i357 ], [ %i.tl, %bb.em ]
  switch i8 %i.tm, label %bb.eu [
    i8 43, label %bb.eo
    i8 45, label %bb.ep
  ]

bb.eo:                                            ; preds = %bb.en
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.5509.0.copyload511, i64 1
  %i.to = add nsw i64 %.sroa.8513.0.copyload515, -1
  br label %bb.eu

bb.ep:                                            ; preds = %bb.en
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.5509.0.copyload511, i64 1 ; 2 uses
  %i.tq = add nsw i64 %.sroa.8513.0.copyload515, -1 ; 3 uses
  %i.tr = icmp samesign ult i64 %.sroa.8513.0.copyload515, 17
  br i1 %i.tr, label %.preheader114.i335, label %.lr.ph.i327

.preheader114.i335:                               ; preds = %bb.ep
  %.not103137.i336 = icmp eq i64 %i.tq, 0
  br i1 %.not103137.i336, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.lr.ph141.i337

.lr.ph.i327:                                      ; preds = %bb.ep, %bb.es
  %.sroa.0.1136.i328 = phi ptr [ %i.ts, %bb.es ], [ %i.tp, %bb.ep ] ; 2 uses
  %.sroa.26.1135.i329 = phi i64 [ %i.tt, %bb.es ], [ %i.tq, %bb.ep ]
  %.sroa.084.0134.i330 = phi i64 [ %i.ue, %bb.es ], [ 0, %bb.ep ]
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i328, i64 1
  %i.tt = add nsw i64 %.sroa.26.1135.i329, -1     ; 2 uses
  %i.tu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i330, i64 10) ; 2 uses
  %i.tv = extractvalue { i64, i1 } %i.tu, 0
  %i.tw = extractvalue { i64, i1 } %i.tu, 1
  br i1 %i.tw, label %.loopexit660, label %bb.eq, !prof !10

bb.eq:                                            ; preds = %.lr.ph.i327
  %i.tx = load i8, ptr %.sroa.0.1136.i328, align 1, !alias.scope !3387, !noalias !3388, !noundef !7
  %i.ty = zext i8 %i.tx to i32
  %i.tz = add nsw i32 %i.ty, -48                  ; 2 uses
  %i.ua = icmp ult i32 %i.tz, 10
  br i1 %i.ua, label %bb.er, label %.loopexit660

bb.er:                                            ; preds = %bb.eq
  %i.ub = zext nneg i32 %i.tz to i64
  %i.uc = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.tv, i64 %i.ub) ; 2 uses
  %i.ud = extractvalue { i64, i1 } %i.uc, 1
  br i1 %i.ud, label %.loopexit660, label %bb.es, !prof !10

bb.es:                                            ; preds = %bb.er
  %i.ue = extractvalue { i64, i1 } %i.uc, 0       ; 2 uses
  %.not102.i332 = icmp eq i64 %i.tt, 0
  br i1 %.not102.i332, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.lr.ph.i327

.lr.ph141.i337:                                   ; preds = %.preheader114.i335, %bb.et
  %.sroa.0.2140.i338 = phi ptr [ %i.ul, %bb.et ], [ %i.tp, %.preheader114.i335 ] ; 2 uses
  %.sroa.26.2139.i339 = phi i64 [ %i.uk, %bb.et ], [ %i.tq, %.preheader114.i335 ]
  %.sroa.084.2138.i340 = phi i64 [ %i.un, %bb.et ], [ 0, %.preheader114.i335 ]
  %i.uf = load i8, ptr %.sroa.0.2140.i338, align 1, !alias.scope !3387, !noalias !3388, !noundef !7
  %i.ug = zext i8 %i.uf to i32
  %i.uh = add nsw i32 %i.ug, -48                  ; 2 uses
  %i.ui = icmp ult i32 %i.uh, 10
  br i1 %i.ui, label %bb.et, label %.loopexit660

bb.et:                                            ; preds = %.lr.ph141.i337
  %i.uj = mul i64 %.sroa.084.2138.i340, 10
  %i.uk = add nsw i64 %.sroa.26.2139.i339, -1     ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i338, i64 1
  %i.um = zext nneg i32 %i.uh to i64
  %i.un = sub i64 %i.uj, %i.um                    ; 2 uses
  %.not103.i341 = icmp eq i64 %i.uk, 0
  br i1 %.not103.i341, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.lr.ph141.i337

bb.eu:                                            ; preds = %bb.eo, %bb.en
  %.sroa.26.0.i342 = phi i64 [ %i.to, %bb.eo ], [ %.sroa.8513.0.copyload515, %bb.en ] ; 4 uses
  %.sroa.0.0.i343 = phi ptr [ %i.tn, %bb.eo ], [ %.sroa.5509.0.copyload511, %bb.en ] ; 2 uses
  %i.uo = icmp samesign ult i64 %.sroa.26.0.i342, 16
  br i1 %i.uo, label %.preheader.i350, label %.preheader111.i344

.preheader.i350:                                  ; preds = %bb.eu
  %.not105146.i351 = icmp eq i64 %.sroa.26.0.i342, 0
  br i1 %.not105146.i351, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.lr.ph150.i352

.preheader111.i344:                               ; preds = %bb.eu, %bb.ex
  %.sroa.0.3145.i345 = phi ptr [ %i.up, %bb.ex ], [ %.sroa.0.0.i343, %bb.eu ] ; 2 uses
  %.sroa.26.3144.i346 = phi i64 [ %i.uq, %bb.ex ], [ %.sroa.26.0.i342, %bb.eu ]
  %.sroa.084.3143.i347 = phi i64 [ %i.vb, %bb.ex ], [ 0, %bb.eu ]
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i345, i64 1
  %i.uq = add nsw i64 %.sroa.26.3144.i346, -1     ; 2 uses
  %i.ur = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i347, i64 10) ; 2 uses
  %i.us = extractvalue { i64, i1 } %i.ur, 0
  %i.ut = extractvalue { i64, i1 } %i.ur, 1
  br i1 %i.ut, label %.loopexit660, label %bb.ev, !prof !10

bb.ev:                                            ; preds = %.preheader111.i344
  %i.uu = load i8, ptr %.sroa.0.3145.i345, align 1, !alias.scope !3387, !noalias !3388, !noundef !7
  %i.uv = zext i8 %i.uu to i32
  %i.uw = add nsw i32 %i.uv, -48                  ; 2 uses
  %i.ux = icmp ult i32 %i.uw, 10
  br i1 %i.ux, label %bb.ew, label %.loopexit660

bb.ew:                                            ; preds = %bb.ev
  %i.uy = zext nneg i32 %i.uw to i64
  %i.uz = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.us, i64 %i.uy) ; 2 uses
  %i.va = extractvalue { i64, i1 } %i.uz, 1
  br i1 %i.va, label %.loopexit660, label %bb.ex, !prof !10

bb.ex:                                            ; preds = %bb.ew
  %i.vb = extractvalue { i64, i1 } %i.uz, 0       ; 2 uses
  %.not104.i349 = icmp eq i64 %i.uq, 0
  br i1 %.not104.i349, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.preheader111.i344

.lr.ph150.i352:                                   ; preds = %.preheader.i350, %bb.ey
  %.sroa.0.4149.i353 = phi ptr [ %i.vi, %bb.ey ], [ %.sroa.0.0.i343, %.preheader.i350 ] ; 2 uses
  %.sroa.26.4148.i354 = phi i64 [ %i.vh, %bb.ey ], [ %.sroa.26.0.i342, %.preheader.i350 ]
  %.sroa.084.4147.i355 = phi i64 [ %i.vk, %bb.ey ], [ 0, %.preheader.i350 ]
  %i.vc = load i8, ptr %.sroa.0.4149.i353, align 1, !alias.scope !3387, !noalias !3388, !noundef !7
  %i.vd = zext i8 %i.vc to i32
  %i.ve = add nsw i32 %i.vd, -48                  ; 2 uses
  %i.vf = icmp ult i32 %i.ve, 10
  br i1 %i.vf, label %bb.ey, label %.loopexit660

bb.ey:                                            ; preds = %.lr.ph150.i352
  %i.vg = mul i64 %.sroa.084.4147.i355, 10
  %i.vh = add nsw i64 %.sroa.26.4148.i354, -1     ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i353, i64 1
  %i.vj = zext nneg i32 %i.ve to i64
  %i.vk = add i64 %i.vg, %i.vj                    ; 2 uses
  %.not105.i356 = icmp eq i64 %i.vh, 0
  br i1 %.not105.i356, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.lr.ph150.i352

end_hunk_0
begin_hunk_1_@_RNvXs0_Csgn1j6LDYpaP_5uu_cpNtB5_11BackupErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.at = zext nneg i32 %i.ao to i64
  %i.au = sub i64 %i.aq, %i.at                    ; 2 uses
  %.not103.i = icmp eq i64 %i.ar, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.n:                                             ; preds = %bb.h, %bb.g
  %.sroa.26.0.i = phi i64 [ %i.v, %bb.h ], [ %i.m, %bb.g ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.u, %bb.h ], [ %i.q, %bb.g ] ; 2 uses
  %i.av = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.av, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.n
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.n, %bb.q
  %.sroa.0.3145.i = phi ptr [ %i.aw, %bb.q ], [ %.sroa.0.0.i, %bb.n ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.ax, %bb.q ], [ %.sroa.26.0.i, %bb.n ]
  %.sroa.084.3143.i = phi i64 [ %i.bi, %bb.q ], [ 0, %bb.n ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.ax = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.ay = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 0
  %i.ba = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.ba, label %.loopexit, label %bb.o, !prof !10

bb.o:                                             ; preds = %.preheader111.i
  %i.bb = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !6631, !noalias !6632, !noundef !7
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nsw i32 %i.bc, -48                  ; 2 uses
  %i.be = icmp ult i32 %i.bd, 10
  br i1 %i.be, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.az, i64 %i.bf) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  br i1 %i.bh, label %.loopexit, label %bb.q, !prof !10

bb.q:                                             ; preds = %bb.p
  %i.bi = extractvalue { i64, i1 } %i.bg, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.ax, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.r
  %.sroa.0.4149.i = phi ptr [ %i.bp, %bb.r ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.bo, %bb.r ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.br, %bb.r ], [ 0, %.preheader.i ]
  %i.bj = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !6631, !noalias !6632, !noundef !7
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48                  ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 10
  br i1 %i.bm, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.lr.ph150.i
  %i.bn = mul i64 %.sroa.084.4147.i, 10
  %i.bo = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.bq = zext nneg i32 %i.bl to i64
  %i.br = add i64 %i.bn, %i.bq                    ; 2 uses
  %.not105.i = icmp eq i64 %i.bo, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

bb.s:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.k, i64 %i.m, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgn1j6LDYpaP_5uu_cp.exit.thread95

.loopexit:                                        ; preds = %.lr.ph.i, %bb.k, %bb.j, %.lr.ph141.i, %.preheader111.i, %bb.o, %bb.p, %.lr.ph150.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit, %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.m) #40
  %i.bs = load i8, ptr %i.f, align 8, !range !22, !noundef !7
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.w, label %bb.x

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.l, %bb.m, %bb.q, %bb.r, %.preheader.i, %.preheader114.i
  %.sroa.1577.0 = phi i64 [ %i.br, %bb.r ], [ %i.au, %bb.m ], [ %i.bi, %bb.q ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.al, %bb.l ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, i64 noundef %.sroa.1577.0) #39
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.w, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.01.0.not = phi i1 [ true, %bb.w ], [ %i.n, %bb.x ], [ %i.n, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %i.bu = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore16execution_phrase() #39 ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1      ; 16 uses
  %.not.i26 = icmp slt i64 %i.bw, 0
  br i1 %.not.i26, label %bb.y, label %bb.u, !prof !19

bb.u:                                             ; preds = %bb.t
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !6633
  %i.by = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6633 ; 18 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.y, label %bb.z

bb.w:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.m, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx72, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.m, ptr %.sroa.9.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.t

bb.x:                                             ; preds = %.loopexit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !noundef !7
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, double noundef %i.cb) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.y:                                             ; preds = %bb.t, %bb.v
  %.sroa.487.0.ph = phi i64 [ 1, %bb.v ], [ 0, %bb.t ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.487.0.ph, i64 %i.bw) #43
  unreachable

bb.z:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.bv, i64 %i.bw, i1 false)
  %cond = icmp eq i64 %i.bw, 1
  %i.cc = load i8, ptr %i.by, align 1, !alias.scope !6634, !noalias !6635 ; 2 uses
  br i1 %cond, label %bb.aa, label %thread-pre-split.i60

bb.aa:                                            ; preds = %bb.z
  switch i8 %i.cc, label %bb.ah [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i60:                             ; preds = %bb.z
  switch i8 %i.cc, label %bb.ah [
    i8 43, label %bb.ab
    i8 45, label %bb.ac
  ]

bb.ab:                                            ; preds = %thread-pre-split.i60
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ce = add nsw i64 %i.bw, -1
  br label %bb.ah

bb.ac:                                            ; preds = %thread-pre-split.i60
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  %i.cg = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.ch = icmp samesign ult i64 %i.bw, 17
  br i1 %i.ch, label %.lr.ph141.i40, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.ac, %bb.af
  %.sroa.0.1136.i31 = phi ptr [ %i.ci, %bb.af ], [ %i.cf, %bb.ac ] ; 2 uses
  %.sroa.26.1135.i32 = phi i64 [ %i.cj, %bb.af ], [ %i.cg, %bb.ac ]
  %.sroa.084.0134.i33 = phi i64 [ %i.cu, %bb.af ], [ 0, %bb.ac ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i31, i64 1
  %i.cj = add nsw i64 %.sroa.26.1135.i32, -1      ; 2 uses
  %i.ck = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i33, i64 10) ; 2 uses
  %i.cl = extractvalue { i64, i1 } %i.ck, 0
  %i.cm = extractvalue { i64, i1 } %i.ck, 1
  br i1 %i.cm, label %.thread, label %bb.ad, !prof !10

bb.ad:                                            ; preds = %.lr.ph.i30
  %i.cn = load i8, ptr %.sroa.0.1136.i31, align 1, !alias.scope !6634, !noalias !6635, !noundef !7
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nsw i32 %i.co, -48                  ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 10
  br i1 %i.cq, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.cr = zext nneg i32 %i.cp to i64
  %i.cs = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cl, i64 %i.cr) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  br i1 %i.ct, label %.thread, label %bb.af, !prof !10

bb.af:                                            ; preds = %bb.ae
  %i.cu = extractvalue { i64, i1 } %i.cs, 0       ; 2 uses
  %.not102.i35 = icmp eq i64 %i.cj, 0
  br i1 %.not102.i35, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62, label %.lr.ph.i30

.lr.ph141.i40:                                    ; preds = %bb.ac, %bb.ag
  %.sroa.0.2140.i41 = phi ptr [ %i.db, %bb.ag ], [ %i.cf, %bb.ac ] ; 2 uses
  %.sroa.26.2139.i42 = phi i64 [ %i.da, %bb.ag ], [ %i.cg, %bb.ac ]
  %.sroa.084.2138.i43 = phi i64 [ %i.dd, %bb.ag ], [ 0, %bb.ac ]
  %i.cv = load i8, ptr %.sroa.0.2140.i41, align 1, !alias.scope !6634, !noalias !6635, !noundef !7
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 10
  br i1 %i.cy, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %.lr.ph141.i40
  %i.cz = mul i64 %.sroa.084.2138.i43, 10
  %i.da = add nsw i64 %.sroa.26.2139.i42, -1      ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i41, i64 1
  %i.dc = zext nneg i32 %i.cx to i64
  %i.dd = sub i64 %i.cz, %i.dc                    ; 2 uses
  %.not103.i44 = icmp eq i64 %i.da, 0
  br i1 %.not103.i44, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62, label %.lr.ph141.i40

bb.ah:                                            ; preds = %bb.aa, %bb.ab, %thread-pre-split.i60
  %.sroa.26.0.i45 = phi i64 [ %i.ce, %bb.ab ], [ %i.bw, %thread-pre-split.i60 ], [ %i.bw, %bb.aa ] ; 4 uses
  %.sroa.0.0.i46 = phi ptr [ %i.cd, %bb.ab ], [ %i.by, %thread-pre-split.i60 ], [ %i.by, %bb.aa ] ; 2 uses
  %i.de = icmp samesign ult i64 %.sroa.26.0.i45, 16
  br i1 %i.de, label %.preheader.i53, label %.preheader111.i47

.preheader.i53:                                   ; preds = %bb.ah
  %.not105146.i54 = icmp eq i64 %.sroa.26.0.i45, 0
  br i1 %.not105146.i54, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62, label %.lr.ph150.i55

.preheader111.i47:                                ; preds = %bb.ah, %bb.ak
  %.sroa.0.3145.i48 = phi ptr [ %i.df, %bb.ak ], [ %.sroa.0.0.i46, %bb.ah ] ; 2 uses
  %.sroa.26.3144.i49 = phi i64 [ %i.dg, %bb.ak ], [ %.sroa.26.0.i45, %bb.ah ]
  %.sroa.084.3143.i50 = phi i64 [ %i.dr, %bb.ak ], [ 0, %bb.ah ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i48, i64 1
  %i.dg = add nsw i64 %.sroa.26.3144.i49, -1      ; 2 uses
  %i.dh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i50, i64 10) ; 2 uses
  %i.di = extractvalue { i64, i1 } %i.dh, 0
  %i.dj = extractvalue { i64, i1 } %i.dh, 1
  br i1 %i.dj, label %.thread, label %bb.ai, !prof !10

bb.ai:                                            ; preds = %.preheader111.i47
  %i.dk = load i8, ptr %.sroa.0.3145.i48, align 1, !alias.scope !6634, !noalias !6635, !noundef !7
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, -48                  ; 2 uses
  %i.dn = icmp ult i32 %i.dm, 10
  br i1 %i.dn, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.di, i64 %i.do) ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 1
  br i1 %i.dq, label %.thread, label %bb.ak, !prof !10

bb.ak:                                            ; preds = %bb.aj
  %i.dr = extractvalue { i64, i1 } %i.dp, 0       ; 2 uses
  %.not104.i52 = icmp eq i64 %i.dg, 0
  br i1 %.not104.i52, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62, label %.preheader111.i47

.lr.ph150.i55:                                    ; preds = %.preheader.i53, %bb.al
  %.sroa.0.4149.i56 = phi ptr [ %i.dy, %bb.al ], [ %.sroa.0.0.i46, %.preheader.i53 ] ; 2 uses
  %.sroa.26.4148.i57 = phi i64 [ %i.dx, %bb.al ], [ %.sroa.26.0.i45, %.preheader.i53 ]
  %.sroa.084.4147.i58 = phi i64 [ %i.ea, %bb.al ], [ 0, %.preheader.i53 ]
  %i.ds = load i8, ptr %.sroa.0.4149.i56, align 1, !alias.scope !6634, !noalias !6635, !noundef !7
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nsw i32 %i.dt, -48                  ; 2 uses
  %i.dv = icmp ult i32 %i.du, 10
  br i1 %i.dv, label %bb.al, label %.thread

bb.al:                                            ; preds = %.lr.ph150.i55
  %i.dw = mul i64 %.sroa.084.4147.i58, 10
  %i.dx = add nsw i64 %.sroa.26.4148.i57, -1      ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i56, i64 1
  %i.dz = zext nneg i32 %i.du to i64
  %i.ea = add i64 %i.dw, %i.dz                    ; 2 uses
  %.not105.i59 = icmp eq i64 %i.dx, 0
  br i1 %.not105.i59, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62, label %.lr.ph150.i55

.thread:                                          ; preds = %.lr.ph.i30, %bb.ae, %bb.ad, %.lr.ph141.i40, %.preheader111.i47, %bb.ai, %bb.aj, %.lr.ph150.i55, %bb.aa, %bb.aa, %bb.u
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.u ], [ %i.by, %.preheader111.i47 ], [ %i.by, %.lr.ph150.i55 ], [ %i.by, %bb.aa ], [ %i.by, %.lr.ph141.i40 ], [ %i.by, %bb.aa ], [ %i.by, %bb.aj ], [ %i.by, %bb.ai ], [ %i.by, %bb.ad ], [ %i.by, %bb.ae ], [ %i.by, %.lr.ph.i30 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.bw) #40
  %i.eb = load i8, ptr %i.d, align 8, !range !22, !noundef !7
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.ao, label %bb.ap

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62: ; preds = %bb.af, %bb.ag, %bb.ak, %bb.al, %.preheader.i53
  %.sroa.1583.0 = phi i64 [ %i.dr, %bb.ak ], [ %i.dd, %bb.ag ], [ %i.ea, %bb.al ], [ 0, %.preheader.i53 ], [ %i.cu, %bb.af ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 4, i64 noundef %.sroa.1583.0) #39
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62
  %i.ed = phi ptr [ %.ph, %bb.ap ], [ %i.by, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit62 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ee = icmp eq i64 %i.bw, 0
  br i1 %i.ee, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ed, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6636
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65

bb.ao:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bw, ptr %i.c, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.ph, ptr %.sroa.579.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bw, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65

bb.ap:                                            ; preds = %.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !noundef !7
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 4, double noundef %i.eg) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.am

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65: ; preds = %bb.an, %bb.am, %bb.ao
  br i1 %.sroa.01.0.not, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit71, label %bb.ar

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit71: ; preds = %bb.ar, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.eh = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !nonnull !7, !align !14, !noundef !7
  %i.ek = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.eh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ej, ptr noundef nonnull @55, ptr noundef nonnull %i.a) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !6637)
  %.val.i66 = load i64, ptr %i.i, align 8, !range !8, !alias.scope !6637, !noundef !7 ; 2 uses
  %i.el = icmp eq i64 %.val.i66, 0
  br i1 %i.el, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit68, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit71
  %i.em = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i67 = load ptr, ptr %i.em, align 8, !alias.scope !6637, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i67, i64 noundef %.val.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6637
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit68

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit68: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit71, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i1 %i.ek

bb.ar:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit65
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !6638
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit71
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserINtNtCs6JMX4GRUq9U_4core7convert4FromRSReE4fromCsgn1j6LDYpaP_5uu_cp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !6661
  %i.a = tail call noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 504, i64 noundef range(i64 1, 9) 8) #39, !noalias !6661 ; 51 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @105, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 4, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6662
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.c, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr @45, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 9, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.1, align 8, !noalias !6662
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 0, ptr %i.d, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr @106, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i64 10, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.2, align 8, !noalias !6662
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i64 0, ptr %i.e, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store ptr @107, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 7, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.3, align 8, !noalias !6662
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i64 0, ptr %i.f, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr @108, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i64 5, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.4, align 8, !noalias !6662
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i64 0, ptr %i.g, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store ptr @109, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store i64 5, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.5, align 8, !noalias !6662
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store i64 0, ptr %i.h, align 8, !noalias !6662
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  store i64 -1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store ptr @110, ptr %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 3, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store i8 0, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i.i.6, align 8, !noalias !6662
  store i64 7, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 504) #43, !noalias !6663
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRINtNtCs7tKScEop1B6_5alloc3vec3VechENtB6_5Debug3fmtCsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !7, !align !14, !noundef !7 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
end_hunk_1
