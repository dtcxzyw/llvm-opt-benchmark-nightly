Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/notify-d0b9d03786b7a6e1.notify.c3abe497da8c881c-cgu.06?download=true
inline.NumInlined: 188
inline.NumDeleted: 103
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgNynMj4ykPw_6notify:bb.a
  ], !prof !12

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsgNynMj4ykPw_6notify.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #17
  resume { ptr, i32 } %i.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsgNynMj4ykPw_6notify.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsgNynMj4ykPw_6notify.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsgNynMj4ykPw_6notify.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsgNynMj4ykPw_6notify4poll4data8MetaPathEBH_(ptr noalias noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgNynMj4ykPw_6notify.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsgNynMj4ykPw_6notify.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsgNynMj4ykPw_6notify.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgNynMj4ykPw_6notify.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsgNynMj4ykPw_6notify4poll4dataNtB2_11DataBuilder15build_path_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [512 x i8], align 4               ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !104
  call void @_RNvMsm_NtCs2AWtUsOyxgP_3std2fsNtB5_8Metadata8modified(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %2), !noalias !105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !range !107, !alias.scope !106, !noalias !104, !noundef !4 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtNtB11_2io5error5ErrorEECsgNynMj4ykPw_6notify.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.f, align 8, !alias.scope !106, !noalias !104, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !108
  store i64 %i.j, ptr %i.e, align 8, !noalias !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.h, ptr %i.k, align 8, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !108
  call void @_RNvMs5_NtCs2AWtUsOyxgP_3std4timeNtB5_10SystemTime14duration_since(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef 0, i32 noundef 0), !noalias !109
  %i.l = load i64, ptr %i.d, align 8, !range !8, !noalias !108, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !108 ; 2 uses
  %i.p = sub i64 0, %i.o
  %.sroa.0.0.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !108
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtNtBM_2io5error5ErrorE6map_orxNvNtNtCsgNynMj4ykPw_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtNtB11_2io5error5ErrorEECsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.a
  %.val4.i.i = load ptr, ptr %i.f, align 8, !alias.scope !106, !noalias !104, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgNynMj4ykPw_6notify(ptr nonnull %.val4.i.i), !noalias !109
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtNtBM_2io5error5ErrorE6map_orxNvNtNtCsgNynMj4ykPw_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtNtBM_2io5error5ErrorE6map_orxNvNtNtCsgNynMj4ykPw_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtNtB11_2io5error5ErrorEECsgNynMj4ykPw_6notify.exit.i.i, %bb.b
  %.sroa.0.09.i.i = phi i64 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtNtB11_2io5error5ErrorEECsgNynMj4ykPw_6notify.exit.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !104
  %i.q = load i64, ptr %1, align 8, !range !8, !alias.scope !102, !noalias !110, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val.i = load i32, ptr %i.s, align 8, !alias.scope !103, !noalias !105
  %i.t = and i32 %.val.i, 61440
  %i.u = icmp eq i32 %i.t, 32768
  %.not11.i = select i1 %i.r, i1 %i.u, i1 false
  br i1 %.not11.i, label %bb.c, label %_RNvMs1_NtNtCsgNynMj4ykPw_6notify4poll4dataNtB5_8PathData3new.exit

bb.c:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtNtBM_2io5error5ErrorE6map_orxNvNtNtCsgNynMj4ykPw_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 184
  %.val4.i = load ptr, ptr %i.w, align 8, !alias.scope !103, !noalias !105, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 192
  %.val5.i = load i64, ptr %i.x, align 8, !alias.scope !103, !noalias !105, !noundef !4
  %.val6.i = load i64, ptr %i.v, align 8, !alias.scope !102, !noalias !110, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7.i = load i64, ptr %i.y, align 8, !alias.scope !102, !noalias !110, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !111
  call void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File4openRNtNtB8_4path4PathECsgNynMj4ykPw_6notify(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4.i, i64 noundef %.val5.i), !noalias !105
  %i.z = load i32, ptr %i.b, align 8, !range !112, !noalias !111, !noundef !4
  %i.aa = trunc nuw i32 %i.z to i1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !111, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgNynMj4ykPw_6notify.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ad = xor i64 %.val7.i, 8387220255154660723
  %i.ae = xor i64 %.val6.i, 7816392313619706465
  %i.af = xor i64 %.val7.i, 7237128888997146477
  %i.ag = xor i64 %.val6.i, 8317987319222330741
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !range !113, !noalias !111, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !111
  store i32 %i.ai, ptr %i.c, align 4, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.a, i8 0, i64 512, i1 false), !noalias !111
  br label %.outer.i.i.i.outer

.outer.i.i.i.outer:                               ; preds = %.outer.i.i.i.outer.backedge, %bb.e
  %.sroa.38.0.ph.i.i.i.ph = phi i64 [ 0, %bb.e ], [ %i.br, %.outer.i.i.i.outer.backedge ]
  %.sroa.33.0.ph.i.i.i.ph = phi i64 [ 0, %bb.e ], [ %.sroa.33.0.ph.i.i.i.ph.be, %.outer.i.i.i.outer.backedge ]
  %.sroa.29.0.ph.i.i.i.ph = phi i64 [ 0, %bb.e ], [ %i.as, %.outer.i.i.i.outer.backedge ]
  %.sroa.21.0.ph.i.i.i.ph = phi i64 [ %i.ad, %bb.e ], [ %.sroa.21.2.i.i.i, %.outer.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.15.0.ph.i.i.i.ph = phi i64 [ %i.af, %bb.e ], [ %.sroa.15.2.i.i.i, %.outer.i.i.i.outer.backedge ] ; 7 uses
  %.sroa.9.0.ph.i.i.i.ph = phi i64 [ %i.ae, %bb.e ], [ %.sroa.9.2.i.i.i, %.outer.i.i.i.outer.backedge ] ; 3 uses
  %.sroa.0.015.ph.i.i.i.ph = phi i64 [ %i.ag, %bb.e ], [ %.sroa.0.2.i.i.i, %.outer.i.i.i.outer.backedge ] ; 3 uses
  br label %.outer.i.i.i

.outer.i.i.i:                                     ; preds = %.outer.i.i.i.outer, %bb.r
  %.sroa.38.0.ph.i.i.i = phi i64 [ %i.ck, %bb.r ], [ %.sroa.38.0.ph.i.i.i.ph, %.outer.i.i.i.outer ] ; 4 uses
  %.sroa.33.0.ph.i.i.i = phi i64 [ %i.bo, %bb.r ], [ %.sroa.33.0.ph.i.i.i.ph, %.outer.i.i.i.outer ] ; 2 uses
  %.sroa.29.0.ph.i.i.i = phi i64 [ %i.as, %bb.r ], [ %.sroa.29.0.ph.i.i.i.ph, %.outer.i.i.i.outer ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %.outer.i.i.i
  %i.aj = invoke { i64, ptr } @_RNvXsa_NtCs2AWtUsOyxgP_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias noundef nonnull %i.a, i64 noundef 512)
          to label %bb.g unwind label %.loopexit.i.i.i, !noalias !105 ; 2 uses

.loopexit.i.i.i:                                  ; preds = %bb.f
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i.i.i:                         ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.g:                                             ; preds = %bb.f
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = extractvalue { i64, ptr } %i.aj, 1      ; 7 uses
  %i.am = trunc nuw i64 %i.ak to i1
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr %i.al), !noalias !105
  %i.ao = icmp eq i8 %i.an, 35
  br i1 %i.ao, label %bb.y, label %bb.z

bb.i:                                             ; preds = %bb.g
  %i.ap = ptrtoint ptr %i.al to i64               ; 7 uses
  %i.aq = icmp eq ptr %i.al, null
  br i1 %i.aq, label %_RNvMs1_NtNtCsgNynMj4ykPw_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp ult ptr %i.al, inttoptr (i64 513 to ptr)
  br i1 %i.ar, label %bb.l, label %bb.k, !prof !114

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ap, i64 noundef 512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
          to label %bb.x unwind label %.loopexit.split-lp.i.i.i, !noalias !105

bb.l:                                             ; preds = %bb.j
  %i.as = add i64 %.sroa.29.0.ph.i.i.i, %i.ap     ; 2 uses
  %i.at = icmp eq i64 %.sroa.38.0.ph.i.i.i, 0
  br i1 %i.at, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = sub i64 8, %.sroa.38.0.ph.i.i.i         ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef range(i64 0, 513) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.au, i64 range(i64 1, 513) %i.ap) ; 3 uses
  %i.av = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i.i, 3 ; 3 uses
  %.sroa.014.0.copyload.i.i.i.i.i = load i32, ptr %i.a, align 4, !noalias !111
  %i.aw = zext i32 %.sroa.014.0.copyload.i.i.i.i.i to i64
  %.sroa.03.0.i.i.i.i.i = select i1 %i.av, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i10.i.i.i.i = select i1 %i.av, i64 %i.aw, i64 0 ; 2 uses
  %i.ax = or disjoint i64 %.sroa.03.0.i.i.i.i.i, 1
  %i.ay = icmp samesign ult i64 %i.ax, %.sroa.0.0.i.i.i.i.i
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.av, i64 4, i64 0
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !115, !noalias !116
  %i.az = zext i16 %.sroa.015.0.copyload.i.i.i.i.i to i64
  %i.ba = shl nuw nsw i64 %.sroa.03.0.i.i.i.i.i, 3
  %i.bb = shl nuw nsw i64 %i.az, %i.ba
  %i.bc = or i64 %i.bb, %.sroa.0.0.i10.i.i.i.i
  %i.bd = or disjoint i64 %.sroa.03.0.i.i.i.i.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i.i.i.i.i = phi i64 [ %i.bd, %bb.n ], [ %.sroa.03.0.i.i.i.i.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.bc, %bb.n ], [ %.sroa.0.0.i10.i.i.i.i, %bb.m ] ; 2 uses
  %i.be = icmp samesign ult i64 %.sroa.03.1.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i
  br i1 %i.be, label %bb.p, label %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.1.i.i.i.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !115, !noalias !116, !noundef !4
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %.sroa.03.1.i.i.i.i.i, 3
  %i.bj = shl nuw nsw i64 %i.bh, %i.bi
  %i.bk = or i64 %i.bj, %.sroa.0.1.i.i.i.i.i
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i.i.i.i.i = phi i64 [ %i.bk, %bb.p ], [ %.sroa.0.1.i.i.i.i.i, %bb.o ]
  %i.bl = shl i64 %.sroa.38.0.ph.i.i.i, 3
  %i.bm = and i64 %i.bl, 56
  %i.bn = shl i64 %.sroa.0.2.i.i.i.i.i, %i.bm
  %i.bo = or i64 %i.bn, %.sroa.33.0.ph.i.i.i      ; 3 uses
  %i.bp = icmp ugt i64 %i.au, %i.ap
  br i1 %i.bp, label %bb.r, label %bb.q

.loopexit:                                        ; preds = %bb.l, %bb.q
  %.sroa.21.1.i.i.i = phi i64 [ %i.ch, %bb.q ], [ %.sroa.21.0.ph.i.i.i.ph, %bb.l ] ; 2 uses
  %.sroa.15.1.i.i.i = phi i64 [ %i.cf, %bb.q ], [ %.sroa.15.0.ph.i.i.i.ph, %bb.l ] ; 2 uses
  %.sroa.9.1.i.i.i = phi i64 [ %i.ci, %bb.q ], [ %.sroa.9.0.ph.i.i.i.ph, %bb.l ] ; 2 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.cj, %bb.q ], [ %.sroa.0.015.ph.i.i.i.ph, %bb.l ] ; 2 uses
  %.sroa.0.0.i.i.i8.i = phi i64 [ %i.au, %bb.q ], [ 0, %bb.l ] ; 4 uses
  %i.bq = sub nsw i64 %i.ap, %.sroa.0.0.i.i.i8.i  ; 2 uses
  %i.br = and i64 %i.bq, 7                        ; 4 uses
  %i.bs = and i64 %i.bq, -8                       ; 2 uses
  %i.bt = icmp ult i64 %.sroa.0.0.i.i.i8.i, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.q:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i.i.i.i
  %i.bu = xor i64 %i.bo, %.sroa.21.0.ph.i.i.i.ph  ; 3 uses
  %i.bv = add i64 %.sroa.0.015.ph.i.i.i.ph, %.sroa.15.0.ph.i.i.i.ph ; 3 uses
  %i.bw = add i64 %i.bu, %.sroa.9.0.ph.i.i.i.ph   ; 2 uses
  %i.bx = call noundef i64 @llvm.fshl.i64(i64 %.sroa.15.0.ph.i.i.i.ph, i64 %.sroa.15.0.ph.i.i.i.ph, i64 13)
  %i.by = xor i64 %i.bv, %i.bx                    ; 3 uses
  %i.bz = call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 16)
  %i.ca = xor i64 %i.bw, %i.bz                    ; 3 uses
  %i.cb = call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 32)
  %i.cc = add i64 %i.bw, %i.by                    ; 3 uses
  %i.cd = add i64 %i.ca, %i.cb                    ; 2 uses
  %i.ce = call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 17)
  %i.cf = xor i64 %i.cc, %i.ce
  %i.cg = call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 21)
  %i.ch = xor i64 %i.cg, %i.cd
  %i.ci = call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 32)
  %i.cj = xor i64 %i.cd, %i.bo
  br label %.loopexit

bb.r:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4hash3sip9u8to64_le.exit.i.i.i.i
  %i.ck = add i64 %.sroa.38.0.ph.i.i.i, %i.ap
  br label %.outer.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.loopexit
  %.sroa.21.2.i.i.i = phi i64 [ %.sroa.21.1.i.i.i, %.loopexit ], [ %i.dy, %.lr.ph.i.i.i.i ]
  %.sroa.15.2.i.i.i = phi i64 [ %.sroa.15.1.i.i.i, %.loopexit ], [ %i.dw, %.lr.ph.i.i.i.i ]
  %.sroa.9.2.i.i.i = phi i64 [ %.sroa.9.1.i.i.i, %.loopexit ], [ %i.dz, %.lr.ph.i.i.i.i ]
  %.sroa.0.2.i.i.i = phi i64 [ %.sroa.0.1.i.i.i, %.loopexit ], [ %i.ea, %.lr.ph.i.i.i.i ]
  %.sroa.0.1.lcssa.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i8.i, %.loopexit ], [ %i.eb, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.cl = icmp samesign ugt i64 %i.br, 3
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.lcssa.i.i.i.i
  %.sroa.014.0.copyload.i17.i.i.i.i = load i32, ptr %i.cm, align 1, !alias.scope !117, !noalias !116
  %i.cn = zext i32 %.sroa.014.0.copyload.i17.i.i.i.i to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i
  %.sroa.03.0.i11.i.i.i.i = phi i64 [ 4, %bb.s ], [ 0, %._crit_edge.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i12.i.i.i.i = phi i64 [ %i.cn, %bb.s ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.co = or disjoint i64 %.sroa.03.0.i11.i.i.i.i, 1
  %i.cp = icmp samesign ult i64 %i.co, %i.br
  br i1 %i.cp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr i8, ptr %i.a, i64 %.sroa.0.1.lcssa.i.i.i.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 %.sroa.03.0.i11.i.i.i.i
  %.sroa.015.0.copyload.i16.i.i.i.i = load i16, ptr %i.cr, align 1, !alias.scope !117, !noalias !116
  %i.cs = zext i16 %.sroa.015.0.copyload.i16.i.i.i.i to i64
  %i.ct = shl nuw nsw i64 %.sroa.03.0.i11.i.i.i.i, 3
  %i.cu = shl nuw nsw i64 %i.cs, %i.ct
  %i.cv = or i64 %i.cu, %.sroa.0.0.i12.i.i.i.i
  %i.cw = or disjoint i64 %.sroa.03.0.i11.i.i.i.i, 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.03.1.i13.i.i.i.i = phi i64 [ %i.cw, %bb.u ], [ %.sroa.03.0.i11.i.i.i.i, %bb.t ] ; 3 uses
  %.sroa.0.1.i14.i.i.i.i = phi i64 [ %i.cv, %bb.u ], [ %.sroa.0.0.i12.i.i.i.i, %bb.t ] ; 2 uses
  %i.cx = icmp samesign ult i64 %.sroa.03.1.i13.i.i.i.i, %i.br
  br i1 %i.cx, label %bb.w, label %.outer.i.i.i.outer.backedge

bb.w:                                             ; preds = %bb.v
  %i.cy = add i64 %.sroa.03.1.i13.i.i.i.i, %.sroa.0.1.lcssa.i.i.i.i ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.ap
  call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cy
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !117, !noalias !116, !noundef !4
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %.sroa.03.1.i13.i.i.i.i, 3
  %i.de = shl nuw nsw i64 %i.dc, %i.dd
  %i.df = or i64 %i.de, %.sroa.0.1.i14.i.i.i.i
  br label %.outer.i.i.i.outer.backedge

.outer.i.i.i.outer.backedge:                      ; preds = %bb.w, %bb.v
  %.sroa.33.0.ph.i.i.i.ph.be = phi i64 [ %.sroa.0.1.i14.i.i.i.i, %bb.v ], [ %i.df, %bb.w ]
  br label %.outer.i.i.i.outer

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %.lr.ph.i.i.i.i
  %i.dg = phi i64 [ %i.dz, %.lr.ph.i.i.i.i ], [ %.sroa.9.1.i.i.i, %.loopexit ]
  %i.dh = phi i64 [ %i.dw, %.lr.ph.i.i.i.i ], [ %.sroa.15.1.i.i.i, %.loopexit ] ; 3 uses
  %i.di = phi i64 [ %i.dy, %.lr.ph.i.i.i.i ], [ %.sroa.21.1.i.i.i, %.loopexit ]
  %.sroa.0.119.i.i.i.i = phi i64 [ %i.eb, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i8.i, %.loopexit ] ; 2 uses
  %i.dj = phi i64 [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.0.1.i.i.i, %.loopexit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.119.i.i.i.i
  %.sroa.07.0.copyload.i.i.i.i = load i64, ptr %i.dk, align 1, !alias.scope !118, !noalias !116 ; 2 uses
  %i.dl = xor i64 %.sroa.07.0.copyload.i.i.i.i, %i.di ; 3 uses
  %i.dm = add i64 %i.dj, %i.dh                    ; 3 uses
  %i.dn = add i64 %i.dl, %i.dg                    ; 2 uses
  %i.do = call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 13)
  %i.dp = xor i64 %i.dm, %i.do                    ; 3 uses
  %i.dq = call noundef i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 16)
  %i.dr = xor i64 %i.dn, %i.dq                    ; 3 uses
  %i.ds = call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 32)
  %i.dt = add i64 %i.dn, %i.dp                    ; 3 uses
  %i.du = add i64 %i.dr, %i.ds                    ; 2 uses
  %i.dv = call noundef i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 17)
  %i.dw = xor i64 %i.dt, %i.dv                    ; 2 uses
  %i.dx = call noundef i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 21)
  %i.dy = xor i64 %i.dx, %i.du                    ; 2 uses
  %i.dz = call noundef i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 32) ; 2 uses
  %i.ea = xor i64 %i.du, %.sroa.07.0.copyload.i.i.i.i ; 2 uses
  %i.eb = add nuw nsw i64 %.sroa.0.119.i.i.i.i, 8 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.bs
  br i1 %i.ec, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.x:                                             ; preds = %bb.k
  unreachable

bb.y:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgNynMj4ykPw_6notify(ptr nonnull %i.al)
          to label %bb.f unwind label %.thread.i.i.i, !noalias !105

.thread.i.i.i:                                    ; preds = %bb.y
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  %.val32.i.i.i = load i32, ptr %i.c, align 4, !range !113, !noalias !111, !noundef !4
  %i.ed = call noundef i32 @close(i32 noundef %.val32.i.i.i) #17, !noalias !105 ; 0 uses
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgNynMj4ykPw_6notify.exit.i.i

bb.aa:                                            ; preds = %.thread.i.i.i, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %3, %.thread.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  %.val34.i.i.i = load i32, ptr %i.c, align 4, !range !113, !noalias !111, !noundef !4
  %i.ee = call noundef i32 @close(i32 noundef %.val34.i.i.i) #17, !noalias !105 ; 0 uses
  resume { ptr, i32 } %.pn.i.i.i

_RNvMs1_NtNtCsgNynMj4ykPw_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i: ; preds = %bb.i
  %i.ef = shl i64 %.sroa.29.0.ph.i.i.i, 56
  %i.eg = or i64 %i.ef, %.sroa.33.0.ph.i.i.i      ; 2 uses
  %i.eh = xor i64 %i.eg, %.sroa.21.0.ph.i.i.i.ph  ; 3 uses
  %i.ei = add i64 %.sroa.0.015.ph.i.i.i.ph, %.sroa.15.0.ph.i.i.i.ph ; 3 uses
  %i.ej = add i64 %i.eh, %.sroa.9.0.ph.i.i.i.ph   ; 2 uses
  %i.ek = call noundef i64 @llvm.fshl.i64(i64 %.sroa.15.0.ph.i.i.i.ph, i64 %.sroa.15.0.ph.i.i.i.ph, i64 13)
  %i.el = xor i64 %i.ei, %i.ek                    ; 3 uses
  %i.em = call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 16)
  %i.en = xor i64 %i.em, %i.ej                    ; 3 uses
  %i.eo = call noundef i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 32)
  %i.ep = add i64 %i.el, %i.ej                    ; 3 uses
  %i.eq = add i64 %i.eo, %i.en                    ; 2 uses
  %i.er = call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 17)
  %i.es = xor i64 %i.ep, %i.er                    ; 3 uses
  %i.et = call noundef i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 21)
  %i.eu = xor i64 %i.eq, %i.et                    ; 3 uses
  %i.ev = call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 32)
  %i.ew = xor i64 %i.eq, %i.eg
  %i.ex = xor i64 %i.ev, 255
  %i.ey = add i64 %i.ew, %i.es                    ; 3 uses
  %i.ez = add i64 %i.ex, %i.eu                    ; 2 uses
  %i.fa = call noundef i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 13)
  %i.fb = xor i64 %i.ey, %i.fa                    ; 3 uses
  %i.fc = call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 16)
  %i.fd = xor i64 %i.ez, %i.fc                    ; 3 uses
  %i.fe = call noundef i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 32)
  %i.ff = add i64 %i.fb, %i.ez                    ; 3 uses
  %i.fg = add i64 %i.fd, %i.fe                    ; 2 uses
  %i.fh = call noundef i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 17)
  %i.fi = xor i64 %i.ff, %i.fh                    ; 3 uses
  %i.fj = call noundef i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 21)
  %i.fk = xor i64 %i.fj, %i.fg                    ; 3 uses
  %i.fl = call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 32)
  %i.fm = add i64 %i.fi, %i.fg                    ; 3 uses
  %i.fn = add i64 %i.fk, %i.fl                    ; 2 uses
  %i.fo = call noundef i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 13)
  %i.fp = xor i64 %i.fo, %i.fm                    ; 3 uses
  %i.fq = call noundef i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 16)
  %i.fr = xor i64 %i.fq, %i.fn                    ; 3 uses
  %i.fs = call noundef i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 32)
  %i.ft = add i64 %i.fp, %i.fn                    ; 3 uses
  %i.fu = add i64 %i.fr, %i.fs                    ; 2 uses
  %i.fv = call noundef i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 17)
  %i.fw = xor i64 %i.fv, %i.ft                    ; 3 uses
  %i.fx = call noundef i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 21)
  %i.fy = xor i64 %i.fx, %i.fu                    ; 3 uses
  %i.fz = call noundef i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 32)
  %i.ga = add i64 %i.fw, %i.fu
  %i.gb = add i64 %i.fy, %i.fz                    ; 2 uses
  %i.gc = call noundef i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 13)
  %i.gd = xor i64 %i.gc, %i.ga                    ; 3 uses
  %i.ge = call noundef i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 16)
  %i.gf = xor i64 %i.ge, %i.gb                    ; 2 uses
  %i.gg = add i64 %i.gd, %i.gb                    ; 3 uses
  %i.gh = call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 17)
  %i.gi = call noundef i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 21)
  %i.gj = call noundef i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 32)
  %i.gk = xor i64 %i.gh, %i.gi
  %i.gl = xor i64 %i.gk, %i.gj
  %i.gm = xor i64 %i.gl, %i.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  %.val33.i.i.i = load i32, ptr %i.c, align 4, !range !113, !noalias !111, !noundef !4
  %i.gn = call noundef i32 @close(i32 noundef %.val33.i.i.i) #17, !noalias !105 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !111
  br label %_RNvMs1_NtNtCsgNynMj4ykPw_6notify4poll4dataNtB5_8PathData3new.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.z, %bb.d
  %.sroa.4.1.in.i.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.al, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.1.in.i.i.i) ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgNynMj4ykPw_6notify(ptr nonnull %.sroa.4.1.in.i.i.i), !noalias !105
  br label %_RNvMs1_NtNtCsgNynMj4ykPw_6notify4poll4dataNtB5_8PathData3new.exit

_RNvMs1_NtNtCsgNynMj4ykPw_6notify4poll4dataNtB5_8PathData3new.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtNtBM_2io5error5ErrorE6map_orxNvNtNtCsgNynMj4ykPw_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i, %_RNvMs1_NtNtCsgNynMj4ykPw_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgNynMj4ykPw_6notify.exit.i.i
  %.sroa.5.0.i = phi i64 [ undef, %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtNtBM_2io5error5ErrorE6map_orxNvNtNtCsgNynMj4ykPw_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgNynMj4ykPw_6notify.exit.i.i ], [ %i.gm, %_RNvMs1_NtNtCsgNynMj4ykPw_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i ]
  %.sroa.0.0.i = phi i64 [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs2AWtUsOyxgP_3std4time10SystemTimeNtNtNtBM_2io5error5ErrorE6map_orxNvNtNtCsgNynMj4ykPw_6notify4poll4data22system_time_to_secondsEB1Y_.exit.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgNynMj4ykPw_6notify.exit.i.i ], [ 1, %_RNvMs1_NtNtCsgNynMj4ykPw_6notify4poll4dataNtB5_8PathData16get_content_hash.exit.i.i ]
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !102, !noalias !110, !noundef !4
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gr = load i32, ptr %i.gq, align 8, !range !13, !alias.scope !102, !noalias !110, !noundef !4
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.09.i.i, ptr %i.gs, align 8, !alias.scope !101, !noalias !119
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !101, !noalias !119
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.i, ptr %i.gt, align 8, !alias.scope !101, !noalias !119
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gp, ptr %i.gu, align 8, !alias.scope !101, !noalias !119
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.gr, ptr %i.gv, align 8, !alias.scope !101, !noalias !119
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsgNynMj4ykPw_6notify4poll4dataNtB2_11DataBuilder16build_watch_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.i = alloca [72 x i8], align 8          ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [200 x i8], align 8               ; 20 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [176 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !141
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path7PathBufECsgNynMj4ykPw_6notify(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.c unwind label %bb.b, !noalias !142

bb.b:                                             ; preds = %bb.z, %bb.v, %bb.p, %bb.g, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.x, %bb.n, %bb.m, %bb.j, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %bb.n ], [ %i.o, %bb.b ], [ %i.ao, %bb.j ], [ %i.as, %bb.m ], [ %i.bf, %bb.x ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #16
          to label %common.resume.i unwind label %bb.ab, !noalias !138

bb.c:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.n, align 8, !range !14, !noalias !141, !noundef !4
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !141, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !139, !noalias !143 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i = load ptr, ptr %i.u, align 8, !alias.scope !139, !noalias !143 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4.i = load ptr, ptr %i.v, align 8, !alias.scope !140, !noalias !142, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val5.i = load i64, ptr %i.w, align 8, !alias.scope !140, !noalias !142, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !141
  store i64 1, ptr %i.h, align 8, !noalias !141
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.s, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !noalias !141
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !141
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !141
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !146
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, -9223372036854775808) %.val5.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.n, !noalias !142

.noexc.i.i:                                       ; preds = %bb.d
  %i.x = load i64, ptr %i.f, align 8, !range !8, !noalias !146, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !9, !noalias !146, !noundef !4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.y, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgNynMj4ykPw_6notify.exit.i.i.i.i.i, !prof !10

bb.e:                                             ; preds = %.noexc.i.i
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !146
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #14
          to label %.noexc23.i.i unwind label %bb.n, !noalias !142

.noexc23.i.i:                                     ; preds = %bb.e
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgNynMj4ykPw_6notify.exit.i.i.i.i.i: ; preds = %.noexc.i.i
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !146, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = icmp samesign ule i64 %.val5.i, %i.aa
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !146
  %.not.i.i.i.i.i = icmp eq i64 %.val5.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgNynMj4ykPw_6notify.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %.val4.i, i64 range(i64 0, -9223372036854775808) %.val5.i, i1 false), !noalias !147
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgNynMj4ykPw_6notify.exit.i.i.i.i.i
  store i64 %i.aa, ptr %i.g, align 8, !alias.scope !148, !noalias !141
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ad, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !alias.scope !148, !noalias !141
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.val5.i, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !alias.scope !148, !noalias !141
end_hunk_0
