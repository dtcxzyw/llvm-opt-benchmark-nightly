Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl4read:bb.a
  store i64 2, ptr %i.dz, align 8
  store ptr %i.awp, ptr %i.ib, align 8
  store i64 2, ptr %i.ic, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ea, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dz)
          to label %bb.tb unwind label %.body331

bb.tb:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1181
  store i32 %i.awo, ptr %i.id, align 8, !alias.scope !14723, !noalias !14724
  store i32 %i.avz, ptr %i.ie, align 4, !alias.scope !14723, !noalias !14724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14725
  %i.aws = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14725 ; 3 uses
  %i.awt = icmp eq ptr %i.aws, null
  br i1 %i.awt, label %bb.tc, label %bb.te, !prof !26

bb.tc:                                            ; preds = %bb.tb
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1184 unwind label %bb.td

.noexc1184:                                       ; preds = %bb.tc
  unreachable

bb.td:                                            ; preds = %bb.tc
  %i.awu = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ea) #42
  br label %.body369

bb.te:                                            ; preds = %bb.tb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aws, ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %bb.dq

bb.tf:                                            ; preds = %._crit_edge.i1168.invoke, %bb.ta
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.avg, label %.thread2361, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.avj, i64 noundef %i.avf, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14726
  br label %.thread2361

bb.th:                                            ; preds = %.lr.ph.i546
  %i.awv = and i32 %.sroa.02.012.i548, 31
  %i.aww = shl i32 %i.vj, %i.awv
  %i.awx = or i32 %i.aww, %.sroa.0.013.i547
  %i.awy = zext i32 %i.awx to i64                 ; 3 uses
  %i.awz = icmp ugt i64 %i.ny, %i.awy
  br i1 %i.awz, label %bb.ti, label %.invoke13723

bb.ti:                                            ; preds = %bb.th
  %i.axa = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.awy ; 2 uses
  %i.axb = load ptr, ptr %i.axa, align 8, !nonnull !21, !noundef !21
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axa, i64 8
  %i.axd = load i64, ptr %i.axc, align 8, !noundef !21 ; 9 uses
  %.not.i1189 = icmp slt i64 %i.axd, 0
  br i1 %.not.i1189, label %.invoke13721, label %bb.tj, !prof !37

bb.tj:                                            ; preds = %bb.ti
  %i.axe = icmp eq i64 %i.axd, 0                  ; 2 uses
  br i1 %i.axe, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190: ; preds = %bb.tj
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14727
  %i.axf = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.axd, i64 noundef range(i64 1, 9) 1) #41, !noalias !14727 ; 3 uses
  %i.axg = icmp eq ptr %i.axf, null
  br i1 %i.axg, label %.invoke13721, label %bb.tl

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590: ; preds = %bb.tj, %bb.tl
  %i.axh = phi ptr [ %i.axf, %bb.tl ], [ inttoptr (i64 1 to ptr), %bb.tj ] ; 2 uses
  %i.axi = icmp ult i64 %i.vf, 13462
  br i1 %i.axi, label %.lr.ph.i1195, label %._crit_edge.i1199

.lr.ph.i1195:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590, %bb.tk
  %.sroa.0.013.i1196 = phi i32 [ %i.axs, %bb.tk ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590 ] ; 2 uses
  %.sroa.02.012.i1197 = phi i32 [ %i.axt, %bb.tk ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590 ] ; 3 uses
  %i.axj = phi i64 [ %i.axm, %bb.tk ], [ %i.vi, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590 ] ; 3 uses
  %i.axk = getelementptr inbounds nuw i8, ptr @10842, i64 %i.axj
  %i.axl = load i8, ptr %i.axk, align 1, !noalias !14728, !noundef !21 ; 2 uses
  %i.axm = add nuw nsw i64 %i.axj, 1              ; 4 uses
  %i.axn = zext i8 %i.axl to i32                  ; 2 uses
  %i.axo = icmp sgt i8 %i.axl, -1
  br i1 %i.axo, label %bb.tn, label %bb.tk

._crit_edge.i1199:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590, %bb.tk
  %.lcssa7.i1194 = phi i64 [ 13463, %bb.tk ], [ %i.vi, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1194, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1200 unwind label %bb.tm

.noexc1200:                                       ; preds = %._crit_edge.i1199
  unreachable

bb.tk:                                            ; preds = %.lr.ph.i1195
  %i.axp = and i32 %i.axn, 127
  %i.axq = and i32 %.sroa.02.012.i1197, 31
  %i.axr = shl i32 %i.axp, %i.axq
  %i.axs = or i32 %i.axr, %.sroa.0.013.i1196
  %i.axt = add i32 %.sroa.02.012.i1197, 7
  %exitcond.not.i1198 = icmp eq i64 %i.axm, 13463
  br i1 %exitcond.not.i1198, label %._crit_edge.i1199, label %.lr.ph.i1195

bb.tl:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.axf, ptr nonnull align 1 %i.axb, i64 %i.axd, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1192.thread2590

bb.tm:                                            ; preds = %._crit_edge.i1199, %bb.tr, %bb.tq
  %i.axu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ue

bb.tn:                                            ; preds = %.lr.ph.i1195
  %i.axv = and i32 %.sroa.02.012.i1197, 31
  %i.axw = shl i32 %i.axn, %i.axv
  %i.axx = or i32 %i.axw, %.sroa.0.013.i1196
  %i.axy = zext i32 %i.axx to i64                 ; 3 uses
  %i.axz = icmp ugt i64 %i.ny, %i.axy
  br i1 %i.axz, label %bb.to, label %bb.tq

bb.to:                                            ; preds = %bb.tn
  %i.aya = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.axy ; 2 uses
  %i.ayb = load ptr, ptr %i.aya, align 8, !nonnull !21, !noundef !21
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aya, i64 8
  %i.ayd = load i64, ptr %i.ayc, align 8, !noundef !21 ; 8 uses
  %.not.i1202 = icmp slt i64 %i.ayd, 0
  br i1 %.not.i1202, label %bb.tr, label %bb.tp, !prof !37

bb.tp:                                            ; preds = %bb.to
  %i.aye = icmp eq i64 %i.ayd, 0                  ; 2 uses
  br i1 %i.aye, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1203

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1203: ; preds = %bb.tp
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14729
  %i.ayf = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ayd, i64 noundef range(i64 1, 9) 1) #41, !noalias !14729 ; 3 uses
  %i.ayg = icmp eq ptr %i.ayf, null
  br i1 %i.ayg, label %bb.tr, label %bb.tt

bb.tq:                                            ; preds = %bb.tn
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.axy, i64 noundef %i.ny, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10829) #46
          to label %bb.u unwind label %bb.tm

bb.tr:                                            ; preds = %bb.to, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1203
  %.sroa.42246.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1203 ], [ 0, %bb.to ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42246.0.ph, i64 %i.ayd) #46
          to label %bb.u unwind label %bb.tm

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606: ; preds = %bb.tp, %bb.tt
  %i.ayh = phi ptr [ %i.ayf, %bb.tt ], [ inttoptr (i64 1 to ptr), %bb.tp ] ; 2 uses
  %i.ayi = icmp ult i64 %i.axj, 13462
  br i1 %i.ayi, label %.lr.ph.i1208, label %._crit_edge.i1212.invoke

.lr.ph.i1208:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606, %bb.ts
  %.sroa.0.013.i1209 = phi i32 [ %i.ayt, %bb.ts ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606 ] ; 2 uses
  %.sroa.02.012.i1210 = phi i32 [ %i.ayu, %bb.ts ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606 ] ; 3 uses
  %i.ayj = phi i64 [ %i.aym, %bb.ts ], [ %i.axm, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606 ] ; 3 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr @10842, i64 %i.ayj
  %i.ayl = load i8, ptr %i.ayk, align 1, !noalias !14730, !noundef !21 ; 2 uses
  %i.aym = add nuw nsw i64 %i.ayj, 1              ; 4 uses
  %i.ayn = zext i8 %i.ayl to i32                  ; 2 uses
  %i.ayo = icmp sgt i8 %i.ayl, -1
  br i1 %i.ayo, label %bb.tu, label %bb.ts

._crit_edge.i1212.invoke:                         ; preds = %bb.tu, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606, %bb.ts, %bb.tv
  %i.ayp = phi i64 [ 13463, %bb.tv ], [ 13463, %bb.ts ], [ %i.aym, %bb.tu ], [ %i.axm, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ayp, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1212.cont unwind label %bb.uc

._crit_edge.i1212.cont:                           ; preds = %._crit_edge.i1212.invoke
  unreachable

bb.ts:                                            ; preds = %.lr.ph.i1208
  %i.ayq = and i32 %i.ayn, 127
  %i.ayr = and i32 %.sroa.02.012.i1210, 31
  %i.ays = shl i32 %i.ayq, %i.ayr
  %i.ayt = or i32 %i.ays, %.sroa.0.013.i1209
  %i.ayu = add i32 %.sroa.02.012.i1210, 7
  %exitcond.not.i1211 = icmp eq i64 %i.aym, 13463
  br i1 %exitcond.not.i1211, label %._crit_edge.i1212.invoke, label %.lr.ph.i1208

bb.tt:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1203
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ayf, ptr nonnull align 1 %i.ayb, i64 %i.ayd, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1205.thread2606

.body329:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1225
  %lpad.thr_comm.split-lp2615 = landingpad { ptr, i32 }
          cleanup
  br label %.body369

bb.tu:                                            ; preds = %.lr.ph.i1208
  %i.ayv = and i32 %.sroa.02.012.i1210, 31
  %i.ayw = shl i32 %i.ayn, %i.ayv
  %i.ayx = or i32 %i.ayw, %.sroa.0.013.i1209
  %i.ayy = icmp ult i64 %i.ayj, 13462
  br i1 %i.ayy, label %.lr.ph.i1217, label %._crit_edge.i1212.invoke

.lr.ph.i1217:                                     ; preds = %bb.tu, %bb.tv
  %.sroa.0.013.i1218 = phi i32 [ %i.azi, %bb.tv ], [ 0, %bb.tu ] ; 2 uses
  %.sroa.02.012.i1219 = phi i32 [ %i.azj, %bb.tv ], [ 0, %bb.tu ] ; 3 uses
  %i.ayz = phi i64 [ %i.azc, %bb.tv ], [ %i.aym, %bb.tu ] ; 2 uses
  %i.aza = getelementptr inbounds nuw i8, ptr @10842, i64 %i.ayz
  %i.azb = load i8, ptr %i.aza, align 1, !noalias !14731, !noundef !21 ; 2 uses
  %i.azc = add nuw i64 %i.ayz, 1                  ; 3 uses
  %i.azd = zext i8 %i.azb to i32                  ; 2 uses
  %i.aze = icmp sgt i8 %i.azb, -1
  br i1 %i.aze, label %bb.tw, label %bb.tv

bb.tv:                                            ; preds = %.lr.ph.i1217
  %i.azf = and i32 %i.azd, 127
  %i.azg = and i32 %.sroa.02.012.i1219, 31
  %i.azh = shl i32 %i.azf, %i.azg
  %i.azi = or i32 %i.azh, %.sroa.0.013.i1218
  %i.azj = add i32 %.sroa.02.012.i1219, 7
  %exitcond.not.i1220 = icmp eq i64 %i.azc, 13463
  br i1 %exitcond.not.i1220, label %._crit_edge.i1212.invoke, label %.lr.ph.i1217

bb.tw:                                            ; preds = %.lr.ph.i1217
  %i.azk = and i32 %.sroa.02.012.i1219, 31
  %i.azl = shl i32 %i.azd, %i.azk
  %i.azm = or i32 %i.azl, %.sroa.0.013.i1218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.azn = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.azo = icmp eq ptr %i.azn, null
  br i1 %i.azo, label %bb.tx, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1225, !prof !26

bb.tx:                                            ; preds = %bb.tw
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1224 unwind label %bb.uc

.noexc1224:                                       ; preds = %bb.tx
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1225: ; preds = %bb.tw
  store i64 %.sroa.01732.0, ptr %i.azn, align 8
  %.sroa.42131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azn, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42131.0..sroa_idx, align 8
  %.sroa.52132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azn, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52132.0..sroa_idx, align 8
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azn, i64 24
  store i64 %i.axd, ptr %i.azp, align 8
  %.sroa.42134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azn, i64 32
  store ptr %i.axh, ptr %.sroa.42134.0..sroa_idx, align 8
  %.sroa.52135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azn, i64 40
  store i64 %i.axd, ptr %.sroa.52135.0..sroa_idx, align 8
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azn, i64 48
  store i64 %i.ayd, ptr %i.azq, align 8
  %.sroa.42137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azn, i64 56
  store ptr %i.ayh, ptr %.sroa.42137.0..sroa_idx, align 8
  %.sroa.52138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azn, i64 64
  store i64 %i.ayd, ptr %.sroa.52138.0..sroa_idx, align 8
  store i64 3, ptr %i.dx, align 8
  store ptr %i.azn, ptr %i.hx, align 8
  store i64 3, ptr %i.hy, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dy, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dx)
          to label %bb.ty unwind label %.body329

bb.ty:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1225
  store i32 %i.azm, ptr %i.hz, align 8, !alias.scope !14732, !noalias !14733
  store i32 %i.ayx, ptr %i.ia, align 4, !alias.scope !14732, !noalias !14733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14734
  %i.azr = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14734 ; 3 uses
  %i.azs = icmp eq ptr %i.azr, null
  br i1 %i.azs, label %bb.tz, label %bb.ub, !prof !26

bb.tz:                                            ; preds = %bb.ty
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc1228 unwind label %bb.ua

.noexc1228:                                       ; preds = %bb.tz
  unreachable

bb.ua:                                            ; preds = %bb.tz
  %i.azt = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dy) #42
  br label %.body369

bb.ub:                                            ; preds = %bb.ty
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.azr, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %bb.dq

bb.uc:                                            ; preds = %._crit_edge.i1212.invoke, %bb.tx
  %lpad.thr_comm2614 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aye, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayh, i64 noundef %i.ayd, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14735
  br label %bb.ue

bb.ue:                                            ; preds = %bb.tm, %bb.uc, %bb.ud
  %.pn215.ph = phi { ptr, i32 } [ %i.axu, %bb.tm ], [ %lpad.thr_comm2614, %bb.uc ], [ %lpad.thr_comm2614, %bb.ud ] ; 2 uses
  br i1 %i.axe, label %.thread2361, label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.axh, i64 noundef %i.axd, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14736
  br label %.thread2361

bb.ug:                                            ; preds = %.lr.ph.i555
  %i.azu = and i32 %.sroa.02.012.i557, 31
  %i.azv = shl i32 %i.vv, %i.azu
  %i.azw = or i32 %i.azv, %.sroa.0.013.i556
  %i.azx = zext i32 %i.azw to i64                 ; 3 uses
  %i.azy = icmp ugt i64 %i.ny, %i.azx
  br i1 %i.azy, label %bb.uh, label %.invoke13723

bb.uh:                                            ; preds = %bb.ug
  %i.azz = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.azx ; 2 uses
  %i.baa = load ptr, ptr %i.azz, align 8, !nonnull !21, !noundef !21
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azz, i64 8
  %i.bac = load i64, ptr %i.bab, align 8, !noundef !21 ; 10 uses
  %.not.i1236 = icmp slt i64 %i.bac, 0
  br i1 %.not.i1236, label %.invoke13721, label %bb.ui, !prof !37

bb.ui:                                            ; preds = %bb.uh
  %i.bad = icmp eq i64 %i.bac, 0                  ; 2 uses
  br i1 %i.bad, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237: ; preds = %bb.ui
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14737
  %i.bae = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bac, i64 noundef range(i64 1, 9) 1) #41, !noalias !14737 ; 3 uses
  %i.baf = icmp eq ptr %i.bae, null
  br i1 %i.baf, label %.invoke13721, label %bb.uk

.invoke13723:                                     ; preds = %bb.ug, %bb.th, %bb.ss, %bb.qx, %bb.py, %bb.mf
  %i.bag = phi i64 [ %i.awy, %bb.th ], [ %i.ava, %bb.ss ], [ %i.ara, %bb.qx ], [ %i.apc, %bb.py ], [ %i.aif, %bb.mf ], [ %i.azx, %bb.ug ]
  %i.bah = phi ptr [ @10828, %bb.th ], [ @10827, %bb.ss ], [ @10824, %bb.qx ], [ @10823, %bb.py ], [ @10814, %bb.mf ], [ @10830, %bb.ug ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bag, i64 noundef %i.ny, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bah) #46
          to label %.cont13724 unwind label %.body249.thread

.cont13724:                                       ; preds = %.invoke13723
  unreachable

.invoke13721:                                     ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237, %bb.uh, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190, %bb.ti, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159, %bb.st, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092, %bb.qy, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058, %bb.pz, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884, %bb.mg
  %i.bai = phi i64 [ 0, %bb.ti ], [ 0, %bb.st ], [ 0, %bb.qy ], [ 0, %bb.pz ], [ 0, %bb.mg ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237 ], [ 0, %bb.uh ]
  %i.baj = phi i64 [ %i.axd, %bb.ti ], [ %i.avf, %bb.st ], [ %i.arf, %bb.qy ], [ %i.aph, %bb.pz ], [ %i.aik, %bb.mg ], [ %i.aik, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i884 ], [ %i.aph, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1058 ], [ %i.arf, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1092 ], [ %i.avf, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1159 ], [ %i.axd, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1190 ], [ %i.bac, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237 ], [ %i.bac, %bb.uh ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bai, i64 %i.baj) #46
          to label %.cont13722 unwind label %.body249.thread

.cont13722:                                       ; preds = %.invoke13721
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625: ; preds = %bb.ui, %bb.uk
  %i.bak = phi ptr [ %i.bae, %bb.uk ], [ inttoptr (i64 1 to ptr), %bb.ui ] ; 3 uses
  %i.bal = icmp ult i64 %i.vr, 13462
  br i1 %i.bal, label %bb.ul, label %bb.uj

bb.uj:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.vu, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1240 unwind label %.thread2631.loopexit.split-lp

.noexc1240:                                       ; preds = %bb.uj
  unreachable

bb.uk:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1237
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bae, ptr nonnull align 1 %i.baa, i64 %i.bac, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625

.thread2648:                                      ; preds = %bb.vh, %bb.vg
  br i1 %.sroa.085.1.ph, label %.thread2631, label %.body369

.thread2631.loopexit:                             ; preds = %bb.ul
  %lpad.loopexit2753 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2631

.thread2631.loopexit.split-lp:                    ; preds = %bb.uj
  %lpad.loopexit.split-lp2754 = landingpad { ptr, i32 }
          cleanup
  br label %.thread2631

bb.ul:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1239.thread2625
  %i.bam = getelementptr inbounds nuw i8, ptr @10842, i64 %i.vu
  %i.ban = load i8, ptr %i.bam, align 1, !noalias !14738, !noundef !21
  %i.bao = add nuw nsw i64 %i.vr, 2
  %i.bap = zext i8 %i.ban to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bap)
          to label %bb.um unwind label %.thread2631.loopexit

bb.um:                                            ; preds = %bb.ul
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bak, i64 noundef %i.bac, i32 noundef %i.bap)
          to label %bb.uo unwind label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.baq = landingpad { ptr, i32 }
          cleanup
  br label %bb.vg

bb.uo:                                            ; preds = %bb.um
  %.not5724 = icmp eq i64 %i.vr, 13461
  br i1 %.not5724, label %._crit_edge.i1248.invoke, label %.lr.ph.i1244

.lr.ph.i1244:                                     ; preds = %bb.uo, %bb.up
  %.sroa.0.013.i1245 = phi i32 [ %i.bbb, %bb.up ], [ 0, %bb.uo ] ; 2 uses
  %.sroa.02.012.i1246 = phi i32 [ %i.bbc, %bb.up ], [ 0, %bb.uo ] ; 3 uses
  %i.bar = phi i64 [ %i.bau, %bb.up ], [ %i.bao, %bb.uo ] ; 3 uses
  %i.bas = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bar
  %i.bat = load i8, ptr %i.bas, align 1, !noalias !14739, !noundef !21 ; 2 uses
  %i.bau = add nuw nsw i64 %i.bar, 1              ; 4 uses
  %i.bav = zext i8 %i.bat to i32                  ; 2 uses
  %i.baw = icmp sgt i8 %i.bat, -1
  br i1 %i.baw, label %bb.uq, label %bb.up

._crit_edge.i1248.invoke:                         ; preds = %bb.uo, %bb.us, %bb.uq, %bb.up, %bb.ur, %bb.ut
  %i.bax = phi i64 [ 13463, %bb.ut ], [ 13463, %bb.ur ], [ 13463, %bb.up ], [ 13463, %bb.uo ], [ %i.bau, %bb.uq ], [ %i.bbl, %bb.us ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bax, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1248.cont unwind label %.thread2652

._crit_edge.i1248.cont:                           ; preds = %._crit_edge.i1248.invoke
  unreachable

bb.up:                                            ; preds = %.lr.ph.i1244
  %i.bay = and i32 %i.bav, 127
  %i.baz = and i32 %.sroa.02.012.i1246, 31
  %i.bba = shl i32 %i.bay, %i.baz
  %i.bbb = or i32 %i.bba, %.sroa.0.013.i1245
  %i.bbc = add i32 %.sroa.02.012.i1246, 7
  %exitcond.not.i1247 = icmp eq i64 %i.bau, 13463
  br i1 %exitcond.not.i1247, label %._crit_edge.i1248.invoke, label %.lr.ph.i1244

.thread2652:                                      ; preds = %._crit_edge.i1248.invoke, %bb.uv
  %i.bbd = landingpad { ptr, i32 }
          cleanup
  br label %.thread2642

bb.uq:                                            ; preds = %.lr.ph.i1244
  %i.bbe = and i32 %.sroa.02.012.i1246, 31
  %i.bbf = shl i32 %i.bav, %i.bbe
  %i.bbg = or i32 %i.bbf, %.sroa.0.013.i1245
  %i.bbh = icmp ult i64 %i.bar, 13462
  br i1 %i.bbh, label %.lr.ph.i1253, label %._crit_edge.i1248.invoke

.lr.ph.i1253:                                     ; preds = %bb.uq, %bb.ur
  %.sroa.0.013.i1254 = phi i32 [ %i.bbr, %bb.ur ], [ 0, %bb.uq ] ; 2 uses
  %.sroa.02.012.i1255 = phi i32 [ %i.bbs, %bb.ur ], [ 0, %bb.uq ] ; 3 uses
  %i.bbi = phi i64 [ %i.bbl, %bb.ur ], [ %i.bau, %bb.uq ] ; 3 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bbi
  %i.bbk = load i8, ptr %i.bbj, align 1, !noalias !14740, !noundef !21 ; 2 uses
  %i.bbl = add nuw nsw i64 %i.bbi, 1              ; 4 uses
  %i.bbm = zext i8 %i.bbk to i32                  ; 2 uses
  %i.bbn = icmp sgt i8 %i.bbk, -1
  br i1 %i.bbn, label %bb.us, label %bb.ur

bb.ur:                                            ; preds = %.lr.ph.i1253
  %i.bbo = and i32 %i.bbm, 127
  %i.bbp = and i32 %.sroa.02.012.i1255, 31
  %i.bbq = shl i32 %i.bbo, %i.bbp
  %i.bbr = or i32 %i.bbq, %.sroa.0.013.i1254
  %i.bbs = add i32 %.sroa.02.012.i1255, 7
  %exitcond.not.i1256 = icmp eq i64 %i.bbl, 13463
  br i1 %exitcond.not.i1256, label %._crit_edge.i1248.invoke, label %.lr.ph.i1253

bb.us:                                            ; preds = %.lr.ph.i1253
  %i.bbt = and i32 %.sroa.02.012.i1255, 31
  %i.bbu = shl i32 %i.bbm, %i.bbt
  %i.bbv = or i32 %i.bbu, %.sroa.0.013.i1254
  %i.bbw = icmp ult i64 %i.bbi, 13462
  br i1 %i.bbw, label %.lr.ph.i1262, label %._crit_edge.i1248.invoke

.lr.ph.i1262:                                     ; preds = %bb.us, %bb.ut
  %.sroa.0.013.i1263 = phi i32 [ %i.bcg, %bb.ut ], [ 0, %bb.us ] ; 2 uses
  %.sroa.02.012.i1264 = phi i32 [ %i.bch, %bb.ut ], [ 0, %bb.us ] ; 3 uses
  %i.bbx = phi i64 [ %i.bca, %bb.ut ], [ %i.bbl, %bb.us ] ; 2 uses
  %i.bby = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bbx
  %i.bbz = load i8, ptr %i.bby, align 1, !noalias !14741, !noundef !21 ; 2 uses
  %i.bca = add nuw i64 %i.bbx, 1                  ; 3 uses
  %i.bcb = zext i8 %i.bbz to i32                  ; 2 uses
  %i.bcc = icmp sgt i8 %i.bbz, -1
  br i1 %i.bcc, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %.lr.ph.i1262
  %i.bcd = and i32 %i.bcb, 127
  %i.bce = and i32 %.sroa.02.012.i1264, 31
  %i.bcf = shl i32 %i.bcd, %i.bce
  %i.bcg = or i32 %i.bcf, %.sroa.0.013.i1263
  %i.bch = add i32 %.sroa.02.012.i1264, 7
  %exitcond.not.i1265 = icmp eq i64 %i.bca, 13463
  br i1 %exitcond.not.i1265, label %._crit_edge.i1248.invoke, label %.lr.ph.i1262

bb.uu:                                            ; preds = %.lr.ph.i1262
  %i.bci = and i32 %.sroa.02.012.i1264, 31
  %i.bcj = shl i32 %i.bcb, %i.bci
  %i.bck = or i32 %i.bcj, %.sroa.0.013.i1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bcl = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.bcm = icmp eq ptr %i.bcl, null
  br i1 %i.bcm, label %bb.uv, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270, !prof !26

bb.uv:                                            ; preds = %bb.uu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1269 unwind label %.thread2652

.noexc1269:                                       ; preds = %bb.uv
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270: ; preds = %bb.uu
  store i64 %.sroa.01732.0, ptr %i.bcl, align 8
  %.sroa.42143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bcl, i64 8
  store ptr %.sroa.50.0, ptr %.sroa.42143.0..sroa_idx, align 8
  %.sroa.52144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bcl, i64 16
  store i64 %.sroa.77.0, ptr %.sroa.52144.0..sroa_idx, align 8
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcl, i64 24
  store i64 %i.bac, ptr %i.bcn, align 8
  %.sroa.42146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bcl, i64 32
  store ptr %i.bak, ptr %.sroa.42146.0..sroa_idx, align 8
  %.sroa.52147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bcl, i64 40
  store i64 %i.bac, ptr %.sroa.52147.0..sroa_idx, align 8
  store i64 2, ptr %i.dt, align 8
  store ptr %i.bcl, ptr %i.hp, align 8
  store i64 2, ptr %i.hq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bco = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 4 uses
  %i.bcp = icmp eq ptr %i.bco, null
  br i1 %i.bcp, label %bb.uw, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272, !prof !26

bb.uw:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1271 unwind label %bb.ve

.noexc1271:                                       ; preds = %bb.uw
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272: ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bco, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false)
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bco, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bcq, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false)
  store i64 2, ptr %i.ds, align 8
  store ptr %i.bco, ptr %i.hr, align 8
  store i64 2, ptr %i.hs, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14742)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !14743
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dt)
          to label %bb.ux unwind label %bb.uz, !noalias !14744

bb.ux:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !14743
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ds)
          to label %bb.va unwind label %bb.uy, !noalias !14745

bb.uy:                                            ; preds = %bb.ux
  %i.bcr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsf8MNnN4IDbl_8iced_x869formatter15FormatterStringEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #42, !noalias !14743
  br label %.body369

bb.uz:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1272
  %i.bcs = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ds) #42, !noalias !14745
  br label %.body369

bb.va:                                            ; preds = %bb.ux
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !14746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !14746
  store i32 %i.bbv, ptr %i.hu, align 8, !alias.scope !14742, !noalias !14746
  store i32 %i.bbg, ptr %i.hv, align 4, !alias.scope !14742, !noalias !14746
  store i32 %i.bck, ptr %i.hw, align 8, !alias.scope !14742, !noalias !14746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14747
  %i.bct = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !14747 ; 3 uses
  %i.bcu = icmp eq ptr %i.bct, null
  br i1 %i.bcu, label %bb.vb, label %bb.vd, !prof !26

bb.vb:                                            ; preds = %bb.va
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc1276 unwind label %bb.vc

.noexc1276:                                       ; preds = %bb.vb
  unreachable

bb.vc:                                            ; preds = %bb.vb
  %i.bcv = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info23SimpleInstrInfo_os_loopEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.du) #42
  br label %.body369

bb.vd:                                            ; preds = %bb.va
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bct, ptr noundef nonnull align 8 dereferenceable(64) %i.du, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  br label %bb.dq

bb.ve:                                            ; preds = %bb.uw
  %i.bcw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dt) #42
  br label %.thread2642

.thread2642:                                      ; preds = %bb.ve, %.thread2652
  %.sroa.085.22647 = phi i1 [ true, %.thread2652 ], [ false, %bb.ve ] ; 2 uses
  %.pn2092646 = phi { ptr, i32 } [ %i.bbd, %.thread2652 ], [ %i.bcw, %bb.ve ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14748)
  %.val.i1278 = load i64, ptr %i.dv, align 8, !alias.scope !14748 ; 2 uses
  %i.bcx = icmp eq i64 %.val.i1278, 0
  br i1 %i.bcx, label %bb.vg, label %bb.vf

bb.vf:                                            ; preds = %.thread2642
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.val1.i1279 = load ptr, ptr %i.bcy, align 8, !alias.scope !14748, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1279, i64 noundef %.val.i1278, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14748
  br label %bb.vg

bb.vg:                                            ; preds = %bb.un, %.thread2642, %bb.vf
  %.pn209.pn.ph = phi { ptr, i32 } [ %i.baq, %bb.un ], [ %.pn2092646, %.thread2642 ], [ %.pn2092646, %bb.vf ] ; 2 uses
  %.sroa.085.1.ph = phi i1 [ true, %bb.un ], [ %.sroa.085.22647, %.thread2642 ], [ %.sroa.085.22647, %bb.vf ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14749)
  %.val.i1281 = load i64, ptr %i.dw, align 8, !alias.scope !14749 ; 2 uses
  %i.bcz = icmp eq i64 %.val.i1281, 0
  br i1 %i.bcz, label %.thread2648, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.bda = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.val1.i1282 = load ptr, ptr %i.bda, align 8, !alias.scope !14749, !nonnull !21, !noundef !21
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1282, i64 noundef %.val.i1281, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14749
  br label %.thread2648

.thread2631:                                      ; preds = %.thread2631.loopexit, %.thread2631.loopexit.split-lp, %.thread2648
  %.pn209.pn.pn2634 = phi { ptr, i32 } [ %.pn209.pn.ph, %.thread2648 ], [ %lpad.loopexit2753, %.thread2631.loopexit ], [ %lpad.loopexit.split-lp2754, %.thread2631.loopexit.split-lp ] ; 2 uses
  br i1 %i.bad, label %.thread2361, label %bb.vi

bb.vi:                                            ; preds = %.thread2631
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bak, i64 noundef %i.bac, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14750
  br label %.thread2361

bb.vj:                                            ; preds = %bb.cw
  %i.bdb = getelementptr inbounds nuw i8, ptr @10842, i64 %.sroa.156.2
  %i.bdc = load i8, ptr %i.bdb, align 1, !noalias !14751, !noundef !21
  %i.bdd = zext i8 %i.bdc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.50.0) ]
  invoke fastcc void @_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas7fmt_tbl10add_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.50.0, i64 noundef %.sroa.77.0, i32 noundef %i.bdd)
          to label %bb.vk unwind label %.loopexit.thread

bb.vk:                                            ; preds = %bb.vj
  %.not2723 = icmp eq i64 %.sroa.156.2, 13462
  br i1 %.not2723, label %._crit_edge.i1293.invoke, label %.lr.ph.i1289.preheader

.lr.ph.i1289.preheader:                           ; preds = %bb.vk
  %i.bde = add nuw nsw i64 %.sroa.156.2, 1
  br label %.lr.ph.i1289

.lr.ph.i1289:                                     ; preds = %.lr.ph.i1289.preheader, %bb.vl
  %.sroa.0.013.i1290 = phi i32 [ %i.bdp, %bb.vl ], [ 0, %.lr.ph.i1289.preheader ] ; 2 uses
  %.sroa.02.012.i1291 = phi i32 [ %i.bdq, %bb.vl ], [ 0, %.lr.ph.i1289.preheader ] ; 3 uses
  %i.bdf = phi i64 [ %i.bdi, %bb.vl ], [ %i.bde, %.lr.ph.i1289.preheader ] ; 3 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr @10842, i64 %i.bdf
  %i.bdh = load i8, ptr %i.bdg, align 1, !noalias !14752, !noundef !21 ; 2 uses
  %i.bdi = add nuw nsw i64 %i.bdf, 1              ; 4 uses
  %i.bdj = zext i8 %i.bdh to i32                  ; 2 uses
  %i.bdk = icmp sgt i8 %i.bdh, -1
  br i1 %i.bdk, label %bb.vm, label %bb.vl

._crit_edge.i1293.invoke:                         ; preds = %bb.vk, %bb.vm, %bb.vl, %bb.vn
  %i.bdl = phi i64 [ 13463, %bb.vn ], [ 13463, %bb.vl ], [ 13463, %bb.vk ], [ %i.bdi, %bb.vm ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bdl, i64 noundef 13463, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1293.cont unwind label %.thread2668

._crit_edge.i1293.cont:                           ; preds = %._crit_edge.i1293.invoke
  unreachable
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm7fmt_tbl4read:bb.a
  store i64 2, ptr %i.dw, align 8
  store ptr %i.ajd, ptr %i.hn, align 8
  store i64 2, ptr %i.ho, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dw)
          to label %bb.kk unwind label %.body266

bb.kk:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit907
  store i32 %i.ain, ptr %i.hp, align 8, !alias.scope !15899, !noalias !15900
  store i32 %i.ajc, ptr %i.hq, align 4, !alias.scope !15899, !noalias !15900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15901
  %i.ajg = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15901 ; 3 uses
  %i.ajh = icmp eq ptr %i.ajg, null
  br i1 %i.ajh, label %bb.kl, label %bb.kn, !prof !26

bb.kl:                                            ; preds = %bb.kk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc910 unwind label %bb.km

.noexc910:                                        ; preds = %bb.kl
  unreachable

bb.km:                                            ; preds = %bb.kl
  %i.aji = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dx) #42
  br label %.body382

bb.kn:                                            ; preds = %bb.kk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajg, ptr noundef nonnull align 8 dereferenceable(32) %i.dx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  br label %bb.eh

bb.ko:                                            ; preds = %._crit_edge.i894.invoke, %bb.kj
  %lpad.thr_comm2380 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ahu, label %.thread2309, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahx, i64 noundef %i.aht, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15902
  br label %.thread2309

bb.kq:                                            ; preds = %.lr.ph.i521
  %i.ajj = and i32 %.sroa.02.012.i523, 31
  %i.ajk = shl i32 %i.rp, %i.ajj
  %i.ajl = or i32 %i.ajk, %.sroa.0.013.i522
  %i.ajm = zext i32 %i.ajl to i64                 ; 3 uses
  %i.ajn = icmp ugt i64 %i.lw, %i.ajm
  br i1 %i.ajn, label %bb.kr, label %.invoke12685

bb.kr:                                            ; preds = %bb.kq
  %i.ajo = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.ajm ; 2 uses
  %i.ajp = load ptr, ptr %i.ajo, align 8, !nonnull !21, !noundef !21
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.ajr = load i64, ptr %i.ajq, align 8, !noundef !21 ; 9 uses
  %.not.i915 = icmp slt i64 %i.ajr, 0
  br i1 %.not.i915, label %.invoke12683, label %bb.ks, !prof !37

bb.ks:                                            ; preds = %bb.kr
  %i.ajs = icmp eq i64 %i.ajr, 0                  ; 2 uses
  br i1 %i.ajs, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i916

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i916: ; preds = %bb.ks
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15903
  %i.ajt = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ajr, i64 noundef range(i64 1, 9) 1) #41, !noalias !15903 ; 3 uses
  %i.aju = icmp eq ptr %i.ajt, null
  br i1 %i.aju, label %.invoke12683, label %bb.ku

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391: ; preds = %bb.ks, %bb.ku
  %i.ajv = phi ptr [ %i.ajt, %bb.ku ], [ inttoptr (i64 1 to ptr), %bb.ks ] ; 2 uses
  %i.ajw = icmp ult i64 %i.rl, 10831
  br i1 %i.ajw, label %.lr.ph.i921, label %._crit_edge.i925

.lr.ph.i921:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391, %bb.kt
  %.sroa.0.013.i922 = phi i32 [ %i.akg, %bb.kt ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391 ] ; 2 uses
  %.sroa.02.012.i923 = phi i32 [ %i.akh, %bb.kt ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391 ] ; 3 uses
  %i.ajx = phi i64 [ %i.aka, %bb.kt ], [ %i.ro, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391 ] ; 3 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr @10956, i64 %i.ajx
  %i.ajz = load i8, ptr %i.ajy, align 1, !noalias !15904, !noundef !21 ; 2 uses
  %i.aka = add nuw nsw i64 %i.ajx, 1              ; 4 uses
  %i.akb = zext i8 %i.ajz to i32                  ; 2 uses
  %i.akc = icmp sgt i8 %i.ajz, -1
  br i1 %i.akc, label %bb.kw, label %bb.kt

._crit_edge.i925:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391, %bb.kt
  %.lcssa7.i920 = phi i64 [ 10832, %bb.kt ], [ %i.ro, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i920, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc926 unwind label %bb.kv

.noexc926:                                        ; preds = %._crit_edge.i925
  unreachable

bb.kt:                                            ; preds = %.lr.ph.i921
  %i.akd = and i32 %i.akb, 127
  %i.ake = and i32 %.sroa.02.012.i923, 31
  %i.akf = shl i32 %i.akd, %i.ake
  %i.akg = or i32 %i.akf, %.sroa.0.013.i922
  %i.akh = add i32 %.sroa.02.012.i923, 7
  %exitcond.not.i924 = icmp eq i64 %i.aka, 10832
  br i1 %exitcond.not.i924, label %._crit_edge.i925, label %.lr.ph.i921

bb.ku:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i916
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ajt, ptr nonnull align 1 %i.ajp, i64 %i.ajr, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit918.thread2391

bb.kv:                                            ; preds = %._crit_edge.i925, %bb.la, %bb.kz
  %i.aki = landingpad { ptr, i32 }
          cleanup
  br label %bb.ln

bb.kw:                                            ; preds = %.lr.ph.i921
  %i.akj = and i32 %.sroa.02.012.i923, 31
  %i.akk = shl i32 %i.akb, %i.akj
  %i.akl = or i32 %i.akk, %.sroa.0.013.i922
  %i.akm = zext i32 %i.akl to i64                 ; 3 uses
  %i.akn = icmp ugt i64 %i.lw, %i.akm
  br i1 %i.akn, label %bb.kx, label %bb.kz

bb.kx:                                            ; preds = %bb.kw
  %i.ako = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.akm ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8, !nonnull !21, !noundef !21
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ako, i64 8
  %i.akr = load i64, ptr %i.akq, align 8, !noundef !21 ; 8 uses
  %.not.i928 = icmp slt i64 %i.akr, 0
  br i1 %.not.i928, label %bb.la, label %bb.ky, !prof !37

bb.ky:                                            ; preds = %bb.kx
  %i.aks = icmp eq i64 %i.akr, 0                  ; 2 uses
  br i1 %i.aks, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i929

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i929: ; preds = %bb.ky
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15905
  %i.akt = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.akr, i64 noundef range(i64 1, 9) 1) #41, !noalias !15905 ; 3 uses
  %i.aku = icmp eq ptr %i.akt, null
  br i1 %i.aku, label %bb.la, label %bb.lc

bb.kz:                                            ; preds = %bb.kw
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.akm, i64 noundef %i.lw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10923) #46
          to label %bb.u unwind label %bb.kv

bb.la:                                            ; preds = %bb.kx, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i929
  %.sroa.42124.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i929 ], [ 0, %bb.kx ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42124.0.ph, i64 %i.akr) #46
          to label %bb.u unwind label %bb.kv

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407: ; preds = %bb.ky, %bb.lc
  %i.akv = phi ptr [ %i.akt, %bb.lc ], [ inttoptr (i64 1 to ptr), %bb.ky ] ; 2 uses
  %i.akw = icmp ult i64 %i.ajx, 10831
  br i1 %i.akw, label %.lr.ph.i934, label %._crit_edge.i938.invoke

.lr.ph.i934:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407, %bb.lb
  %.sroa.0.013.i935 = phi i32 [ %i.alh, %bb.lb ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407 ] ; 2 uses
  %.sroa.02.012.i936 = phi i32 [ %i.ali, %bb.lb ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407 ] ; 3 uses
  %i.akx = phi i64 [ %i.ala, %bb.lb ], [ %i.aka, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407 ] ; 3 uses
  %i.aky = getelementptr inbounds nuw i8, ptr @10956, i64 %i.akx
  %i.akz = load i8, ptr %i.aky, align 1, !noalias !15906, !noundef !21 ; 2 uses
  %i.ala = add nuw nsw i64 %i.akx, 1              ; 4 uses
  %i.alb = zext i8 %i.akz to i32                  ; 2 uses
  %i.alc = icmp sgt i8 %i.akz, -1
  br i1 %i.alc, label %bb.ld, label %bb.lb

._crit_edge.i938.invoke:                          ; preds = %bb.ld, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407, %bb.lb, %bb.le
  %i.ald = phi i64 [ 10832, %bb.le ], [ 10832, %bb.lb ], [ %i.ala, %bb.ld ], [ %i.aka, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ald, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i938.cont unwind label %bb.ll

._crit_edge.i938.cont:                            ; preds = %._crit_edge.i938.invoke
  unreachable

bb.lb:                                            ; preds = %.lr.ph.i934
  %i.ale = and i32 %i.alb, 127
  %i.alf = and i32 %.sroa.02.012.i936, 31
  %i.alg = shl i32 %i.ale, %i.alf
  %i.alh = or i32 %i.alg, %.sroa.0.013.i935
  %i.ali = add i32 %.sroa.02.012.i936, 7
  %exitcond.not.i937 = icmp eq i64 %i.ala, 10832
  br i1 %exitcond.not.i937, label %._crit_edge.i938.invoke, label %.lr.ph.i934

bb.lc:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i929
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akt, ptr nonnull align 1 %i.akp, i64 %i.akr, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit931.thread2407

.body263:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951
  %lpad.thr_comm.split-lp2416 = landingpad { ptr, i32 }
          cleanup
  br label %.body382

bb.ld:                                            ; preds = %.lr.ph.i934
  %i.alj = and i32 %.sroa.02.012.i936, 31
  %i.alk = shl i32 %i.alb, %i.alj
  %i.all = or i32 %i.alk, %.sroa.0.013.i935
  %i.alm = icmp ult i64 %i.akx, 10831
  br i1 %i.alm, label %.lr.ph.i943, label %._crit_edge.i938.invoke

.lr.ph.i943:                                      ; preds = %bb.ld, %bb.le
  %.sroa.0.013.i944 = phi i32 [ %i.alw, %bb.le ], [ 0, %bb.ld ] ; 2 uses
  %.sroa.02.012.i945 = phi i32 [ %i.alx, %bb.le ], [ 0, %bb.ld ] ; 3 uses
  %i.aln = phi i64 [ %i.alq, %bb.le ], [ %i.ala, %bb.ld ] ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr @10956, i64 %i.aln
  %i.alp = load i8, ptr %i.alo, align 1, !noalias !15907, !noundef !21 ; 2 uses
  %i.alq = add nuw i64 %i.aln, 1                  ; 3 uses
  %i.alr = zext i8 %i.alp to i32                  ; 2 uses
  %i.als = icmp sgt i8 %i.alp, -1
  br i1 %i.als, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %.lr.ph.i943
  %i.alt = and i32 %i.alr, 127
  %i.alu = and i32 %.sroa.02.012.i945, 31
  %i.alv = shl i32 %i.alt, %i.alu
  %i.alw = or i32 %i.alv, %.sroa.0.013.i944
  %i.alx = add i32 %.sroa.02.012.i945, 7
  %exitcond.not.i946 = icmp eq i64 %i.alq, 10832
  br i1 %exitcond.not.i946, label %._crit_edge.i938.invoke, label %.lr.ph.i943

bb.lf:                                            ; preds = %.lr.ph.i943
  %i.aly = and i32 %.sroa.02.012.i945, 31
  %i.alz = shl i32 %i.alr, %i.aly
  %i.ama = or i32 %i.alz, %.sroa.0.013.i944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.amb = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.amc = icmp eq ptr %i.amb, null
  br i1 %i.amc, label %bb.lg, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951, !prof !26

bb.lg:                                            ; preds = %bb.lf
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc950 unwind label %bb.ll

.noexc950:                                        ; preds = %bb.lg
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951: ; preds = %bb.lf
  store i64 %.sroa.01598.0, ptr %i.amb, align 8
  %.sroa.41948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41948.0..sroa_idx, align 8
  %.sroa.51949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51949.0..sroa_idx, align 8
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amb, i64 24
  store i64 %i.ajr, ptr %i.amd, align 8
  %.sroa.41951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 32
  store ptr %i.ajv, ptr %.sroa.41951.0..sroa_idx, align 8
  %.sroa.51952.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 40
  store i64 %i.ajr, ptr %.sroa.51952.0..sroa_idx, align 8
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amb, i64 48
  store i64 %i.akr, ptr %i.ame, align 8
  %.sroa.41954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 56
  store ptr %i.akv, ptr %.sroa.41954.0..sroa_idx, align 8
  %.sroa.51955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amb, i64 64
  store i64 %i.akr, ptr %.sroa.51955.0..sroa_idx, align 8
  store i64 3, ptr %i.du, align 8
  store ptr %i.amb, ptr %i.hj, align 8
  store i64 3, ptr %i.hk, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dv, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.du)
          to label %bb.lh unwind label %.body263

bb.lh:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951
  store i32 %i.all, ptr %i.hl, align 8, !alias.scope !15908, !noalias !15909
  store i32 %i.ama, ptr %i.hm, align 4, !alias.scope !15908, !noalias !15909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15910
  %i.amf = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15910 ; 3 uses
  %i.amg = icmp eq ptr %i.amf, null
  br i1 %i.amg, label %bb.li, label %bb.lk, !prof !26

bb.li:                                            ; preds = %bb.lh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc954 unwind label %bb.lj

.noexc954:                                        ; preds = %bb.li
  unreachable

bb.lj:                                            ; preds = %bb.li
  %i.amh = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info18SimpleInstrInfo_ccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dv) #42
  br label %.body382

bb.lk:                                            ; preds = %bb.lh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amf, ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %bb.eh

bb.ll:                                            ; preds = %._crit_edge.i938.invoke, %bb.lg
  %lpad.thr_comm2415 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aks, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akv, i64 noundef %i.akr, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15911
  br label %bb.ln

bb.ln:                                            ; preds = %bb.kv, %bb.ll, %bb.lm
  %.pn223.ph = phi { ptr, i32 } [ %i.aki, %bb.kv ], [ %lpad.thr_comm2415, %bb.ll ], [ %lpad.thr_comm2415, %bb.lm ] ; 2 uses
  br i1 %i.ajs, label %.thread2309, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajv, i64 noundef %i.ajr, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !15912
  br label %.thread2309

bb.lp:                                            ; preds = %.lr.ph.i530
  %i.ami = and i32 %.sroa.02.012.i532, 31
  %i.amj = shl i32 %i.sb, %i.ami
  %i.amk = or i32 %i.amj, %.sroa.0.013.i531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.aml = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.amm = icmp eq ptr %i.aml, null
  br i1 %i.amm, label %.invoke12681, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit963, !prof !26

.invoke12681:                                     ; preds = %bb.lp, %bb.jw, %bb.if
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #46
          to label %.cont12682 unwind label %.body.thread

.cont12682:                                       ; preds = %.invoke12681
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit963: ; preds = %bb.lp
  store i64 %.sroa.01598.0, ptr %i.aml, align 8
  %.sroa.41957.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aml, i64 8
  store ptr %.sroa.53.0, ptr %.sroa.41957.0..sroa_idx, align 8
  %.sroa.51958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  store i64 %.sroa.69.0, ptr %.sroa.51958.0..sroa_idx, align 8
  store i64 1, ptr %i.ds, align 8
  store ptr %i.aml, ptr %i.hg, align 8
  store i64 1, ptr %i.hh, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ds)
          to label %bb.lq unwind label %.loopexit

bb.lq:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit963
  store i32 %i.amk, ptr %i.hi, align 8, !alias.scope !15913, !noalias !15914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15915
  %i.amn = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !15915 ; 3 uses
  %i.amo = icmp eq ptr %i.amn, null
  br i1 %i.amo, label %bb.lr, label %bb.lt, !prof !26

bb.lr:                                            ; preds = %bb.lq
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #46
          to label %.noexc965 unwind label %bb.ls

.noexc965:                                        ; preds = %bb.lr
  unreachable

bb.ls:                                            ; preds = %bb.lr
  %i.amp = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4info19SimpleInstrInfo_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dt) #42
  br label %.body382

bb.lt:                                            ; preds = %bb.lq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amn, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  br label %bb.eh

bb.lu:                                            ; preds = %.lr.ph.i539
  %i.amq = and i32 %.sroa.02.012.i541, 31
  %i.amr = shl i32 %i.sn, %i.amq
  %i.ams = or i32 %i.amr, %.sroa.0.013.i540
  %i.amt = zext i32 %i.ams to i64                 ; 3 uses
  %i.amu = icmp ugt i64 %i.lw, %i.amt
  br i1 %i.amu, label %bb.lv, label %.invoke12685

bb.lv:                                            ; preds = %bb.lu
  %i.amv = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.amt ; 2 uses
  %i.amw = load ptr, ptr %i.amv, align 8, !nonnull !21, !noundef !21
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  %i.amy = load i64, ptr %i.amx, align 8, !noundef !21 ; 9 uses
  %.not.i967 = icmp slt i64 %i.amy, 0
  br i1 %.not.i967, label %.invoke12683, label %bb.lw, !prof !37

bb.lw:                                            ; preds = %bb.lv
  %i.amz = icmp eq i64 %i.amy, 0                  ; 2 uses
  br i1 %i.amz, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i968: ; preds = %bb.lw
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !15916
  %i.ana = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.amy, i64 noundef range(i64 1, 9) 1) #41, !noalias !15916 ; 3 uses
  %i.anb = icmp eq ptr %i.ana, null
  br i1 %i.anb, label %.invoke12683, label %bb.ly

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426: ; preds = %bb.lw, %bb.ly
  %i.anc = phi ptr [ %i.ana, %bb.ly ], [ inttoptr (i64 1 to ptr), %bb.lw ] ; 2 uses
  %i.and = icmp ult i64 %i.sj, 10831
  br i1 %i.and, label %.lr.ph.i973, label %._crit_edge.i977

.lr.ph.i973:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426, %bb.lx
  %.sroa.0.013.i974 = phi i32 [ %i.ann, %bb.lx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426 ] ; 2 uses
  %.sroa.02.012.i975 = phi i32 [ %i.ano, %bb.lx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426 ] ; 3 uses
  %i.ane = phi i64 [ %i.anh, %bb.lx ], [ %i.sm, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426 ] ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr @10956, i64 %i.ane
  %i.ang = load i8, ptr %i.anf, align 1, !noalias !15917, !noundef !21 ; 2 uses
  %i.anh = add nuw nsw i64 %i.ane, 1              ; 3 uses
  %i.ani = zext i8 %i.ang to i32                  ; 2 uses
  %i.anj = icmp sgt i8 %i.ang, -1
  br i1 %i.anj, label %bb.lz, label %bb.lx

._crit_edge.i977:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426, %bb.lx
  %.lcssa7.i972 = phi i64 [ 10832, %bb.lx ], [ %i.sm, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit970.thread2426 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i972, i64 noundef 10832, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm7fmt_tbl4read:bb.a
  store ptr %i.ayv, ptr %i.gb, align 8
  store i64 2, ptr %i.gc, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cr)
          to label %bb.rp unwind label %.body316

bb.rp:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1229
  store i32 %i.ayu, ptr %i.gd, align 8, !alias.scope !17304, !noalias !17305
  store i32 %i.ayf, ptr %i.ge, align 4, !alias.scope !17304, !noalias !17305
  store i32 0, ptr %i.gf, align 8, !alias.scope !17304, !noalias !17305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17306
  %i.ayy = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17306 ; 3 uses
  %i.ayz = icmp eq ptr %i.ayy, null
  br i1 %i.ayz, label %bb.rq, label %bb.rs, !prof !26

bb.rq:                                            ; preds = %bb.rp
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1232 unwind label %bb.rr

.noexc1232:                                       ; preds = %bb.rq
  unreachable

bb.rr:                                            ; preds = %bb.rq
  %i.aza = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs) #42
  br label %.body385

bb.rs:                                            ; preds = %bb.rp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ayy, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.ey

bb.rt:                                            ; preds = %._crit_edge.i1216.invoke, %bb.ro
  %lpad.thr_comm2933 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.axm, label %.thread2560, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.axp, i64 noundef %i.axl, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17307
  br label %.thread2560

bb.rv:                                            ; preds = %.lr.ph.i663
  %i.azb = and i32 %.sroa.02.012.i665, 31
  %i.azc = shl i32 %i.xy, %i.azb
  %i.azd = or i32 %i.azc, %.sroa.0.013.i664
  %i.aze = zext i32 %i.azd to i64                 ; 3 uses
  %i.azf = icmp ugt i64 %i.lo, %i.aze
  br i1 %i.azf, label %bb.rw, label %.invoke14613

bb.rw:                                            ; preds = %bb.rv
  %i.azg = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.aze ; 2 uses
  %i.azh = load ptr, ptr %i.azg, align 8, !nonnull !21, !noundef !21
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azg, i64 8
  %i.azj = load i64, ptr %i.azi, align 8, !noundef !21 ; 9 uses
  %.not.i1237 = icmp slt i64 %i.azj, 0
  br i1 %.not.i1237, label %.invoke14617, label %bb.rx, !prof !37

bb.rx:                                            ; preds = %bb.rw
  %i.azk = icmp eq i64 %i.azj, 0                  ; 2 uses
  br i1 %i.azk, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1238

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1238: ; preds = %bb.rx
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17308
  %i.azl = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.azj, i64 noundef range(i64 1, 9) 1) #41, !noalias !17308 ; 3 uses
  %i.azm = icmp eq ptr %i.azl, null
  br i1 %i.azm, label %.invoke14617, label %bb.rz

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944: ; preds = %bb.rx, %bb.rz
  %i.azn = phi ptr [ %i.azl, %bb.rz ], [ inttoptr (i64 1 to ptr), %bb.rx ] ; 2 uses
  %i.azo = icmp ult i64 %i.xu, 11839
  br i1 %i.azo, label %.lr.ph.i1243, label %._crit_edge.i1247

.lr.ph.i1243:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944, %bb.ry
  %.sroa.0.013.i1244 = phi i32 [ %i.azy, %bb.ry ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944 ] ; 2 uses
  %.sroa.02.012.i1245 = phi i32 [ %i.azz, %bb.ry ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944 ] ; 3 uses
  %i.azp = phi i64 [ %i.azs, %bb.ry ], [ %i.xx, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944 ] ; 3 uses
  %i.azq = getelementptr inbounds nuw i8, ptr @11046, i64 %i.azp
  %i.azr = load i8, ptr %i.azq, align 1, !noalias !17309, !noundef !21 ; 2 uses
  %i.azs = add nuw nsw i64 %i.azp, 1              ; 4 uses
  %i.azt = zext i8 %i.azr to i32                  ; 2 uses
  %i.azu = icmp sgt i8 %i.azr, -1
  br i1 %i.azu, label %bb.sb, label %bb.ry

._crit_edge.i1247:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944, %bb.ry
  %.lcssa7.i1242 = phi i64 [ 11840, %bb.ry ], [ %i.xx, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1242, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1248 unwind label %bb.sa

.noexc1248:                                       ; preds = %._crit_edge.i1247
  unreachable

bb.ry:                                            ; preds = %.lr.ph.i1243
  %i.azv = and i32 %i.azt, 127
  %i.azw = and i32 %.sroa.02.012.i1245, 31
  %i.azx = shl i32 %i.azv, %i.azw
  %i.azy = or i32 %i.azx, %.sroa.0.013.i1244
  %i.azz = add i32 %.sroa.02.012.i1245, 7
  %exitcond.not.i1246 = icmp eq i64 %i.azs, 11840
  br i1 %exitcond.not.i1246, label %._crit_edge.i1247, label %.lr.ph.i1243

bb.rz:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1238
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azl, ptr nonnull align 1 %i.azh, i64 %i.azj, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1240.thread2944

bb.sa:                                            ; preds = %._crit_edge.i1247, %bb.sf, %bb.se
  %i.baa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ss

bb.sb:                                            ; preds = %.lr.ph.i1243
  %i.bab = and i32 %.sroa.02.012.i1245, 31
  %i.bac = shl i32 %i.azt, %i.bab
  %i.bad = or i32 %i.bac, %.sroa.0.013.i1244
  %i.bae = zext i32 %i.bad to i64                 ; 3 uses
  %i.baf = icmp ugt i64 %i.lo, %i.bae
  br i1 %i.baf, label %bb.sc, label %bb.se

bb.sc:                                            ; preds = %bb.sb
  %i.bag = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.bae ; 2 uses
  %i.bah = load ptr, ptr %i.bag, align 8, !nonnull !21, !noundef !21
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  %i.baj = load i64, ptr %i.bai, align 8, !noundef !21 ; 8 uses
  %.not.i1250 = icmp slt i64 %i.baj, 0
  br i1 %.not.i1250, label %bb.sf, label %bb.sd, !prof !37

bb.sd:                                            ; preds = %bb.sc
  %i.bak = icmp eq i64 %i.baj, 0                  ; 2 uses
  br i1 %i.bak, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1251

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1251: ; preds = %bb.sd
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17310
  %i.bal = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.baj, i64 noundef range(i64 1, 9) 1) #41, !noalias !17310 ; 3 uses
  %i.bam = icmp eq ptr %i.bal, null
  br i1 %i.bam, label %bb.sf, label %bb.sh

bb.se:                                            ; preds = %bb.sb
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bae, i64 noundef %i.lo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11029) #46
          to label %bb.u unwind label %bb.sa

bb.sf:                                            ; preds = %bb.sc, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1251
  %.sroa.42339.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1251 ], [ 0, %bb.sc ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42339.0.ph, i64 %i.baj) #46
          to label %bb.u unwind label %bb.sa

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960: ; preds = %bb.sd, %bb.sh
  %i.ban = phi ptr [ %i.bal, %bb.sh ], [ inttoptr (i64 1 to ptr), %bb.sd ] ; 2 uses
  %i.bao = icmp ult i64 %i.azp, 11839
  br i1 %i.bao, label %.lr.ph.i1256, label %._crit_edge.i1260.invoke

.lr.ph.i1256:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960, %bb.sg
  %.sroa.0.013.i1257 = phi i32 [ %i.baz, %bb.sg ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960 ] ; 2 uses
  %.sroa.02.012.i1258 = phi i32 [ %i.bba, %bb.sg ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960 ] ; 3 uses
  %i.bap = phi i64 [ %i.bas, %bb.sg ], [ %i.azs, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960 ] ; 3 uses
  %i.baq = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bap
  %i.bar = load i8, ptr %i.baq, align 1, !noalias !17311, !noundef !21 ; 2 uses
  %i.bas = add nuw nsw i64 %i.bap, 1              ; 4 uses
  %i.bat = zext i8 %i.bar to i32                  ; 2 uses
  %i.bau = icmp sgt i8 %i.bar, -1
  br i1 %i.bau, label %bb.si, label %bb.sg

._crit_edge.i1260.invoke:                         ; preds = %bb.si, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960, %bb.sg, %bb.sj
  %i.bav = phi i64 [ 11840, %bb.sj ], [ 11840, %bb.sg ], [ %i.bas, %bb.si ], [ %i.azs, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bav, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1260.cont unwind label %bb.sq

._crit_edge.i1260.cont:                           ; preds = %._crit_edge.i1260.invoke
  unreachable

bb.sg:                                            ; preds = %.lr.ph.i1256
  %i.baw = and i32 %i.bat, 127
  %i.bax = and i32 %.sroa.02.012.i1258, 31
  %i.bay = shl i32 %i.baw, %i.bax
  %i.baz = or i32 %i.bay, %.sroa.0.013.i1257
  %i.bba = add i32 %.sroa.02.012.i1258, 7
  %exitcond.not.i1259 = icmp eq i64 %i.bas, 11840
  br i1 %exitcond.not.i1259, label %._crit_edge.i1260.invoke, label %.lr.ph.i1256

bb.sh:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1251
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bal, ptr nonnull align 1 %i.bah, i64 %i.baj, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1253.thread2960

.body313:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1273
  %lpad.thr_comm.split-lp2969 = landingpad { ptr, i32 }
          cleanup
  br label %.body385

bb.si:                                            ; preds = %.lr.ph.i1256
  %i.bbb = and i32 %.sroa.02.012.i1258, 31
  %i.bbc = shl i32 %i.bat, %i.bbb
  %i.bbd = or i32 %i.bbc, %.sroa.0.013.i1257
  %i.bbe = icmp ult i64 %i.bap, 11839
  br i1 %i.bbe, label %.lr.ph.i1265, label %._crit_edge.i1260.invoke

.lr.ph.i1265:                                     ; preds = %bb.si, %bb.sj
  %.sroa.0.013.i1266 = phi i32 [ %i.bbo, %bb.sj ], [ 0, %bb.si ] ; 2 uses
  %.sroa.02.012.i1267 = phi i32 [ %i.bbp, %bb.sj ], [ 0, %bb.si ] ; 3 uses
  %i.bbf = phi i64 [ %i.bbi, %bb.sj ], [ %i.bas, %bb.si ] ; 2 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bbf
  %i.bbh = load i8, ptr %i.bbg, align 1, !noalias !17312, !noundef !21 ; 2 uses
  %i.bbi = add nuw i64 %i.bbf, 1                  ; 3 uses
  %i.bbj = zext i8 %i.bbh to i32                  ; 2 uses
  %i.bbk = icmp sgt i8 %i.bbh, -1
  br i1 %i.bbk, label %bb.sk, label %bb.sj

bb.sj:                                            ; preds = %.lr.ph.i1265
  %i.bbl = and i32 %i.bbj, 127
  %i.bbm = and i32 %.sroa.02.012.i1267, 31
  %i.bbn = shl i32 %i.bbl, %i.bbm
  %i.bbo = or i32 %i.bbn, %.sroa.0.013.i1266
  %i.bbp = add i32 %.sroa.02.012.i1267, 7
  %exitcond.not.i1268 = icmp eq i64 %i.bbi, 11840
  br i1 %exitcond.not.i1268, label %._crit_edge.i1260.invoke, label %.lr.ph.i1265

bb.sk:                                            ; preds = %.lr.ph.i1265
  %i.bbq = and i32 %.sroa.02.012.i1267, 31
  %i.bbr = shl i32 %i.bbj, %i.bbq
  %i.bbs = or i32 %i.bbr, %.sroa.0.013.i1266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bbt = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.bbu = icmp eq ptr %i.bbt, null
  br i1 %i.bbu, label %bb.sl, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1273, !prof !26

bb.sl:                                            ; preds = %bb.sk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1272 unwind label %bb.sq

.noexc1272:                                       ; preds = %bb.sl
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1273: ; preds = %bb.sk
  store i64 %.sroa.01780.0, ptr %i.bbt, align 8
  %.sroa.42188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42188.0..sroa_idx, align 8
  %.sroa.52189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52189.0..sroa_idx, align 8
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbt, i64 24
  store i64 %i.azj, ptr %i.bbv, align 8
  %.sroa.42191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 32
  store ptr %i.azn, ptr %.sroa.42191.0..sroa_idx, align 8
  %.sroa.52192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 40
  store i64 %i.azj, ptr %.sroa.52192.0..sroa_idx, align 8
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbt, i64 48
  store i64 %i.baj, ptr %i.bbw, align 8
  %.sroa.42194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 56
  store ptr %i.ban, ptr %.sroa.42194.0..sroa_idx, align 8
  %.sroa.52195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbt, i64 64
  store i64 %i.baj, ptr %.sroa.52195.0..sroa_idx, align 8
  store i64 3, ptr %i.cp, align 8
  store ptr %i.bbt, ptr %i.fw, align 8
  store i64 3, ptr %i.fx, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cp)
          to label %bb.sm unwind label %.body313

bb.sm:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1273
  store i32 %i.bbs, ptr %i.fy, align 8, !alias.scope !17313, !noalias !17314
  store i32 %i.bbd, ptr %i.fz, align 4, !alias.scope !17313, !noalias !17314
  store i32 0, ptr %i.ga, align 8, !alias.scope !17313, !noalias !17314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17315
  %i.bbx = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17315 ; 3 uses
  %i.bby = icmp eq ptr %i.bbx, null
  br i1 %i.bby, label %bb.sn, label %bb.sp, !prof !26

bb.sn:                                            ; preds = %bb.sm
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1276 unwind label %bb.so

.noexc1276:                                       ; preds = %bb.sn
  unreachable

bb.so:                                            ; preds = %bb.sn
  %i.bbz = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cq) #42
  br label %.body385

bb.sp:                                            ; preds = %bb.sm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bbx, ptr noundef nonnull align 8 dereferenceable(40) %i.cq, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.ey

bb.sq:                                            ; preds = %._crit_edge.i1260.invoke, %bb.sl
  %lpad.thr_comm2968 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bak, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ban, i64 noundef %i.baj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17316
  br label %bb.ss

bb.ss:                                            ; preds = %bb.sa, %bb.sq, %bb.sr
  %.pn203.ph = phi { ptr, i32 } [ %i.baa, %bb.sa ], [ %lpad.thr_comm2968, %bb.sq ], [ %lpad.thr_comm2968, %bb.sr ] ; 2 uses
  br i1 %i.azk, label %.thread2560, label %bb.st

bb.st:                                            ; preds = %bb.ss
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azn, i64 noundef %i.azj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17317
  br label %.thread2560

bb.su:                                            ; preds = %.lr.ph.i672
  %i.bca = and i32 %.sroa.02.012.i674, 31
  %i.bcb = shl i32 %i.yk, %i.bca
  %i.bcc = or i32 %i.bcb, %.sroa.0.013.i673
  %i.bcd = icmp ult i64 %i.yg, 11839
  br i1 %i.bcd, label %.lr.ph.i1286, label %.invoke14615

.lr.ph.i1286:                                     ; preds = %bb.su, %bb.sv
  %.sroa.0.013.i1287 = phi i32 [ %i.bcn, %bb.sv ], [ 0, %bb.su ] ; 2 uses
  %.sroa.02.012.i1288 = phi i32 [ %i.bco, %bb.sv ], [ 0, %bb.su ] ; 3 uses
  %i.bce = phi i64 [ %i.bch, %bb.sv ], [ %i.yj, %bb.su ] ; 3 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bce
  %i.bcg = load i8, ptr %i.bcf, align 1, !noalias !17318, !noundef !21 ; 2 uses
  %i.bch = add nuw nsw i64 %i.bce, 1              ; 4 uses
  %i.bci = zext i8 %i.bcg to i32                  ; 2 uses
  %i.bcj = icmp sgt i8 %i.bcg, -1
  br i1 %i.bcj, label %bb.sw, label %bb.sv

bb.sv:                                            ; preds = %.lr.ph.i1286
  %i.bck = and i32 %i.bci, 127
  %i.bcl = and i32 %.sroa.02.012.i1288, 31
  %i.bcm = shl i32 %i.bck, %i.bcl
  %i.bcn = or i32 %i.bcm, %.sroa.0.013.i1287
  %i.bco = add i32 %.sroa.02.012.i1288, 7
  %exitcond.not.i1289 = icmp eq i64 %i.bch, 11840
  br i1 %exitcond.not.i1289, label %.invoke14615, label %.lr.ph.i1286

bb.sw:                                            ; preds = %.lr.ph.i1286
  %i.bcp = and i32 %.sroa.02.012.i1288, 31
  %i.bcq = shl i32 %i.bci, %i.bcp
  %i.bcr = or i32 %i.bcq, %.sroa.0.013.i1287
  %i.bcs = icmp ult i64 %i.bce, 11839
  br i1 %i.bcs, label %.lr.ph.i1295, label %.invoke14615

.lr.ph.i1295:                                     ; preds = %bb.sw, %bb.sx
  %.sroa.0.013.i1296 = phi i32 [ %i.bdc, %bb.sx ], [ 0, %bb.sw ] ; 2 uses
  %.sroa.02.012.i1297 = phi i32 [ %i.bdd, %bb.sx ], [ 0, %bb.sw ] ; 3 uses
  %i.bct = phi i64 [ %i.bcw, %bb.sx ], [ %i.bch, %bb.sw ] ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bct
  %i.bcv = load i8, ptr %i.bcu, align 1, !noalias !17319, !noundef !21 ; 2 uses
  %i.bcw = add nuw nsw i64 %i.bct, 1              ; 3 uses
  %i.bcx = zext i8 %i.bcv to i32                  ; 2 uses
  %i.bcy = icmp sgt i8 %i.bcv, -1
  br i1 %i.bcy, label %bb.sy, label %bb.sx

bb.sx:                                            ; preds = %.lr.ph.i1295
  %i.bcz = and i32 %i.bcx, 127
  %i.bda = and i32 %.sroa.02.012.i1297, 31
  %i.bdb = shl i32 %i.bcz, %i.bda
  %i.bdc = or i32 %i.bdb, %.sroa.0.013.i1296
  %i.bdd = add i32 %.sroa.02.012.i1297, 7
  %exitcond.not.i1298 = icmp eq i64 %i.bcw, 11840
  br i1 %exitcond.not.i1298, label %.invoke14615, label %.lr.ph.i1295

bb.sy:                                            ; preds = %.lr.ph.i1295
  %i.bde = and i32 %.sroa.02.012.i1297, 31
  %i.bdf = shl i32 %i.bcx, %i.bde
  %i.bdg = or i32 %i.bdf, %.sroa.0.013.i1296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bdh = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.bdi = icmp eq ptr %i.bdh, null
  br i1 %i.bdi, label %.invoke14619, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1303, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1303: ; preds = %bb.sy
  store i64 %.sroa.01780.0, ptr %i.bdh, align 8
  %.sroa.42197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bdh, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42197.0..sroa_idx, align 8
  %.sroa.52198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bdh, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52198.0..sroa_idx, align 8
  store i64 1, ptr %i.cn, align 8
  store ptr %i.bdh, ptr %i.fr, align 8
  store i64 1, ptr %i.fs, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cn)
          to label %bb.sz unwind label %bb.et

bb.sz:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1303
  store i32 %i.bcr, ptr %i.ft, align 8, !alias.scope !17320, !noalias !17321
  store i32 %i.bcc, ptr %i.fu, align 4, !alias.scope !17320, !noalias !17321
  store i32 %i.bdg, ptr %i.fv, align 8, !alias.scope !17320, !noalias !17321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17322
  %i.bdj = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17322 ; 3 uses
  %i.bdk = icmp eq ptr %i.bdj, null
  br i1 %i.bdk, label %bb.ta, label %bb.tc, !prof !26

bb.ta:                                            ; preds = %bb.sz
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1305 unwind label %bb.tb

.noexc1305:                                       ; preds = %bb.ta
  unreachable

bb.tb:                                            ; preds = %bb.ta
  %i.bdl = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.co) #42
  br label %.body385

bb.tc:                                            ; preds = %bb.sz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bdj, ptr noundef nonnull align 8 dereferenceable(40) %i.co, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.ey

bb.td:                                            ; preds = %.lr.ph.i681
  %i.bdm = and i32 %.sroa.02.012.i683, 31
  %i.bdn = shl i32 %i.yw, %i.bdm
  %i.bdo = or i32 %i.bdn, %.sroa.0.013.i682
  %i.bdp = zext i32 %i.bdo to i64                 ; 3 uses
  %i.bdq = icmp ugt i64 %i.lo, %i.bdp
  br i1 %i.bdq, label %bb.te, label %.invoke14613

bb.te:                                            ; preds = %bb.td
  %i.bdr = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.bdp ; 2 uses
  %i.bds = load ptr, ptr %i.bdr, align 8, !nonnull !21, !noundef !21
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdr, i64 8
  %i.bdu = load i64, ptr %i.bdt, align 8, !noundef !21 ; 9 uses
  %.not.i1307 = icmp slt i64 %i.bdu, 0
  br i1 %.not.i1307, label %.invoke14617, label %bb.tf, !prof !37

bb.tf:                                            ; preds = %bb.te
  %i.bdv = icmp eq i64 %i.bdu, 0                  ; 2 uses
  br i1 %i.bdv, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1308

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1308: ; preds = %bb.tf
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17323
  %i.bdw = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bdu, i64 noundef range(i64 1, 9) 1) #41, !noalias !17323 ; 3 uses
  %i.bdx = icmp eq ptr %i.bdw, null
  br i1 %i.bdx, label %.invoke14617, label %bb.th

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979: ; preds = %bb.tf, %bb.th
  %i.bdy = phi ptr [ %i.bdw, %bb.th ], [ inttoptr (i64 1 to ptr), %bb.tf ] ; 2 uses
  %i.bdz = icmp ult i64 %i.ys, 11839
  br i1 %i.bdz, label %.lr.ph.i1313, label %._crit_edge.i1317.invoke

.lr.ph.i1313:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979, %bb.tg
  %.sroa.0.013.i1314 = phi i32 [ %i.bek, %bb.tg ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979 ] ; 2 uses
  %.sroa.02.012.i1315 = phi i32 [ %i.bel, %bb.tg ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979 ] ; 3 uses
  %i.bea = phi i64 [ %i.bed, %bb.tg ], [ %i.yv, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979 ] ; 3 uses
  %i.beb = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bea
  %i.bec = load i8, ptr %i.beb, align 1, !noalias !17324, !noundef !21 ; 2 uses
  %i.bed = add nuw nsw i64 %i.bea, 1              ; 4 uses
  %i.bee = zext i8 %i.bec to i32                  ; 2 uses
  %i.bef = icmp sgt i8 %i.bec, -1
  br i1 %i.bef, label %bb.ti, label %bb.tg

._crit_edge.i1317.invoke:                         ; preds = %bb.tk, %bb.ti, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979, %bb.tg, %bb.tj, %bb.tl
  %i.beg = phi i64 [ 11840, %bb.tg ], [ 11840, %bb.tj ], [ 11840, %bb.tl ], [ %i.bet, %bb.tk ], [ %i.bed, %bb.ti ], [ %i.yv, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.beg, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1317.cont unwind label %bb.ts

._crit_edge.i1317.cont:                           ; preds = %._crit_edge.i1317.invoke
  unreachable

bb.tg:                                            ; preds = %.lr.ph.i1313
  %i.beh = and i32 %i.bee, 127
  %i.bei = and i32 %.sroa.02.012.i1315, 31
  %i.bej = shl i32 %i.beh, %i.bei
  %i.bek = or i32 %i.bej, %.sroa.0.013.i1314
  %i.bel = add i32 %.sroa.02.012.i1315, 7
  %exitcond.not.i1316 = icmp eq i64 %i.bed, 11840
  br i1 %exitcond.not.i1316, label %._crit_edge.i1317.invoke, label %.lr.ph.i1313

bb.th:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1308
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bdw, ptr nonnull align 1 %i.bds, i64 %i.bdu, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1310.thread2979

.body306:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1339
  %lpad.thr_comm.split-lp2988 = landingpad { ptr, i32 }
          cleanup
  br label %.body385

bb.ti:                                            ; preds = %.lr.ph.i1313
  %i.bem = and i32 %.sroa.02.012.i1315, 31
  %i.ben = shl i32 %i.bee, %i.bem
  %i.beo = or i32 %i.ben, %.sroa.0.013.i1314
  %i.bep = icmp ult i64 %i.bea, 11839
  br i1 %i.bep, label %.lr.ph.i1322, label %._crit_edge.i1317.invoke

.lr.ph.i1322:                                     ; preds = %bb.ti, %bb.tj
  %.sroa.0.013.i1323 = phi i32 [ %i.bez, %bb.tj ], [ 0, %bb.ti ] ; 2 uses
  %.sroa.02.012.i1324 = phi i32 [ %i.bfa, %bb.tj ], [ 0, %bb.ti ] ; 3 uses
  %i.beq = phi i64 [ %i.bet, %bb.tj ], [ %i.bed, %bb.ti ] ; 3 uses
  %i.ber = getelementptr inbounds nuw i8, ptr @11046, i64 %i.beq
  %i.bes = load i8, ptr %i.ber, align 1, !noalias !17325, !noundef !21 ; 2 uses
  %i.bet = add nuw nsw i64 %i.beq, 1              ; 4 uses
  %i.beu = zext i8 %i.bes to i32                  ; 2 uses
  %i.bev = icmp sgt i8 %i.bes, -1
  br i1 %i.bev, label %bb.tk, label %bb.tj

bb.tj:                                            ; preds = %.lr.ph.i1322
  %i.bew = and i32 %i.beu, 127
  %i.bex = and i32 %.sroa.02.012.i1324, 31
  %i.bey = shl i32 %i.bew, %i.bex
  %i.bez = or i32 %i.bey, %.sroa.0.013.i1323
  %i.bfa = add i32 %.sroa.02.012.i1324, 7
  %exitcond.not.i1325 = icmp eq i64 %i.bet, 11840
  br i1 %exitcond.not.i1325, label %._crit_edge.i1317.invoke, label %.lr.ph.i1322

bb.tk:                                            ; preds = %.lr.ph.i1322
  %i.bfb = and i32 %.sroa.02.012.i1324, 31
  %i.bfc = shl i32 %i.beu, %i.bfb
  %i.bfd = or i32 %i.bfc, %.sroa.0.013.i1323
  %i.bfe = icmp ult i64 %i.beq, 11839
  br i1 %i.bfe, label %.lr.ph.i1331, label %._crit_edge.i1317.invoke

.lr.ph.i1331:                                     ; preds = %bb.tk, %bb.tl
  %.sroa.0.013.i1332 = phi i32 [ %i.bfo, %bb.tl ], [ 0, %bb.tk ] ; 2 uses
  %.sroa.02.012.i1333 = phi i32 [ %i.bfp, %bb.tl ], [ 0, %bb.tk ] ; 3 uses
  %i.bff = phi i64 [ %i.bfi, %bb.tl ], [ %i.bet, %bb.tk ] ; 2 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bff
  %i.bfh = load i8, ptr %i.bfg, align 1, !noalias !17326, !noundef !21 ; 2 uses
  %i.bfi = add nuw i64 %i.bff, 1                  ; 3 uses
  %i.bfj = zext i8 %i.bfh to i32                  ; 2 uses
  %i.bfk = icmp sgt i8 %i.bfh, -1
  br i1 %i.bfk, label %bb.tm, label %bb.tl

bb.tl:                                            ; preds = %.lr.ph.i1331
  %i.bfl = and i32 %i.bfj, 127
  %i.bfm = and i32 %.sroa.02.012.i1333, 31
  %i.bfn = shl i32 %i.bfl, %i.bfm
  %i.bfo = or i32 %i.bfn, %.sroa.0.013.i1332
  %i.bfp = add i32 %.sroa.02.012.i1333, 7
  %exitcond.not.i1334 = icmp eq i64 %i.bfi, 11840
  br i1 %exitcond.not.i1334, label %._crit_edge.i1317.invoke, label %.lr.ph.i1331

bb.tm:                                            ; preds = %.lr.ph.i1331
  %i.bfq = and i32 %.sroa.02.012.i1333, 31
  %i.bfr = shl i32 %i.bfj, %i.bfq
  %i.bfs = or i32 %i.bfr, %.sroa.0.013.i1332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bft = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.bfu = icmp eq ptr %i.bft, null
  br i1 %i.bfu, label %bb.tn, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1339, !prof !26

bb.tn:                                            ; preds = %bb.tm
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc1338 unwind label %bb.ts

.noexc1338:                                       ; preds = %bb.tn
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1339: ; preds = %bb.tm
  store i64 %.sroa.01780.0, ptr %i.bft, align 8
  %.sroa.42203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bft, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42203.0..sroa_idx, align 8
  %.sroa.52204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bft, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52204.0..sroa_idx, align 8
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bft, i64 24
  store i64 %i.bdu, ptr %i.bfv, align 8
  %.sroa.42206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bft, i64 32
  store ptr %i.bdy, ptr %.sroa.42206.0..sroa_idx, align 8
  %.sroa.52207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bft, i64 40
  store i64 %i.bdu, ptr %.sroa.52207.0..sroa_idx, align 8
  store i64 2, ptr %i.cl, align 8
  store ptr %i.bft, ptr %i.fm, align 8
  store i64 2, ptr %i.fn, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cl)
          to label %bb.to unwind label %.body306

bb.to:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1339
  store i32 %i.bfd, ptr %i.fo, align 8, !alias.scope !17327, !noalias !17328
  store i32 %i.beo, ptr %i.fp, align 4, !alias.scope !17327, !noalias !17328
  store i32 %i.bfs, ptr %i.fq, align 8, !alias.scope !17327, !noalias !17328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17329
  %i.bfw = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17329 ; 3 uses
  %i.bfx = icmp eq ptr %i.bfw, null
  br i1 %i.bfx, label %bb.tp, label %bb.tr, !prof !26

bb.tp:                                            ; preds = %bb.to
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1342 unwind label %bb.tq

.noexc1342:                                       ; preds = %bb.tp
  unreachable

bb.tq:                                            ; preds = %bb.tp
  %i.bfy = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cm) #42
  br label %.body385

bb.tr:                                            ; preds = %bb.to
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bfw, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.ey

bb.ts:                                            ; preds = %._crit_edge.i1317.invoke, %bb.tn
  %lpad.thr_comm2987 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bdv, label %.thread2560, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bdy, i64 noundef %i.bdu, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17330
  br label %.thread2560

bb.tu:                                            ; preds = %.lr.ph.i690
  %i.bfz = and i32 %.sroa.02.012.i692, 31
  %i.bga = shl i32 %i.zi, %i.bfz
  %i.bgb = or i32 %i.bga, %.sroa.0.013.i691
  %i.bgc = zext i32 %i.bgb to i64                 ; 3 uses
  %i.bgd = icmp ugt i64 %i.lo, %i.bgc
  br i1 %i.bgd, label %bb.tv, label %.invoke14613

bb.tv:                                            ; preds = %bb.tu
  %i.bge = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.bgc ; 2 uses
  %i.bgf = load ptr, ptr %i.bge, align 8, !nonnull !21, !noundef !21
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bge, i64 8
  %i.bgh = load i64, ptr %i.bgg, align 8, !noundef !21 ; 9 uses
  %.not.i1347 = icmp slt i64 %i.bgh, 0
  br i1 %.not.i1347, label %.invoke14617, label %bb.tw, !prof !37

bb.tw:                                            ; preds = %bb.tv
  %i.bgi = icmp eq i64 %i.bgh, 0                  ; 2 uses
  br i1 %i.bgi, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1348

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1348: ; preds = %bb.tw
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17331
  %i.bgj = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bgh, i64 noundef range(i64 1, 9) 1) #41, !noalias !17331 ; 3 uses
  %i.bgk = icmp eq ptr %i.bgj, null
  br i1 %i.bgk, label %.invoke14617, label %bb.ty

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998: ; preds = %bb.tw, %bb.ty
  %i.bgl = phi ptr [ %i.bgj, %bb.ty ], [ inttoptr (i64 1 to ptr), %bb.tw ] ; 2 uses
  %i.bgm = icmp ult i64 %i.ze, 11839
  br i1 %i.bgm, label %.lr.ph.i1353, label %._crit_edge.i1357

.lr.ph.i1353:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998, %bb.tx
  %.sroa.0.013.i1354 = phi i32 [ %i.bgw, %bb.tx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998 ] ; 2 uses
  %.sroa.02.012.i1355 = phi i32 [ %i.bgx, %bb.tx ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998 ] ; 3 uses
  %i.bgn = phi i64 [ %i.bgq, %bb.tx ], [ %i.zh, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998 ] ; 3 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bgn
  %i.bgp = load i8, ptr %i.bgo, align 1, !noalias !17332, !noundef !21 ; 2 uses
  %i.bgq = add nuw nsw i64 %i.bgn, 1              ; 4 uses
  %i.bgr = zext i8 %i.bgp to i32                  ; 2 uses
  %i.bgs = icmp sgt i8 %i.bgp, -1
  br i1 %i.bgs, label %bb.ua, label %bb.tx

._crit_edge.i1357:                                ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998, %bb.tx
  %.lcssa7.i1352 = phi i64 [ 11840, %bb.tx ], [ %i.zh, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i1352, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc1358 unwind label %bb.tz

.noexc1358:                                       ; preds = %._crit_edge.i1357
  unreachable

bb.tx:                                            ; preds = %.lr.ph.i1353
  %i.bgt = and i32 %i.bgr, 127
  %i.bgu = and i32 %.sroa.02.012.i1355, 31
  %i.bgv = shl i32 %i.bgt, %i.bgu
  %i.bgw = or i32 %i.bgv, %.sroa.0.013.i1354
  %i.bgx = add i32 %.sroa.02.012.i1355, 7
  %exitcond.not.i1356 = icmp eq i64 %i.bgq, 11840
  br i1 %exitcond.not.i1356, label %._crit_edge.i1357, label %.lr.ph.i1353

bb.ty:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1348
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bgj, ptr nonnull align 1 %i.bgf, i64 %i.bgh, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1350.thread2998

bb.tz:                                            ; preds = %._crit_edge.i1357, %bb.ue, %bb.ud
  %i.bgy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ut

bb.ua:                                            ; preds = %.lr.ph.i1353
  %i.bgz = and i32 %.sroa.02.012.i1355, 31
  %i.bha = shl i32 %i.bgr, %i.bgz
  %i.bhb = or i32 %i.bha, %.sroa.0.013.i1354
  %i.bhc = zext i32 %i.bhb to i64                 ; 3 uses
  %i.bhd = icmp ugt i64 %i.lo, %i.bhc
  br i1 %i.bhd, label %bb.ub, label %bb.ud

bb.ub:                                            ; preds = %bb.ua
  %i.bhe = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.bhc ; 2 uses
  %i.bhf = load ptr, ptr %i.bhe, align 8, !nonnull !21, !noundef !21
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhe, i64 8
  %i.bhh = load i64, ptr %i.bhg, align 8, !noundef !21 ; 8 uses
  %.not.i1360 = icmp slt i64 %i.bhh, 0
  br i1 %.not.i1360, label %bb.ue, label %bb.uc, !prof !37

bb.uc:                                            ; preds = %bb.ub
  %i.bhi = icmp eq i64 %i.bhh, 0                  ; 2 uses
  br i1 %i.bhi, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1361

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1361: ; preds = %bb.uc
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17333
  %i.bhj = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bhh, i64 noundef range(i64 1, 9) 1) #41, !noalias !17333 ; 3 uses
  %i.bhk = icmp eq ptr %i.bhj, null
  br i1 %i.bhk, label %bb.ue, label %bb.ug

bb.ud:                                            ; preds = %bb.ua
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bhc, i64 noundef %i.lo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11032) #46
          to label %bb.u unwind label %bb.tz

bb.ue:                                            ; preds = %bb.ub, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1361
  %.sroa.42351.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1361 ], [ 0, %bb.ub ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42351.0.ph, i64 %i.bhh) #46
          to label %bb.u unwind label %bb.tz

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014: ; preds = %bb.uc, %bb.ug
  %i.bhl = phi ptr [ %i.bhj, %bb.ug ], [ inttoptr (i64 1 to ptr), %bb.uc ] ; 2 uses
  %i.bhm = icmp ult i64 %i.bgn, 11839
  br i1 %i.bhm, label %.lr.ph.i1366, label %._crit_edge.i1370.invoke

.lr.ph.i1366:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014, %bb.uf
  %.sroa.0.013.i1367 = phi i32 [ %i.bhx, %bb.uf ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014 ] ; 2 uses
  %.sroa.02.012.i1368 = phi i32 [ %i.bhy, %bb.uf ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014 ] ; 3 uses
  %i.bhn = phi i64 [ %i.bhq, %bb.uf ], [ %i.bgq, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014 ] ; 3 uses
  %i.bho = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bhn
  %i.bhp = load i8, ptr %i.bho, align 1, !noalias !17334, !noundef !21 ; 2 uses
  %i.bhq = add nuw nsw i64 %i.bhn, 1              ; 4 uses
  %i.bhr = zext i8 %i.bhp to i32                  ; 2 uses
  %i.bhs = icmp sgt i8 %i.bhp, -1
  br i1 %i.bhs, label %bb.uh, label %bb.uf

._crit_edge.i1370.invoke:                         ; preds = %bb.uj, %bb.uh, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014, %bb.uf, %bb.ui, %bb.uk
  %i.bht = phi i64 [ 11840, %bb.uf ], [ 11840, %bb.ui ], [ 11840, %bb.uk ], [ %i.big, %bb.uj ], [ %i.bhq, %bb.uh ], [ %i.bgq, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bht, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1370.cont unwind label %bb.ur

._crit_edge.i1370.cont:                           ; preds = %._crit_edge.i1370.invoke
  unreachable

bb.uf:                                            ; preds = %.lr.ph.i1366
  %i.bhu = and i32 %i.bhr, 127
  %i.bhv = and i32 %.sroa.02.012.i1368, 31
  %i.bhw = shl i32 %i.bhu, %i.bhv
  %i.bhx = or i32 %i.bhw, %.sroa.0.013.i1367
  %i.bhy = add i32 %.sroa.02.012.i1368, 7
  %exitcond.not.i1369 = icmp eq i64 %i.bhq, 11840
  br i1 %exitcond.not.i1369, label %._crit_edge.i1370.invoke, label %.lr.ph.i1366

bb.ug:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1361
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhj, ptr nonnull align 1 %i.bhf, i64 %i.bhh, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1363.thread3014

.body304:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1392
  %lpad.thr_comm.split-lp3023 = landingpad { ptr, i32 }
          cleanup
  br label %.body385

bb.uh:                                            ; preds = %.lr.ph.i1366
  %i.bhz = and i32 %.sroa.02.012.i1368, 31
  %i.bia = shl i32 %i.bhr, %i.bhz
  %i.bib = or i32 %i.bia, %.sroa.0.013.i1367
  %i.bic = icmp ult i64 %i.bhn, 11839
  br i1 %i.bic, label %.lr.ph.i1375, label %._crit_edge.i1370.invoke

.lr.ph.i1375:                                     ; preds = %bb.uh, %bb.ui
  %.sroa.0.013.i1376 = phi i32 [ %i.bim, %bb.ui ], [ 0, %bb.uh ] ; 2 uses
  %.sroa.02.012.i1377 = phi i32 [ %i.bin, %bb.ui ], [ 0, %bb.uh ] ; 3 uses
  %i.bid = phi i64 [ %i.big, %bb.ui ], [ %i.bhq, %bb.uh ] ; 3 uses
  %i.bie = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bid
  %i.bif = load i8, ptr %i.bie, align 1, !noalias !17335, !noundef !21 ; 2 uses
  %i.big = add nuw i64 %i.bid, 1                  ; 4 uses
  %i.bih = zext i8 %i.bif to i32                  ; 2 uses
  %i.bii = icmp sgt i8 %i.bif, -1
  br i1 %i.bii, label %bb.uj, label %bb.ui

bb.ui:                                            ; preds = %.lr.ph.i1375
  %i.bij = and i32 %i.bih, 127
  %i.bik = and i32 %.sroa.02.012.i1377, 31
  %i.bil = shl i32 %i.bij, %i.bik
  %i.bim = or i32 %i.bil, %.sroa.0.013.i1376
  %i.bin = add i32 %.sroa.02.012.i1377, 7
  %exitcond.not.i1378 = icmp eq i64 %i.big, 11840
  br i1 %exitcond.not.i1378, label %._crit_edge.i1370.invoke, label %.lr.ph.i1375

bb.uj:                                            ; preds = %.lr.ph.i1375
  %i.bio = and i32 %.sroa.02.012.i1377, 31
  %i.bip = shl i32 %i.bih, %i.bio
  %i.biq = or i32 %i.bip, %.sroa.0.013.i1376
  %i.bir = icmp ult i64 %i.bid, 11839
  br i1 %i.bir, label %.lr.ph.i1384, label %._crit_edge.i1370.invoke

.lr.ph.i1384:                                     ; preds = %bb.uj, %bb.uk
  %.sroa.0.013.i1385 = phi i32 [ %i.bjb, %bb.uk ], [ 0, %bb.uj ] ; 2 uses
  %.sroa.02.012.i1386 = phi i32 [ %i.bjc, %bb.uk ], [ 0, %bb.uj ] ; 3 uses
  %i.bis = phi i64 [ %i.biv, %bb.uk ], [ %i.big, %bb.uj ] ; 2 uses
  %i.bit = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bis
  %i.biu = load i8, ptr %i.bit, align 1, !noalias !17336, !noundef !21 ; 2 uses
  %i.biv = add nuw nsw i64 %i.bis, 1              ; 3 uses
  %i.biw = zext i8 %i.biu to i32                  ; 2 uses
  %i.bix = icmp sgt i8 %i.biu, -1
  br i1 %i.bix, label %bb.ul, label %bb.uk

bb.uk:                                            ; preds = %.lr.ph.i1384
  %i.biy = and i32 %i.biw, 127
  %i.biz = and i32 %.sroa.02.012.i1386, 31
  %i.bja = shl i32 %i.biy, %i.biz
  %i.bjb = or i32 %i.bja, %.sroa.0.013.i1385
  %i.bjc = add i32 %.sroa.02.012.i1386, 7
  %exitcond.not.i1387 = icmp eq i64 %i.biv, 11840
  br i1 %exitcond.not.i1387, label %._crit_edge.i1370.invoke, label %.lr.ph.i1384

bb.ul:                                            ; preds = %.lr.ph.i1384
  %i.bjd = and i32 %.sroa.02.012.i1386, 31
  %i.bje = shl i32 %i.biw, %i.bjd
  %i.bjf = or i32 %i.bje, %.sroa.0.013.i1385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.bjg = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.bjh = icmp eq ptr %i.bjg, null
  br i1 %i.bjh, label %bb.um, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1392, !prof !26

bb.um:                                            ; preds = %bb.ul
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1391 unwind label %bb.ur

.noexc1391:                                       ; preds = %bb.um
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1392: ; preds = %bb.ul
  store i64 %.sroa.01780.0, ptr %i.bjg, align 8
  %.sroa.42215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 8
  store ptr %.sroa.57.0, ptr %.sroa.42215.0..sroa_idx, align 8
  %.sroa.52216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 16
  store i64 %.sroa.63.0, ptr %.sroa.52216.0..sroa_idx, align 8
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjg, i64 24
  store i64 %i.bgh, ptr %i.bji, align 8
  %.sroa.42218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 32
  store ptr %i.bgl, ptr %.sroa.42218.0..sroa_idx, align 8
  %.sroa.52219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 40
  store i64 %i.bgh, ptr %.sroa.52219.0..sroa_idx, align 8
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bjg, i64 48
  store i64 %i.bhh, ptr %i.bjj, align 8
  %.sroa.42221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 56
  store ptr %i.bhl, ptr %.sroa.42221.0..sroa_idx, align 8
  %.sroa.52222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjg, i64 64
  store i64 %i.bhh, ptr %.sroa.52222.0..sroa_idx, align 8
  store i64 3, ptr %i.cj, align 8
  store ptr %i.bjg, ptr %i.fh, align 8
  store i64 3, ptr %i.fi, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cj)
          to label %bb.un unwind label %.body304

bb.un:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1392
  store i32 %i.biq, ptr %i.fj, align 8, !alias.scope !17337, !noalias !17338
  store i32 %i.bib, ptr %i.fk, align 4, !alias.scope !17337, !noalias !17338
  store i32 %i.bjf, ptr %i.fl, align 8, !alias.scope !17337, !noalias !17338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17339
  %i.bjk = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !17339 ; 3 uses
  %i.bjl = icmp eq ptr %i.bjk, null
  br i1 %i.bjl, label %bb.uo, label %bb.uq, !prof !26

bb.uo:                                            ; preds = %bb.un
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1395 unwind label %bb.up

.noexc1395:                                       ; preds = %bb.uo
  unreachable

bb.up:                                            ; preds = %bb.uo
  %i.bjm = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ck) #42
  br label %.body385

bb.uq:                                            ; preds = %bb.un
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bjk, ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.ey

bb.ur:                                            ; preds = %._crit_edge.i1370.invoke, %bb.um
  %lpad.thr_comm3022 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bhi, label %bb.ut, label %bb.us

bb.us:                                            ; preds = %bb.ur
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bhl, i64 noundef %i.bhh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17340
  br label %bb.ut

bb.ut:                                            ; preds = %bb.tz, %bb.ur, %bb.us
  %.pn.ph = phi { ptr, i32 } [ %i.bgy, %bb.tz ], [ %lpad.thr_comm3022, %bb.ur ], [ %lpad.thr_comm3022, %bb.us ] ; 2 uses
  br i1 %i.bgi, label %.thread2560, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bgl, i64 noundef %i.bgh, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !17341
  br label %.thread2560

bb.uv:                                            ; preds = %.lr.ph.i699
  %i.bjn = and i32 %.sroa.02.012.i701, 31
  %i.bjo = shl i32 %i.zu, %i.bjn
  %i.bjp = or i32 %i.bjo, %.sroa.0.013.i700
  %i.bjq = zext i32 %i.bjp to i64                 ; 3 uses
  %i.bjr = icmp ugt i64 %i.lo, %i.bjq
  br i1 %i.bjr, label %bb.uw, label %.invoke14613

bb.uw:                                            ; preds = %bb.uv
  %i.bjs = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.bjq ; 2 uses
  %i.bjt = load ptr, ptr %i.bjs, align 8, !nonnull !21, !noundef !21
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjs, i64 8
  %i.bjv = load i64, ptr %i.bju, align 8, !noundef !21 ; 9 uses
  %.not.i1403 = icmp slt i64 %i.bjv, 0
  br i1 %.not.i1403, label %.invoke14617, label %bb.ux, !prof !37

bb.ux:                                            ; preds = %bb.uw
  %i.bjw = icmp eq i64 %i.bjv, 0                  ; 2 uses
  br i1 %i.bjw, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1404

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1404: ; preds = %bb.ux
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !17342
  %i.bjx = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bjv, i64 noundef range(i64 1, 9) 1) #41, !noalias !17342 ; 3 uses
  %i.bjy = icmp eq ptr %i.bjx, null
  br i1 %i.bjy, label %.invoke14617, label %bb.uz

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033: ; preds = %bb.ux, %bb.uz
  %i.bjz = phi ptr [ %i.bjx, %bb.uz ], [ inttoptr (i64 1 to ptr), %bb.ux ] ; 2 uses
  %i.bka = icmp ult i64 %i.zq, 11839
  br i1 %i.bka, label %.lr.ph.i1409, label %._crit_edge.i1413.invoke

.lr.ph.i1409:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033, %bb.uy
  %.sroa.0.013.i1410 = phi i32 [ %i.bkl, %bb.uy ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033 ] ; 2 uses
  %.sroa.02.012.i1411 = phi i32 [ %i.bkm, %bb.uy ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033 ] ; 3 uses
  %i.bkb = phi i64 [ %i.bke, %bb.uy ], [ %i.zt, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033 ] ; 3 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bkb
  %i.bkd = load i8, ptr %i.bkc, align 1, !noalias !17343, !noundef !21 ; 2 uses
  %i.bke = add nuw nsw i64 %i.bkb, 1              ; 4 uses
  %i.bkf = zext i8 %i.bkd to i32                  ; 2 uses
  %i.bkg = icmp sgt i8 %i.bkd, -1
  br i1 %i.bkg, label %bb.va, label %bb.uy

._crit_edge.i1413.invoke:                         ; preds = %bb.vc, %bb.va, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033, %bb.uy, %bb.vb
  %i.bkh = phi i64 [ 11840, %bb.uy ], [ 11840, %bb.vb ], [ %i.bku, %bb.vc ], [ %i.bke, %bb.va ], [ %i.zt, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bkh, i64 noundef 11840, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1413.cont unwind label %bb.vj

._crit_edge.i1413.cont:                           ; preds = %._crit_edge.i1413.invoke
  unreachable

bb.uy:                                            ; preds = %.lr.ph.i1409
  %i.bki = and i32 %i.bkf, 127
  %i.bkj = and i32 %.sroa.02.012.i1411, 31
  %i.bkk = shl i32 %i.bki, %i.bkj
  %i.bkl = or i32 %i.bkk, %.sroa.0.013.i1410
  %i.bkm = add i32 %.sroa.02.012.i1411, 7
  %exitcond.not.i1412 = icmp eq i64 %i.bke, 11840
  br i1 %exitcond.not.i1412, label %._crit_edge.i1413.invoke, label %.lr.ph.i1409

bb.uz:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1404
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bjx, ptr nonnull align 1 %i.bjt, i64 %i.bjv, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1406.thread3033

.body347:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1428
  %lpad.thr_comm.split-lp3042 = landingpad { ptr, i32 }
          cleanup
  br label %.body385

bb.va:                                            ; preds = %.lr.ph.i1409
  %i.bkn = and i32 %.sroa.02.012.i1411, 31
  %i.bko = shl i32 %i.bkf, %i.bkn
  %i.bkp = or i32 %i.bko, %.sroa.0.013.i1410
  %i.bkq = icmp ult i64 %i.bkb, 11839
  br i1 %i.bkq, label %.lr.ph.i1418, label %._crit_edge.i1413.invoke

.lr.ph.i1418:                                     ; preds = %bb.va, %bb.vb
  %.sroa.0.013.i1419 = phi i32 [ %i.bla, %bb.vb ], [ 0, %bb.va ] ; 2 uses
  %.sroa.02.012.i1420 = phi i32 [ %i.blb, %bb.vb ], [ 0, %bb.va ] ; 3 uses
  %i.bkr = phi i64 [ %i.bku, %bb.vb ], [ %i.bke, %bb.va ] ; 4 uses
  %i.bks = getelementptr inbounds nuw i8, ptr @11046, i64 %i.bkr
  %i.bkt = load i8, ptr %i.bks, align 1, !noalias !17344, !noundef !21 ; 2 uses
  %i.bku = add nuw nsw i64 %i.bkr, 1              ; 4 uses
  %i.bkv = zext i8 %i.bkt to i32                  ; 2 uses
  %i.bkw = icmp sgt i8 %i.bkt, -1
  br i1 %i.bkw, label %bb.vc, label %bb.vb

bb.vb:                                            ; preds = %.lr.ph.i1418
  %i.bkx = and i32 %i.bkv, 127
  %i.bky = and i32 %.sroa.02.012.i1420, 31
  %i.bkz = shl i32 %i.bkx, %i.bky
  %i.bla = or i32 %i.bkz, %.sroa.0.013.i1419
  %i.blb = add i32 %.sroa.02.012.i1420, 7
  %exitcond.not.i1421 = icmp eq i64 %i.bku, 11840
  br i1 %exitcond.not.i1421, label %._crit_edge.i1413.invoke, label %.lr.ph.i1418

bb.vc:                                            ; preds = %.lr.ph.i1418
  %i.blc = and i32 %.sroa.02.012.i1420, 31
  %i.bld = shl i32 %i.bkv, %i.blc
  %i.ble = or i32 %i.bld, %.sroa.0.013.i1419
  %i.blf = icmp ult i64 %i.bkr, 11839
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel7fmt_tbl4read:bb.a

.noexc844:                                        ; preds = %bb.lj
  unreachable

bb.lk:                                            ; preds = %bb.lj
  %i.aiz = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bh) #42
  br label %.body295

bb.ll:                                            ; preds = %bb.li
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aix, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.ed

bb.lm:                                            ; preds = %._crit_edge.i828.invoke, %bb.lh
  %lpad.thr_comm2132 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ahl, label %.thread1870, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aho, i64 noundef %i.ahk, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18140
  br label %.thread1870

bb.lo:                                            ; preds = %.lr.ph.i517
  %i.aja = and i32 %.sroa.02.012.i519, 31
  %i.ajb = shl i32 %i.sh, %i.aja
  %i.ajc = or i32 %i.ajb, %.sroa.0.013.i518
  %i.ajd = zext i32 %i.ajc to i64                 ; 3 uses
  %i.aje = icmp ugt i64 %i.is, %i.ajd
  br i1 %i.aje, label %bb.lp, label %.invoke10832

bb.lp:                                            ; preds = %bb.lo
  %i.ajf = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.ajd ; 2 uses
  %i.ajg = load ptr, ptr %i.ajf, align 8, !nonnull !21, !noundef !21
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %i.aji = load i64, ptr %i.ajh, align 8, !noundef !21 ; 9 uses
  %.not.i849 = icmp slt i64 %i.aji, 0
  br i1 %.not.i849, label %.invoke10834, label %bb.lq, !prof !37

bb.lq:                                            ; preds = %bb.lp
  %i.ajj = icmp eq i64 %i.aji, 0                  ; 2 uses
  br i1 %i.ajj, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850: ; preds = %bb.lq
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18141
  %i.ajk = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aji, i64 noundef range(i64 1, 9) 1) #41, !noalias !18141 ; 3 uses
  %i.ajl = icmp eq ptr %i.ajk, null
  br i1 %i.ajl, label %.invoke10834, label %bb.ls

.invoke10832:                                     ; preds = %bb.oo, %bb.nn, %bb.mw, %bb.lo, %bb.kz, %bb.jv, %bb.jh
  %i.ajm = phi i64 [ %i.ahf, %bb.kz ], [ %i.ajd, %bb.lo ], [ %i.acq, %bb.jh ], [ %i.ans, %bb.mw ], [ %i.adz, %bb.jv ], [ %i.aqf, %bb.nn ], [ %i.att, %bb.oo ]
  %i.ajn = phi ptr [ @11084, %bb.kz ], [ @11085, %bb.lo ], [ @11080, %bb.jh ], [ @11087, %bb.mw ], [ @11081, %bb.jv ], [ @11088, %bb.nn ], [ @11090, %bb.oo ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ajm, i64 noundef %i.is, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajn) #46
          to label %.cont10833 unwind label %.thread2062

.cont10833:                                       ; preds = %.invoke10832
  unreachable

.invoke10834:                                     ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016, %bb.op, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960, %bb.no, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920, %bb.mx, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850, %bb.lp, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i819, %bb.la, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i767, %bb.jw, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i745, %bb.ji
  %i.ajo = phi i64 [ 0, %bb.la ], [ 0, %bb.ji ], [ 0, %bb.lp ], [ 0, %bb.mx ], [ 0, %bb.jw ], [ 0, %bb.no ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i745 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i767 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i819 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960 ], [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016 ], [ 0, %bb.op ]
  %i.ajp = phi i64 [ %i.ahk, %bb.la ], [ %i.acv, %bb.ji ], [ %i.aji, %bb.lp ], [ %i.anx, %bb.mx ], [ %i.aee, %bb.jw ], [ %i.aqk, %bb.no ], [ %i.acv, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i745 ], [ %i.aee, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i767 ], [ %i.ahk, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i819 ], [ %i.aji, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850 ], [ %i.anx, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920 ], [ %i.aqk, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960 ], [ %i.aty, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016 ], [ %i.aty, %bb.op ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ajo, i64 %i.ajp) #46
          to label %.cont10835 unwind label %.thread2062

.cont10835:                                       ; preds = %.invoke10834
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143: ; preds = %bb.lq, %bb.ls
  %i.ajq = phi ptr [ %i.ajk, %bb.ls ], [ inttoptr (i64 1 to ptr), %bb.lq ] ; 2 uses
  %i.ajr = icmp ult i64 %i.sd, 10869
  br i1 %i.ajr, label %.lr.ph.i855, label %._crit_edge.i859

.lr.ph.i855:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143, %bb.lr
  %.sroa.0.013.i856 = phi i32 [ %i.akb, %bb.lr ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143 ] ; 2 uses
  %.sroa.02.012.i857 = phi i32 [ %i.akc, %bb.lr ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143 ] ; 3 uses
  %i.ajs = phi i64 [ %i.ajv, %bb.lr ], [ %i.sg, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143 ] ; 3 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr @11098, i64 %i.ajs
  %i.aju = load i8, ptr %i.ajt, align 1, !noalias !18142, !noundef !21 ; 2 uses
  %i.ajv = add nuw nsw i64 %i.ajs, 1              ; 4 uses
  %i.ajw = zext i8 %i.aju to i32                  ; 2 uses
  %i.ajx = icmp sgt i8 %i.aju, -1
  br i1 %i.ajx, label %bb.lu, label %bb.lr

._crit_edge.i859:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143, %bb.lr
  %.lcssa7.i854 = phi i64 [ 10870, %bb.lr ], [ %i.sg, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i854, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc860 unwind label %bb.lt

.noexc860:                                        ; preds = %._crit_edge.i859
  unreachable

bb.lr:                                            ; preds = %.lr.ph.i855
  %i.ajy = and i32 %i.ajw, 127
  %i.ajz = and i32 %.sroa.02.012.i857, 31
  %i.aka = shl i32 %i.ajy, %i.ajz
  %i.akb = or i32 %i.aka, %.sroa.0.013.i856
  %i.akc = add i32 %.sroa.02.012.i857, 7
  %exitcond.not.i858 = icmp eq i64 %i.ajv, 10870
  br i1 %exitcond.not.i858, label %._crit_edge.i859, label %.lr.ph.i855

bb.ls:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i850
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ajk, ptr nonnull align 1 %i.ajg, i64 %i.aji, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit852.thread2143

bb.lt:                                            ; preds = %._crit_edge.i859, %bb.ly, %bb.lx
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ml

bb.lu:                                            ; preds = %.lr.ph.i855
  %i.ake = and i32 %.sroa.02.012.i857, 31
  %i.akf = shl i32 %i.ajw, %i.ake
  %i.akg = or i32 %i.akf, %.sroa.0.013.i856
  %i.akh = zext i32 %i.akg to i64                 ; 3 uses
  %i.aki = icmp ugt i64 %i.is, %i.akh
  br i1 %i.aki, label %bb.lv, label %bb.lx

bb.lv:                                            ; preds = %bb.lu
  %i.akj = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.akh ; 2 uses
  %i.akk = load ptr, ptr %i.akj, align 8, !nonnull !21, !noundef !21
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akm = load i64, ptr %i.akl, align 8, !noundef !21 ; 8 uses
  %.not.i862 = icmp slt i64 %i.akm, 0
  br i1 %.not.i862, label %bb.ly, label %bb.lw, !prof !37

bb.lw:                                            ; preds = %bb.lv
  %i.akn = icmp eq i64 %i.akm, 0                  ; 2 uses
  br i1 %i.akn, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i863

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i863: ; preds = %bb.lw
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18143
  %i.ako = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.akm, i64 noundef range(i64 1, 9) 1) #41, !noalias !18143 ; 3 uses
  %i.akp = icmp eq ptr %i.ako, null
  br i1 %i.akp, label %bb.ly, label %bb.ma

bb.lx:                                            ; preds = %bb.lu
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.akh, i64 noundef %i.is, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11086) #46
          to label %bb.u unwind label %bb.lt

bb.ly:                                            ; preds = %bb.lv, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i863
  %.sroa.41689.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i863 ], [ 0, %bb.lv ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41689.0.ph, i64 %i.akm) #46
          to label %bb.u unwind label %bb.lt

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159: ; preds = %bb.lw, %bb.ma
  %i.akq = phi ptr [ %i.ako, %bb.ma ], [ inttoptr (i64 1 to ptr), %bb.lw ] ; 2 uses
  %i.akr = icmp ult i64 %i.ajs, 10869
  br i1 %i.akr, label %.lr.ph.i868, label %._crit_edge.i872.invoke

.lr.ph.i868:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159, %bb.lz
  %.sroa.0.013.i869 = phi i32 [ %i.alc, %bb.lz ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159 ] ; 2 uses
  %.sroa.02.012.i870 = phi i32 [ %i.ald, %bb.lz ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159 ] ; 3 uses
  %i.aks = phi i64 [ %i.akv, %bb.lz ], [ %i.ajv, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159 ] ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aks
  %i.aku = load i8, ptr %i.akt, align 1, !noalias !18144, !noundef !21 ; 2 uses
  %i.akv = add nuw nsw i64 %i.aks, 1              ; 4 uses
  %i.akw = zext i8 %i.aku to i32                  ; 2 uses
  %i.akx = icmp sgt i8 %i.aku, -1
  br i1 %i.akx, label %bb.mb, label %bb.lz

._crit_edge.i872.invoke:                          ; preds = %bb.mb, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159, %bb.lz, %bb.mc
  %i.aky = phi i64 [ 10870, %bb.mc ], [ 10870, %bb.lz ], [ %i.akv, %bb.mb ], [ %i.ajv, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aky, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i872.cont unwind label %bb.mj

._crit_edge.i872.cont:                            ; preds = %._crit_edge.i872.invoke
  unreachable

bb.lz:                                            ; preds = %.lr.ph.i868
  %i.akz = and i32 %i.akw, 127
  %i.ala = and i32 %.sroa.02.012.i870, 31
  %i.alb = shl i32 %i.akz, %i.ala
  %i.alc = or i32 %i.alb, %.sroa.0.013.i869
  %i.ald = add i32 %.sroa.02.012.i870, 7
  %exitcond.not.i871 = icmp eq i64 %i.akv, 10870
  br i1 %exitcond.not.i871, label %._crit_edge.i872.invoke, label %.lr.ph.i868

bb.ma:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i863
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ako, ptr nonnull align 1 %i.akk, i64 %i.akm, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit865.thread2159

.body249:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit885
  %lpad.thr_comm.split-lp2168 = landingpad { ptr, i32 }
          cleanup
  br label %.body295

bb.mb:                                            ; preds = %.lr.ph.i868
  %i.ale = and i32 %.sroa.02.012.i870, 31
  %i.alf = shl i32 %i.akw, %i.ale
  %i.alg = or i32 %i.alf, %.sroa.0.013.i869
  %i.alh = icmp ult i64 %i.aks, 10869
  br i1 %i.alh, label %.lr.ph.i877, label %._crit_edge.i872.invoke

.lr.ph.i877:                                      ; preds = %bb.mb, %bb.mc
  %.sroa.0.013.i878 = phi i32 [ %i.alr, %bb.mc ], [ 0, %bb.mb ] ; 2 uses
  %.sroa.02.012.i879 = phi i32 [ %i.als, %bb.mc ], [ 0, %bb.mb ] ; 3 uses
  %i.ali = phi i64 [ %i.all, %bb.mc ], [ %i.akv, %bb.mb ] ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr @11098, i64 %i.ali
  %i.alk = load i8, ptr %i.alj, align 1, !noalias !18145, !noundef !21 ; 2 uses
  %i.all = add nuw i64 %i.ali, 1                  ; 3 uses
  %i.alm = zext i8 %i.alk to i32                  ; 2 uses
  %i.aln = icmp sgt i8 %i.alk, -1
  br i1 %i.aln, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %.lr.ph.i877
  %i.alo = and i32 %i.alm, 127
  %i.alp = and i32 %.sroa.02.012.i879, 31
  %i.alq = shl i32 %i.alo, %i.alp
  %i.alr = or i32 %i.alq, %.sroa.0.013.i878
  %i.als = add i32 %.sroa.02.012.i879, 7
  %exitcond.not.i880 = icmp eq i64 %i.all, 10870
  br i1 %exitcond.not.i880, label %._crit_edge.i872.invoke, label %.lr.ph.i877

bb.md:                                            ; preds = %.lr.ph.i877
  %i.alt = and i32 %.sroa.02.012.i879, 31
  %i.alu = shl i32 %i.alm, %i.alt
  %i.alv = or i32 %i.alu, %.sroa.0.013.i878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.alw = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.alx = icmp eq ptr %i.alw, null
  br i1 %i.alx, label %bb.me, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit885, !prof !26

bb.me:                                            ; preds = %bb.md
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc884 unwind label %bb.mj

.noexc884:                                        ; preds = %bb.me
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit885: ; preds = %bb.md
  store i64 %.sroa.01285.0, ptr %i.alw, align 8
  %.sroa.41582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41582.0..sroa_idx, align 8
  %.sroa.51583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51583.0..sroa_idx, align 8
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  store i64 %i.aji, ptr %i.aly, align 8
  %.sroa.41585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 32
  store ptr %i.ajq, ptr %.sroa.41585.0..sroa_idx, align 8
  %.sroa.51586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 40
  store i64 %i.aji, ptr %.sroa.51586.0..sroa_idx, align 8
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 48
  store i64 %i.akm, ptr %i.alz, align 8
  %.sroa.41588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 56
  store ptr %i.akq, ptr %.sroa.41588.0..sroa_idx, align 8
  %.sroa.51589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alw, i64 64
  store i64 %i.akm, ptr %.sroa.51589.0..sroa_idx, align 8
  store i64 3, ptr %i.be, align 8
  store ptr %i.alw, ptr %i.eb, align 8
  store i64 3, ptr %i.ec, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.be)
          to label %bb.mf unwind label %.body249

bb.mf:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit885
  store i32 %i.alv, ptr %i.ed, align 8, !alias.scope !18146, !noalias !18147
  store i32 %i.alg, ptr %i.ee, align 4, !alias.scope !18146, !noalias !18147
  store i32 0, ptr %i.ef, align 8, !alias.scope !18146, !noalias !18147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18148
  %i.ama = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !18148 ; 3 uses
  %i.amb = icmp eq ptr %i.ama, null
  br i1 %i.amb, label %bb.mg, label %bb.mi, !prof !26

bb.mg:                                            ; preds = %bb.mf
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc888 unwind label %bb.mh

.noexc888:                                        ; preds = %bb.mg
  unreachable

bb.mh:                                            ; preds = %bb.mg
  %i.amc = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bf) #42
  br label %.body295

bb.mi:                                            ; preds = %bb.mf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ama, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.ed

bb.mj:                                            ; preds = %._crit_edge.i872.invoke, %bb.me
  %lpad.thr_comm2167 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.akn, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akq, i64 noundef %i.akm, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18149
  br label %bb.ml

bb.ml:                                            ; preds = %bb.lt, %bb.mj, %bb.mk
  %.pn158.ph = phi { ptr, i32 } [ %i.akd, %bb.lt ], [ %lpad.thr_comm2167, %bb.mj ], [ %lpad.thr_comm2167, %bb.mk ] ; 2 uses
  br i1 %i.ajj, label %.thread1870, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajq, i64 noundef %i.aji, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18150
  br label %.thread1870

bb.mn:                                            ; preds = %.lr.ph.i526
  %i.amd = and i32 %.sroa.02.012.i528, 31
  %i.ame = shl i32 %i.st, %i.amd
  %i.amf = or i32 %i.ame, %.sroa.0.013.i527
  %i.amg = icmp ult i64 %i.sp, 10869
  br i1 %i.amg, label %.lr.ph.i898, label %._crit_edge.i467.invoke

.lr.ph.i898:                                      ; preds = %bb.mn, %bb.mo
  %.sroa.0.013.i899 = phi i32 [ %i.amq, %bb.mo ], [ 0, %bb.mn ] ; 2 uses
  %.sroa.02.012.i900 = phi i32 [ %i.amr, %bb.mo ], [ 0, %bb.mn ] ; 3 uses
  %i.amh = phi i64 [ %i.amk, %bb.mo ], [ %i.ss, %bb.mn ] ; 3 uses
  %i.ami = getelementptr inbounds nuw i8, ptr @11098, i64 %i.amh
  %i.amj = load i8, ptr %i.ami, align 1, !noalias !18151, !noundef !21 ; 2 uses
  %i.amk = add nuw nsw i64 %i.amh, 1              ; 4 uses
  %i.aml = zext i8 %i.amj to i32                  ; 2 uses
  %i.amm = icmp sgt i8 %i.amj, -1
  br i1 %i.amm, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %.lr.ph.i898
  %i.amn = and i32 %i.aml, 127
  %i.amo = and i32 %.sroa.02.012.i900, 31
  %i.amp = shl i32 %i.amn, %i.amo
  %i.amq = or i32 %i.amp, %.sroa.0.013.i899
  %i.amr = add i32 %.sroa.02.012.i900, 7
  %exitcond.not.i901 = icmp eq i64 %i.amk, 10870
  br i1 %exitcond.not.i901, label %._crit_edge.i467.invoke, label %.lr.ph.i898

bb.mp:                                            ; preds = %.lr.ph.i898
  %i.ams = and i32 %.sroa.02.012.i900, 31
  %i.amt = shl i32 %i.aml, %i.ams
  %i.amu = or i32 %i.amt, %.sroa.0.013.i899
  %i.amv = icmp ult i64 %i.amh, 10869
  br i1 %i.amv, label %.lr.ph.i907, label %._crit_edge.i467.invoke

.lr.ph.i907:                                      ; preds = %bb.mp, %bb.mq
  %.sroa.0.013.i908 = phi i32 [ %i.anf, %bb.mq ], [ 0, %bb.mp ] ; 2 uses
  %.sroa.02.012.i909 = phi i32 [ %i.ang, %bb.mq ], [ 0, %bb.mp ] ; 3 uses
  %i.amw = phi i64 [ %i.amz, %bb.mq ], [ %i.amk, %bb.mp ] ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr @11098, i64 %i.amw
  %i.amy = load i8, ptr %i.amx, align 1, !noalias !18152, !noundef !21 ; 2 uses
  %i.amz = add nuw nsw i64 %i.amw, 1              ; 3 uses
  %i.ana = zext i8 %i.amy to i32                  ; 2 uses
  %i.anb = icmp sgt i8 %i.amy, -1
  br i1 %i.anb, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %.lr.ph.i907
  %i.anc = and i32 %i.ana, 127
  %i.and = and i32 %.sroa.02.012.i909, 31
  %i.ane = shl i32 %i.anc, %i.and
  %i.anf = or i32 %i.ane, %.sroa.0.013.i908
  %i.ang = add i32 %.sroa.02.012.i909, 7
  %exitcond.not.i910 = icmp eq i64 %i.amz, 10870
  br i1 %exitcond.not.i910, label %._crit_edge.i467.invoke, label %.lr.ph.i907

bb.mr:                                            ; preds = %.lr.ph.i907
  %i.anh = and i32 %.sroa.02.012.i909, 31
  %i.ani = shl i32 %i.ana, %i.anh
  %i.anj = or i32 %i.ani, %.sroa.0.013.i908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.ank = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 5 uses
  %i.anl = icmp eq ptr %i.ank, null
  br i1 %i.anl, label %.invoke10836, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit915, !prof !26

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit915: ; preds = %bb.mr
  store i64 %.sroa.01285.0, ptr %i.ank, align 8
  %.sroa.41591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41591.0..sroa_idx, align 8
  %.sroa.51592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51592.0..sroa_idx, align 8
  store i64 1, ptr %i.bc, align 8
  store ptr %i.ank, ptr %i.dw, align 8
  store i64 1, ptr %i.dx, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bc)
          to label %bb.ms unwind label %bb.dy

bb.ms:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit915
  store i32 %i.amu, ptr %i.dy, align 8, !alias.scope !18153, !noalias !18154
  store i32 %i.amf, ptr %i.dz, align 4, !alias.scope !18153, !noalias !18154
  store i32 %i.anj, ptr %i.ea, align 8, !alias.scope !18153, !noalias !18154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18155
  %i.anm = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !18155 ; 3 uses
  %i.ann = icmp eq ptr %i.anm, null
  br i1 %i.ann, label %bb.mt, label %bb.mv, !prof !26

bb.mt:                                            ; preds = %bb.ms
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc917 unwind label %bb.mu

.noexc917:                                        ; preds = %bb.mt
  unreachable

bb.mu:                                            ; preds = %bb.mt
  %i.ano = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bd) #42
  br label %.body295

bb.mv:                                            ; preds = %bb.ms
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.anm, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.ed

bb.mw:                                            ; preds = %.lr.ph.i535
  %i.anp = and i32 %.sroa.02.012.i537, 31
  %i.anq = shl i32 %i.tf, %i.anp
  %i.anr = or i32 %i.anq, %.sroa.0.013.i536
  %i.ans = zext i32 %i.anr to i64                 ; 3 uses
  %i.ant = icmp ugt i64 %i.is, %i.ans
  br i1 %i.ant, label %bb.mx, label %.invoke10832

bb.mx:                                            ; preds = %bb.mw
  %i.anu = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.ans ; 2 uses
  %i.anv = load ptr, ptr %i.anu, align 8, !nonnull !21, !noundef !21
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anu, i64 8
  %i.anx = load i64, ptr %i.anw, align 8, !noundef !21 ; 9 uses
  %.not.i919 = icmp slt i64 %i.anx, 0
  br i1 %.not.i919, label %.invoke10834, label %bb.my, !prof !37

bb.my:                                            ; preds = %bb.mx
  %i.any = icmp eq i64 %i.anx, 0                  ; 2 uses
  br i1 %i.any, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920: ; preds = %bb.my
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18156
  %i.anz = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.anx, i64 noundef range(i64 1, 9) 1) #41, !noalias !18156 ; 3 uses
  %i.aoa = icmp eq ptr %i.anz, null
  br i1 %i.aoa, label %.invoke10834, label %bb.na

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178: ; preds = %bb.my, %bb.na
  %i.aob = phi ptr [ %i.anz, %bb.na ], [ inttoptr (i64 1 to ptr), %bb.my ] ; 2 uses
  %i.aoc = icmp ult i64 %i.tb, 10869
  br i1 %i.aoc, label %.lr.ph.i925, label %._crit_edge.i929.invoke

.lr.ph.i925:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178, %bb.mz
  %.sroa.0.013.i926 = phi i32 [ %i.aon, %bb.mz ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178 ] ; 2 uses
  %.sroa.02.012.i927 = phi i32 [ %i.aoo, %bb.mz ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178 ] ; 3 uses
  %i.aod = phi i64 [ %i.aog, %bb.mz ], [ %i.te, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178 ] ; 3 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aod
  %i.aof = load i8, ptr %i.aoe, align 1, !noalias !18157, !noundef !21 ; 2 uses
  %i.aog = add nuw nsw i64 %i.aod, 1              ; 4 uses
  %i.aoh = zext i8 %i.aof to i32                  ; 2 uses
  %i.aoi = icmp sgt i8 %i.aof, -1
  br i1 %i.aoi, label %bb.nb, label %bb.mz

._crit_edge.i929.invoke:                          ; preds = %bb.nd, %bb.nb, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178, %bb.mz, %bb.nc, %bb.ne
  %i.aoj = phi i64 [ 10870, %bb.mz ], [ 10870, %bb.nc ], [ 10870, %bb.ne ], [ %i.aow, %bb.nd ], [ %i.aog, %bb.nb ], [ %i.te, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aoj, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i929.cont unwind label %bb.nl

._crit_edge.i929.cont:                            ; preds = %._crit_edge.i929.invoke
  unreachable

bb.mz:                                            ; preds = %.lr.ph.i925
  %i.aok = and i32 %i.aoh, 127
  %i.aol = and i32 %.sroa.02.012.i927, 31
  %i.aom = shl i32 %i.aok, %i.aol
  %i.aon = or i32 %i.aom, %.sroa.0.013.i926
  %i.aoo = add i32 %.sroa.02.012.i927, 7
  %exitcond.not.i928 = icmp eq i64 %i.aog, 10870
  br i1 %exitcond.not.i928, label %._crit_edge.i929.invoke, label %.lr.ph.i925

bb.na:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i920
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.anz, ptr nonnull align 1 %i.anv, i64 %i.anx, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit922.thread2178

.body242:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951
  %lpad.thr_comm.split-lp2187 = landingpad { ptr, i32 }
          cleanup
  br label %.body295

bb.nb:                                            ; preds = %.lr.ph.i925
  %i.aop = and i32 %.sroa.02.012.i927, 31
  %i.aoq = shl i32 %i.aoh, %i.aop
  %i.aor = or i32 %i.aoq, %.sroa.0.013.i926
  %i.aos = icmp ult i64 %i.aod, 10869
  br i1 %i.aos, label %.lr.ph.i934, label %._crit_edge.i929.invoke

.lr.ph.i934:                                      ; preds = %bb.nb, %bb.nc
  %.sroa.0.013.i935 = phi i32 [ %i.apc, %bb.nc ], [ 0, %bb.nb ] ; 2 uses
  %.sroa.02.012.i936 = phi i32 [ %i.apd, %bb.nc ], [ 0, %bb.nb ] ; 3 uses
  %i.aot = phi i64 [ %i.aow, %bb.nc ], [ %i.aog, %bb.nb ] ; 3 uses
  %i.aou = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aot
  %i.aov = load i8, ptr %i.aou, align 1, !noalias !18158, !noundef !21 ; 2 uses
  %i.aow = add nuw nsw i64 %i.aot, 1              ; 4 uses
  %i.aox = zext i8 %i.aov to i32                  ; 2 uses
  %i.aoy = icmp sgt i8 %i.aov, -1
  br i1 %i.aoy, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %.lr.ph.i934
  %i.aoz = and i32 %i.aox, 127
  %i.apa = and i32 %.sroa.02.012.i936, 31
  %i.apb = shl i32 %i.aoz, %i.apa
  %i.apc = or i32 %i.apb, %.sroa.0.013.i935
  %i.apd = add i32 %.sroa.02.012.i936, 7
  %exitcond.not.i937 = icmp eq i64 %i.aow, 10870
  br i1 %exitcond.not.i937, label %._crit_edge.i929.invoke, label %.lr.ph.i934

bb.nd:                                            ; preds = %.lr.ph.i934
  %i.ape = and i32 %.sroa.02.012.i936, 31
  %i.apf = shl i32 %i.aox, %i.ape
  %i.apg = or i32 %i.apf, %.sroa.0.013.i935
  %i.aph = icmp ult i64 %i.aot, 10869
  br i1 %i.aph, label %.lr.ph.i943, label %._crit_edge.i929.invoke

.lr.ph.i943:                                      ; preds = %bb.nd, %bb.ne
  %.sroa.0.013.i944 = phi i32 [ %i.apr, %bb.ne ], [ 0, %bb.nd ] ; 2 uses
  %.sroa.02.012.i945 = phi i32 [ %i.aps, %bb.ne ], [ 0, %bb.nd ] ; 3 uses
  %i.api = phi i64 [ %i.apl, %bb.ne ], [ %i.aow, %bb.nd ] ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr @11098, i64 %i.api
  %i.apk = load i8, ptr %i.apj, align 1, !noalias !18159, !noundef !21 ; 2 uses
  %i.apl = add nuw i64 %i.api, 1                  ; 3 uses
  %i.apm = zext i8 %i.apk to i32                  ; 2 uses
  %i.apn = icmp sgt i8 %i.apk, -1
  br i1 %i.apn, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %.lr.ph.i943
  %i.apo = and i32 %i.apm, 127
  %i.app = and i32 %.sroa.02.012.i945, 31
  %i.apq = shl i32 %i.apo, %i.app
  %i.apr = or i32 %i.apq, %.sroa.0.013.i944
  %i.aps = add i32 %.sroa.02.012.i945, 7
  %exitcond.not.i946 = icmp eq i64 %i.apl, 10870
  br i1 %exitcond.not.i946, label %._crit_edge.i929.invoke, label %.lr.ph.i943

bb.nf:                                            ; preds = %.lr.ph.i943
  %i.apt = and i32 %.sroa.02.012.i945, 31
  %i.apu = shl i32 %i.apm, %i.apt
  %i.apv = or i32 %i.apu, %.sroa.0.013.i944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.apw = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 8 uses
  %i.apx = icmp eq ptr %i.apw, null
  br i1 %i.apx, label %bb.ng, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951, !prof !26

bb.ng:                                            ; preds = %bb.nf
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #46
          to label %.noexc950 unwind label %bb.nl

.noexc950:                                        ; preds = %bb.ng
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951: ; preds = %bb.nf
  store i64 %.sroa.01285.0, ptr %i.apw, align 8
  %.sroa.41597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41597.0..sroa_idx, align 8
  %.sroa.51598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51598.0..sroa_idx, align 8
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apw, i64 24
  store i64 %i.anx, ptr %i.apy, align 8
  %.sroa.41600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 32
  store ptr %i.aob, ptr %.sroa.41600.0..sroa_idx, align 8
  %.sroa.51601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 40
  store i64 %i.anx, ptr %.sroa.51601.0..sroa_idx, align 8
  store i64 2, ptr %i.ba, align 8
  store ptr %i.apw, ptr %i.dr, align 8
  store i64 2, ptr %i.ds, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ba)
          to label %bb.nh unwind label %.body242

bb.nh:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit951
  store i32 %i.apg, ptr %i.dt, align 8, !alias.scope !18160, !noalias !18161
  store i32 %i.aor, ptr %i.du, align 4, !alias.scope !18160, !noalias !18161
  store i32 %i.apv, ptr %i.dv, align 8, !alias.scope !18160, !noalias !18161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18162
  %i.apz = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !18162 ; 3 uses
  %i.aqa = icmp eq ptr %i.apz, null
  br i1 %i.aqa, label %bb.ni, label %bb.nk, !prof !26

bb.ni:                                            ; preds = %bb.nh
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc954 unwind label %bb.nj

.noexc954:                                        ; preds = %bb.ni
  unreachable

bb.nj:                                            ; preds = %bb.ni
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bb) #42
  br label %.body295

bb.nk:                                            ; preds = %bb.nh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.apz, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.ed

bb.nl:                                            ; preds = %._crit_edge.i929.invoke, %bb.ng
  %lpad.thr_comm2186 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.any, label %.thread1870, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aob, i64 noundef %i.anx, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18163
  br label %.thread1870

bb.nn:                                            ; preds = %.lr.ph.i544
  %i.aqc = and i32 %.sroa.02.012.i546, 31
  %i.aqd = shl i32 %i.tr, %i.aqc
  %i.aqe = or i32 %i.aqd, %.sroa.0.013.i545
  %i.aqf = zext i32 %i.aqe to i64                 ; 3 uses
  %i.aqg = icmp ugt i64 %i.is, %i.aqf
  br i1 %i.aqg, label %bb.no, label %.invoke10832

bb.no:                                            ; preds = %bb.nn
  %i.aqh = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.aqf ; 2 uses
  %i.aqi = load ptr, ptr %i.aqh, align 8, !nonnull !21, !noundef !21
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  %i.aqk = load i64, ptr %i.aqj, align 8, !noundef !21 ; 9 uses
  %.not.i959 = icmp slt i64 %i.aqk, 0
  br i1 %.not.i959, label %.invoke10834, label %bb.np, !prof !37

bb.np:                                            ; preds = %bb.no
  %i.aql = icmp eq i64 %i.aqk, 0                  ; 2 uses
  br i1 %i.aql, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960: ; preds = %bb.np
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18164
  %i.aqm = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aqk, i64 noundef range(i64 1, 9) 1) #41, !noalias !18164 ; 3 uses
  %i.aqn = icmp eq ptr %i.aqm, null
  br i1 %i.aqn, label %.invoke10834, label %bb.nr

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197: ; preds = %bb.np, %bb.nr
  %i.aqo = phi ptr [ %i.aqm, %bb.nr ], [ inttoptr (i64 1 to ptr), %bb.np ] ; 2 uses
  %i.aqp = icmp ult i64 %i.tn, 10869
  br i1 %i.aqp, label %.lr.ph.i965, label %._crit_edge.i969

.lr.ph.i965:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197, %bb.nq
  %.sroa.0.013.i966 = phi i32 [ %i.aqz, %bb.nq ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197 ] ; 2 uses
  %.sroa.02.012.i967 = phi i32 [ %i.ara, %bb.nq ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197 ] ; 3 uses
  %i.aqq = phi i64 [ %i.aqt, %bb.nq ], [ %i.tq, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197 ] ; 3 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aqq
  %i.aqs = load i8, ptr %i.aqr, align 1, !noalias !18165, !noundef !21 ; 2 uses
  %i.aqt = add nuw nsw i64 %i.aqq, 1              ; 4 uses
  %i.aqu = zext i8 %i.aqs to i32                  ; 2 uses
  %i.aqv = icmp sgt i8 %i.aqs, -1
  br i1 %i.aqv, label %bb.nt, label %bb.nq

._crit_edge.i969:                                 ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197, %bb.nq
  %.lcssa7.i964 = phi i64 [ 10870, %bb.nq ], [ %i.tq, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa7.i964, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %.noexc970 unwind label %bb.ns

.noexc970:                                        ; preds = %._crit_edge.i969
  unreachable

bb.nq:                                            ; preds = %.lr.ph.i965
  %i.aqw = and i32 %i.aqu, 127
  %i.aqx = and i32 %.sroa.02.012.i967, 31
  %i.aqy = shl i32 %i.aqw, %i.aqx
  %i.aqz = or i32 %i.aqy, %.sroa.0.013.i966
  %i.ara = add i32 %.sroa.02.012.i967, 7
  %exitcond.not.i968 = icmp eq i64 %i.aqt, 10870
  br i1 %exitcond.not.i968, label %._crit_edge.i969, label %.lr.ph.i965

bb.nr:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i960
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqm, ptr nonnull align 1 %i.aqi, i64 %i.aqk, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit962.thread2197

bb.ns:                                            ; preds = %._crit_edge.i969, %bb.nx, %bb.nw
  %i.arb = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.nt:                                            ; preds = %.lr.ph.i965
  %i.arc = and i32 %.sroa.02.012.i967, 31
  %i.ard = shl i32 %i.aqu, %i.arc
  %i.are = or i32 %i.ard, %.sroa.0.013.i966
  %i.arf = zext i32 %i.are to i64                 ; 3 uses
  %i.arg = icmp ugt i64 %i.is, %i.arf
  br i1 %i.arg, label %bb.nu, label %bb.nw

bb.nu:                                            ; preds = %bb.nt
  %i.arh = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.arf ; 2 uses
  %i.ari = load ptr, ptr %i.arh, align 8, !nonnull !21, !noundef !21
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arh, i64 8
  %i.ark = load i64, ptr %i.arj, align 8, !noundef !21 ; 8 uses
  %.not.i972 = icmp slt i64 %i.ark, 0
  br i1 %.not.i972, label %bb.nx, label %bb.nv, !prof !37

bb.nv:                                            ; preds = %bb.nu
  %i.arl = icmp eq i64 %i.ark, 0                  ; 2 uses
  br i1 %i.arl, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i973

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i973: ; preds = %bb.nv
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18166
  %i.arm = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ark, i64 noundef range(i64 1, 9) 1) #41, !noalias !18166 ; 3 uses
  %i.arn = icmp eq ptr %i.arm, null
  br i1 %i.arn, label %bb.nx, label %bb.nz

bb.nw:                                            ; preds = %bb.nt
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.arf, i64 noundef %i.is, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11089) #46
          to label %bb.u unwind label %bb.ns

bb.nx:                                            ; preds = %bb.nu, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i973
  %.sroa.41701.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i973 ], [ 0, %bb.nu ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.41701.0.ph, i64 %i.ark) #46
          to label %bb.u unwind label %bb.ns

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213: ; preds = %bb.nv, %bb.nz
  %i.aro = phi ptr [ %i.arm, %bb.nz ], [ inttoptr (i64 1 to ptr), %bb.nv ] ; 2 uses
  %i.arp = icmp ult i64 %i.aqq, 10869
  br i1 %i.arp, label %.lr.ph.i978, label %._crit_edge.i982.invoke

.lr.ph.i978:                                      ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213, %bb.ny
  %.sroa.0.013.i979 = phi i32 [ %i.asa, %bb.ny ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213 ] ; 2 uses
  %.sroa.02.012.i980 = phi i32 [ %i.asb, %bb.ny ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213 ] ; 3 uses
  %i.arq = phi i64 [ %i.art, %bb.ny ], [ %i.aqt, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213 ] ; 3 uses
  %i.arr = getelementptr inbounds nuw i8, ptr @11098, i64 %i.arq
  %i.ars = load i8, ptr %i.arr, align 1, !noalias !18167, !noundef !21 ; 2 uses
  %i.art = add nuw nsw i64 %i.arq, 1              ; 4 uses
  %i.aru = zext i8 %i.ars to i32                  ; 2 uses
  %i.arv = icmp sgt i8 %i.ars, -1
  br i1 %i.arv, label %bb.oa, label %bb.ny

._crit_edge.i982.invoke:                          ; preds = %bb.oc, %bb.oa, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213, %bb.ny, %bb.ob, %bb.od
  %i.arw = phi i64 [ 10870, %bb.ny ], [ 10870, %bb.ob ], [ 10870, %bb.od ], [ %i.asj, %bb.oc ], [ %i.art, %bb.oa ], [ %i.aqt, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.arw, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i982.cont unwind label %bb.ok

._crit_edge.i982.cont:                            ; preds = %._crit_edge.i982.invoke
  unreachable

bb.ny:                                            ; preds = %.lr.ph.i978
  %i.arx = and i32 %i.aru, 127
  %i.ary = and i32 %.sroa.02.012.i980, 31
  %i.arz = shl i32 %i.arx, %i.ary
  %i.asa = or i32 %i.arz, %.sroa.0.013.i979
  %i.asb = add i32 %.sroa.02.012.i980, 7
  %exitcond.not.i981 = icmp eq i64 %i.art, 10870
  br i1 %exitcond.not.i981, label %._crit_edge.i982.invoke, label %.lr.ph.i978

bb.nz:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i973
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.arm, ptr nonnull align 1 %i.ari, i64 %i.ark, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit975.thread2213

.body240:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1004
  %lpad.thr_comm.split-lp2222 = landingpad { ptr, i32 }
          cleanup
  br label %.body295

bb.oa:                                            ; preds = %.lr.ph.i978
  %i.asc = and i32 %.sroa.02.012.i980, 31
  %i.asd = shl i32 %i.aru, %i.asc
  %i.ase = or i32 %i.asd, %.sroa.0.013.i979
  %i.asf = icmp ult i64 %i.arq, 10869
  br i1 %i.asf, label %.lr.ph.i987, label %._crit_edge.i982.invoke

.lr.ph.i987:                                      ; preds = %bb.oa, %bb.ob
  %.sroa.0.013.i988 = phi i32 [ %i.asp, %bb.ob ], [ 0, %bb.oa ] ; 2 uses
  %.sroa.02.012.i989 = phi i32 [ %i.asq, %bb.ob ], [ 0, %bb.oa ] ; 3 uses
  %i.asg = phi i64 [ %i.asj, %bb.ob ], [ %i.art, %bb.oa ] ; 3 uses
  %i.ash = getelementptr inbounds nuw i8, ptr @11098, i64 %i.asg
  %i.asi = load i8, ptr %i.ash, align 1, !noalias !18168, !noundef !21 ; 2 uses
  %i.asj = add nuw i64 %i.asg, 1                  ; 4 uses
  %i.ask = zext i8 %i.asi to i32                  ; 2 uses
  %i.asl = icmp sgt i8 %i.asi, -1
  br i1 %i.asl, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %.lr.ph.i987
  %i.asm = and i32 %i.ask, 127
  %i.asn = and i32 %.sroa.02.012.i989, 31
  %i.aso = shl i32 %i.asm, %i.asn
  %i.asp = or i32 %i.aso, %.sroa.0.013.i988
  %i.asq = add i32 %.sroa.02.012.i989, 7
  %exitcond.not.i990 = icmp eq i64 %i.asj, 10870
  br i1 %exitcond.not.i990, label %._crit_edge.i982.invoke, label %.lr.ph.i987

bb.oc:                                            ; preds = %.lr.ph.i987
  %i.asr = and i32 %.sroa.02.012.i989, 31
  %i.ass = shl i32 %i.ask, %i.asr
  %i.ast = or i32 %i.ass, %.sroa.0.013.i988
  %i.asu = icmp ult i64 %i.asg, 10869
  br i1 %i.asu, label %.lr.ph.i996, label %._crit_edge.i982.invoke

.lr.ph.i996:                                      ; preds = %bb.oc, %bb.od
  %.sroa.0.013.i997 = phi i32 [ %i.ate, %bb.od ], [ 0, %bb.oc ] ; 2 uses
  %.sroa.02.012.i998 = phi i32 [ %i.atf, %bb.od ], [ 0, %bb.oc ] ; 3 uses
  %i.asv = phi i64 [ %i.asy, %bb.od ], [ %i.asj, %bb.oc ] ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr @11098, i64 %i.asv
  %i.asx = load i8, ptr %i.asw, align 1, !noalias !18169, !noundef !21 ; 2 uses
  %i.asy = add nuw nsw i64 %i.asv, 1              ; 3 uses
  %i.asz = zext i8 %i.asx to i32                  ; 2 uses
  %i.ata = icmp sgt i8 %i.asx, -1
  br i1 %i.ata, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %.lr.ph.i996
  %i.atb = and i32 %i.asz, 127
  %i.atc = and i32 %.sroa.02.012.i998, 31
  %i.atd = shl i32 %i.atb, %i.atc
  %i.ate = or i32 %i.atd, %.sroa.0.013.i997
  %i.atf = add i32 %.sroa.02.012.i998, 7
  %exitcond.not.i999 = icmp eq i64 %i.asy, 10870
  br i1 %exitcond.not.i999, label %._crit_edge.i982.invoke, label %.lr.ph.i996

bb.oe:                                            ; preds = %.lr.ph.i996
  %i.atg = and i32 %.sroa.02.012.i998, 31
  %i.ath = shl i32 %i.asz, %i.atg
  %i.ati = or i32 %i.ath, %.sroa.0.013.i997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.atj = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 11 uses
  %i.atk = icmp eq ptr %i.atj, null
  br i1 %i.atk, label %bb.of, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1004, !prof !26

bb.of:                                            ; preds = %bb.oe
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc1003 unwind label %bb.ok

.noexc1003:                                       ; preds = %bb.of
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1004: ; preds = %bb.oe
  store i64 %.sroa.01285.0, ptr %i.atj, align 8
  %.sroa.41609.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 8
  store ptr %.sroa.44.0, ptr %.sroa.41609.0..sroa_idx, align 8
  %.sroa.51610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 16
  store i64 %.sroa.46.0, ptr %.sroa.51610.0..sroa_idx, align 8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atj, i64 24
  store i64 %i.aqk, ptr %i.atl, align 8
  %.sroa.41612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 32
  store ptr %i.aqo, ptr %.sroa.41612.0..sroa_idx, align 8
  %.sroa.51613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 40
  store i64 %i.aqk, ptr %.sroa.51613.0..sroa_idx, align 8
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atj, i64 48
  store i64 %i.ark, ptr %i.atm, align 8
  %.sroa.41615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 56
  store ptr %i.aro, ptr %.sroa.41615.0..sroa_idx, align 8
  %.sroa.51616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atj, i64 64
  store i64 %i.ark, ptr %.sroa.51616.0..sroa_idx, align 8
  store i64 3, ptr %i.ay, align 8
  store ptr %i.atj, ptr %i.dm, align 8
  store i64 3, ptr %i.dn, align 8
  invoke fastcc void @_RNvMNtCsf8MNnN4IDbl_8iced_x869formatterNtB2_15FormatterString12with_strings(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ay)
          to label %bb.og unwind label %.body240

bb.og:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1004
  store i32 %i.ast, ptr %i.do, align 8, !alias.scope !18170, !noalias !18171
  store i32 %i.ase, ptr %i.dp, align 4, !alias.scope !18170, !noalias !18171
  store i32 %i.ati, ptr %i.dq, align 8, !alias.scope !18170, !noalias !18171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18172
  %i.atn = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !18172 ; 3 uses
  %i.ato = icmp eq ptr %i.atn, null
  br i1 %i.ato, label %bb.oh, label %bb.oj, !prof !26

bb.oh:                                            ; preds = %bb.og
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc1007 unwind label %bb.oi

.noexc1007:                                       ; preds = %bb.oh
  unreachable

bb.oi:                                            ; preds = %bb.oh
  %i.atp = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4info22SimpleInstrInfo_os_jccEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.az) #42
  br label %.body295

bb.oj:                                            ; preds = %bb.og
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.atn, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.ed

bb.ok:                                            ; preds = %._crit_edge.i982.invoke, %bb.of
  %lpad.thr_comm2221 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.arl, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aro, i64 noundef %i.ark, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18173
  br label %bb.om

bb.om:                                            ; preds = %bb.ns, %bb.ok, %bb.ol
  %.pn.ph = phi { ptr, i32 } [ %i.arb, %bb.ns ], [ %lpad.thr_comm2221, %bb.ok ], [ %lpad.thr_comm2221, %bb.ol ] ; 2 uses
  br i1 %i.aql, label %.thread1870, label %bb.on

bb.on:                                            ; preds = %bb.om
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqo, i64 noundef %i.aqk, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18174
  br label %.thread1870

bb.oo:                                            ; preds = %.lr.ph.i553
  %i.atq = and i32 %.sroa.02.012.i555, 31
  %i.atr = shl i32 %i.ud, %i.atq
  %i.ats = or i32 %i.atr, %.sroa.0.013.i554
  %i.att = zext i32 %i.ats to i64                 ; 3 uses
  %i.atu = icmp ugt i64 %i.is, %i.att
  br i1 %i.atu, label %bb.op, label %.invoke10832

bb.op:                                            ; preds = %bb.oo
  %i.atv = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.att ; 2 uses
  %i.atw = load ptr, ptr %i.atv, align 8, !nonnull !21, !noundef !21
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atv, i64 8
  %i.aty = load i64, ptr %i.atx, align 8, !noundef !21 ; 9 uses
  %.not.i1015 = icmp slt i64 %i.aty, 0
  br i1 %.not.i1015, label %.invoke10834, label %bb.oq, !prof !37

bb.oq:                                            ; preds = %bb.op
  %i.atz = icmp eq i64 %i.aty, 0                  ; 2 uses
  br i1 %i.atz, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016: ; preds = %bb.oq
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !18175
  %i.aua = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aty, i64 noundef range(i64 1, 9) 1) #41, !noalias !18175 ; 3 uses
  %i.aub = icmp eq ptr %i.aua, null
  br i1 %i.aub, label %.invoke10834, label %bb.os

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232: ; preds = %bb.oq, %bb.os
  %i.auc = phi ptr [ %i.aua, %bb.os ], [ inttoptr (i64 1 to ptr), %bb.oq ] ; 2 uses
  %i.aud = icmp ult i64 %i.tz, 10869
  br i1 %i.aud, label %.lr.ph.i1021, label %._crit_edge.i1025.invoke

.lr.ph.i1021:                                     ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232, %bb.or
  %.sroa.0.013.i1022 = phi i32 [ %i.auo, %bb.or ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232 ] ; 2 uses
  %.sroa.02.012.i1023 = phi i32 [ %i.aup, %bb.or ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232 ] ; 3 uses
  %i.aue = phi i64 [ %i.auh, %bb.or ], [ %i.uc, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232 ] ; 3 uses
  %i.auf = getelementptr inbounds nuw i8, ptr @11098, i64 %i.aue
  %i.aug = load i8, ptr %i.auf, align 1, !noalias !18176, !noundef !21 ; 2 uses
  %i.auh = add nuw nsw i64 %i.aue, 1              ; 4 uses
  %i.aui = zext i8 %i.aug to i32                  ; 2 uses
  %i.auj = icmp sgt i8 %i.aug, -1
  br i1 %i.auj, label %bb.ot, label %bb.or

._crit_edge.i1025.invoke:                         ; preds = %bb.ov, %bb.ot, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232, %bb.or, %bb.ou
  %i.auk = phi i64 [ 10870, %bb.or ], [ 10870, %bb.ou ], [ %i.aux, %bb.ov ], [ %i.auh, %bb.ot ], [ %i.uc, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.auk, i64 noundef 10870, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #47
          to label %._crit_edge.i1025.cont unwind label %bb.pc

._crit_edge.i1025.cont:                           ; preds = %._crit_edge.i1025.invoke
  unreachable

bb.or:                                            ; preds = %.lr.ph.i1021
  %i.aul = and i32 %i.aui, 127
  %i.aum = and i32 %.sroa.02.012.i1023, 31
  %i.aun = shl i32 %i.aul, %i.aum
  %i.auo = or i32 %i.aun, %.sroa.0.013.i1022
  %i.aup = add i32 %.sroa.02.012.i1023, 7
  %exitcond.not.i1024 = icmp eq i64 %i.auh, 10870
  br i1 %exitcond.not.i1024, label %._crit_edge.i1025.invoke, label %.lr.ph.i1021

bb.os:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i1016
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aua, ptr nonnull align 1 %i.atw, i64 %i.aty, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8MNnN4IDbl_8iced_x86.exit1018.thread2232

.body268:                                         ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit1040
  %lpad.thr_comm.split-lp2241 = landingpad { ptr, i32 }
          cleanup
  br label %.body295

bb.ot:                                            ; preds = %.lr.ph.i1021
  %i.auq = and i32 %.sroa.02.012.i1023, 31
  %i.aur = shl i32 %i.aui, %i.auq
  %i.aus = or i32 %i.aur, %.sroa.0.013.i1022
  %i.aut = icmp ult i64 %i.aue, 10869
  br i1 %i.aut, label %.lr.ph.i1030, label %._crit_edge.i1025.invoke

.lr.ph.i1030:                                     ; preds = %bb.ot, %bb.ou
  %.sroa.0.013.i1031 = phi i32 [ %i.avd, %bb.ou ], [ 0, %bb.ot ] ; 2 uses
  %.sroa.02.012.i1032 = phi i32 [ %i.ave, %bb.ou ], [ 0, %bb.ot ] ; 3 uses
  %i.auu = phi i64 [ %i.aux, %bb.ou ], [ %i.auh, %bb.ot ] ; 4 uses
  %i.auv = getelementptr inbounds nuw i8, ptr @11098, i64 %i.auu
  %i.auw = load i8, ptr %i.auv, align 1, !noalias !18177, !noundef !21 ; 2 uses
  %i.aux = add nuw nsw i64 %i.auu, 1              ; 4 uses
  %i.auy = zext i8 %i.auw to i32                  ; 2 uses
  %i.auz = icmp sgt i8 %i.auw, -1
  br i1 %i.auz, label %bb.ov, label %bb.ou

bb.ou:                                            ; preds = %.lr.ph.i1030
  %i.ava = and i32 %i.auy, 127
  %i.avb = and i32 %.sroa.02.012.i1032, 31
  %i.avc = shl i32 %i.ava, %i.avb
  %i.avd = or i32 %i.avc, %.sroa.0.013.i1031
  %i.ave = add i32 %.sroa.02.012.i1032, 7
  %exitcond.not.i1033 = icmp eq i64 %i.aux, 10870
  br i1 %exitcond.not.i1033, label %._crit_edge.i1025.invoke, label %.lr.ph.i1030

bb.ov:                                            ; preds = %.lr.ph.i1030
  %i.avf = and i32 %.sroa.02.012.i1032, 31
  %i.avg = shl i32 %i.auy, %i.avf
  %i.avh = or i32 %i.avg, %.sroa.0.013.i1031
  %i.avi = icmp ult i64 %i.auu, 10869
end_hunk_3
