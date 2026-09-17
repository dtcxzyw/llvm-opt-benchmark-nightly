Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.08?download=true
inline.NumInlined: 373
inline.NumDeleted: 181
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEECsjceHdiZFn9b_13glyphs2fontir:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !214, !nonnull !5, !noundef !5
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !214
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(200) %i.g) #24
          to label %bb.f unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(200) %i.h)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsjceHdiZFn9b_13glyphs2fontir4toir11add_to_pathINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEB4_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef nonnull readonly captures(address) %2, ptr nofree noundef nonnull readnone captures(address) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = icmp eq ptr %2, %3
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.sroa.0.06 = phi ptr [ %i.c, %bb.i ], [ %2, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !10, !noundef !5
  %i.f = load double, ptr %.sroa.0.06, align 8, !noundef !5 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8
  %i.h = load double, ptr %i.g, align 8, !noundef !5 ; 4 uses
  switch i8 %i.e, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.f
  ]

._crit_edge:                                      ; preds = %bb.i, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %._crit_edge
  ret void

default.unreachable9:                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  call void @_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder7line_toTddEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, double noundef %i.f, double noundef %i.h)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph
  call void @_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder8offcurveTddEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, double noundef %i.f, double noundef %i.h)
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %.lr.ph
  call void @_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder8curve_toTddEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, double noundef %i.f, double noundef %i.h)
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph, %.lr.ph
  call void @_RINvMs_NtNtCs3v5ql5U6hxj_6fontir2ir12path_builderNtB5_16GlyphPathBuilder9qcurve_toTddEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, double noundef %i.f, double noundef %i.h)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.i = load i64, ptr %i.a, align 8, !range !11, !noundef !5
  %.not2 = icmp eq i64 %i.i, -1
  br i1 %.not2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = icmp eq ptr %i.c, %3
  br i1 %i.j, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsjceHdiZFn9b_13glyphs2fontir4toir11to_ir_paintNtCs9NoVXegZYB5_8smol_str7SmolStrEB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) %1, i64 %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [72 x i8], align 8                ; 11 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [40 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %5, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !7, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.z = load i64, ptr %i.y, align 8, !noundef !5 ; 4 uses
  store i64 %i.z, ptr %i.t, align 8
  %i.aa = icmp eq i64 %i.z, 65535
  br i1 %i.aa, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ab = load i64, ptr %5, align 8, !range !7, !noundef !5
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.ac, label %bb.ad

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.ad = tail call noundef dereferenceable_or_null(5) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 5, 81) 5, i64 noundef range(i64 1, 9) 1) #25 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.invoke, label %bb.g, !prof !12

bb.e:                                             ; preds = %bb.b
  %.not84 = icmp eq ptr %1, null
  br i1 %.not84, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.invoke146, %.invoke, %bb.ao, %bb.am
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body88

bb.g:                                             ; preds = %bb.d
  store i40 0, ptr %i.ad, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.r, %bb.g
  %.sink = phi ptr [ %i.ak, %bb.r ], [ %i.ad, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.ah, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.s

bb.i:                                             ; preds = %bb.e
  %i.ai = icmp ult i64 %i.z, %2
  br i1 %i.ai, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.v unwind label %bb.z

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.t, ptr %i.n, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXse_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @0, ptr noundef nonnull %i.n)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.z
  %6 = load <4 x i64>, ptr %i.aj, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.ak = tail call noundef dereferenceable_or_null(5) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 5, 81) 5, i64 noundef range(i64 1, 9) 1) #25 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.invoke, label %bb.r, !prof !12

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  store i8 12, ptr %i.p, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvMs0_NtCs3v5ql5U6hxj_6fontir5errorNtB6_8BadGlyph3newNtCs9NoVXegZYB5_8smol_str7SmolStrNtB6_12BadGlyphKindECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %.sroa.49.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.m

bb.m:                                             ; preds = %bb.x, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjceHdiZFn9b_13glyphs2fontir.exit
  store i64 -9223372036854775806, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit100

bb.n:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.ao = load i8, ptr %i.q, align 8, !range !8, !alias.scope !269, !noundef !5
  %switch.i.i = icmp samesign ult i8 %i.ao, 25
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit121, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !272, !nonnull !5, !noundef !5
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !272
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit121

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ap) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit121 unwind label %bb.q

bb.q:                                             ; preds = %bb.bc, %bb.ba, %bb.ar, %bb.ab, %bb.p
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.r:                                             ; preds = %bb.l
  %7 = trunc <4 x i64> %6 to <4 x i8>
  %8 = bitcast <4 x i8> %7 to i32
  %.sroa.071.1.insert.ext = zext i32 %8 to i40
  %.sroa.071.1.insert.shift = shl nuw i40 %.sroa.071.1.insert.ext, 8
  %.sroa.071.1.insert.insert = or disjoint i40 %.sroa.071.1.insert.shift, 1
  store i40 %.sroa.071.1.insert.insert, ptr %i.ak, align 1
  br label %bb.h

bb.s:                                             ; preds = %bb.au, %bb.ax, %bb.ae, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.au = load i8, ptr %3, align 8, !range !8, !alias.scope !275, !noundef !5
  %switch.i.i99 = icmp samesign ult i8 %i.au, 25
  br i1 %switch.i.i99, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit100, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !278, !nonnull !5, !noundef !5
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !278
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit100

bb.u:                                             ; preds = %bb.t
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.av) #23
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit100

bb.v:                                             ; preds = %bb.j
  %i.az = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !13, !noundef !5 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ba, label %bb.w, label %bb.x, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.be = load i64, ptr %i.bd, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bc, i64 %i.be) #26
          to label %bb.y unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bf = load ptr, ptr %i.bd, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bg = icmp samesign ugt i64 %i.bc, 31
  tail call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bf, ptr noundef nonnull align 1 dereferenceable(32) @1, i64 32, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.bc, ptr %i.bh, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.bf, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 32, ptr %.sroa.545.0..sroa_idx, align 8
  store i8 12, ptr %i.r, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvMs0_NtCs3v5ql5U6hxj_6fontir5errorNtB6_8BadGlyph3newNtCs9NoVXegZYB5_8smol_str7SmolStrNtB6_12BadGlyphKindECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %.sroa.47.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.m

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit100: ; preds = %bb.u, %bb.t, %bb.s, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjceHdiZFn9b_13glyphs2fontir.exit107, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjceHdiZFn9b_13glyphs2fontir.exit110, %bb.m
  ret void

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.w, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.bi = load i8, ptr %i.s, align 8, !range !8, !alias.scope !281, !noundef !5
  %switch.i.i101 = icmp samesign ult i8 %i.bi, 25
  br i1 %switch.i.i101, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit121, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !284, !nonnull !5, !noundef !5
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !284
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit121

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bj) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit121 unwind label %bb.q

bb.ac:                                            ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = load <4 x i64>, ptr %i.bn, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.bo = tail call noundef dereferenceable_or_null(5) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 5, 81) 5, i64 noundef range(i64 1, 9) 1) #25 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.invoke, label %bb.ae, !prof !12

.invoke:                                          ; preds = %bb.d, %bb.ac, %bb.l
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 5) #26
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.ad:                                            ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.br, -1
  br i1 %.not, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %10 = trunc <4 x i64> %9 to <4 x i8>
  %11 = bitcast <4 x i8> %10 to i32
  %.sroa.073.1.insert.ext = zext i32 %11 to i40
  %.sroa.073.1.insert.shift = shl nuw i40 %.sroa.073.1.insert.ext, 8
  %.sroa.073.1.insert.insert = or disjoint i40 %.sroa.073.1.insert.shift, 1
  store i40 %.sroa.073.1.insert.insert, ptr %i.bo, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bo, ptr %i.bt, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.af:                                            ; preds = %bb.ad
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %.not79 = icmp eq i64 %i.bx, 0
  br i1 %.not79, label %.invoke146, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.v, ptr %i.b, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2B_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB6_15LayerAttributesNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.u, ptr %i.by, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs1qcNTItuk7F_13glyphs_reader4font15ShapeAttributesNtB6_5Debug3fmtCsjceHdiZFn9b_13glyphs2fontir, ptr %.sroa.465.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @8, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjceHdiZFn9b_13glyphs2fontir.exit107 unwind label %bb.ay

bb.ah:                                            ; preds = %bb.af
  %i.bz = load double, ptr %i.bv, align 8, !noundef !5 ; 3 uses
  %.not80 = icmp eq i64 %i.bx, 1
  br i1 %.not80, label %.invoke146, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !noundef !5 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !5 ; 2 uses
  %.not81 = icmp eq i64 %i.cf, 0
  br i1 %.not81, label %.invoke146, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cg = load double, ptr %i.cd, align 8, !noundef !5
  %.not82 = icmp eq i64 %i.cf, 1
  br i1 %.not82, label %.invoke146, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !5
  switch i64 %i.ck, label %bb.an [
    i64 6, label %bb.al
    i64 0, label %bb.ao
  ]

.invoke146:                                       ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af
  %i.cl = phi i64 [ 0, %bb.ai ], [ 1, %bb.ah ], [ 0, %bb.af ], [ 1, %bb.aj ] ; 2 uses
  %i.cm = phi ptr [ @5, %bb.ai ], [ @4, %bb.ah ], [ @3, %bb.af ], [ @6, %bb.aj ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #26
          to label %.cont147 unwind label %bb.f

.cont147:                                         ; preds = %.invoke146
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 1
  %i.cq = xor i32 %i.cp, 1668442467
  %i.cr = getelementptr i8, ptr %i.co, i64 4
  %i.cs = load i16, ptr %i.cr, align 1
  %i.ct = zext i16 %i.cs to i32
  %i.cu = xor i32 %i.ct, 25964
  %i.cv = or i32 %i.cq, %i.cu
  %i.cw = icmp ne i32 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.dc = load i64, ptr %i.db, align 8, !noundef !5
  %i.dd = getelementptr inbounds nuw [40 x i8], ptr %i.da, i64 %i.dc
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3v5ql5U6hxj_6fontir2ir9ColorStopEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2j_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir17to_ir_color_stops0EE9from_iterB4i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 %i.da, ptr noundef nonnull readonly %i.dd)
          to label %_RNvNtCsjceHdiZFn9b_13glyphs2fontir4toir17to_ir_color_stops.exit unwind label %bb.f

bb.an:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.de, ptr %i.f, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.459.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @7, ptr noundef nonnull %i.f)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjceHdiZFn9b_13glyphs2fontir.exit110 unwind label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.di = load i64, ptr %i.dh, align 8, !noundef !5
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.di
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3v5ql5U6hxj_6fontir2ir9ColorStopEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2j_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font9ColorStopENCNvNtCsjceHdiZFn9b_13glyphs2fontir4toir17to_ir_color_stops0EE9from_iterB4i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 %i.dg, ptr noundef nonnull readonly %i.dj)
          to label %_RNvNtCsjceHdiZFn9b_13glyphs2fontir4toir17to_ir_color_stops.exit112 unwind label %bb.f

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjceHdiZFn9b_13glyphs2fontir.exit110: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i8 12, ptr %i.h, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvMs0_NtCs3v5ql5U6hxj_6fontir5errorNtB6_8BadGlyph3newNtCs9NoVXegZYB5_8smol_str7SmolStrNtB6_12BadGlyphKindECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %.sroa.430.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -9223372036854775806, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit100

bb.ap:                                            ; preds = %bb.an
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.dm = load i8, ptr %i.i, align 8, !range !8, !alias.scope !287, !noundef !5
  %switch.i.i113 = icmp samesign ult i8 %i.dm, 25
  br i1 %switch.i.i113, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit121, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !290, !nonnull !5, !noundef !5
  %i.dp = atomicrmw sub ptr %i.do, i64 1 release, align 8, !noalias !290
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.ar, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit121

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dn) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir.exit121 unwind label %bb.q

_RNvNtCsjceHdiZFn9b_13glyphs2fontir4toir17to_ir_color_stops.exit112: ; preds = %bb.ao
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store double %i.bz, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store double %i.cb, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store double %i.cg, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store double %i.ci, ptr %i.dv, align 8
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dw = invoke fastcc noundef ptr @_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 80)
          to label %bb.au unwind label %bb.as, !noalias !291 ; 2 uses

bb.as:                                            ; preds = %_RNvNtCsjceHdiZFn9b_13glyphs2fontir4toir17to_ir_color_stops.exit112
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir19PaintLinearGradientECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k) #24
          to label %.body88 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.au:                                            ; preds = %_RNvNtCsjceHdiZFn9b_13glyphs2fontir4toir17to_ir_color_stops.exit112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dw, ptr %i.ea, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

_RNvNtCsjceHdiZFn9b_13glyphs2fontir4toir17to_ir_color_stops.exit: ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store double %i.bz, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store double %i.cb, ptr %i.ec, align 8
end_hunk_0
