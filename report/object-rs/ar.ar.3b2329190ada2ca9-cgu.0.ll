Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/ar.ar.3b2329190ada2ca9-cgu.0?download=true
inline.NumInlined: 146
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs0_NtNtCseHTIzroA4w0_6object4read7archiveNtB6_13ArchiveMember9parse_zosRShECs54MM5Fk6r0b_2ar:bb.a

.preheader.13.i:                                  ; preds = %bb.ac
  %i.ez = mul nuw nsw i64 %i.ev, 10
  %i.fa = zext nneg i8 %i.ey to i64
  %i.fb = add nuw nsw i64 %i.ez, %i.fa
  br label %bb.ad

bb.ad:                                            ; preds = %.preheader.13.i, %.preheader.12.i, %.preheader.11.i, %.preheader.10.i, %.preheader.9.i, %.preheader.8.i, %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i
  %.sroa.014.0.i.lcssa.i = phi i64 [ %i.dx, %.preheader.8.i ], [ %i.dl, %.preheader.6.i ], [ %i.fb, %.preheader.13.i ], [ %i.ch, %.preheader.1.i ], [ %i.ev, %.preheader.12.i ], [ %i.cn, %.preheader.2.i ], [ %i.dr, %.preheader.7.i ], [ %i.ct, %.preheader.3.i ], [ %i.ep, %.preheader.11.i ], [ %i.cz, %.preheader.4.i ], [ %i.ed, %.preheader.9.i ], [ %i.df, %.preheader.5.i ], [ %i.ej, %.preheader.10.i ] ; 7 uses
  %i.fc = icmp samesign ult i64 %.sroa.014.0.i.lcssa, %.sroa.014.0.i.lcssa.i
  br i1 %i.fc, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fd = sub nuw nsw i64 %.sroa.014.0.i.lcssa, %.sroa.014.0.i.lcssa.i ; 2 uses
  %i.fe = icmp eq i64 %.sroa.014.0.i.lcssa.i, 0
  br i1 %i.fe, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = icmp ult i64 %2, %i.g
  %i.fg = sub nuw nsw i64 %2, %i.g
  %.not.i.i.i50 = icmp samesign ugt i64 %.sroa.014.0.i.lcssa.i, %i.fg
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %or.cond.i.i51 = select i1 %i.ff, i1 true, i1 %.not.i.i.i50
  br i1 %or.cond.i.i51, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sroa.0.0.i.i.i = phi ptr [ %i.fh, %bb.af ], [ inttoptr (i64 1 to ptr), %bb.ae ] ; 5 uses
  %i.fi = add nuw i64 %.sroa.014.0.i.lcssa.i, %i.g ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.sroa.014.0.i.lcssa.i
  %i.fk = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !73, !nonnull !6, !noundef !6
  %i.fl = tail call { i64, ptr } %i.fk(i8 noundef 0, ptr noundef nonnull readonly %.sroa.0.0.i.i.i, ptr noundef nonnull readonly %i.fj), !noalias !74, !inline_history !65 ; 2 uses
  %i.fm = extractvalue { i64, ptr } %i.fl, 0
  %i.fn = trunc nuw i64 %i.fm to i1
  br i1 %i.fn, label %bb.ah, label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs54MM5Fk6r0b_2ar.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.fo = extractvalue { i64, ptr } %i.fl, 1
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %.sroa.0.0.i.i.i to i64
  %i.fr = sub i64 %i.fp, %i.fq                    ; 2 uses
  %i.fs = icmp sgt i64 %i.fr, -1
  tail call void @llvm.assume(i1 %i.fs)
  br label %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs54MM5Fk6r0b_2ar.exit.thread

_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs54MM5Fk6r0b_2ar.exit.thread: ; preds = %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs54MM5Fk6r0b_2ar.exit, %bb.ah, %bb.p, %bb.ag
  %.sroa.053.0 = phi i64 [ %.sroa.014.0.i.lcssa, %bb.p ], [ %i.fd, %bb.ag ], [ %.sroa.014.0.i.lcssa, %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs54MM5Fk6r0b_2ar.exit ], [ %i.fd, %bb.ah ]
  %.sroa.0.0 = phi i64 [ %i.g, %bb.p ], [ %i.fi, %bb.ag ], [ %i.g, %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs54MM5Fk6r0b_2ar.exit ], [ %i.fi, %bb.ah ]
  %.sroa.3.0 = phi i64 [ 16, %bb.p ], [ %.sroa.014.0.i.lcssa.i, %bb.ag ], [ %i.cd, %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs54MM5Fk6r0b_2ar.exit ], [ %i.fr, %bb.ah ]
  %.sroa.034.0 = phi ptr [ %i.f, %bb.p ], [ %.sroa.0.0.i.i.i, %bb.ag ], [ %i.f, %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs54MM5Fk6r0b_2ar.exit ], [ %.sroa.0.0.i.i.i, %bb.ah ]
  %i.ft = add nuw i64 %i.g, %.sroa.014.0.i.lcssa
  %i.fu = and i64 %.sroa.014.0.i.lcssa, 1
  %storemerge = add nuw i64 %i.ft, %i.fu
  store i64 %storemerge, ptr %3, align 8
  store i64 2, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.034.0, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.3.0, ptr %.sroa.646.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.053.0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %bb.aj, %_RINvNtNtNtCs906JEEYSgkH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs54MM5Fk6r0b_2ar.exit.thread, %bb.n, %bb.b
  ret void

bb.aj:                                            ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.r, %bb.af, %bb.ad
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @9, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 36, ptr %i.fw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsG258MDvU3F_3std2rt10lang_startuECs54MM5Fk6r0b_2ar(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @14, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !92, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !92, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i.i.i.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.g = icmp eq ptr %.val1.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !93, !noalias !92 ; 2 uses
  %i.j = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !93, !noalias !92, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #14, !noalias !94
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.l = icmp eq i64 %i.i, %i.f
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !92, !noundef !6 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs54MM5Fk6r0b_2ar.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i
  %i.p = load ptr, ptr %0, align 8, !alias.scope !92, !nonnull !6, !noundef !6
  %i.q = mul nuw i64 %i.n, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #14, !noalias !92
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs54MM5Fk6r0b_2ar.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs54MM5Fk6r0b_2ar.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !109, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !109, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.g = icmp eq ptr %.val1.i.i.i.i, %.val.i.i.i.i
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !110, !noalias !109 ; 2 uses
  %i.j = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !110, !noalias !109, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #14, !noalias !111
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = icmp eq i64 %i.i, %i.f
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !109, !noundef !6 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs54MM5Fk6r0b_2ar.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i
  %i.p = load ptr, ptr %0, align 8, !alias.scope !109, !nonnull !6, !noundef !6
  %i.q = mul nuw i64 %i.n, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #14, !noalias !109
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs54MM5Fk6r0b_2ar.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs54MM5Fk6r0b_2ar.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs54MM5Fk6r0b_2ar(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs54MM5Fk6r0b_2ar.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs54MM5Fk6r0b_2ar.exit
    i64 1, label %bb.c
  ], !prof !8

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs54MM5Fk6r0b_2ar.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !114
  store i8 3, ptr %i.a, align 8, !alias.scope !114
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs54MM5Fk6r0b_2ar.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs54MM5Fk6r0b_2ar.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs54MM5Fk6r0b_2ar(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !115
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !116
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RINvYNtNtCsG258MDvU3F_3std3env4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBF_3num7nonzero7NonZerojENCNvXs_NvBx_10advance_byB3_NtB2e_13SpecAdvanceBy15spec_advance_by0INtNtBF_6option6OptionB1B_EECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtCsG258MDvU3F_3std3env4ArgsNtB6_13SpecAdvanceBy15spec_advance_by0Cs54MM5Fk6r0b_2ar.exit, %bb.a
  %.sroa.01.0 = phi i64 [ %1, %bb.a ], [ %i.c, %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtCsG258MDvU3F_3std3env4ArgsNtB6_13SpecAdvanceBy15spec_advance_by0Cs54MM5Fk6r0b_2ar.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !6 ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 -1, label %bb.d
    i64 0, label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtCsG258MDvU3F_3std3env4ArgsNtB6_13SpecAdvanceBy15spec_advance_by0Cs54MM5Fk6r0b_2ar.exit
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.58.0.copyload = load ptr, ptr %.sroa.58.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.58.0.copyload, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #14
  br label %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtCsG258MDvU3F_3std3env4ArgsNtB6_13SpecAdvanceBy15spec_advance_by0Cs54MM5Fk6r0b_2ar.exit

_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtCsG258MDvU3F_3std3env4ArgsNtB6_13SpecAdvanceBy15spec_advance_by0Cs54MM5Fk6r0b_2ar.exit: ; preds = %bb.b, %bb.c
  %i.c = add i64 %.sroa.01.0, -1                  ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.d, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtCsG258MDvU3F_3std3env4ArgsNtB6_13SpecAdvanceBy15spec_advance_by0Cs54MM5Fk6r0b_2ar.exit, %bb.d
  %.sroa.0.0 = phi i64 [ %.sroa.01.0, %bb.d ], [ 0, %_RNCNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtCsG258MDvU3F_3std3env4ArgsNtB6_13SpecAdvanceBy15spec_advance_by0Cs54MM5Fk6r0b_2ar.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs54MM5Fk6r0b_2ar(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs54MM5Fk6r0b_2ar(ptr noundef nonnull %i.a) #15
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCseHTIzroA4w0_6object4read7archiveNtB4_11ArchiveFile5parse0Cs54MM5Fk6r0b_2ar(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %3 = load i64, ptr %2, align 8, !noundef !6
  %i.b = load i64, ptr %.0.val, align 8, !noundef !6
  %i.c = icmp ult i64 %3, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i8, ptr %i.l, align 8, !range !10, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  call fastcc void @_RINvMs0_NtNtCseHTIzroA4w0_6object4read7archiveNtB6_13ArchiveMember5parseRShECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i1 noundef zeroext %i.n)
  %i.o = load i64, ptr %i.a, align 8, !range !11, !noundef !6
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.g, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.v, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs54MM5Fk6r0b_2ar(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs54MM5Fk6r0b_2ar(ptr noundef nonnull readonly %i.a) #15, !noalias !119
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs54MM5Fk6r0b_2ar4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 11 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 11 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 11 uses
  %i.k = alloca [48 x i8], align 8                ; 11 uses
  %i.l = alloca [80 x i8], align 8                ; 16 uses
  %i.m = alloca [8 x i8], align 8                 ; 19 uses
  %i.n = alloca [8 x i8], align 8                 ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 16               ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [64 x i8], align 8                ; 11 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 12 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [40 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @_RNvNtCsG258MDvU3F_3std3env4args(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 4 uses
  store i64 1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.an, align 8, !nonnull !6, !noundef !6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  %.val77 = load ptr, ptr %i.ao, align 8, !nonnull !6, !noundef !6
  %i.ap = ptrtoint ptr %.val77 to i64
  %i.aq = ptrtoint ptr %.val to i64
  %i.ar = sub nuw i64 %i.ap, %i.aq
  %i.as = icmp ult i64 %i.ar, 72
  br i1 %i.as, label %bb.d, label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit167, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit106, %bb.b
  %.pn75 = phi { ptr, i32 } [ %i.at, %bb.b ], [ %.pn73, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit167 ], [ %.pn70, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit106 ], [ %.pn70, %bb.l ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 dereferenceable(40) %i.al) #16
  resume { ptr, i32 } %.pn75

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit168, %bb.i, %bb.h, %bb.e, %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit168, %bb.fj, %bb.di, %bb.p, %bb.i
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke void @_RNvNtCsG258MDvU3F_3std3env4args(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ai)
          to label %bb.ff unwind label %bb.b

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 0, ptr %i.am, align 8
  %i.au = invoke fastcc noundef i64 @_RINvYNtNtCsG258MDvU3F_3std3env4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBF_3num7nonzero7NonZerojENCNvXs_NvBx_10advance_byB3_NtB2e_13SpecAdvanceBy15spec_advance_by0INtNtBF_6option6OptionB1B_EECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 dereferenceable(32) %i.al, i64 noundef 1)
          to label %bb.g unwind label %bb.b

bb.f:                                             ; preds = %bb.h
  %i.av = load i64, ptr %i.ag, align 8, !range !9, !noundef !6 ; 7 uses
  %.not60 = icmp eq i64 %i.av, -1
  br i1 %.not60, label %bb.i, label %bb.j, !prof !7

bb.g:                                             ; preds = %bb.e
  %.not59 = icmp eq i64 %i.au, 0
  br i1 %.not59, label %bb.h, label %bb.i, !prof !202

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %bb.f unwind label %bb.b

bb.i:                                             ; preds = %bb.g, %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #17
          to label %bb.c unwind label %bb.b

bb.j:                                             ; preds = %bb.f
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 10 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.aw = load i64, ptr %i.am, align 8, !noundef !6 ; 2 uses
  %.not61 = icmp eq i64 %i.aw, 0
  br i1 %.not61, label %.invoke, label %bb.k, !prof !202

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.am, align 8
  %i.ax = invoke fastcc noundef i64 @_RINvYNtNtCsG258MDvU3F_3std3env4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBF_3num7nonzero7NonZerojENCNvXs_NvBx_10advance_byB3_NtB2e_13SpecAdvanceBy15spec_advance_by0INtNtBF_6option6OptionB1B_EECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 dereferenceable(32) %i.al, i64 noundef %i.aw)
          to label %bb.o unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit106: ; preds = %bb.s, %bb.r, %bb.m
  %.pn70 = phi { ptr, i32 } [ %i.az, %bb.m ], [ %.pn68, %bb.r ], [ %.pn68, %bb.s ] ; 2 uses
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit106
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 1) #14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit

bb.m:                                             ; preds = %.invoke, %bb.p, %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit106

bb.n:                                             ; preds = %.invoke
  %i.ba = load i64, ptr %i.ae, align 8, !range !9, !noundef !6
  %.not63 = icmp eq i64 %i.ba, -1
  br i1 %.not63, label %bb.p, label %bb.q, !prof !7

bb.o:                                             ; preds = %bb.k
  %.not62 = icmp eq i64 %i.ax, 0
  br i1 %.not62, label %.invoke, label %bb.p, !prof !202

.invoke:                                          ; preds = %bb.j, %bb.o
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %bb.n unwind label %bb.m

bb.p:                                             ; preds = %bb.o, %bb.n
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #17
          to label %bb.c unwind label %bb.m

bb.q:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !204
  store i128 18446745954905227264, ptr %i.p, align 16, !noalias !204
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %.val.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !203, !noalias !205, !nonnull !6, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.val1.i.i = load i64, ptr %i.bc, align 8, !alias.scope !203, !noalias !205, !noundef !6
  invoke void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.u unwind label %bb.t

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs54MM5Fk6r0b_2ar.exit, %bb.ey, %bb.t
  %.pn68 = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.pl, %bb.ey ], [ %.pn66, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs54MM5Fk6r0b_2ar.exit ] ; 2 uses
  %.val90 = load i64, ptr %i.af, align 8          ; 2 uses
  %i.bd = icmp eq i64 %.val90, 0
  br i1 %i.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit106, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val91 = load ptr, ptr %i.bb, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val91, i64 noundef %.val90, i64 noundef range(i64 1, -9223372036854775807) 1) #14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit106

bb.t:                                             ; preds = %bb.fb, %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !204
  %i.bf = load i32, ptr %i.ad, align 8, !range !206, !noundef !6
  %i.bg = trunc nuw i32 %i.bf to i1
  br i1 %i.bg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !6, !noundef !6
  store ptr %i.bi, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.af, ptr %i.ab, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.bj, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @24, ptr noundef nonnull %i.ab)
          to label %bb.ez unwind label %bb.ey

bb.w:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !range !207, !noundef !6 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !208
  %i.bm = invoke { i64, ptr } @_RNvNtCsgQ7e0lqRvgo_7memmap22os8file_len(i32 noundef %i.bl)
          to label %.noexc108 unwind label %bb.aa ; 2 uses

.noexc108:                                        ; preds = %bb.w
  %i.bn = extractvalue { i64, ptr } %i.bm, 0
  %i.bo = extractvalue { i64, ptr } %i.bm, 1      ; 2 uses
  %i.bp = trunc nuw i64 %i.bn to i1
  br i1 %i.bp, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc108
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = invoke { i64, ptr } @_RNvMs0_CsgQ7e0lqRvgo_7memmap2NtB5_11MmapOptions12validate_len(i64 noundef %i.bq)
          to label %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs54MM5Fk6r0b_2ar.exit.i unwind label %bb.aa

bb.y:                                             ; preds = %.noexc108
  %i.bs = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.bo, 1
  br label %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs54MM5Fk6r0b_2ar.exit.i

_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs54MM5Fk6r0b_2ar.exit.i: ; preds = %bb.x, %bb.y
  %.merged.i.i = phi { i64, ptr } [ %i.br, %bb.x ], [ %i.bs, %bb.y ] ; 2 uses
  %i.bt = extractvalue { i64, ptr } %.merged.i.i, 0
  %i.bu = extractvalue { i64, ptr } %.merged.i.i, 1 ; 2 uses
  %i.bv = trunc nuw i64 %i.bt to i1
  br i1 %i.bv, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs54MM5Fk6r0b_2ar.exit.i
  %i.bw = ptrtoint ptr %i.bu to i64
  invoke void @_RNvMNtCsgQ7e0lqRvgo_7memmap22osNtB2_9MmapInner3map(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, i64 noundef %i.bw, i32 noundef %i.bl, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %.noexc111 unwind label %bb.aa

.noexc111:                                        ; preds = %bb.z
  %i.bx = load i64, ptr %i.o, align 8, !range !209, !noalias !208, !noundef !6
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !208, !noundef !6 ; 21 uses
  br i1 %i.by, label %bb.ab, label %bb.ac

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs54MM5Fk6r0b_2ar.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit, %bb.er, %bb.aa
  %.pn66 = phi { ptr, i32 } [ %i.cc, %bb.aa ], [ %i.pc, %bb.er ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit ]
  %i.cb = call noundef i32 @close(i32 noundef %i.bl) #14 ; 0 uses
  br label %bb.r

bb.aa:                                            ; preds = %bb.eu, %bb.eq, %bb.ee, %bb.z, %bb.x, %bb.w
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs54MM5Fk6r0b_2ar.exit

bb.ab:                                            ; preds = %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs54MM5Fk6r0b_2ar.exit.i, %.noexc111
  %.sink.i.ph = phi ptr [ %i.ca, %.noexc111 ], [ %i.bu, %_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsG258MDvU3F_3std2fs4FileECs54MM5Fk6r0b_2ar.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.ph) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.sink.i.ph, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.af, ptr %i.y, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.cd, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @23, ptr noundef nonnull %i.y)
          to label %bb.es unwind label %bb.er

bb.ac:                                            ; preds = %.noexc111
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !208, !noundef !6 ; 36 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !208
  store ptr %i.ca, ptr %i.aa, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.cf, ptr %i.cg, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !211
  store i64 %i.cf, ptr %i.n, align 8, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !211
  %.not.i.i.i = icmp samesign ult i64 %i.cf, 8
  br i1 %.not.i.i.i, label %.thread237, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 8, ptr %i.m, align 8, !alias.scope !212, !noalias !213
  %i.ch = load i64, ptr %i.ca, align 1, !alias.scope !210, !noalias !214, !noundef !6
  switch i64 %i.ch, label %.thread237 [
    i64 738139957468160572, label %bb.ae
    i64 1544321821032139866, label %bb.bh
    i64 738148787938409505, label %bb.bm
    i64 738142165265366049, label %bb.bl
  ]

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i = icmp samesign ult i64 %i.cf, 128
  br i1 %.not.i.i.i.i.i, label %.thread237, label %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_7archive13AixFileHeaderECs54MM5Fk6r0b_2ar.exit.i.i

_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_7archive13AixFileHeaderECs54MM5Fk6r0b_2ar.exit.i.i: ; preds = %bb.ae
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cj = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef 20, i32 noundef 10)
          to label %.noexc112 unwind label %.loopexit.split-lp ; 2 uses

.noexc112:                                        ; preds = %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_7archive13AixFileHeaderECs54MM5Fk6r0b_2ar.exit.i.i
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = extractvalue { i64, i64 } %i.cj, 1      ; 5 uses
  %i.cm = trunc nuw i64 %i.ck to i1
  br i1 %i.cm, label %bb.af, label %.thread237

bb.af:                                            ; preds = %.noexc112
  %.not.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.co = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cn, i64 noundef 20, i32 noundef 10)
          to label %.noexc113 unwind label %.loopexit.split-lp ; 2 uses

.noexc113:                                        ; preds = %bb.ag
  %i.cp = extractvalue { i64, i64 } %i.co, 0
  %i.cq = extractvalue { i64, i64 } %i.co, 1      ; 5 uses
  %i.cr = trunc nuw i64 %i.cp to i1
  br i1 %i.cr, label %bb.an, label %.thread237

bb.ah:                                            ; preds = %bb.af
  %i.cs = icmp ult i64 %i.cf, %i.cl
  %i.ct = sub nuw nsw i64 %i.cf, %i.cl
  %.not.i.i.i.i.i.i = icmp samesign ult i64 %i.ct, 112
  %or.cond.i.i.i.i.i = select i1 %i.cs, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.thread237, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cl ; 2 uses
  %i.cv = add nuw i64 %i.cl, 112                  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 108
  %i.cx = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef 4, i32 noundef 10)
          to label %.noexc114 unwind label %.loopexit.split-lp ; 2 uses

.noexc114:                                        ; preds = %bb.ai
  %i.cy = extractvalue { i64, i64 } %i.cx, 0
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %bb.aj, label %.thread237

bb.aj:                                            ; preds = %.noexc114
  %i.da = extractvalue { i64, i64 } %i.cx, 1      ; 3 uses
  %i.db = icmp ne i64 %i.da, 0
  %i.dc = sub nuw nsw i64 %i.cf, %i.cv
  %.not.i.i.i162.i.i = icmp ugt i64 %i.da, %i.dc
  %or.cond245.i.i = select i1 %i.db, i1 %.not.i.i.i162.i.i, i1 false
  br i1 %or.cond245.i.i, label %.thread237, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = add nuw i64 %i.da, %i.cv                ; 2 uses
  %i.de = and i64 %i.dd, 1
  %spec.select.i.i.i = add nuw i64 %i.de, %i.dd   ; 3 uses
  %i.df = icmp ult i64 %i.cf, %spec.select.i.i.i
  %i.dg = sub nuw nsw i64 %i.cf, %spec.select.i.i.i
  %.not.i.i53.i.i.i = icmp samesign ult i64 %i.dg, 2
  %or.cond.i54.i.i.i = select i1 %i.df, i1 true, i1 %.not.i.i53.i.i.i
  br i1 %or.cond.i54.i.i.i, label %.thread237, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 %spec.select.i.i.i
  %i.di = load i16, ptr %i.dh, align 1, !alias.scope !215, !noalias !216, !noundef !6
  %.not.i.i200.i = icmp eq i16 %i.di, 2656
  br i1 %.not.i.i200.i, label %bb.am, label %.thread237

bb.am:                                            ; preds = %bb.al
  %i.dj = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef 20, i32 noundef 10)
          to label %.noexc115 unwind label %.loopexit.split-lp

.noexc115:                                        ; preds = %bb.am
  %i.dk = extractvalue { i64, i64 } %i.dj, 0
  %i.dl = trunc nuw i64 %i.dk to i1
  br i1 %i.dl, label %bb.au, label %.thread237

bb.an:                                            ; preds = %.noexc113
  %.not161.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not161.i.i, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dm = icmp ult i64 %i.cf, %i.cq
  %i.dn = sub nuw nsw i64 %i.cf, %i.cq
  %.not.i.i.i.i163.i.i = icmp samesign ult i64 %i.dn, 112
  %or.cond.i.i.i164.i.i = select i1 %i.dm, i1 true, i1 %.not.i.i.i.i163.i.i
  br i1 %or.cond.i.i.i164.i.i, label %.thread237, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.do = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cq ; 2 uses
  %i.dp = add nuw i64 %i.cq, 112                  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 108
  %i.dr = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef 4, i32 noundef 10)
          to label %.noexc116 unwind label %.loopexit.split-lp ; 2 uses

.noexc116:                                        ; preds = %bb.ap
  %i.ds = extractvalue { i64, i64 } %i.dr, 0
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.aq, label %.thread237

bb.aq:                                            ; preds = %.noexc116
  %i.du = extractvalue { i64, i64 } %i.dr, 1      ; 3 uses
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = sub nuw nsw i64 %i.cf, %i.dp
  %.not.i.i.i165.i.i = icmp ugt i64 %i.du, %i.dw
  %or.cond246.i.i = select i1 %i.dv, i1 %.not.i.i.i165.i.i, i1 false
  br i1 %or.cond246.i.i, label %.thread237, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dx = add nuw i64 %i.du, %i.dp                ; 2 uses
  %i.dy = and i64 %i.dx, 1
  %spec.select.i167.i.i = add nuw i64 %i.dy, %i.dx ; 3 uses
  %i.dz = icmp ult i64 %i.cf, %spec.select.i167.i.i
  %i.ea = sub nuw nsw i64 %i.cf, %spec.select.i167.i.i
  %.not.i.i53.i168.i.i = icmp samesign ult i64 %i.ea, 2
  %or.cond.i54.i169.i.i = select i1 %i.dz, i1 true, i1 %.not.i.i53.i168.i.i
  br i1 %or.cond.i54.i169.i.i, label %.thread237, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %spec.select.i167.i.i
  %i.ec = load i16, ptr %i.eb, align 1, !alias.scope !217, !noalias !218, !noundef !6
  %.not.i170.i.i = icmp eq i16 %i.ec, 2656
  br i1 %.not.i170.i.i, label %bb.at, label %.thread237

bb.at:                                            ; preds = %bb.as
  %i.ed = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef 20, i32 noundef 10)
          to label %.noexc117 unwind label %.loopexit.split-lp

.noexc117:                                        ; preds = %bb.at
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = trunc nuw i64 %i.ee to i1
  br i1 %i.ef, label %bb.au, label %.thread237

bb.au:                                            ; preds = %.noexc117, %.noexc115, %bb.an
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.eh = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eg, i64 noundef 20, i32 noundef 10)
          to label %.noexc118 unwind label %.loopexit.split-lp ; 2 uses

.noexc118:                                        ; preds = %bb.au
  %i.ei = extractvalue { i64, i64 } %i.eh, 0
  %i.ej = extractvalue { i64, i64 } %i.eh, 1      ; 5 uses
  %i.ek = trunc nuw i64 %i.ei to i1
  br i1 %i.ek, label %bb.av, label %.thread237

bb.av:                                            ; preds = %.noexc118
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %.thread251, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.em = icmp ult i64 %i.cf, %i.ej
  %i.en = sub nuw nsw i64 %i.cf, %i.ej
  %.not.i.i.i.i177.i.i = icmp samesign ult i64 %i.en, 112
  %or.cond.i.i.i178.i.i = select i1 %i.em, i1 true, i1 %.not.i.i.i.i177.i.i
  br i1 %or.cond.i.i.i178.i.i, label %.thread237, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ej ; 2 uses
  %i.ep = add nuw i64 %i.ej, 112                  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 108
end_hunk_0
begin_hunk_1_@_RNvCs54MM5Fk6r0b_2ar4main:bb.a
  br label %.thread.i

bb.cm:                                            ; preds = %bb.bp
  %i.it = load i56, ptr %i.gt, align 1
  %i.iu = icmp eq i56 %i.it, 13286731735978799
  br i1 %i.iu, label %bb.cn, label %.thread.i

bb.cn:                                            ; preds = %bb.cm
  store i8 2, ptr %i.gg, align 1, !noalias !211
  store i64 %.sroa.13.0.copyload.i, ptr %i.gh, align 8, !noalias !211
  store i64 %.sroa.14.0.copyload.i, ptr %i.gi, align 8, !noalias !211
  %i.iv = load i64, ptr %i.m, align 8, !noalias !211, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !211
  invoke fastcc void @_RNCNvMNtNtCseHTIzroA4w0_6object4read7archiveNtB4_11ArchiveFile5parse0Cs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.h, ptr nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.l, ptr noalias nofree noundef align 8 dereferenceable(8) %i.m) #18
          to label %.noexc127 unwind label %.loopexit.split-lp

.noexc127:                                        ; preds = %bb.cn
  %i.iw = load i64, ptr %i.h, align 8, !range !228, !noalias !211, !noundef !6 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, -2
  br i1 %i.ix, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.noexc127
  %i.iy = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !211, !nonnull !6, !noundef !6
  %i.ja = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !noalias !211, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !211
  br label %select.unfold.i

bb.cp:                                            ; preds = %.noexc127
  %.sroa.5180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5180.0.copyload.i = load i64, ptr %.sroa.5180.0..sroa_idx.i, align 8, !noalias !211
  %.sroa.6181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.6181.0.copyload.i = load i64, ptr %.sroa.6181.0..sroa_idx.i, align 8, !noalias !211
  %.sroa.7182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.7182.0.copyload.i = load i64, ptr %.sroa.7182.0..sroa_idx.i, align 8, !noalias !211 ; 4 uses
  %.sroa.8183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.8183.0.copyload.i = load i64, ptr %.sroa.8183.0..sroa_idx.i, align 8, !noalias !211 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !211
  %.not192.i = icmp ne i64 %i.iw, -1
  %i.jc = icmp eq i64 %.sroa.6181.0.copyload.i, 2
  %or.cond195.i = select i1 %.not192.i, i1 %i.jc, i1 false
  br i1 %or.cond195.i, label %bb.cq, label %.thread.i

bb.cq:                                            ; preds = %bb.cp
  %i.jd = inttoptr i64 %.sroa.5180.0.copyload.i to ptr
  %i.je = load i16, ptr %i.jd, align 1, !noundef !6
  %i.jf = icmp eq i16 %i.je, 12079
  br i1 %i.jf, label %bb.cr, label %.thread.i

bb.cr:                                            ; preds = %bb.cq
  %i.jg = icmp eq i64 %.sroa.7182.0.copyload.i, 0
  %i.jh = icmp eq i64 %.sroa.8183.0.copyload.i, 0
  %or.cond287.i = select i1 %i.jg, i1 true, i1 %i.jh
  br i1 %or.cond287.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ji = icmp ult i64 %i.cf, %.sroa.7182.0.copyload.i
  %i.jj = sub nuw nsw i64 %i.cf, %.sroa.7182.0.copyload.i
  %.not.i214.i = icmp ugt i64 %.sroa.8183.0.copyload.i, %i.jj
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.7182.0.copyload.i
  %or.cond274.i = select i1 %i.ji, i1 true, i1 %.not.i214.i
  br i1 %or.cond274.i, label %select.unfold.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.sroa.6128.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.cr ], [ %i.jk, %bb.cs ]
  %.sroa.11130.0.i = phi i64 [ 0, %bb.cr ], [ %.sroa.8183.0.copyload.i, %bb.cs ]
  %i.jl = load i64, ptr %i.m, align 8, !noalias !211, !noundef !6
  br label %.thread.i

bb.cu:                                            ; preds = %bb.bp
  %i.jm = load i16, ptr %i.gt, align 1, !noundef !6
  %i.jn = icmp eq i16 %i.jm, 12079
  br i1 %i.jn, label %bb.cv, label %.thread.i

bb.cv:                                            ; preds = %bb.cu
  store i8 1, ptr %i.gg, align 1, !noalias !211
  %i.jo = icmp eq i64 %.sroa.13.0.copyload.i, 0
  %i.jp = icmp eq i64 %.sroa.14.0.copyload.i, 0
  %or.cond291.i = select i1 %i.jo, i1 true, i1 %i.jp
  br i1 %or.cond291.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jq = icmp ult i64 %i.cf, %.sroa.13.0.copyload.i
  %i.jr = sub nuw nsw i64 %i.cf, %.sroa.13.0.copyload.i
  %.not.i219.i = icmp ugt i64 %.sroa.14.0.copyload.i, %i.jr
  %i.js = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.13.0.copyload.i
  %or.cond276.i = select i1 %i.jq, i1 true, i1 %.not.i219.i
  br i1 %or.cond276.i, label %select.unfold.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.sroa.6138.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.cv ], [ %i.js, %bb.cw ]
  %.sroa.11140.0.i = phi i64 [ 0, %bb.cv ], [ %.sroa.14.0.copyload.i, %bb.cw ]
  %i.jt = load i64, ptr %i.m, align 8, !noalias !211, !noundef !6
  br label %.thread.i

select.unfold.i:                                  ; preds = %bb.cw, %bb.cs, %bb.co, %bb.cj, %bb.ch, %bb.cb, %bb.bx, %bb.bs, %bb.bo
  %.sink294.i = phi ptr [ %i.ha, %bb.bs ], [ %i.gq, %bb.bo ], [ @8, %bb.bx ], [ %i.il, %bb.cj ], [ %i.hs, %bb.cb ], [ @8, %bb.ch ], [ @8, %bb.cs ], [ %i.iz, %bb.co ], [ @8, %bb.cw ]
  %.sink292.i = phi i64 [ %i.hc, %bb.bs ], [ %i.gs, %bb.bo ], [ 32, %bb.bx ], [ %i.in, %bb.cj ], [ %i.hu, %bb.cb ], [ 32, %bb.ch ], [ 32, %bb.cs ], [ %i.jb, %bb.co ], [ 32, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !211
  br label %.thread237

bb.cy:                                            ; preds = %bb.bp
  %i.ju = load i72, ptr %i.gt, align 1
  %i.jv = icmp eq i72 %i.ju, 1296263284492744941407
  br i1 %i.jv, label %bb.cz, label %.thread.i

bb.cz:                                            ; preds = %bb.da, %bb.cy
  %i.jw = load i64, ptr %i.m, align 8, !noalias !211, !noundef !6
  br label %.thread.i

bb.da:                                            ; preds = %bb.bp
  %i.jx = load i128, ptr %i.gt, align 1, !noundef !6
  %i.jy = icmp eq i128 %i.jx, 90747482440279024404723789557641666399
  br i1 %i.jy, label %bb.cz, label %.thread.i

bb.db:                                            ; preds = %bb.bp
  %i.jz = load i96, ptr %i.gt, align 1
  %i.ka = icmp eq i96 %i.jz, 16158952426048290658162990943
  br i1 %i.ka, label %bb.dc, label %.thread.i

bb.dc:                                            ; preds = %bb.dd, %bb.db
  %i.kb = load i64, ptr %i.m, align 8, !noalias !211, !noundef !6
  br label %.thread.i

bb.dd:                                            ; preds = %bb.bp
  %i.kc = load i128, ptr %i.gt, align 1
  %i.kd = xor i128 %i.kc, 109408573097644608931918369426422783839
  %i.ke = getelementptr i8, ptr %i.gt, i64 3
  %i.kf = load i128, ptr %i.ke, align 1
  %i.kg = xor i128 %i.kf, 90747482440279024071609124361941637459
  %i.kh = or i128 %i.kd, %i.kg
  %i.ki = icmp ne i128 %i.kh, 0
  %i.kj = zext i1 %i.ki to i32
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.dc, label %.thread.i

.thread.i:                                        ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cu, %bb.ct, %bb.cq, %bb.cp, %bb.cm, %bb.cl, %bb.cf, %bb.ce, %bb.cc, %bb.bz, %bb.by, %bb.bv, %bb.bu, %bb.bt, %bb.bq, %bb.bp, %bb.bm
  %i.kl = phi i64 [ 0, %bb.db ], [ 0, %bb.bp ], [ 0, %bb.bt ], [ 0, %bb.bq ], [ 0, %bb.da ], [ 0, %bb.cp ], [ 0, %bb.cq ], [ 0, %bb.bm ], [ %.sroa.11140.0.i, %bb.cx ], [ 0, %bb.cm ], [ 0, %bb.cz ], [ 0, %bb.cu ], [ 0, %bb.cy ], [ 0, %bb.dc ], [ 0, %bb.dd ], [ 0, %bb.bu ], [ %.sroa.11.0.i, %bb.by ], [ 0, %bb.bz ], [ %i.hw, %bb.cl ], [ 0, %bb.bv ], [ %i.hw, %bb.ce ], [ %.sroa.11130.0.i, %bb.ct ], [ 0, %bb.cc ], [ 0, %bb.cf ]
  %i.km = phi ptr [ inttoptr (i64 1 to ptr), %bb.db ], [ inttoptr (i64 1 to ptr), %bb.bp ], [ inttoptr (i64 1 to ptr), %bb.bt ], [ inttoptr (i64 1 to ptr), %bb.bq ], [ inttoptr (i64 1 to ptr), %bb.da ], [ inttoptr (i64 1 to ptr), %bb.cp ], [ inttoptr (i64 1 to ptr), %bb.cq ], [ inttoptr (i64 1 to ptr), %bb.bm ], [ %.sroa.6138.0.i, %bb.cx ], [ inttoptr (i64 1 to ptr), %bb.cm ], [ inttoptr (i64 1 to ptr), %bb.cz ], [ inttoptr (i64 1 to ptr), %bb.cu ], [ inttoptr (i64 1 to ptr), %bb.cy ], [ inttoptr (i64 1 to ptr), %bb.dc ], [ inttoptr (i64 1 to ptr), %bb.dd ], [ inttoptr (i64 1 to ptr), %bb.bu ], [ %.sroa.662.0.i, %bb.by ], [ inttoptr (i64 1 to ptr), %bb.bz ], [ %i.hx, %bb.cl ], [ inttoptr (i64 1 to ptr), %bb.bv ], [ %i.hx, %bb.ce ], [ %.sroa.6128.0.i, %bb.ct ], [ inttoptr (i64 1 to ptr), %bb.cc ], [ inttoptr (i64 1 to ptr), %bb.cf ]
  %.sroa.0142.4.i = phi i64 [ 8, %bb.db ], [ 8, %bb.bp ], [ %i.gw, %bb.bt ], [ 8, %bb.bq ], [ 8, %bb.da ], [ %i.iv, %bb.cp ], [ %i.iv, %bb.cq ], [ 8, %bb.bm ], [ %i.jt, %bb.cx ], [ 8, %bb.cm ], [ %i.jw, %bb.cz ], [ 8, %bb.cu ], [ 8, %bb.cy ], [ %i.kb, %bb.dc ], [ 8, %bb.dd ], [ %i.gw, %bb.bu ], [ %i.hl, %bb.by ], [ %i.gw, %bb.bz ], [ %spec.select.i, %bb.cl ], [ %i.gw, %bb.bv ], [ %.sroa.0142.1.i, %bb.ce ], [ %i.jl, %bb.ct ], [ %i.ho, %bb.cc ], [ %i.ho, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !211
  br label %.thread251

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit: ; preds = %.loopexit, %.loopexit.split-lp, %bb.eh, %bb.eg
  %.pn = phi { ptr, i32 } [ %i.of, %bb.eh ], [ %i.of, %bb.eg ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs54MM5Fk6r0b_2ar.exit unwind label %bb.ek

.loopexit:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCseHTIzroA4w0_6object4read7archive13ArchiveMemberNtBL_5ErrorE6unwrapCs54MM5Fk6r0b_2ar.exit, %bb.dp, %bb.ds, %bb.du, %bb.dz, %bb.ea
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit

.loopexit.split-lp:                               ; preds = %.thread237, %bb.di, %bb.dk, %.loopexit300, %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_7archive13AixFileHeaderECs54MM5Fk6r0b_2ar.exit.i.i, %bb.ag, %bb.ai, %bb.am, %bb.ap, %bb.at, %bb.au, %bb.ax, %bb.bb, %bb.bf, %bb.bi, %bb.bn, %bb.br, %bb.ca, %bb.ci, %bb.cn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit

.thread269:                                       ; preds = %bb.bk, %bb.bj, %bb.bh
  %.sroa.24.0.ph = phi i64 [ 8, %bb.bh ], [ 8, %bb.bj ], [ %spec.select, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !222
  br label %.thread251

bb.de:                                            ; preds = %.noexc122
  %i.kn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !222, !nonnull !6, !noundef !6
  %i.kp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !222, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !222
  br label %.thread237

.thread237:                                       ; preds = %bb.ad, %bb.be, %bb.ae, %.noexc112, %.noexc113, %bb.bc, %.noexc121, %bb.bd, %.noexc118, %bb.ac, %bb.bg, %select.unfold.i, %.noexc117, %bb.as, %bb.ar, %bb.aq, %.noexc116, %bb.ao, %.noexc115, %bb.al, %bb.ak, %bb.aj, %.noexc114, %bb.ah, %.noexc120, %bb.ba, %bb.az, %bb.ay, %.noexc119, %bb.aw, %bb.de
  %.sroa.24.1247 = phi ptr [ %i.ko, %bb.de ], [ @36, %bb.ad ], [ @34, %bb.be ], [ @35, %bb.ae ], [ @4, %bb.ao ], [ @29, %.noexc112 ], [ %.sink294.i, %select.unfold.i ], [ @30, %.noexc113 ], [ @34, %bb.bc ], [ @32, %.noexc121 ], [ @8, %bb.bd ], [ @4, %bb.ah ], [ @31, %.noexc118 ], [ @37, %bb.ac ], [ @33, %bb.bg ], [ @1, %.noexc117 ], [ @0, %.noexc116 ], [ @2, %bb.ar ], [ @2, %bb.as ], [ @3, %bb.aq ], [ @1, %.noexc115 ], [ @0, %.noexc114 ], [ @2, %bb.ak ], [ @2, %bb.al ], [ @3, %bb.aj ], [ @1, %.noexc120 ], [ @0, %.noexc119 ], [ @2, %bb.az ], [ @2, %bb.ba ], [ @3, %bb.ay ], [ @4, %bb.aw ]
  %.sroa.43.1246 = phi i64 [ %i.kq, %bb.de ], [ 30, %bb.ad ], [ 39, %bb.be ], [ 35, %bb.ae ], [ 37, %bb.ao ], [ 56, %.noexc112 ], [ %.sink292.i, %select.unfold.i ], [ 49, %.noexc113 ], [ 39, %bb.bc ], [ 39, %.noexc121 ], [ 32, %bb.bd ], [ 37, %bb.ah ], [ 50, %.noexc118 ], [ 20, %bb.ac ], [ 40, %bb.bg ], [ 46, %.noexc117 ], [ 42, %.noexc116 ], [ 34, %bb.ar ], [ 34, %bb.as ], [ 35, %bb.aq ], [ 46, %.noexc115 ], [ 42, %.noexc114 ], [ 34, %bb.ak ], [ 34, %bb.al ], [ 35, %bb.aj ], [ 46, %.noexc120 ], [ 42, %.noexc119 ], [ 34, %bb.az ], [ 34, %bb.ba ], [ 35, %bb.ay ], [ 37, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %.sroa.24.1247, ptr %i.x, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.43.1246, ptr %i.kr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.439.0..sroa_idx, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.ks, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXNtCseHTIzroA4w0_6object4readNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @22, ptr noundef nonnull %i.w)
          to label %bb.eq unwind label %.loopexit.split-lp

.thread251:                                       ; preds = %.thread.i, %bb.av, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i, %.thread269
  %.sroa.0175.1267 = phi i64 [ 2, %.thread269 ], [ 0, %.thread.i ], [ 1, %bb.av ], [ 1, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ] ; 2 uses
  %.sroa.24.1266 = phi i64 [ %.sroa.24.0.ph, %.thread269 ], [ %.sroa.0142.4.i, %.thread.i ], [ 1, %bb.av ], [ %i.fw, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ]
  %.sroa.43.1265 = phi i64 [ %i.cf, %.thread269 ], [ %i.cf, %.thread.i ], [ 0, %bb.av ], [ %i.fr, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ]
  %.sroa.70.1263 = phi ptr [ inttoptr (i64 1 to ptr), %.thread269 ], [ %i.km, %.thread.i ], [ inttoptr (i64 1 to ptr), %bb.av ], [ inttoptr (i64 1 to ptr), %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ] ; 2 uses
  %.sroa.74.1262 = phi i64 [ 0, %.thread269 ], [ %i.kl, %.thread.i ], [ 0, %bb.av ], [ 0, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ]
  %.sroa.84.1261 = phi i8 [ 0, %.thread269 ], [ %.sroa.020.0.i, %.thread.i ], [ 0, %bb.av ], [ 0, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.70.1263), "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !211
  %i.kt = icmp samesign eq i64 %.sroa.11.0.copyload, 0
  br i1 %i.kt, label %bb.di, label %bb.df

bb.df:                                            ; preds = %.thread251
  %i.ku = load i8, ptr %.sroa.7.0.copyload, align 1, !noalias !230, !noundef !6 ; 5 uses
  %i.kv = icmp sgt i8 %i.ku, -1
  br i1 %i.kv, label %bb.dg, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit12.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit12.i: ; preds = %bb.df
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 1
  %i.kx = and i8 %i.ku, 31
  %i.ky = zext nneg i8 %i.kx to i32               ; 3 uses
  %i.kz = icmp samesign ne i64 %.sroa.11.0.copyload, 1
  call void @llvm.assume(i1 %i.kz)
  %i.la = load i8, ptr %i.kw, align 1, !noalias !230, !noundef !6
  %i.lb = shl nuw nsw i32 %i.ky, 6
  %i.lc = and i8 %i.la, 63
  %i.ld = zext nneg i8 %i.lc to i32               ; 2 uses
  %i.le = or disjoint i32 %i.lb, %i.ld
  %i.lf = icmp samesign ugt i8 %i.ku, -33
  br i1 %i.lf, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit14.i, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.lg = zext nneg i8 %i.ku to i32
  br label %bb.dh

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit14.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit12.i
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 2
  %i.li = icmp samesign ne i64 %.sroa.11.0.copyload, 2
  call void @llvm.assume(i1 %i.li)
  %i.lj = load i8, ptr %i.lh, align 1, !noalias !230, !noundef !6
  %i.lk = shl nuw nsw i32 %i.ld, 6
  %i.ll = and i8 %i.lj, 63
  %i.lm = zext nneg i8 %i.ll to i32
  %i.ln = or disjoint i32 %i.lk, %i.lm            ; 2 uses
  %i.lo = shl nuw nsw i32 %i.ky, 12
  %i.lp = or disjoint i32 %i.ln, %i.lo
  %i.lq = icmp samesign ugt i8 %i.ku, -17
  br i1 %i.lq, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit16.i, label %bb.dh

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit16.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit14.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 3
  %i.ls = icmp samesign ne i64 %.sroa.11.0.copyload, 3
  call void @llvm.assume(i1 %i.ls)
  %i.lt = load i8, ptr %i.lr, align 1, !noalias !230, !noundef !6
  %i.lu = shl nuw nsw i32 %i.ky, 18
  %i.lv = and i32 %i.lu, 1835008
  %i.lw = shl nuw nsw i32 %i.ln, 6
  %i.lx = and i8 %i.lt, 63
  %i.ly = zext nneg i8 %i.lx to i32
  %i.lz = or disjoint i32 %i.lw, %i.ly
  %i.ma = or disjoint i32 %i.lz, %i.lv
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit12.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit16.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.lp, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit14.i ], [ %i.ma, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit16.i ], [ %i.le, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit12.i ], [ %i.lg, %bb.dg ] ; 3 uses
  %i.mb = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.mb)
  %i.mc = icmp eq i32 %.sroa.4.0.i.ph, 116
  br i1 %i.mc, label %bb.dj, label %bb.dk

bb.di:                                            ; preds = %.thread251
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #17
          to label %bb.c unwind label %.loopexit.split-lp

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %.sroa.0175.1267, ptr %i.v, align 8
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 9 uses
  store i64 %.sroa.24.1266, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 7 uses
  store i64 %.sroa.43.1265, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 4 uses
  store ptr %i.ca, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 4 uses
  store i64 %i.cf, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  store ptr %.sroa.70.1263, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  store i64 %.sroa.74.1262, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 2 uses
  store i8 %.sroa.84.1261, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.11186.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.12.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.13.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.11186.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.12.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.13.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 %.sroa.4.0.i.ph, ptr %i.s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsk_NtCskKLDkoKarTP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @21, ptr noundef nonnull %i.r)
          to label %bb.el unwind label %.loopexit.split-lp

bb.dl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit147, %bb.dj
  %i.me = phi i64 [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit147 ], [ %.sroa.0175.1267, %bb.dj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  switch i64 %i.me, label %default.unreachable [
    i64 0, label %bb.dm
    i64 1, label %bb.dn
    i64 2, label %bb.do
  ]

default.unreachable:                              ; preds = %bb.dl, %bb.ez, %bb.es
  unreachable

bb.dm:                                            ; preds = %bb.dl
  %i.mf = load i64, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !noundef !6
  %i.mg = load i64, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !noundef !6
  %.not3.i = icmp ult i64 %i.mf, %i.mg
  br i1 %.not3.i, label %bb.dp, label %_RNvXs_NtNtCseHTIzroA4w0_6object4read7archiveNtB4_21ArchiveMemberIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit

bb.dn:                                            ; preds = %bb.dl
  %i.mh = load i64, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !noundef !6 ; 2 uses
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %_RNvXs_NtNtCseHTIzroA4w0_6object4read7archiveNtB4_21ArchiveMemberIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit, label %bb.ds

bb.do:                                            ; preds = %bb.dl
  %i.mj = load i64, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !noundef !6
  %i.mk = load i64, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !noundef !6
  %.not.i129 = icmp ult i64 %i.mj, %i.mk
  br i1 %.not.i129, label %bb.ea, label %_RNvXs_NtNtCseHTIzroA4w0_6object4read7archiveNtB4_21ArchiveMemberIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit

bb.dp:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !233
  %i.ml = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !nonnull !6, !noundef !6
  %i.mm = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !noundef !6
  %i.mn = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !nonnull !6, !noundef !6
  %i.mo = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !noundef !6
  %i.mp = load i8, ptr %.sroa.6.0..sroa_idx, align 8, !range !10, !alias.scope !231, !noalias !232, !noundef !6
  %i.mq = trunc nuw i8 %i.mp to i1
  invoke fastcc void @_RINvMs0_NtNtCseHTIzroA4w0_6object4read7archiveNtB6_13ArchiveMember5parseRShECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ml, i64 noundef %i.mm, ptr noalias nofree noundef align 8 dereferenceable(8) %.sroa.01.sroa.2.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mn, i64 noundef %i.mo, i1 noundef zeroext %i.mq)
          to label %.noexc138 unwind label %.loopexit

.noexc138:                                        ; preds = %bb.dp
  %i.mr = load i64, ptr %i.d, align 8, !range !11, !noalias !233, !noundef !6 ; 2 uses
  %.not4.i = icmp eq i64 %i.mr, -1
  br i1 %.not4.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dr, %.noexc138
  %.sroa.11186.0.copyload190 = load ptr, ptr %.sroa.11186.0..sroa_idx189, align 8, !noalias !231
  %.sroa.12.0.copyload194 = load i64, ptr %.sroa.12.0..sroa_idx193, align 8, !noalias !231
  %.sroa.13.0.copyload198 = load i64, ptr %.sroa.13.0..sroa_idx197, align 8, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !233
  br label %bb.ed

bb.dr:                                            ; preds = %.noexc138
  %i.ms = load i64, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !noundef !6
  store i64 %i.ms, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !231, !noalias !232
  br label %bb.dq

bb.ds:                                            ; preds = %bb.dn
  %i.mt = load ptr, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !nonnull !6, !noundef !6 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 20
  %i.mv = add i64 %i.mh, -1
  store ptr %i.mu, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !captures !229
  store i64 %i.mv, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !231, !noalias !232
  %i.mw = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !nonnull !6, !noundef !6 ; 3 uses
  %i.mx = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !noundef !6 ; 5 uses
  %i.my = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.mt, i64 noundef 20, i32 noundef 10)
          to label %.noexc139 unwind label %.loopexit ; 2 uses

.noexc139:                                        ; preds = %bb.ds
  %i.mz = extractvalue { i64, i64 } %i.my, 0
  %i.na = trunc nuw i64 %i.mz to i1
  br i1 %i.na, label %bb.dt, label %.loopexit300

bb.dt:                                            ; preds = %.noexc139
  %i.nb = extractvalue { i64, i64 } %i.my, 1      ; 4 uses
  %i.nc = icmp ult i64 %i.mx, %i.nb
  %i.nd = sub nuw nsw i64 %i.mx, %i.nb
  %.not.i.i.i.i.i.i131 = icmp samesign ult i64 %i.nd, 112
  %or.cond.i.i.i.i.i132 = select i1 %i.nc, i1 true, i1 %.not.i.i.i.i.i.i131
  br i1 %or.cond.i.i.i.i.i132, label %.loopexit300, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.nb ; 2 uses
  %i.nf = add nuw i64 %i.nb, 112                  ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 108
  %i.nh = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ng, i64 noundef 4, i32 noundef 10)
          to label %.noexc140 unwind label %.loopexit ; 2 uses

.noexc140:                                        ; preds = %bb.du
  %i.ni = extractvalue { i64, i64 } %i.nh, 0
  %i.nj = trunc nuw i64 %i.ni to i1
  br i1 %i.nj, label %bb.dv, label %.loopexit300

bb.dv:                                            ; preds = %.noexc140
  %i.nk = extractvalue { i64, i64 } %i.nh, 1      ; 4 uses
  %i.nl = icmp eq i64 %i.nk, 0
  br i1 %i.nl, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.nm = sub nuw nsw i64 %i.mx, %i.nf
  %.not.i.i.i.i.i133 = icmp ugt i64 %i.nk, %i.nm
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.nf
  br i1 %.not.i.i.i.i.i133, label %.loopexit300, label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.nn, %bb.dw ], [ inttoptr (i64 1 to ptr), %bb.dv ]
  %i.no = add nuw i64 %i.nk, %i.nf                ; 2 uses
  %i.np = and i64 %i.no, 1
  %spec.select.i.i.i134 = add nuw i64 %i.np, %i.no ; 3 uses
  %i.nq = icmp ult i64 %i.mx, %spec.select.i.i.i134
  %i.nr = sub nuw nsw i64 %i.mx, %spec.select.i.i.i134
  %.not.i.i53.i.i.i135 = icmp samesign ult i64 %i.nr, 2
  %or.cond.i54.i.i.i136 = select i1 %i.nq, i1 true, i1 %.not.i.i53.i.i.i135
  br i1 %or.cond.i54.i.i.i136, label %.loopexit300, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mw, i64 %spec.select.i.i.i134
  %i.nt = load i16, ptr %i.ns, align 1, !alias.scope !234, !noalias !235, !noundef !6
  %.not.i.i.i137 = icmp eq i16 %i.nt, 2656
  br i1 %.not.i.i.i137, label %bb.dz, label %.loopexit300

bb.dz:                                            ; preds = %bb.dy
  %i.nu = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ne, i64 noundef 20, i32 noundef 10)
          to label %.noexc141 unwind label %.loopexit

.noexc141:                                        ; preds = %bb.dz
  %i.nv = extractvalue { i64, i64 } %i.nu, 0
  %i.nw = trunc nuw i64 %i.nv to i1
  br i1 %i.nw, label %.thread293, label %.loopexit300

.thread293:                                       ; preds = %.noexc141
  %i.nx = ptrtoint ptr %.sroa.0.0.i.i.i.i.i to i64
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCseHTIzroA4w0_6object4read7archive13ArchiveMemberNtBL_5ErrorE6unwrapCs54MM5Fk6r0b_2ar.exit

bb.ea:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !233
  %i.ny = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !nonnull !6, !noundef !6
  %i.nz = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !noundef !6
  invoke fastcc void @_RINvMs0_NtNtCseHTIzroA4w0_6object4read7archiveNtB6_13ArchiveMember9parse_zosRShECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ny, i64 noundef %i.nz, ptr noalias nofree noundef align 8 dereferenceable(8) %.sroa.01.sroa.2.0..sroa_idx)
          to label %.noexc142 unwind label %.loopexit

.noexc142:                                        ; preds = %bb.ea
  %i.oa = load i64, ptr %i.c, align 8, !range !11, !noalias !233, !noundef !6 ; 2 uses
  %.not1.i = icmp eq i64 %i.oa, -1
  br i1 %.not1.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ec, %.noexc142
  %.sroa.11186.0.copyload188 = load ptr, ptr %.sroa.11186.0..sroa_idx187, align 8, !noalias !231
  %.sroa.12.0.copyload192 = load i64, ptr %.sroa.12.0..sroa_idx191, align 8, !noalias !231
  %.sroa.13.0.copyload196 = load i64, ptr %.sroa.13.0..sroa_idx195, align 8, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !233
  br label %bb.ed

bb.ec:                                            ; preds = %.noexc142
  %i.ob = load i64, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !231, !noalias !232, !noundef !6
  store i64 %i.ob, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !231, !noalias !232
  br label %bb.eb

bb.ed:                                            ; preds = %bb.dq, %bb.eb
  %.sroa.13.0.ph = phi i64 [ %.sroa.13.0.copyload198, %bb.dq ], [ %.sroa.13.0.copyload196, %bb.eb ]
  %.sroa.12.0.ph = phi i64 [ %.sroa.12.0.copyload194, %bb.dq ], [ %.sroa.12.0.copyload192, %bb.eb ] ; 2 uses
  %.sroa.11186.0.ph = phi ptr [ %.sroa.11186.0.copyload190, %bb.dq ], [ %.sroa.11186.0.copyload188, %bb.eb ]
  %.sroa.0183.0.ph = phi i64 [ %i.mr, %bb.dq ], [ %i.oa, %bb.eb ]
  %i.oc = icmp eq i64 %.sroa.0183.0.ph, -1
  br i1 %i.oc, label %.loopexit300, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCseHTIzroA4w0_6object4read7archive13ArchiveMemberNtBL_5ErrorE6unwrapCs54MM5Fk6r0b_2ar.exit, !prof !236

.loopexit300:                                     ; preds = %bb.ed, %.noexc141, %bb.dy, %bb.dx, %bb.dw, %.noexc140, %bb.dt, %.noexc139
  %.sroa.11186.0.ph292 = phi ptr [ @1, %.noexc141 ], [ @5, %.noexc139 ], [ @4, %bb.dt ], [ @0, %.noexc140 ], [ @2, %bb.dx ], [ @2, %bb.dy ], [ @3, %bb.dw ], [ %.sroa.11186.0.ph, %bb.ed ] ; 2 uses
  %.sroa.12.0.ph291 = phi i64 [ 46, %.noexc141 ], [ 42, %.noexc139 ], [ 37, %bb.dt ], [ 42, %.noexc140 ], [ 34, %bb.dx ], [ 34, %bb.dy ], [ 35, %bb.dw ], [ %.sroa.12.0.ph, %bb.ed ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11186.0.ph292) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !237
  store ptr %.sroa.11186.0.ph292, ptr %i.q, align 8, !noalias !237
  %i.od = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.12.0.ph291, ptr %i.od, align 8, !noalias !237
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit300
  unreachable

_RNvXs_NtNtCseHTIzroA4w0_6object4read7archiveNtB4_21ArchiveMemberIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit: ; preds = %bb.do, %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.el, %_RNvXs_NtNtCseHTIzroA4w0_6object4read7archiveNtB4_21ArchiveMemberIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %bb.em unwind label %bb.aa

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCseHTIzroA4w0_6object4read7archive13ArchiveMemberNtBL_5ErrorE6unwrapCs54MM5Fk6r0b_2ar.exit: ; preds = %bb.ed, %.thread293
  %.sroa.12.0.ph299 = phi i64 [ %i.nx, %.thread293 ], [ %.sroa.12.0.ph, %bb.ed ]
  %.sroa.13.0.ph298 = phi i64 [ %i.nk, %.thread293 ], [ %.sroa.13.0.ph, %bb.ed ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.oe = inttoptr i64 %.sroa.12.0.ph299 to ptr
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.oe, i64 noundef %.sroa.13.0.ph298)
          to label %bb.ef unwind label %.loopexit

bb.ef:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCseHTIzroA4w0_6object4read7archive13ArchiveMemberNtBL_5ErrorE6unwrapCs54MM5Fk6r0b_2ar.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.u, ptr %i.t, align 8
  store ptr @_RNvXsb_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs54MM5Fk6r0b_2ar, ptr %.sroa.454.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @20, ptr noundef nonnull %i.t)
          to label %bb.ei unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.of = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val99 = load i64, ptr %i.u, align 8, !range !9, !noundef !6 ; 2 uses
  %i.og = icmp sgt i64 %.val99, 0
  br i1 %i.og, label %bb.eh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit

bb.eh:                                            ; preds = %bb.eg
  %.val100 = load ptr, ptr %i.md, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val100, i64 noundef %.val99, i64 noundef range(i64 1, -9223372036854775807) 1) #14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit

bb.ei:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val97 = load i64, ptr %i.u, align 8, !range !9, !noundef !6 ; 2 uses
  %i.oh = icmp sgt i64 %.val97, 0
  br i1 %i.oh, label %bb.ej, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit147

bb.ej:                                            ; preds = %bb.ei
  %.val98 = load ptr, ptr %i.md, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val98, i64 noundef %.val97, i64 noundef range(i64 1, -9223372036854775807) 1) #14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit147

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit147: ; preds = %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.pre = load i64, ptr %i.v, align 8, !range !238, !alias.scope !231, !noalias !232
  br label %bb.dl

bb.ek:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit, %bb.er, %bb.ey
  %i.oi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.el:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ee

bb.em:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.oj = call noundef i32 @close(i32 noundef %i.bl) #14 ; 0 uses
  %.val88 = load i64, ptr %i.af, align 8          ; 2 uses
  %i.ok = icmp eq i64 %.val88, 0
  br i1 %i.ok, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit148, label %bb.en

bb.en:                                            ; preds = %bb.em
  %.val89 = load ptr, ptr %i.bb, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val89, i64 noundef %.val88, i64 noundef range(i64 1, -9223372036854775807) 1) #14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit148

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit148: ; preds = %bb.en, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ol = icmp eq i64 %i.av, 0
  br i1 %i.ol, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit149, label %bb.eo

bb.eo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit148
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 1) #14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit149

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit149: ; preds = %bb.eo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit148
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !245, !nonnull !6, !noundef !6 ; 3 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !245, !nonnull !6, !noundef !6 ; 2 uses
  %i.om = ptrtoint ptr %.val1.i.i.i.i.i.i to i64
  %i.on = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.oo = sub nuw i64 %i.om, %i.on
  %i.op = udiv exact i64 %i.oo, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.oq = icmp eq ptr %.val1.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  br i1 %i.oq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit149, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.os, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit149 ] ; 2 uses
  %i.or = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.os = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.or, align 8, !alias.scope !246, !noalias !245 ; 2 uses
  %i.ot = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.ot, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ou = getelementptr i8, ptr %i.or, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.ou, align 8, !alias.scope !246, !noalias !245, !nonnull !6, !noundef !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #14, !noalias !247
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i.i: ; preds = %bb.ep, %.lr.ph.i.i.i.i.i.i.i
  %i.ov = icmp eq i64 %i.os, %i.op
  br i1 %i.ov, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs54MM5Fk6r0b_2ar.exit149
  %i.ow = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ox = load i64, ptr %i.ow, align 8, !alias.scope !245, !noundef !6 ; 2 uses
  %i.oy = icmp eq i64 %i.ox, 0
  br i1 %i.oy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEECs54MM5Fk6r0b_2ar.exit166, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEECs54MM5Fk6r0b_2ar.exit166.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEECs54MM5Fk6r0b_2ar.exit166.sink.split: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i165
  %.sink322 = phi i64 [ %i.qf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i165 ], [ %i.ox, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i ]
  %i.oz = load ptr, ptr %i.al, align 8, !nonnull !6, !noundef !6
  %i.pa = mul nuw i64 %.sink322, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oz, i64 noundef %i.pa, i64 noundef range(i64 1, -9223372036854775807) 8) #14, !noalias !6
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEECs54MM5Fk6r0b_2ar.exit166

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEECs54MM5Fk6r0b_2ar.exit166: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsEECs54MM5Fk6r0b_2ar.exit166.sink.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs54MM5Fk6r0b_2ar.exit.i.i.i.i.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  ret void

bb.eq:                                            ; preds = %.thread237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs54MM5Fk6r0b_2ar.exit151 unwind label %bb.aa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs54MM5Fk6r0b_2ar.exit151: ; preds = %bb.eq, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.pb = call noundef i32 @close(i32 noundef %i.bl) #14 ; 0 uses
  br label %bb.ew

bb.er:                                            ; preds = %bb.ab
  %i.pc = landingpad { ptr, i32 }
          cleanup
  %.val104 = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs54MM5Fk6r0b_2ar(ptr nonnull %.val104) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs54MM5Fk6r0b_2ar.exit unwind label %bb.ek

bb.es:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.val103 = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.pd = ptrtoint ptr %.val103 to i64            ; 2 uses
  %i.pe = and i64 %i.pd, 3
  switch i64 %i.pe, label %default.unreachable [
    i64 2, label %bb.ev
    i64 3, label %bb.et
    i64 0, label %bb.ev
    i64 1, label %bb.eu
  ], !prof !8

bb.et:                                            ; preds = %bb.es
  %i.pf = icmp ult ptr %.val103, inttoptr (i64 188978561024 to ptr)
  %i.pg = and i64 %i.pd, 1095216660480
  %i.ph = icmp ne i64 %i.pg, 1095216660480
  call void @llvm.assume(i1 %i.pf)
  call void @llvm.assume(i1 %i.ph)
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.pi = getelementptr i8, ptr %.val103, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pi) ]
  %i.pj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.pi, ptr %i.pj, align 8, !alias.scope !248
  store i8 3, ptr %i.b, align 8, !alias.scope !248
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pj)
          to label %bb.ev unwind label %bb.aa

bb.ev:                                            ; preds = %bb.et, %bb.es, %bb.es, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs54MM5Fk6r0b_2ar.exit151

bb.ew:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs54MM5Fk6r0b_2ar.exit151, %bb.fc
  %.val84 = load i64, ptr %i.af, align 8          ; 2 uses
  %i.pk = icmp eq i64 %.val84, 0
end_hunk_1
