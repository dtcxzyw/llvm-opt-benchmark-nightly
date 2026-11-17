Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.12?download=true
inline.NumInlined: 2324
inline.NumDeleted: 894
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNSNvYNCINvMs1_NtCs7uMgTmySp6A_15crossbeam_utils6threadNtBd_19ScopedThreadBuilder5spawnNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB1x_9ParWalker4walkNtNtNtB1z_8commands3fix16FixEncodingStateuNCNvB2i_17exec_fix_encoding0NCB2Y_s_0NCB2Y_s0_0NCB2Y_s1_0NCB2Y_s2_0E00uE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB1z_:bb.a
  %i.dg = load <2 x i32>, ptr %.sroa.5.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !3936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3936
  store ptr %i.cr, ptr %i.g, align 8, !alias.scope !3942, !noalias !3936
  store i64 %i.ct, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !alias.scope !3942, !noalias !3936
  store ptr %.sroa.5.sroa.0.0.copyload21.i.i.i, ptr %.sroa.5.0..sroa_idx4.i.i.i, align 8, !alias.scope !3942, !noalias !3936
  store <2 x i16> %i.df, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx4.sroa_idx.i.i.i, align 8, !alias.scope !3942, !noalias !3936
  store <2 x i32> %i.dg, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx4.sroa_idx.i.i.i, align 4, !alias.scope !3942, !noalias !3936
  store i32 %.sroa.5.sroa.10.0.copyload35.i.i.i, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx4.sroa_idx.i.i.i, align 4, !alias.scope !3942, !noalias !3936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3936
  %i.dh = load ptr, ptr %i.at, align 8, !alias.scope !3935, !noalias !3920, !nonnull !5, !noundef !5
  %i.di = load i64, ptr %i.au, align 8, !alias.scope !3935, !noalias !3920, !noundef !5
  store ptr %i.dh, ptr %i.f, align 8, !noalias !3936
  store i64 %i.di, ptr %i.av, align 8, !noalias !3936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3936
  store ptr %i.g, ptr %i.e, align 8, !noalias !3936
  store ptr @_RNvXs4_NtCs1jzQjjwemIA_5yansi5paintINtB5_7PaintedReENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCskIqAKC4t9Ft_2yr, ptr %.sroa.420.0..sroa_idx.i.i.i, align 8, !noalias !3936
  store ptr %i.f, ptr %i.aw, align 8, !noalias !3936
  store ptr @_RNvXs1b_NtCsG258MDvU3F_3std4pathNtB6_7DisplayNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !3936
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @107, ptr noundef nonnull %i.e)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit.i.i.i unwind label %bb.af, !noalias !3918

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !3936
  store i64 0, ptr %i.i, align 8, !noalias !3936
  invoke void @_RNvMs2_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4sendB13_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.ao unwind label %bb.af, !noalias !3918

bb.ao:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3936
  %i.dj = load i64, ptr %i.j, align 8, !range !20, !noalias !3936, !noundef !5
  %.not32.i.i.i = icmp eq i64 %i.dj, -1
  br i1 %.not32.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !3936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3936
  %i.dk = invoke noundef nonnull ptr @_RNvXs_NtCscK5W4trzgIe_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEE4fromB2d_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.az unwind label %bb.af, !noalias !3918

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3936
  %i.dl = load i64, ptr %i.k, align 8, !range !17, !alias.scope !3943, !noalias !3936, !noundef !5
  %i.dm = icmp eq i64 %i.dl, -1
  br i1 %i.dm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit48.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i44.i.i.i unwind label %bb.as, !noalias !3918

bb.as:                                            ; preds = %bb.ar
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i.i unwind label %bb.at, !noalias !3918

bb.at:                                            ; preds = %bb.as
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3918
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i44.i.i.i: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit48.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3918

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit48.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i44.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3936
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.av unwind label %bb.au, !noalias !3918

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit48.i.i.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body50.i.i.i unwind label %bb.aw, !noalias !3918

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit48.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i unwind label %bb.q, !noalias !3918

bb.aw:                                            ; preds = %bb.au
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3918
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3936
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit58.i.i.i unwind label %bb.ax, !noalias !3918

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body14.i.i unwind label %bb.ay, !noalias !3918

bb.ay:                                            ; preds = %bb.ax
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3918
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit58.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit56.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i
  %i.dt = phi ptr [ %.sroa.0.2.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit56.i.i.i ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i ] ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.bg unwind label %.thread.i.i, !noalias !3918

bb.az:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3936
  br label %bb.aj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3936
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.bb unwind label %bb.ba, !noalias !3918

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit.i.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body50.i.i.i unwind label %bb.bc, !noalias !3918

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit56.i.i.i unwind label %bb.q, !noalias !3918

bb.bc:                                            ; preds = %bb.ba
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3918
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit56.i.i.i: ; preds = %bb.bb, %bb.t
  %.sroa.0.2.i.i.i = phi ptr [ %i.by, %bb.t ], [ %.sroa.0.0.i.i.i, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3936
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit58.i.i.i unwind label %bb.bd, !noalias !3918

bb.bd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit56.i.i.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body14.i.i unwind label %bb.be, !noalias !3918

bb.be:                                            ; preds = %bb.bd
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3918
  unreachable

bb.bf:                                            ; preds = %bb.af, %.body.i.i.i, %.body50.i.i.i
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3918
  unreachable

bb.bg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit58.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3920
  store ptr %i.dt, ptr %i.r, align 8, !noalias !3920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3920
  %i.dz = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
          to label %bb.bi unwind label %bb.bh, !noalias !3918 ; 2 uses

.thread.i.i:                                      ; preds = %bb.bp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit58.i.i.i, %bb.o, %bb.f
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

bb.bh:                                            ; preds = %bb.bo, %bb.bl, %bb.bg
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.dt, null
  br i1 %.not5.i.i, label %.body14.i.i, label %bb.by

bb.bi:                                            ; preds = %bb.bg
  %i.ea = extractvalue { i64, i32 } %i.dz, 0
  %i.eb = extractvalue { i64, i32 } %i.dz, 1      ; 2 uses
  %i.ec = load i8, ptr %i.ay, align 8, !range !15, !alias.scope !3919, !noalias !3918, !noundef !5
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ee = load i8, ptr %i.az, align 1, !alias.scope !3919, !noalias !3918, !noundef !5 ; 2 uses
  %i.ef = icmp ult i8 %i.ee, 100
  br i1 %i.ef, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bo, %bb.bn, %bb.bj, %bb.bi
  %.not4.i.i = icmp eq ptr %i.dt, null
  br i1 %.not4.i.i, label %bb.bq, label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  %i.eg = uitofp nneg i8 %i.ee to double          ; 2 uses
  %i.eh = fsub nnan double 1.000000e+02, %i.eg
  %i.ei = fdiv double %i.eh, %i.eg
  %i.ej = uitofp i64 %i.ea to double
  %i.ek = icmp ult i32 %i.eb, 1000000000
  call void @llvm.assume(i1 %i.ek)
  %i.el = uitofp nneg i32 %i.eb to double
  %i.em = fdiv nnan double %i.el, 1.000000e+09
  %i.en = fadd nnan double %i.em, %i.ej
  %i.eo = fmul double %i.en, %i.ei
  %i.ep = invoke fastcc { i64, i32 } @_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration13from_secs_f64(double noundef %i.eo)
          to label %bb.bm unwind label %bb.bh, !noalias !3918 ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.eq = extractvalue { i64, i32 } %i.ep, 0      ; 2 uses
  %i.er = extractvalue { i64, i32 } %i.ep, 1      ; 3 uses
  %i.es = icmp eq i64 %i.eq, 0
  br i1 %i.es, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.et = icmp ult i32 %i.er, 1000000000
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp eq i32 %i.er, 0
  br i1 %i.eu, label %bb.bk, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9functions5sleep(i64 noundef %i.eq, i32 noundef %i.er)
          to label %bb.bk unwind label %bb.bh, !noalias !3918

bb.bp:                                            ; preds = %bb.bk
  invoke fastcc void @_RNCNvNtNtCskIqAKC4t9Ft_2yr8commands3fix17exec_fix_encodings2_0B7_(ptr noundef nonnull %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.y)
          to label %bb.bq unwind label %.thread.i.i

bb.bq:                                            ; preds = %bb.bp, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3920
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i.i.i unwind label %bb.br, !noalias !3918

bb.br:                                            ; preds = %bb.bq
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body17.i.i unwind label %bb.bs, !noalias !3918

bb.bs:                                            ; preds = %bb.br
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3918
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %bb.bq
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i.i unwind label %bb.d, !noalias !3918

bb.bt:                                            ; preds = %bb.m, %bb.k
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bu:                                            ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3920
  call void @llvm.experimental.noalias.scope.decl(metadata !3944)
  call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  %i.ey = load ptr, ptr %i.ac, align 8, !alias.scope !3946, !noalias !3918, !nonnull !5, !noundef !5
  %i.ez = atomicrmw add ptr %i.ey, i64 -1 release, align 8, !noalias !3947
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands3fix16FixEncodingStateEEB1f_.exit22.i.i

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands3fix16FixEncodingStateE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #39
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands3fix16FixEncodingStateEEB1f_.exit22.i.i unwind label %bb.bw, !noalias !3918

bb.bw:                                            ; preds = %bb.bv
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %.body.i unwind label %bb.bx, !noalias !3918

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands3fix16FixEncodingStateEEB1f_.exit22.i.i: ; preds = %bb.bv, %bb.bu
  invoke void @_RNvXs3_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %_RNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB9_9ParWalker4walkNtNtNtBb_8commands3fix16FixEncodingStateuNCNvBT_17exec_fix_encoding0NCB1y_s_0NCB1y_s0_0NCB1y_s1_0NCB1y_s2_0E00Bb_.exit.i unwind label %bb.cb, !noalias !3918

bb.bx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands3fix16FixEncodingStateEEB1f_.exit.i.i, %bb.by, %bb.bw, %.body14.i.i, %.body17.i.i, %bb.b
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3918
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3920
  br label %bb.c

bb.by:                                            ; preds = %bb.bh
  invoke void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.body14.i.i unwind label %bb.bx, !noalias !3918

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands3fix16FixEncodingStateEEB1f_.exit.i.i: ; preds = %bb.b, %.body.i.i
  invoke void @_RNvXs3_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %.body.i unwind label %bb.bx, !noalias !3918

_RNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB9_9ParWalker4walkNtNtNtBb_8commands3fix16FixEncodingStateuNCNvBT_17exec_fix_encoding0NCB1y_s_0NCB1y_s0_0NCB1y_s1_0NCB1y_s2_0E00Bb_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands3fix16FixEncodingStateEEB1f_.exit22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3918
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !3918, !nonnull !5, !noundef !5 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 3 uses
  %i.fg = cmpxchg ptr %i.ff, i32 0, i32 1 acquire monotonic, align 4, !noalias !3948
  %i.fh = extractvalue { i32, i1 } %i.fg, 1
  br i1 %i.fh, label %.noexc.i, label %bb.bz, !prof !8

bb.bz:                                            ; preds = %_RNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB9_9ParWalker4walkNtNtNtBb_8commands3fix16FixEncodingStateuNCNvBT_17exec_fix_encoding0NCB1y_s_0NCB1y_s0_0NCB1y_s1_0NCB1y_s2_0E00Bb_.exit.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.ff)
          to label %.noexc.i unwind label %bb.cb, !noalias !3918

.noexc.i:                                         ; preds = %bb.bz, %_RNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB9_9ParWalker4walkNtNtNtBb_8commands3fix16FixEncodingStateuNCNvBT_17exec_fix_encoding0NCB1y_s_0NCB1y_s0_0NCB1y_s1_0NCB1y_s2_0E00Bb_.exit.i
  %i.fi = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3948
  %i.fj = and i64 %i.fi, 9223372036854775807
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i, label %bb.ca, !prof !8

bb.ca:                                            ; preds = %.noexc.i
  %i.fl = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #39
          to label %.noexc8.i unwind label %bb.cb, !noalias !3918

.noexc8.i:                                        ; preds = %bb.ca
  %i.fm = xor i1 %i.fl, true
  %i.fn = zext i1 %i.fm to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i: ; preds = %.noexc8.i, %.noexc.i
  %.sroa.01.0.i.i.i = phi i8 [ %i.fn, %.noexc8.i ], [ 0, %.noexc.i ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %i.fp = load atomic i8, ptr %i.fo monotonic, align 1, !noalias !3948
  %.not.i.i7.i = icmp ne i8 %i.fp, 0
  invoke void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCskKLDkoKarTP_4core6option6OptionuEENCNvMs9_BZ_BW_3new0ECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i1 noundef zeroext %.not.i.i7.i, i8 noundef %.sroa.01.0.i.i.i, ptr noundef nonnull align 4 %i.ff)
          to label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEE4lockCskIqAKC4t9Ft_2yr.exit.i unwind label %bb.cb, !noalias !3918

bb.cb:                                            ; preds = %bb.ck, %bb.ci, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i, %bb.ca, %bb.bz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands3fix16FixEncodingStateEEB1f_.exit22.i.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cd, %bb.cb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands3fix16FixEncodingStateEEB1f_.exit.i.i, %bb.bw
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn8.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands3fix16FixEncodingStateEEB1f_.exit.i.i ], [ %i.fq, %bb.cb ], [ %i.fb, %bb.bw ], [ %i.fy, %bb.cd ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7uMgTmySp6A_15crossbeam_utils6thread5ScopeECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(16) %i.z) #35
          to label %bb.cl unwind label %bb.cq, !noalias !3918

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEE4lockCskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3949)
  %i.fr = load i64, ptr %i.x, align 8, !range !9, !alias.scope !3949, !noalias !3918, !noundef !5
  %i.fs = trunc nuw i64 %i.fr to i1
  br i1 %i.fs, label %bb.cc, label %bb.cg, !prof !11

bb.cc:                                            ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEE4lockCskIqAKC4t9Ft_2yr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3950
  %i.ft = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !3949, !noalias !3918, !nonnull !5, !align !25, !noundef !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.fw = load i8, ptr %i.fv, align 8, !range !15, !alias.scope !3949, !noalias !3918, !noundef !5
  store ptr %i.fu, ptr %i.w, align 8, !noalias !3950
  %i.fx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i8 %i.fw, ptr %i.fx, align 8, !noalias !3950
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 43, ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #40
          to label %bb.ce unwind label %bb.cd, !noalias !3951

bb.cd:                                            ; preds = %bb.cc
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionuEEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #35
          to label %.body.i unwind label %bb.cf, !noalias !3951

bb.ce:                                            ; preds = %bb.cc
  unreachable

bb.cf:                                            ; preds = %bb.cd
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !3951
  unreachable

bb.cg:                                            ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEE4lockCskIqAKC4t9Ft_2yr.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !3949, !noalias !3918, !nonnull !5, !align !25, !noundef !5 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.gd = load i8, ptr %i.gc, align 8, !range !15, !alias.scope !3949, !noalias !3918, !noundef !5
  %i.ge = trunc nuw i8 %i.gd to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3918
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 5
  store i8 1, ptr %i.gf, align 1, !noalias !3918
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  br i1 %i.ge, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gh = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3918
  %i.gi = and i64 %i.gh, 9223372036854775807
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ci, !prof !8

bb.ci:                                            ; preds = %bb.ch
end_hunk_0
begin_hunk_1_@_RNSNvYNCINvMs1_NtCs7uMgTmySp6A_15crossbeam_utils6threadNtBd_19ScopedThreadBuilder5spawnNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB1x_9ParWalker4walkNtNtNtB1z_8commands4scan9ScanStateNtNtCs7gfv9tzbXmh_6yara_x7scanner7ScannerNCNvB2i_9exec_scans2_0NCB3v_s3_0NCB3v_s4_0NCB3v_s5_0NCB3v_s6_0E00uE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB1z_:bb.a
  %i.lc = invoke noundef zeroext i1 @_RNvMNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.lb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 6)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4119

bb.dc:                                            ; preds = %bb.db
  br i1 %i.lc, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 120
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !4119, !nonnull !5, !noundef !5 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 128
  %i.lg = load i64, ptr %i.lf, align 8, !noalias !4119, !noundef !5 ; 3 uses
  %i.lh = icmp ult i64 %i.lg, 2305843009213693952
  call void @llvm.assume(i1 %i.lh)
  %i.li = getelementptr inbounds nuw i8, ptr %i.kz, i64 2080
  %i.lj = load i64, ptr %i.li, align 8, !noalias !4119, !noundef !5 ; 2 uses
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !4119
  %i.lk = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 169) 48, i64 noundef range(i64 1, 9) 8) #28, !noalias !4119 ; 8 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %.invoke.i.i.i, label %bb.df, !prof !14

.invoke.i.i.i:                                    ; preds = %bb.dh, %bb.dd
  %i.lm = phi i64 [ 48, %bb.dd ], [ 56, %bb.dh ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.lm) #40
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4119

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4118
  invoke void @_RNvMs7_NtCs7gfv9tzbXmh_6yara_x7scannerNtB5_11ScanResults18non_matching_rules(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4119

bb.df:                                            ; preds = %bb.dd
  %i.ln = sub i64 %i.lg, %i.lj
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.lg
  store ptr %i.kz, ptr %i.lk, align 8, !noalias !4119
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store ptr %i.le, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4119
  %.sroa.565.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store ptr %i.lo, ptr %.sroa.565.0..sroa_idx.i.i.i, align 8, !noalias !4119
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  store i64 %i.ln, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !4119
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  store i64 %i.lj, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !4119
  %.sroa.866.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  store i8 0, ptr %.sroa.866.0..sroa_idx.i.i.i, align 8, !noalias !4119
  br label %bb.dg

bb.dg:                                            ; preds = %bb.di, %bb.df
  %.sink102.i.i.i = phi ptr [ %i.ly, %bb.di ], [ %i.lk, %bb.df ]
  %.sink.i.i.i = phi ptr [ @116, %bb.di ], [ @115, %bb.df ]
  store ptr %.sink102.i.i.i, ptr %i.i, align 8, !noalias !4118
  store ptr %.sink.i.i.i, ptr %i.ei, align 8, !noalias !4118
  %i.lp = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.lq = atomicrmw add ptr %i.lp, i64 1 monotonic, align 8, !noalias !4117 ; 0 uses
  %i.lr = load ptr, ptr %i.ej, align 8, !alias.scope !4116, !noalias !4077, !nonnull !5, !noundef !5
  %i.ls = load ptr, ptr %i.ek, align 8, !alias.scope !4116, !noalias !4077, !nonnull !5, !align !6, !noundef !5
  %i.lt = load ptr, ptr %i.do, align 8, !alias.scope !4114, !noalias !4079, !nonnull !5, !noundef !5
  %i.lu = load i64, ptr %i.dp, align 8, !alias.scope !4114, !noalias !4079, !noundef !5
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8, !invariant.load !5, !noalias !4119, !nonnull !5
  %i.lx = invoke noundef zeroext i1 %i.lw(ptr noundef nonnull %i.lr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lt, i64 noundef %i.lu, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @117, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.al)
          to label %bb.dk unwind label %bb.dj, !noalias !4119

bb.dh:                                            ; preds = %bb.de
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !4119
  %i.ly = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 169) 56, i64 noundef range(i64 1, 9) 8) #28, !noalias !4119 ; 3 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %.invoke.i.i.i, label %bb.di, !prof !14

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ly, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !4119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4118
  br label %bb.dg

bb.dj:                                            ; preds = %bb.dg
  %i.ma = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_EECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #35
          to label %.body18.i.i.i unwind label %bb.ay, !noalias !4119

bb.dk:                                            ; preds = %bb.dg
  br i1 %i.lx, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.mb = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.mc = atomicrmw add ptr %i.mb, i64 1 monotonic, align 8, !noalias !4117 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !4142)
  %i.md = load ptr, ptr %i.ei, align 8, !alias.scope !4142, !noalias !4118, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.me = load ptr, ptr %i.md, align 8, !invariant.load !5, !noalias !4143 ; 2 uses
  %.not.i52.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not.i52.i.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mf = load ptr, ptr %i.i, align 8, !alias.scope !4142, !noalias !4118, !nonnull !5, !noundef !5 ; 2 uses
  invoke void %i.me(ptr noundef nonnull %i.mf)
          to label %bb.do unwind label %bb.dq, !noalias !4143

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !range !16, !invariant.load !5, !noalias !4143 ; 2 uses
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_EECskIqAKC4t9Ft_2yr.exit.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.val2.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !4142, !noalias !4118, !nonnull !5, !noundef !5
  %i.mj = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mk = load i64, ptr %i.mj, align 8, !range !7, !invariant.load !5, !noalias !4143
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.mh, i64 noundef range(i64 1, 536870913) %i.mk) #28, !noalias !4143
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_EECskIqAKC4t9Ft_2yr.exit.i.i.i

bb.dq:                                            ; preds = %bb.dn
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mn = load i64, ptr %i.mm, align 8, !range !16, !invariant.load !5, !noalias !4143 ; 2 uses
  %i.mo = icmp eq i64 %i.mn, 0
  br i1 %i.mo, label %.body18.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.mp = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mq = load i64, ptr %i.mp, align 8, !range !7, !invariant.load !5, !noalias !4143
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mf, i64 noundef range(i64 1, -9223372036854775808) %i.mn, i64 noundef range(i64 1, 536870913) %i.mq) #28, !noalias !4143
  br label %.body18.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_EECskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %bb.dp, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4118
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i.i.i unwind label %bb.ds, !noalias !4119

bb.ds:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_EECskIqAKC4t9Ft_2yr.exit.i.i.i
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body23.i.i unwind label %bb.dt, !noalias !4119

bb.dt:                                            ; preds = %bb.ds
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !4119
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_EECskIqAKC4t9Ft_2yr.exit.i.i.i, %bb.bm
  %i.mt = phi ptr [ %.sroa.0.0.i.i.i, %bb.bm ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_EECskIqAKC4t9Ft_2yr.exit.i.i.i ] ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RNCNvNtNtCskIqAKC4t9Ft_2yr8commands4scan9exec_scans3_0B7_.exit.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4077

.thread80.i.i.i:                                  ; preds = %bb.cu, %bb.cq, %.thread87.i.i.i
  %.pn76.i.i.i = phi { ptr, i32 } [ %i.kk, %bb.cq ], [ %lpad.thr_comm.i.i.i, %.thread87.i.i.i ], [ %i.kp, %bb.cu ] ; 2 uses
  %i.mu = load i64, ptr %i.m, align 8, !range !9, !alias.scope !4144, !noalias !4118, !noundef !5
  %i.mv = icmp eq i64 %i.mu, 0
  br i1 %i.mv, label %.body18.i.i.i, label %bb.du

bb.du:                                            ; preds = %.thread80.i.i.i
  invoke void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %.body18.i.i.i unwind label %bb.ay, !noalias !4119

_RNCNvNtNtCskIqAKC4t9Ft_2yr8commands4scan9exec_scans3_0B7_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i.i.i
  store ptr %i.mt, ptr %i.ad, align 8, !noalias !4079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4079
  %i.mw = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae)
          to label %bb.dw unwind label %bb.dv, !noalias !4077 ; 2 uses

.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ed, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i.i.i, %bb.al, %bb.ab, %bb.el, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEECskIqAKC4t9Ft_2yr.exit31.i.i, %bb.ei
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          cleanup
  br label %.body23.i.i

bb.dv:                                            ; preds = %bb.ec, %bb.dz, %_RNCNvNtNtCskIqAKC4t9Ft_2yr8commands4scan9exec_scans3_0B7_.exit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.mt, null
  br i1 %.not6.i.i, label %.body23.i.i, label %bb.ew

bb.dw:                                            ; preds = %_RNCNvNtNtCskIqAKC4t9Ft_2yr8commands4scan9exec_scans3_0B7_.exit.i.i
  %i.mx = extractvalue { i64, i32 } %i.mw, 0
  %i.my = extractvalue { i64, i32 } %i.mw, 1      ; 2 uses
  %i.mz = load i8, ptr %i.el, align 8, !range !15, !alias.scope !4078, !noalias !4077, !noundef !5
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.nb = load i8, ptr %i.em, align 1, !alias.scope !4078, !noalias !4077, !noundef !5 ; 2 uses
  %i.nc = icmp ult i8 %i.nb, 100
  br i1 %i.nc, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.ec, %bb.eb, %bb.dx, %bb.dw
  %.not4.i.i = icmp eq ptr %i.mt, null
  br i1 %.not4.i.i, label %bb.ee, label %bb.ed

bb.dz:                                            ; preds = %bb.dx
  %i.nd = uitofp nneg i8 %i.nb to double          ; 2 uses
  %i.ne = fsub nnan double 1.000000e+02, %i.nd
  %i.nf = fdiv double %i.ne, %i.nd
  %i.ng = uitofp i64 %i.mx to double
  %i.nh = icmp ult i32 %i.my, 1000000000
  call void @llvm.assume(i1 %i.nh)
  %i.ni = uitofp nneg i32 %i.my to double
  %i.nj = fdiv nnan double %i.ni, 1.000000e+09
  %i.nk = fadd nnan double %i.nj, %i.ng
  %i.nl = fmul double %i.nk, %i.nf
  %i.nm = invoke fastcc { i64, i32 } @_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration13from_secs_f64(double noundef %i.nl)
          to label %bb.ea unwind label %bb.dv, !noalias !4077 ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.nn = extractvalue { i64, i32 } %i.nm, 0      ; 2 uses
  %i.no = extractvalue { i64, i32 } %i.nm, 1      ; 3 uses
  %i.np = icmp eq i64 %i.nn, 0
  br i1 %i.np, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.nq = icmp ult i32 %i.no, 1000000000
  call void @llvm.assume(i1 %i.nq)
  %i.nr = icmp eq i32 %i.no, 0
  br i1 %i.nr, label %bb.dy, label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9functions5sleep(i64 noundef %i.nn, i32 noundef %i.no)
          to label %bb.dy unwind label %bb.dv, !noalias !4077

bb.ed:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4079
  %i.ns = invoke fastcc noundef ptr @_RNCNvNtNtCskIqAKC4t9Ft_2yr8commands4scan9exec_scans6_0B7_(ptr noundef nonnull %i.mt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.al)
          to label %bb.eh unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4077 ; 2 uses

bb.ee:                                            ; preds = %bb.ej, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4079
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i.i.i unwind label %bb.ef, !noalias !4077

bb.ef:                                            ; preds = %bb.ee
  %i.nt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body26.i.i unwind label %bb.eg, !noalias !4077

bb.eg:                                            ; preds = %bb.ef
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !4077
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %bb.ee
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4077

bb.eh:                                            ; preds = %bb.ed
  store ptr %i.ns, ptr %i.aa, align 8, !noalias !4079
  %.not5.i.i = icmp eq ptr %i.ns, null
  br i1 %.not5.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEECskIqAKC4t9Ft_2yr.exit31.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4077

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4079
  br label %bb.ee

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEECskIqAKC4t9Ft_2yr.exit31.i.i: ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4079
  store i64 2, ptr %i.y, align 8, !noalias !4079
  invoke void @_RNvMs2_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4sendB13_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.y)
          to label %bb.ek unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4077

bb.ek:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCscK5W4trzgIe_6anyhow5ErrorEECskIqAKC4t9Ft_2yr.exit31.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4079
  %i.nv = load i64, ptr %i.z, align 8, !range !20, !alias.scope !4145, !noalias !4079, !noundef !5
  %i.nw = icmp eq i64 %i.nv, -1
  br i1 %i.nw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEEEB1S_.exit.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIqAKC4t9Ft_2yr4walk7MessageEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEEEB1S_.exit.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4077

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEEEB1S_.exit.i.i: ; preds = %bb.el, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4079
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i34.i.i unwind label %bb.em, !noalias !4077

bb.em:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEEEB1S_.exit.i.i
  %i.nx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body26.i.i unwind label %bb.en, !noalias !4077

bb.en:                                            ; preds = %bb.em
  %i.ny = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !4077
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i34.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEEEB1S_.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit38.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4077

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit38.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i34.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4079
  br label %.loopexit10.i.i

.body19.i.i:                                      ; preds = %bb.ep, %bb.ac, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.pn9.i.i = phi { ptr, i32 } [ %i.ey, %bb.ac ], [ %i.oa, %bb.ep ], [ %.pn7.i.i, %bb.y ], [ %.pn7.i.i, %bb.w ], [ %.pn7.i.i, %bb.u ], [ %.pn7.i.i, %bb.v ], [ %.pn7.i.i, %bb.x ]
  %.val15.i.i = load ptr, ptr %i.dx, align 8, !noalias !4079, !nonnull !5, !noundef !5 ; 3 uses
  invoke void @_RNvXsi_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeINtB5_5StoreNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val15.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x7scanner7ScannerECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.eo, !noalias !4077

bb.eo:                                            ; preds = %.body19.i.i
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i.i, i64 noundef 8, i64 noundef 8) #28, !noalias !4077
  br label %.body14.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x7scanner7ScannerECskIqAKC4t9Ft_2yr.exit.i: ; preds = %.body19.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i.i, i64 noundef 8, i64 noundef 8) #28, !noalias !4077
  br label %.body.i.i

bb.ep:                                            ; preds = %bb.ah, %bb.af
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i.i

bb.eq:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4079
  %.val.i.i = load ptr, ptr %i.dx, align 8, !noalias !4079, !nonnull !5, !noundef !5 ; 3 uses
  invoke void @_RNvXsi_NtNtCsiOkGTpNE17y_8wasmtime7runtime5storeINtB5_5StoreNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i.i)
          to label %bb.es unwind label %bb.er, !noalias !4077

bb.er:                                            ; preds = %bb.eq
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 8, i64 noundef 8) #28, !noalias !4077
  br label %.body.i.i

bb.es:                                            ; preds = %bb.eq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 8, i64 noundef 8) #28, !noalias !4077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4079
  call void @llvm.experimental.noalias.scope.decl(metadata !4146)
  call void @llvm.experimental.noalias.scope.decl(metadata !4147)
  %i.oc = load ptr, ptr %i.aq, align 8, !alias.scope !4148, !noalias !4077, !nonnull !5, !noundef !5
  %i.od = atomicrmw add ptr %i.oc, i64 -1 release, align 8, !noalias !4149
  %i.oe = icmp eq i64 %i.od, 1
  br i1 %i.oe, label %bb.et, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands4scan9ScanStateEEB1f_.exit43.i.i

bb.et:                                            ; preds = %bb.es
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands4scan9ScanStateE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #39
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands4scan9ScanStateEEB1f_.exit43.i.i unwind label %bb.eu, !noalias !4077

bb.eu:                                            ; preds = %bb.et
  %i.of = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.al)
          to label %.body.i unwind label %bb.ev, !noalias !4077

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands4scan9ScanStateEEB1f_.exit43.i.i: ; preds = %bb.et, %bb.es
  invoke void @_RNvXs3_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.al)
          to label %_RNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB9_9ParWalker4walkNtNtNtBb_8commands4scan9ScanStateNtNtCs7gfv9tzbXmh_6yara_x7scanner7ScannerNCNvBT_9exec_scans2_0NCB25_s3_0NCB25_s4_0NCB25_s5_0NCB25_s6_0E00Bb_.exit.i unwind label %bb.fa, !noalias !4077

bb.ev:                                            ; preds = %bb.ex, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands4scan9ScanStateEEB1f_.exit.i.i, %bb.ew, %bb.eu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i.i, %bb.y, %bb.w, %bb.p
  %i.og = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body14.i

.body14.i:                                        ; preds = %bb.ev, %bb.eo, %bb.aj, %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !4077
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4079
  br label %bb.s

bb.ew:                                            ; preds = %bb.dv
  invoke void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %.body23.i.i unwind label %bb.ev, !noalias !4077

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands4scan9ScanStateEEB1f_.exit.i.i: ; preds = %bb.p, %.body.i.i
  invoke void @_RNvXs3_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgqCuqWkNCVj_17crossbeam_channel7channel6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageEEB1w_.exit47.i.i unwind label %bb.ev, !noalias !4077

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgqCuqWkNCVj_17crossbeam_channel7channel6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageEEB1w_.exit47.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands4scan9ScanStateEEB1f_.exit.i.i
  br i1 %.sroa.02.0.i.i, label %bb.ex, label %.body.i

bb.ex:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgqCuqWkNCVj_17crossbeam_channel7channel6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageEEB1w_.exit47.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgqCuqWkNCVj_17crossbeam_channel7channel8ReceiverNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(16) %i.oh) #35
          to label %.body.i unwind label %bb.ev, !noalias !4077

end_hunk_1
begin_hunk_2_@_RNSNvYNCINvMs1_NtCs7uMgTmySp6A_15crossbeam_utils6threadNtBd_19ScopedThreadBuilder5spawnNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB1x_9ParWalker4walkNtNtNtB1z_8commands4scan9ScanStateNtNtCs7gfv9tzbXmh_6yara_x7scanner7ScannerNCNvB2i_9exec_scans2_0NCB3v_s3_0NCB3v_s4_0NCB3v_s5_0NCB3v_s6_0E0s_0uE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB1z_:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs1_NtCs7uMgTmySp6A_15crossbeam_utils6threadNtBd_19ScopedThreadBuilder5spawnNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB1x_9ParWalker4walkNtNtNtB1z_8commands5check10CheckStateuNCNvB2i_10exec_check0NCB2U_s_0NCB2U_s0_0NCB2U_s1_0NCB2U_s2_0E00uE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB1z_(ptr noundef %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [56 x i8], align 8                ; 15 uses
  %i.l = alloca [16 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4231
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !alias.scope !4231
  store <2 x ptr> %i.n, ptr %i.l, align 16, !noalias !4231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4232)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !13, !alias.scope !4232, !noalias !4231, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !4232, !noalias !4231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4233
  store i64 %i.q, ptr %i.h, align 8, !noalias !4233
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.s, ptr %i.t, align 8, !noalias !4233
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  br label %bb.c

.body.i.i:                                        ; preds = %bb.ad, %bb.h, %.body14.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %.pn6.i.i, %.body14.i.i ], [ %i.bx, %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4234)
  call void @llvm.experimental.noalias.scope.decl(metadata !4235)
  %i.ad = load ptr, ptr %i.o, align 8, !alias.scope !4236, !noalias !4231, !nonnull !5, !noundef !5
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !4237
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateEEB1f_.exit.i.i

bb.b:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #39
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateEEB1f_.exit.i.i unwind label %bb.ah, !noalias !4231

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4233
  invoke void @_RNvXsm_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.d, !noalias !4231

.body14.i.i:                                      ; preds = %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscK5W4trzgIe_6anyhow5ErrorECskIqAKC4t9Ft_2yr.exit.i.i, %bb.d
  %.pn6.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscK5W4trzgIe_6anyhow5ErrorECskIqAKC4t9Ft_2yr.exit.i.i ], [ %i.ag, %bb.d ], [ %i.bv, %bb.ab ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgqCuqWkNCVj_17crossbeam_channel7channel8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #35
          to label %.body.i.i unwind label %bb.ah, !noalias !4231

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i.i.i, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

bb.e:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.g, align 8, !range !17, !noalias !4233, !noundef !5
  %.not.i.i = icmp eq i64 %i.ah, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !4233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4233
  %i.ai = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %bb.o unwind label %.thread.i.i, !noalias !4231 ; 2 uses

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4233
  invoke void @_RNvXsb_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_8ReceiverNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.i unwind label %bb.h, !noalias !4231

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgqCuqWkNCVj_17crossbeam_channel7channel14ReceiverFlavorNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #35
          to label %.body.i.i unwind label %bb.n, !noalias !4231

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !4238)
  %i.ak = load i64, ptr %i.h, align 8, !range !13, !alias.scope !4239, !noalias !4233, !noundef !5
  switch i64 %i.ak, label %bb.ae [
    i64 3, label %bb.j
    i64 4, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4240)
  call void @llvm.experimental.noalias.scope.decl(metadata !4241)
  %i.al = load ptr, ptr %i.t, align 8, !alias.scope !4242, !noalias !4233, !nonnull !5, !noundef !5
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !4243
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.k, label %bb.ae

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors2at7ChannelE9drop_slowCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #39
          to label %bb.ae unwind label %bb.ad, !noalias !4231

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4244)
  call void @llvm.experimental.noalias.scope.decl(metadata !4245)
  %i.ao = load ptr, ptr %i.t, align 8, !alias.scope !4246, !noalias !4233, !nonnull !5, !noundef !5
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !4247
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #39
          to label %bb.ae unwind label %bb.ad, !noalias !4231

bb.n:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !4231
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscK5W4trzgIe_6anyhow5ErrorECskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %bb.ai, %bb.r, %.thread.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ], [ %lpad.thr_comm.split-lp.i.i, %bb.ai ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #35
          to label %.body14.i.i unwind label %bb.ah, !noalias !4231

bb.o:                                             ; preds = %bb.f
  %i.as = extractvalue { i64, i32 } %i.ai, 0
  %i.at = extractvalue { i64, i32 } %i.ai, 1
  store i64 %i.as, ptr %i.e, align 8, !noalias !4233
  store i32 %i.at, ptr %i.u, align 8, !noalias !4233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4233
  %i.au = load ptr, ptr %i.o, align 8, !alias.scope !4232, !noalias !4231, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4233
  %i.av = load ptr, ptr %i.v, align 8, !noalias !4233, !nonnull !5, !noundef !5
  %i.aw = load i64, ptr %i.w, align 8, !noalias !4233, !noundef !5
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.aw)
          to label %bb.p unwind label %.thread.i.i, !noalias !4231

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  store ptr %i.ax, ptr %i.y, align 8, !noalias !4233
  store ptr %i.k, ptr %i.z, align 8, !noalias !4233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4233
  store ptr %i.a, ptr %i.aa, align 8, !noalias !4233
  %.val.i.i = load ptr, ptr %i.x, align 8, !alias.scope !4232, !noalias !4231
  %i.ay = invoke fastcc noundef ptr @_RNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks_0B7_(ptr %.val.i.i, ptr noundef nonnull align 8 %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.q unwind label %.thread.i.i, !noalias !4231 ; 4 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.ay, ptr %i.d, align 8, !noalias !4233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4233
  %i.az = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.s unwind label %bb.r, !noalias !4231 ; 2 uses

.thread.i.i:                                      ; preds = %bb.z, %bb.p, %bb.o, %bb.f
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscK5W4trzgIe_6anyhow5ErrorECskIqAKC4t9Ft_2yr.exit.i.i

bb.r:                                             ; preds = %bb.y, %bb.v, %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ay, null
  br i1 %.not5.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscK5W4trzgIe_6anyhow5ErrorECskIqAKC4t9Ft_2yr.exit.i.i, label %bb.ai

bb.s:                                             ; preds = %bb.q
  %i.ba = extractvalue { i64, i32 } %i.az, 0
  %i.bb = extractvalue { i64, i32 } %i.az, 1      ; 2 uses
  %i.bc = load i8, ptr %i.ab, align 8, !range !15, !alias.scope !4232, !noalias !4231, !noundef !5
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.be = load i8, ptr %i.ac, align 1, !alias.scope !4232, !noalias !4231, !noundef !5 ; 2 uses
  %i.bf = icmp ult i8 %i.be, 100
  br i1 %i.bf, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.x, %bb.t, %bb.s
  %.not4.i.i = icmp eq ptr %i.ay, null
  br i1 %.not4.i.i, label %bb.aa, label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bg = uitofp nneg i8 %i.be to double          ; 2 uses
  %i.bh = fsub nnan double 1.000000e+02, %i.bg
  %i.bi = fdiv double %i.bh, %i.bg
  %i.bj = uitofp i64 %i.ba to double
  %i.bk = icmp ult i32 %i.bb, 1000000000
  call void @llvm.assume(i1 %i.bk)
  %i.bl = uitofp nneg i32 %i.bb to double
  %i.bm = fdiv nnan double %i.bl, 1.000000e+09
  %i.bn = fadd nnan double %i.bm, %i.bj
  %i.bo = fmul double %i.bn, %i.bi
  %i.bp = invoke fastcc { i64, i32 } @_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration13from_secs_f64(double noundef %i.bo)
          to label %bb.w unwind label %bb.r, !noalias !4231 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = extractvalue { i64, i32 } %i.bp, 1      ; 3 uses
  %i.bs = icmp eq i64 %i.bq, 0
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bt = icmp ult i32 %i.br, 1000000000
  call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp eq i32 %i.br, 0
  br i1 %i.bu, label %bb.u, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9functions5sleep(i64 noundef %i.bq, i32 noundef %i.br)
          to label %bb.u unwind label %bb.r, !noalias !4231

bb.z:                                             ; preds = %bb.u
  invoke fastcc void @_RNCNvNtNtCskIqAKC4t9Ft_2yr8commands5check10exec_checks2_0B7_(ptr noundef nonnull %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k)
          to label %bb.aa unwind label %.thread.i.i

bb.aa:                                            ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4233
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i.i.i unwind label %bb.ab, !noalias !4231

bb.ab:                                            ; preds = %bb.aa
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body14.i.i unwind label %bb.ac, !noalias !4231

bb.ac:                                            ; preds = %bb.ab
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !4231
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i.i unwind label %bb.d, !noalias !4231

bb.ad:                                            ; preds = %bb.m, %bb.k
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4233
  call void @llvm.experimental.noalias.scope.decl(metadata !4248)
  call void @llvm.experimental.noalias.scope.decl(metadata !4249)
  %i.by = load ptr, ptr %i.o, align 8, !alias.scope !4250, !noalias !4231, !nonnull !5, !noundef !5
  %i.bz = atomicrmw add ptr %i.by, i64 -1 release, align 8, !noalias !4251
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateEEB1f_.exit19.i.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #39
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateEEB1f_.exit19.i.i unwind label %bb.ag, !noalias !4231

bb.ag:                                            ; preds = %bb.af
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %.body.i unwind label %bb.ah, !noalias !4231

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateEEB1f_.exit19.i.i: ; preds = %bb.af, %bb.ae
  invoke void @_RNvXs3_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_RNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB9_9ParWalker4walkNtNtNtBb_8commands5check10CheckStateuNCNvBT_10exec_check0NCB1u_s_0NCB1u_s0_0NCB1u_s1_0NCB1u_s2_0E00Bb_.exit.i unwind label %bb.al, !noalias !4231

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateEEB1f_.exit.i.i, %bb.ai, %bb.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscK5W4trzgIe_6anyhow5ErrorECskIqAKC4t9Ft_2yr.exit.i.i, %.body14.i.i, %bb.b
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !4231
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskIqAKC4t9Ft_2yr.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4233
  br label %bb.c

bb.ai:                                            ; preds = %bb.r
  invoke void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscK5W4trzgIe_6anyhow5ErrorECskIqAKC4t9Ft_2yr.exit.i.i unwind label %bb.ah, !noalias !4231

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateEEB1f_.exit.i.i: ; preds = %bb.b, %.body.i.i
  invoke void @_RNvXs3_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %.body.i unwind label %bb.ah, !noalias !4231

_RNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB9_9ParWalker4walkNtNtNtBb_8commands5check10CheckStateuNCNvBT_10exec_check0NCB1u_s_0NCB1u_s0_0NCB1u_s1_0NCB1u_s2_0E00Bb_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateEEB1f_.exit19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4231
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !4231, !nonnull !5, !noundef !5 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 3 uses
  %i.cg = cmpxchg ptr %i.cf, i32 0, i32 1 acquire monotonic, align 4, !noalias !4252
  %i.ch = extractvalue { i32, i1 } %i.cg, 1
  br i1 %i.ch, label %.noexc.i, label %bb.aj, !prof !8

bb.aj:                                            ; preds = %_RNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB9_9ParWalker4walkNtNtNtBb_8commands5check10CheckStateuNCNvBT_10exec_check0NCB1u_s_0NCB1u_s0_0NCB1u_s1_0NCB1u_s2_0E00Bb_.exit.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.cf)
          to label %.noexc.i unwind label %bb.al, !noalias !4231

.noexc.i:                                         ; preds = %bb.aj, %_RNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB9_9ParWalker4walkNtNtNtBb_8commands5check10CheckStateuNCNvBT_10exec_check0NCB1u_s_0NCB1u_s0_0NCB1u_s1_0NCB1u_s2_0E00Bb_.exit.i
  %i.ci = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4252
  %i.cj = and i64 %i.ci, 9223372036854775807
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i, label %bb.ak, !prof !8

bb.ak:                                            ; preds = %.noexc.i
  %i.cl = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #39
          to label %.noexc7.i unwind label %bb.al, !noalias !4231

.noexc7.i:                                        ; preds = %bb.ak
  %i.cm = xor i1 %i.cl, true
  %i.cn = zext i1 %i.cm to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i: ; preds = %.noexc7.i, %.noexc.i
  %.sroa.01.0.i.i.i = phi i8 [ %i.cn, %.noexc7.i ], [ 0, %.noexc.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cp = load atomic i8, ptr %i.co monotonic, align 1, !noalias !4252
  %.not.i.i.i = icmp ne i8 %i.cp, 0
  invoke void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCskKLDkoKarTP_4core6option6OptionuEENCNvMs9_BZ_BW_3new0ECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i1 noundef zeroext %.not.i.i.i, i8 noundef %.sroa.01.0.i.i.i, ptr noundef nonnull align 4 %i.cf)
          to label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEE4lockCskIqAKC4t9Ft_2yr.exit.i unwind label %bb.al, !noalias !4231

bb.al:                                            ; preds = %bb.au, %bb.as, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i, %bb.ak, %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateEEB1f_.exit19.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.an, %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateEEB1f_.exit.i.i, %bb.ag
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn8.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCskIqAKC4t9Ft_2yr8commands5check10CheckStateEEB1f_.exit.i.i ], [ %i.cq, %bb.al ], [ %i.cb, %bb.ag ], [ %i.cy, %bb.an ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7uMgTmySp6A_15crossbeam_utils6thread5ScopeECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(16) %i.l) #35
          to label %bb.av unwind label %bb.ba, !noalias !4231

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEE4lockCskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4253)
  %i.cr = load i64, ptr %i.j, align 8, !range !9, !alias.scope !4253, !noalias !4231, !noundef !5
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %bb.am, label %bb.aq, !prof !11

bb.am:                                            ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEE4lockCskIqAKC4t9Ft_2yr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4254
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !4253, !noalias !4231, !nonnull !5, !align !25, !noundef !5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cw = load i8, ptr %i.cv, align 8, !range !15, !alias.scope !4253, !noalias !4231, !noundef !5
  store ptr %i.cu, ptr %i.i, align 8, !noalias !4254
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.cw, ptr %i.cx, align 8, !noalias !4254
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #40
          to label %bb.ao unwind label %bb.an, !noalias !4255

bb.an:                                            ; preds = %bb.am
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionuEEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #35
          to label %.body.i unwind label %bb.ap, !noalias !4255

bb.ao:                                            ; preds = %bb.am
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !4255
  unreachable

bb.aq:                                            ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEE4lockCskIqAKC4t9Ft_2yr.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !4253, !noalias !4231, !nonnull !5, !align !25, !noundef !5 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dd = load i8, ptr %i.dc, align 8, !range !15, !alias.scope !4253, !noalias !4231, !noundef !5
  %i.de = trunc nuw i8 %i.dd to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4231
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 5
  store i8 1, ptr %i.df, align 1, !noalias !4231
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  br i1 %i.de, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dh = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4231
  %i.di = and i64 %i.dh, 9223372036854775807
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.as, !prof !8

bb.as:                                            ; preds = %bb.ar
end_hunk_2
