Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/JSONUtils?download=true
inline.NumInlined: 1541
inline.NumDeleted: 718
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8lldb_dap33CreateRunInTerminalReverseRequestEN4llvm9StringRefERKSt6vectorINS_8protocol6StringESaIS4_EERKNS0_9StringMapIS4_NS0_15MallocAllocatorEEES1_S1_mRKS2_ISt8optionalIS4_ESaISF_EEb:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !18, !noalias !251
  %i.ey = zext i32 %.01819.i.i to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ey
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !18
  %i.fa = load i8, ptr %i.ev, align 2, !tbaa !18, !noalias !251
  %i.fb = add i32 %.01819.i.i, -1
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fc
  store i8 %i.fa, ptr %i.fd, align 1, !tbaa !18
  %i.fe = add i32 %.01819.i.i, -2
  %i.ff = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ff, label %.lr.ph.i2.i, label %._crit_edge.i.i45, !llvm.loop !210

._crit_edge.i.i45:                                ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %7, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.eu, %.lr.ph.i2.i ] ; 3 uses
  %i.fg = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.fg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i45
  %i.fh = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.fi = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !18, !noalias !251
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !18
  %i.fm = load i8, ptr %i.fi, align 2, !tbaa !18, !noalias !251
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.ai:                                            ; preds = %._crit_edge.i.i45
  %i.fn = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.fo = or disjoint i8 %i.fn, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.ah, %bb.ai
  %storemerge.i.i = phi i8 [ %i.fo, %bb.ai ], [ %i.fm, %bb.ah ]
  store i8 %storemerge.i.i, ptr %i.em, align 1, !tbaa !18
  %i.fp = load ptr, ptr %i.cv, align 8, !tbaa !57 ; 7 uses
  %i.fq = load ptr, ptr %i.be, align 8, !tbaa !56
  %.not.i.i46 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i.i46, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit49, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 3 uses
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !14
  %i.fs = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.el
  br i1 %i.ft, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

bb.ak:                                            ; preds = %bb.aj
  %i.fu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !17 ; 3 uses
  %i.fw = icmp ult i64 %i.fv, 16
  call void @llvm.assume(i1 %i.fw)
  %i.fx = add nuw nsw i64 %i.fv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fr, ptr noundef nonnull align 8 dereferenceable(1) %i.el, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit49.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47: ; preds = %bb.aj
  store ptr %i.fs, ptr %i.fp, align 8, !tbaa !20
  %i.fy = load i64, ptr %i.el, align 8, !tbaa !18
  store i64 %i.fy, ptr %i.fr, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.pre205 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit49.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit49.thread: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47
  %i.fz = phi i64 [ %.pre205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47 ], [ %i.fv, %bb.ak ]
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %i.fz, ptr %i.gb, align 8, !tbaa !17
  store ptr %i.el, ptr %15, align 8, !tbaa !20
  store i64 0, ptr %i.ga, align 8, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store ptr %i.gc, ptr %i.cv, align 8, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit49: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %15)
  %.pre206 = load ptr, ptr %15, align 8, !tbaa !20 ; 2 uses
  %i.gd = icmp eq ptr %.pre206, %i.el
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit49
  %i.ge = load i64, ptr %i.el, align 8, !tbaa !18
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %.pre206, i64 noundef %i.gf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit49, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit49.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %.pre210.pre = load ptr, ptr %i.cv, align 8, !tbaa !57
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %.pre210 = phi ptr [ %.pre210.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pre210.pre215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2 ] ; 8 uses
  %i.gg = load ptr, ptr %8, align 8, !tbaa !253
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !253
  %i.gj = icmp eq ptr %i.gg, %i.gi
  br i1 %i.gj, label %bb.bc, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gk = load ptr, ptr %i.be, align 8, !tbaa !56
  %.not.i53 = icmp eq ptr %.pre210, %i.gk
  br i1 %.not.i53, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i: ; preds = %bb.am
  %i.gl = getelementptr inbounds nuw i8, ptr %.pre210, i64 16 ; 2 uses
  store ptr %i.gl, ptr %.pre210, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.gl, ptr noundef nonnull align 1 dereferenceable(8) @.str.26, i64 7, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %.pre210, i64 8
  store i64 7, ptr %i.gm, align 8, !tbaa !17
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre210, i64 23
  store i8 0, ptr %i.gn, align 1, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.pre210, i64 32
  store ptr %i.go, ptr %i.cv, align 8, !tbaa !57
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit

bb.an:                                            ; preds = %bb.am
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %.pre210, ptr noundef nonnull align 1 dereferenceable(8) @.str.26)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gp) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.gp, align 8, !tbaa !43
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 344
  store ptr null, ptr %i.gq, align 8, !tbaa !268
  %i.gr = getelementptr inbounds nuw i8, ptr %16, i64 352
  store i8 0, ptr %i.gr, align 8, !tbaa !269
  %i.gs = getelementptr inbounds nuw i8, ptr %16, i64 353
  store i8 0, ptr %i.gs, align 1, !tbaa !270
  %i.gt = getelementptr inbounds nuw i8, ptr %16, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, i8 0, i64 32, i1 false)
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.gu, ptr %16, align 8, !tbaa !43
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gu, i64 -24    ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds i8, ptr %16, i64 %i.gx
  store ptr %i.gv, ptr %i.gy, align 8, !tbaa !43
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 0, ptr %i.gz, align 8, !tbaa !272
  %i.ha = load ptr, ptr %16, align 8, !tbaa !43
  %i.hb = getelementptr i8, ptr %i.ha, i64 -24
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds i8, ptr %16, i64 %i.hc
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.hd, ptr noundef null) #18
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 10 uses
  %i.hf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.hf, ptr %i.he, align 8, !tbaa !43
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.hh = getelementptr i8, ptr %i.hf, i64 -24
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds i8, ptr %i.he, i64 %i.hi
  store ptr %i.hg, ptr %i.hj, align 8, !tbaa !43
  %i.hk = load ptr, ptr %i.he, align 8, !tbaa !43
  %i.hl = getelementptr i8, ptr %i.hk, i64 -24
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds i8, ptr %i.he, i64 %i.hm
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.hn, ptr noundef null) #18
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ho, ptr %16, align 8, !tbaa !43
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.hq = getelementptr i8, ptr %i.ho, i64 -24
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds i8, ptr %16, i64 %i.hr
  store ptr %i.hp, ptr %i.hs, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %16, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.gp, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.he, align 8, !tbaa !43
  %i.ht = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ht, align 8, !tbaa !43
  %i.hu = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hu, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.hv) #18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ht, align 8, !tbaa !43
  %i.hw = getelementptr inbounds nuw i8, ptr %16, i64 88
  store i32 24, ptr %i.hw, align 8, !tbaa !276
  %i.hx = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 4 uses
  store ptr %i.hy, ptr %i.hx, align 8, !tbaa !14
  %i.hz = getelementptr inbounds nuw i8, ptr %16, i64 104
  store i64 0, ptr %i.hz, align 8, !tbaa !17
  store i8 0, ptr %i.hy, align 8, !tbaa !18
  %i.ia = load ptr, ptr %16, align 8, !tbaa !43
  %i.ib = getelementptr i8, ptr %i.ia, i64 -24
  %i.ic = load i64, ptr %i.ib, align 8
  %i.id = getelementptr inbounds i8, ptr %16, i64 %i.ic
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.id, ptr noundef nonnull %i.ht) #18
  %i.ie = load ptr, ptr %8, align 8, !tbaa !253   ; 5 uses
  %i.if = load ptr, ptr %i.gh, align 8, !tbaa !253 ; 3 uses
  %.not180189 = icmp eq ptr %i.ie, %i.if
  br i1 %.not180189, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 10 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.ii = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef null, i64 noundef 0) #18 ; 0 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !278, !range !33, !noundef !34
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  store ptr %i.ig, ptr %17, align 8, !tbaa !14, !alias.scope !279
  %i.im = load ptr, ptr %i.ie, align 8, !tbaa !20, !noalias !279 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !17, !noalias !279 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !279
  store i64 %i.io, ptr %i.b, align 8, !tbaa !19, !noalias !279
  %i.ip = icmp ugt i64 %i.io, 15
  br i1 %i.ip, label %bb.ap, label %._crit_edge.i.i.i65.peel

bb.ap:                                            ; preds = %bb.ao
  %i.iq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #18 ; 2 uses
  store ptr %i.iq, ptr %17, align 8, !tbaa !20, !alias.scope !279
  %i.ir = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !279
  store i64 %i.ir, ptr %i.ig, align 8, !tbaa !18, !alias.scope !279
  br label %._crit_edge.i.i.i65.peel

._crit_edge.i.i.i65.peel:                         ; preds = %bb.ap, %bb.ao
  %i.is = phi ptr [ %i.iq, %bb.ap ], [ %i.ig, %bb.ao ] ; 2 uses
  switch i64 %i.io, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit.peel
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i65.peel
  %i.it = load i8, ptr %i.im, align 1, !tbaa !18
  store i8 %i.it, ptr %i.is, align 1, !tbaa !18
  br label %_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit.peel

bb.ar:                                            ; preds = %._crit_edge.i.i.i65.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.is, ptr align 1 %i.im, i64 %i.io, i1 false)
  br label %_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit.peel

_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit.peel: ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i65.peel
  %i.iu = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !279 ; 2 uses
  store i64 %i.iu, ptr %i.ih, align 8, !tbaa !17, !alias.scope !279
  %i.iv = load ptr, ptr %17, align 8, !tbaa !20, !alias.scope !279
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iu
  store i8 0, ptr %i.iw, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !279
  %i.ix = load ptr, ptr %17, align 8, !tbaa !20
  %i.iy = load i64, ptr %i.ih, align 8, !tbaa !17
  %i.iz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef %i.ix, i64 noundef %i.iy) #18 ; 0 uses
  %i.ja = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ig
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.peel: ; preds = %_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit.peel
  %i.jc = load i64, ptr %i.ig, align 8, !tbaa !18
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.peel: ; preds = %_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.peel, %.lr.ph
  %i.je = getelementptr inbounds nuw i8, ptr %i.ie, i64 40 ; 2 uses
  %.not180.peel = icmp eq ptr %i.je, %i.if
  br i1 %.not180.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %bb.bb, %bb.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.jf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  store ptr %i.jf, ptr %18, align 8, !tbaa !14, !alias.scope !282
  %i.jg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store i64 0, ptr %i.jg, align 8, !tbaa !17, !alias.scope !282
  store i8 0, ptr %i.jf, align 8, !tbaa !18, !alias.scope !282
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !283, !noalias !282 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ji, null
  %i.jj = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !282 ; 2 uses
  %i.jl = icmp ugt ptr %i.ji, %i.jk
  %.08.i.i.i = select i1 %i.jl, ptr %i.ji, ptr %i.jk ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i55 = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i55, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge
  %i.jm = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !284, !noalias !282 ; 2 uses
  %i.jo = ptrtoint ptr %.08.i.i.i to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.jn, i64 noundef %i.jq) #18 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.au:                                            ; preds = %._crit_edge
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.hx) #18
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.at, %bb.au
  %i.js = load ptr, ptr %i.cv, align 8, !tbaa !57 ; 7 uses
  %i.jt = load ptr, ptr %i.be, align 8, !tbaa !56
  %.not.i.i56 = icmp eq ptr %i.js, %i.jt
  br i1 %.not.i.i56, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit59, label %bb.av

bb.av:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 3 uses
  store ptr %i.ju, ptr %i.js, align 8, !tbaa !14
  %i.jv = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.jf
  br i1 %i.jw, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

bb.aw:                                            ; preds = %bb.av
  %i.jx = load i64, ptr %i.jg, align 8, !tbaa !17 ; 3 uses
  %i.jy = icmp ult i64 %i.jx, 16
  call void @llvm.assume(i1 %i.jy)
  %i.jz = add nuw nsw i64 %i.jx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ju, ptr noundef nonnull align 8 dereferenceable(1) %i.jf, i64 %i.jz, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit59.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.av
  store ptr %i.jv, ptr %i.js, align 8, !tbaa !20
  %i.ka = load i64, ptr %i.jf, align 8, !tbaa !18
  store i64 %i.ka, ptr %i.ju, align 8, !tbaa !18
  %.pre207 = load i64, ptr %i.jg, align 8, !tbaa !17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit59.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit59.thread: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57
  %i.kb = phi i64 [ %.pre207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57 ], [ %i.jx, %bb.aw ]
  %i.kc = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store i64 %i.kb, ptr %i.kc, align 8, !tbaa !17
  store ptr %i.jf, ptr %18, align 8, !tbaa !20
  store i64 0, ptr %i.jg, align 8, !tbaa !17
  %i.kd = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  store ptr %i.kd, ptr %i.cv, align 8, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit59: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.js, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %.pre208 = load ptr, ptr %18, align 8, !tbaa !20 ; 2 uses
  %i.ke = icmp eq ptr %.pre208, %i.jf
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit59
  %i.kf = load i64, ptr %i.jf, align 8, !tbaa !18
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %.pre208, i64 noundef %i.kg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit59, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit59.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.kh = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.kh, ptr %16, align 8, !tbaa !43
  %i.ki = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.kj = getelementptr i8, ptr %i.kh, i64 -24
  %i.kk = load i64, ptr %i.kj, align 8
  %i.kl = getelementptr inbounds i8, ptr %16, i64 %i.kk
  store ptr %i.ki, ptr %i.kl, align 8, !tbaa !43
  %i.km = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.km, ptr %i.he, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ht, align 8, !tbaa !43
  %i.kn = load ptr, ptr %i.hx, align 8, !tbaa !20 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.hy
  br i1 %i.ko, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.kp = load i64, ptr %i.hy, align 8, !tbaa !18
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ht, align 8, !tbaa !43
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hv) #18
  store ptr %i.gu, ptr %16, align 8, !tbaa !43
  %i.kr = load i64, ptr %i.gw, align 8
  %i.ks = getelementptr inbounds i8, ptr %16, i64 %i.kr
  store ptr %i.gv, ptr %i.ks, align 8, !tbaa !43
  store i64 0, ptr %i.gz, align 8, !tbaa !272
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gp) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %.pre209 = load ptr, ptr %i.cv, align 8, !tbaa !57
  br label %bb.bc

.peel.next:                                       ; preds = %bb.as, %bb.bb
  %.sroa.0159.0190 = phi ptr [ %i.lp, %bb.bb ], [ %i.je, %bb.as ] ; 4 uses
  %i.kt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.27, i64 noundef 1) #18 ; 0 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0159.0190, i64 32
  %i.kv = load i8, ptr %i.ku, align 8, !tbaa !278, !range !33, !noundef !34
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  store ptr %i.ig, ptr %17, align 8, !tbaa !14, !alias.scope !285
  %i.kx = load ptr, ptr %.sroa.0159.0190, align 8, !tbaa !20, !noalias !285 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0159.0190, i64 8
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !17, !noalias !285 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !285
  store i64 %i.kz, ptr %i.b, align 8, !tbaa !19, !noalias !285
  %i.la = icmp ugt i64 %i.kz, 15
  br i1 %i.la, label %bb.ay, label %._crit_edge.i.i.i65

bb.ay:                                            ; preds = %bb.ax
  %i.lb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #18 ; 2 uses
  store ptr %i.lb, ptr %17, align 8, !tbaa !20, !alias.scope !285
  %i.lc = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !285
  store i64 %i.lc, ptr %i.ig, align 8, !tbaa !18, !alias.scope !285
  br label %._crit_edge.i.i.i65

._crit_edge.i.i.i65:                              ; preds = %bb.ay, %bb.ax
  %i.ld = phi ptr [ %i.lb, %bb.ay ], [ %i.ig, %bb.ax ] ; 2 uses
  switch i64 %i.kz, label %bb.ba [
    i64 1, label %bb.az
    i64 0, label %_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit
  ]

bb.az:                                            ; preds = %._crit_edge.i.i.i65
  %i.le = load i8, ptr %i.kx, align 1, !tbaa !18
  store i8 %i.le, ptr %i.ld, align 1, !tbaa !18
  br label %_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit

bb.ba:                                            ; preds = %._crit_edge.i.i.i65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ld, ptr align 1 %i.kx, i64 %i.kz, i1 false)
  br label %_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit

_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit:  ; preds = %._crit_edge.i.i.i65, %bb.az, %bb.ba
  %i.lf = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !285 ; 2 uses
  store i64 %i.lf, ptr %i.ih, align 8, !tbaa !17, !alias.scope !285
  %i.lg = load ptr, ptr %17, align 8, !tbaa !20, !alias.scope !285
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lf
  store i8 0, ptr %i.lh, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !285
  %i.li = load ptr, ptr %17, align 8, !tbaa !20
  %i.lj = load i64, ptr %i.ih, align 8, !tbaa !17
  %i.lk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef %i.li, i64 noundef %i.lj) #18 ; 0 uses
  %i.ll = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.ig
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit
  %i.ln = load i64, ptr %i.ig, align 8, !tbaa !18
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNK8lldb_dap8protocol6String3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %.peel.next
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0159.0190, i64 40 ; 2 uses
  %.not180 = icmp eq ptr %i.lp, %i.if
  br i1 %.not180, label %._crit_edge, label %.peel.next, !llvm.loop !219

bb.bc:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.al
  %i.lq = phi ptr [ %.pre209, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.pre210, %bb.al ] ; 7 uses
end_hunk_0
