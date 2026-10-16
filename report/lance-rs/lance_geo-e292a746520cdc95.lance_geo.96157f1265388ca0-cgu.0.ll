Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_geo-e292a746520cdc95.lance_geo.96157f1265388ca0-cgu.0?download=true
inline.NumInlined: 1265
inline.NumDeleted: 690
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorECscSToqyP0NyK_9lance_geo:bb.a

bb.ag:                                            ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  %.val.i35.i = load i64, ptr %i.bg, align 8, !alias.scope !1590 ; 2 uses
  %i.bh = icmp eq i64 %.val.i35.i, 0
  br i1 %i.bh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i36.i = load ptr, ptr %i.bi, align 8, !alias.scope !1590, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i36.i, i64 noundef %.val.i35.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1590
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit

bb.ai:                                            ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  %.val.i38.i = load i64, ptr %i.bj, align 8, !alias.scope !1592 ; 2 uses
  %i.bk = icmp eq i64 %.val.i38.i, 0
  br i1 %i.bk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i39.i = load ptr, ptr %i.bl, align 8, !alias.scope !1592, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i39.i, i64 noundef %.val.i38.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1592
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit

bb.ak:                                            ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  %.val.i41.i = load i64, ptr %i.bm, align 8, !alias.scope !1594 ; 2 uses
  %i.bn = icmp eq i64 %.val.i41.i, 0
  br i1 %i.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i42.i = load ptr, ptr %i.bo, align 8, !alias.scope !1594, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i42.i, i64 noundef %.val.i41.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1594
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit31.i: ; preds = %bb.ad, %bb.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bp)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit

bb.am:                                            ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  %.val.i4 = load i64, ptr %i.bq, align 8, !alias.scope !1595 ; 2 uses
  %i.br = icmp eq i64 %.val.i4, 0
  br i1 %i.br, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i5 = load ptr, ptr %i.bs, align 8, !alias.scope !1595, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5, i64 noundef %.val.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1595
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit

bb.ao:                                            ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bt, align 8            ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.bu, align 8, !nonnull !5, !align !13, !noundef !5 ; 5 uses
  %i.bv = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bv(ptr noundef nonnull %.val)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !16, !invariant.load !5 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.aq
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !25, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit

bb.ar:                                            ; preds = %bb.ap
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !range !16, !invariant.load !5 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.ar
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !range !25, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) %i.cg) #24
  br label %common.resume

bb.as:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  %.val.i7 = load i64, ptr %i.ch, align 8, !alias.scope !1596 ; 2 uses
  %i.ci = icmp eq i64 %.val.i7, 0
  br i1 %i.ci, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i8 = load ptr, ptr %i.cj, align 8, !alias.scope !1596, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8, i64 noundef %.val.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1596
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit

bb.au:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  %.val.i10 = load i64, ptr %i.ck, align 8, !alias.scope !1597 ; 2 uses
  %i.cl = icmp eq i64 %.val.i10, 0
  br i1 %i.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i11 = load ptr, ptr %i.cm, align 8, !alias.scope !1597, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i11, i64 noundef %.val.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1597
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit

bb.aw:                                            ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cn)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit

bb.ax:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  %.val.i13 = load i64, ptr %i.co, align 8, !alias.scope !1598 ; 2 uses
  %i.cp = icmp eq i64 %.val.i13, 0
  br i1 %i.cp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i14 = load ptr, ptr %i.cq, align 8, !alias.scope !1598, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i14, i64 noundef %.val.i13, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1598
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit

bb.az:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  %.val.i16 = load i64, ptr %i.cr, align 8, !alias.scope !1599 ; 2 uses
  %i.cs = icmp eq i64 %.val.i16, 0
  br i1 %i.cs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i17 = load ptr, ptr %i.ct, align 8, !alias.scope !1599, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i17, i64 noundef %.val.i16, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1599
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit: ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.at, %bb.as, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, %bb.aq, %bb.an, %bb.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit31.i, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.aw, %bb.a
  ret void

bb.bb:                                            ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  %.val.i19 = load i64, ptr %i.cu, align 8, !alias.scope !1600 ; 2 uses
  %i.cv = icmp eq i64 %.val.i19, 0
  br i1 %i.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i20 = load ptr, ptr %i.cw, align 8, !alias.scope !1600, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i20, i64 noundef %.val.i19, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1600
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECscSToqyP0NyK_9lance_geo.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema8datatype12GeoArrowTypeECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1694, !nonnull !5, !noundef !5
  %1 = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !1694
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !1698, !nonnull !5, !noundef !5
  %2 = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !1698
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !1702, !nonnull !5, !noundef !5
  %3 = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !1702
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !1706, !nonnull !5, !noundef !5
  %4 = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !1706
  %i.j = icmp eq i64 %4, 1
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  %i.k = load ptr, ptr %i.b, align 8, !alias.scope !1710, !nonnull !5, !noundef !5
  %5 = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !1710
  %i.l = icmp eq i64 %5, 1
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  %i.m = load ptr, ptr %i.b, align 8, !alias.scope !1714, !nonnull !5, !noundef !5
  %6 = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !1714
  %i.n = icmp eq i64 %6, 1
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.o = load ptr, ptr %i.b, align 8, !alias.scope !1718, !nonnull !5, !noundef !5
  %7 = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !1718
  %i.p = icmp eq i64 %7, 1
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  %i.q = load ptr, ptr %i.b, align 8, !alias.scope !1722, !nonnull !5, !noundef !5
  %8 = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !1722
  %i.r = icmp eq i64 %8, 1
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !1726, !nonnull !5, !noundef !5
  %9 = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !1726
  %i.t = icmp eq i64 %9, 1
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  %i.u = load ptr, ptr %i.b, align 8, !alias.scope !1730, !nonnull !5, !noundef !5
  %10 = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !1730
  %i.v = icmp eq i64 %10, 1
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %i.w = load ptr, ptr %i.b, align 8, !alias.scope !1734, !nonnull !5, !noundef !5
  %11 = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !1734
  %i.x = icmp eq i64 %11, 1
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  %i.y = load ptr, ptr %i.b, align 8, !alias.scope !1738, !nonnull !5, !noundef !5
  %12 = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !1738
  %i.z = icmp eq i64 %12, 1
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.aa = load ptr, ptr %i.b, align 8, !alias.scope !1742, !nonnull !5, !noundef !5
  %13 = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !1742
  %i.ab = icmp eq i64 %13, 1
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %i.ac = load ptr, ptr %i.b, align 8, !alias.scope !1746, !nonnull !5, !noundef !5
  %14 = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !1746
  %i.ad = icmp eq i64 %14, 1
  br i1 %i.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  %i.ae = load ptr, ptr %i.b, align 8, !alias.scope !1750, !nonnull !5, !noundef !5
  %15 = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !noalias !1750
  %i.af = icmp eq i64 %15, 1
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs84Wnv3hhsUu_15geoarrow_schema8metadata8MetadataE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7WktTypeECscSToqyP0NyK_9lance_geo.exit.sink.split, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbECscSToqyP0NyK_9lance_geo(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.a = load i64, ptr %0, align 8, !range !12, !alias.scope !1766, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit
    i64 1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit
    i64 2, label %bb.i
    i64 3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit
    i64 4, label %bb.k
    i64 5, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1767, !nonnull !5, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1767, !noundef !5 ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader19geometry_collection18GeometryCollectionECscSToqyP0NyK_9lance_geo.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader19geometry_collection18GeometryCollectionECscSToqyP0NyK_9lance_geo.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i6 = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.sroa.0.0.i.i6
  %i.j = add i64 %.sroa.0.0.i.i6, 1               ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(56) %i.i)
          to label %bb.c unwind label %bb.e, !noalias !1767, !inline_history !1755

bb.d:                                             ; preds = %.lr.ph8
  %i.k = add i64 %.sroa.0.1.i.i7, 1               ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %.body, label %.lr.ph8

bb.e:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %.body, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i7 = phi i64 [ %i.k, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.sroa.0.1.i.i7
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(56) %i.o) #26
          to label %bb.d unwind label %bb.f, !noalias !1767, !inline_history !1755

bb.f:                                             ; preds = %.lr.ph8
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !1767, !inline_history !1755
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  %.val2.i.i1 = load i64, ptr %i.b, align 8, !range !16, !alias.scope !1768, !noundef !5 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i1, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbEECscSToqyP0NyK_9lance_geo.exit4, label %bb.g

bb.g:                                             ; preds = %.body
  %i.r = mul nuw i64 %.val2.i.i1, 56
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbEECscSToqyP0NyK_9lance_geo.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbEECscSToqyP0NyK_9lance_geo.exit4: ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader19geometry_collection18GeometryCollectionECscSToqyP0NyK_9lance_geo.exit: ; preds = %bb.c, %bb.b
  %.val.i.i2 = load i64, ptr %i.b, align 8, !range !16, !alias.scope !1768, !noundef !5 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i2, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader19geometry_collection18GeometryCollectionECscSToqyP0NyK_9lance_geo.exit
  %i.t = mul nuw i64 %.val.i.i2, 56
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit

bb.i:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !1766 ; 2 uses
  %i.v = icmp eq i64 %.val.i, 0
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.w, align 8, !alias.scope !1766, !nonnull !5, !noundef !5
  %i.x = shl nuw i64 %.val.i, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1766
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit

bb.k:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load i64, ptr %i.y, align 8, !alias.scope !1766 ; 2 uses
  %i.z = icmp eq i64 %.val2.i, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.aa, align 8, !alias.scope !1766, !nonnull !5, !noundef !5
  %i.ab = mul nuw i64 %.val2.i, 40
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1766
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit

bb.m:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !1771, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.ae, align 8, !alias.scope !1771, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  %i.af = icmp eq i64 %.val1.i.i, 0
  br i1 %i.af, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCscSToqyP0NyK_9lance_geo.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonECscSToqyP0NyK_9lance_geo.exit.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.ah, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonECscSToqyP0NyK_9lance_geo.exit.i.i.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.0.011.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !1772, !noalias !1771 ; 2 uses
  %i.ai = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonECscSToqyP0NyK_9lance_geo.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr i8, ptr %i.ag, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !1772, !noalias !1771, !nonnull !5, !noundef !5
  %i.ak = shl nuw i64 %.val8.i.i.i.i, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1773
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonECscSToqyP0NyK_9lance_geo.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonECscSToqyP0NyK_9lance_geo.exit.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i
  %i.al = icmp eq i64 %i.ah, %.val1.i.i
  br i1 %i.al, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCscSToqyP0NyK_9lance_geo.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCscSToqyP0NyK_9lance_geo.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonECscSToqyP0NyK_9lance_geo.exit.i.i.i.i, %bb.m
  %.val2.i.i = load i64, ptr %i.ac, align 8, !range !16, !alias.scope !1771, !noundef !5 ; 2 uses
  %i.am = icmp eq i64 %.val2.i.i, 0
  br i1 %i.am, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit, label %bb.o

bb.o:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCscSToqyP0NyK_9lance_geo.exit.i.i
  %i.an = mul nuw i64 %.val2.i.i, 48
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1771
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry8WkbInnerECscSToqyP0NyK_9lance_geo.exit: ; preds = %bb.o, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCscSToqyP0NyK_9lance_geo.exit.i.i, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader19geometry_collection18GeometryCollectionECscSToqyP0NyK_9lance_geo.exit, %bb.a, %bb.a, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdkROKCKhesT_3wkt5types7polygon7PolygonECscSToqyP0NyK_9lance_geo(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1778, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1778, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCscSToqyP0NyK_9lance_geo.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringECscSToqyP0NyK_9lance_geo.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringECscSToqyP0NyK_9lance_geo.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i.i, 1    ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1779, !noalias !1778 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringECscSToqyP0NyK_9lance_geo.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1779, !noalias !1778, !nonnull !5, !noundef !5
  %i.h = mul nuw i64 %.val8.i.i.i, 48
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1780
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringECscSToqyP0NyK_9lance_geo.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringECscSToqyP0NyK_9lance_geo.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.i = icmp eq i64 %i.e, %.val1.i
  br i1 %i.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCscSToqyP0NyK_9lance_geo.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCscSToqyP0NyK_9lance_geo.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringECscSToqyP0NyK_9lance_geo.exit.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !16, !alias.scope !1778, !noundef !5 ; 2 uses
  %i.j = icmp eq i64 %.val2.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEECscSToqyP0NyK_9lance_geo.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCscSToqyP0NyK_9lance_geo.exit.i
  %i.k = shl nuw i64 %.val2.i, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1778
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEECscSToqyP0NyK_9lance_geo.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEECscSToqyP0NyK_9lance_geo.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCscSToqyP0NyK_9lance_geo.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder4rect11RectBuilderECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1810, !nonnull !5, !noundef !5
  %1 = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !1810
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7BoxTypeECscSToqyP0NyK_9lance_geo.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs84Wnv3hhsUu_15geoarrow_schema8metadata8MetadataE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7BoxTypeECscSToqyP0NyK_9lance_geo.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(104) %0) #26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(104) %i.e) #26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !15, !alias.scope !1811, !noundef !5
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECscSToqyP0NyK_9lance_geo.exit, label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7BoxTypeECscSToqyP0NyK_9lance_geo.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  %.val8.i.i.i = load i64, ptr %0, align 8, !alias.scope !1815 ; 2 uses
  %i.i = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7BoxTypeECscSToqyP0NyK_9lance_geo.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1815, !nonnull !5, !noundef !5
  %i.k = shl nuw i64 %.val8.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1815
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.i.i.i: ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema4type7BoxTypeECscSToqyP0NyK_9lance_geo.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8.1.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1815 ; 2 uses
  %i.m = icmp eq i64 %.val8.1.i.i.i, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.1.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9.1.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1815, !nonnull !5, !noundef !5
  %i.o = shl nuw i64 %.val8.1.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.1.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1815
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.1.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.1.i.i.i: ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val8.2.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !1815 ; 2 uses
  %i.q = icmp eq i64 %.val8.2.i.i.i, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.2.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.1.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val9.2.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1815, !nonnull !5, !noundef !5
  %i.s = shl nuw i64 %.val8.2.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.2.i.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1815
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.2.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.2.i.i.i: ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.1.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val8.3.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !1815 ; 2 uses
  %i.u = icmp eq i64 %.val8.3.i.i.i, 0
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.2.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val9.3.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !1815, !nonnull !5, !noundef !5
  %i.w = shl nuw i64 %.val8.3.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.3.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1815
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo.exit: ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.2.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  %.val8.i.i.i4 = load i64, ptr %i.x, align 8, !alias.scope !1819 ; 2 uses
  %i.y = icmp eq i64 %.val8.i.i.i4, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.i.i.i6, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val9.i.i.i5 = load ptr, ptr %i.z, align 8, !alias.scope !1819, !nonnull !5, !noundef !5
  %i.aa = shl nuw i64 %.val8.i.i.i4, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i5, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1819
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.i.i.i6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.i.i.i6: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val8.1.i.i.i7 = load i64, ptr %i.ab, align 8, !alias.scope !1819 ; 2 uses
  %i.ac = icmp eq i64 %.val8.1.i.i.i7, 0
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.1.i.i.i9, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.i.i.i6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val9.1.i.i.i8 = load ptr, ptr %i.ad, align 8, !alias.scope !1819, !nonnull !5, !noundef !5
  %i.ae = shl nuw i64 %.val8.1.i.i.i7, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.1.i.i.i8, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1819
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.1.i.i.i9

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.1.i.i.i9: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.i.i.i6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val8.2.i.i.i10 = load i64, ptr %i.af, align 8, !alias.scope !1819 ; 2 uses
  %i.ag = icmp eq i64 %.val8.2.i.i.i10, 0
  br i1 %i.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.2.i.i.i12, label %bb.j

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.1.i.i.i9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val9.2.i.i.i11 = load ptr, ptr %i.ah, align 8, !alias.scope !1819, !nonnull !5, !noundef !5
  %i.ai = shl nuw i64 %.val8.2.i.i.i10, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.2.i.i.i11, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1819
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.2.i.i.i12

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.2.i.i.i12: ; preds = %bb.j, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.1.i.i.i9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val8.3.i.i.i13 = load i64, ptr %i.aj, align 8, !alias.scope !1819 ; 2 uses
  %i.ak = icmp eq i64 %.val8.3.i.i.i13, 0
  br i1 %i.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo.exit15, label %bb.k

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.2.i.i.i12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val9.3.i.i.i14 = load ptr, ptr %i.al, align 8, !alias.scope !1819, !nonnull !5, !noundef !5
  %i.am = shl nuw i64 %.val8.3.i.i.i13, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.3.i.i.i14, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1819
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo.exit15

bb.l:                                             ; preds = %bb.c
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECscSToqyP0NyK_9lance_geo.exit unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo.exit15: ; preds = %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecdEECscSToqyP0NyK_9lance_geo.exit.2.i.i.i12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !15, !alias.scope !1820, !noundef !5
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECscSToqyP0NyK_9lance_geo.exit17, label %bb.m

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo.exit15
  tail call void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.an)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECscSToqyP0NyK_9lance_geo.exit17

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECscSToqyP0NyK_9lance_geo.exit17: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array7builder5coord9separated27SeparatedCoordBufferBuilderECscSToqyP0NyK_9lance_geo.exit15, %bb.m
  ret void

bb.n:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECscSToqyP0NyK_9lance_geo.exit: ; preds = %bb.c, %bb.l
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECscSToqyP0NyK_9lance_geo(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64                ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECscSToqyP0NyK_9lance_geo.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECscSToqyP0NyK_9lance_geo.exit
    i64 1, label %bb.c
  ], !prof !1821

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECscSToqyP0NyK_9lance_geo.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !16, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECscSToqyP0NyK_9lance_geo.exit.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

end_hunk_0
