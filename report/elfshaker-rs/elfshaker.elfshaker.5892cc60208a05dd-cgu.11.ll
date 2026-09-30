Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.11?download=true
inline.NumInlined: 416
inline.NumDeleted: 200
begin_hunk_0_@_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs29write_file_atomic_or_existingQRShECs7BtpbLEd5q3_9elfshaker:bb.a
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !20, !noalias !263, !noundef !6
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.ai = getelementptr i8, ptr %i.u, i64 31
  %i.aj = load i8, ptr %i.ai, align 8, !range !20, !noalias !263, !noundef !6
  br label %bb.j

bb.h:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !263
  unreachable

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.j, %.noexc.i.i, %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #18
          to label %.body.i unwind label %bb.h, !noalias !263

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e, %.noexc.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.aj, %bb.g ], [ %switch.idx.cast.i.i.i.i.i, %bb.e ], [ %i.ah, %bb.f ], [ %i.ac, %.noexc.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !262
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !261, !noalias !264, !nonnull !6, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val1.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !261, !noalias !264, !noundef !6
  store ptr %.val.i.i.i, ptr %i.e, align 8, !noalias !262
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.val1.i.i.i, ptr %i.ao, align 8, !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !262
  store ptr %i.e, ptr %i.d, align 8, !noalias !262
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !262
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @2, ptr noundef nonnull %i.d)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.i, !noalias !263

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !262
  %i.ap = invoke noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newNtNtB7_6string6StringECsfwHX9XeyMnn_4zstd(i8 noundef %.sroa.0.0.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.k unwind label %bb.i, !noalias !263

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !265
  switch i64 %i.w, label %default.unreachable [
    i64 2, label %bb.o
    i64 3, label %bb.l
    i64 0, label %bb.o
    i64 1, label %bb.m
  ], !prof !16

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp ult ptr %i.u, inttoptr (i64 188978561024 to ptr)
  %i.ar = and i64 %i.v, 1095216660480
  %i.as = icmp ne i64 %i.ar, 1095216660480
  call void @llvm.assume(i1 %i.aq)
  call void @llvm.assume(i1 %i.as)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.at = getelementptr i8, ptr %i.u, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !266, !noalias !265
  store i8 3, ptr %i.c, align 8, !alias.scope !266, !noalias !265
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %bb.o unwind label %bb.n, !noalias !260

.body.i:                                          ; preds = %bb.q, %bb.n, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.av, %bb.n ], [ %i.al, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #18
          to label %common.resume unwind label %bb.ab, !noalias !260

bb.n:                                             ; preds = %bb.m, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !259
  br label %bb.y

bb.p:                                             ; preds = %.noexc.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !range !21, !noalias !262, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !259
  store i32 %i.ax, ptr %i.j, align 4, !noalias !259
  %i.ay = invoke noundef ptr @_RNvXCs2R7sF1bDyVm_3fs2NtNtCsaL1QbXo9JQH_3std2fs4FileNtB2_7FileExt18try_lock_exclusive(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j)
          to label %bb.r unwind label %bb.q, !noalias !260 ; 2 uses

bb.q:                                             ; preds = %bb.v, %bb.s, %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  %.val17.i = load i32, ptr %i.j, align 4, !range !21, !noalias !259, !noundef !6
  %i.ba = call noundef i32 @close(i32 noundef %.val17.i) #22, !noalias !260 ; 0 uses
  br label %.body.i

bb.r:                                             ; preds = %bb.p
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bb = invoke { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4copy4copyQQRShNtNtCsaL1QbXo9JQH_3std2fs4FileECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.t unwind label %bb.q, !noalias !260 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bc = extractvalue { i64, ptr } %i.bb, 0
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.be = extractvalue { i64, ptr } %i.bb, 1
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.bf = invoke noundef ptr @_RNvMs2_NtCsaL1QbXo9JQH_3std2fsNtB5_4File9sync_data(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j)
          to label %bb.w unwind label %bb.q, !noalias !260 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not15.i = icmp eq ptr %i.bf, null
  br i1 %.not15.i, label %_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs20prepare_atomic_writeQQRShECs7BtpbLEd5q3_9elfshaker.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.r
  %.sink.i = phi ptr [ %i.ay, %bb.r ], [ %i.be, %bb.u ], [ %i.bf, %bb.w ]
  %.val.i = load i32, ptr %i.j, align 4, !range !21, !noalias !259, !noundef !6
  %i.bg = call noundef i32 @close(i32 noundef %.val.i) #22, !noalias !260 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.o
  %.sroa.7.0 = phi ptr [ %i.ap, %bb.o ], [ %.sink.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !259
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs20prepare_atomic_writeQQRShECs7BtpbLEd5q3_9elfshaker.exit.thread unwind label %bb.z, !noalias !260

bb.z:                                             ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.aa, !noalias !260

bb.aa:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !260
  unreachable

common.resume:                                    ; preds = %.body, %bb.ay, %bb.az, %.body.i, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.bh, %bb.z ], [ %.pn.pn, %bb.ay ], [ %.pn.pn, %.body ], [ %i.cn, %bb.az ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs20prepare_atomic_writeQQRShECs7BtpbLEd5q3_9elfshaker.exit.thread: ; preds = %bb.y
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ac

bb.ab:                                            ; preds = %.body.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !260
  unreachable

_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs20prepare_atomic_writeQQRShECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.w
  %.sroa.032.0.copyload = load i64, ptr %i.k, align 8, !noalias !267 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !267 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !267
  %i.bk = load i32, ptr %i.j, align 4, !range !21, !noalias !259, !noundef !6 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bl = icmp eq i64 %.sroa.032.0.copyload, -1
  br i1 %i.bl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs20prepare_atomic_writeQQRShECs7BtpbLEd5q3_9elfshaker.exit.thread, %_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs20prepare_atomic_writeQQRShECs7BtpbLEd5q3_9elfshaker.exit
  %.sroa.7.139 = phi ptr [ %.sroa.7.0, %_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs20prepare_atomic_writeQQRShECs7BtpbLEd5q3_9elfshaker.exit.thread ], [ %.sroa.7.0.copyload, %_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs20prepare_atomic_writeQQRShECs7BtpbLEd5q3_9elfshaker.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.139) ]
  br label %bb.av

bb.ad:                                            ; preds = %_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs20prepare_atomic_writeQQRShECs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.032.0.copyload, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.11.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bm = invoke noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs6renameRNtNtB4_4path7PathBufRNtBz_4PathECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.ae unwind label %bb.az     ; 6 uses

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.bm, ptr %i.n, align 8
  %.not = icmp ne ptr %i.bm, null                 ; 3 uses
  br i1 %.not, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bn = invoke noundef zeroext i1 @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path7is_file(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.ag unwind label %bb.aw

bb.ag:                                            ; preds = %bb.af
  br i1 %i.bn, label %bb.am, label %bb.ai

bb.ah:                                            ; preds = %bb.aq, %bb.am
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.ae, %bb.ag
  %.sroa.013.0 = phi i8 [ 1, %bb.ae ], [ 0, %bb.ag ] ; 3 uses
  %i.bo = call noundef i32 @close(i32 noundef %i.bk) #22 ; 0 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.ai
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.al

.body:                                            ; preds = %bb.al, %bb.aj, %bb.ah, %bb.aw
  %.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.aw ], [ %lpad.thr_comm, %bb.ah ], [ %i.bs, %bb.al ], [ %i.bp, %bb.aj ] ; 2 uses
  %.sroa.013.2 = phi i8 [ 1, %bb.aw ], [ 1, %bb.ah ], [ %.sroa.013.0, %bb.al ], [ %.sroa.013.0, %bb.aj ]
  %i.br = trunc nuw i8 %.sroa.013.2 to i1
  %or.cond3 = select i1 %.not, i1 %i.br, i1 false
  br i1 %or.cond3, label %bb.ay, label %common.resume

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.an, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i
  %.sroa.013.3 = phi i8 [ %.sroa.013.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i ], [ 1, %bb.an ]
  %.sroa.0.1 = phi ptr [ %i.bm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i ], [ null, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.bt = trunc nuw i8 %.sroa.013.3 to i1
  %or.cond = select i1 %.not, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.as, label %bb.ar

bb.am:                                            ; preds = %bb.ag
  %i.bu = call noundef i32 @close(i32 noundef %i.bk) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.bv = invoke noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs11remove_fileNtNtB4_4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.an unwind label %bb.ah     ; 4 uses

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !268
  %i.bx = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.by = and i64 %i.bx, 3
  switch i64 %i.by, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i
    i64 3, label %bb.ap
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i
    i64 1, label %bb.aq
  ], !prof !16

bb.ap:                                            ; preds = %bb.ao
  %i.bz = icmp ult ptr %i.bv, inttoptr (i64 188978561024 to ptr)
  %i.ca = and i64 %i.bx, 1095216660480
  %i.cb = icmp ne i64 %i.ca, 1095216660480
  call void @llvm.assume(i1 %i.bz)
  call void @llvm.assume(i1 %i.cb)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.cc = getelementptr i8, ptr %i.bv, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !alias.scope !269, !noalias !268
  store i8 3, ptr %i.b, align 8, !alias.scope !269, !noalias !268
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.ah

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !268
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit

bb.ar:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.av

bb.as:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !270
  %i.ce = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 3
  switch i64 %i.cf, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit
    i64 3, label %bb.at
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit
    i64 1, label %bb.au
  ], !prof !16

bb.at:                                            ; preds = %bb.as
  %i.cg = icmp ult ptr %i.bm, inttoptr (i64 188978561024 to ptr)
  %i.ch = and i64 %i.ce, 1095216660480
  %i.ci = icmp ne i64 %i.ch, 1095216660480
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.assume(i1 %i.ci)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit

bb.au:                                            ; preds = %bb.as
  %i.cj = getelementptr i8, ptr %i.bm, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !alias.scope !271, !noalias !270
  store i8 3, ptr %i.a, align 8, !alias.scope !271, !noalias !270
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ck), !noalias !270
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.as, %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !270
  br label %bb.ar

bb.av:                                            ; preds = %bb.a, %bb.ac, %bb.ar
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.ar ], [ %.sroa.7.139, %bb.ac ], [ null, %bb.a ]
  ret ptr %.sroa.0.2

bb.aw:                                            ; preds = %bb.af
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.cl = call noundef i32 @close(i32 noundef %i.bk) #22 ; 0 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #18
          to label %.body unwind label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.ay, %bb.aw
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ay:                                            ; preds = %.body
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #18
          to label %common.resume unwind label %bb.ax

bb.az:                                            ; preds = %bb.ad
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = call noundef i32 @close(i32 noundef %i.bk) #22 ; 0 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #18
          to label %common.resume unwind label %bb.ax
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs9open_fileNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  invoke void @_RINvMs2_NtCsaL1QbXo9JQH_3std2fsNtB6_4File4openRNtNtB8_4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.m, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.ab, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #18
          to label %common.resume unwind label %bb.s

bb.c:                                             ; preds = %bb.q, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i32, ptr %0, align 8, !range !19, !noundef !6
  %i.h = trunc nuw i32 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 7 uses
  store ptr %i.j, ptr %i.e, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.l = and i64 %i.k, 3                          ; 2 uses
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 0, label %bb.h
    i64 1, label %bb.i
  ], !prof !16

default.unreachable:                              ; preds = %bb.o, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  %i.n = lshr i64 %i.k, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6
  %i.r = invoke noundef i8 %i.q(i32 noundef %i.o)
          to label %bb.n unwind label %bb.m, !inline_history !0

bb.g:                                             ; preds = %bb.e
  %i.s = lshr i64 %i.k, 32
  %i.t = icmp ult ptr %i.j, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.s to i8   ; 2 uses
  %i.u = icmp ne i8 %switch.idx.cast.i.i.i, -1
  tail call void @llvm.assume(i1 %i.t)
  tail call void @llvm.assume(i1 %i.u)
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !20, !noundef !6
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.j, i64 31
  %i.y = load i8, ptr %i.x, align 8, !range !20, !noundef !6
  br label %bb.n

bb.j:                                             ; preds = %bb.d, %bb.r
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
end_hunk_0
