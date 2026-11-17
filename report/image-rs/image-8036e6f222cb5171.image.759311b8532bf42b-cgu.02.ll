Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.02?download=true
inline.NumInlined: 1033
inline.NumDeleted: 460
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXs1_NtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB5_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder16read_image_boxedB9_:switch.lookup
  br label %bb.bz

bb.bz:                                            ; preds = %bb.el, %bb.eh, %bb.ed, %bb.dz, %bb.dv, %bb.dr, %bb.dn, %bb.dj, %bb.df, %bb.cy, %bb.cu, %bb.cg, %bb.by
  store i8 -1, ptr %0, align 8, !alias.scope !1444
  %i.ep = load i64, ptr %i.al, align 8, !range !33, !alias.scope !1466, !noundef !5
  %i.eq = icmp eq i64 %i.ep, 2
  br i1 %i.eq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit115.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(512) %i.al)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit115.i unwind label %bb.em, !noalias !1444

bb.cb:                                            ; preds = %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fx, %bb.en, %bb.ei, %bb.ee, %bb.ea, %bb.dw, %bb.ds, %bb.do, %bb.dk, %bb.dg, %bb.cz, %bb.cv, %bb.cn, %bb.ci, %.body122.i, %bb.bw, %bb.a
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !1444
  unreachable

.body122.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ck, %bb.ci
  %.pn.i = phi { ptr, i32 } [ %i.fz, %bb.ci ], [ %i.ga, %bb.ck ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #29
          to label %.body.i unwind label %bb.cb, !noalias !1444

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cl, %bb.cf, %.noexc119.i, %bb.ce, %bb.cc, %bb.bv
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  br label %.body122.i

bb.cc:                                            ; preds = %bb.bu
  %i.es = lshr i32 %i.em, 3
  %i.et = and i32 %i.em, 7
  %.not76.i = icmp ne i32 %i.et, 0
  %i.eu = zext i1 %.not76.i to i32
  %.sroa.030.0.i = add nuw nsw i32 %i.es, %i.eu
  %i.ev = zext nneg i32 %.sroa.030.0.i to i64     ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !1446, !nonnull !5, !noundef !5 ; 2 uses
  %i.ey = zext i32 %i.em to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !1446, !noundef !5 ; 2 uses
  %i.fb = urem i64 %i.fa, %i.ev                   ; 2 uses
  %i.fc = sub nuw nsw i64 %i.fa, %i.fb            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fc
  %i.fe = urem i64 %3, %i.ey                      ; 2 uses
  %i.ff = sub nuw nsw i64 %3, %i.fe               ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1467
  store ptr %i.ex, ptr %i.b, align 8, !noalias !1468
  %.sroa.4163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.fc, ptr %.sroa.4163.0..sroa_idx.i, align 8, !noalias !1468
  %.sroa.5164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.fd, ptr %.sroa.5164.0..sroa_idx.i, align 8, !noalias !1468
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.fb, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1468
  %.sroa.7165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.ev, ptr %.sroa.7165.0..sroa_idx.i, align 8, !noalias !1468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1467
  store ptr %i.fg, ptr %i.a, align 8, !alias.scope !1469, !noalias !1470
  %.sroa.4167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.fe, ptr %.sroa.4167.0..sroa_idx.i, align 8, !alias.scope !1469, !noalias !1470
  %.sroa.5168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %.sroa.5168.0..sroa_idx.i, align 8, !alias.scope !1469, !noalias !1470
  %.sroa.6169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ff, ptr %.sroa.6169.0..sroa_idx.i, align 8, !alias.scope !1469, !noalias !1470
  %.sroa.7170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.ey, ptr %.sroa.7170.0..sroa_idx.i, align 8, !alias.scope !1469, !noalias !1470
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1444

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %i.ac, i64 96, i1 false), !noalias !1446
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ab, i64 80 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ab, i64 88 ; 2 uses
  %i.fj = load i64, ptr %i.fh, align 8, !alias.scope !1471, !noalias !1446, !noundef !5 ; 2 uses
  %i.fk = load i64, ptr %i.fi, align 8, !alias.scope !1471, !noalias !1446, !noundef !5
  %i.fl = icmp ult i64 %i.fj, %i.fk
  br i1 %i.fl, label %.lr.ph239.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph239.i:                                      ; preds = %bb.cd
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i, %.lr.ph239.i
  %i.fp = phi i64 [ %i.fj, %.lr.ph239.i ], [ %i.gc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i ] ; 3 uses
  %i.fq = add nuw i64 %i.fp, 1
  store i64 %i.fq, ptr %i.fh, align 8, !alias.scope !1471, !noalias !1446
  %i.fr = invoke { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ab, i64 noundef %i.fp)
          to label %.noexc119.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1444 ; 2 uses

.noexc119.i:                                      ; preds = %bb.ce
  %i.fs = extractvalue { ptr, i64 } %i.fr, 0      ; 2 uses
  %i.ft = extractvalue { ptr, i64 } %i.fr, 1
  %i.fu = invoke { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.fm, i64 noundef %i.fp)
          to label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1444 ; 2 uses

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.noexc119.i
  %i.fv = extractvalue { ptr, i64 } %i.fu, 0      ; 2 uses
  %i.fw = extractvalue { ptr, i64 } %i.fu, 1
  %.not77.i = icmp eq ptr %i.fs, null
  br i1 %.not77.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %bb.cf

bb.cf:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fv) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1446
  invoke void @_RNvNtCsa5QsYiPB8Gl_5image5utils11expand_bits(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i8 noundef 1, i32 noundef %i.em, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fs, i64 noundef %i.ft)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1444

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1446
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad)
          to label %bb.cg unwind label %bb.b, !noalias !1444

bb.cg:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1446
  br label %bb.bz

bb.ch:                                            ; preds = %bb.cf
  %i.fx = load ptr, ptr %i.fn, align 8, !noalias !1446, !nonnull !5, !noundef !5
  %i.fy = load i64, ptr %i.fo, align 8, !noalias !1446, !noundef !5
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.fv, i64 noundef %i.fw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fx, i64 noundef %i.fy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123)
          to label %bb.cj unwind label %bb.ci, !noalias !1444

bb.ci:                                            ; preds = %bb.ch
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #29
          to label %.body122.i unwind label %bb.cb, !noalias !1444

bb.cj:                                            ; preds = %bb.ch
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.cl unwind label %bb.ck, !noalias !1444

bb.ck:                                            ; preds = %bb.cj
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body122.i unwind label %bb.cm, !noalias !1444

bb.cl:                                            ; preds = %bb.cj
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1444

bb.cm:                                            ; preds = %bb.ck
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28, !noalias !1444
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1446
  %i.gc = load i64, ptr %i.fh, align 8, !alias.scope !1471, !noalias !1446, !noundef !5 ; 2 uses
  %i.gd = load i64, ptr %i.fi, align 8, !alias.scope !1471, !noalias !1446, !noundef !5
  %i.ge = icmp ult i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.ce, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

bb.cn:                                            ; preds = %.lr.ph243.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #29
          to label %.body.i unwind label %bb.cb, !noalias !1444

bb.co:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 24, i1 false), !noalias !1465
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !1446, !nonnull !5, !noundef !5 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !1446, !noundef !5
  %.idx245.i = and i64 %i.gj, -4                  ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.idx245.i
  %i.gl = icmp samesign eq i64 %.idx245.i, 0
  br i1 %i.gl, label %._crit_edge244.i, label %.lr.ph243.i

._crit_edge244.i:                                 ; preds = %bb.cq, %bb.co
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah)
          to label %bb.cu unwind label %bb.b, !noalias !1444

.lr.ph243.i:                                      ; preds = %bb.co, %bb.cq
  %.sroa.019.0241.i = phi ptr [ %i.gm, %bb.cq ], [ %i.gh, %bb.co ] ; 5 uses
  %.sroa.7.0240.i = phi i64 [ %i.hm, %bb.cq ], [ 0, %bb.co ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.019.0241.i, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1446
  %i.gn = load i8, ptr %.sroa.019.0241.i, align 1, !alias.scope !1472, !noalias !1444, !noundef !5
  %i.go = uitofp i8 %i.gn to float
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.019.0241.i, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !1472, !noalias !1444, !noundef !5
  %i.gr = uitofp i8 %i.gq to float
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.019.0241.i, i64 2
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !1472, !noalias !1444, !noundef !5
  %i.gu = uitofp i8 %i.gt to float
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.019.0241.i, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !alias.scope !1472, !noalias !1444, !noundef !5
  %i.gx = uitofp i8 %i.gw to float
  %i.gy = fdiv float %i.gx, 2.550000e+02
  %i.gz = fsub float 1.000000e+00, %i.gy          ; 3 uses
  %i.ha = fsub nnan float 2.550000e+02, %i.go
  %i.hb = fmul float %i.ha, %i.gz
  %i.hc = call i8 @llvm.fptoui.sat.i8.f32(float %i.hb)
  %i.hd = fsub nnan float 2.550000e+02, %i.gr
  %i.he = fmul float %i.hd, %i.gz
  %i.hf = call i8 @llvm.fptoui.sat.i8.f32(float %i.he)
  %i.hg = fsub nnan float 2.550000e+02, %i.gu
  %i.hh = fmul float %i.hg, %i.gz
  %i.hi = call i8 @llvm.fptoui.sat.i8.f32(float %i.hh)
  %.sroa.3.0.insert.ext.i.i = zext i8 %i.hi to i24
  %.sroa.3.0.insert.shift.i.i = shl nuw i24 %.sroa.3.0.insert.ext.i.i, 16
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.hf to i24
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i24 %.sroa.2.0.insert.ext.i.i, 8
  %.sroa.2.0.insert.insert.i.i = or disjoint i24 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = zext i8 %i.hc to i24
  %.sroa.0.0.insert.insert.i.i = or disjoint i24 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  store i24 %.sroa.0.0.insert.insert.i.i, ptr %i.ag, align 4, !noalias !1446
  %..i.i.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %3, i64 %.sroa.7.0240.i) ; 2 uses
  %i.hj = sub nuw nsw i64 %3, %..i.i.i.i          ; 2 uses
  %..i7.i.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.hj, i64 range(i64 0, -9223372036854775808) 3) ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 %..i.i.i.i
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.hk, i64 noundef %..i7.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %..i7.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
          to label %bb.cp unwind label %bb.cn, !noalias !1444

bb.cp:                                            ; preds = %.lr.ph243.i
  %i.hl = icmp samesign ugt i64 %i.hj, 2
  br i1 %i.hl, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.hm = add i64 %..i7.i.i.i, %.sroa.7.0240.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1446
  %i.hn = icmp eq ptr %i.gm, %i.gk
  br i1 %i.hn, label %._crit_edge244.i, label %.lr.ph243.i

bb.cr:                                            ; preds = %bb.cp
  store i8 9, ptr %0, align 8, !alias.scope !1444
  %.sroa.4191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @140, ptr %.sroa.4191.0..sroa_idx.i, align 8, !alias.scope !1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1446
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah)
          to label %bb.cs unwind label %bb.b, !noalias !1444

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1446
  br label %_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB2_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE17interleave_planesB6_.exit.i

_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB2_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE17interleave_planesB6_.exit.i: ; preds = %bb.ep, %bb.eo, %bb.de, %bb.cs, %bb.bp, %.noexc105.i, %.noexc104.i
  %.sroa.034.2.i = phi i1 [ true, %bb.ep ], [ true, %bb.eo ], [ true, %bb.de ], [ false, %bb.cs ], [ true, %.noexc104.i ], [ true, %.noexc105.i ], [ true, %bb.bp ] ; 2 uses
  %.sroa.031.2.i = phi i1 [ true, %bb.ep ], [ true, %bb.eo ], [ false, %bb.de ], [ true, %bb.cs ], [ true, %.noexc104.i ], [ true, %.noexc105.i ], [ true, %bb.bp ] ; 2 uses
  %i.ho = load i64, ptr %i.al, align 8, !range !33, !alias.scope !1473, !noundef !5
  %i.hp = icmp eq i64 %i.ho, 2
  br i1 %i.hp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit127.i, label %bb.ct

bb.ct:                                            ; preds = %_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB2_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE17interleave_planesB6_.exit.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(512) %i.al)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs53gkmrwjETj_4tiff7decoder7DecoderINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit127.i unwind label %bb.eq, !noalias !1444

bb.cu:                                            ; preds = %._crit_edge244.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1446
  br label %bb.bz

bb.cv:                                            ; preds = %bb.cw
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #29
          to label %.body.i unwind label %bb.cb, !noalias !1444

bb.cw:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false), !noalias !1465
  %i.hr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !1446, !nonnull !5, !noundef !5
  %i.ht = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !1446, !noundef !5
  %i.hv = shl nuw nsw i64 %i.hu, 1
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hs, i64 noundef %i.hv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124)
          to label %bb.cx unwind label %bb.cv, !noalias !1444

bb.cx:                                            ; preds = %bb.cw
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.cy unwind label %bb.b, !noalias !1444

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1446
  br label %bb.bz

bb.cz:                                            ; preds = %.lr.ph.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #29
          to label %.body.i unwind label %bb.cb, !noalias !1444

bb.da:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false), !noalias !1465
  %i.hx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !1446, !nonnull !5, !noundef !5 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ia = load i64, ptr %i.hz, align 8, !noalias !1446, !noundef !5
  %i.ib = shl nuw nsw i64 %i.ia, 1
  %.idx.i = and i64 %i.ib, 9223372036854775800    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.idx.i
  %i.id = icmp samesign eq i64 %.idx.i, 0
  br i1 %i.id, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.dc, %bb.da
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af)
          to label %bb.df unwind label %bb.b, !noalias !1444

.lr.ph.i:                                         ; preds = %bb.da, %bb.dc
  %.sroa.024.0237.i = phi ptr [ %i.ie, %bb.dc ], [ %i.hy, %bb.da ] ; 5 uses
  %.sroa.7157.0236.i = phi i64 [ %i.je, %bb.dc ], [ 0, %bb.da ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.024.0237.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1446
  %i.if = load i16, ptr %.sroa.024.0237.i, align 2, !alias.scope !1474, !noalias !1444, !noundef !5
  %i.ig = uitofp i16 %i.if to float
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.024.0237.i, i64 2
  %i.ii = load i16, ptr %i.ih, align 2, !alias.scope !1474, !noalias !1444, !noundef !5
  %i.ij = uitofp i16 %i.ii to float
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.024.0237.i, i64 4
  %i.il = load i16, ptr %i.ik, align 2, !alias.scope !1474, !noalias !1444, !noundef !5
  %i.im = uitofp i16 %i.il to float
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.024.0237.i, i64 6
  %i.io = load i16, ptr %i.in, align 2, !alias.scope !1474, !noalias !1444, !noundef !5
  %i.ip = uitofp i16 %i.io to float
  %i.iq = fdiv float %i.ip, 6.553500e+04
  %i.ir = fsub float 1.000000e+00, %i.iq          ; 3 uses
  %i.is = fsub nnan float 6.553500e+04, %i.ig
  %i.it = fmul float %i.is, %i.ir
  %i.iu = call i16 @llvm.fptoui.sat.i16.f32(float %i.it)
  %i.iv = fsub nnan float 6.553500e+04, %i.ij
  %i.iw = fmul float %i.iv, %i.ir
  %i.ix = call i16 @llvm.fptoui.sat.i16.f32(float %i.iw)
  %i.iy = fsub nnan float 6.553500e+04, %i.im
  %i.iz = fmul float %i.iy, %i.ir
  %i.ja = call i16 @llvm.fptoui.sat.i16.f32(float %i.iz)
  %.sroa.3.0.insert.ext.i128.i = zext i16 %i.ja to i48
  %.sroa.3.0.insert.shift.i129.i = shl nuw i48 %.sroa.3.0.insert.ext.i128.i, 32
  %.sroa.2.0.insert.ext.i130.i = zext i16 %i.ix to i48
  %.sroa.2.0.insert.shift.i131.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i130.i, 16
  %.sroa.2.0.insert.insert.i132.i = or disjoint i48 %.sroa.3.0.insert.shift.i129.i, %.sroa.2.0.insert.shift.i131.i
  %.sroa.0.0.insert.ext.i133.i = zext i16 %i.iu to i48
  %.sroa.0.0.insert.insert.i134.i = or disjoint i48 %.sroa.2.0.insert.insert.i132.i, %.sroa.0.0.insert.ext.i133.i
  store i48 %.sroa.0.0.insert.insert.i134.i, ptr %i.ae, align 8, !noalias !1446
  %..i.i.i135.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %3, i64 %.sroa.7157.0236.i) ; 2 uses
  %i.jb = sub nuw nsw i64 %3, %..i.i.i135.i       ; 2 uses
  %..i7.i.i136.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.jb, i64 range(i64 0, -9223372036854775808) 6) ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 %..i.i.i135.i
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.jc, i64 noundef %..i7.i.i136.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %..i7.i.i136.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
          to label %bb.db unwind label %bb.cz, !noalias !1444

bb.db:                                            ; preds = %.lr.ph.i
  %i.jd = icmp samesign ugt i64 %i.jb, 5
  br i1 %i.jd, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.je = add i64 %..i7.i.i136.i, %.sroa.7157.0236.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1446
  %i.jf = icmp eq ptr %i.ie, %i.ic
  br i1 %i.jf, label %._crit_edge.i, label %.lr.ph.i

bb.dd:                                            ; preds = %bb.db
  store i8 9, ptr %0, align 8, !alias.scope !1444
  %.sroa.4198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @140, ptr %.sroa.4198.0..sroa_idx.i, align 8, !alias.scope !1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1446
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af)
          to label %bb.de unwind label %bb.b, !noalias !1444

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1446
  br label %_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs4tiffINtB2_11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE17interleave_planesB6_.exit.i

bb.df:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1446
  br label %bb.bz

bb.dg:                                            ; preds = %bb.dh
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #29
          to label %.body.i unwind label %bb.cb, !noalias !1444

bb.dh:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1446
  %i.jh = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i64 24, i1 false), !noalias !1465
  %i.ji = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !noalias !1446, !nonnull !5, !noundef !5
  %i.jk = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !1446, !noundef !5
  %i.jm = shl nuw nsw i64 %i.jl, 2
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jj, i64 noundef %i.jm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125)
          to label %bb.di unwind label %bb.dg, !noalias !1444

bb.di:                                            ; preds = %bb.dh
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x)
          to label %bb.dj unwind label %bb.b, !noalias !1444

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1446
  br label %bb.bz

bb.dk:                                            ; preds = %bb.dl
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #29
          to label %.body.i unwind label %bb.cb, !noalias !1444

bb.dl:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1446
  %i.jo = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.jo, i64 24, i1 false), !noalias !1465
  %i.jp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !1446, !nonnull !5, !noundef !5
  %i.jr = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.js = load i64, ptr %i.jr, align 8, !noalias !1446, !noundef !5
  %i.jt = shl nuw nsw i64 %i.js, 3
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jq, i64 noundef %i.jt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126)
          to label %bb.dm unwind label %bb.dk, !noalias !1444

bb.dm:                                            ; preds = %bb.dl
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w)
          to label %bb.dn unwind label %bb.b, !noalias !1444

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1446
  br label %bb.bz

bb.do:                                            ; preds = %bb.dp
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #29
          to label %.body.i unwind label %bb.cb, !noalias !1444

bb.dp:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1446
  %i.jv = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.jv, i64 24, i1 false), !noalias !1465
  %i.jw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !noalias !1446, !nonnull !5, !noundef !5
  %i.jy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.jz = load i64, ptr %i.jy, align 8, !noalias !1446, !noundef !5
  %i.ka = shl nuw nsw i64 %i.jz, 2
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jx, i64 noundef %i.ka, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128)
          to label %bb.dq unwind label %bb.do, !noalias !1444

bb.dq:                                            ; preds = %bb.dp
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r)
          to label %bb.dr unwind label %bb.b, !noalias !1444

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1446
  br label %bb.bz

bb.ds:                                            ; preds = %bb.dt
  %i.kb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecdEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #29
          to label %.body.i unwind label %bb.cb, !noalias !1444

bb.dt:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1446
  %i.kc = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i64 24, i1 false), !noalias !1465
  %i.kd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !noalias !1446, !nonnull !5, !noundef !5
  %i.kf = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !1446, !noundef !5
  %i.kh = shl nuw nsw i64 %i.kg, 3
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ke, i64 noundef %i.kh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129)
          to label %bb.du unwind label %bb.ds, !noalias !1444

bb.du:                                            ; preds = %bb.dt
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecdEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q)
          to label %bb.dv unwind label %bb.b, !noalias !1444

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1446
  br label %bb.bz

bb.dw:                                            ; preds = %bb.dx
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #29
          to label %.body.i unwind label %bb.cb, !noalias !1444

bb.dx:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1446
  %i.kj = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.kj, i64 24, i1 false), !noalias !1465
  %i.kk = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !1446, !nonnull !5, !noundef !5
  %i.km = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.kn = load i64, ptr %i.km, align 8, !noalias !1446, !noundef !5
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kl, i64 noundef %i.kn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130)
          to label %bb.dy unwind label %bb.dw, !noalias !1444

bb.dy:                                            ; preds = %bb.dx
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecaEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v)
          to label %bb.dz unwind label %bb.b, !noalias !1444

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1446
  br label %bb.bz

bb.ea:                                            ; preds = %bb.eb
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecsEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #29
          to label %.body.i unwind label %bb.cb, !noalias !1444

bb.eb:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1446
  %i.kp = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.kp, i64 24, i1 false), !noalias !1465
  %i.kq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !1446, !nonnull !5, !noundef !5
  %i.ks = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.kt = load i64, ptr %i.ks, align 8, !noalias !1446, !noundef !5
  %i.ku = shl nuw nsw i64 %i.kt, 1
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kr, i64 noundef %i.ku, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131)
          to label %bb.ec unwind label %bb.ea, !noalias !1444

bb.ec:                                            ; preds = %bb.eb
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecsEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u)
          to label %bb.ed unwind label %bb.b, !noalias !1444

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1446
  br label %bb.bz

bb.ee:                                            ; preds = %bb.ef
  %i.kv = landingpad { ptr, i32 }
end_hunk_0
