Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_cp-502ba788104fae03.uu_cp.beafcee701a397b5-cgu.0?download=true
inline.NumInlined: 2514
inline.NumDeleted: 1152
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RNvCsgn1j6LDYpaP_5uu_cp4copy:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.rf = icmp eq i64 %.sroa.0562.0.copyload563, 0
  br i1 %i.rf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5564.0.copyload566, i64 noundef %.sroa.0562.0.copyload563, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !3236
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit

bb.dk:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i64 %.sroa.0562.0.copyload563, ptr %i.aw, align 8
  %.sroa.5564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5564.0.copyload566, ptr %.sroa.5564.0..sroa_idx, align 8
  %.sroa.8568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.8568.0.copyload570, ptr %.sroa.8568.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aw) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
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
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5550.0.copyload552, i64 noundef %.sroa.0548.0.copyload549, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !3237
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit278

bb.dn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp.exit278, %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !3238)
  %.val.i279 = load i64, ptr %i.be, align 8, !range !8, !alias.scope !3238, !noundef !7 ; 2 uses
  %i.rj = icmp eq i64 %.val.i279, 0
  br i1 %i.rj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i279, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !3238
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
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !3239
  %i.rq = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i195, i64 noundef range(i64 1, 9) 1) #39, !noalias !3239 ; 3 uses
  %i.rr = icmp eq ptr %i.rq, null
  br i1 %i.rr, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1.i.i195) #43, !noalias !3240
  unreachable

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rq, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val1.i.i195, i1 false), !noalias !3241
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
  call void @llvm.experimental.noalias.scope.decl(metadata !3242)
  %.val.i281 = load i64, ptr %i.be, align 8, !range !8, !alias.scope !3242, !noundef !7 ; 2 uses
  %i.rt = icmp eq i64 %.val.i281, 0
  br i1 %i.rt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit283, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i281, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !3242
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
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i285, i64 noundef %.val.i284, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !3243
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit286

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit286: ; preds = %bb.dx, %bb.dy
  call void @llvm.experimental.noalias.scope.decl(metadata !3244)
  %i.ry = load ptr, ptr %i.bx, align 8, !alias.scope !3244, !noundef !7 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECsgn1j6LDYpaP_5uu_cp.exit, label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit286
  call void @llvm.experimental.noalias.scope.decl(metadata !3245)
  %i.sa = atomicrmw add ptr %i.ry, i64 -1 release, align 8, !noalias !3246
  %i.sb = icmp eq i64 %i.sa, 1
  br i1 %i.sb, label %bb.ea, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECsgn1j6LDYpaP_5uu_cp.exit.i.i

bb.ea:                                            ; preds = %bb.dz
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEE9drop_slowB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx) #40
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECsgn1j6LDYpaP_5uu_cp.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECsgn1j6LDYpaP_5uu_cp.exit.i.i: ; preds = %bb.ea, %bb.dz
  %i.sc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3247)
  call void @llvm.experimental.noalias.scope.decl(metadata !3248)
  %i.sd = load ptr, ptr %i.sc, align 8, !alias.scope !3249, !nonnull !7, !noundef !7
  %i.se = atomicrmw add ptr %i.sd, i64 -1 release, align 8, !noalias !3250
  %i.sf = icmp eq i64 %i.se, 1
  br i1 %i.sf, label %bb.eb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECsgn1j6LDYpaP_5uu_cp.exit.i.i

bb.eb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECsgn1j6LDYpaP_5uu_cp.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sc) #40
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECsgn1j6LDYpaP_5uu_cp.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECsgn1j6LDYpaP_5uu_cp.exit.i.i: ; preds = %bb.eb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexNtNtCs6Mg6kPLyuSp_9indicatif5state8BarStateEEECsgn1j6LDYpaP_5uu_cp.exit.i.i
  %i.sg = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3251)
  call void @llvm.experimental.noalias.scope.decl(metadata !3252)
  %i.sh = load ptr, ptr %i.sg, align 8, !alias.scope !3253, !nonnull !7, !noundef !7
  %i.si = atomicrmw add ptr %i.sh, i64 -1 release, align 8, !noalias !3254
  %i.sj = icmp eq i64 %i.si, 1
  br i1 %i.sj, label %bb.ec, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECsgn1j6LDYpaP_5uu_cp.exit

bb.ec:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtCs6Mg6kPLyuSp_9indicatif5state14AtomicPositionEECsgn1j6LDYpaP_5uu_cp.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex5MutexINtNtCs6JMX4GRUq9U_4core6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar6TickerEEE9drop_slowCsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.sg) #40
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6Mg6kPLyuSp_9indicatif12progress_bar11ProgressBarEECsgn1j6LDYpaP_5uu_cp.exit

bb.ed:                                            ; preds = %bb.af
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !noalias !3184, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3184
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.sl, ptr %.sroa.4580.0..sroa_idx, align 8
  br label %bb.dx

bb.ee:                                            ; preds = %bb.af
  %.sroa.8501.0.copyload = load i32, ptr %.sroa.8501.0..sroa_idx, align 8, !noalias !3255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3184
  %i.sm = and i32 %.sroa.8501.0.copyload, 61440
  %i.sn = icmp eq i32 %i.sm, 16384                ; 3 uses
  %.143 = select i1 %i.sn, i64 9, i64 4           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store i64 0, ptr %i.bq, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.483.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.584.0..sroa_idx, align 8
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !3256
  %i.so = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.143, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !3256 ; 16 uses
  %i.sp = icmp eq ptr %i.so, null
  br i1 %i.sp, label %bb.ef, label %thread-pre-split.i320

bb.ef:                                            ; preds = %bb.ee
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.143) #43
  unreachable

thread-pre-split.i320:                            ; preds = %bb.ee
  %.144 = select i1 %i.sn, ptr @116, ptr @91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.so, ptr noundef nonnull align 1 dereferenceable(4) %.144, i64 %.143, i1 false)
  %.pr.i321 = load i8, ptr %i.so, align 1, !alias.scope !3257
  switch i8 %.pr.i321, label %.lr.ph150.i315.preheader [
    i8 43, label %bb.eg
    i8 45, label %.lr.ph141.i300
  ]

.lr.ph150.i315.preheader:                         ; preds = %bb.eg, %thread-pre-split.i320
  %.sroa.0.4149.i316.ph = phi ptr [ %i.so, %thread-pre-split.i320 ], [ %i.sq, %bb.eg ]
  %.sroa.26.4148.i317.ph = phi i64 [ %.143, %thread-pre-split.i320 ], [ %i.sr, %bb.eg ]
  br label %.lr.ph150.i315

bb.eg:                                            ; preds = %thread-pre-split.i320
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 1
  %i.sr = add nsw i64 %.143, -1
  br label %.lr.ph150.i315.preheader

.lr.ph141.i300:                                   ; preds = %thread-pre-split.i320
  %.sroa.0.2140.i301 = getelementptr inbounds nuw i8, ptr %i.so, i64 1
  %6 = load i8, ptr %.sroa.0.2140.i301, align 1, !alias.scope !3257, !noundef !7
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, -48                        ; 2 uses
  %9 = icmp ult i32 %8, 10
  br i1 %9, label %.lr.ph141.i300.1, label %.loopexit667

.lr.ph141.i300.1:                                 ; preds = %.lr.ph141.i300
  %10 = zext nneg i32 %8 to i64
  %.sroa.0.2140.i301.1 = getelementptr inbounds nuw i8, ptr %i.so, i64 2
  %11 = load i8, ptr %.sroa.0.2140.i301.1, align 1, !alias.scope !3257, !noundef !7
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, -48                      ; 2 uses
  %14 = icmp ult i32 %13, 10
  br i1 %14, label %.lr.ph141.i300.2, label %.loopexit667

.lr.ph141.i300.2:                                 ; preds = %.lr.ph141.i300.1
  %15 = mul nsw i64 %10, -10
  %16 = zext nneg i32 %13 to i64
  %17 = sub nsw i64 %15, %16
  %.sroa.0.2140.i301.2 = getelementptr inbounds nuw i8, ptr %i.so, i64 3
  %18 = load i8, ptr %.sroa.0.2140.i301.2, align 1, !alias.scope !3257, !noundef !7
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %19, -48                      ; 2 uses
  %21 = icmp ult i32 %20, 10
  br i1 %21, label %22, label %.loopexit667

22:                                               ; preds = %.lr.ph141.i300.2
  %23 = mul nsw i64 %17, 10
  %24 = zext nneg i32 %20 to i64
  %25 = sub nsw i64 %23, %24                      ; 2 uses
  br i1 %i.sn, label %.lr.ph141.i300.3, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit322

.lr.ph141.i300.3:                                 ; preds = %22
  %.sroa.0.2140.i301.3 = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %26 = load i8, ptr %.sroa.0.2140.i301.3, align 1, !alias.scope !3257, !noundef !7
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %27, -48                      ; 2 uses
  %29 = icmp ult i32 %28, 10
  br i1 %29, label %.lr.ph141.i300.4, label %.loopexit667

.lr.ph141.i300.4:                                 ; preds = %.lr.ph141.i300.3
  %30 = mul nsw i64 %25, 10
  %31 = zext nneg i32 %28 to i64
  %32 = sub nsw i64 %30, %31
  %.sroa.0.2140.i301.4 = getelementptr inbounds nuw i8, ptr %i.so, i64 5
  %33 = load i8, ptr %.sroa.0.2140.i301.4, align 1, !alias.scope !3257, !noundef !7
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, -48                      ; 2 uses
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %.lr.ph141.i300.preheader, label %.loopexit667

.lr.ph141.i300.preheader:                         ; preds = %.lr.ph141.i300.4
  %37 = mul i64 %32, 10
  %38 = zext nneg i32 %35 to i64
  %39 = sub i64 %37, %38
  %.sroa.0.2140.i301.5 = getelementptr inbounds nuw i8, ptr %i.so, i64 6
  %40 = load i8, ptr %.sroa.0.2140.i301.5, align 1, !alias.scope !3257, !noundef !7
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, -48                      ; 2 uses
  %43 = icmp ult i32 %42, 10
  br i1 %43, label %.lr.ph141.i300.a, label %.loopexit667

.lr.ph141.i300.a:                                 ; preds = %.lr.ph141.i300.preheader
  %44 = mul i64 %39, 10
  %45 = zext nneg i32 %42 to i64
  %46 = sub i64 %44, %45
  %.sroa.0.2140.i301.a = getelementptr inbounds nuw i8, ptr %i.so, i64 7
  %i.ss = load i8, ptr %.sroa.0.2140.i301.a, align 1, !alias.scope !3257, !noundef !7
  %i.st = zext i8 %i.ss to i32
  %i.su = add nsw i32 %i.st, -48                  ; 2 uses
  %i.sv = icmp ult i32 %i.su, 10
  br i1 %i.sv, label %bb.eh, label %.loopexit667

bb.eh:                                            ; preds = %.lr.ph141.i300.a
  %i.sw = mul i64 %46, 10
  %i.sx = zext nneg i32 %i.su to i64
  %i.sy = sub i64 %i.sw, %i.sx
  %.sroa.0.2140.i301.7 = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %47 = load i8, ptr %.sroa.0.2140.i301.7, align 1, !alias.scope !3257, !noundef !7
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %48, -48                      ; 2 uses
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %.loopexit667

51:                                               ; preds = %bb.eh
  %52 = mul i64 %i.sy, 10
  %53 = zext nneg i32 %49 to i64
  %54 = sub i64 %52, %53
  br label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit322

.lr.ph150.i315:                                   ; preds = %.lr.ph150.i315.preheader, %bb.ei
  %.sroa.0.4149.i316 = phi ptr [ %i.tf, %bb.ei ], [ %.sroa.0.4149.i316.ph, %.lr.ph150.i315.preheader ] ; 2 uses
  %.sroa.26.4148.i317 = phi i64 [ %i.te, %bb.ei ], [ %.sroa.26.4148.i317.ph, %.lr.ph150.i315.preheader ]
  %.sroa.084.4147.i318 = phi i64 [ %i.th, %bb.ei ], [ 0, %.lr.ph150.i315.preheader ]
  %i.sz = load i8, ptr %.sroa.0.4149.i316, align 1, !alias.scope !3257, !noundef !7
  %i.ta = zext i8 %i.sz to i32
  %i.tb = add nsw i32 %i.ta, -48                  ; 2 uses
  %i.tc = icmp ult i32 %i.tb, 10
  br i1 %i.tc, label %bb.ei, label %.loopexit667

bb.ei:                                            ; preds = %.lr.ph150.i315
  %i.td = mul i64 %.sroa.084.4147.i318, 10
  %i.te = add nsw i64 %.sroa.26.4148.i317, -1     ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i316, i64 1
  %i.tg = zext nneg i32 %i.tb to i64
  %i.th = add i64 %i.td, %i.tg                    ; 2 uses
  %.not105.i319 = icmp eq i64 %i.te, 0
  br i1 %.not105.i319, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit322, label %.lr.ph150.i315

.loopexit667:                                     ; preds = %.lr.ph141.i300, %.lr.ph141.i300.1, %.lr.ph141.i300.2, %.lr.ph141.i300.3, %.lr.ph141.i300.4, %.lr.ph141.i300.preheader, %.lr.ph141.i300.a, %bb.eh, %.lr.ph150.i315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.so, i64 noundef %.143) #40
  %i.ti = load i8, ptr %i.bp, align 8, !range !22, !noundef !7
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.ey, label %bb.ez

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit322: ; preds = %22, %51, %bb.ei
  %.sroa.12506.0 = phi i64 [ %i.th, %bb.ei ], [ %54, %51 ], [ %25, %22 ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 9, i64 noundef %.sroa.12506.0) #39
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ez, %bb.ey, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit322
  %.sroa.049.0 = phi i1 [ false, %bb.ey ], [ true, %bb.ez ], [ true, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit322 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store i64 1, ptr %i.bn, align 8
  store ptr %i.ir, ptr %.sroa.489.0..sroa_idx, align 8
  store i64 %i.it, ptr %.sroa.590.0..sroa_idx, align 8
  store i8 1, ptr %i.gn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3258
  store i64 0, ptr %i.i, align 8, !noalias !3258
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i323, align 8, !noalias !3258
  store i64 0, ptr %.sroa.5.0..sroa_idx.i324, align 8, !noalias !3258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3258
  store i64 1610612768, ptr %i.go, align 8, !noalias !3258
  store ptr %i.i, ptr %i.h, align 8, !noalias !3258
  store ptr @264, ptr %i.gp, align 8, !noalias !3258
  %i.tk = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #39, !noalias !3259
  br i1 %i.tk, label %bb.ek, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp.exit325, !prof !10

bb.ek:                                            ; preds = %bb.ej
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @265, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #41, !noalias !3259
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp.exit325: ; preds = %bb.ej
  %.sroa.0507.0.copyload508 = load i64, ptr %i.i, align 8, !noalias !3260 ; 3 uses
  %.sroa.5509.0.copyload511 = load ptr, ptr %.sroa.4.0..sroa_idx.i323, align 8, !noalias !3260, !nonnull !7, !noundef !7 ; 8 uses
  %.sroa.8513.0.copyload515 = load i64, ptr %.sroa.5.0..sroa_idx.i324, align 8, !noalias !3260 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  switch i64 %.sroa.8513.0.copyload515, label %thread-pre-split.i357 [
    i64 0, label %.loopexit660
    i64 1, label %bb.el
  ]

bb.el:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp.exit325
  %i.tl = load i8, ptr %.sroa.5509.0.copyload511, align 1, !alias.scope !3261, !noundef !7 ; 2 uses
  switch i8 %i.tl, label %bb.em [
    i8 43, label %.loopexit660
    i8 45, label %.loopexit660
  ]

thread-pre-split.i357:                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp.exit325
  %.pr.i358 = load i8, ptr %.sroa.5509.0.copyload511, align 1, !alias.scope !3261
  br label %bb.em

bb.em:                                            ; preds = %thread-pre-split.i357, %bb.el
  %i.tm = phi i8 [ %.pr.i358, %thread-pre-split.i357 ], [ %i.tl, %bb.el ]
  switch i8 %i.tm, label %bb.et [
    i8 43, label %bb.en
    i8 45, label %bb.eo
  ]

bb.en:                                            ; preds = %bb.em
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.5509.0.copyload511, i64 1
  %i.to = add nsw i64 %.sroa.8513.0.copyload515, -1
  br label %bb.et

bb.eo:                                            ; preds = %bb.em
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.5509.0.copyload511, i64 1 ; 2 uses
  %i.tq = add nsw i64 %.sroa.8513.0.copyload515, -1 ; 3 uses
  %i.tr = icmp samesign ult i64 %.sroa.8513.0.copyload515, 17
  br i1 %i.tr, label %.preheader114.i335, label %.lr.ph.i327

.preheader114.i335:                               ; preds = %bb.eo
  %.not103137.i336 = icmp eq i64 %i.tq, 0
  br i1 %.not103137.i336, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.lr.ph141.i337

.lr.ph.i327:                                      ; preds = %bb.eo, %bb.er
  %.sroa.0.1136.i328 = phi ptr [ %i.ts, %bb.er ], [ %i.tp, %bb.eo ] ; 2 uses
  %.sroa.26.1135.i329 = phi i64 [ %i.tt, %bb.er ], [ %i.tq, %bb.eo ]
  %.sroa.084.0134.i330 = phi i64 [ %i.ue, %bb.er ], [ 0, %bb.eo ]
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i328, i64 1
  %i.tt = add nsw i64 %.sroa.26.1135.i329, -1     ; 2 uses
  %i.tu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i330, i64 10) ; 2 uses
  %i.tv = extractvalue { i64, i1 } %i.tu, 0
  %i.tw = extractvalue { i64, i1 } %i.tu, 1
  br i1 %i.tw, label %.loopexit660, label %bb.ep, !prof !10

bb.ep:                                            ; preds = %.lr.ph.i327
  %i.tx = load i8, ptr %.sroa.0.1136.i328, align 1, !alias.scope !3261, !noundef !7
  %i.ty = zext i8 %i.tx to i32
  %i.tz = add nsw i32 %i.ty, -48                  ; 2 uses
  %i.ua = icmp ult i32 %i.tz, 10
  br i1 %i.ua, label %bb.eq, label %.loopexit660

bb.eq:                                            ; preds = %bb.ep
  %i.ub = zext nneg i32 %i.tz to i64
  %i.uc = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.tv, i64 %i.ub) ; 2 uses
  %i.ud = extractvalue { i64, i1 } %i.uc, 1
  br i1 %i.ud, label %.loopexit660, label %bb.er, !prof !10

bb.er:                                            ; preds = %bb.eq
  %i.ue = extractvalue { i64, i1 } %i.uc, 0       ; 2 uses
  %.not102.i332 = icmp eq i64 %i.tt, 0
  br i1 %.not102.i332, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.lr.ph.i327

.lr.ph141.i337:                                   ; preds = %.preheader114.i335, %bb.es
  %.sroa.0.2140.i338 = phi ptr [ %i.ul, %bb.es ], [ %i.tp, %.preheader114.i335 ] ; 2 uses
  %.sroa.26.2139.i339 = phi i64 [ %i.uk, %bb.es ], [ %i.tq, %.preheader114.i335 ]
  %.sroa.084.2138.i340 = phi i64 [ %i.un, %bb.es ], [ 0, %.preheader114.i335 ]
  %i.uf = load i8, ptr %.sroa.0.2140.i338, align 1, !alias.scope !3261, !noundef !7
  %i.ug = zext i8 %i.uf to i32
  %i.uh = add nsw i32 %i.ug, -48                  ; 2 uses
  %i.ui = icmp ult i32 %i.uh, 10
  br i1 %i.ui, label %bb.es, label %.loopexit660

bb.es:                                            ; preds = %.lr.ph141.i337
  %i.uj = mul i64 %.sroa.084.2138.i340, 10
  %i.uk = add nsw i64 %.sroa.26.2139.i339, -1     ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i338, i64 1
  %i.um = zext nneg i32 %i.uh to i64
  %i.un = sub i64 %i.uj, %i.um                    ; 2 uses
  %.not103.i341 = icmp eq i64 %i.uk, 0
  br i1 %.not103.i341, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.lr.ph141.i337

bb.et:                                            ; preds = %bb.en, %bb.em
  %.sroa.26.0.i342 = phi i64 [ %i.to, %bb.en ], [ %.sroa.8513.0.copyload515, %bb.em ] ; 4 uses
  %.sroa.0.0.i343 = phi ptr [ %i.tn, %bb.en ], [ %.sroa.5509.0.copyload511, %bb.em ] ; 2 uses
  %i.uo = icmp samesign ult i64 %.sroa.26.0.i342, 16
  br i1 %i.uo, label %.preheader.i350, label %.preheader111.i344

.preheader.i350:                                  ; preds = %bb.et
  %.not105146.i351 = icmp eq i64 %.sroa.26.0.i342, 0
  br i1 %.not105146.i351, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.lr.ph150.i352

.preheader111.i344:                               ; preds = %bb.et, %bb.ew
  %.sroa.0.3145.i345 = phi ptr [ %i.up, %bb.ew ], [ %.sroa.0.0.i343, %bb.et ] ; 2 uses
  %.sroa.26.3144.i346 = phi i64 [ %i.uq, %bb.ew ], [ %.sroa.26.0.i342, %bb.et ]
  %.sroa.084.3143.i347 = phi i64 [ %i.vb, %bb.ew ], [ 0, %bb.et ]
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i345, i64 1
  %i.uq = add nsw i64 %.sroa.26.3144.i346, -1     ; 2 uses
  %i.ur = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i347, i64 10) ; 2 uses
  %i.us = extractvalue { i64, i1 } %i.ur, 0
  %i.ut = extractvalue { i64, i1 } %i.ur, 1
  br i1 %i.ut, label %.loopexit660, label %bb.eu, !prof !10

bb.eu:                                            ; preds = %.preheader111.i344
  %i.uu = load i8, ptr %.sroa.0.3145.i345, align 1, !alias.scope !3261, !noundef !7
  %i.uv = zext i8 %i.uu to i32
  %i.uw = add nsw i32 %i.uv, -48                  ; 2 uses
  %i.ux = icmp ult i32 %i.uw, 10
  br i1 %i.ux, label %bb.ev, label %.loopexit660

bb.ev:                                            ; preds = %bb.eu
  %i.uy = zext nneg i32 %i.uw to i64
  %i.uz = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.us, i64 %i.uy) ; 2 uses
  %i.va = extractvalue { i64, i1 } %i.uz, 1
  br i1 %i.va, label %.loopexit660, label %bb.ew, !prof !10

bb.ew:                                            ; preds = %bb.ev
  %i.vb = extractvalue { i64, i1 } %i.uz, 0       ; 2 uses
  %.not104.i349 = icmp eq i64 %i.uq, 0
  br i1 %.not104.i349, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.preheader111.i344

.lr.ph150.i352:                                   ; preds = %.preheader.i350, %bb.ex
  %.sroa.0.4149.i353 = phi ptr [ %i.vi, %bb.ex ], [ %.sroa.0.0.i343, %.preheader.i350 ] ; 2 uses
  %.sroa.26.4148.i354 = phi i64 [ %i.vh, %bb.ex ], [ %.sroa.26.0.i342, %.preheader.i350 ]
  %.sroa.084.4147.i355 = phi i64 [ %i.vk, %bb.ex ], [ 0, %.preheader.i350 ]
  %i.vc = load i8, ptr %.sroa.0.4149.i353, align 1, !alias.scope !3261, !noundef !7
  %i.vd = zext i8 %i.vc to i32
  %i.ve = add nsw i32 %i.vd, -48                  ; 2 uses
  %i.vf = icmp ult i32 %i.ve, 10
  br i1 %i.vf, label %bb.ex, label %.loopexit660

bb.ex:                                            ; preds = %.lr.ph150.i352
  %i.vg = mul i64 %.sroa.084.4147.i355, 10
  %i.vh = add nsw i64 %.sroa.26.4148.i354, -1     ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i353, i64 1
  %i.vj = zext nneg i32 %i.ve to i64
  %i.vk = add i64 %i.vg, %i.vj                    ; 2 uses
  %.not105.i356 = icmp eq i64 %i.vh, 0
  br i1 %.not105.i356, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359, label %.lr.ph150.i352

bb.ey:                                            ; preds = %.loopexit667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store i64 %.143, ptr %i.bo, align 8
  store ptr %i.so, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %.143, ptr %.sroa.8503.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 9, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bo) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.ej

bb.ez:                                            ; preds = %.loopexit667
  %i.vl = load double, ptr %i.gm, align 8, !noundef !7
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 9, double noundef %i.vl) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.ej

.loopexit660:                                     ; preds = %.lr.ph.i327, %bb.eq, %bb.ep, %.lr.ph141.i337, %.preheader111.i344, %bb.eu, %bb.ev, %.lr.ph150.i352, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgn1j6LDYpaP_5uu_cp.exit325, %bb.el, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5509.0.copyload511, i64 noundef %.sroa.8513.0.copyload515) #40
  %i.vm = load i8, ptr %i.bm, align 8, !range !22, !noundef !7
  %i.vn = trunc nuw i8 %i.vm to i1
  br i1 %i.vn, label %bb.fc, label %bb.fd

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit359: ; preds = %bb.er, %bb.es, %bb.ew, %bb.ex, %.preheader.i350, %.preheader114.i335
end_hunk_0
