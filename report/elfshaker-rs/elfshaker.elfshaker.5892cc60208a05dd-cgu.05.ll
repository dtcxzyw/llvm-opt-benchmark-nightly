Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.05?download=true
begin_hunk_0_@_RNvNtCs7BtpbLEd5q3_9elfshaker5store3run:bb.a
  %.sroa.022.2.i = phi i1 [ false, %bb.ei ], [ false, %.body70.i ], [ %.sroa.022.3.i, %bb.eb ], [ false, %bb.ff ], [ false, %bb.fe ]
  %.pn59.i = phi { ptr, i32 } [ %i.km, %bb.ei ], [ %.pn.i, %.body70.i ], [ %i.kc, %bb.eb ], [ %i.lg, %bb.ff ], [ %i.lg, %bb.fe ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(264) %i.s) #27
          to label %bb.dx unwind label %bb.fj, !noalias !1859

bb.eb:                                            ; preds = %bb.fa, %bb.eg, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker.exit.thread124.i, %bb.ec
  %.sroa.022.3.i = phi i1 [ true, %bb.ec ], [ false, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker.exit.thread124.i ], [ false, %bb.fa ], [ false, %bb.eg ]
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i

bb.ec:                                            ; preds = %bb.ea, %bb.dy
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.ea ], [ 0, %bb.dy ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.jy) #29
          to label %bb.fr unwind label %bb.eb, !noalias !1859

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker.exit.thread124.i: ; preds = %bb.ed, %bb.dz
  %i.kd = phi ptr [ %i.ka, %bb.ed ], [ inttoptr (i64 1 to ptr), %bb.dz ]
  store i64 %i.jy, ptr %i.q, align 8, !noalias !1819
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.kd, ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !1819
  %.sroa.644.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.jy, ptr %.sroa.644.0..sroa_idx.i, align 8, !noalias !1819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1819
  invoke void @_RINvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex13push_snapshotNtB6_9FileEntryINtNtCs1xwejQucwHj_5alloc3vec3VecB18_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.ee unwind label %bb.eb, !noalias !1859

bb.ed:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ka, ptr nonnull align 1 %i.jx, i64 %i.jy, i1 false), !noalias !1859
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker.exit.thread124.i

bb.ee:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker.exit.thread124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1819
  %i.ke = load i64, ptr %i.r, align 8, !range !1882, !noalias !1819, !noundef !6 ; 2 uses
  %.not54.i = icmp eq i64 %i.ke, -1
  br i1 %.not54.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.kf = inttoptr i64 %i.ke to ptr
  %.sroa.19.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.8..sroa_idx, i64 40, i1 false), !noalias !1883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1819
  br label %bb.fk

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1819
  %i.kg = load ptr, ptr %i.ha, align 8, !alias.scope !1814, !noalias !1822, !nonnull !6, !noundef !6
  %i.kh = load i64, ptr %i.hc, align 8, !alias.scope !1814, !noalias !1822, !noundef !6
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kg, i64 noundef %i.kh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 5)
          to label %bb.eh unwind label %bb.eb, !noalias !1859

bb.eh:                                            ; preds = %bb.eg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !1819, !nonnull !6, !noundef !6
  %i.kk = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !noalias !1819, !noundef !6
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kj, i64 noundef %i.kl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 5)
          to label %bb.ej unwind label %bb.ei, !noalias !1859

bb.ei:                                            ; preds = %bb.eh
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #27
          to label %.body78.i unwind label %bb.fj, !noalias !1859

bb.ej:                                            ; preds = %bb.eh
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.em unwind label %bb.ek, !noalias !1859

bb.ek:                                            ; preds = %bb.ej
  %i.kn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i65.i = load i64, ptr %i.n, align 8, !alias.scope !1884, !noalias !1819 ; 2 uses
  %i.ko = icmp eq i64 %.val2.i.i.i.i65.i, 0
  br i1 %i.ko, label %.body70.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.val3.i.i.i.i66.i = load ptr, ptr %i.ki, align 8, !alias.scope !1895, !noalias !1819, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i66.i, i64 noundef %.val2.i.i.i.i65.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1896
  br label %.body70.i

bb.em:                                            ; preds = %bb.ej
  %.val.i.i.i.i68.i = load i64, ptr %i.n, align 8, !alias.scope !1884, !noalias !1819 ; 2 uses
  %i.kp = icmp eq i64 %.val.i.i.i.i68.i, 0
  br i1 %i.kp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit72.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %.val1.i.i.i.i69.i = load ptr, ptr %i.ki, align 8, !alias.scope !1895, !noalias !1819, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i69.i, i64 noundef %.val.i.i.i.i68.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1899
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit72.i

.body70.i:                                        ; preds = %bb.es, %bb.eo, %bb.el, %bb.ek
  %.pn.i = phi { ptr, i32 } [ %i.lc, %bb.es ], [ %i.kq, %bb.eo ], [ %i.kn, %bb.el ], [ %i.kn, %bb.ek ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #27
          to label %.body78.i unwind label %bb.fj, !noalias !1859

bb.eo:                                            ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.eq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit72.i
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %.body70.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit72.i: ; preds = %bb.en, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1819
  %i.kr = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !1819, !nonnull !6, !noundef !6
  %i.kt = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !noalias !1819, !noundef !6
  %i.kv = invoke noundef ptr @_RNvNtNtCskuiImRAV2ip_9elfshaker4repo2fs10ensure_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ks, i64 noundef %i.ku)
          to label %bb.ep unwind label %bb.eo, !noalias !1859 ; 2 uses

bb.ep:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit72.i
  %.not55.i = icmp eq ptr %i.kv, null
  br i1 %.not55.i, label %bb.eq, label %bb.fd

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1819
  %i.kw = load ptr, ptr %i.kr, align 8, !noalias !1819, !nonnull !6, !noundef !6
  %i.kx = load i64, ptr %i.kt, align 8, !noalias !1819, !noundef !6
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kw, i64 noundef %i.kx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jx, i64 noundef %i.jy)
          to label %bb.er unwind label %bb.eo, !noalias !1859

bb.er:                                            ; preds = %bb.eq
  %i.ky = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !noalias !1819, !nonnull !6, !noundef !6
  %i.la = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.lb = load i64, ptr %i.la, align 8, !noalias !1819, !noundef !6
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path14with_extensionReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kz, i64 noundef %i.lb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 8)
          to label %bb.et unwind label %bb.es, !noalias !1859

bb.es:                                            ; preds = %bb.et, %bb.er
  %i.lc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #27
          to label %.body70.i unwind label %bb.fj, !noalias !1859

bb.et:                                            ; preds = %bb.er
  invoke void @_RINvMse_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_9PackIndex4saveNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.eu unwind label %bb.es, !noalias !1859

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1819
  %i.ld = load i64, ptr %i.m, align 8, !range !1882, !noalias !1819, !noundef !6 ; 2 uses
  %.not56.i = icmp eq i64 %i.ld, -1
  %i.le = inttoptr i64 %i.ld to ptr
  br i1 %.not56.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %.sroa.19.8..sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.8..sroa_idx208, i64 40, i1 false), !noalias !1883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1819
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %bb.fi unwind label %bb.eo, !noalias !1859

bb.ew:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1819
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %bb.ex unwind label %bb.eo, !noalias !1859

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1819
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository11update_head(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bl)
          to label %bb.ey unwind label %bb.eo, !noalias !1859

bb.ey:                                            ; preds = %bb.ex
  %i.lf = load i64, ptr %i.j, align 8, !range !7, !noalias !1819, !noundef !6 ; 2 uses
  %.not57.i = icmp eq i64 %i.lf, -2
  br i1 %.not57.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.sroa.13.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.13.0.copyload205 = load ptr, ptr %.sroa.13.0..sroa_idx204, align 8, !noalias !1883
  %.sroa.19.0..sroa_idx207 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.0..sroa_idx207, i64 40, i1 false), !noalias !1883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1819
  br label %bb.fd

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1819
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o)
          to label %bb.fb unwind label %bb.eb, !noalias !1859

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1819
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(264) %i.s)
          to label %bb.fc unwind label %.split.thread.i, !noalias !1859

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1819
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.gc unwind label %bb.fx

bb.fd:                                            ; preds = %bb.ep, %bb.fi, %bb.ez
  %.sroa.0202.2 = phi i64 [ %i.lf, %bb.ez ], [ -9223372036854775805, %bb.fi ], [ -9223372036854775808, %bb.ep ]
  %.sroa.13.2 = phi ptr [ %.sroa.13.0.copyload205, %bb.ez ], [ %i.le, %bb.fi ], [ %i.kv, %bb.ep ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.fg unwind label %bb.fe, !noalias !1859

bb.fe:                                            ; preds = %bb.fd
  %i.lg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i73.i = load i64, ptr %i.o, align 8, !alias.scope !1902, !noalias !1819 ; 2 uses
  %i.lh = icmp eq i64 %.val2.i.i.i.i73.i, 0
  br i1 %i.lh, label %.body78.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %.val3.i.i.i.i74.i = load ptr, ptr %i.kr, align 8, !alias.scope !1913, !noalias !1819, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i74.i, i64 noundef %.val2.i.i.i.i73.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1914
  br label %.body78.i

bb.fg:                                            ; preds = %bb.fd
  %.val.i.i.i.i76.i = load i64, ptr %i.o, align 8, !alias.scope !1902, !noalias !1819 ; 2 uses
  %i.li = icmp eq i64 %.val.i.i.i.i76.i, 0
  br i1 %i.li, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit80.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.val1.i.i.i.i77.i = load ptr, ptr %i.kr, align 8, !alias.scope !1913, !noalias !1819, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i77.i, i64 noundef %.val.i.i.i.i76.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1917
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit80.i

bb.fi:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1819
  br label %bb.fd

bb.fj:                                            ; preds = %.body.thread.i, %bb.fs, %bb.es, %.body70.i, %bb.ei, %.body78.i, %bb.dj
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !noalias !1859
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit80.i: ; preds = %bb.fh, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1819
  br label %bb.fk

bb.fk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit80.i, %bb.ef
  %.sroa.0202.0 = phi i64 [ %.sroa.0202.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit80.i ], [ -9223372036854775805, %bb.ef ]
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit80.i ], [ %i.kf, %bb.ef ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackIndexECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(264) %i.s)
          to label %bb.fl unwind label %.split.thread.i, !noalias !1859

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1819
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.dv
  %.sroa.0202.1 = phi i64 [ -9223372036854775808, %bb.dv ], [ %.sroa.0202.0, %bb.fl ]
  %.sroa.13.1 = phi ptr [ %i.jv, %bb.dv ], [ %.sroa.13.0, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1819
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.fp unwind label %bb.fn, !noalias !1859

bb.fn:                                            ; preds = %bb.fm
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i81.i = load i64, ptr %i.y, align 8, !alias.scope !1920, !noalias !1819 ; 2 uses
  %i.ll = icmp eq i64 %.val2.i.i.i.i81.i, 0
  br i1 %i.ll, label %.body120, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %.val3.i.i.i.i82.i = load ptr, ptr %i.io, align 8, !alias.scope !1931, !noalias !1819, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i82.i, i64 noundef %.val2.i.i.i.i81.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1932
  br label %.body120

bb.fp:                                            ; preds = %bb.fm
  %.val.i.i.i.i84.i = load i64, ptr %i.y, align 8, !alias.scope !1920, !noalias !1819 ; 2 uses
  %i.lm = icmp eq i64 %.val.i.i.i.i84.i, 0
  br i1 %i.lm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit89.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %.val1.i.i.i.i85.i = load ptr, ptr %i.io, align 8, !alias.scope !1931, !noalias !1819, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i85.i, i64 noundef %.val.i.i.i.i84.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1935
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit89.i

bb.fr:                                            ; preds = %bb.ec
  unreachable

bb.fs:                                            ; preds = %.split.i, %bb.dx
  %.pn59.pn114.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp116.i, %.split.i ], [ %.pn59.i, %bb.dx ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #27
          to label %bb.dj unwind label %bb.fj, !noalias !1859

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit89.i: ; preds = %bb.fq, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1819
  br label %bb.fy

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1819
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.fv unwind label %bb.ft, !noalias !1859

bb.ft:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i174 = load i64, ptr %i.ad, align 8, !alias.scope !1938, !noalias !1819 ; 2 uses
  %i.lo = icmp eq i64 %.val2.i.i174, 0
  br i1 %i.lo, label %.body120, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val3.i.i = load ptr, ptr %i.lp, align 8, !alias.scope !1943, !noalias !1819, !nonnull !6, !noundef !6
  %i.lq = mul nuw i64 %.val2.i.i174, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.lq, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1944
  br label %.body120

bb.fv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i
  %.val.i.i175 = load i64, ptr %i.ad, align 8, !alias.scope !1938, !noalias !1819 ; 2 uses
  %i.lr = icmp eq i64 %.val.i.i175, 0
  br i1 %i.lr, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val1.i.i = load ptr, ptr %i.ls, align 8, !alias.scope !1943, !noalias !1819, !nonnull !6, !noundef !6
  %i.lt = mul nuw i64 %.val.i.i175, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.lt, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1947
  br label %bb.fy

.body.thread.i:                                   ; preds = %bb.do, %bb.dn, %.body.thread111.i, %bb.de
  %.pn63105.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread111.i ], [ %.pn59.pn.pn.i, %bb.de ], [ %i.iu, %bb.dn ], [ %i.iu, %bb.do ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #27
          to label %.body120 unwind label %bb.fj, !noalias !1859

bb.fx:                                            ; preds = %bb.fc, %_RINvNtNtCskuiImRAV2ip_9elfshaker4repo10repository15clean_file_listNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB12_EECs7BtpbLEd5q3_9elfshaker.exit.thread94.i
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body120

.body120:                                         ; preds = %bb.ga, %bb.fx, %.body.thread.i, %bb.fu, %bb.ft, %bb.fo, %bb.fn, %bb.de, %bb.dd, %.thread.sink.split.i.i, %bb.da, %bb.cx, %bb.ct
  %eh.lpad-body121 = phi { ptr, i32 } [ %i.lk, %bb.fn ], [ %i.lu, %bb.fx ], [ %i.ln, %bb.ft ], [ %.pn32.ph.i.i, %.thread.sink.split.i.i ], [ %i.hs, %bb.cx ], [ %lpad.phi.i.i, %bb.dd ], [ %i.hl, %bb.ct ], [ %i.hy, %bb.da ], [ %i.ln, %bb.fu ], [ %i.lk, %bb.fo ], [ %.pn63105.i, %.body.thread.i ], [ %.pn59.pn.pn.i, %bb.de ], [ %i.lx, %bb.ga ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.bd) #27
          to label %.body109 unwind label %bb.bm

bb.fy:                                            ; preds = %_RINvNtNtCskuiImRAV2ip_9elfshaker4repo10repository15clean_file_listNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB12_EECs7BtpbLEd5q3_9elfshaker.exit.thread.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit89.i, %bb.fv, %bb.fw
  %.sroa.0202.3.ph = phi i64 [ -9223372036854775808, %bb.fw ], [ -9223372036854775808, %bb.fv ], [ %.sroa.0202.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit89.i ], [ -9223372036854775808, %_RINvNtNtCskuiImRAV2ip_9elfshaker4repo10repository15clean_file_listNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB12_EECs7BtpbLEd5q3_9elfshaker.exit.thread.i ]
  %.sroa.13.3.ph = phi ptr [ %i.is, %bb.fw ], [ %i.is, %bb.fv ], [ %.sroa.13.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit89.i ], [ %i.hr, %_RINvNtNtCskuiImRAV2ip_9elfshaker4repo10repository15clean_file_listNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB12_EECs7BtpbLEd5q3_9elfshaker.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5224.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  store i64 %.sroa.0202.3.ph, ptr %i.at, align 8
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.13.3.ph, ptr %.sroa.4223.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1950
  %i.lv = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1950 ; 3 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.fz, label %bb.gh, !prof !316

bb.fz:                                            ; preds = %bb.fy
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #29
          to label %.noexc181 unwind label %bb.ga

.noexc181:                                        ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %bb.fz
  %i.lx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.at) #27
          to label %.body120 unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.gc:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.bd)
          to label %bb.gd unwind label %bb.cd

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bl)
          to label %bb.ge unwind label %bb.e

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.gg unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.lz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !1953 ; 2 uses
  %i.ma = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.ma, label %common.resume, label %common.resume.sink.split

bb.gg:                                            ; preds = %bb.ge
  %.val.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !1953 ; 2 uses
  %i.mb = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.mb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit194, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit194.sink.split

common.resume.sink.split:                         ; preds = %bb.gf, %bb.gq
  %.val2.i.i.i.i189.sink = phi i64 [ %.val2.i.i.i.i189, %bb.gq ], [ %.val2.i.i.i.i, %bb.gf ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ml, %bb.gq ], [ %i.lz, %bb.gf ]
  %.val3.i.i.i.i190 = load ptr, ptr %i.by, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i190, i64 noundef %.val2.i.i.i.i189.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !6
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body118, %bb.gq, %bb.gf
  %common.resume.op = phi { ptr, i32 } [ %i.ml, %bb.gq ], [ %i.lz, %bb.gf ], [ %.pn107, %.body118 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit194.sink.split: ; preds = %bb.gg, %bb.gr
  %.val.i.i.i.i.sink = phi i64 [ %.val.i.i.i.i192, %bb.gr ], [ %.val.i.i.i.i, %bb.gg ]
  %.sroa.10.3.ph = phi ptr [ %.sroa.10.5, %bb.gr ], [ undef, %bb.gg ]
  %.sroa.0.3.ph = phi ptr [ %.sroa.0.5, %bb.gr ], [ null, %bb.gg ]
  %.val1.i.i.i.i = load ptr, ptr %i.by, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !6
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit194

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit194: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit194.sink.split, %bb.gg, %bb.gr
  %.sroa.10.3 = phi ptr [ undef, %bb.gg ], [ %.sroa.10.5, %bb.gr ], [ %.sroa.10.3.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit194.sink.split ]
  %.sroa.0.3 = phi ptr [ null, %bb.gg ], [ %.sroa.0.5, %bb.gr ], [ %.sroa.0.3.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit194.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.mc = insertvalue { ptr, ptr } poison, ptr %.sroa.0.3, 0
  %i.md = insertvalue { ptr, ptr } %i.mc, ptr %.sroa.10.3, 1
  ret { ptr, ptr } %i.md

bb.gh:                                            ; preds = %bb.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lv, ptr noundef nonnull align 8 dereferenceable(56) %i.at, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.bd)
          to label %bb.gi unwind label %bb.cd

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit

bb.gj:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gj, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.653, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.653)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.gk

bb.gk:                                            ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit, %bb.gj
  %.sroa.10.4 = phi ptr [ @50, %bb.gj ], [ @48, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %i.gj, %bb.gj ], [ %i.gc, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit ] ; 2 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.gn unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i183 = load i64, ptr %i.bi, align 8, !alias.scope !1964 ; 2 uses
  %i.mf = icmp eq i64 %.val2.i183, 0
  br i1 %i.mf, label %.body109, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.val3.i184 = load ptr, ptr %i.mg, align 8, !alias.scope !1969, !nonnull !6, !noundef !6
  %i.mh = mul nuw i64 %.val2.i183, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i184, i64 noundef %i.mh, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1970
  br label %.body109

bb.gn:                                            ; preds = %bb.gk
  %.val.i185 = load i64, ptr %i.bi, align 8, !alias.scope !1964 ; 2 uses
  %i.mi = icmp eq i64 %.val.i185, 0
  br i1 %i.mi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.mj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.val1.i186 = load ptr, ptr %i.mj, align 8, !alias.scope !1969, !nonnull !6, !noundef !6
  %i.mk = mul nuw i64 %.val.i185, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i186, i64 noundef %i.mk, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1973
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit

bb.gp:                                            ; preds = %bb.gs, %bb.z
  %.sroa.10.5 = phi ptr [ @52, %bb.gs ], [ %.sroa.10.0, %bb.z ] ; 2 uses
  %.sroa.0.5 = phi ptr [ %i.cv, %bb.gs ], [ %.sroa.0.0, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.gr unwind label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i189 = load i64, ptr %i.bo, align 8, !alias.scope !1976 ; 2 uses
  %i.mm = icmp eq i64 %.val2.i.i.i.i189, 0
  br i1 %i.mm, label %common.resume, label %common.resume.sink.split

bb.gr:                                            ; preds = %bb.gp
  %.val.i.i.i.i192 = load i64, ptr %i.bo, align 8, !alias.scope !1976 ; 2 uses
  %i.mn = icmp eq i64 %.val.i.i.i.i192, 0
  br i1 %i.mn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit194, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit194.sink.split

.thread253:                                       ; preds = %bb.cn, %bb.ch, %.thread260
  %eh.lpad-body256 = phi { ptr, i32 } [ %i.ge, %bb.ch ], [ %lpad.thr_comm, %.thread260 ], [ %i.gl, %bb.cn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bi) #27
          to label %.body109 unwind label %bb.bm

bb.gs:                                            ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.gp

bb.gt:                                            ; preds = %bb.k, %bb.g
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs7BtpbLEd5q3_9elfshaker5store7get_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i33 = alloca [16 x i8], align 8        ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [640 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i10 = alloca [16 x i8], align 8        ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [640 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 5 uses
  %i.h = alloca [640 x i8], align 8               ; 7 uses
  %i.i = alloca [640 x i8], align 8               ; 7 uses
  %i.j = alloca [640 x i8], align 8               ; 11 uses
  %i.k = alloca [640 x i8], align 8               ; 4 uses
  %i.l = alloca [640 x i8], align 8               ; 7 uses
  %i.m = alloca [640 x i8], align 8               ; 7 uses
  %i.n = alloca [640 x i8], align 8               ; 11 uses
end_hunk_0
