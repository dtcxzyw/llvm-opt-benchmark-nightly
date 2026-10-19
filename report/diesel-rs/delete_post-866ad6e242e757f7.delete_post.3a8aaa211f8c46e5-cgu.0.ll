Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/delete_post-866ad6e242e757f7.delete_post.3a8aaa211f8c46e5-cgu.0?download=true
inline.NumInlined: 342
inline.NumDeleted: 200
begin_hunk_0_@_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs51Cbq6hJumL_11delete_post:bb.a
  %i.e = shl nuw i64 %i.d, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !95
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !95
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs51Cbq6hJumL_11delete_post(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 41) %4), !noalias !95
  %i.h = load i64, ptr %i.a, align 8, !range !11, !noalias !95, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !96, !noalias !95, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !95
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !95, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !95
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !95
  %i.o = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !95
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Cs51Cbq6hJumL_11delete_post(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs51Cbq6hJumL_11delete_post(ptr noundef nonnull %i.a)
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_once6vtableCs51Cbq6hJumL_11delete_post(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs51Cbq6hJumL_11delete_post(ptr noundef nonnull readonly %i.a), !noalias !99
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs51Cbq6hJumL_11delete_post4main() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [32 x i8], align 8      ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.618.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.h = alloca [80 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [1 x i8], align 1                 ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [64 x i8], align 8                ; 26 uses
  %i.q = alloca [40 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [48 x i8], align 8                ; 13 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [48 x i8], align 8                ; 13 uses
  %.sroa.28.i.i.i = alloca [16 x i8], align 8     ; 12 uses
  %.sroa.5.sroa.8.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 20 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 6 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.14.i.i = alloca [16 x i8], align 8       ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 12 uses
  %i.ag = alloca [8 x i8], align 8                ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.644 = alloca [16 x i8], align 8          ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [56 x i8], align 8               ; 13 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 10 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @_RNvNtCsgczF5crJ4sT_3std3env4args(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !302
  invoke void @_RNvXsa_NtCsgczF5crJ4sT_3std3envNtB5_4ArgsNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.ar = load i64, ptr %i.ah, align 8, !range !5, !noalias !302, !noundef !4 ; 2 uses
  switch i64 %i.ar, label %bb.b [
    i64 -1, label %bb.d
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %.noexc
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.59.0.copyload.i = load ptr, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !302, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.59.0.copyload.i, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.j, %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECs51Cbq6hJumL_11delete_post(ptr noalias noundef align 8 dereferenceable(32) %i.ao) #22
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs51Cbq6hJumL_11delete_post.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !302
  br label %bb.j

bb.e:                                             ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !302
  invoke void @_RNvXsa_NtCsgczF5crJ4sT_3std3envNtB5_4ArgsNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.at = load i64, ptr %i.ap, align 8, !range !5, !noundef !4
  %.not10 = icmp eq i64 %i.at, -1
  br i1 %.not10, label %bb.j, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !308, !nonnull !4, !noundef !4 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !308, !nonnull !4, !noundef !4 ; 2 uses
  %i.aw = ptrtoint ptr %.val1.i.i.i.i.i to i64
  %i.ax = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.ay = sub nuw i64 %i.aw, %i.ax
  %i.az = udiv exact i64 %i.ay, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.ba = icmp eq ptr %.val1.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.ba, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.bc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.bc = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !309, !noalias !308 ; 2 uses
  %i.bd = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.bd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !309, !noalias !308, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !310
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %i.bf = icmp eq i64 %i.bc, %i.az
  br i1 %i.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i.i, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !308, !noundef !4 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECs51Cbq6hJumL_11delete_post.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i
  %i.bj = load ptr, ptr %i.ao, align 8, !alias.scope !308, !nonnull !4, !noundef !4
  %i.bk = mul nuw i64 %i.bh, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bj, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !308
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECs51Cbq6hJumL_11delete_post.exit

bb.j:                                             ; preds = %bb.d, %bb.f
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #24
          to label %bb.dv unwind label %bb.c

.thread67:                                        ; preds = %bb.du, %bb.dt, %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bn, %bb.l ], [ %i.kc, %bb.du ], [ %i.kc, %bb.dt ] ; 2 uses
  %.val18 = load i64, ptr %i.aq, align 8          ; 2 uses
  %i.bl = icmp eq i64 %.val18, 0
  br i1 %i.bl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs51Cbq6hJumL_11delete_post.exit, label %bb.k

bb.k:                                             ; preds = %.thread67
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val19 = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %.val18, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs51Cbq6hJumL_11delete_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECs51Cbq6hJumL_11delete_post.exit: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.aq, ptr %i.am, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noundef nonnull @8, ptr noundef nonnull %i.am)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs51Cbq6hJumL_11delete_post.exit unwind label %bb.l

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs51Cbq6hJumL_11delete_post.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECs51Cbq6hJumL_11delete_post.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.sroa.0.0.copyload = load i64, ptr %i.an, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RNvCsb101nepifEY_28getting_started_step_3_mysql20establish_connection(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.al)
          to label %bb.n unwind label %bb.dt

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECs51Cbq6hJumL_11delete_post.exit, %bb.dp
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.thread67

bb.m:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtCsjRvGck33osM_6diesel6result5ErrorE6expectCs51Cbq6hJumL_11delete_post.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.dm, %.body.i, %bb.di, %bb.o, %bb.p, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.bp, %bb.o ], [ %i.bo, %bb.m ], [ %i.bp, %bb.p ], [ %eh.lpad-body.i, %bb.di ], [ %i.jx, %bb.dm ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel5mysql10connection15MysqlConnectionECs51Cbq6hJumL_11delete_post(ptr noalias noundef align 8 dereferenceable(56) %i.al) #22
          to label %.thread67 unwind label %bb.ds

bb.n:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs51Cbq6hJumL_11delete_post.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.644)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvXs2_NtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5postsNtB5_5tableNtNtCsjRvGck33osM_6diesel13query_builder7AsQuery8as_query()
          to label %bb.q unwind label %bb.o, !noalias !311

bb.o:                                             ; preds = %bb.n
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bq, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !311
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %.sroa.0.0.copyload, ptr %i.aj, align 8, !alias.scope !312
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store ptr %.sroa.5.0.copyload, ptr %.sroa.463.0..sroa_idx, align 8, !alias.scope !312
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.564.0..sroa_idx, align 8, !alias.scope !312
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !316
  store ptr %i.aj, ptr %i.ag, align 8, !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i)
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 3 uses
  %i.bt = load ptr, ptr %i.al, align 8, !alias.scope !318, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null             ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !318, !nonnull !4, !align !7
  %.sroa.3.0.i.i = select i1 %.not.i.i, ptr @5, ptr %i.bv
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.br, ptr %i.bt ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.3.0.i.i, i64 64
  %.sroa.3.0.val.i.i = load ptr, ptr %i.bw, align 8, !noalias !319 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !322
  store ptr %i.ag, ptr %i.ab, align 8, !noalias !322
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ab, ptr %i.bx, align 8, !noalias !322
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr @4, ptr %i.by, align 8, !noalias !322
  store i32 2, ptr %i.ac, align 8, !noalias !322
  invoke void %.sroa.3.0.val.i.i(ptr noundef nonnull %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ac)
          to label %.noexc.i unwind label %bb.dh, !noalias !323, !inline_history !133

.noexc.i:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.bz = load ptr, ptr %i.br, align 8, !alias.scope !326, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !326, !nonnull !4, !align !7, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.cd, align 8, !noalias !327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !329
  store i64 -1, ptr %i.v, align 8, !noalias !329
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 -8670745320393709835, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !329
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 -1121536192084042197, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !329
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !329
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i64 1, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !329
  %.sroa.85.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 0, ptr %.sroa.85.0..sroa_idx.i.i.i.i.i, align 8, !noalias !329
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !332
  store i8 1, ptr %i.m, align 1, !noalias !332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !332
  store i64 2, ptr %i.k, align 8, !noalias !332
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !332
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.ce, align 8, !noalias !332
  %i.cf = load ptr, ptr %i.ag, align 8, !alias.scope !333, !noalias !334, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  invoke fastcc void @_RNvXs5_NtNtCsjRvGck33osM_6diesel13query_builder16delete_statementINtB5_15DeleteStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtNtB7_12where_clause11WhereClauseINtNtNtB9_10expression7grouped7GroupedINtNtB39_9operators4LikeNtNtB1q_7columns5titleINtNtB39_5bound5BoundNtNtB9_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtB7_13QueryFragmentNtNtNtB9_5mysql7backend5MysqlE8walk_astCs51Cbq6hJumL_11delete_post(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.k)
          to label %.noexc.i.i.i.i.i unwind label %bb.r, !noalias !335

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !332
  %i.cg = load i64, ptr %i.l, align 8, !range !13, !noalias !332, !noundef !4 ; 2 uses
  %.not.i.i47.i.i.i.i.i = icmp eq i64 %i.cg, -1
  br i1 %.not.i.i47.i.i.i.i.i, label %bb.s, label %bb.bc

bb.r:                                             ; preds = %bb.t, %.noexc.i
  %lpad.thr_comm.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread72.i.i.i.i.i

bb.s:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !332
  %i.ch = load i8, ptr %i.m, align 1, !range !14, !noalias !332, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !332
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !329
  invoke fastcc void @_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_5mysql7backend5MysqlE3sqlCs51Cbq6hJumL_11delete_post(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ag)
          to label %bb.v unwind label %bb.r, !noalias !336

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !329
  invoke void %.val.i.i.i.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.p, ptr noundef nonnull %i.bz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.s)
          to label %.noexc1.i unwind label %bb.dh, !noalias !323, !inline_history !133

.noexc1.i:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !329
  %i.cj = load i64, ptr %i.p, align 8, !range !337, !noalias !329, !noundef !4 ; 6 uses
  switch i64 %i.cj, label %bb.ac [
    i64 -3, label %bb.ab
    i64 -2, label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_5mysql7backend5MysqlNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtNtB2K_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5p_9operators4LikeNtNtB3F_7columns5titleINtNtB5p_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1K_NtNtB7_6result5ErrorERNtNtB1O_3raw13RawConnectionECs51Cbq6hJumL_11delete_post.exit.thread102.i.i.i
  ]

bb.v:                                             ; preds = %bb.t
  %i.ck = load i64, ptr %i.u, align 8, !range !13, !noalias !329, !noundef !4 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.ck, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.424.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %.not22.i.i.i.i.i, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %.sroa.023.0.copyload.i.i.i.i.i = load i64, ptr %i.cl, align 8, !noalias !329 ; 4 uses
  %.sroa.424.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.424.0..sroa_idx.i.i.i.i.i, align 8, !noalias !329 ; 4 uses
  %.sroa.525.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.525.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.525.0..sroa_idx.i.i.i.i.i, align 8, !noalias !329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !329
  invoke void @_RNvMNtNtNtCsjRvGck33osM_6diesel5mysql10connection3rawNtB2_13RawConnection7prepare(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.424.0.copyload.i.i.i.i.i, i64 noundef %.sroa.525.0.copyload.i.i.i.i.i, i64 noundef 1, i64 undef, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_5mysql7backend5MysqlNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB9_6result5ErrorERNtNtB1Q_3raw13RawConnectionE0Cs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i unwind label %bb.x, !noalias !338, !inline_history !155

bb.x:                                             ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i.i.i.i.i.i = add i64 %.sroa.023.0.copyload.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i.i, label %bb.y, label %.thread72.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.424.0.copyload.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.i.i.i.i.i, i64 noundef %.sroa.023.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !338
  br label %.thread72.i.i.i.i.i

_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_5mysql7backend5MysqlNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB9_6result5ErrorERNtNtB1Q_3raw13RawConnectionE0Cs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i: ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.cn = load i64, ptr %i.t, align 8, !range !11, !alias.scope !340, !noalias !329, !noundef !4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.13.8.copyload33.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !341, !noalias !342 ; 2 uses
  %.sroa.24.8..sroa_idx42.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.24.8.copyload43.i.i.i = load ptr, ptr %.sroa.24.8..sroa_idx42.i.i.i, align 8, !alias.scope !341, !noalias !342 ; 2 uses
  %.sroa.28.8..sroa_idx54.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.8..sroa_idx54.i.i.i, i64 16, i1 false), !alias.scope !341, !noalias !342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !329
  %.0.val.off.i49.i.i.i.i.i = add i64 %.sroa.023.0.copyload.i.i.i.i.i, -1
  %switch.i50.i.i.i.i.i = icmp ult i64 %.0.val.off.i49.i.i.i.i.i, -2
  br i1 %switch.i50.i.i.i.i.i, label %bb.z, label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_5mysql7backend5MysqlNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtNtB2K_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5p_9operators4LikeNtNtB3F_7columns5titleINtNtB5p_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1K_NtNtB7_6result5ErrorERNtNtB1O_3raw13RawConnectionECs51Cbq6hJumL_11delete_post.exit.i.i.i

bb.z:                                             ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_5mysql7backend5MysqlNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB9_6result5ErrorERNtNtB1Q_3raw13RawConnectionE0Cs51Cbq6hJumL_11delete_post.exit.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.i.i.i.i.i, i64 noundef %.sroa.023.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !338
  br label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_5mysql7backend5MysqlNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtNtB2K_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5p_9operators4LikeNtNtB3F_7columns5titleINtNtB5p_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1K_NtNtB7_6result5ErrorERNtNtB1O_3raw13RawConnectionECs51Cbq6hJumL_11delete_post.exit.i.i.i

bb.aa:                                            ; preds = %bb.v
  %.sroa.24.8.copyload41.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.424.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !329
  br label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_5mysql7backend5MysqlNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCsb101nepifEY_28getting_started_step_3_mysql6schema5posts5tableINtNtB2K_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5p_9operators4LikeNtNtB3F_7columns5titleINtNtB5p_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1K_NtNtB7_6result5ErrorERNtNtB1O_3raw13RawConnectionECs51Cbq6hJumL_11delete_post.exit.thread.i.i.i

end_hunk_0
