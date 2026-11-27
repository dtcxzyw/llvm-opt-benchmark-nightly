Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tiffoutput?download=true
inline.NumInlined: 4471
inline.NumDeleted: 1472
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN11OpenImageIO4v3_110TIFFOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE:bb.a
_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %switch.lookup, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.1.i, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.2.i, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.3.i, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.4.i, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.5.i
  %.08.ptr17.lcssa.i = phi ptr [ @_ZN11OpenImageIO4v3_1L24tiff_output_compressionsE, %switch.lookup ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L24tiff_output_compressionsE, i64 16), %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.1.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L24tiff_output_compressionsE, i64 32), %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.2.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L24tiff_output_compressionsE, i64 48), %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.3.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L24tiff_output_compressionsE, i64 64), %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.4.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_1L24tiff_output_compressionsE, i64 80), %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.5.i ]
  %i.ea = load i32, ptr %.08.ptr17.lcssa.i, align 8, !tbaa !711 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 4 uses
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !371
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  store i32 1, ptr %i.ec, align 8, !tbaa !372
  switch i32 %i.ea, label %bb.ar [
    i32 5, label %bb.al
    i32 8, label %bb.al
  ]

bb.al:                                            ; preds = %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.thread, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  %i.ed = phi ptr [ %i.dz, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.thread ], [ %i.ec, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ], [ %i.ec, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ] ; 4 uses
  %i.ee = phi ptr [ %i.dy, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.thread ], [ %i.eb, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ], [ %i.eb, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ] ; 3 uses
  %i.ef = phi i32 [ 8, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.thread ], [ %i.ea, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ], [ %i.ea, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ]
  %i.eg = load i8, ptr %i.cr, align 8, !tbaa !373 ; 3 uses
  %i.eh = icmp eq i8 %i.eg, 11
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = icmp eq i8 %i.ej, 1                     ; 3 uses
  %or.cond.i = select i1 %i.eh, i1 %i.ek, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %bb.al
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.em = load i32, ptr %i.el, align 4, !tbaa !374
  %.not.i151 = icmp eq i32 %i.em, 0
  br i1 %.not.i151, label %.sink.split, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.al
  %i.en = icmp eq i8 %i.eg, 12
  %or.cond.i152 = select i1 %i.en, i1 %i.ek, i1 false
  br i1 %or.cond.i152, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit154, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit154.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit154: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !374
  %.not.i153 = icmp eq i32 %i.ep, 0
  br i1 %.not.i153, label %.sink.split, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit154.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.eq = icmp eq i8 %i.eg, 10
  %or.cond.i155 = select i1 %i.eq, i1 %i.ek, i1 false
  br i1 %or.cond.i155, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit154.thread
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.es = load i32, ptr %i.er, align 4, !tbaa !374
  %.not.i156 = icmp eq i32 %i.es, 0
  br i1 %.not.i156, label %.sink.split, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit154, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit154.thread, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157
  %i.et = load i32, ptr %i.cq, align 8, !tbaa !368
  switch i32 %i.et, label %bb.am [
    i32 8, label %.sink.split
    i32 16, label %.sink.split
  ]

.sink.split:                                      ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157.thread, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157.thread, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit154, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157
  %.sink404 = phi i32 [ 3, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ], [ 3, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157 ], [ 3, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit154 ], [ 2, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157.thread ], [ 2, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157.thread ]
  store i32 %.sink404, ptr %i.ed, align 8, !tbaa !372
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit157.thread
  %i.eu = icmp eq i32 %i.ef, 8
  br i1 %i.eu, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  store ptr @.str.29, ptr %22, align 8, !tbaa !296
  %i.ev = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 15, ptr %i.ev, align 8, !tbaa !297
  %i.ew = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %22, i32 noundef %.0) ; 2 uses
  %i.ex = icmp eq i32 %i.ew, -1
  br i1 %i.ex, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !347
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1279 = phi i32 [ %i.ez, %bb.ao ], [ %i.ew, %bb.an ] ; 3 uses
  %i.fa = icmp sgt i32 %.1279, 0
  br i1 %i.fa, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fb = load ptr, ptr %i.f, align 8, !tbaa !345
  %.1.i = call i32 @llvm.umin.i32(i32 %.1279, i32 9)
  %i.fc = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.fb, i32 noundef 65557, i32 noundef %.1.i) ; 0 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %.1279, ptr %i.fd, align 4, !tbaa !347
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, %bb.am, %bb.aq, %bb.ap
  %i.fe = phi ptr [ %i.ec, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ], [ %i.ed, %bb.am ], [ %i.ed, %bb.aq ], [ %i.ed, %bb.ap ] ; 2 uses
  %i.ff = phi ptr [ %i.eb, %_ZN11OpenImageIO4v3_1L21tiff_compression_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ], [ %i.ee, %bb.am ], [ %i.ee, %bb.aq ], [ %i.ee, %bb.ap ] ; 5 uses
  %i.fg = load i32, ptr %i.dj, align 4, !tbaa !369 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 2
  br i1 %i.fh, label %bb.as, label %bb.br

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  store ptr @.str.30, ptr %24, align 8, !tbaa !296
  %i.fi = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 15, ptr %i.fi, align 8, !tbaa !297
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %23, ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #34
  store ptr @.str.31, ptr %27, align 8, !tbaa !296
  %i.fj = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 15, ptr %i.fj, align 8, !tbaa !297
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %26, ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %27, ptr noundef nonnull dead_on_return %28)
  %i.fk = load ptr, ptr %26, align 8, !tbaa !296
  store ptr %i.fk, ptr %29, align 8, !tbaa !296
  %i.fl = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 7 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !297
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !297
  store ptr @.str.32, ptr %30, align 8, !tbaa !296
  %i.fo = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 4, ptr %i.fo, align 8, !tbaa !297
  %i.fp = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %29, ptr noundef nonnull dead_on_return %30)
  br i1 %i.fp, label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fq = load ptr, ptr %23, align 8, !tbaa !296
  store ptr %i.fq, ptr %31, align 8, !tbaa !296
  %i.fr = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !297
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !297
  store ptr @.str.32, ptr %32, align 8, !tbaa !296
  %i.fu = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 4, ptr %i.fu, align 8, !tbaa !297
  %i.fv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %31, ptr noundef nonnull dead_on_return %32)
  br i1 %i.fv, label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fw = load ptr, ptr %23, align 8, !tbaa !296
  store ptr %i.fw, ptr %33, align 8, !tbaa !296
  %i.fx = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.fy = load i64, ptr %i.fs, align 8, !tbaa !297
  store i64 %i.fy, ptr %i.fx, align 8, !tbaa !297
  store ptr @.str.33, ptr %34, align 8, !tbaa !296
  %i.fz = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 15, ptr %i.fz, align 8, !tbaa !297
  %i.ga = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %33, ptr noundef nonnull dead_on_return %34)
  br i1 %i.ga, label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, label %bb.be

_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.au, %bb.at, %bb.as
  store i32 5, ptr %i.dj, align 4, !tbaa !369
  store i64 258, ptr %i.cr, align 8
  store i32 8, ptr %i.cq, align 8, !tbaa !368
  %i.gb = load ptr, ptr %i.f, align 8, !tbaa !345
  %i.gc = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.gb, i32 noundef 258, i32 noundef 8) ; 0 uses
  %i.gd = load ptr, ptr %i.f, align 8, !tbaa !345
  %i.ge = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.gd, i32 noundef 339, i32 noundef 1) ; 0 uses
  %i.gf = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110TIFFOutput13source_is_rgbERKNS0_9ImageSpecE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(160) %i.l)
  br i1 %i.gf, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 1, ptr %i.gg, align 8, !tbaa !349
  store i32 4, ptr %i.dg, align 4, !tbaa !348
  %i.gh = load ptr, ptr %i.f, align 8, !tbaa !345
  %i.gi = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.gh, i32 noundef 277, i32 noundef 4) ; 0 uses
  %i.gj = load ptr, ptr %i.f, align 8, !tbaa !345
  %i.gk = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.gj, i32 noundef 332, i32 noundef 1) ; 0 uses
  br label %bb.bq

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.gl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110TIFFOutput14source_is_cmykERKNS0_9ImageSpecE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(160) %i.l)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %i.gm, align 8, !tbaa !349
  %i.gn = load ptr, ptr %i.f, align 8, !tbaa !345 ; 2 uses
  br i1 %i.gl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.go = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.gn, i32 noundef 332, i32 noundef 1) ; 0 uses
  br label %bb.bq

bb.ay:                                            ; preds = %bb.aw
  %i.gp = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.gn, i32 noundef 332, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #34
  %i.gq = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 7 uses
  store ptr %i.gq, ptr %35, align 8, !tbaa !288
  %i.gr = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 5 uses
  store i64 0, ptr %i.gr, align 8, !tbaa !294
  store i8 0, ptr %i.gq, align 8, !tbaa !293
  %i.gs = load i32, ptr %i.ch, align 4, !tbaa !367
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc.exit.peel, label %._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc.exit.peel: ; preds = %bb.ay
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  %.pre337 = load ptr, ptr %i.gu, align 8, !tbaa !375 ; 3 uses
  %.pre = load ptr, ptr %i.gv, align 8, !tbaa !712
  %i.gy = ptrtoint ptr %.pre to i64
  %i.gz = ptrtoint ptr %.pre337 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = shl i64 %i.ha, 27
  %i.hc = icmp sgt i64 %i.hb, 4294967295
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.peel, label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34, !noalias !713
  store i128 0, ptr %9, align 16, !noalias !713
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr nonnull @.str.34, i64 5, i64 1, ptr nonnull %9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i168.peel unwind label %.loopexit.split-lp327.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i168.peel: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34, !noalias !713
  %i.hd = load i64, ptr %i.gw, align 8, !tbaa !294
  %i.he = load ptr, ptr %36, align 8, !tbaa !292
  %i.hf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef 0, i64 noundef 0, ptr noundef %i.he, i64 noundef %i.hd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit171.peel unwind label %.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit171.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i168.peel
  %i.hg = load ptr, ptr %36, align 8, !tbaa !292  ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.gx
  br i1 %i.hh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit171.peel
  %i.hi = load i64, ptr %i.gx, align 8, !tbaa !293
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit171.peel
  %77 = load i64, ptr %i.gw, align 8, !tbaa !294
  %78 = icmp ult i64 %77, 16
  call void @llvm.assume(i1 %78)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc.exit.peel
  %i.hk = getelementptr inbounds nuw i8, ptr %.pre337, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !294
  %i.hm = load ptr, ptr %.pre337, align 8, !tbaa !292
  %i.hn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef 0, i64 noundef 0, ptr noundef %i.hm, i64 noundef %i.hl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.ho = load i32, ptr %i.ch, align 4, !tbaa !367
  %i.hp = icmp sgt i32 %i.ho, 1
  br i1 %i.hp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit.peel
  %.pre339 = load i64, ptr %i.gr, align 8, !tbaa !294
  %.pre340 = load ptr, ptr %35, align 8, !tbaa !292
  %i.hq = trunc i64 %.pre339 to i32
  %i.hr = add i32 %i.hq, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ay
  %i.hs = phi ptr [ %.pre340, %._crit_edge.loopexit ], [ %i.gq, %bb.ay ]
  %i.ht = phi i32 [ %i.hr, %._crit_edge.loopexit ], [ 1, %bb.ay ]
  %i.hu = load ptr, ptr %i.f, align 8, !tbaa !345
  %i.hv = invoke i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.hu, i32 noundef 333, i32 noundef %i.ht, ptr noundef nonnull %i.hs)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit.peel ] ; 4 uses
  %i.hw = load i64, ptr %i.gr, align 8, !tbaa !294
  %i.hx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef %i.hw, i64 noundef 0, i64 noundef 1, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.hy = load ptr, ptr %i.gv, align 8, !tbaa !712
  %i.hz = load ptr, ptr %i.gu, align 8, !tbaa !375 ; 2 uses
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = shl i64 %i.ic, 27
  %i.ie = ashr i64 %i.id, 32
  %i.if = icmp slt i64 %indvars.iv, %i.ie
  %i.ig = load i64, ptr %i.gr, align 8, !tbaa !294 ; 4 uses
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i, label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc.exit
  %i.ih = getelementptr inbounds nuw [32 x i8], ptr %i.hz, i64 %indvars.iv ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !294
  %i.ik = load ptr, ptr %i.ih, align 8, !tbaa !292
  %i.il = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef %i.ig, i64 noundef 0, ptr noundef %i.ik, i64 noundef %i.ij)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34, !noalias !713
  %.sroa.03.0.insert.ext.i = zext nneg i64 %indvars.iv to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %9, align 16, !noalias !713
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr nonnull @.str.34, i64 5, i64 1, ptr nonnull %9)
          to label %bb.bb unwind label %.loopexit.split-lp327.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34, !noalias !713
  %i.im = load i64, ptr %i.gr, align 8, !tbaa !294 ; 2 uses
  %i.in = icmp ugt i64 %i.ig, %i.im
  br i1 %i.in, label %.loopexit330, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i168

.loopexit330:                                     ; preds = %bb.bb
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113, i64 noundef %i.ig, i64 noundef %i.im) #35
          to label %.noexc169 unwind label %.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc169:                                        ; preds = %.loopexit330
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i168: ; preds = %bb.bb
  %i.io = load i64, ptr %i.gw, align 8, !tbaa !294
  %i.ip = load ptr, ptr %36, align 8, !tbaa !292
  %i.iq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef %i.ig, i64 noundef 0, ptr noundef %i.ip, i64 noundef %i.io)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit171 unwind label %.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i168
  %i.ir = load ptr, ptr %36, align 8, !tbaa !292  ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.gx
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit171
  %i.it = load i64, ptr %i.gx, align 8, !tbaa !293
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit

.loopexit.split-lp327.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ba, %bb.az
  %lpad.loopexit.split-lp428 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i168.peel, %.loopexit330
  %lpad.loopexit.split-lp431 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iv = load ptr, ptr %36, align 8, !tbaa !292  ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.gx
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ix = load i64, ptr %i.gx, align 8, !tbaa !293
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp327.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp431, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %lpad.loopexit.split-lp428, %.loopexit.split-lp327.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp431, %.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #34
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.iz = load i32, ptr %i.ch, align 4, !tbaa !367
  %i.ja = sext i32 %i.iz to i64
  %i.jb = icmp slt i64 %indvars.iv.next, %i.ja
  br i1 %i.jb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, label %._crit_edge.loopexit, !llvm.loop !697

bb.bc:                                            ; preds = %._crit_edge
  %i.jc = load ptr, ptr %i.f, align 8, !tbaa !345
  %i.jd = load i32, ptr %i.ch, align 4, !tbaa !367
  %i.je = invoke i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.jc, i32 noundef 334, i32 noundef %i.jd)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.jf = load ptr, ptr %35, align 8, !tbaa !292  ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.gq
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.bd
  %i.jh = load i64, ptr %i.gq, align 8, !tbaa !293
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #34
  br label %bb.bq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i.peel, %bb.bc, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %.pn122.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.jj = load ptr, ptr %35, align 8, !tbaa !292  ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.gq
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %.loopexit.split-lp
  %i.jl = load i64, ptr %i.gq, align 8, !tbaa !293
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %bb.ds

bb.be:                                            ; preds = %bb.au
  %i.jn = load ptr, ptr %26, align 8, !tbaa !296
  store ptr %i.jn, ptr %37, align 8, !tbaa !296
  %i.jo = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.jp = load i64, ptr %i.fm, align 8, !tbaa !297
  store i64 %i.jp, ptr %i.jo, align 8, !tbaa !297
  store ptr @.str.35, ptr %38, align 8, !tbaa !296
  %i.jq = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 5, ptr %i.jq, align 8, !tbaa !297
  %i.jr = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %37, ptr noundef nonnull dead_on_return %38)
  br i1 %i.jr, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 6, ptr %i.dj, align 4, !tbaa !369
  br label %bb.bq

bb.bg:                                            ; preds = %bb.be
  %i.js = load ptr, ptr %26, align 8, !tbaa !296
  store ptr %i.js, ptr %39, align 8, !tbaa !296
  %i.jt = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.ju = load i64, ptr %i.fm, align 8, !tbaa !297
  store i64 %i.ju, ptr %i.jt, align 8, !tbaa !297
  store ptr @.str.36, ptr %40, align 8, !tbaa !296
  %i.jv = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 6, ptr %i.jv, align 8, !tbaa !297
  %i.jw = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %39, ptr noundef nonnull dead_on_return %40)
  br i1 %i.jw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
end_hunk_0
