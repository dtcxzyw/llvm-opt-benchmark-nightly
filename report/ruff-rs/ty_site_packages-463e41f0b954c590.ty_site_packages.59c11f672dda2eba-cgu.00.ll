Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_site_packages-463e41f0b954c590.ty_site_packages.59c11f672dda2eba-cgu.00?download=true
inline.NumInlined: 656
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvCs7HL9jt3VRMY_16ty_site_packages41site_packages_directories_from_sys_prefix:bb.a

bb.dm:                                            ; preds = %bb.dl
  %i.ml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i121: ; preds = %.loopexit.i120
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit.i unwind label %bb.dr

bb.dn:                                            ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !531
  %i.mm = load ptr, ptr %i.le, align 8, !noalias !531, !nonnull !4, !noundef !4 ; 2 uses
  %i.mn = load i64, ptr %i.lf, align 8, !noalias !531, !noundef !4 ; 2 uses
  br i1 %.not, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.dn
  %i.mo = invoke { ptr, i64 } @_RINvMs4_CshFWUtO0bu8g_6caminoNtB6_8Utf8Path3neweECs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 13)
          to label %.noexc.us.i unwind label %.split21.us.i ; 2 uses

.noexc.us.i:                                      ; preds = %.split.us.i
  %i.mp = extractvalue { ptr, i64 } %i.mo, 0
  %i.mq = extractvalue { ptr, i64 } %i.mo, 1
  invoke void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinRBw_ECs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mm, i64 noundef %i.mn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mp, i64 noundef %i.mq)
          to label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECs7HL9jt3VRMY_16ty_site_packages.exit.us.i unwind label %.split21.us.i

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECs7HL9jt3VRMY_16ty_site_packages.exit.us.i: ; preds = %.noexc.us.i
  %i.mr = load ptr, ptr %i.lg, align 8, !noalias !531, !nonnull !4, !noundef !4
  %i.ms = load i64, ptr %i.lh, align 8, !noalias !531, !noundef !4
  %i.mt = invoke noundef zeroext i1 %.val94(ptr noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mr, i64 noundef %i.ms)
          to label %bb.do unwind label %.split23.us.i

bb.do:                                            ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECs7HL9jt3VRMY_16ty_site_packages.exit.us.i
  br i1 %i.mt, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i48.us.i unwind label %.split26.us.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i48.us.i: ; preds = %bb.dp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.loopexit.sink.split.i unwind label %.split21.us.i

bb.dq:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !531
  store i64 -1, ptr %i.li, align 8, !noalias !533
  %i.mu = invoke { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtCs7HL9jt3VRMY_16ty_site_packages16SitePackagesPathuE11insert_fullBP_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.o)
          to label %.loopexit.sink.split.sink.split.i unwind label %.split29.us.i ; 0 uses

.split21.us.i:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i48.us.i, %.noexc.us.i, %.split.us.i
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i

.split23.us.i:                                    ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECs7HL9jt3VRMY_16ty_site_packages.exit.us.i
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.split26.us.i:                                    ; preds = %bb.dp
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.split29.us.i:                                    ; preds = %bb.dq
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i

.split21.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i48.i, %.noexc.i122, %.split.i
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i

.split.i:                                         ; preds = %bb.dn
  %i.na = invoke { ptr, i64 } @_RINvMs4_CshFWUtO0bu8g_6caminoNtB6_8Utf8Path3neweECs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 13)
          to label %.noexc.i122 unwind label %.split21.i ; 2 uses

.noexc.i122:                                      ; preds = %.split.i
  %i.nb = extractvalue { ptr, i64 } %i.na, 0
  %i.nc = extractvalue { ptr, i64 } %i.na, 1
  invoke void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinRBw_ECs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mm, i64 noundef %i.mn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.nb, i64 noundef %i.nc)
          to label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECs7HL9jt3VRMY_16ty_site_packages.exit.i123 unwind label %.split21.i

bb.dr:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i121, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i117
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %.body43.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !531
  br label %.backedge.sink.split.i

.backedge.sink.split.i:                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs7HL9jt3VRMY_16ty_site_packages.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !531
  br label %.backedge.i118

.backedge.i118:                                   ; preds = %.thread.i, %.backedge.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !531
  br label %bb.cp

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECs7HL9jt3VRMY_16ty_site_packages.exit.i123: ; preds = %.noexc.i122
  %i.ne = load ptr, ptr %i.lg, align 8, !noalias !531, !nonnull !4, !noundef !4
  %i.nf = load i64, ptr %i.lh, align 8, !noalias !531, !noundef !4
  %i.ng = invoke noundef zeroext i1 %.val94(ptr noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ne, i64 noundef %i.nf)
          to label %bb.ds unwind label %.split23.i

bb.ds:                                            ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECs7HL9jt3VRMY_16ty_site_packages.exit.i123
  br i1 %i.ng, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i48.i unwind label %.split26.i

.split26.i:                                       ; preds = %bb.dt
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.du:                                            ; preds = %.split26.i, %.split26.us.i
  %.us-phi27.i = phi { ptr, i32 } [ %i.nh, %.split26.i ], [ %i.mx, %.split26.us.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body49.i unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ni = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i48.i: ; preds = %bb.dt
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.loopexit.sink.split.i unwind label %.split21.i

bb.dw:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !531
  invoke void @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB2_10SystemPath11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kt, i64 noundef %i.kv)
          to label %bb.dx unwind label %bb.dy

.split29.i:                                       ; preds = %bb.dx
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i

bb.dx:                                            ; preds = %bb.dw
  %.sroa.07.0.copyload.i = load i64, ptr %i.p, align 8, !noalias !531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i, i64 16, i1 false), !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !534
  store i64 %.sroa.07.0.copyload.i, ptr %i.li, align 8, !noalias !533
  %i.nk = invoke { i64, i1 } @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapNtCs7HL9jt3VRMY_16ty_site_packages16SitePackagesPathuE11insert_fullBP_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.o)
          to label %.loopexit.sink.split.sink.split.i unwind label %.split29.i ; 0 uses

bb.dy:                                            ; preds = %bb.dw
  %i.nl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #26
          to label %.body49.i unwind label %bb.dz

bb.dz:                                            ; preds = %bb.ea, %bb.dy, %.body49.i, %.body43.i
  %i.nm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

.split23.i:                                       ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinReECs7HL9jt3VRMY_16ty_site_packages.exit.i123
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ea:                                            ; preds = %.split23.i, %.split23.us.i
  %.us-phi24.i = phi { ptr, i32 } [ %i.nn, %.split23.i ], [ %i.mw, %.split23.us.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #26
          to label %.body49.i unwind label %bb.dz

.thread.i:                                        ; preds = %bb.cr
  %.sroa.4229.0.copyload = load ptr, ptr %.sroa.4229.0..sroa_idx, align 8, !noalias !531, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs7HL9jt3VRMY_16ty_site_packages(ptr nonnull %.sroa.4229.0.copyload)
          to label %.backedge.i118 unwind label %bb.cq

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit.i: ; preds = %.noexc127
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs7HL9jt3VRMY_16ty_site_packages(ptr nonnull %.val38.i)
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc131:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !531
  br label %_RINvCs7HL9jt3VRMY_16ty_site_packages21discover_package_dirsANtB2_15InstallationDirj1_EB2_.exit

_RINvCs7HL9jt3VRMY_16ty_site_packages21discover_package_dirsANtB2_15InstallationDirj1_EB2_.exit: ; preds = %bb.cu, %bb.cv, %.noexc131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.cm

bb.eb:                                            ; preds = %bb.cm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit165
  %exitcond = phi i1 [ false, %bb.cm ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit165 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %..i.i132 = select i1 %exitcond, i64 5, i64 3
  %.1.i.i133 = select i1 %exitcond, ptr @176, ptr @62
  invoke void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinRBw_ECs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1.i.i133, i64 noundef %..i.i132)
          to label %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinNtCs7HL9jt3VRMY_16ty_site_packages10UnixLibDirEB13_.exit135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinNtCs7HL9jt3VRMY_16ty_site_packages10UnixLibDirEB13_.exit135: ; preds = %bb.eb
  %i.no = load ptr, ptr %i.kf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.np = load i64, ptr %i.kg, align 8, !noundef !4 ; 2 uses
  %i.nq = load i64, ptr %i.ba, align 8, !range !5, !noundef !4
  %.not83 = icmp eq i64 %i.nq, -1
  %i.nr = load ptr, ptr %i.kh, align 8, !nonnull !4 ; 2 uses
  %i.ns = load i64, ptr %i.ki, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.no, ptr %i.n, align 8, !noalias !535
  store i64 %i.np, ptr %i.kj, align 8, !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !535
  invoke void %.val93(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.no, i64 noundef %i.np)
          to label %.noexc155 unwind label %bb.gn, !inline_history !469

.noexc155:                                        ; preds = %_RINvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB3_10SystemPath4joinNtCs7HL9jt3VRMY_16ty_site_packages10UnixLibDirEB13_.exit135
  %i.nt = load ptr, ptr %i.m, align 8, !noalias !535, !noundef !4 ; 8 uses
  %i.nu = icmp eq ptr %i.nt, null
  %.val33.i = load ptr, ptr %i.kk, align 8, !noalias !535, !nonnull !4, !noundef !4 ; 12 uses
  br i1 %i.nu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemIBC_NtNtCs56aZGHL6Dc6_7ruff_db6system14DirectoryEntryNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEL_EB38_EECs7HL9jt3VRMY_16ty_site_packages.exit.i154, label %bb.ec

bb.ec:                                            ; preds = %.noexc155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !535
  %i.nv = getelementptr inbounds nuw i8, ptr %.val33.i, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8, !invariant.load !4, !nonnull !4
  br label %bb.ed

bb.ed:                                            ; preds = %.backedge.i141, %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !535
  invoke void %i.nw(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noundef nonnull %i.nt)
          to label %bb.ek unwind label %bb.ej

.body40.i:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i206, %bb.ej, %bb.gm, %bb.fq, %bb.fh, %bb.ev
  %.pn26.i = phi { ptr, i32 } [ %i.pn, %bb.fh ], [ %i.rw, %bb.gm ], [ %i.pd, %bb.ev ], [ %i.qp, %bb.fq ], [ %i.oj, %bb.ej ], [ %.pn.pn.i143, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i206 ] ; 2 uses
  %i.nx = load ptr, ptr %.val33.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i211 = icmp eq ptr %i.nx, null
  br i1 %.not.i211, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %.body40.i
  invoke void %i.nx(ptr noundef nonnull %i.nt)
          to label %bb.ef unwind label %bb.eh

bb.ef:                                            ; preds = %bb.ee, %.body40.i
  %i.ny = getelementptr inbounds nuw i8, ptr %.val33.i, i64 8
  %i.nz = load i64, ptr %i.ny, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.oa = icmp eq i64 %i.nz, 0
  br i1 %i.oa, label %.body156, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ob = getelementptr inbounds nuw i8, ptr %.val33.i, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nt, i64 noundef range(i64 1, 0) %i.nz, i64 noundef range(i64 1, 536870913) %i.oc) #25
  br label %.body156

bb.eh:                                            ; preds = %bb.ee
  %i.od = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.val33.i, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.og = icmp eq i64 %i.of, 0
  br i1 %i.og, label %.body207, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.oh = getelementptr inbounds nuw i8, ptr %.val33.i, i64 16
  %i.oi = load i64, ptr %i.oh, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nt, i64 noundef range(i64 1, 0) %i.of, i64 noundef range(i64 1, 536870913) %i.oi) #25
  br label %.body207

bb.ej:                                            ; preds = %bb.ed
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i

bb.ek:                                            ; preds = %bb.ed
  %i.ok = load i64, ptr %i.l, align 8, !range !3, !noalias !535, !noundef !4 ; 2 uses
  %.not.i138 = icmp eq i64 %i.ok, -2
  br i1 %.not.i138, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.sroa.4232.0.copyload = load ptr, ptr %.sroa.4232.0..sroa_idx, align 8, !noalias !535 ; 5 uses
  %i.ol = icmp eq i64 %i.ok, -1
  br i1 %i.ol, label %.thread.i152, label %bb.es

bb.em:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !535
  %i.om = load ptr, ptr %.val33.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i153 = icmp eq ptr %i.om, null
  br i1 %.not.i.i153, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  invoke void %i.om(ptr noundef nonnull %i.nt)
          to label %bb.eo unwind label %bb.eq

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.on = getelementptr inbounds nuw i8, ptr %.val33.i, i64 8
  %i.oo = load i64, ptr %i.on, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.op = icmp eq i64 %i.oo, 0
  br i1 %i.op, label %bb.go, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.oq = getelementptr inbounds nuw i8, ptr %.val33.i, i64 16
  %i.or = load i64, ptr %i.oq, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nt, i64 noundef range(i64 1, 0) %i.oo, i64 noundef range(i64 1, 536870913) %i.or) #25
  br label %bb.go

bb.eq:                                            ; preds = %bb.en
  %i.os = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.val33.i, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.ov = icmp eq i64 %i.ou, 0
  br i1 %i.ov, label %.body156, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ow = getelementptr inbounds nuw i8, ptr %.val33.i, i64 16
  %i.ox = load i64, ptr %i.ow, align 8, !range !12, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nt, i64 noundef range(i64 1, 0) %i.ou, i64 noundef range(i64 1, 536870913) %i.ox) #25
  br label %.body156

bb.es:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !535
  %i.oy = load i8, ptr %i.kl, align 8, !range !19, !noalias !535, !noundef !4
  %i.oz = icmp eq i8 %i.oy, 1
  br i1 %i.oz, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !535
  %i.pa = load ptr, ptr %i.km, align 8, !noalias !535, !nonnull !4, !noundef !4
  %i.pb = load i64, ptr %i.kn, align 8, !noalias !535, !noundef !4
  %i.pc = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path9file_name(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.pa, i64 noundef %i.pb)
          to label %bb.ez unwind label %.loopexit13.i ; 2 uses

bb.eu:                                            ; preds = %bb.es
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i139 unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.pd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.body40.i unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.pe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i.i139: ; preds = %bb.eu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.backedge.sink.split.i140 unwind label %bb.fq

.body46.i:                                        ; preds = %.split335, %.split335.us, %.split, %.split.us, %bb.ge, %bb.gc, %bb.ft, %.loopexit.split-lp.i150, %.loopexit13.i
  %.pn.pn.i143 = phi { ptr, i32 } [ %.us-phi328, %bb.ge ], [ %.us-phi333, %bb.ft ], [ %i.rg, %bb.gc ], [ %lpad.loopexit.split-lp.i151, %.loopexit.split-lp.i150 ], [ %i.qi, %.split.us ], [ %lpad.loopexit.i142, %.loopexit13.i ], [ %i.qm, %.split ], [ %i.re, %.split335 ], [ %i.ql, %.split335.us ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i206 unwind label %bb.ex

bb.ex:                                            ; preds = %.body46.i
  %i.pf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body207 unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshFWUtO0bu8g_6camino11Utf8PathBufECs7HL9jt3VRMY_16ty_site_packages.exit.i206: ; preds = %.body46.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7HL9jt3VRMY_16ty_site_packages(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body40.i unwind label %bb.gd

.loopexit13.i:                                    ; preds = %bb.fd, %.invoke.i144, %bb.et
  %lpad.loopexit.i142 = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i

.loopexit.split-lp.i150:                          ; preds = %bb.fb
  %lpad.loopexit.split-lp.i151 = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i

bb.ez:                                            ; preds = %bb.et
  %i.ph = extractvalue { ptr, i64 } %i.pc, 0      ; 3 uses
  %i.pi = extractvalue { ptr, i64 } %i.pc, 1      ; 2 uses
  %.not19.i = icmp eq ptr %i.ph, null
  br i1 %.not19.i, label %bb.fb, label %bb.fa, !prof !17

bb.fa:                                            ; preds = %bb.ez
  switch i8 %.sroa.012.4.extract.trunc, label %default.unreachable28.i [
    i8 0, label %.invoke.i144
    i8 1, label %bb.fg
    i8 2, label %.invoke.i144
    i8 3, label %bb.fd
  ]
end_hunk_0
