Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imageio?download=true
inline.NumInlined: 4864
inline.NumDeleted: 1339
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN11OpenImageIO4v3_1L12hw_simd_capsB5cxx11Ev:bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 8, ptr %i.dd, align 8, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.de, ptr %i.cz, align 8, !tbaa !101
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit39

bb.ak:                                            ; preds = %bb.ai
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE17_M_realloc_insertIJRA9_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.da, ptr noundef nonnull align 1 dereferenceable(9) @.str.144)
          to label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit39 unwind label %bb.c

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit39: ; preds = %bb.ak, %bb.aj, %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit35
  %i.df = call { i32, i32, i32, i32 } asm sideeffect "cpuid                 \0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #39, !srcloc !380
  %i.dg = extractvalue { i32, i32, i32, i32 } %i.df, 1
  %i.dh = and i32 %i.dg, 1073741824
  %.not75 = icmp eq i32 %i.dh, 0
  br i1 %.not75, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit43, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit39
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !101 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !103
  %.not.i40 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not.i40, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr @.str.145, ptr %i.dj, align 8, !tbaa !56
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 8, ptr %i.dm, align 8, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.dn, ptr %i.di, align 8, !tbaa !101
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit43

bb.an:                                            ; preds = %bb.al
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE17_M_realloc_insertIJRA9_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.dj, ptr noundef nonnull align 1 dereferenceable(9) @.str.145)
          to label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit43 unwind label %bb.c

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit43: ; preds = %bb.an, %bb.am, %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit39
  %i.do = call { i32, i32, i32, i32 } asm sideeffect "cpuid                 \0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #39, !srcloc !380
  %i.dp = extractvalue { i32, i32, i32, i32 } %i.do, 1
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.ao, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit47

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit43
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !101 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !103
  %.not.i44 = icmp eq ptr %i.ds, %i.du
  br i1 %.not.i44, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr @.str.146, ptr %i.ds, align 8, !tbaa !56
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 8, ptr %i.dv, align 8, !tbaa !57
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store ptr %i.dw, ptr %i.dr, align 8, !tbaa !101
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit47

bb.aq:                                            ; preds = %bb.ao
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE17_M_realloc_insertIJRA9_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ds, ptr noundef nonnull align 1 dereferenceable(9) @.str.146)
          to label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit47 unwind label %bb.c

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit47: ; preds = %bb.aq, %bb.ap, %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit43
  %i.dx = call { i32, i32, i32, i32 } asm sideeffect "cpuid                 \0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #39, !srcloc !380
  %i.dy = extractvalue { i32, i32, i32, i32 } %i.dx, 2
  %i.dz = and i32 %i.dy, 4096
  %.not76 = icmp eq i32 %i.dz, 0
  br i1 %.not76, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit51, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit47
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !101 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !103
  %.not.i48 = icmp eq ptr %i.eb, %i.ed
  br i1 %.not.i48, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store ptr @.str.147, ptr %i.eb, align 8, !tbaa !56
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 3, ptr %i.ee, align 8, !tbaa !57
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store ptr %i.ef, ptr %i.ea, align 8, !tbaa !101
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit51

bb.at:                                            ; preds = %bb.ar
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE17_M_realloc_insertIJRA4_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.eb, ptr noundef nonnull align 1 dereferenceable(4) @.str.147)
          to label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit51 unwind label %bb.c

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit51: ; preds = %bb.at, %bb.as, %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit47
  %i.eg = call { i32, i32, i32, i32 } asm sideeffect "cpuid                 \0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #39, !srcloc !380
  %i.eh = extractvalue { i32, i32, i32, i32 } %i.eg, 2
  %i.ei = and i32 %i.eh, 536870912
  %.not77 = icmp eq i32 %i.ei, 0
  br i1 %.not77, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit55, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit51
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !101 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !103
  %.not.i52 = icmp eq ptr %i.ek, %i.em
  br i1 %.not.i52, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr @.str.148, ptr %i.ek, align 8, !tbaa !56
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 4, ptr %i.en, align 8, !tbaa !57
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store ptr %i.eo, ptr %i.ej, align 8, !tbaa !101
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit55

bb.aw:                                            ; preds = %bb.au
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE17_M_realloc_insertIJRA5_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ek, ptr noundef nonnull align 1 dereferenceable(5) @.str.148)
          to label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit55 unwind label %bb.c

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit55: ; preds = %bb.aw, %bb.av, %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit51
  %i.ep = call { i32, i32, i32, i32 } asm sideeffect "cpuid                 \0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #39, !srcloc !380
  %i.eq = extractvalue { i32, i32, i32, i32 } %i.ep, 2
  %i.er = and i32 %i.eq, 8388608
  %.not78 = icmp eq i32 %i.er, 0
  br i1 %.not78, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit55
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !101 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !103
  %.not.i56 = icmp eq ptr %i.et, %i.ev
  br i1 %.not.i56, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr @.str.149, ptr %i.et, align 8, !tbaa !56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 6, ptr %i.ew, align 8, !tbaa !57
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %i.ex, ptr %i.es, align 8, !tbaa !101
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit

bb.az:                                            ; preds = %bb.ax
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE17_M_realloc_insertIJRA7_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.et, ptr noundef nonnull align 1 dereferenceable(7) @.str.149)
          to label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit unwind label %bb.c

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit: ; preds = %bb.az, %bb.ay, %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit55
  %i.ey = call { i32, i32, i32, i32 } asm sideeffect "cpuid                 \0A\09", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #39, !srcloc !380
  %i.ez = extractvalue { i32, i32, i32, i32 } %i.ey, 2
  %i.fa = and i32 %i.ez, 1073741824
  %.not79 = icmp eq i32 %i.fa, 0
  br i1 %.not79, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit62, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !101 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !103
  %.not.i59 = icmp eq ptr %i.fc, %i.fe
  br i1 %.not.i59, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store ptr @.str.150, ptr %i.fc, align 8, !tbaa !56
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 6, ptr %i.ff, align 8, !tbaa !57
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr %i.fg, ptr %i.fb, align 8, !tbaa !101
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit62

bb.bc:                                            ; preds = %bb.ba
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE17_M_realloc_insertIJRA7_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.fc, ptr noundef nonnull align 1 dereferenceable(7) @.str.150)
          to label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit62 unwind label %bb.c

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit62: ; preds = %bb.bc, %bb.bb, %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit
  store ptr @.str.41, ptr %2, align 8, !tbaa !56
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.fh, align 8, !tbaa !57
  invoke void @_ZN11OpenImageIO4v3_17Strutil4joinISt6vectorINS0_17basic_string_viewIcSt11char_traitsIcEEESaIS7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEERKT_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull dead_on_return %2)
          to label %bb.bd unwind label %bb.c

bb.bd:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE12emplace_backIJRA7_KcEEERS5_DpOT_.exit62
  %i.fi = load ptr, ptr %1, align 8, !tbaa !102   ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit64, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !103
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #40
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit64

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit64: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L14oiio_simd_capsB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable align 8 %0) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.14", align 8    ; 9 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EE17_M_realloc_insertIJRA5_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr null, ptr noundef nonnull align 1 dereferenceable(5) @.str.133)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  store ptr @.str.41, ptr %2, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !57
  invoke void @_ZN11OpenImageIO4v3_17Strutil4joinISt6vectorINS0_17basic_string_viewIcSt11char_traitsIcEEESaIS7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEERKT_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull dead_on_return %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.b = load ptr, ptr %1, align 8, !tbaa !102    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %3, align 8, !tbaa !103
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.f) #40
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  ret void

bb.d:                                             ; preds = %bb.a, %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8, !tbaa !102    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %3, align 8, !tbaa !103
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.l) #40
  br label %_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit2

_ZNSt6vectorIN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEESaIS5_EED2Ev.exit2: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L19oiio_build_compilerB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable align 8 %0) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store.116", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !67
  store i8 0, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39, !noalias !385
  store i32 23, ptr %1, align 16, !tbaa !68, !alias.scope !386, !noalias !385
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.c, align 16, !tbaa !68, !alias.scope !386, !noalias !385
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.152, i64 11, i64 17, ptr nonnull %1)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39, !noalias !385
  %i.d = load ptr, ptr %0, align 8, !tbaa !66     ; 6 uses
  %i.e = icmp eq ptr %i.d, %i.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !66     ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.h, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %2, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !126

bb.d:                                             ; preds = %bb.c
  switch i64 %i.j, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.f, align 1, !tbaa !68
  store i8 %i.l, ptr %i.d, align 1, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.m = load i64, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !67
  %i.n = load ptr, ptr %0, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !68
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.f, ptr %0, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !68
  store <2 x i64> %i.q, ptr %i.b, align 8, !tbaa !68
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !68
  store ptr %i.f, ptr %0, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load <2 x i64>, ptr %i.s, align 8, !tbaa !68
  store <2 x i64> %i.t, ptr %i.b, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.d, ptr %2, align 8, !tbaa !66
  store i64 %i.r, ptr %i.g, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %2, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.u = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.d, %bb.g ], [ %i.g, %bb.h ], [ %i.f, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !67
  store i8 0, ptr %i.u, align 1, !tbaa !68
  %i.w = load ptr, ptr %2, align 8, !tbaa !66     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !68
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret void

bb.i:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %i.ac = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !68
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L19oiio_build_platformB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable align 8 %0) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !67
  store i8 0, ptr %i.a, align 8, !tbaa !68
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.153, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !67
  %i.e = icmp eq i64 %i.d, 4611686018427387903
  br i1 %i.e, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.154, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.g = load i64, ptr %i.b, align 8, !tbaa !67
  %i.h = add i64 %i.g, -4611686018427387898
  %i.i = icmp ult i64 %i.h, 6
  br i1 %i.i, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i3

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.156) #42
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.155, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit6 unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.a, align 8, !tbaa !68
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i3
  ret void
}

declare noundef i64 @_ZN11OpenImageIO4v3_17Sysutil11memory_usedEb(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_17Strutil4joinISt6vectorIfSaIfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_NS0_17basic_string_viewIcS9_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef dead_on_return %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_23fallback_digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.g
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit
  %i.bx = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.bg, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit
  %.sroa.09.1 = phi ptr [ %i.bx, %bb.j ], [ %i.bg, %_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcjNS1_23fallback_digit_groupingIcEEEET_S7_T1_iiT0_RKT2_(ptr %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %.not.i.i = icmp eq i8 %4, 0
  br i1 %.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %1, 99
  br i1 %i.b, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %2, %bb.b ]
  %.01819.i.i.i = phi i32 [ %i.k, %.lr.ph.i.i.i ], [ %1, %bb.b ] ; 3 uses
  %i.c = add i32 %.020.i.i.i, -2                  ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = urem i32 %.01819.i.i.i, 100
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  store i16 %i.j, ptr %i.e, align 1
  %i.k = udiv i32 %.01819.i.i.i, 100              ; 2 uses
  %i.l = icmp ugt i32 %.01819.i.i.i, 9999
  br i1 %i.l, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !9

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.b
  %.018.lcssa.i.i.i = phi i32 [ %1, %bb.b ], [ %i.k, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %2, %bb.b ], [ %i.c, %.lr.ph.i.i.i ] ; 2 uses
  %i.m = icmp samesign ugt i32 %.018.lcssa.i.i.i, 9
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = add i32 %.0.lcssa.i.i.i, -2
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = shl nuw nsw i32 %.018.lcssa.i.i.i, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  store i16 %i.t, ptr %i.p, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.u = trunc nuw nsw i32 %.018.lcssa.i.i.i to i8
  %i.v = or disjoint i8 %i.u, 48
  %i.w = add i32 %.0.lcssa.i.i.i, -1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1, !tbaa !68
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i: ; preds = %bb.d, %bb.c
  %i.z = sext i32 %2 to i64
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.ab = sext i32 %2 to i64
  %i.ac = getelementptr i8, ptr %i.a, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 1      ; 4 uses
  %i.ae = sub nsw i32 %2, %3                      ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.ag = lshr i32 %i.ae, 1                       ; 3 uses
  %i.ah = and i32 %i.ae, 2
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %i.ai = getelementptr i8, ptr %i.ac, i64 -1     ; 3 uses
  %i.aj = urem i32 %1, 100
  %i.ak = shl nuw nsw i32 %i.aj, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2
  store i16 %i.an, ptr %i.ai, align 1
  %i.ao = udiv i32 %1, 100                        ; 2 uses
  %i.ap = add nsw i32 %i.ag, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.046.i.i.unr = phi i32 [ %i.ag, %.lr.ph.preheader.i.i ], [ %i.ap, %.lr.ph.i.i.prol ]
  %.02845.i.i.unr = phi ptr [ %i.ad, %.lr.ph.preheader.i.i ], [ %i.ai, %.lr.ph.i.i.prol ]
  %.02944.i.i.unr = phi i32 [ %1, %.lr.ph.preheader.i.i ], [ %i.ao, %.lr.ph.i.i.prol ]
  %.lcssa78.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %i.ai, %.lr.ph.i.i.prol ]
  %.lcssa77.unr = phi i32 [ poison, %.lr.ph.preheader.i.i ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.aq = icmp eq i32 %i.ag, 1
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.029.lcssa.i.i = phi i32 [ %1, %bb.e ], [ %.lcssa77.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bf, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %i.ad, %bb.e ], [ %.lcssa78.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.az, %.lr.ph.i.i ] ; 2 uses
  %i.ar = and i32 %i.ae, 1
  %.not32.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not32.i.i, label %bb.g, label %bb.f

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.046.i.i = phi i32 [ %i.bg, %.lr.ph.i.i ], [ %.046.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.02845.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.02845.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.02944.i.i = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.02944.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.02845.i.i, i64 -2
  %i.at = urem i32 %.02944.i.i, 100
  %i.au = shl nuw nsw i32 %i.at, 1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2
  store i16 %i.ax, ptr %i.as, align 1
  %i.ay = udiv i32 %.02944.i.i, 100
  %i.az = getelementptr inbounds i8, ptr %.02845.i.i, i64 -4 ; 3 uses
  %i.ba = urem i32 %i.ay, 100
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.az, align 1
  %i.bf = udiv i32 %.02944.i.i, 10000             ; 2 uses
  %i.bg = add nsw i32 %.046.i.i, -2
  %i.bh = icmp sgt i32 %.046.i.i, 2
  br i1 %i.bh, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !26

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bi = urem i32 %.029.lcssa.i.i, 10
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, 48
  %i.bl = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !68
  %i.bm = udiv i32 %.029.lcssa.i.i, 10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %.130.i.i = phi i32 [ %i.bm, %bb.f ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.bl, %bb.f ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %i.bn = getelementptr inbounds i8, ptr %.1.i.i, i64 -1 ; 2 uses
  store i8 %4, ptr %i.bn, align 1, !tbaa !68
  %i.bo = sext i32 %3 to i64
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp ; 3 uses
  %i.br = icmp ugt i32 %.130.i.i, 99
  br i1 %i.br, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.g, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.bs, %.lr.ph.i37.i.i ], [ %3, %bb.g ]
  %.01819.i39.i.i = phi i32 [ %i.ca, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.g ] ; 3 uses
  %i.bs = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt
  %i.bv = urem i32 %.01819.i39.i.i, 100
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2
  store i16 %i.bz, ptr %i.bu, align 1
  %i.ca = udiv i32 %.01819.i39.i.i, 100           ; 2 uses
  %i.cb = icmp ugt i32 %.01819.i39.i.i, 9999
  br i1 %i.cb, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !9

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.g
  %.018.lcssa.i34.i.i = phi i32 [ %.130.i.i, %bb.g ], [ %i.ca, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ %3, %bb.g ], [ %i.bs, %.lr.ph.i37.i.i ] ; 2 uses
  %i.cc = icmp samesign ugt i32 %.018.lcssa.i34.i.i, 9
  br i1 %i.cc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i33.i.i
  %i.cd = add i32 %.0.lcssa.i35.i.i, -2
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ce
  %i.cg = shl nuw nsw i32 %.018.lcssa.i34.i.i, 1
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2
  store i16 %i.cj, ptr %i.cf, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i33.i.i
  %i.ck = trunc nuw nsw i32 %.018.lcssa.i34.i.i to i8
  %i.cl = or disjoint i8 %i.ck, 48
  %i.cm = add i32 %.0.lcssa.i35.i.i, -1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cn
  store i8 %i.cl, ptr %i.co, align 1, !tbaa !68
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i
  %.027.i.i = phi ptr [ %i.aa, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i ], [ %i.ad, %bb.h ], [ %i.ad, %bb.i ]
  %i.cp = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret ptr %i.cp
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !690, !nonnull !76, !align !208
  %i.b = load i32, ptr %i.a, align 4, !tbaa !230  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !172  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !166
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !164
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !13
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !165
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !172
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !172  ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !166
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !164
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s), !inline_history !13
  %.pre.i.i6 = load i64, ptr %i.q, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

_ZN3fmt3v1214basic_appenderIcEaSEc.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ]
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !165
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !172
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !691, !nonnull !76
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !81, !range !75, !noundef !76
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !692, !nonnull !76
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !68
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !172 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !166
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !164
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj), !inline_history !13
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

_ZN3fmt3v1214basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !165
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !172
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !693, !nonnull !76, !align !208
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !172 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !166
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !164
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax), !inline_history !28
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bb = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !165
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !172
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 48, ptr %i.bd, align 1, !tbaa !68
  %i.be = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !27

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !694, !nonnull !76, !align !208
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !239
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !695, !nonnull !76, !align !208
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.bl = tail call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %1, i32 noundef %i.bh, i32 noundef %i.bk)
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %.sroa.03.0 = phi ptr [ %i.bl, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8 ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, double noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.70, align 8             ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp.74", align 8 ; 5 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast double %1 to i64                 ; 4 uses
  %i.c = icmp slt i64 %i.b, 0                     ; 2 uses
  %.lobit = lshr i64 %i.b, 63
  %i.d = trunc nuw nsw i64 %.lobit to i32         ; 3 uses
  %i.e = and i64 %i.b, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.g = fcmp uno double %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.h, align 8
  %i.i = select i1 %i.g, ptr @.str.102, ptr @.str.104
  %.not.not.i = icmp sgt i64 %i.b, -1
  %i.j = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  store i32 %i.d, ptr %3, align 8, !tbaa !228
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !229
  %i.l = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.j, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.m = tail call { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %1) #39 ; 2 uses
  %i.n = extractvalue { i64, i32 } %i.m, 0        ; 14 uses
  store i64 %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = extractvalue { i64, i32 } %i.m, 1        ; 2 uses
  store i32 %i.p, ptr %i.o, align 8
  %i.q = or i64 %i.n, 1
  %i.r = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !68    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = zext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !83
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_23fallback_digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  store i64 %.pre-phi.i.i.i.i, ptr %i.bl, align 8, !tbaa !172
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 48, ptr %i.bv, align 1, !tbaa !68
  %i.bw = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bw, %i.bj
  br i1 %exitcond.not.i.i, label %_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit, label %bb.h, !llvm.loop !27

_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.g
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit
  %i.bx = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.bg, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit
  %.sroa.09.1 = phi ptr [ %i.bx, %bb.j ], [ %i.bg, %_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E0_clES6_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcmNS1_23fallback_digit_groupingIcEEEET_S7_T1_iiT0_RKT2_(ptr %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %.not.i.i = icmp eq i8 %4, 0
  br i1 %.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 99
  br i1 %i.b, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %2, %bb.b ]
  %.01819.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i ], [ %1, %bb.b ] ; 3 uses
  %i.c = add i32 %.020.i.i.i, -2                  ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = urem i64 %.01819.i.i.i, 100
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2
  store i16 %i.i, ptr %i.e, align 1
  %i.j = udiv i64 %.01819.i.i.i, 100              ; 2 uses
  %i.k = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.k, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !10

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.b
  %.018.lcssa.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %2, %bb.b ], [ %i.c, %.lr.ph.i.i.i ] ; 2 uses
  %i.l = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.m = add i32 %.0.lcssa.i.i.i, -2
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.p = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.q = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  store i16 %i.r, ptr %i.o, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.s = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.t = or disjoint i8 %i.s, 48
  %i.u = add i32 %.0.lcssa.i.i.i, -1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  store i8 %i.t, ptr %i.w, align 1, !tbaa !68
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i: ; preds = %bb.d, %bb.c
  %i.x = sext i32 %2 to i64
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.z = sext i32 %2 to i64
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 4 uses
  %i.ac = sub nsw i32 %2, %3                      ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.ae = lshr i32 %i.ac, 1                       ; 3 uses
  %i.af = and i32 %i.ac, 2
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %i.ag = getelementptr i8, ptr %i.aa, i64 -1     ; 3 uses
  %i.ah = urem i64 %1, 100
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2
  store i16 %i.ak, ptr %i.ag, align 1
  %i.al = udiv i64 %1, 100                        ; 2 uses
  %i.am = add nsw i32 %i.ae, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.046.i.i.unr = phi i32 [ %i.ae, %.lr.ph.preheader.i.i ], [ %i.am, %.lr.ph.i.i.prol ]
  %.02845.i.i.unr = phi ptr [ %i.ab, %.lr.ph.preheader.i.i ], [ %i.ag, %.lr.ph.i.i.prol ]
  %.02944.i.i.unr = phi i64 [ %1, %.lr.ph.preheader.i.i ], [ %i.al, %.lr.ph.i.i.prol ]
  %.lcssa78.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %i.ag, %.lr.ph.i.i.prol ]
  %.lcssa77.unr = phi i64 [ poison, %.lr.ph.preheader.i.i ], [ %i.al, %.lr.ph.i.i.prol ]
  %i.an = icmp eq i32 %i.ae, 1
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.029.lcssa.i.i = phi i64 [ %1, %bb.e ], [ %.lcssa77.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ba, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %i.ab, %bb.e ], [ %.lcssa78.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.av, %.lr.ph.i.i ] ; 2 uses
  %i.ao = and i32 %i.ac, 1
  %.not32.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not32.i.i, label %bb.g, label %bb.f

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.046.i.i = phi i32 [ %i.bb, %.lr.ph.i.i ], [ %.046.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.02845.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.02845.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.02944.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.02944.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.02845.i.i, i64 -2
  %i.aq = urem i64 %.02944.i.i, 100
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2
  store i16 %i.at, ptr %i.ap, align 1
  %i.au = udiv i64 %.02944.i.i, 100
  %i.av = getelementptr inbounds i8, ptr %.02845.i.i, i64 -4 ; 3 uses
  %i.aw = urem i64 %i.au, 100
  %i.ax = shl nuw nsw i64 %i.aw, 1
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2
  store i16 %i.az, ptr %i.av, align 1
  %i.ba = udiv i64 %.02944.i.i, 10000             ; 2 uses
  %i.bb = add nsw i32 %.046.i.i, -2
  %i.bc = icmp sgt i32 %.046.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !29

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bd = urem i64 %.029.lcssa.i.i, 10
  %i.be = trunc nuw nsw i64 %i.bd to i8
  %i.bf = or disjoint i8 %i.be, 48
  %i.bg = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !68
  %i.bh = udiv i64 %.029.lcssa.i.i, 10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %.130.i.i = phi i64 [ %i.bh, %bb.f ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.bg, %bb.f ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %i.bi = getelementptr inbounds i8, ptr %.1.i.i, i64 -1 ; 2 uses
  store i8 %4, ptr %i.bi, align 1, !tbaa !68
  %i.bj = sext i32 %3 to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %i.bk ; 3 uses
  %i.bm = icmp ugt i64 %.130.i.i, 99
  br i1 %i.bm, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.g, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.bn, %.lr.ph.i37.i.i ], [ %3, %bb.g ]
  %.01819.i39.i.i = phi i64 [ %i.bu, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.g ] ; 3 uses
  %i.bn = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = urem i64 %.01819.i39.i.i, 100
  %i.br = shl nuw nsw i64 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2
  store i16 %i.bt, ptr %i.bp, align 1
  %i.bu = udiv i64 %.01819.i39.i.i, 100           ; 2 uses
  %i.bv = icmp ugt i64 %.01819.i39.i.i, 9999
  br i1 %i.bv, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !10

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.g
  %.018.lcssa.i34.i.i = phi i64 [ %.130.i.i, %bb.g ], [ %i.bu, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ %3, %bb.g ], [ %i.bn, %.lr.ph.i37.i.i ] ; 2 uses
  %i.bw = icmp samesign ugt i64 %.018.lcssa.i34.i.i, 9
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i33.i.i
  %i.bx = add i32 %.0.lcssa.i35.i.i, -2
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.by
  %i.ca = shl nuw nsw i64 %.018.lcssa.i34.i.i, 1
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2
  store i16 %i.cc, ptr %i.bz, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i33.i.i
  %i.cd = trunc nuw nsw i64 %.018.lcssa.i34.i.i to i8
  %i.ce = or disjoint i8 %i.cd, 48
  %i.cf = add i32 %.0.lcssa.i35.i.i, -1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cg
  store i8 %i.ce, ptr %i.ch, align 1, !tbaa !68
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i
  %.027.i.i = phi ptr [ %i.y, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.ab, %bb.h ], [ %i.ab, %bb.i ]
  %i.ci = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret ptr %i.ci
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !717, !nonnull !76, !align !208
  %i.b = load i32, ptr %i.a, align 4, !tbaa !230  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !172  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !166
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !164
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !13
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !165
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !172
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !172  ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !166
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !164
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s), !inline_history !13
  %.pre.i.i6 = load i64, ptr %i.q, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

_ZN3fmt3v1214basic_appenderIcEaSEc.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ]
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !165
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !172
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !718, !nonnull !76
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !81, !range !75, !noundef !76
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !719, !nonnull !76
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !68
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !172 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !166
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !164
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj), !inline_history !13
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

_ZN3fmt3v1214basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !165
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !172
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !720, !nonnull !76, !align !208
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !172 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !166
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !164
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax), !inline_history !28
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !172 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bb = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !165
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !172
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 48, ptr %i.bd, align 1, !tbaa !68
  %i.be = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !27

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !721, !nonnull !76, !align !215
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !244
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !722, !nonnull !76, !align !208
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.bl = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %1, i64 noundef %i.bh, i32 noundef %i.bk)
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %.sroa.03.0 = phi ptr [ %i.bl, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8 ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %0, x86_fp80 noundef %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.78, align 8             ; 5 uses
  %6 = alloca %"struct.fmt::v12::format_specs", align 16 ; 6 uses
  %7 = alloca %class.anon.70, align 8             ; 5 uses
  %8 = alloca %"struct.fmt::v12::format_specs", align 16 ; 14 uses
  %9 = alloca %"class.fmt::v12::loc_value", align 16 ; 3 uses
  %10 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 14 uses
  %11 = alloca %"struct.fmt::v12::detail::big_decimal_fp", align 8 ; 7 uses
  store i64 %2, ptr %8, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = trunc i64 %2 to i32                      ; 2 uses
  %i.c = and i32 %i.b, 16384
  %.not56 = icmp eq i32 %i.c, 0
  br i1 %.not56, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store x86_fp80 %1, ptr %9, align 16, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 11, ptr %i.d, align 16, !tbaa !204
  %i.e = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %0, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %9, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr %4)
  br i1 %i.e, label %bb.ae, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %8, align 16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.f = phi i32 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = bitcast x86_fp80 %1 to i80
  %i.h = icmp slt i80 %i.g, 0
  %i.i = lshr i32 %i.f, 10
  %i.j = and i32 %i.i, 3
  %i.k = select i1 %i.h, i32 1, i32 %i.j          ; 5 uses
  %i.l = call x86_fp80 @llvm.fabs.f80(x86_fp80 %1)
  %i.m = fcmp ueq x86_fp80 %i.l, +inf
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = fcmp uno x86_fp80 %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.o = load <2 x i64>, ptr %8, align 16
  %.sroa.013.0.copyload = load i64, ptr %8, align 16 ; 2 uses
  store <2 x i64> %i.o, ptr %6, align 16
  %i.p = trunc i64 %.sroa.013.0.copyload to i32   ; 2 uses
  %i.q = and i64 %.sroa.013.0.copyload, 1095216889856
  %or.cond.i = icmp eq i64 %i.q, 206158462976
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !865 ; 3 uses
  %i.x = icmp slt i64 %i.t, 0
  %.v.i.i.i = select i1 %i.x, i64 -32, i64 -16
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %.v.i.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !272, !noalias !865 ; 2 uses
  %.not14.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not14.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !273, !noalias !865
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ac = add nuw i64 %.01215.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ac, %i.aa
  br i1 %exitcond.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.k, !llvm.loop !41

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.01215.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.01215.i.i.i ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !275, !noalias !865 ; 2 uses
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #39, !noalias !865 ; 2 uses
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ae, ptr %.sroa.0.0.copyload, i64 %i.ag), !noalias !865
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ah = icmp eq i64 %i.af, %.sroa.2.0.copyload
  %i.ai = select i1 %.not.i.i.i.i.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !276, !noalias !865 ; 6 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.l, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.l:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i
  %i.am = icmp sgt i64 %i.t, -1
  br i1 %i.am, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = trunc i64 %i.t to i32
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %bb.n, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.ap
  br label %_ZNK3fmt3v127context3argEi.exit

bb.o:                                             ; preds = %bb.l
  %i.ar = icmp samesign ugt i32 %i.ak, 14
  br i1 %i.ar, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = shl nuw nsw i32 %i.ak, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %i.t, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.n, %bb.d
  %storemerge.in = phi ptr [ %i.aq, %bb.n ], [ %i.j, %bb.d ] ; 2 uses
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !68 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc73 = trunc i128 %storemerge to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 = lshr i128 %storemerge, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc89 = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 to i32
  %.sroa.010.sroa.11.0.extract.shift61 = lshr i128 %storemerge, 64
  %.sroa.010.sroa.11.0.extract.trunc62 = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift61 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !174 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.113) #42
  unreachable

_ZNK3fmt3v127context3argEi.exit.thread37.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.a, %bb.g ], [ %i.ak, %bb.p ]
  %.sink107 = phi ptr [ %i.r, %bb.g ], [ %i.w, %bb.p ]
  %.sroa.23.039.ph = phi i32 [ %i.p, %bb.g ], [ %i.aw, %bb.p ]
  %i.ax = zext nneg i32 %.sink to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sink107, i64 %i.ax
  %.sroa.010.0.copyload25 = load i128, ptr %i.ay, align 16, !tbaa !68 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.010.0.copyload25 to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift102 = lshr i128 %.sroa.010.0.copyload25, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift102 to i32
  %.sroa.010.sroa.11.0.extract.shift = lshr i128 %.sroa.010.0.copyload25, 64
  %.sroa.010.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread37:         ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.010.sroa.0.sroa.11.0 = phi i32 [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc89, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 4 uses
  %.sroa.010.sroa.0.sroa.0.0 = phi i32 [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc73, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 7 uses
  %.sroa.010.sroa.11.0 = phi i64 [ %.sroa.010.sroa.11.0.extract.trunc62, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  %.sroa.23.039 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.23.039.ph, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  switch i32 %.sroa.23.039, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.az = icmp slt i32 %.sroa.010.sroa.0.sroa.0.0, 0
  %i.ba = zext nneg i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br i1 %i.az, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

bb.r:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.bb = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext74 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift75 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext74, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext63.a = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert65.a = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift75, %.sroa.010.sroa.0.sroa.0.0.insert.ext63.a
  %i.bc = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.010.sroa.0.sroa.0.0.insert.insert65.a, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.126) #42
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.126) #42
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.126) #42
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.126) #42
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.126) #42
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.126) #42
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.126) #42
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.126) #42
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.126) #42
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.126) #42
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.125) #42
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !51
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i32 0, ptr %i.a, align 4, !tbaa !278
  %i.b = load i8, ptr %0, align 1, !tbaa !68      ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !40

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !68    ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !40

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !40

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !68
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.110) #42
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !51
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !68
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !169 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.118) #42
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !169
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !278
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  store ptr %4, ptr %5, align 8, !tbaa !866
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !867
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !141
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.aj, %bb.h ], [ %i.ar, %bb.l ], [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !68
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !278
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.115) #42
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !68      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
end_hunk_3
