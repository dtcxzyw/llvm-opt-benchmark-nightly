Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/filesystem?download=true
inline.NumInlined: 9057
inline.NumDeleted: 2916
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EE:bb.a
  br i1 %i.bz, label %bb.s, label %.sink.split

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 2 ; 7 uses
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !151
  %i.cb = load i32, ptr %i.d, align 8, !tbaa !494, !noalias !1749 ; 7 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.t, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i

bb.t:                                             ; preds = %bb.s
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.248) #40, !noalias !1749
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i: ; preds = %bb.s
  %i.cd = add nuw nsw i32 %i.cb, 1
  store i32 %i.cd, ptr %i.d, align 8, !tbaa !494, !noalias !1749
  %i.ce = load i64, ptr %i.c, align 8, !tbaa !619, !noalias !1750 ; 3 uses
  %i.cf = icmp sgt i64 %i.ce, -1
  br i1 %i.cf, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i
  %i.cg = trunc i64 %i.ce to i32
  %i.ch = icmp slt i32 %i.cb, %i.cg
  br i1 %i.ch, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i

bb.v:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i
  %i.ci = icmp samesign ugt i32 %i.cb, 14
  br i1 %i.ci, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = shl nuw nsw i32 %i.cb, 2
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 %i.ce, %i.ck
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = and i32 %i.cm, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i: ; preds = %bb.w
  %i.co = load ptr, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !88, !noalias !1750
  %i.cp = zext nneg i32 %i.cb to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cp
  br label %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i: ; preds = %bb.u
  %i.cr = load ptr, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !88, !noalias !1750
  %i.cs = zext nneg i32 %i.cb to i64
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.5.0.copyload7.i = load i32, ptr %.sroa.5.0..sroa_idx6.i, align 16, !tbaa !489, !noalias !1749 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.5.0.copyload7.i, 0
  br i1 %.not.i, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i, label %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i: ; preds = %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i, %bb.w, %bb.v, %bb.u
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.243) #40, !noalias !1749
  unreachable

_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit: ; preds = %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i
  %.sroa.0.014.in.i = phi ptr [ %i.cq, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i ], [ %i.ct, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i ]
  %.sroa.5.013.i = phi i32 [ %i.cn, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i ], [ %.sroa.5.0.copyload7.i, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i ]
  %.sroa.0.014.i = load i128, ptr %.sroa.0.014.in.i, align 16, !tbaa !88, !noalias !1749 ; 9 uses
  %.sroa.0264.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.014.i to i32 ; 5 uses
  %.sroa.0264.sroa.0.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.014.i to i8 ; 2 uses
  %.sroa.0264.sroa.0.sroa.9.0.extract.shift621 = lshr i128 %.sroa.0.014.i, 32 ; 2 uses
  switch i32 %.sroa.5.013.i, label %bb.ap [
    i32 15, label %bb.ao
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.aa
    i32 4, label %bb.ac
    i32 5, label %bb.ae
    i32 6, label %bb.af
    i32 7, label %bb.ag
    i32 8, label %bb.ah
    i32 9, label %bb.ai
    i32 10, label %bb.aj
    i32 11, label %bb.ak
    i32 12, label %bb.al
    i32 13, label %bb.am
    i32 14, label %bb.an
  ]

bb.x:                                             ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  %.sroa.0264.sroa.0.sroa.0.sroa.9.0.extract.shift = and i32 %.sroa.0264.sroa.0.sroa.0.0.extract.trunc, -256
  %i.cu = trunc i128 %.sroa.0.014.i to i32
  %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.ext515 = and i32 %i.cu, 255
  %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.insert517 = or disjoint i32 %.sroa.0264.sroa.0.sroa.0.sroa.9.0.extract.shift, %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.ext515
  %i.cv = call noundef i32 @llvm.smax.i32(i32 %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.insert517, i32 0)
  br label %.sink.split

bb.y:                                             ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  %.sroa.0264.sroa.0.sroa.0.sroa.9.0.insert.shift = and i32 %.sroa.0264.sroa.0.sroa.0.0.extract.trunc, -256
  %i.cw = trunc i128 %.sroa.0.014.i to i32
  %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.ext = and i32 %i.cw, 255
  %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0264.sroa.0.sroa.0.sroa.9.0.insert.shift, %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.ext
  %i.cx = icmp sgt i32 %.sroa.0264.sroa.0.sroa.0.0.extract.trunc, -1
  br i1 %i.cx, label %.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #40
  unreachable

bb.aa:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  %.sroa.0264.sroa.0.sroa.9.0.extract.trunc = trunc i128 %.sroa.0264.sroa.0.sroa.9.0.extract.shift621 to i64
  %.sroa.0264.sroa.0.sroa.9.0.insert.ext511 = shl i64 %.sroa.0264.sroa.0.sroa.9.0.extract.trunc, 32
  %i.cy = trunc i128 %.sroa.0.014.i to i64
  %.sroa.0264.sroa.0.sroa.0.0.insert.ext508 = and i64 %i.cy, 2147483648
  %.sroa.0264.sroa.0.sroa.0.0.insert.insert510 = or disjoint i64 %.sroa.0264.sroa.0.sroa.9.0.insert.ext511, %.sroa.0264.sroa.0.sroa.0.0.insert.ext508
  %i.cz = add i64 %.sroa.0264.sroa.0.sroa.0.0.insert.insert510, 2147483648
  %spec.select.i.i = icmp ult i64 %i.cz, 4294967296
  br i1 %spec.select.i.i, label %_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #40
  unreachable

_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit: ; preds = %bb.aa
  %.sroa.0264.sroa.0.sroa.0.sroa.9.0.insert.shift533 = and i32 %.sroa.0264.sroa.0.sroa.0.0.extract.trunc, -256
  %i.da = trunc i128 %.sroa.0.014.i to i32
  %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.ext521 = and i32 %i.da, 255
  %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.insert523 = or disjoint i32 %.sroa.0264.sroa.0.sroa.0.sroa.9.0.insert.shift533, %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.ext521
  %i.db = call noundef i32 @llvm.smax.i32(i32 %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.insert523, i32 0)
  br label %.sink.split

bb.ac:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  %.sroa.0264.sroa.0.sroa.0.sroa.9.0.insert.shift529 = and i32 %.sroa.0264.sroa.0.sroa.0.0.extract.trunc, -256
  %i.dc = trunc i128 %.sroa.0.014.i to i32
  %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.ext518 = and i32 %i.dc, 255
  %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.insert520 = or disjoint i32 %.sroa.0264.sroa.0.sroa.0.sroa.9.0.insert.shift529, %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.ext518
  %i.dd = trunc i128 %.sroa.0264.sroa.0.sroa.9.0.extract.shift621 to i64
  %.sroa.0264.sroa.0.sroa.9.0.insert.ext = shl i64 %i.dd, 32
  %i.de = trunc i128 %.sroa.0.014.i to i64
  %.sroa.0264.sroa.0.sroa.0.0.insert.ext = and i64 %i.de, 2147483648
  %.sroa.0264.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0264.sroa.0.sroa.9.0.insert.ext, %.sroa.0264.sroa.0.sroa.0.0.insert.ext
  %i.df = icmp eq i64 %.sroa.0264.sroa.0.sroa.0.0.insert.insert, 0
  br i1 %i.df, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #40
  unreachable

bb.ae:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.262) #40
  unreachable

bb.af:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.262) #40
  unreachable

bb.ag:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  %i.dg = and i8 %.sroa.0264.sroa.0.sroa.0.sroa.0.0.extract.trunc, 1
  %i.dh = zext nneg i8 %i.dg to i32
  br label %.sink.split

bb.ah:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  %i.di = call i8 @llvm.smax.i8(i8 %.sroa.0264.sroa.0.sroa.0.sroa.0.0.extract.trunc, i8 0)
  %i.dj = zext nneg i8 %i.di to i32
  br label %.sink.split

bb.ai:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.262) #40
  unreachable

bb.aj:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.262) #40
  unreachable

bb.ak:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.262) #40
  unreachable

bb.al:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.262) #40
  unreachable

bb.am:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.262) #40
  unreachable

bb.an:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.262) #40
  unreachable

bb.ao:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.262) #40
  unreachable

bb.ap:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.262) #40
  unreachable

.sink.split:                                      ; preds = %bb.r, %bb.k, %bb.ah, %bb.ag, %_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit, %bb.x, %bb.y, %bb.ac, %bb.q, %bb.p, %.critedge.i
  %.028.i.sink = phi i32 [ %.lcssa, %bb.p ], [ %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.insert520, %bb.ac ], [ %.lcssa, %.critedge.i ], [ 0, %bb.q ], [ %.sroa.0264.sroa.0.sroa.0.sroa.0.0.insert.insert, %bb.y ], [ %i.dj, %bb.ah ], [ %i.cv, %bb.x ], [ %i.dh, %bb.ag ], [ %i.db, %_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit ], [ 0, %bb.k ], [ 0, %bb.r ]
  %.ph = phi ptr [ %.lcssa.i, %bb.p ], [ %i.ca, %bb.ac ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.q ], [ %i.ca, %bb.y ], [ %i.ca, %bb.ah ], [ %i.ca, %bb.x ], [ %i.ca, %bb.ag ], [ %i.ca, %_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit ], [ %i.as, %bb.k ], [ %i.as, %bb.r ]
  store i32 %.028.i.sink, ptr %i.h, align 4, !tbaa !502
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.j, %bb.i
  %i.dk = phi ptr [ %i.ap, %bb.i ], [ %i.ap, %bb.j ], [ %.ph, %.sink.split ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.dl = icmp slt i32 %i.an, 0
  %i.dm = load i32, ptr %i.d, align 8, !tbaa !494, !noalias !1751 ; 4 uses
  br i1 %i.dl, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %bb.as, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i117

bb.as:                                            ; preds = %bb.ar
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.248) #40, !noalias !1751
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i117: ; preds = %bb.ar
  %i.do = add nuw nsw i32 %i.dm, 1
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.dp = icmp sgt i32 %i.dm, 0
  br i1 %i.dp, label %bb.au, label %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i

bb.au:                                            ; preds = %bb.at
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.249) #40, !noalias !1751
  unreachable

_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i: ; preds = %bb.at
  %i.dq = add nsw i32 %i.an, -1
  br label %bb.av

bb.av:                                            ; preds = %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i117
  %.sink.i = phi i32 [ -1, %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i ], [ %i.do, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i117 ]
  %.0.i105 = phi i32 [ %i.dq, %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i ], [ %i.dm, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i117 ] ; 5 uses
  store i32 %.sink.i, ptr %i.d, align 8, !tbaa !494, !noalias !1751
  %i.dr = load i64, ptr %i.c, align 8, !tbaa !619, !noalias !1752 ; 3 uses
  %i.ds = icmp sgt i64 %i.dr, -1
  br i1 %i.ds, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dt = trunc i64 %i.dr to i32
  %i.du = icmp slt i32 %.0.i105, %i.dt
  br i1 %i.du, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i107, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i106

bb.ax:                                            ; preds = %bb.av
  %i.dv = icmp ugt i32 %.0.i105, 14
  br i1 %i.dv, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i106, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dw = shl nuw nsw i32 %.0.i105, 2
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = lshr i64 %i.dr, %i.dx
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 15                       ; 2 uses
  %.not.i.i.i115 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i115, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i106, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i116

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i116: ; preds = %bb.ay
  %i.eb = load ptr, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !88, !noalias !1752
  %i.ec = zext nneg i32 %.0.i105 to i64
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.ec
  br label %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit118

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i107: ; preds = %bb.aw
  %i.ee = load ptr, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !88, !noalias !1752
  %i.ef = zext nneg i32 %.0.i105 to i64
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %.sroa.5.0..sroa_idx6.i108 = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %.sroa.5.0.copyload7.i109 = load i32, ptr %.sroa.5.0..sroa_idx6.i108, align 16, !tbaa !489, !noalias !1751 ; 2 uses
  %.not.i110 = icmp eq i32 %.sroa.5.0.copyload7.i109, 0
  br i1 %.not.i110, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i106, label %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit118

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i106: ; preds = %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i107, %bb.ay, %bb.ax, %bb.aw
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.243) #40, !noalias !1751
  unreachable

_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit118: ; preds = %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i116, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i107
  %.sroa.0.014.in.i111 = phi ptr [ %i.ed, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i116 ], [ %i.eg, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i107 ] ; 3 uses
  %.sroa.5.013.i112 = phi i32 [ %i.ea, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i116 ], [ %.sroa.5.0.copyload7.i109, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i107 ] ; 5 uses
  %.sroa.0.014.i113737 = load i80, ptr %.sroa.0.014.in.i111, align 16
  %.sroa.0.014.in.i111.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.014.in.i111, i64 10
  %.sroa.0.014.i113738 = load i48, ptr %.sroa.0.014.in.i111.sroa_idx, align 2
  %.sroa.0.014.i113 = load i128, ptr %.sroa.0.014.in.i111, align 16, !tbaa !88, !noalias !1751 ; 14 uses
  store i80 %.sroa.0.014.i113737, ptr %.sroa.0, align 16
  store i48 %.sroa.0.014.i113738, ptr %.sroa.0.10.sroa_idx739.sroa_idx, align 2
  %i.eh = load i32, ptr %i.h, align 4, !tbaa !502 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, -1
  %i.ej = trunc i128 %.sroa.0.014.i113 to i64     ; 5 uses
  %i.ek = inttoptr i64 %i.ej to ptr               ; 5 uses
  %i.el = trunc i128 %.sroa.0.014.i113 to i8      ; 3 uses
  %i.em = trunc i128 %.sroa.0.014.i113 to i32     ; 3 uses
  %i.en = lshr i128 %.sroa.0.014.i113, 64
  %i.eo = trunc nuw i128 %i.en to i64             ; 3 uses
  br i1 %i.ei, label %bb.az, label %bb.bk

bb.az:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit118
  %i.ep = icmp ult i32 %.sroa.5.013.i112, 9
  br i1 %i.ep, label %.thread433, label %bb.ba

.thread433:                                       ; preds = %bb.az
  store i8 32, ptr %i.g, align 4, !tbaa !88
  %i.eq = load i32, ptr %21, align 8, !tbaa !500
  %i.er = and i32 %i.eq, -229377
  %i.es = or disjoint i32 %i.er, 32768
  store i32 %i.es, ptr %21, align 8, !tbaa !500
  br label %bb.bk

bb.ba:                                            ; preds = %bb.az
  %i.et = icmp eq i32 %.sroa.5.013.i112, 12
  br i1 %i.et, label %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11get_cstringIcEEEEDTclfp_Li0EEEOT_.exit, label %bb.bk

_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11get_cstringIcEEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.ba
  %i.eu = zext nneg i32 %i.eh to i64              ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eu ; 3 uses
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = lshr i64 %i.eu, 2                       ; 2 uses
  %.not440 = icmp eq i64 %i.ex, 0
  br i1 %.not440, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11get_cstringIcEEEEDTclfp_Li0EEEOT_.exit
  %i.ey = and i64 %i.eu, 2147483644
  %scevgep.i.i.i = getelementptr i8, ptr %i.ek, i64 %i.ey ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bf, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.ex, %.lr.ph.i.i.i ], [ %i.fl, %bb.bf ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i ], [ %i.fk, %bb.bf ] ; 9 uses
  %i.ez = load i8, ptr %.02946.i.i.i, align 1, !tbaa !88
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !88
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fe = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !88
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit646, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !88
  %i.fj = icmp eq i8 %i.fi, 0
  br i1 %i.fj, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit648, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.fl = add nsw i64 %.047.i.i.i, -1
  %i.fm = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.fm, label %bb.bb, label %._crit_edge.loopexit.i.i.i, !llvm.loop !1743

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.bf
  %.pre54.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11get_cstringIcEEEEDTclfp_Li0EEEOT_.exit
  %.pre-phi.i.i.i = phi i64 [ %.pre54.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ej, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11get_cstringIcEEEEDTclfp_Li0EEEOT_.exit ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ek, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11get_cstringIcEEEEDTclfp_Li0EEEOT_.exit ] ; 5 uses
  %i.fn = sub i64 %i.ew, %.pre-phi.i.i.i
  switch i64 %i.fn, label %bb.bj [
    i64 3, label %bb.bg
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i.i
  %i.fo = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !88
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fq = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.bh
  %.1.i.i.i = phi ptr [ %i.fq, %bb.bh ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.fr = load i8, ptr %.1.i.i.i, align 1, !tbaa !88
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.bi
  %.2.i.i.i = phi ptr [ %i.ft, %bb.bi ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.fu = load i8, ptr %.2.i.i.i, align 1, !tbaa !88
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.bc
  %i.fw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit646: ; preds = %bb.bd
  %i.fx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit648: ; preds = %bb.be
  %i.fy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit:                ; preds = %bb.bb, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit646, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit648, %bb.bg, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i, %bb.bj
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.ev, %bb.bj ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.bg ], [ %i.fy, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit648 ], [ %i.fx, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit646 ], [ %i.fw, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.bb ] ; 2 uses
  %.not80 = icmp eq ptr %.028.i.i.i, %i.ev
  %i.fz = ptrtoint ptr %.028.i.i.i to i64
  %i.ga = sub i64 %i.fz, %i.ej
  %i.gb = select i1 %.not80, i64 %i.eu, i64 %i.ga ; 2 uses
  store ptr %i.ek, ptr %.sroa.0, align 16
  store i64 %i.gb, ptr %.sroa.0.8..sroa_idx, align 8, !tbaa !88
  %i.gc = trunc i128 %.sroa.0.014.i113 to i8
  %i.gd = trunc i128 %.sroa.0.014.i113 to i32
  br label %bb.bk

bb.bk:                                            ; preds = %.thread433, %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit118, %_ZSt4findIPKccET_S2_S2_RKT0_.exit, %bb.ba
  %.sroa.0.0..sroa.0.0..sroa.0.0.377589 = phi i8 [ %i.gc, %_ZSt4findIPKccET_S2_S2_RKT0_.exit ], [ %i.el, %bb.ba ], [ %i.el, %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit118 ], [ %i.el, %.thread433 ] ; 94 uses
  %.sroa.0.8..sroa.0.8..sroa.0.8.403 = phi i64 [ %i.gb, %_ZSt4findIPKccET_S2_S2_RKT0_.exit ], [ %i.eo, %bb.ba ], [ %i.eo, %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit118 ], [ %i.eo, %.thread433 ] ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0.353582 = phi i32 [ %i.gd, %_ZSt4findIPKccET_S2_S2_RKT0_.exit ], [ %i.em, %bb.ba ], [ %i.em, %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit118 ], [ %i.em, %.thread433 ] ; 81 uses
  %.sroa.152.0 = phi i32 [ 13, %_ZSt4findIPKccET_S2_S2_RKT0_.exit ], [ %.sroa.5.013.i112, %bb.ba ], [ %.sroa.5.013.i112, %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit118 ], [ %.sroa.5.013.i112, %.thread433 ] ; 19 uses
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i99 = inttoptr i64 %.sroa.0.8..sroa.0.8..sroa.0.8.403 to ptr
  %i.ge = load i32, ptr %21, align 8, !tbaa !500  ; 10 uses
  %i.gf = and i32 %i.ge, 8192
  %.not441 = icmp eq i32 %i.gf, 0
  br i1 %.not441, label %.critedge, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  switch i32 %.sroa.152.0, label %.critedge [
    i32 7, label %.split
    i32 1, label %.split438
    i32 2, label %.split437
    i32 3, label %.split436
    i32 4, label %.split435
    i32 8, label %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit
  ]

.split438:                                        ; preds = %bb.bl
  %i.gg = icmp eq i32 %.sroa.0.0..sroa.0.0..sroa.0.0.353582, 0
  br i1 %i.gg, label %bb.bm, label %.critedge

.split437:                                        ; preds = %bb.bl
  %i.gh = icmp eq i32 %.sroa.0.0..sroa.0.0..sroa.0.0.353582, 0
  br i1 %i.gh, label %bb.bm, label %.critedge

.split436:                                        ; preds = %bb.bl
  %i.gi = icmp eq i64 %i.ej, 0
  br i1 %i.gi, label %bb.bm, label %.critedge

.split435:                                        ; preds = %bb.bl
  %i.gj = icmp eq i64 %i.ej, 0
  br i1 %i.gj, label %bb.bm, label %.critedge

.split:                                           ; preds = %bb.bl
  %i.gk = trunc nuw i8 %.sroa.0.0..sroa.0.0..sroa.0.0.377589 to i1
  br i1 %i.gk, label %.critedge, label %bb.bm

_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.bl
  %i.gl = icmp eq i8 %.sroa.0.0..sroa.0.0..sroa.0.0.377589, 0
  br i1 %i.gl, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %.split438, %.split437, %.split436, %.split435, %.split, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit
  %i.gm = and i32 %i.ge, -8193                    ; 2 uses
  store i32 %i.gm, ptr %21, align 8, !tbaa !500
  br label %.critedge

.critedge:                                        ; preds = %bb.bl, %bb.bk, %.split438, %.split437, %.split436, %.split435, %.split, %bb.bm, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit
  %i.gn = phi i32 [ %i.ge, %bb.bl ], [ %i.ge, %bb.bk ], [ %i.ge, %.split438 ], [ %i.ge, %.split437 ], [ %i.ge, %.split436 ], [ %i.ge, %.split435 ], [ %i.ge, %.split ], [ %i.gm, %bb.bm ], [ %i.ge, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit ] ; 2 uses
  %i.go = load i8, ptr %i.g, align 4, !tbaa !88
  %i.gp = icmp eq i8 %i.go, 48
  br i1 %i.gp, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.critedge
  %i.gq = icmp ugt i32 %.sroa.152.0, 11
  %i.gr = and i32 %i.gn, 56
  %.not81 = icmp eq i32 %i.gr, 8
  %or.cond654 = or i1 %i.gq, %.not81
  br i1 %or.cond654, label %bb.bo, label %.sink.split655

bb.bo:                                            ; preds = %bb.bn
end_hunk_0
