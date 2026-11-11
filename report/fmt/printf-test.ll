Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/printf-test?download=true
inline.NumInlined: 26200
inline.NumDeleted: 1767
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EE:bb.a
  unreachable

bb.bp:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  %.sroa.0311.sroa.0.sroa.9.0.extract.trunc = trunc i128 %.sroa.0311.sroa.0.sroa.9.0.extract.shift599 to i64
  %.sroa.0311.sroa.0.sroa.9.0.insert.ext494 = shl i64 %.sroa.0311.sroa.0.sroa.9.0.extract.trunc, 32
  %i.fz = trunc i128 %.sroa.0.014.i144 to i64
  %.sroa.0311.sroa.0.sroa.0.0.insert.ext491 = and i64 %i.fz, 2147483648
  %.sroa.0311.sroa.0.sroa.0.0.insert.insert493 = or disjoint i64 %.sroa.0311.sroa.0.sroa.9.0.insert.ext494, %.sroa.0311.sroa.0.sroa.0.0.insert.ext491
  %i.ga = add i64 %.sroa.0311.sroa.0.sroa.0.0.insert.insert493, 2147483648
  %spec.select.i.i150 = icmp ult i64 %i.ga, 4294967296
  br i1 %spec.select.i.i150, label %_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit151, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.97) #31
  unreachable

_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit151: ; preds = %bb.bp
  %.sroa.0311.sroa.0.sroa.0.sroa.9.0.insert.shift516 = and i32 %.sroa.0311.sroa.0.sroa.0.0.extract.trunc, -256
  %i.gb = trunc i128 %.sroa.0.014.i144 to i32
  %.sroa.0311.sroa.0.sroa.0.sroa.0.0.insert.ext504 = and i32 %i.gb, 255
  %.sroa.0311.sroa.0.sroa.0.sroa.0.0.insert.insert506 = or disjoint i32 %.sroa.0311.sroa.0.sroa.0.sroa.9.0.insert.shift516, %.sroa.0311.sroa.0.sroa.0.sroa.0.0.insert.ext504
  %i.gc = call noundef i32 @llvm.smax.i32(i32 %.sroa.0311.sroa.0.sroa.0.sroa.0.0.insert.insert506, i32 0)
  br label %.sink.split

bb.br:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  %.sroa.0311.sroa.0.sroa.0.sroa.9.0.insert.shift512 = and i32 %.sroa.0311.sroa.0.sroa.0.0.extract.trunc, -256
  %i.gd = trunc i128 %.sroa.0.014.i144 to i32
  %.sroa.0311.sroa.0.sroa.0.sroa.0.0.insert.ext501 = and i32 %i.gd, 255
  %.sroa.0311.sroa.0.sroa.0.sroa.0.0.insert.insert503 = or disjoint i32 %.sroa.0311.sroa.0.sroa.0.sroa.9.0.insert.shift512, %.sroa.0311.sroa.0.sroa.0.sroa.0.0.insert.ext501
  %i.ge = trunc i128 %.sroa.0311.sroa.0.sroa.9.0.extract.shift599 to i64
  %.sroa.0311.sroa.0.sroa.9.0.insert.ext = shl i64 %i.ge, 32
  %i.gf = trunc i128 %.sroa.0.014.i144 to i64
  %.sroa.0311.sroa.0.sroa.0.0.insert.ext = and i64 %i.gf, 2147483648
  %.sroa.0311.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0311.sroa.0.sroa.9.0.insert.ext, %.sroa.0311.sroa.0.sroa.0.0.insert.ext
  %i.gg = icmp eq i64 %.sroa.0311.sroa.0.sroa.0.0.insert.insert, 0
  br i1 %i.gg, label %.sink.split, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.97) #31
  unreachable

bb.bt:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  %i.gh = add i128 %.sroa.0.014.i144, 2147483648
  %spec.select.i.i153 = icmp ult i128 %i.gh, 4294967296
  br i1 %spec.select.i.i153, label %_ZN3fmt3v126detail24printf_precision_handlerclInTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit154, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.97) #31
  unreachable

_ZN3fmt3v126detail24printf_precision_handlerclInTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit154: ; preds = %bb.bt
  %i.gi = trunc nsw i128 %.sroa.0.014.i144 to i32
  %i.gj = call noundef i32 @llvm.smax.i32(i32 %i.gi, i32 0)
  br label %.sink.split

bb.bv:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  %i.gk = icmp ult i128 %.sroa.0.014.i144, 2147483648
  br i1 %i.gk, label %_ZN3fmt3v126detail24printf_precision_handlerclIoTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit155, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.97) #31
  unreachable

_ZN3fmt3v126detail24printf_precision_handlerclIoTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit155: ; preds = %bb.bv
  %i.gl = trunc nuw nsw i128 %.sroa.0.014.i144 to i32
  br label %.sink.split

bb.bx:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  %i.gm = and i8 %.sroa.0311.sroa.0.sroa.0.sroa.0.0.extract.trunc, 1
  %i.gn = zext nneg i8 %i.gm to i32
  br label %.sink.split

bb.by:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  %i.go = call i8 @llvm.smax.i8(i8 %.sroa.0311.sroa.0.sroa.0.sroa.0.0.extract.trunc, i8 0)
  %i.gp = zext nneg i8 %i.go to i32
  br label %.sink.split

bb.bz:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.517) #31
  unreachable

bb.ca:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.517) #31
  unreachable

bb.cb:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.517) #31
  unreachable

bb.cc:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.517) #31
  unreachable

bb.cd:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.517) #31
  unreachable

bb.ce:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.517) #31
  unreachable

bb.cf:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.517) #31
  unreachable

bb.cg:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit148
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.517) #31
  unreachable

.sink.split:                                      ; preds = %bb.t, %bb.m, %bb.by, %bb.bx, %_ZN3fmt3v126detail24printf_precision_handlerclIoTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit155, %_ZN3fmt3v126detail24printf_precision_handlerclInTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit154, %_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit151, %bb.bm, %bb.bn, %bb.br, %bb.ax, %bb.aw, %_ZN3fmt3v126detail24printf_precision_handlerclIoTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit, %_ZN3fmt3v126detail24printf_precision_handlerclInTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit, %_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit, %bb.al, %bb.am, %bb.aq, %bb.s, %bb.r, %.critedge.i
  %.028.i.sink = phi i32 [ %.sroa.0311.sroa.0.sroa.0.sroa.0.0.insert.insert503, %bb.br ], [ %.lcssa655, %bb.r ], [ %.sroa.0329.sroa.0.sroa.0.sroa.0.0.insert.insert534, %bb.aq ], [ %.lcssa655, %.critedge.i ], [ 0, %bb.s ], [ %i.ez, %bb.aw ], [ %i.fb, %bb.ax ], [ %i.ei, %bb.al ], [ %.sroa.0329.sroa.0.sroa.0.sroa.0.0.insert.insert, %bb.am ], [ %i.eo, %_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit ], [ %i.ex, %_ZN3fmt3v126detail24printf_precision_handlerclIoTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit ], [ %i.ev, %_ZN3fmt3v126detail24printf_precision_handlerclInTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit ], [ %i.gn, %bb.bx ], [ %i.gp, %bb.by ], [ %i.fw, %bb.bm ], [ %.sroa.0311.sroa.0.sroa.0.sroa.0.0.insert.insert, %bb.bn ], [ %i.gc, %_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit151 ], [ %i.gl, %_ZN3fmt3v126detail24printf_precision_handlerclIoTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit155 ], [ %i.gj, %_ZN3fmt3v126detail24printf_precision_handlerclInTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit154 ], [ 0, %bb.m ], [ 0, %bb.t ]
  %.ph = phi ptr [ %i.cc, %bb.br ], [ %.lcssa.i, %bb.r ], [ %i.dk, %bb.aq ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.s ], [ %i.dk, %bb.aw ], [ %i.dk, %bb.ax ], [ %i.dk, %bb.al ], [ %i.dk, %bb.am ], [ %i.dk, %_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit ], [ %i.dk, %_ZN3fmt3v126detail24printf_precision_handlerclIoTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit ], [ %i.dk, %_ZN3fmt3v126detail24printf_precision_handlerclInTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit ], [ %i.cc, %bb.bx ], [ %i.cc, %bb.by ], [ %i.cc, %bb.bm ], [ %i.cc, %bb.bn ], [ %i.cc, %_ZN3fmt3v126detail24printf_precision_handlerclIxTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit151 ], [ %i.cc, %_ZN3fmt3v126detail24printf_precision_handlerclIoTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit155 ], [ %i.cc, %_ZN3fmt3v126detail24printf_precision_handlerclInTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit154 ], [ %i.au, %bb.m ], [ %i.au, %bb.t ]
  store i32 %.028.i.sink, ptr %i.h, align 4, !tbaa !154
  br label %bb.ch

bb.ch:                                            ; preds = %.sink.split, %bb.l, %bb.k
  %i.gq = phi ptr [ %i.ar, %bb.l ], [ %i.ar, %bb.k ], [ %.ph, %.sink.split ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !17982)
  %i.gr = icmp slt i32 %i.ap, 0
  %i.gs = load i32, ptr %i.d, align 8, !tbaa !151, !noalias !17982 ; 4 uses
  br i1 %i.gr, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.gt = icmp slt i32 %i.gs, 0
  br i1 %i.gt, label %bb.cj, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i181

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.102) #31, !noalias !17982
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i181: ; preds = %bb.ci
  %i.gu = add nuw nsw i32 %i.gs, 1
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ch
  %i.gv = icmp sgt i32 %i.gs, 0
  br i1 %i.gv, label %bb.cl, label %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i167

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.107) #31, !noalias !17982
  unreachable

_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i167: ; preds = %bb.ck
  %i.gw = add nsw i32 %i.ap, -1
  br label %bb.cm

bb.cm:                                            ; preds = %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i167, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i181
  %.sink.i168 = phi i32 [ -1, %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i167 ], [ %i.gu, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i181 ]
  %.0.i169 = phi i32 [ %i.gw, %_ZN3fmt3v1213parse_contextIcE12check_arg_idEi.exit.i167 ], [ %i.gs, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit.i181 ] ; 5 uses
  store i32 %.sink.i168, ptr %i.d, align 8, !tbaa !151, !noalias !17982
  %i.gx = load i64, ptr %i.c, align 8, !tbaa !157, !noalias !17983 ; 3 uses
  %i.gy = icmp sgt i64 %i.gx, -1
  br i1 %i.gy, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gz = trunc i64 %i.gx to i32
  %i.ha = icmp ult i32 %.0.i169, %i.gz
  br i1 %i.ha, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i171, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i170

bb.co:                                            ; preds = %bb.cm
  %i.hb = icmp ugt i32 %.0.i169, 14
  br i1 %i.hb, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i170, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hc = shl nuw nsw i32 %.0.i169, 2
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = lshr i64 %i.gx, %i.hd
  %i.hf = trunc i64 %i.he to i32
  %i.hg = and i32 %i.hf, 15                       ; 2 uses
  %.not.i.i.i179 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i.i179, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i170, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i180

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i180: ; preds = %bb.cp
  %i.hh = load ptr, ptr %.sroa.2.0..sroa_idx.i116, align 8, !tbaa !90, !noalias !17983
  %i.hi = zext nneg i32 %.0.i169 to i64
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %i.hi
  br label %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit182

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i171: ; preds = %bb.cn
  %i.hk = load ptr, ptr %.sroa.2.0..sroa_idx.i116, align 8, !tbaa !90, !noalias !17983
  %i.hl = zext nneg i32 %.0.i169 to i64
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %i.hk, i64 %i.hl ; 2 uses
  %.sroa.5.0..sroa_idx6.i172 = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %.sroa.5.0.copyload7.i173 = load i32, ptr %.sroa.5.0..sroa_idx6.i172, align 16, !tbaa !158, !noalias !17982 ; 2 uses
  %.not.i174 = icmp eq i32 %.sroa.5.0.copyload7.i173, 0
  br i1 %.not.i174, label %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i170, label %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit182

_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread.i170: ; preds = %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i171, %bb.cp, %bb.co, %bb.cn
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.86) #31, !noalias !17982
  unreachable

_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit182: ; preds = %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i180, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i171
  %.sroa.0.014.in.i175 = phi ptr [ %i.hj, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i180 ], [ %i.hm, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i171 ]
  %.sroa.5.013.i176 = phi i32 [ %i.hg, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.thread10.i180 ], [ %.sroa.5.0.copyload7.i173, %_ZNK3fmt3v1220basic_printf_contextIcE3argEi.exit.i171 ] ; 6 uses
  %.sroa.0.014.i177 = load i128, ptr %.sroa.0.014.in.i175, align 16, !tbaa !90, !noalias !17982 ; 6 uses
  store i128 %.sroa.0.014.i177, ptr %22, align 16, !tbaa !90, !alias.scope !17982
  store i32 %.sroa.5.013.i176, ptr %.sroa.5.0..sroa_idx.i178, align 16, !tbaa !158, !alias.scope !17982
  %i.hn = load i32, ptr %i.h, align 4, !tbaa !154 ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  %i.hp = trunc i128 %.sroa.0.014.i177 to i64     ; 4 uses
  %i.hq = inttoptr i64 %i.hp to ptr               ; 5 uses
  %i.hr = trunc i128 %.sroa.0.014.i177 to i8      ; 3 uses
  %i.hs = trunc i128 %.sroa.0.014.i177 to i32     ; 3 uses
  br i1 %i.ho, label %bb.cq, label %bb.db

bb.cq:                                            ; preds = %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit182
  %i.ht = icmp ult i32 %.sroa.5.013.i176, 9
  br i1 %i.ht, label %.thread379, label %bb.cr

.thread379:                                       ; preds = %bb.cq
  store i8 32, ptr %i.g, align 4, !tbaa !90
  %i.hu = load i32, ptr %21, align 8, !tbaa !155
  %i.hv = and i32 %i.hu, -229377
  %i.hw = or disjoint i32 %i.hv, 32768
  store i32 %i.hw, ptr %21, align 8, !tbaa !155
  br label %bb.db

bb.cr:                                            ; preds = %bb.cq
  %i.hx = icmp eq i32 %.sroa.5.013.i176, 12
  br i1 %i.hx, label %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11get_cstringIcEEEEDTclfp_Li0EEEOT_.exit, label %bb.db

_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11get_cstringIcEEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.cr
  %i.hy = zext nneg i32 %i.hn to i64              ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hy ; 3 uses
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = lshr i64 %i.hy, 2                       ; 2 uses
  %.not388 = icmp eq i64 %i.ib, 0
  br i1 %.not388, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11get_cstringIcEEEEDTclfp_Li0EEEOT_.exit
  %i.ic = and i64 %i.hy, 2147483644
  %scevgep.i.i.i = getelementptr i8, ptr %i.hq, i64 %i.ic
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cw, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.ib, %.lr.ph.i.i.i ], [ %i.ip, %bb.cw ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i ], [ %i.io, %bb.cw ] ; 9 uses
  %i.id = load i8, ptr %.02946.i.i.i, align 1, !tbaa !90
  %i.ie = icmp eq i8 %i.id, 0
  br i1 %i.ie, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.if = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !90
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ii = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !90
  %i.ik = icmp eq i8 %i.ij, 0
  br i1 %i.ik, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit643, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.il = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.im = load i8, ptr %i.il, align 1, !tbaa !90
  %i.in = icmp eq i8 %i.im, 0
  br i1 %i.in, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit645, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.io = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.ip = add nsw i64 %.047.i.i.i, -1
  %i.iq = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.iq, label %bb.cs, label %._crit_edge.i.i.i, !llvm.loop !17972

._crit_edge.i.i.i:                                ; preds = %bb.cw, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11get_cstringIcEEEEDTclfp_Li0EEEOT_.exit
  %.029.lcssa.i.i.i = phi ptr [ %i.hq, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11get_cstringIcEEEEDTclfp_Li0EEEOT_.exit ], [ %scevgep.i.i.i, %bb.cw ] ; 6 uses
  %.pre-phi.i.pre-phi.i.pre-phi.i = ptrtoint ptr %.029.lcssa.i.i.i to i64
  %i.ir = sub i64 %i.ia, %.pre-phi.i.pre-phi.i.pre-phi.i
  switch i64 %i.ir, label %bb.da [
    i64 3, label %bb.cx
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.cx:                                            ; preds = %._crit_edge.i.i.i
  %i.is = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !90
  %i.it = icmp eq i8 %i.is, 0
  br i1 %i.it, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.iu = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.cy
  %.1.i.i.i = phi ptr [ %i.iu, %bb.cy ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.iv = load i8, ptr %.1.i.i.i, align 1, !tbaa !90
  %i.iw = icmp eq i8 %i.iv, 0
  br i1 %i.iw, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.cz
  %.2.i.i.i = phi ptr [ %i.ix, %bb.cz ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.iy = load i8, ptr %.2.i.i.i, align 1, !tbaa !90
  %i.iz = icmp eq i8 %i.iy, 0
  br i1 %i.iz, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.da

bb.da:                                            ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.ct
  %i.ja = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit643: ; preds = %bb.cu
  %i.jb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit645: ; preds = %bb.cv
  %i.jc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit:                ; preds = %bb.cs, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit643, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit645, %bb.cx, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i, %bb.da
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.hz, %bb.da ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.cx ], [ %i.jc, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit645 ], [ %i.jb, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit643 ], [ %i.ja, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.cs ] ; 2 uses
  %.not90 = icmp eq ptr %.028.i.i.i, %i.hz
  %i.jd = ptrtoint ptr %.028.i.i.i to i64
  %i.je = sub i64 %i.jd, %i.hp
  %i.jf = select i1 %.not90, i64 %i.hy, i64 %i.je
  store ptr %i.hq, ptr %22, align 16
  store i64 %i.jf, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !90
  store i32 13, ptr %.sroa.5.0..sroa_idx.i178, align 16, !tbaa !158
  %i.jg = trunc i128 %.sroa.0.014.i177 to i8
  %i.jh = trunc i128 %.sroa.0.014.i177 to i32
  br label %bb.db

bb.db:                                            ; preds = %.thread379, %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit182, %_ZSt4findIPKccET_S2_S2_RKT0_.exit, %bb.cr
  %i.ji = phi i8 [ %i.hr, %.thread379 ], [ %i.hr, %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit182 ], [ %i.jg, %_ZSt4findIPKccET_S2_S2_RKT0_.exit ], [ %i.hr, %bb.cr ] ; 13 uses
  %i.jj = phi i32 [ %i.hs, %.thread379 ], [ %i.hs, %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit182 ], [ %i.jh, %_ZSt4findIPKccET_S2_S2_RKT0_.exit ], [ %i.hs, %bb.cr ] ; 14 uses
  %i.jk = phi i32 [ %.sroa.5.013.i176, %.thread379 ], [ %.sroa.5.013.i176, %_ZZN3fmt3v126detail7vprintfIcNS0_20basic_printf_contextIcEEEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsIT0_EEENKUliE_clEi.exit182 ], [ 13, %_ZSt4findIPKccET_S2_S2_RKT0_.exit ], [ %.sroa.5.013.i176, %bb.cr ] ; 8 uses
  %i.jl = load i32, ptr %21, align 8, !tbaa !155  ; 12 uses
  %i.jm = and i32 %i.jl, 8192
  %.not389 = icmp eq i32 %i.jm, 0
  br i1 %.not389, label %.critedge, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  switch i32 %i.jk, label %.critedge [
    i32 8, label %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit
    i32 1, label %.split386
    i32 2, label %.split385
    i32 3, label %.split384
    i32 4, label %.split383
    i32 5, label %.split382
    i32 6, label %.split381
    i32 7, label %.split
  ]

.split386:                                        ; preds = %bb.dc
  %i.jn = icmp eq i32 %i.jj, 0
  br i1 %i.jn, label %bb.dd, label %.critedge

.split385:                                        ; preds = %bb.dc
  %i.jo = icmp eq i32 %i.jj, 0
  br i1 %i.jo, label %bb.dd, label %.critedge

.split384:                                        ; preds = %bb.dc
  %i.jp = icmp eq i64 %i.hp, 0
  br i1 %i.jp, label %bb.dd, label %.critedge

.split383:                                        ; preds = %bb.dc
  %i.jq = icmp eq i64 %i.hp, 0
  br i1 %i.jq, label %bb.dd, label %.critedge

.split382:                                        ; preds = %bb.dc
  %i.jr = load i128, ptr %22, align 16            ; 3 uses
  %i.js = icmp eq i128 %i.jr, 0
  %i.jt = trunc i128 %i.jr to i8
  %i.ju = trunc i128 %i.jr to i32
  br i1 %i.js, label %bb.dd, label %.critedge

.split381:                                        ; preds = %bb.dc
  %i.jv = load i128, ptr %22, align 16            ; 3 uses
  %i.jw = icmp eq i128 %i.jv, 0
  %i.jx = trunc i128 %i.jv to i8
  %i.jy = trunc i128 %i.jv to i32
  br i1 %i.jw, label %bb.dd, label %.critedge

.split:                                           ; preds = %bb.dc
  %i.jz = trunc nuw i8 %i.ji to i1
  br i1 %i.jz, label %.critedge, label %bb.dd

_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.dc
  %i.ka = icmp eq i8 %i.ji, 0
  br i1 %i.ka, label %bb.dd, label %.critedge

bb.dd:                                            ; preds = %.split386, %.split385, %.split384, %.split383, %.split382, %.split381, %.split, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit
  %i.kb = phi i8 [ %i.ji, %.split386 ], [ %i.ji, %.split385 ], [ %i.ji, %.split384 ], [ %i.ji, %.split383 ], [ 0, %.split382 ], [ 0, %.split381 ], [ 0, %.split ], [ 0, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit ]
  %i.kc = phi i32 [ 0, %.split386 ], [ 0, %.split385 ], [ %i.jj, %.split384 ], [ %i.jj, %.split383 ], [ 0, %.split382 ], [ 0, %.split381 ], [ %i.jj, %.split ], [ %i.jj, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit ]
  %i.kd = and i32 %i.jl, -8193                    ; 2 uses
  store i32 %i.kd, ptr %21, align 8, !tbaa !155
  br label %.critedge

.critedge:                                        ; preds = %bb.dc, %bb.db, %.split386, %.split385, %.split384, %.split383, %.split382, %.split381, %.split, %bb.dd, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit
  %i.ke = phi i8 [ %i.ji, %bb.dc ], [ %i.ji, %bb.db ], [ %i.ji, %.split386 ], [ %i.ji, %.split385 ], [ %i.ji, %.split384 ], [ %i.ji, %.split383 ], [ %i.jt, %.split382 ], [ %i.jx, %.split381 ], [ 1, %.split ], [ %i.kb, %bb.dd ], [ %i.ji, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit ] ; 18 uses
  %i.kf = phi i32 [ %i.jj, %bb.dc ], [ %i.jj, %bb.db ], [ %i.jj, %.split386 ], [ %i.jj, %.split385 ], [ %i.jj, %.split384 ], [ %i.jj, %.split383 ], [ %i.ju, %.split382 ], [ %i.jy, %.split381 ], [ %i.jj, %.split ], [ %i.kc, %bb.dd ], [ %i.jj, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit ] ; 10 uses
  %i.kg = phi i32 [ %i.jl, %bb.dc ], [ %i.jl, %bb.db ], [ %i.jl, %.split386 ], [ %i.jl, %.split385 ], [ %i.jl, %.split384 ], [ %i.jl, %.split383 ], [ %i.jl, %.split382 ], [ %i.jl, %.split381 ], [ %i.jl, %.split ], [ %i.kd, %bb.dd ], [ %i.jl, %_ZNK3fmt3v1216basic_format_argINS0_20basic_printf_contextIcEEE5visitINS0_6detail11is_zero_intEEEDTclfp_Li0EEEOT_.exit ] ; 2 uses
  %i.kh = load i8, ptr %i.g, align 4, !tbaa !90
  %i.ki = icmp eq i8 %i.kh, 48
  br i1 %i.ki, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %.critedge
  %i.kj = icmp ugt i32 %i.jk, 11
  %i.kk = and i32 %i.kg, 56
  %.not91 = icmp eq i32 %i.kk, 8
  %or.cond651 = or i1 %i.kj, %.not91
  br i1 %or.cond651, label %bb.df, label %.sink.split652

bb.df:                                            ; preds = %bb.de
  store i8 32, ptr %i.g, align 4, !tbaa !90
  br label %.sink.split652

.sink.split652:                                   ; preds = %bb.de, %bb.df
  %.sink = phi i32 [ -229377, %bb.df ], [ -57, %bb.de ]
  %.sink654 = phi i32 [ 32768, %bb.df ], [ 32, %bb.de ]
  %i.kl = and i32 %i.kg, %.sink
  %i.km = or disjoint i32 %i.kl, %.sink654
  store i32 %i.km, ptr %21, align 8, !tbaa !155
  br label %bb.dg

bb.dg:                                            ; preds = %.sink.split652, %.critedge
  %.not92 = icmp eq ptr %i.gq, %i.e
  br i1 %.not92, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gq, i64 1 ; 2 uses
  store ptr %i.kn, ptr %i.a, align 8, !tbaa !108
  %i.ko = load i8, ptr %i.gq, align 1, !tbaa !90
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh
  %i.kp = phi ptr [ %i.kn, %bb.dh ], [ %i.gq, %bb.dg ] ; 5 uses
  %i.kq = phi i8 [ %i.ko, %bb.dh ], [ 0, %bb.dg ] ; 15 uses
  %.not93 = icmp eq ptr %i.kp, %i.e
  br i1 %.not93, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.kr = load i8, ptr %i.kp, align 1, !tbaa !90
  br label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dj
  %i.ks = phi i8 [ %i.kr, %bb.dj ], [ 0, %bb.di ] ; 43 uses
  switch i8 %i.kq, label %bb.gv [
    i8 104, label %bb.dl
    i8 108, label %bb.dq
    i8 106, label %bb.ez
    i8 122, label %bb.fp
    i8 116, label %bb.gf
    i8 76, label %_ZN3fmt3v126detail11convert_argIxNS0_20basic_printf_contextIcEEcEEvRNS0_16basic_format_argIT0_EET1_.exit
  ]

bb.dl:                                            ; preds = %bb.dk
  %i.kt = icmp eq i8 %i.ks, 104
  br i1 %i.kt, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 1 ; 3 uses
  store ptr %i.ku, ptr %i.a, align 8, !tbaa !108
  %.not95 = icmp eq ptr %i.ku, %i.e
  br i1 %.not95, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !90
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn
  %i.kw = phi i8 [ %i.kv, %bb.dn ], [ 0, %bb.dm ]
  call void @_ZN3fmt3v126detail11convert_argIaNS0_20basic_printf_contextIcEEcEEvRNS0_16basic_format_argIT0_EET1_(ptr noundef nonnull align 16 dereferenceable(20) %22, i8 noundef signext %i.kw)
end_hunk_0
