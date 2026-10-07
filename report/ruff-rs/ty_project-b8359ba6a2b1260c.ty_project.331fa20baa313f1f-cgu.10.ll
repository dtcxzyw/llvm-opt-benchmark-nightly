Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_project-b8359ba6a2b1260c.ty_project.331fa20baa313f1f-cgu.10?download=true
inline.NumInlined: 1176
inline.NumDeleted: 575
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMs2_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB5_6SenderNtNtNtCs4o81Y09oZk1_10ty_project5watch7watcher16DebouncerMessageE4sendB15_:bb.a
.body.thread.i:                                   ; preds = %bb.bf, %bb.be, %bb.aw, %bb.av, %.body.thread42.loopexit.split-lp.loopexit.split-lp.i, %.body.thread42.loopexit.split-lp.loopexit.i, %.body.thread42.loopexit.i
  %eh.lpad-body38.i = phi { ptr, i32 } [ %i.gj, %bb.bf ], [ %i.fv, %bb.av ], [ %i.gj, %bb.be ], [ %i.fv, %bb.aw ], [ %lpad.loopexit.i, %.body.thread42.loopexit.i ], [ %lpad.loopexit58.i, %.body.thread42.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp59.i, %.body.thread42.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4o81Y09oZk1_10ty_project5watch7watcher16DebouncerMessageEBH_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.o) #41
          to label %common.resume unwind label %bb.bl, !noalias !1329

bb.bl:                                            ; preds = %.body.thread.i
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !1329
  unreachable

_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtNtCs4o81Y09oZk1_10ty_project5watch7watcher16DebouncerMessageE4sendB1d_.exit: ; preds = %bb.bk, %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtNtCs4o81Y09oZk1_10ty_project5watch7watcher16DebouncerMessageE5writeB1d_.exit.thread.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bo

bb.bm:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  call void @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs4o81Y09oZk1_10ty_project5watch7watcher16DebouncerMessageE4sendB1d_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull align 128 %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.n, i64 undef, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bo

bb.bn:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  call void @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4zeroINtB5_7ChannelNtNtNtCs4o81Y09oZk1_10ty_project5watch7watcher16DebouncerMessageE4sendB1d_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.p, ptr noundef nonnull align 8 %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.m, i64 undef, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB4_7ChannelNtNtNtCs4o81Y09oZk1_10ty_project5watch7watcher16DebouncerMessageE4sendB1d_.exit
  %i.gv = load i64, ptr %i.p, align 8, !range !13, !noundef !4
  %.not = icmp eq i64 %i.gv, 2
  br i1 %.not, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.gw = load i64, ptr %i.l, align 8, !range !5, !alias.scope !1366, !noalias !1367, !noundef !4
  %i.gx = trunc nuw i64 %i.gw to i1
  br i1 %i.gx, label %_RNCNvMs2_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB7_6SenderNtNtNtCs4o81Y09oZk1_10ty_project5watch7watcher16DebouncerMessageE4send0B17_.exit, label %bb.bq, !prof !21

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #40
          to label %bb.br unwind label %bb.bs, !noalias !1368

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.gy = landingpad { ptr, i32 }
          cleanup
  %i.gz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4o81Y09oZk1_10ty_project5watch7watcher16DebouncerMessageEBH_(ptr noalias noundef align 8 dereferenceable(56) %i.gz)
          to label %common.resume unwind label %bb.bt, !noalias !1367

bb.bt:                                            ; preds = %bb.bs
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42, !noalias !1367
  unreachable

_RNCNvMs2_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB7_6SenderNtNtNtCs4o81Y09oZk1_10ty_project5watch7watcher16DebouncerMessageE4send0B17_.exit: ; preds = %bb.bp
  %i.hb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.hb, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bo
  store i64 -3, ptr %0, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %_RNCNvMs2_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB7_6SenderNtNtNtCs4o81Y09oZk1_10ty_project5watch7watcher16DebouncerMessageE4send0B17_.exit, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE12partial_headCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.d = icmp eq i8 %3, 0
  br i1 %i.d, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1R_6BitEndEECs4o81Y09oZk1_10ty_project.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i8 0, %3
  %i.f = and i8 %i.e, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = and i8 %3, 63
  %i.k = zext nneg i8 %i.j to i64
  %i.l = shl i64 %i.i, %i.k
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1R_6BitEndEECs4o81Y09oZk1_10ty_project.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1R_6BitEndEECs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.l, %bb.b ], [ -1, %bb.a ]
  %i.m = add i64 %2, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.n, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.66.0..sroa_idx, align 1
  store ptr %i.c, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.p, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE12partial_tailCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = add i64 %2, -1                           ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.e = icmp eq i8 %4, 64
  %i.f = and i8 %4, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %.sroa.0.0.i.i = select i1 %i.e, i64 -1, i64 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8
  store ptr %i.d, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.l, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.66.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE3newCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = shl i64 %i.a, 3
  %i.c = and i64 %i.b, 56
  %i.d = and i64 %2, 7
  %i.e = or disjoint i64 %i.c, %i.d               ; 4 uses
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = lshr i64 %2, 3                           ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = add nuw nsw i64 %i.h, %i.e
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 64, %i.e                 ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.g, %i.l
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.g, %i.l
  %i.n = trunc i64 %i.m to i8
  %i.o = and i8 %i.n, 63                          ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  %i.q = select i1 %i.p, i8 64, i8 %i.o
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit

bb.d:                                             ; preds = %bb.b
  %i.r = trunc nuw nsw i64 %i.g to i8
  %i.s = add nuw nsw i8 %i.f, %i.r
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.4.0.i = phi i8 [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %i.t = icmp eq i64 %i.j, 0
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit
  %i.u = icmp eq i64 %i.e, 0
  %i.v = icmp eq i8 %.sroa.4.0.i, 64              ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.i, %bb.h, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit
  %.sroa.0.0 = phi ptr [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE12partial_headCs4o81Y09oZk1_10ty_project, %bb.h ], [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE5emptyCs4o81Y09oZk1_10ty_project, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit ], [ %spec.select, %bb.g ], [ %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE5minorCs4o81Y09oZk1_10ty_project._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE5majorCs4o81Y09oZk1_10ty_project, %bb.i ]
  %i.w = and i64 %i.a, -8
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  %i.y = sub i64 0, %i.a
  %i.z = getelementptr i8, ptr %i.x, i64 %i.y
  tail call void %.sroa.0.0(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull %i.z, i64 noundef %i.j, i8 noundef %i.f, i8 noundef %.sroa.4.0.i)
  ret void

bb.g:                                             ; preds = %bb.e
  %spec.select = select i1 %i.v, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE8spanningCs4o81Y09oZk1_10ty_project, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE12partial_tailCs4o81Y09oZk1_10ty_project
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  br i1 %i.v, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.j, 1
  %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE5minorCs4o81Y09oZk1_10ty_project._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE5majorCs4o81Y09oZk1_10ty_project = select i1 %i.aa, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE5minorCs4o81Y09oZk1_10ty_project, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE5majorCs4o81Y09oZk1_10ty_project
  br label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE5emptyCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr nofree nonnull readnone captures(none) %1, i64 %2, i8 %3, i8 %4) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE5majorCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add i64 %2, -1
  store i64 %i.c, ptr %i.b, align 8
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.g = icmp eq i8 %3, 0
  br i1 %i.g, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1R_6BitEndEECs4o81Y09oZk1_10ty_project.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub i8 0, %3
  %i.i = and i8 %i.h, 63
  %i.j = zext nneg i8 %i.i to i64
  %i.k = shl nsw i64 -1, %i.j
  %i.l = xor i64 %i.k, -1
  %i.m = and i8 %3, 63
  %i.n = zext nneg i8 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1R_6BitEndEECs4o81Y09oZk1_10ty_project.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1R_6BitEndEECs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.p = add i64 %2, -2
  %i.q = icmp eq i8 %4, 64
  %i.r = and i8 %4, 63
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nsw i64 -1, %i.s
  %i.u = xor i64 %i.t, -1
  %.sroa.0.0.i.i3 = select i1 %i.q, i64 -1, i64 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.67.0..sroa_idx, align 1
  store ptr %i.f, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.x, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i3, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.617.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE5minorCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 26)) %0, ptr noundef nonnull %1, i64 %2, i8 noundef %3, i8 noundef %4) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sub i8 %4, %3                            ; 2 uses
  %i.b = icmp eq i8 %i.a, 64
  br i1 %i.b, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1R_6BitEndECs4o81Y09oZk1_10ty_project.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, 63
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i8 %3, 63
  %i.h = zext nneg i8 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1R_6BitEndECs4o81Y09oZk1_10ty_project.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1R_6BitEndECs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %4, ptr %.sroa.6.0..sroa_idx, align 1
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainINtB5_6DomainNtNtCs4PlFOFpHNjl_3wyz4comu3MutE8spanningCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 %4) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain12partial_headCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.d = icmp eq i8 %3, 0
  br i1 %i.d, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1T_6BitEndEECs4o81Y09oZk1_10ty_project.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i8 0, %3
  %i.f = and i8 %i.e, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = and i8 %3, 63
  %i.k = zext nneg i8 %i.j to i64
  %i.l = shl i64 %i.i, %i.k
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1T_6BitEndEECs4o81Y09oZk1_10ty_project.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1T_6BitEndEECs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.l, %bb.b ], [ -1, %bb.a ]
  %i.m = add i64 %2, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.n, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.66.0..sroa_idx, align 1
  store ptr %i.c, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.p, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain12partial_tailCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = add i64 %2, -1                           ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.e = icmp eq i8 %4, 64
  %i.f = and i8 %4, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %.sroa.0.0.i.i = select i1 %i.e, i64 -1, i64 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8
  store ptr %i.d, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.l, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.66.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain3newCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = shl i64 %i.a, 3
  %i.c = and i64 %i.b, 56
  %i.d = and i64 %2, 7
  %i.e = or disjoint i64 %i.c, %i.d               ; 4 uses
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = lshr i64 %2, 3                           ; 5 uses
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = add nuw nsw i64 %i.h, %i.e
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 64, %i.e                 ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.g, %i.l
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.g, %i.l
  %i.n = trunc i64 %i.m to i8
  %i.o = and i8 %i.n, 63                          ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  %i.q = select i1 %i.p, i8 64, i8 %i.o
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit

bb.d:                                             ; preds = %bb.b
  %i.r = trunc nuw nsw i64 %i.g to i8
  %i.s = add nuw nsw i8 %i.f, %i.r
  br label %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit

_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.4.0.i = phi i8 [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %i.t = icmp eq i64 %i.j, 0
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit
  %i.u = icmp eq i64 %i.e, 0
  %i.v = icmp eq i8 %.sroa.4.0.i, 64              ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.i, %bb.h, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit
  %.sroa.0.0 = phi ptr [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain12partial_headCs4o81Y09oZk1_10ty_project, %bb.h ], [ @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain5emptyCs4o81Y09oZk1_10ty_project, %_RNvMs5_NtCsb80QtQtK5z0_6bitvec5indexNtB5_6BitEnd4spanCs4o81Y09oZk1_10ty_project.exit ], [ %spec.select, %bb.g ], [ %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain5minorCs4o81Y09oZk1_10ty_project._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain5majorCs4o81Y09oZk1_10ty_project, %bb.i ]
  %i.w = and i64 %i.a, -8
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  %i.y = sub i64 0, %i.a
  %i.z = getelementptr i8, ptr %i.x, i64 %i.y
  tail call void %.sroa.0.0(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull %i.z, i64 noundef %i.j, i8 noundef %i.f, i8 noundef %.sroa.4.0.i)
  ret void

bb.g:                                             ; preds = %bb.e
  %spec.select = select i1 %i.v, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain8spanningCs4o81Y09oZk1_10ty_project, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain12partial_tailCs4o81Y09oZk1_10ty_project
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  br i1 %i.v, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.j, 1
  %_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain5minorCs4o81Y09oZk1_10ty_project._RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain5majorCs4o81Y09oZk1_10ty_project = select i1 %i.aa, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain5minorCs4o81Y09oZk1_10ty_project, ptr @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain5majorCs4o81Y09oZk1_10ty_project
  br label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain5emptyCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr nofree nonnull readnone captures(none) %1, i64 %2, i8 %3, i8 %4) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain5majorCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 noundef %4) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add i64 %2, -1
  store i64 %i.c, ptr %i.b, align 8
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.g = icmp eq i8 %3, 0
  br i1 %i.g, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1T_6BitEndEECs4o81Y09oZk1_10ty_project.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub i8 0, %3
  %i.i = and i8 %i.h, 63
  %i.j = zext nneg i8 %i.i to i64
  %i.k = shl nsw i64 -1, %i.j
  %i.l = xor i64 %i.k, -1
  %i.m = and i8 %3, 63
  %i.n = zext nneg i8 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1T_6BitEndEECs4o81Y09oZk1_10ty_project.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1T_6BitEndEECs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.p = add i64 %2, -2
  %i.q = icmp eq i8 %4, 64
  %i.r = and i8 %4, 63
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nsw i64 -1, %i.s
  %i.u = xor i64 %i.t, -1
  %.sroa.0.0.i.i3 = select i1 %i.q, i64 -1, i64 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.67.0..sroa_idx, align 1
  store ptr %i.f, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.x, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i3, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.617.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain5minorCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 26)) %0, ptr noundef nonnull %1, i64 %2, i8 noundef %3, i8 noundef %4) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sub i8 %4, %3                            ; 2 uses
  %i.b = icmp eq i8 %i.a, 64
  br i1 %i.b, label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1T_6BitEndECs4o81Y09oZk1_10ty_project.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, 63
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i8 %3, 63
  %i.h = zext nneg i8 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  br label %_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1T_6BitEndECs4o81Y09oZk1_10ty_project.exit

_RINvMsd_NtCsb80QtQtK5z0_6bitvec6domainINtB6_14PartialElementNtNtCs4PlFOFpHNjl_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1T_6BitEndECs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %4, ptr %.sroa.6.0..sroa_idx, align 1
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCsb80QtQtK5z0_6bitvec6domainNtB5_6Domain8spanningCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 %4) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs9_NtCs4PlFOFpHNjl_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i1, i1 } @_RNvMs_NtNtCs4o81Y09oZk1_10ty_project2db7changesNtB6_15ProjectDatabase13apply_changes(ptr noalias noundef align 8 dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 288230376151711744) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [64 x i8], align 8                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [72 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [80 x i8], align 8                ; 13 uses
  %i.t = alloca [56 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [48 x i8], align 8               ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [64 x i8], align 8               ; 4 uses
  %i.ay = alloca [64 x i8], align 8               ; 4 uses
  %i.az = alloca [64 x i8], align 8               ; 4 uses
  %i.ba = alloca [64 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 8 uses
  %i.bd = alloca [48 x i8], align 8               ; 7 uses
  %i.be = alloca [24 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %i.bg = alloca [32 x i8], align 8               ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 5 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
end_hunk_0
