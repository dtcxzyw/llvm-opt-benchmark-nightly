Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/delete_post-7c9caa62e821ab2a.delete_post.df26a34ed18d6424-cgu.0?download=true
inline.NumInlined: 270
inline.NumDeleted: 157
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueNtNtBI_7backend10SqliteTypeEECsj9PhBAIfT7c_11delete_post:bb.a
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i: ; preds = %bb.c, %bb.b
  %.val3.sink.i = phi i64 [ %.val1.i, %bb.b ], [ %.val3.i, %bb.c ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.b, align 8, !alias.scope !85, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val3.sink.i, i64 noundef 1) #16, !noalias !85
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueECsj9PhBAIfT7c_11delete_post.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !85, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueECsj9PhBAIfT7c_11delete_post.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !85, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %.val3.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueECsj9PhBAIfT7c_11delete_post.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjRvGck33osM_6diesel6sqlite10connection14bind_collector23InternalSqliteBindValueECsj9PhBAIfT7c_11delete_post.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxeEECsj9PhBAIfT7c_11delete_post.exit.sink.split.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsgczF5crJ4sT_3std2rt10lang_startuECsj9PhBAIfT7c_11delete_post(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsgczF5crJ4sT_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsj9PhBAIfT7c_11delete_post(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !86
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !87
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0Csj9PhBAIfT7c_11delete_post(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsj9PhBAIfT7c_11delete_post(ptr noundef nonnull %i.a)
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsgczF5crJ4sT_3std2rt10lang_startuE0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_once6vtableCsj9PhBAIfT7c_11delete_post(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsj9PhBAIfT7c_11delete_post(ptr noundef nonnull readonly %i.a), !noalias !90
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCsj9PhBAIfT7c_11delete_post4main() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [80 x i8], align 8                ; 17 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.12.i.i.i.i = alloca [40 x i8], align 8   ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [1 x i8], align 1                 ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 10 uses
  %i.p = alloca [64 x i8], align 8                ; 26 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 10 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 10 uses
  %i.v = alloca [48 x i8], align 8                ; 13 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [8 x i8], align 8                ; 11 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [104 x i8], align 8              ; 10 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [80 x i8], align 8               ; 12 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 10 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvNtCsgczF5crJ4sT_3std3env4args(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !208
  invoke void @_RNvXsa_NtCsgczF5crJ4sT_3std3envNtB5_4ArgsNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.ap = load i64, ptr %i.af, align 8, !range !9, !noalias !208, !noundef !4 ; 2 uses
  switch i64 %i.ap, label %bb.b [
    i64 -1, label %bb.d
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %.noexc
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.59.0.copyload.i = load ptr, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !208, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.59.0.copyload.i, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 1) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.j, %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECsj9PhBAIfT7c_11delete_post(ptr noalias noundef align 8 dereferenceable(32) %i.am) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !208
  br label %bb.j

bb.e:                                             ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !208
  invoke void @_RNvXsa_NtCsgczF5crJ4sT_3std3envNtB5_4ArgsNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.ar = load i64, ptr %i.an, align 8, !range !9, !noundef !4
  %.not10 = icmp eq i64 %i.ar, -1
  br i1 %.not10, label %bb.j, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !214, !nonnull !4, !noundef !4 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !214, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = ptrtoint ptr %.val1.i.i.i.i.i to i64
  %i.av = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = udiv exact i64 %i.aw, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.ay = icmp eq ptr %.val1.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.ba, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !215, !noalias !214 ; 2 uses
  %i.bb = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !215, !noalias !214, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !216
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %i.bd = icmp eq i64 %i.ba, %i.ax
  br i1 %i.bd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i.i, %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !214, !noundef !4 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECsj9PhBAIfT7c_11delete_post.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i
  %i.bh = load ptr, ptr %i.am, align 8, !alias.scope !214, !nonnull !4, !noundef !4
  %i.bi = mul nuw i64 %i.bf, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !214
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECsj9PhBAIfT7c_11delete_post.exit

bb.j:                                             ; preds = %bb.d, %bb.f
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19
          to label %bb.cw unwind label %bb.c

.thread117:                                       ; preds = %bb.cv, %bb.cu, %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bl, %bb.l ], [ %i.hw, %bb.cv ], [ %i.hw, %bb.cu ] ; 2 uses
  %.val18 = load i64, ptr %i.ao, align 8          ; 2 uses
  %i.bj = icmp eq i64 %.val18, 0
  br i1 %i.bj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit, label %bb.k

bb.k:                                             ; preds = %.thread117
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val19 = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %.val18, i64 noundef range(i64 1, -9223372036854775807) 1) #16
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsj9PhBAIfT7c_11delete_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECsj9PhBAIfT7c_11delete_post.exit: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.ao, ptr %i.ak, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull @7, ptr noundef nonnull %i.ak)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsj9PhBAIfT7c_11delete_post.exit unwind label %bb.l

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsj9PhBAIfT7c_11delete_post.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECsj9PhBAIfT7c_11delete_post.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.sroa.0.0.copyload = load i64, ptr %i.al, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvCs5j5LbXaSBog_29getting_started_step_3_sqlite20establish_connection(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.aj)
          to label %bb.n unwind label %bb.cu

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env4ArgsECsj9PhBAIfT7c_11delete_post.exit, %bb.cq
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.thread117

bb.m:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtCsjRvGck33osM_6diesel6result5ErrorE6expectCsj9PhBAIfT7c_11delete_post.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.cn, %.body.i, %bb.cj, %bb.o, %bb.p, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.bn, %bb.o ], [ %i.bm, %bb.m ], [ %i.bn, %bb.p ], [ %eh.lpad-body.i, %bb.cj ], [ %i.hr, %bb.cn ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel6sqlite10connection16SqliteConnectionECsj9PhBAIfT7c_11delete_post(ptr noalias noundef align 8 dereferenceable(80) %i.aj) #17
          to label %.thread117 unwind label %bb.ct

bb.n:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsj9PhBAIfT7c_11delete_post.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RNvXs2_NtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5postsNtB5_5tableNtNtCsjRvGck33osM_6diesel13query_builder7AsQuery8as_query()
          to label %bb.q unwind label %bb.o, !noalias !217

bb.o:                                             ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bo, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !217
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %.sroa.0.0.copyload, ptr %i.ah, align 8, !alias.scope !218
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store ptr %.sroa.5.0.copyload, ptr %.sroa.467.0..sroa_idx, align 8, !alias.scope !218
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.568.0..sroa_idx, align 8, !alias.scope !218
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !222
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !224
  store ptr %i.ah, ptr %i.ab, align 8, !noalias !225
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !225
  store ptr %i.ab, ptr %i.z, align 8, !noalias !225
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.bq, align 8, !noalias !225
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr @4, ptr %i.br, align 8, !noalias !225
  store i32 2, ptr %i.aa, align 8, !noalias !225
  invoke void @_RNvMs8_NtNtCsjRvGck33osM_6diesel10connection15instrumentationNtB5_18DynInstrumentation19on_connection_event(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa)
          to label %.noexc.i unwind label %bb.ci, !noalias !226

.noexc.i:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !225
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bu = load ptr, ptr %i.bp, align 8, !alias.scope !227, !noundef !4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bu, null           ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !4, !align !6
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %.sroa.3.0.i.i.i = select i1 %.not.i.i.i, ptr @5, ptr %i.bw
  %.sroa.01.0.i.i.i = select i1 %.not.i.i.i, ptr %i.bx, ptr %i.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.by = load ptr, ptr %i.bt, align 8, !alias.scope !229, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !229, !nonnull !4, !align !6, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.ca, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.cc, align 8, !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !232
  store i64 -1, ptr %i.v, align 8, !noalias !232
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 -7158342287039446613, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 7407869351296608614, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i64 1, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232
  %.sroa.85.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 0, ptr %.sroa.85.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !233
  store i8 1, ptr %i.m, align 1, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !233
  store i64 2, ptr %i.k, align 8, !noalias !233
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !233
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.cd, align 8, !noalias !233
  invoke void @_RNvXs0_NtCsjRvGck33osM_6diesel13query_builderRINtNtB5_16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB5_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB3b_9operators4LikeNtNtB1r_7columns5titleINtNtB3b_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtB5_13QueryFragmentNtNtNtB7_6sqlite7backend6SqliteE8walk_astCsj9PhBAIfT7c_11delete_post(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %.noexc.i.i.i.i.i unwind label %bb.r, !noalias !234

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !233
  %i.ce = load i64, ptr %i.l, align 8, !range !13, !noalias !233, !noundef !4 ; 2 uses
  %.not.i.i47.i.i.i.i.i = icmp eq i64 %i.ce, -1
  br i1 %.not.i.i47.i.i.i.i.i, label %bb.s, label %bb.bg

bb.r:                                             ; preds = %bb.t, %.noexc.i
  %lpad.thr_comm.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread72.i.i.i.i.i

bb.s:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !233
  %i.cf = load i8, ptr %i.m, align 1, !range !14, !noalias !233, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !233
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !232
  invoke fastcc void @_RNvMs3_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_17StatementCacheKeyNtNtNtB9_6sqlite7backend6SqliteE3sqlCsj9PhBAIfT7c_11delete_post(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %bb.r, !noalias !234

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !232
  invoke void %.val.i.i.i.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.p, ptr noundef nonnull %i.by, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.s)
          to label %.noexc4.i unwind label %bb.ci, !noalias !226, !inline_history !142

.noexc4.i:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !232
  %i.ch = load i64, ptr %i.p, align 8, !range !235, !noalias !232, !noundef !4 ; 6 uses
  switch i64 %i.ch, label %bb.ae [
    i64 -3, label %bb.ad
    i64 -2, label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.thread88.i.i.i
  ]

bb.v:                                             ; preds = %bb.t
  %i.ci = load i64, ptr %i.u, align 8, !range !13, !noalias !232, !noundef !4 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.023.0.copyload.i.i.i.i.i = load i64, ptr %i.cj, align 8, !noalias !236 ; 6 uses
  br i1 %.not22.i.i.i.i.i, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %.sroa.424.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.424.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.424.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232 ; 4 uses
  %.sroa.525.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.525.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.525.0..sroa_idx.i.i.i.i.i, align 8, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !232
  invoke void @_RNvMs_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection4stmtNtB4_9Statement7prepare(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.424.0.copyload.i.i.i.i.i, i64 noundef %.sroa.525.0.copyload.i.i.i.i.i, i64 noundef 1, i64 undef, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i unwind label %bb.x, !noalias !237, !inline_history !143

bb.x:                                             ; preds = %bb.w
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i.i.i.i.i.i = add i64 %.sroa.023.0.copyload.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i.i, label %bb.y, label %.thread72.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.424.0.copyload.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.i.i.i.i.i, i64 noundef %.sroa.023.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !237
  br label %.thread72.i.i.i.i.i

_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i: ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.cl = load i64, ptr %i.t, align 8, !range !13, !alias.scope !239, !noalias !232, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cl, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i
  %.sroa.16.0.copyload24.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !240, !noalias !236 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc51.i.i.i = trunc i64 %.sroa.16.0.copyload24.i.i.i to i8
  %.sroa.16.sroa.16.0.extract.shift59.i.i.i = lshr i64 %.sroa.16.0.copyload24.i.i.i, 8
  %.sroa.16.sroa.16.0.extract.trunc60.i.i.i = trunc nuw i64 %.sroa.16.sroa.16.0.extract.shift59.i.i.i to i56
  %.sroa.24.0..sroa_idx33.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.24.0.copyload34.i.i.i = load ptr, ptr %.sroa.24.0..sroa_idx33.i.i.i, align 8, !alias.scope !240, !noalias !236
  %.sroa.30.0..sroa_idx43.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.30.0.copyload44.i.i.i = load i64, ptr %.sroa.30.0..sroa_idx43.i.i.i, align 8, !alias.scope !240, !noalias !236
  br label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i

bb.aa:                                            ; preds = %_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_6sqlite7backend6SqliteNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1O_NtNtB9_6result5ErrorERNtNtB1S_3raw13RawConnectionE0Csj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !239, !noalias !232, !nonnull !4, !noundef !4
  br label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i

_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.16.sroa.16.sroa.0.0.i.i.i = phi i56 [ 0, %bb.aa ], [ %.sroa.16.sroa.16.0.extract.trunc60.i.i.i, %bb.z ] ; 2 uses
  %.sroa.16.sroa.0.0.i.i.i = phi i8 [ 0, %bb.aa ], [ %.sroa.16.sroa.0.0.extract.trunc51.i.i.i, %bb.z ] ; 2 uses
  %.sroa.30.0.i.i.i = phi i64 [ undef, %bb.aa ], [ %.sroa.30.0.copyload44.i.i.i, %bb.z ] ; 2 uses
  %.sroa.24.0.i.i.i = phi ptr [ %i.cn, %bb.aa ], [ %.sroa.24.0.copyload34.i.i.i, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !232
  %.0.val.off.i49.i.i.i.i.i = add i64 %.sroa.023.0.copyload.i.i.i.i.i, -1
  %switch.i50.i.i.i.i.i = icmp ult i64 %.0.val.off.i49.i.i.i.i.i, -2
  br i1 %switch.i50.i.i.i.i.i, label %bb.ab, label %_RINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB3_14StatementCacheNtNtNtB7_6sqlite7backend6SqliteNtNtNtB1l_10connection4stmt9StatementE16cached_statementRINtNtNtB7_13query_builder16delete_statement15DeleteStatementNtNtNtCs5j5LbXaSBog_29getting_started_step_3_sqlite6schema5posts5tableINtNtB2M_12where_clause11WhereClauseINtNtNtB7_10expression7grouped7GroupedINtNtB5s_9operators4LikeNtNtB3H_7columns5titleINtNtB5s_5bound5BoundNtNtB7_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEEEEEINtNtCscI6d9CVNmLh_4core6result6ResultB1M_NtNtB7_6result5ErrorERNtNtB1Q_3raw13RawConnectionECsj9PhBAIfT7c_11delete_post.exit.i.i.i

bb.ab:                                            ; preds = %_RNvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtB9_6sqlite10connection4stmt9StatementNtNtB9_6result5ErrorEINtB5_27StatementCallbackReturnTypeB1z_RNtNtB1D_3raw13RawConnectionE15map_to_no_cacheCsj9PhBAIfT7c_11delete_post.exit.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.i.i.i.i.i, i64 noundef %.sroa.023.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !237
end_hunk_0
