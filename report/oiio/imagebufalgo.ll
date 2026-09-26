Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo?download=true
inline.NumInlined: 7404
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_S7_PNS0_9ImageSpecEi:bb.a
  store i64 16, ptr %i.rf, align 8, !tbaa !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %20, ptr noundef nonnull align 8 dereferenceable(160) %17, ptr noundef nonnull dead_on_return %21, ptr noundef nonnull dead_on_return %22)
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %bb.em
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.rg = load ptr, ptr %20, align 8, !tbaa !99, !noalias !467 ; 3 uses
  %.not.not.i = icmp eq ptr %i.rg, null
  br i1 %.not.not.i, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit.thread, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.rh = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !100, !noalias !467 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr %i.rj, ptr %19, align 8, !tbaa !101, !alias.scope !467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !467
  store i64 %i.ri, ptr %i.a, align 8, !tbaa !102, !noalias !467
  %i.rk = icmp ugt i64 %i.ri, 15
  br i1 %i.rk, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.eo
  %i.rl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc404 unwind label %bb.et ; 2 uses

.noexc404:                                        ; preds = %.noexc.i.i
  store ptr %i.rl, ptr %19, align 8, !tbaa !87, !alias.scope !467
  %i.rm = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !467
  store i64 %i.rm, ptr %i.rj, align 8, !tbaa !103, !alias.scope !467
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc404, %bb.eo
  %i.rn = phi ptr [ %i.rl, %.noexc404 ], [ %i.rj, %bb.eo ] ; 2 uses
  switch i64 %i.ri, label %bb.eq [
    i64 1, label %bb.ep
    i64 0, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  ]

bb.ep:                                            ; preds = %._crit_edge.i.i.i
  %i.ro = load i8, ptr %i.rg, align 1, !tbaa !103
  store i8 %i.ro, ptr %i.rn, align 1, !tbaa !103
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

bb.eq:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rn, ptr nonnull align 1 %i.rg, i64 %i.ri, i1 false)
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit.thread: ; preds = %bb.en
  %i.rp = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.rp, ptr %19, align 8, !tbaa !101, !alias.scope !467
  %i.rq = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.rq, align 8, !tbaa !86, !alias.scope !467
  store i8 0, ptr %i.rp, align 8, !tbaa !103, !alias.scope !467
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.ev

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i, %bb.ep, %bb.eq
  %i.rr = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !467 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 %i.rr, ptr %i.rs, align 8, !tbaa !86, !alias.scope !467
  %i.rt = load ptr, ptr %19, align 8, !tbaa !87, !alias.scope !467
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rr
  store i8 0, ptr %i.ru, align 1, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !467
  %.pre = load i64, ptr %i.rs, align 8, !tbaa !86
  %i.rv = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.rw = getelementptr inbounds nuw i8, ptr %19, i64 8
  br i1 %i.rv, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  store ptr @.str.5, ptr %24, align 8, !tbaa !99
  %i.rx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 11, ptr %i.rx, align 8, !tbaa !100
  invoke void @_ZN11OpenImageIO4v3_17Strutil24excise_string_after_headERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_17basic_string_viewIcS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull dead_on_return %24)
          to label %bb.es unwind label %bb.eu

bb.es:                                            ; preds = %bb.er
  %i.ry = load ptr, ptr %23, align 8, !tbaa !87   ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.sa = icmp eq ptr %i.ry, %i.rz
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.es
  %i.sb = load i64, ptr %i.rz, align 8, !tbaa !103
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef %i.sc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr @.str.4, ptr %25, align 8, !tbaa !99
  %i.sd = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 16, ptr %i.sd, align 8, !tbaa !100
  %i.se = load ptr, ptr %19, align 8, !tbaa !87
  store ptr %i.se, ptr %26, align 8, !tbaa !99
  %i.sf = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.sg = load i64, ptr %i.rw, align 8, !tbaa !86
  store i64 %i.sg, ptr %i.sf, align 8, !tbaa !100
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %17, ptr noundef nonnull dead_on_return %25, ptr noundef nonnull dead_on_return %26)
          to label %bb.ev unwind label %bb.eu

bb.et:                                            ; preds = %.noexc.i.i, %bb.em
  %i.sh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.er
  %i.si = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sj = load ptr, ptr %19, align 8, !tbaa !87   ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.sl = icmp eq ptr %i.sj, %i.sk
  br i1 %i.sl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405: ; preds = %bb.eu
  %i.sm = load i64, ptr %i.sk, align 8, !tbaa !103
  %i.sn = add i64 %i.sm, 1
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407

bb.ev:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  %i.so = load ptr, ptr %19, align 8, !tbaa !87   ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.sq = icmp eq ptr %i.so, %i.sp
  br i1 %i.sq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408: ; preds = %bb.ev
  %i.sr = load i64, ptr %i.sp, align 8, !tbaa !103
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.ss) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE5clearEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407: ; preds = %bb.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405, %bb.et
  %.pn324 = phi { ptr, i32 } [ %i.sh, %bb.et ], [ %i.si, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405 ], [ %i.si, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.fm

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ej, %bb.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410
  %i.st = lshr i32 %6, 17
  %.lobit = and i32 %i.st, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf5resetERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %17, i32 noundef %.lobit)
          to label %bb.ew unwind label %bb.bk

bb.ew:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE5clearEv.exit
  %i.su = and i32 %6, 1024
  %.not327 = icmp eq i32 %i.su, 0
  %.pre853 = load i32, ptr %.sroa.gep809, align 4, !tbaa !51 ; 2 uses
  br i1 %.not327, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %.sroa.speculated686 = call i32 @llvm.smin.i32(i32 %.4, i32 %.pre853) ; 2 uses
  store i32 %.sroa.speculated686, ptr %.sroa.gep809, align 4, !tbaa !54
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.sv = phi i32 [ %.sroa.speculated686, %bb.ex ], [ %.pre853, %bb.ew ]
  %i.sw = getelementptr inbounds nuw i8, ptr %17, i64 60
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !51
  %i.sy = call i32 @llvm.smin.i32(i32 %i.sx, i32 %i.sv)
  store i32 %i.sy, ptr %.sroa.gep809, align 4, !tbaa !54
  %i.sz = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf4deepEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.ez unwind label %bb.bk

bb.ez:                                            ; preds = %bb.ey
  br i1 %i.sz, label %bb.fi, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ta = load i32, ptr %.sroa.gep806, align 4, !tbaa !55 ; 2 uses
  %i.tb = icmp sgt i32 %i.ta, 0
  br i1 %i.tb, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.523.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i32 0, ptr %.sroa.523.0..sroa_idx24, align 8, !tbaa !51
  %.sroa.626.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %27, i64 28
  store i32 %i.ta, ptr %.sroa.626.0..sroa_idx27, align 4, !tbaa !51
  %i.tc = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4zeroERNS0_8ImageBufENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %27, i32 noundef 1)
          to label %bb.fd unwind label %bb.fc     ; 0 uses

bb.fc:                                            ; preds = %bb.fb
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fd:                                            ; preds = %bb.fb, %bb.fa
  %i.te = load i32, ptr %.sroa.gep809, align 4, !tbaa !54
  %i.tf = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.fe unwind label %bb.bk

bb.fe:                                            ; preds = %bb.fd
  %i.tg = icmp slt i32 %i.te, %i.tf
  br i1 %i.tg, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  %.sroa.0.sroa.0.0.copyload = load <6 x i32>, ptr %0, align 4
  %i.th = load i32, ptr %.sroa.gep809, align 4, !tbaa !54
  %i.ti = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.fg unwind label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store <6 x i32> %.sroa.0.sroa.0.0.copyload, ptr %28, align 8
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i32 %i.th, ptr %.sroa.5.0..sroa_idx18, align 8, !tbaa !51
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %28, i64 28
  store i32 %i.ti, ptr %.sroa.6.0..sroa_idx20, align 4, !tbaa !51
  %i.tj = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4zeroERNS0_8ImageBufENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %28, i32 noundef 1)
          to label %bb.fi unwind label %bb.fh     ; 0 uses

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fi:                                            ; preds = %bb.fg, %bb.fe, %bb.ez
  %i.tl = getelementptr inbounds nuw i8, ptr %17, i64 136 ; 2 uses
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !96 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %17, i64 144
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !97 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.tm, %i.to
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i416, label %.lr.ph.i.i.i.i413

.lr.ph.i.i.i.i413:                                ; preds = %bb.fi, %.lr.ph.i.i.i.i413
  %.05.i.i.i.i414 = phi ptr [ %i.tp, %.lr.ph.i.i.i.i413 ], [ %i.tm, %bb.fi ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i414) #32
  %i.tp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i414, i64 40 ; 2 uses
  %.not.i.i.i.i415 = icmp eq ptr %i.tp, %i.to
  br i1 %.not.i.i.i.i415, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i413, !llvm.loop !0

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i413
  %.pr.i.i = load ptr, ptr %i.tl, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i416

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i416: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.fi
  %i.tq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.tm, %bb.fi ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.tq, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.fj

bb.fj:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i416
  %i.tr = getelementptr inbounds nuw i8, ptr %17, i64 152
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !104
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = ptrtoint ptr %i.tq to i64
  %i.tv = sub i64 %i.tt, %i.tu
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tv) #33
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.fj, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i416
  %i.tw = getelementptr inbounds nuw i8, ptr %17, i64 96 ; 2 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !81 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %17, i64 104
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.tx, %i.tz
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.uf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.tx, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.ua = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !87 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.uc = icmp eq ptr %i.ua, %i.ub
  br i1 %i.uc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.ud = load i64, ptr %i.ub, align 8, !tbaa !103
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ue) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.uf = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.uf, %i.tz
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.tw, align 8, !tbaa !81
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.ug = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.tx, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.ug, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.fk

bb.fk:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.uh = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !105
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = ptrtoint ptr %i.ug to i64
  %i.ul = sub i64 %i.uj, %i.uk
  call void @_ZdlPvm(ptr noundef nonnull %i.ug, i64 noundef %i.ul) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.fk, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !106 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.un, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.uo = getelementptr inbounds nuw i8, ptr %17, i64 88
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !107
  %i.uq = ptrtoint ptr %i.up to i64
  %i.ur = ptrtoint ptr %i.un to i64
  %i.us = sub i64 %i.uq, %i.ur
  call void @_ZdlPvm(ptr noundef nonnull %i.un, i64 noundef %i.us) #33
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.fn

bb.fm:                                            ; preds = %bb.bu, %bb.bv, %bb.ch, %bb.ct, %bb.fh, %bb.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407, %bb.bk
  %.pn328 = phi { ptr, i32 } [ %i.tk, %bb.fh ], [ %i.gt, %bb.bk ], [ %i.td, %bb.fc ], [ %.pn324, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407 ], [ %i.ja, %bb.bu ], [ %i.jb, %bb.bv ], [ %i.ky, %bb.ch ], [ %i.mv, %bb.ct ]
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  resume { ptr, i32 } %.pn328

bb.fn:                                            ; preds = %bb.ac, %bb.al, %bb.ak, %bb.aj, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  %i.ut = and i32 %6, 1024
  %.not331 = icmp eq i32 %i.ut, 0
  %.pre854 = load i32, ptr %.sroa.gep809, align 4, !tbaa !51 ; 2 uses
  br i1 %.not331, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %.sroa.speculated683 = call i32 @llvm.smin.i32(i32 %.4, i32 %.pre854) ; 2 uses
  store i32 %.sroa.speculated683, ptr %.sroa.gep809, align 4, !tbaa !54
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.uu = phi i32 [ %.sroa.speculated683, %bb.fo ], [ %.pre854, %bb.fn ]
  %.sroa.speculated651 = call i32 @llvm.smin.i32(i32 %.4718, i32 %i.uu)
  store i32 %.sroa.speculated651, ptr %.sroa.gep809, align 4, !tbaa !54
  %i.uv = and i32 %6, 1
  %.not332 = icmp eq i32 %i.uv, 0
  br i1 %.not332, label %bb.fy, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.uw = call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 120
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !78
  %i.uz = icmp slt i32 %i.uy, 0
  br i1 %i.uz, label %bb.fx, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  br i1 %i.b, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.va = call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 120
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !78
  %i.vd = icmp slt i32 %i.vc, 0
  br i1 %i.vd, label %bb.fx, label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  br i1 %i.d, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.ve = call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 120
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !78
  %i.vh = icmp slt i32 %i.vg, 0
  br i1 %i.vh, label %bb.fx, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  br i1 %.not771, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.vi = call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 120
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !78
  %i.vl = icmp slt i32 %i.vk, 0
  br i1 %i.vl, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw, %bb.fu, %bb.fs, %bb.fq
  call void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA32_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(32) @.str.6)
  br label %bb.hx

bb.fy:                                            ; preds = %bb.fv, %bb.fw, %bb.fp
  %i.vm = and i32 %6, 2
  %.not333 = icmp eq i32 %i.vm, 0
  br i1 %.not333, label %bb.gh, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.vn = call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 124
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !79
  %i.vq = icmp slt i32 %i.vp, 0
  br i1 %i.vq, label %bb.gg, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  br i1 %i.b, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.vr = call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 124
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !79
  %i.vu = icmp slt i32 %i.vt, 0
  br i1 %i.vu, label %bb.gg, label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  br i1 %i.d, label %bb.gd, label %bb.ge
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIERNS0_8ImageBufENS0_4spanIKPKS4_Lm18446744073709551615EEENS0_14ParamValueSpanEPNS0_9ImageSpecE:bb.a
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !100, !noalias !536 ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  store ptr %i.rc, ptr %29, align 8, !tbaa !101, !alias.scope !536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !536
  store i64 %i.rb, ptr %i.a, align 8, !tbaa !102, !noalias !536
  %i.rd = icmp ugt i64 %i.rb, 15
  br i1 %i.rd, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.cu
  %i.re = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc259 unwind label %bb.cz ; 2 uses

.noexc259:                                        ; preds = %.noexc.i.i
  store ptr %i.re, ptr %29, align 8, !tbaa !87, !alias.scope !536
  %i.rf = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !536
  store i64 %i.rf, ptr %i.rc, align 8, !tbaa !103, !alias.scope !536
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc259, %bb.cu
  %i.rg = phi ptr [ %i.re, %.noexc259 ], [ %i.rc, %bb.cu ] ; 2 uses
  switch i64 %i.rb, label %bb.cw [
    i64 1, label %bb.cv
    i64 0, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i.i
  %i.rh = load i8, ptr %i.qz, align 1, !tbaa !103
  store i8 %i.rh, ptr %i.rg, align 1, !tbaa !103
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

bb.cw:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rg, ptr nonnull align 1 %i.qz, i64 %i.rb, i1 false)
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit.thread: ; preds = %bb.ct
  %i.ri = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.ri, ptr %29, align 8, !tbaa !101, !alias.scope !536
  %i.rj = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.rj, align 8, !tbaa !86, !alias.scope !536
  store i8 0, ptr %i.ri, align 8, !tbaa !103, !alias.scope !536
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %bb.db

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i, %bb.cv, %bb.cw
  %i.rk = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !536 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i64 %i.rk, ptr %i.rl, align 8, !tbaa !86, !alias.scope !536
  %i.rm = load ptr, ptr %29, align 8, !tbaa !87, !alias.scope !536
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.rk
  store i8 0, ptr %i.rn, align 1, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !536
  %.pre = load i64, ptr %i.rl, align 8, !tbaa !86
  %i.ro = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  %i.rp = getelementptr inbounds nuw i8, ptr %29, i64 8
  br i1 %i.ro, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  store ptr @.str.5, ptr %34, align 8, !tbaa !99
  %i.rq = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 11, ptr %i.rq, align 8, !tbaa !100
  invoke void @_ZN11OpenImageIO4v3_17Strutil24excise_string_after_headERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_17basic_string_viewIcS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull dead_on_return %34)
          to label %bb.cy unwind label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.rr = load ptr, ptr %33, align 8, !tbaa !87   ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.rt = icmp eq ptr %i.rr, %i.rs
  br i1 %i.rt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cy
  %i.ru = load i64, ptr %i.rs, align 8, !tbaa !103
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.rv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr @.str.4, ptr %35, align 8, !tbaa !99
  %i.rw = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 16, ptr %i.rw, align 8, !tbaa !100
  %i.rx = load ptr, ptr %29, align 8, !tbaa !87
  store ptr %i.rx, ptr %36, align 8, !tbaa !99
  %i.ry = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.rz = load i64, ptr %i.rp, align 8, !tbaa !86
  store i64 %i.rz, ptr %i.ry, align 8, !tbaa !100
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %16, ptr noundef nonnull dead_on_return %35, ptr noundef nonnull dead_on_return %36)
          to label %bb.db unwind label %bb.da

bb.cz:                                            ; preds = %.noexc.i.i, %bb.cs
  %i.sa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cx
  %i.sb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sc = load ptr, ptr %29, align 8, !tbaa !87   ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.se = icmp eq ptr %i.sc, %i.sd
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %bb.da
  %i.sf = load i64, ptr %i.sd, align 8, !tbaa !103
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.sg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

bb.db:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  %i.sh = load ptr, ptr %29, align 8, !tbaa !87   ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.sj = icmp eq ptr %i.sh, %i.si
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %bb.db
  %i.sk = load i64, ptr %i.si, align 8, !tbaa !103
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE5clearEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260, %bb.cz
  %.pn186 = phi { ptr, i32 } [ %i.sa, %bb.cz ], [ %i.sb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %i.sb, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  br label %bb.du

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE5clearEv.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i254, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
  store ptr @.str.20, ptr %37, align 8, !tbaa !99
  %i.sm = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 15, ptr %i.sm, align 8, !tbaa !100
  %i.sn = invoke noundef i32 @_ZNK11OpenImageIO4v3_114ParamValueSpan7get_intENS0_17basic_string_viewIcSt11char_traitsIcEEEibb(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull dead_on_return %37, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.dc unwind label %bb.cd

bb.dc:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE5clearEv.exit
  %.not188 = icmp ne i32 %i.sn, 0
  %i.so = zext i1 %.not188 to i32
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf5resetERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %16, i32 noundef %i.so)
          to label %bb.dd unwind label %bb.cd

bb.dd:                                            ; preds = %bb.dc
  store ptr @.str.21, ptr %38, align 8, !tbaa !99
  %i.sp = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 22, ptr %i.sp, align 8, !tbaa !100
  %i.sq = invoke noundef i32 @_ZNK11OpenImageIO4v3_114ParamValueSpan7get_intENS0_17basic_string_viewIcSt11char_traitsIcEEEibb(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull dead_on_return %38, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.de unwind label %bb.cd

bb.de:                                            ; preds = %bb.dd
  %.not189 = icmp eq i32 %i.sq, 0
  %.pre962 = load i32, ptr %.sroa.gep939, align 4, !tbaa !51 ; 2 uses
  br i1 %.not189, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.sroa.speculated513 = call i32 @llvm.smin.i32(i32 %.3590, i32 %.pre962) ; 2 uses
  store i32 %.sroa.speculated513, ptr %.sroa.gep939, align 4, !tbaa !54
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.sr = phi i32 [ %.sroa.speculated513, %bb.df ], [ %.pre962, %bb.de ]
  %i.ss = getelementptr inbounds nuw i8, ptr %16, i64 60
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !51
  %i.su = call i32 @llvm.smin.i32(i32 %i.st, i32 %i.sr)
  store i32 %i.su, ptr %.sroa.gep939, align 4, !tbaa !54
  %i.sv = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf4deepEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.dh unwind label %bb.cd

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.sv, label %bb.dq, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sw = load i32, ptr %.sroa.gep936, align 4, !tbaa !55 ; 2 uses
  %i.sx = icmp sgt i32 %i.sw, 0
  br i1 %i.sx, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i32 0, ptr %.sroa.510.0..sroa_idx11, align 8, !tbaa !51
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %39, i64 28
  store i32 %i.sw, ptr %.sroa.613.0..sroa_idx14, align 4, !tbaa !51
  %i.sy = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4zeroERNS0_8ImageBufENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %39, i32 noundef 1)
          to label %bb.dl unwind label %bb.dk     ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dl:                                            ; preds = %bb.dj, %bb.di
  %i.ta = load i32, ptr %.sroa.gep939, align 4, !tbaa !54
  %i.tb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.dm unwind label %bb.cd

bb.dm:                                            ; preds = %bb.dl
  %i.tc = icmp slt i32 %i.ta, %i.tb
  br i1 %i.tc, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %.sroa.04.sroa.0.0.copyload = load <6 x i32>, ptr %0, align 4
  %i.td = load i32, ptr %.sroa.gep939, align 4, !tbaa !54
  %i.te = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store <6 x i32> %.sroa.04.sroa.0.0.copyload, ptr %40, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %40, i64 24
  store i32 %i.td, ptr %.sroa.5.0..sroa_idx5, align 8, !tbaa !51
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %40, i64 28
  store i32 %i.te, ptr %.sroa.6.0..sroa_idx7, align 4, !tbaa !51
  %i.tf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4zeroERNS0_8ImageBufENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %40, i32 noundef 1)
          to label %bb.dq unwind label %bb.dp     ; 0 uses

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dq:                                            ; preds = %bb.do, %bb.dm, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.th = getelementptr inbounds nuw i8, ptr %16, i64 136 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !96 ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %16, i64 144
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !97 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ti, %i.tk
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i271, label %.lr.ph.i.i.i.i268

.lr.ph.i.i.i.i268:                                ; preds = %bb.dq, %.lr.ph.i.i.i.i268
  %.05.i.i.i.i269 = phi ptr [ %i.tl, %.lr.ph.i.i.i.i268 ], [ %i.ti, %bb.dq ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i269) #32
  %i.tl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i269, i64 40 ; 2 uses
  %.not.i.i.i.i270 = icmp eq ptr %i.tl, %i.tk
  br i1 %.not.i.i.i.i270, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i268, !llvm.loop !0

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i268
  %.pr.i.i = load ptr, ptr %i.th, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i271

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i271: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.dq
  %i.tm = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ti, %bb.dq ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.tm, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.dr

bb.dr:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i271
  %i.tn = getelementptr inbounds nuw i8, ptr %16, i64 152
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !104
  %i.tp = ptrtoint ptr %i.to to i64
  %i.tq = ptrtoint ptr %i.tm to i64
  %i.tr = sub i64 %i.tp, %i.tq
  call void @_ZdlPvm(ptr noundef nonnull %i.tm, i64 noundef %i.tr) #33
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.dr, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i271
  %i.ts = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !81 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %16, i64 104
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.tt, %i.tv
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.ub, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.tt, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.tw = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !87 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.ty = icmp eq ptr %i.tw, %i.tx
  br i1 %i.ty, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.tz = load i64, ptr %i.tx, align 8, !tbaa !103
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.ua) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.ub, %i.tv
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.ts, align 8, !tbaa !81
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.uc = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.tt, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.uc, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.ds

bb.ds:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ud = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !105
  %i.uf = ptrtoint ptr %i.ue to i64
  %i.ug = ptrtoint ptr %i.uc to i64
  %i.uh = sub i64 %i.uf, %i.ug
  call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef %i.uh) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.ds, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !106 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.uk = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !107
  %i.um = ptrtoint ptr %i.ul to i64
  %i.un = ptrtoint ptr %i.uj to i64
  %i.uo = sub i64 %i.um, %i.un
  call void @_ZdlPvm(ptr noundef nonnull %i.uj, i64 noundef %i.uo) #33
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %.loopexit

bb.du:                                            ; preds = %bb.dp, %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %bb.cl, %bb.cd
  %.pn190 = phi { ptr, i32 } [ %i.qa, %bb.cl ], [ %i.tg, %bb.dp ], [ %i.pr, %bb.cd ], [ %i.sz, %bb.dk ], [ %.pn186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.dv

bb.dv:                                            ; preds = %.loopexit695, %.loopexit.split-lp, %bb.ar, %bb.av, %bb.du
  %.pn190.pn = phi { ptr, i32 } [ %.pn190, %bb.du ], [ %i.gm, %bb.ar ], [ %i.hk, %bb.av ], [ %lpad.loopexit, %.loopexit695 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  resume { ptr, i32 } %.pn190.pn

.loopexit:                                        ; preds = %bb.aa, %bb.y, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  store ptr @.str.21, ptr %41, align 8, !tbaa !99
  %i.up = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 22, ptr %i.up, align 8, !tbaa !100
  %i.uq = call noundef i32 @_ZNK11OpenImageIO4v3_114ParamValueSpan7get_intENS0_17basic_string_viewIcSt11char_traitsIcEEEibb(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull dead_on_return %41, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true)
  %.not195 = icmp eq i32 %i.uq, 0
  %.pre963 = load i32, ptr %.sroa.gep939, align 4, !tbaa !51 ; 2 uses
  br i1 %.not195, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.loopexit
  %.sroa.speculated510 = call i32 @llvm.smin.i32(i32 %.3590, i32 %.pre963) ; 2 uses
  store i32 %.sroa.speculated510, ptr %.sroa.gep939, align 4, !tbaa !54
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.loopexit
  %i.ur = phi i32 [ %.sroa.speculated510, %bb.dw ], [ %.pre963, %.loopexit ]
  %.sroa.speculated490 = call i32 @llvm.smin.i32(i32 %.3594, i32 %i.ur)
  store i32 %.sroa.speculated490, ptr %.sroa.gep939, align 4, !tbaa !54
  store ptr @.str.22, ptr %42, align 8, !tbaa !99
  %i.us = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 13, ptr %i.us, align 8, !tbaa !100
  %i.ut = call noundef i32 @_ZNK11OpenImageIO4v3_114ParamValueSpan7get_intENS0_17basic_string_viewIcSt11char_traitsIcEEEibb(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull dead_on_return %42, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true)
  %.not196 = icmp eq i32 %i.ut, 0
  br i1 %.not196, label %"_ZSt6any_ofIPKPKN11OpenImageIO4v3_18ImageBufEZNS1_12ImageBufAlgo7IBAprepERNS1_3ROIERS2_NS1_4spanIS5_Lm18446744073709551615EEENS1_14ParamValueSpanEPNS1_9ImageSpecEE3$_2EbT_SH_T0_.exit.thread", label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.uu = call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 120
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !78
  %i.ux = icmp slt i32 %i.uw, 0
  br i1 %i.ux, label %bb.ej, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  br i1 %.not67310251038, label %._crit_edge.i.i.i.i.i274, label %.lr.ph.i.i.i.i.i282

.lr.ph.i.i.i.i.i282:                              ; preds = %bb.dz, %bb.ed
  %.044.i.i.i.i.i = phi i64 [ %i.vs, %bb.ed ], [ %i.bi, %bb.dz ] ; 2 uses
  %.02943.i.i.i.i.i = phi ptr [ %i.vr, %bb.ed ], [ %2, %bb.dz ] ; 9 uses
  %.029.val32.i.i.i.i.i283 = load ptr, ptr %.02943.i.i.i.i.i, align 8, !tbaa !110
  %i.uy = call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %.029.val32.i.i.i.i.i283)
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 120
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !78
  %i.vb = icmp slt i32 %i.va, 0
  br i1 %i.vb, label %"_ZSt6any_ofIPKPKN11OpenImageIO4v3_18ImageBufEZNS1_12ImageBufAlgo7IBAprepERNS1_3ROIERS2_NS1_4spanIS5_Lm18446744073709551615EEENS1_14ParamValueSpanEPNS1_9ImageSpecEE3$_2EbT_SH_T0_.exit", label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i.i.i.i.i282
  %i.vc = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i284 = load ptr, ptr %i.vc, align 8, !tbaa !110
  %i.vd = call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %.val31.i.i.i.i.i284)
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 120
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !78
  %i.vg = icmp slt i32 %i.vf, 0
  br i1 %i.vg, label %"_ZSt6any_ofIPKPKN11OpenImageIO4v3_18ImageBufEZNS1_12ImageBufAlgo7IBAprepERNS1_3ROIERS2_NS1_4spanIS5_Lm18446744073709551615EEENS1_14ParamValueSpanEPNS1_9ImageSpecEE3$_2EbT_SH_T0_.exit.loopexit.split.loop.exit", label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.vh = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i285 = load ptr, ptr %i.vh, align 8, !tbaa !110
  %i.vi = call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %.val30.i.i.i.i.i285)
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 120
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !78
  %i.vl = icmp slt i32 %i.vk, 0
  br i1 %i.vl, label %"_ZSt6any_ofIPKPKN11OpenImageIO4v3_18ImageBufEZNS1_12ImageBufAlgo7IBAprepERNS1_3ROIERS2_NS1_4spanIS5_Lm18446744073709551615EEENS1_14ParamValueSpanEPNS1_9ImageSpecEE3$_2EbT_SH_T0_.exit.loopexit.split.loop.exit1112", label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.vm = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i286 = load ptr, ptr %i.vm, align 8, !tbaa !110
  %i.vn = call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i.i286)
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 120
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !78
  %i.vq = icmp slt i32 %i.vp, 0
  br i1 %i.vq, label %"_ZSt6any_ofIPKPKN11OpenImageIO4v3_18ImageBufEZNS1_12ImageBufAlgo7IBAprepERNS1_3ROIERS2_NS1_4spanIS5_Lm18446744073709551615EEENS1_14ParamValueSpanEPNS1_9ImageSpecEE3$_2EbT_SH_T0_.exit.loopexit.split.loop.exit1114", label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vr = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 32 ; 3 uses
  %i.vs = add nsw i64 %.044.i.i.i.i.i, -1
  %i.vt = icmp sgt i64 %.044.i.i.i.i.i, 1
  br i1 %i.vt, label %.lr.ph.i.i.i.i.i282, label %._crit_edge.loopexit.i.i.i.i.i287, !llvm.loop !509

end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  br i1 %.not132237, label %.critedge3.thread, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.az
  %.promoted = load i32, ptr %i.a, align 4
  %i.lo = load ptr, ptr %4, align 8, !tbaa !243
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph239, %bb.bb
  %.0238 = phi i64 [ %i.ln, %.lr.ph239 ], [ %i.lq, %bb.bb ] ; 5 uses
  %i.lp = phi i32 [ %.promoted, %.lr.ph239 ], [ %i.lu, %bb.bb ]
  %i.lq = add i64 %.0238, -1                      ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !103
  %i.lt = icmp eq i8 %i.ls, 48
  br i1 %i.lt, label %bb.bb, label %.critedge3

bb.bb:                                            ; preds = %bb.ba
  %i.lu = add nsw i32 %i.lp, 1                    ; 2 uses
  store i32 %i.lu, ptr %i.a, align 4, !tbaa !51
  %.not132 = icmp eq i64 %i.lq, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.ba, !llvm.loop !989

.critedge3.thread:                                ; preds = %bb.bb, %bb.az
  %i.lv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !244
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.ba
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !244 ; 2 uses
  %i.lz = icmp ugt i64 %.0238, %i.ly
  br i1 %i.lz, label %bb.bc, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.bc:                                            ; preds = %.critedge3
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !237
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0238), !inline_history !28
  %.pre.i153 = load i64, ptr %i.lx, align 8, !tbaa !244
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.bc
  %.0.lcssa278 = phi i64 [ %.0238, %.critedge3 ], [ %.0238, %bb.bc ], [ 0, %.critedge3.thread ]
  %i.mc = phi i64 [ %i.ly, %.critedge3 ], [ %.pre.i153, %bb.bc ], [ %i.lw, %.critedge3.thread ]
  %i.md = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa278, i64 %i.mc)
  store i64 %i.md, ptr %i.lm, align 8, !tbaa !245
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154, %bb.ay, %.thread
  %i.me = load i32, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.0105 = phi i32 [ %i.ab, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.me, %bb.bd ]
  ret i32 %.0105
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 8 uses
  %7 = alloca %class.anon.112, align 4            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !257    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #32
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #32
  %i.d = load ptr, ptr %6, align 8, !tbaa !271
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !276
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !278  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit unwind label %bb.f, !inline_history !32

bb.f:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %i.m

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.pre = load i32, ptr %2, align 4, !tbaa !257
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.n = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.o = phi i8 [ %i.l, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !317    ; 2 uses
  %i.q = or i32 %i.p, 1
  %i.r = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.q, i1 true)
  %i.s = xor i32 %i.r, 31
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !102
  %i.w = zext i32 %i.p to i64
  %i.x = add i64 %i.v, %i.w
  %i.y = lshr i64 %i.x, 32                        ; 3 uses
  %i.z = trunc nuw i64 %i.y to i32                ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !312
  %i.ac = add nsw i32 %i.ab, %i.z                 ; 3 uses
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  %i.ae = trunc i32 %i.n to i8
  %i.af = and i8 %i.ae, 7
  switch i8 %i.af, label %bb.h [
    i8 2, label %bb.i
    i8 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !259 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %. = select i1 %i.ai, i32 %i.ah, i32 %4
  %i.aj = icmp sgt i32 %i.ac, -4
  %i.ak = icmp sle i32 %i.ac, %.
  %i.al = and i1 %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.am = ptrtoint ptr %5 to i64
  %i.an = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %i.z, i8 noundef signext %i.o, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.am)
  br label %bb.u

bb.j:                                             ; preds = %bb.g, %bb.h
  %.not51 = icmp ne i32 %3, 0
  %i.ao = zext i1 %.not51 to i64
  %i.ap = add nuw nsw i64 %i.y, %i.ao
  %sext = shl i64 %i.ap, 32
  %i.aq = ashr exact i64 %sext, 32                ; 2 uses
  %i.ar = and i32 %i.n, 8192
  %.not53 = icmp eq i32 %i.ar, 0
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !259
  %i.au = sub nsw i32 %i.at, %i.z
  %i.av = call noundef i32 @llvm.smax.i32(i32 %i.au, i32 0) ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add nsw i64 %i.aq, %i.aw
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ay = icmp eq i64 %i.y, 1
  %spec.select = select i1 %i.ay, i8 0, i8 %i.o
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.049 = phi i32 [ %i.av, %bb.k ], [ 0, %bb.l ]
  %.048 = phi i64 [ %i.ax, %bb.k ], [ %i.aq, %bb.l ]
  %.0 = phi i8 [ %i.o, %bb.k ], [ %spec.select, %bb.l ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.az = zext i1 %.not52 to i64
  %i.ba = call i32 @llvm.abs.i32(i32 %i.ad, i1 true) ; 2 uses
  %i.bb = icmp samesign ult i32 %i.ba, 100
  %i.bc = icmp samesign ugt i32 %i.ba, 999
  %i.bd = select i1 %i.bc, i64 6, i64 5
  %.0.i = select i1 %i.bb, i64 4, i64 %i.bd
  %i.be = add nsw i64 %.048, %.0.i
  %i.bf = add nsw i64 %i.be, %i.az                ; 3 uses
  %i.bg = and i32 %i.n, 4096
  %.not54 = icmp eq i32 %i.bg, 0
  %i.bh = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i32 %3, ptr %7, align 4, !tbaa !360
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bj = load i64, ptr %1, align 4
  store i64 %i.bj, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.z, ptr %i.bk, align 4, !tbaa !361
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 %.0, ptr %i.bl, align 4, !tbaa !362
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %.049, ptr %i.bm, align 4, !tbaa !363
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %i.bh, ptr %i.bn, align 4, !tbaa !364
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %i.ad, ptr %i.bo, align 4, !tbaa !365
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !283 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = call i64 @llvm.usub.sat.i64(i64 %i.bs, i64 %i.bf) ; 4 uses
  %i.bu = lshr i32 %i.n, 3
  %i.bv = and i32 %i.bu, 7
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @.str.84, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !103
  %i.bz = sext i8 %i.by to i64
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = lshr i64 %i.bt, %i.ca                   ; 4 uses
  %i.cc = sub nsw i64 %i.bt, %i.cb
  %i.cd = lshr i32 %i.n, 15
  %i.ce = and i32 %i.cd, 7
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = mul nuw nsw i64 %i.bt, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !245
  %i.cj = add nsw i64 %i.cg, %i.bf
  %i.ck = add i64 %i.cj, %i.ci                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !244
  %i.cn = icmp ugt i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.o, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !237
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck), !inline_history !992
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.cq = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.cq, %bb.p ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ]
  %i.cr = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr %.sroa.09.0.i.i) ; 2 uses
  %.not31.i.i = icmp eq i64 %i.bt, %i.cb
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.cr, i64 noundef %i.cc, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.s:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !245
  %i.cv = add i64 %i.cu, %i.bf                    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !244
  %i.cy = icmp ugt i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.t, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !237
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cv), !inline_history !15
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.s, %bb.t
  %i.db = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr nonnull %0)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit: ; preds = %bb.r, %bb.q, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.047.0 = phi ptr [ %i.db, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ], [ %i.cs, %bb.r ], [ %i.cr, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, %bb.i
  %.sroa.047.1 = phi ptr [ %i.an, %bb.i ], [ %.sroa.047.0, %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit ]
  ret ptr %.sroa.047.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %9 = alloca %class.anon.114, align 8            ; 11 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %10 = alloca %class.anon.115, align 8           ; 9 uses
  %i.h = inttoptr i64 %6 to ptr                   ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !51
  store i8 %3, ptr %i.b, align 1, !tbaa !103
  store i32 %5, ptr %i.c, align 4, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !312  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 6 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !51
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !259
  %i.t = sub nsw i32 %i.s, %i.k                   ; 5 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !257    ; 3 uses
  %i.v = and i32 %i.u, 8192
  %.not98 = icmp eq i32 %i.v, 0
  br i1 %.not98, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 2 uses
  %i.x = icmp slt i32 %i.t, 1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.u, 7
  %.not48 = icmp eq i32 %i.y, 2
  %spec.select = select i1 %.not48, i32 %i.t, i32 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ %i.t, %bb.e ], [ %i.t, %bb.b ], [ %spec.select, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.q, %bb.b ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.ab = and i32 %i.u, 16384
  %i.ac = icmp ne i32 %i.ab, 0
  call void @_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr %i.h, i1 noundef zeroext %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !86
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread
  %i.ag = load ptr, ptr %7, align 8, !tbaa !87    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !86
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.as, %bb.i ] ; 2 uses
  %.sroa.0.07.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.i ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aq, %bb.i ]
  %i.al = icmp eq ptr %.sroa.0.07.i, %i.aj
  br i1 %i.al, label %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.g

._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.f
  %.sink.i.pre.i = load i8, ptr %i.ak, align 1, !tbaa !103
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !103 ; 2 uses
  %i.an = add i8 %i.am, -127
  %or.cond.i.i = icmp ult i8 %i.an, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.h, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.am, %bb.h ], [ %.sink.i.pre.i, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.ao, %bb.h ], [ %i.aj, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.ap = sext i8 %.sink.i.i to i32
  %i.aq = add nsw i32 %.sroa.5.06.i, %i.ap        ; 2 uses
  %i.ar = icmp sgt i32 %i.k, %i.aq
  br i1 %i.ar, label %bb.i, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit.loopexit

bb.i:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i
end_hunk_2
begin_hunk_3_@_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly5EPSt7complexIfEmm:bb.a
  %i.de = extractelement <2 x float> %i.cw, i64 0
  %i.df = extractelement <2 x float> %i.cw, i64 1
  %i.dg = extractelement <2 x float> %i.cu, i64 1
  %i.dh = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i76, float noundef %i.dg, float noundef %i.de, float noundef %i.df) #32
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82: ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75, %bb.i, %bb.j
  %i.di = phi <2 x float> [ %i.dc, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75 ], [ %i.dc, %bb.i ], [ %i.dh, %bb.j ] ; 2 uses
  %i.dj = fadd <2 x float> %i.az, %i.di           ; 3 uses
  %i.dk = fsub <2 x float> %i.az, %i.di           ; 3 uses
  %i.dl = fadd <2 x float> %i.bv, %i.cr           ; 3 uses
  %i.dm = fsub <2 x float> %i.bv, %i.cr           ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0181, i64 4
  %i.do = load <2 x float>, ptr %.0181, align 4
  %i.dp = fadd <2 x float> %i.dj, %i.do
  %i.dq = fadd <2 x float> %i.dp, %i.dl           ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  store float %i.dr, ptr %.0181, align 4
  %i.ds = extractelement <2 x float> %i.dq, i64 1
  store float %i.ds, ptr %i.dn, align 4
  %i.dt = fmul <2 x float> %i.t, %i.dj
  %i.du = fmul <2 x float> %i.v, %i.dl
  %i.dv = fadd <2 x float> %i.dt, %i.du
  %i.dw = fadd <2 x float> %i.dv, %i.ad           ; 2 uses
  %i.dx = fmul <2 x float> %i.x, %i.dk            ; 2 uses
  %i.dy = fmul <2 x float> %i.z, %i.dm            ; 2 uses
  %i.dz = fadd <2 x float> %i.dx, %i.dy
  %i.ea = fsub <2 x float> %i.dx, %i.dy
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ec = fsub <2 x float> %i.dw, %i.eb
  store <2 x float> %i.ec, ptr %.053180, align 4, !tbaa !103
  %i.ed = fadd <2 x float> %i.dw, %i.eb
  store <2 x float> %i.ed, ptr %.055178, align 4, !tbaa !103
  %i.ee = fmul <2 x float> %i.v, %i.dj
  %i.ef = fmul <2 x float> %i.t, %i.dl
  %i.eg = fadd <2 x float> %i.ee, %i.ef
  %i.eh = fadd <2 x float> %i.eg, %i.ad           ; 2 uses
  %i.ei = shufflevector <2 x float> %i.dm, <2 x float> %i.dk, <2 x i32> <i32 1, i32 2>
  %i.ej = fmul <2 x float> %i.ab, %i.ei
  %i.ek = shufflevector <2 x float> %i.dm, <2 x float> %i.dk, <2 x i32> <i32 3, i32 0>
  %i.el = fmul <2 x float> %i.ac, %i.ek
  %i.em = fsub <2 x float> %i.ej, %i.el           ; 2 uses
  %i.en = fadd <2 x float> %i.eh, %i.em
  store <2 x float> %i.en, ptr %.057176, align 4, !tbaa !103
  %i.eo = fsub <2 x float> %i.eh, %i.em
  store <2 x float> %i.eo, ptr %.056177, align 4, !tbaa !103
  %i.ep = getelementptr inbounds nuw i8, ptr %.0181, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.053180, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %.057176, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %.056177, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %.055178, i64 8
  %i.eu = add nuw i64 %.054179, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eu, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1111

._crit_edge:                                      ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE15kf_bfly_genericEPSt7complexIfEmii(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385
  %i.c = load i32, ptr %0, align 8, !tbaa !398    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 15 uses
  %i.e = sext i32 %4 to i64                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !400  ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !385  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw nsw i64 %i.e, %i.l
  tail call void @_ZNSt6vectorISt7complexIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.n)
  br label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.l, %i.e
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPSt7complexIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt7complexIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.p, ptr %i.f, align 8, !tbaa !400
  br label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt7complexIfES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %.preheader52.lr.ph, label %._crit_edge

.preheader52.lr.ph:                               ; preds = %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit
  %i.r = icmp sgt i32 %4, 0
  %i.s = trunc i64 %2 to i32
  br i1 %i.r, label %.preheader52.lr.ph.split.us, label %._crit_edge

.preheader52.lr.ph.split.us:                      ; preds = %.preheader52.lr.ph
  %.not = icmp eq i32 %4, 1
  %i.t = zext nneg i32 %3 to i64                  ; 9 uses
  br i1 %.not, label %._crit_edge61.split.us67.us.preheader, label %.preheader52.us.us.preheader

._crit_edge61.split.us67.us.preheader:            ; preds = %.preheader52.lr.ph.split.us
  %xtraiter137 = and i64 %i.t, 1
  %i.u = icmp eq i32 %3, 1
  br i1 %i.u, label %._crit_edge61.split.us67.us.epil.preheader, label %._crit_edge61.split.us67.us.preheader.new

._crit_edge61.split.us67.us.preheader.new:        ; preds = %._crit_edge61.split.us67.us.preheader
  %unroll_iter141 = and i64 %i.t, 2147483646
  br label %._crit_edge61.split.us67.us

.preheader52.us.us.preheader:                     ; preds = %.preheader52.lr.ph.split.us
  %wide.trip.count109 = zext nneg i32 %4 to i64   ; 2 uses
  %wide.trip.count114 = zext nneg i32 %4 to i64
  %xtraiter = and i64 %wide.trip.count109, 3      ; 3 uses
  %i.v = icmp ult i32 %4, 4
  %unroll_iter = and i64 %wide.trip.count109, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod136 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %._crit_edge61.split.us.us.us, %.preheader52.us.us.preheader
  %indvars.iv102 = phi i64 [ 0, %.preheader52.us.us.preheader ], [ %indvars.iv.next103, %._crit_edge61.split.us.us.us ] ; 4 uses
  br i1 %i.v, label %.lr.ph.us.us.epil.preheader, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %indvars.iv104 = phi i64 [ %indvars.iv.next105.3, %.lr.ph.us.us ], [ %indvars.iv102, %.lr.ph.us.us.preheader ] ; 2 uses
  %indvars.iv100 = phi i64 [ %indvars.iv.next101.3, %.lr.ph.us.us ], [ 0, %.lr.ph.us.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us ], [ 0, %.lr.ph.us.us.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv104
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv100
  %i.z = load i64, ptr %i.w, align 4, !tbaa !103
  store i64 %i.z, ptr %i.y, align 4, !tbaa !103
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, %i.t ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next105
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv100
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.aa, align 4, !tbaa !103
  store i64 %i.ae, ptr %i.ad, align 4, !tbaa !103
  %indvars.iv.next105.1 = add nuw nsw i64 %indvars.iv.next105, %i.t ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next105.1
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv100
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.af, align 4, !tbaa !103
  store i64 %i.aj, ptr %i.ai, align 4, !tbaa !103
  %indvars.iv.next105.2 = add nuw nsw i64 %indvars.iv.next105.1, %i.t ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next105.2
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv100
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i64, ptr %i.ak, align 4, !tbaa !103
  store i64 %i.ao, ptr %i.an, align 4, !tbaa !103
  %indvars.iv.next105.3 = add nuw nsw i64 %indvars.iv.next105.2, %i.t ; 2 uses
  %indvars.iv.next101.3 = add nuw nsw i64 %indvars.iv100, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph57.us.us.us.preheader.unr-lcssa, label %.lr.ph.us.us, !llvm.loop !1112

.lr.ph57.us.us.us.preheader.unr-lcssa:            ; preds = %.lr.ph.us.us
  br i1 %lcmp.mod.not, label %.lr.ph57.us.us.us.preheader, label %.lr.ph.us.us.epil.preheader

.lr.ph.us.us.epil.preheader:                      ; preds = %.lr.ph57.us.us.us.preheader.unr-lcssa, %.lr.ph.us.us.preheader
  %indvars.iv104.epil.init = phi i64 [ %indvars.iv102, %.lr.ph.us.us.preheader ], [ %indvars.iv.next105.3, %.lr.ph57.us.us.us.preheader.unr-lcssa ]
  %indvars.iv100.epil.init = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next101.3, %.lr.ph57.us.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.us.us.epil

.lr.ph.us.us.epil:                                ; preds = %.lr.ph.us.us.epil, %.lr.ph.us.us.epil.preheader
  %indvars.iv104.epil = phi i64 [ %indvars.iv104.epil.init, %.lr.ph.us.us.epil.preheader ], [ %indvars.iv.next105.epil, %.lr.ph.us.us.epil ] ; 2 uses
  %indvars.iv100.epil = phi i64 [ %indvars.iv100.epil.init, %.lr.ph.us.us.epil.preheader ], [ %indvars.iv.next101.epil, %.lr.ph.us.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.us.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.us.us.epil ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv104.epil
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv100.epil
  %i.as = load i64, ptr %i.ap, align 4, !tbaa !103
  store i64 %i.as, ptr %i.ar, align 4, !tbaa !103
  %indvars.iv.next105.epil = add nuw nsw i64 %indvars.iv104.epil, %i.t
  %indvars.iv.next101.epil = add nuw nsw i64 %indvars.iv100.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph57.us.us.us.preheader, label %.lr.ph.us.us.epil, !llvm.loop !1113

.lr.ph57.us.us.us.preheader:                      ; preds = %.lr.ph.us.us.epil, %.lr.ph57.us.us.us.preheader.unr-lcssa
  br label %.lr.ph57.us.us.us

.lr.ph57.us.us.us:                                ; preds = %.lr.ph57.us.us.us.preheader, %._crit_edge.us.us.us
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %._crit_edge.us.us.us ], [ %indvars.iv102, %.lr.ph57.us.us.us.preheader ] ; 3 uses
  %.14059.us.us.us = phi i32 [ %i.bq, %._crit_edge.us.us.us ], [ 0, %.lr.ph57.us.us.us.preheader ]
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv116 ; 3 uses
  %i.av = load i64, ptr %i.at, align 4, !tbaa !103 ; 3 uses
  store i64 %i.av, ptr %i.au, align 4, !tbaa !103
  %i.aw = trunc nuw i64 %indvars.iv116 to i32
  %i.ax = mul i32 %i.aw, %i.s
  %5 = lshr i64 %i.av, 32
  %6 = insertelement <2 x i64> poison, i64 %i.av, i64 0
  %7 = insertelement <2 x i64> %6, i64 %5, i64 1
  %8 = trunc <2 x i64> %7 to <2 x i32>
  %i.ay = bitcast <2 x i32> %8 to <2 x float>
  br label %bb.e

bb.e:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, %.lr.ph57.us.us.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ 1, %.lr.ph57.us.us.us ] ; 2 uses
  %.056.us.us.us = phi i32 [ %spec.select.us.us.us, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ 0, %.lr.ph57.us.us.us ]
  %i.az = phi <2 x float> [ %i.bp, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ %i.ay, %.lr.ph57.us.us.us ] ; 2 uses
  %i.ba = add i32 %.056.us.us.us, %i.ax           ; 2 uses
  %.not.us.us.us = icmp slt i32 %i.ba, %i.c
  %i.bb = select i1 %.not.us.us.us, i32 0, i32 %i.c
  %spec.select.us.us.us = sub nsw i32 %i.ba, %i.bb ; 2 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv111
  %i.be = sext i32 %spec.select.us.us.us to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.be ; 2 uses
  %i.bg = load <2 x float>, ptr %i.bd, align 4, !tbaa !103 ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.sroa.0.0.vec.extract.i.i.us.us.us = extractelement <2 x float> %i.bg, i64 0
  %.sroa.0.4.vec.extract.i.i.us.us.us = extractelement <2 x float> %i.bg, i64 1
  %10 = load float, ptr %i.bf, align 4            ; 2 uses
  %11 = load float, ptr %9, align 4               ; 2 uses
  %12 = insertelement <2 x float> poison, float %11, i64 0
  %13 = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %14 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %13, %14               ; 2 uses
  %15 = insertelement <2 x float> poison, float %10, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x float> %16, %i.bg               ; 2 uses
  %18 = fsub <2 x float> %17, %i.bh               ; 2 uses
  %i.bi = fadd <2 x float> %17, %i.bh             ; 2 uses
  %19 = shufflevector <2 x float> %18, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %20 = extractelement <2 x float> %18, i64 0
  %21 = fcmp uno float %20, 0.000000e+00
  br i1 %21, label %bb.f, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, !prof !401

bb.f:                                             ; preds = %bb.e
  %i.bj = extractelement <2 x float> %i.bi, i64 1
  %i.bk = fcmp uno float %i.bj, 0.000000e+00
  br i1 %i.bk, label %bb.g, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, !prof !401

bb.g:                                             ; preds = %bb.f
  %i.bl = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i.us.us.us, float noundef %.sroa.0.4.vec.extract.i.i.us.us.us, float noundef %10, float noundef %11) #32
  %i.bm = load <2 x float>, ptr %i.au, align 4
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us: ; preds = %bb.g, %bb.f, %bb.e
  %i.bn = phi <2 x float> [ %19, %bb.e ], [ %19, %bb.f ], [ %i.bl, %bb.g ]
  %i.bo = phi <2 x float> [ %i.az, %bb.e ], [ %i.az, %bb.f ], [ %i.bm, %bb.g ]
  %i.bp = fadd <2 x float> %i.bn, %i.bo           ; 2 uses
  store <2 x float> %i.bp, ptr %i.au, align 4
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge.us.us.us, label %bb.e, !llvm.loop !1114

._crit_edge.us.us.us:                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, %i.t
  %i.bq = add nuw nsw i32 %.14059.us.us.us, 1     ; 2 uses
  %exitcond119.not = icmp eq i32 %i.bq, %4
  br i1 %exitcond119.not, label %._crit_edge61.split.us.us.us, label %.lr.ph57.us.us.us, !llvm.loop !1115

._crit_edge61.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next103, %i.t
  br i1 %exitcond122.not, label %._crit_edge, label %.lr.ph.us.us.preheader, !llvm.loop !1116

._crit_edge61.split.us67.us:                      ; preds = %._crit_edge61.split.us67.us, %._crit_edge61.split.us67.us.preheader.new
  %indvars.iv84 = phi i64 [ 0, %._crit_edge61.split.us67.us.preheader.new ], [ %indvars.iv.next85.1, %._crit_edge61.split.us67.us ] ; 4 uses
  %niter142 = phi i64 [ 0, %._crit_edge61.split.us67.us.preheader.new ], [ %niter142.next.1, %._crit_edge61.split.us67.us ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.bt = load i64, ptr %i.br, align 4, !tbaa !103
  store i64 %i.bt, ptr %i.bs, align 4, !tbaa !103
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84
  %i.bw = load i64, ptr %i.bu, align 4, !tbaa !103
  store i64 %i.bw, ptr %i.bv, align 4, !tbaa !103
  %indvars.iv.next85 = or disjoint i64 %indvars.iv84, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next85
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.bz = load i64, ptr %i.bx, align 4, !tbaa !103
  store i64 %i.bz, ptr %i.by, align 4, !tbaa !103
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next85
  %i.cc = load i64, ptr %i.ca, align 4, !tbaa !103
  store i64 %i.cc, ptr %i.cb, align 4, !tbaa !103
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %niter142.next.1 = add i64 %niter142, 2         ; 2 uses
  %niter142.ncmp.1 = icmp eq i64 %niter142.next.1, %unroll_iter141
  br i1 %niter142.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %._crit_edge61.split.us67.us, !llvm.loop !1116

._crit_edge.loopexit.unr-lcssa:                   ; preds = %._crit_edge61.split.us67.us
  %lcmp.mod139.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod139.not, label %._crit_edge, label %._crit_edge61.split.us67.us.epil.preheader

._crit_edge61.split.us67.us.epil.preheader:       ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge61.split.us67.us.preheader
  %indvars.iv84.epil.init = phi i64 [ 0, %._crit_edge61.split.us67.us.preheader ], [ %indvars.iv.next85.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod140 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84.epil.init
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.cf = load i64, ptr %i.cd, align 4, !tbaa !103
  store i64 %i.cf, ptr %i.ce, align 4, !tbaa !103
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84.epil.init
  %i.ci = load i64, ptr %i.cg, align 4, !tbaa !103
  store i64 %i.ci, ptr %i.ch, align 4, !tbaa !103
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge61.split.us.us.us, %._crit_edge61.split.us67.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader52.lr.ph, %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit
  ret void
}

declare <2 x float> @__mulsc3(float, float, float, float) local_unnamed_addr

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39), ptr, i64, i32 noundef, ptr, i64, i8, i8) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15divide_by_alphaERNS1_8ImageBufES2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 51 uses
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !1119, !nonnull !132, !align !226
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !77
  %.fr47.i.i.i = freeze i32 %i.d                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.g = load ptr, ptr %0, align 8, !tbaa !1119, !nonnull !132, !align !226
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i1 noundef zeroext true)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  %i.p = sext i32 %i.f to i64
  %i.q = icmp sgt i32 %.fr47.i.i.i, 0
  br i1 %i.q, label %.split.us.preheader.i.i.i, label %.split.i.preheader.i.i

.split.i.preheader.i.i:                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %.split.i.i.i

.split.us.preheader.i.i.i:                        ; preds = %bb.a
  %wide.trip.count.i.i.i = zext nneg i32 %.fr47.i.i.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i.backedge, %.split.us.preheader.i.i.i
  %i.at = load i8, ptr %i.h, align 8, !tbaa !175, !range !131, !noundef !132
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.b:                                             ; preds = %.split.us.i.i.i
  %i.av = load i32, ptr %i.i, align 4, !tbaa !176
  %i.aw = load i32, ptr %i.j, align 4, !tbaa !178
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ay = load i32, ptr %i.k, align 8, !tbaa !177
  %i.az = load i32, ptr %i.l, align 4, !tbaa !188
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i: ; preds = %bb.c
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !179
  %i.bc = load i32, ptr %i.n, align 8, !tbaa !180
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %.split41.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i, %bb.c, %bb.b, %.split.us.i.i.i
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.p
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !161 ; 2 uses
  %i.bh = fcmp une float %i.bg, 0.000000e+00
  br i1 %i.bh, label %.preheader.us.i.i.i, label %..loopexit_crit_edge.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %bb.e
  %i.bi = phi ptr [ %i.bp, %bb.e ], [ %i.be, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.e ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i.i
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !161
  %i.bl = fdiv float %i.bk, %i.bg
  %i.bm = load ptr, ptr %2, align 8, !tbaa !184
  %i.bn = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.noexc.us.i.i.i unwind label %.split43.us.i.i.i

.noexc.us.i.i.i:                                  ; preds = %.preheader.us.i.i.i
  %i.bo = icmp eq i32 %i.bn, 3
  br i1 %i.bo, label %bb.d, label %bb.e, !prof !185

bb.d:                                             ; preds = %.noexc.us.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.e unwind label %.split43.us.i.i.i

bb.e:                                             ; preds = %bb.d, %.noexc.us.i.i.i
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i.i.i
  store float %i.bl, ptr %i.bq, align 4, !tbaa !161
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %..loopexit_crit_edge.us.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !1117

..loopexit_crit_edge.us.i.i.i:                    ; preds = %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i
  %i.br = phi ptr [ %i.be, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ], [ %i.bp, %bb.e ] ; 2 uses
  %i.bs = load i32, ptr %i.i, align 4, !tbaa !176
  %i.bt = add nsw i32 %i.bs, 1                    ; 7 uses
  store i32 %i.bt, ptr %i.i, align 4, !tbaa !176
end_hunk_3
