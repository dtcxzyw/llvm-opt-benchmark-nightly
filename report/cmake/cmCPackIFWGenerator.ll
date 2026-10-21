Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCPackIFWGenerator?download=true
inline.NumInlined: 2539
inline.NumDeleted: 819
begin_hunk_0_@_ZN19cmCPackIFWGenerator16RunBinaryCreatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.bi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.bj:                                            ; preds = %.invoke281, %.noexc216, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i211, %.noexc214, %bb.au, %.noexc205, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i200, %.noexc203, %bb.as, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit98, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97, %_ZNSolsEPFRSoS_E.exit96, %bb.aq
  %i.lc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ld = load ptr, ptr %13, align 8, !tbaa !105  ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.bj
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !35
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.bi
  %.pn42 = phi { ptr, i32 } [ %i.lb, %bb.bi ], [ %i.lc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %i.lc, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bm

bb.bk:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit113
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lj = load ptr, ptr %14, align 8, !tbaa !105  ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.js
  br i1 %i.lk, label %.body111, label %.body111.sink.split

.body111.sink.split:                              ; preds = %bb.bk, %bb.ax
  %.sink288 = phi ptr [ %i.kg, %bb.ax ], [ %i.lj, %bb.bk ]
  %.pn44.ph = phi { ptr, i32 } [ %i.kf, %bb.ax ], [ %i.li, %bb.bk ]
  %i.ll = load i64, ptr %i.js, align 8, !tbaa !35
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %.sink288, i64 noundef %i.lm) #24
  br label %.body111

.body111:                                         ; preds = %.body111.sink.split, %bb.bk, %bb.ax
  %.pn44 = phi { ptr, i32 } [ %i.kf, %bb.ax ], [ %i.li, %bb.bk ], [ %.pn44.ph, %.body111.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bm

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  store ptr %i.bq, ptr %12, align 8, !tbaa !19
  %i.ln = load i64, ptr %i.bs, align 8
  %i.lo = getelementptr inbounds i8, ptr %12, i64 %i.ln
  store ptr %i.br, ptr %i.lo, align 8, !tbaa !19
  %i.lp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.lp, align 8, !tbaa !19
  %i.lq = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !105 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127: ; preds = %bb.bl
  %i.lu = load i64, ptr %i.ls, align 8, !tbaa !35
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit129

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit129: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.lp, align 8, !tbaa !19
  %i.lw = getelementptr inbounds nuw i8, ptr %12, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lw) #23
  %i.lx = getelementptr inbounds nuw i8, ptr %12, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.lx) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN21cmGeneratedFileStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(348) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bq

bb.bm:                                            ; preds = %.body111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %bb.bh
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %.body111 ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.la, %bb.bh ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #23
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bg
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %bb.bm ], [ %i.kz, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %bb.bd
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %bb.bn ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.kr, %bb.bd ]
  call void @_ZN21cmGeneratedFileStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(348) %10) #23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bc
  %.pn44.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn, %bb.bo ], [ %i.kq, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bs

bb.bq:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit129
  %.0 = phi i32 [ 0, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit129 ], [ 1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ly = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.ce
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.bq
  %i.ma = load i64, ptr %i.ce, align 8, !tbaa !35
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.mc = load ptr, ptr %2, align 8, !tbaa !108   ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !109 ; 2 uses
  %.not4.i.i.i133 = icmp eq ptr %i.mc, %i.me
  br i1 %.not4.i.i.i133, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141, label %.lr.ph.i.i.i134

.lr.ph.i.i.i134:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137
  %.05.i.i.i135 = phi ptr [ %i.mk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137 ], [ %i.mc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ] ; 3 uses
  %i.mf = load ptr, ptr %.05.i.i.i135, align 8, !tbaa !105 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.05.i.i.i135, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136: ; preds = %.lr.ph.i.i.i134
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !35
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137: ; preds = %.lr.ph.i.i.i134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i136
  %i.mk = getelementptr inbounds nuw i8, ptr %.05.i.i.i135, i64 32 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.mk, %i.me
  br i1 %.not.i.i.i138, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139, label %.lr.ph.i.i.i134, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i137
  %.pr.i140 = load ptr, ptr %2, align 8, !tbaa !108
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.ml = phi ptr [ %.pr.i140, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i139 ], [ %i.mc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ] ; 3 uses
  %.not.i.i1.i142 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i1.i142, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144, label %bb.br

bb.br:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !111
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.ml to i64
  %i.mq = sub i64 %i.mo, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %i.ml, i64 noundef %i.mq) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit144: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i141, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i32 %.0

bb.bs:                                            ; preds = %bb.bb, %bb.bp, %bb.ba
  %.pn44.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn, %bb.ba ], [ %.pn44.pn.pn.pn.pn, %bb.bp ], [ %i.kp, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.mr = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.ce
  br i1 %i.ms, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.bs
  %i.mt = load i64, ptr %i.ce, align 8, !tbaa !35
  %i.mu = add i64 %i.mt, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.z
  %.pn44.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %.pn30.pn.pn, %bb.z ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn44.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19cmCPackIFWGenerator19BuildRepogenCommandB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(2448) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 23 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 45 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.noexc34 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 4 uses
  %i.k = invoke noundef zeroext i1 @_ZNK16cmCPackIFWCommon13IsVersionLessEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.4)
          to label %bb.b unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.noexc34
  br i1 %i.k, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit62, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2328 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2336 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit48, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !109  ; 8 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %9, align 8, !tbaa !111
  %.not.i35 = icmp eq ptr %i.p, %i.q
  br i1 %.not.i35, label %bb.e, label %.noexc.i.i37

.noexc.i.i37:                                     ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i64 16, ptr %i.g, align 8, !tbaa !137
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc39 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc39:                                         ; preds = %.noexc.i.i37
  store ptr %i.s, ptr %i.p, align 8, !tbaa !105
  %i.t = load i64, ptr %i.g, align 8, !tbaa !137  ; 3 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.s, ptr noundef nonnull align 1 dereferenceable(17) @.str.5, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !34
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  store ptr %i.y, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA17_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.p, ptr noundef nonnull align 1 dereferenceable(17) @.str.5)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge, %.noexc39
  %i.z = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.y, %.noexc39 ] ; 8 uses
  %i.aa = load ptr, ptr %9, align 8, !tbaa !111
  %.not.i41 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i41, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !105 ; 2 uses
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !34  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 %i.ad, ptr %i.f, align 8, !tbaa !137
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i.i44, label %._crit_edge.i.i.i42

.noexc.i.i44:                                     ; preds = %bb.f
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc46 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc46:                                         ; preds = %.noexc.i.i44
  store ptr %i.af, ptr %i.z, align 8, !tbaa !105
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !137
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !35
  br label %._crit_edge.i.i.i42

._crit_edge.i.i.i42:                              ; preds = %.noexc46, %bb.f
  %i.ah = phi ptr [ %i.af, %.noexc46 ], [ %i.ab, %bb.f ] ; 2 uses
  switch i64 %i.ad, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i43
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i42
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !35
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i43

bb.h:                                             ; preds = %._crit_edge.i.i.i42
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ac, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i43: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i42
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !137 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !34
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !105
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit48

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit48 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit48: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i43, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2360 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 2368 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !34
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit62, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit48
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !109 ; 6 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load ptr, ptr %10, align 8, !tbaa !111
  %.not.i49 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i49, label %bb.k, label %._crit_edge.i.i.i50

._crit_edge.i.i.i50:                              ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.av, ptr noundef nonnull align 1 dereferenceable(14) @.str.6, i64 13, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 13, ptr %i.aw, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 29
  store i8 0, ptr %i.ax, align 1, !tbaa !35
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  store ptr %i.az, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.at, ptr noundef nonnull align 1 dereferenceable(14) @.str.6)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.k
  %.pre274 = load ptr, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i50
  %i.ba = phi ptr [ %.pre274, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.az, %._crit_edge.i.i.i50 ] ; 8 uses
  %i.bb = load ptr, ptr %10, align 8, !tbaa !111
  %.not.i55 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i55, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !32
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !105 ; 2 uses
  %i.be = load i64, ptr %i.aq, align 8, !tbaa !34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 %i.be, ptr %i.e, align 8, !tbaa !137
  %i.bf = icmp ugt i64 %i.be, 15
  br i1 %i.bf, label %.noexc.i.i58, label %._crit_edge.i.i.i56

.noexc.i.i58:                                     ; preds = %bb.l
  %i.bg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc60 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc60:                                         ; preds = %.noexc.i.i58
  store ptr %i.bg, ptr %i.ba, align 8, !tbaa !105
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !137
  store i64 %i.bh, ptr %i.bc, align 8, !tbaa !35
  br label %._crit_edge.i.i.i56

._crit_edge.i.i.i56:                              ; preds = %.noexc60, %bb.l
  %i.bi = phi ptr [ %i.bg, %.noexc60 ], [ %i.bc, %bb.l ] ; 2 uses
  switch i64 %i.be, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i57
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i56
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !35
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i57

bb.n:                                             ; preds = %._crit_edge.i.i.i56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bd, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i57: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i56
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !137 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !34
  %i.bm = load ptr, ptr %i.ba, align 8, !tbaa !105
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.bp, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit62

bb.o:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit62 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit62: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i57, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit48, %bb.b
  %i.bq = invoke noundef zeroext i1 @_ZNK16cmCPackIFWCommon13IsVersionLessEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.7)
          to label %bb.p unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit62
  %.pre278 = load ptr, ptr %i.i, align 8, !tbaa !109 ; 7 uses
  br i1 %i.bq, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.br = load ptr, ptr %11, align 8, !tbaa !111
  %.not.i63 = icmp eq ptr %.pre278, %i.br
  br i1 %.not.i63, label %bb.r, label %._crit_edge.i.i.i64

._crit_edge.i.i.i64:                              ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre278, i64 16 ; 2 uses
  store ptr %i.bs, ptr %.pre278, align 8, !tbaa !32
  store i16 25389, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre278, i64 8
  store i64 2, ptr %i.bt, align 8, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre278, i64 18
  store i8 0, ptr %i.bu, align 2, !tbaa !35
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %i.bw, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA3_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.pre278, ptr noundef nonnull align 1 dereferenceable(3) @.str.8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit: ; preds = %bb.r, %._crit_edge.i.i.i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !105, !noalias !300
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !34, !noalias !300 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.cb, ptr %2, align 8, !tbaa !32, !alias.scope !301
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 0, ptr %i.cc, align 8, !tbaa !34, !alias.scope !301
  store i8 0, ptr %i.cb, align 8, !tbaa !35, !alias.scope !301
  %i.cd = add i64 %i.ca, 18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.cd)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !34, !alias.scope !301
  %i.cf = sub i64 4611686018427387903, %i.ce
  %i.cg = icmp ult i64 %i.cf, %i.ca
  br i1 %i.cg, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.s
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.by, i64 noundef %i.ca)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !34, !alias.scope !301
  %i.cj = add i64 %i.ci, -4611686018427387886
  %i.ck = icmp ult i64 %i.cj, 18
  br i1 %i.ck, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #26
          to label %.cont.i.i unwind label %bb.t

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.9, i64 noundef 18)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %2, align 8, !tbaa !105, !alias.scope !301 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.cb
  br i1 %i.co, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !109 ; 6 uses
  %i.cq = load ptr, ptr %11, align 8, !tbaa !111
  %.not.i69 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i69, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !32
  %i.cs = load ptr, ptr %2, align 8, !tbaa !105   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cb
  br i1 %i.ct, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.cu = load i64, ptr %i.cc, align 8, !tbaa !34 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %i.cw = add nuw nsw i64 %i.cu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !105
  %i.cx = load i64, ptr %i.cb, align 8, !tbaa !35
  store i64 %i.cx, ptr %i.cr, align 8, !tbaa !35
  %.pre275 = load i64, ptr %i.cc, align 8, !tbaa !34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cy = phi i64 [ %.pre275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cu, %bb.v ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !34
  store ptr %i.cb, ptr %2, align 8, !tbaa !105
  store i64 0, ptr %i.cc, align 8, !tbaa !34
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.db, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.w:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit unwind label %bb.x

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.w
  %.pre276 = load ptr, ptr %2, align 8, !tbaa !105 ; 2 uses
  %i.dc = icmp eq ptr %.pre276, %i.cb
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.dd = load i64, ptr %i.cb, align 8, !tbaa !35
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.pre276, i64 noundef %i.de) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre277 = load ptr, ptr %i.i, align 8, !tbaa !109
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %2, align 8, !tbaa !105   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cb
  br i1 %i.dh, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.x, %bb.t
  %.sink = phi ptr [ %i.cn, %bb.t ], [ %i.dg, %bb.x ]
  %.pn.ph = phi { ptr, i32 } [ %i.cm, %bb.t ], [ %i.df, %bb.x ]
  %i.di = load i64, ptr %i.cb, align 8, !tbaa !35
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dj) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.x, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.t ], [ %i.df, %bb.x ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.loopexit.split-lp247.loopexit.split-lp

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %i.dk = phi ptr [ %.pre277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre278, %bb.p ] ; 6 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.dl = load ptr, ptr %12, align 8, !tbaa !111
  %.not.i76 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i76, label %bb.z, label %._crit_edge.i.i.i77

._crit_edge.i.i.i77:                              ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !32
  store i16 28717, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 2, ptr %i.dn, align 8, !tbaa !34
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 18
  store i8 0, ptr %i.do, align 2, !tbaa !35
  %i.dp = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store ptr %i.dq, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit83

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA3_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.dk, ptr noundef nonnull align 1 dereferenceable(3) @.str.10)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit83 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit83: ; preds = %bb.z, %._crit_edge.i.i.i77
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !105, !noalias !302
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !34, !noalias !302 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.dv, ptr %3, align 8, !tbaa !32, !alias.scope !303
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.dw, align 8, !tbaa !34, !alias.scope !303
  store i8 0, ptr %i.dv, align 8, !tbaa !35, !alias.scope !303
  %i.dx = add i64 %i.du, 9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.dx)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit83
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !34, !alias.scope !303
  %i.dz = sub i64 4611686018427387903, %i.dy
  %i.ea = icmp ult i64 %i.dz, %i.du
  br i1 %i.ea, label %.invoke.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i87: ; preds = %bb.aa
  %i.eb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ds, i64 noundef %i.du)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i88 unwind label %bb.ab ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i88: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i87
  %i.ec = load i64, ptr %i.dw, align 8, !tbaa !34, !alias.scope !303
  %i.ed = add i64 %i.ec, -4611686018427387895
  %i.ee = icmp ult i64 %i.ed, 9
  br i1 %i.ee, label %.invoke.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i89

.invoke.i.i90:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i88, %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #26
          to label %.cont.i.i91 unwind label %bb.ab

.cont.i.i91:                                      ; preds = %.invoke.i.i90
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i88
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, i64 noundef 9)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit94 unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i89, %.invoke.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i87, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit83
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %3, align 8, !tbaa !105, !alias.scope !303 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dv
  br i1 %i.ei, label %.body92, label %.body92.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit94: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i89
  %i.ej = load ptr, ptr %i.i, align 8, !tbaa !109 ; 6 uses
  %i.ek = load ptr, ptr %12, align 8, !tbaa !111
  %.not.i95 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i95, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit94
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 3 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !32
  %i.em = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.dv
  br i1 %i.en, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

bb.ad:                                            ; preds = %bb.ac
  %i.eo = load i64, ptr %i.dw, align 8, !tbaa !34 ; 3 uses
  %i.ep = icmp ult i64 %i.eo, 16
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw nsw i64 %i.eo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.el, ptr noundef nonnull align 8 dereferenceable(1) %i.dv, i64 %i.eq, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit100.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.ac
  store ptr %i.em, ptr %i.ej, align 8, !tbaa !105
  %i.er = load i64, ptr %i.dv, align 8, !tbaa !35
  store i64 %i.er, ptr %i.el, align 8, !tbaa !35
  %.pre279 = load i64, ptr %i.dw, align 8, !tbaa !34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit100.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit100.thread: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  %i.es = phi i64 [ %.pre279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.eo, %bb.ad ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 %i.es, ptr %i.et, align 8, !tbaa !34
  store ptr %i.dv, ptr %3, align 8, !tbaa !105
  store i64 0, ptr %i.dw, align 8, !tbaa !34
  %i.eu = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store ptr %i.ev, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ae:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit94
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit100 unwind label %bb.af

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit100: ; preds = %bb.ae
  %.pre280 = load ptr, ptr %3, align 8, !tbaa !105 ; 2 uses
  %i.ew = icmp eq ptr %.pre280, %i.dv
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit100
  %i.ex = load i64, ptr %i.dv, align 8, !tbaa !35
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %.pre280, i64 noundef %i.ey) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit100, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit100.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 2400
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !145 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 2408
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !145 ; 2 uses
  %i.fd = icmp eq ptr %i.fa, %i.fc
  br i1 %i.fd, label %.loopexit251, label %.preheader

bb.af:                                            ; preds = %bb.ae
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.dv
  br i1 %i.fg, label %.body92, label %.body92.sink.split

.body92.sink.split:                               ; preds = %bb.af, %bb.ab
  %.sink380 = phi ptr [ %i.eh, %bb.ab ], [ %i.ff, %bb.af ]
  %.pn21.ph = phi { ptr, i32 } [ %i.eg, %bb.ab ], [ %i.fe, %bb.af ]
  %i.fh = load i64, ptr %i.dv, align 8, !tbaa !35
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %.sink380, i64 noundef %i.fi) #24
  br label %.body92

.body92:                                          ; preds = %.body92.sink.split, %bb.af, %bb.ab
  %.pn21 = phi { ptr, i32 } [ %i.eg, %bb.ab ], [ %i.fe, %bb.af ], [ %.pn21.ph, %.body92.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.loopexit.split-lp247.loopexit.split-lp

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  %.sroa.0234.0262 = phi ptr [ %i.gh, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 4 uses
  %i.fj = load ptr, ptr %i.i, align 8, !tbaa !109 ; 6 uses
  %i.fk = load ptr, ptr %12, align 8, !tbaa !111
  %.not.i107 = icmp eq ptr %i.fj, %i.fk
  br i1 %.not.i107, label %bb.ag, label %._crit_edge.i.i.i108

._crit_edge.i.i.i108:                             ; preds = %.preheader
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  store ptr %i.fl, ptr %i.fj, align 8, !tbaa !32
  store i16 28717, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 2, ptr %i.fm, align 8, !tbaa !34
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 18
  store i8 0, ptr %i.fn, align 2, !tbaa !35
  %i.fo = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32 ; 2 uses
  store ptr %i.fp, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit114

bb.ag:                                            ; preds = %.preheader
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA3_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.fj, ptr noundef nonnull align 1 dereferenceable(3) @.str.10)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit114_crit_edge unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit114_crit_edge: ; preds = %bb.ag
  %.pre281 = load ptr, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit114

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit114: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit114_crit_edge, %._crit_edge.i.i.i108
  %i.fq = phi ptr [ %.pre281, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit114_crit_edge ], [ %i.fp, %._crit_edge.i.i.i108 ] ; 8 uses
  %i.fr = load ptr, ptr %12, align 8, !tbaa !111
  %.not.i115 = icmp eq ptr %i.fq, %i.fr
  br i1 %.not.i115, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit114
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 3 uses
  store ptr %i.fs, ptr %i.fq, align 8, !tbaa !32
  %i.ft = load ptr, ptr %.sroa.0234.0262, align 8, !tbaa !105 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0234.0262, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %i.fv, ptr %i.d, align 8, !tbaa !137
  %i.fw = icmp ugt i64 %i.fv, 15
  br i1 %i.fw, label %.noexc.i.i118, label %._crit_edge.i.i.i116

.noexc.i.i118:                                    ; preds = %bb.ah
  %i.fx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc120 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc120:                                        ; preds = %.noexc.i.i118
  store ptr %i.fx, ptr %i.fq, align 8, !tbaa !105
  %i.fy = load i64, ptr %i.d, align 8, !tbaa !137
  store i64 %i.fy, ptr %i.fs, align 8, !tbaa !35
  br label %._crit_edge.i.i.i116

._crit_edge.i.i.i116:                             ; preds = %.noexc120, %bb.ah
  %i.fz = phi ptr [ %i.fx, %.noexc120 ], [ %i.fs, %bb.ah ] ; 2 uses
  switch i64 %i.fv, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i117
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i.i116
  %i.ga = load i8, ptr %i.ft, align 1, !tbaa !35
  store i8 %i.ga, ptr %i.fz, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i117

bb.aj:                                            ; preds = %._crit_edge.i.i.i116
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fz, ptr align 1 %i.ft, i64 %i.fv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i117: ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i.i116
  %i.gb = load i64, ptr %i.d, align 8, !tbaa !137 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !34
  %i.gd = load ptr, ptr %i.fq, align 8, !tbaa !105
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gb
  store i8 0, ptr %i.ge, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.gf = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  store ptr %i.gg, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

bb.ak:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit114
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0234.0262)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit: ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i117
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0234.0262, i64 32 ; 2 uses
  %.not237 = icmp eq ptr %i.gh, %i.fc
  br i1 %.not237, label %.loopexit251, label %.preheader

.loopexit251:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 2424 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !145
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 2432 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !145
  %i.gm = icmp eq ptr %i.gj, %i.gl
  br i1 %i.gm, label %.loopexit245, label %bb.al

bb.al:                                            ; preds = %.loopexit251
  %i.gn = invoke noundef zeroext i1 @_ZNK16cmCPackIFWCommon13IsVersionLessEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.12)
          to label %bb.am unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  br i1 %i.gn, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !145 ; 2 uses
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !145 ; 2 uses
  %.not238263 = icmp eq ptr %i.go, %i.gp
  br i1 %.not238263, label %.loopexit245, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit135
  %.sroa.0230.0264 = phi ptr [ %i.ho, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit135 ], [ %i.go, %bb.an ] ; 4 uses
  %i.gq = load ptr, ptr %i.i, align 8, !tbaa !109 ; 6 uses
  %i.gr = load ptr, ptr %12, align 8, !tbaa !111
  %.not.i122 = icmp eq ptr %i.gq, %i.gr
  br i1 %.not.i122, label %bb.ao, label %._crit_edge.i.i.i123

._crit_edge.i.i.i123:                             ; preds = %.lr.ph
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  store ptr %i.gs, ptr %i.gq, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gs, ptr noundef nonnull align 1 dereferenceable(13) @.str.13, i64 12, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i64 12, ptr %i.gt, align 8, !tbaa !34
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 28
  store i8 0, ptr %i.gu, align 4, !tbaa !35
  %i.gv = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32 ; 2 uses
  store ptr %i.gw, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit

bb.ao:                                            ; preds = %.lr.ph
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA13_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.gq, ptr noundef nonnull align 1 dereferenceable(13) @.str.13)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.ao
  %.pre282 = load ptr, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i123
  %i.gx = phi ptr [ %.pre282, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.gw, %._crit_edge.i.i.i123 ] ; 8 uses
  %i.gy = load ptr, ptr %12, align 8, !tbaa !111
  %.not.i128 = icmp eq ptr %i.gx, %i.gy
  br i1 %.not.i128, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 3 uses
  store ptr %i.gz, ptr %i.gx, align 8, !tbaa !32
  %i.ha = load ptr, ptr %.sroa.0230.0264, align 8, !tbaa !105 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0230.0264, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.hc, ptr %i.c, align 8, !tbaa !137
  %i.hd = icmp ugt i64 %i.hc, 15
  br i1 %i.hd, label %.noexc.i.i131, label %._crit_edge.i.i.i129

.noexc.i.i131:                                    ; preds = %bb.ap
  %i.he = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gx, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc133 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc133:                                        ; preds = %.noexc.i.i131
  store ptr %i.he, ptr %i.gx, align 8, !tbaa !105
  %i.hf = load i64, ptr %i.c, align 8, !tbaa !137
  store i64 %i.hf, ptr %i.gz, align 8, !tbaa !35
  br label %._crit_edge.i.i.i129

._crit_edge.i.i.i129:                             ; preds = %.noexc133, %bb.ap
  %i.hg = phi ptr [ %i.he, %.noexc133 ], [ %i.gz, %bb.ap ] ; 2 uses
  switch i64 %i.hc, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i130
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i129
  %i.hh = load i8, ptr %i.ha, align 1, !tbaa !35
  store i8 %i.hh, ptr %i.hg, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i130

bb.ar:                                            ; preds = %._crit_edge.i.i.i129
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr align 1 %i.ha, i64 %i.hc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i130: ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i129
  %i.hi = load i64, ptr %i.c, align 8, !tbaa !137 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !34
  %i.hk = load ptr, ptr %i.gx, align 8, !tbaa !105
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hi
  store i8 0, ptr %i.hl, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.hm = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  store ptr %i.hn, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit135

bb.as:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0230.0264)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit135 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit135: ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i130
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0230.0264, i64 32 ; 2 uses
  %.not238 = icmp eq ptr %i.ho, %i.gp
  br i1 %.not238, label %.loopexit245, label %.lr.ph

.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %.noexc.i.i131, %bb.ao, %bb.ag, %.noexc.i.i118, %bb.ak, %.noexc34, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit62, %bb.al, %bb.a, %.noexc.i.i37, %bb.e, %.noexc.i.i44, %bb.i, %bb.k, %.noexc.i.i58, %bb.o, %bb.r, %bb.z, %bb.bk
  %lpad.loopexit.split-lp399 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp247.loopexit.split-lp

bb.at:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.14, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.au
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.15, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.16, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.17, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140
  %i.ht = load ptr, ptr %4, align 8, !tbaa !19
  %i.hu = getelementptr i8, ptr %i.ht, i64 -24
  %i.hv = load i64, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds i8, ptr %4, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 240
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !126 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i, label %bb.av, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc219 unwind label %bb.bd

.noexc219:                                        ; preds = %bb.av
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 56
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !132
  %.not.i1.i.i = icmp eq i8 %i.ia, 0
  br i1 %.not.i1.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 67
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !35
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hy)
          to label %.noexc220 unwind label %bb.bd

.noexc220:                                        ; preds = %bb.ax
  %i.id = load ptr, ptr %i.hy, align 8, !tbaa !19
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = invoke noundef signext i8 %i.if(ptr noundef nonnull align 8 dereferenceable(570) %i.hy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.bd, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc220, %bb.aw
  %.0.i.i.i = phi i8 [ %i.ic, %bb.aw ], [ %i.ig, %.noexc220 ]
  %i.ih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i)
          to label %.noexc222 unwind label %bb.bd

.noexc222:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ih)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.bd ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc222
  %i.ij = load ptr, ptr %i.j, align 8, !tbaa !104 ; 2 uses
  %.not = icmp eq ptr %i.ij, null
  br i1 %.not, label %bb.bf, label %bb.ay

bb.ay:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 336
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.im, ptr %5, align 8, !tbaa !32, !alias.scope !306
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.in, align 8, !tbaa !34, !alias.scope !306
  store i8 0, ptr %i.im, align 8, !tbaa !35, !alias.scope !306
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !135, !noalias !306 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ip, null
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !306 ; 2 uses
  %i.is = icmp ugt ptr %i.ip, %i.ir
  %.08.i.i.i = select i1 %i.is, ptr %i.ip, ptr %i.ir ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !136, !noalias !306 ; 2 uses
  %i.iv = ptrtoint ptr %.08.i.i.i to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.iu, i64 noundef %i.ix)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ba ; 0 uses

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ja = load ptr, ptr %5, align 8, !tbaa !105, !alias.scope !306 ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.im
  br i1 %i.jb, label %.body146, label %.body146.sink.split

bb.bb:                                            ; preds = %bb.ay
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.jc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ba

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.bb, %bb.az
  %i.jd = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.je = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jd) #27
  invoke void @_ZN10cmCPackLog3LogEiPKciS1_m(ptr noundef nonnull align 8 dereferenceable(232) %i.il, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 99, ptr noundef nonnull %i.jd, i64 noundef %i.je)
          to label %_ZN10cmCPackLog3LogEiPKciS1_.exit unwind label %bb.be

_ZN10cmCPackLog3LogEiPKciS1_.exit:                ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.jf = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.im
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZN10cmCPackLog3LogEiPKciS1_.exit
  %i.jh = load i64, ptr %i.im, align 8, !tbaa !35
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZN10cmCPackLog3LogEiPKciS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bf

bb.bc:                                            ; preds = %bb.at
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bd:                                            ; preds = %.noexc222, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc220, %bb.ax, %bb.av, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.au
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.be:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.im
  br i1 %i.jn, label %.body146, label %.body146.sink.split

.body146.sink.split:                              ; preds = %bb.be, %bb.ba
  %.sink383 = phi ptr [ %i.ja, %bb.ba ], [ %i.jm, %bb.be ]
  %.pn23.ph = phi { ptr, i32 } [ %i.iz, %bb.ba ], [ %i.jl, %bb.be ]
  %i.jo = load i64, ptr %i.im, align 8, !tbaa !35
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %.sink383, i64 noundef %i.jp) #24
  br label %.body146

.body146:                                         ; preds = %.body146.sink.split, %bb.be, %bb.ba
  %.pn23 = phi { ptr, i32 } [ %i.iz, %bb.ba ], [ %i.jl, %bb.be ], [ %.pn23.ph, %.body146.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bg

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSolsEPFRSoS_E.exit
  %i.jq = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.jq, ptr %4, align 8, !tbaa !19
  %i.jr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.js = getelementptr i8, ptr %i.jq, i64 -24
  %i.jt = load i64, ptr %i.js, align 8
  %i.ju = getelementptr inbounds i8, ptr %4, i64 %i.jt
  store ptr %i.jr, ptr %i.ju, align 8, !tbaa !19
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jv, align 8, !tbaa !19
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !105 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bf
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !35
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jv, align 8, !tbaa !19
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kc) #23
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.kd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit245

bb.bg:                                            ; preds = %.body146, %bb.bd
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body146 ], [ %i.jk, %bb.bd ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bc
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.bg ], [ %i.jj, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit.split-lp247.loopexit.split-lp

.loopexit245:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit135, %bb.an, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %.loopexit251
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 2392
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !102, !range !146, !noundef !147
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.by, label %bb.bi

bb.bi:                                            ; preds = %.loopexit245
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 2016
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !29
  %i.kj = icmp eq i64 %i.ki, 0
  br i1 %i.kj, label %bb.by, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kk = load ptr, ptr %i.i, align 8, !tbaa !109 ; 6 uses
  %i.kl = load ptr, ptr %12, align 8, !tbaa !111
  %.not.i155 = icmp eq ptr %i.kk, %i.kl
  br i1 %.not.i155, label %bb.bk, label %._crit_edge.i.i.i156

._crit_edge.i.i.i156:                             ; preds = %bb.bj
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 2 uses
  store ptr %i.km, ptr %i.kk, align 8, !tbaa !32
  store i16 26925, ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 2, ptr %i.kn, align 8, !tbaa !34
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 18
  store i8 0, ptr %i.ko, align 2, !tbaa !35
  %i.kp = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  store ptr %i.kq, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit162

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA3_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.kk, ptr noundef nonnull align 1 dereferenceable(3) @.str.18)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit162 unwind label %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit162: ; preds = %bb.bk, %._crit_edge.i.i.i156
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !149 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 168
  %i.kw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.kw, ptr %6, align 8, !tbaa !32
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !105 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 176
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.kz, ptr %i.b, align 8, !tbaa !137
  %i.la = icmp ugt i64 %i.kz, 15
  br i1 %i.la, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit162
  %i.lb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc163 unwind label %bb.br ; 2 uses

.noexc163:                                        ; preds = %.noexc.i
  store ptr %i.lb, ptr %6, align 8, !tbaa !105
  %i.lc = load i64, ptr %i.b, align 8, !tbaa !137
  store i64 %i.lc, ptr %i.kw, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc163, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit162
  %i.ld = phi ptr [ %i.lb, %.noexc163 ], [ %i.kw, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit162 ] ; 2 uses
  switch i64 %i.kz, label %bb.bm [
    i64 1, label %bb.bl
    i64 0, label %bb.bn
  ]

bb.bl:                                            ; preds = %._crit_edge.i.i
  %i.le = load i8, ptr %i.kx, align 1, !tbaa !35
  store i8 %i.le, ptr %i.ld, align 1, !tbaa !35
  br label %bb.bn

bb.bm:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ld, ptr align 1 %i.kx, i64 %i.kz, i1 false)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %._crit_edge.i.i
  %i.lf = load i64, ptr %i.b, align 8, !tbaa !137 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.lf, ptr %i.lg, align 8, !tbaa !34
  %i.lh = load ptr, ptr %6, align 8, !tbaa !105
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  store i8 0, ptr %i.li, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.lj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.ks) #27 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 1984 ; 2 uses
  %.not239265 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not239265, label %._crit_edge, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.bn
  %i.ll = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %.sroa.0224.0266 = phi ptr [ %i.lj, %.lr.ph267 ], [ %i.mn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0224.0266, i64 32
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !149 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !105, !noalias !307
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 176
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !34, !noalias !307 ; 3 uses
  store ptr %i.ll, ptr %7, align 8, !tbaa !32, !alias.scope !308
  store i64 0, ptr %i.lm, align 8, !tbaa !34, !alias.scope !308
  store i8 0, ptr %i.ll, align 8, !tbaa !35, !alias.scope !308
  %i.lt = add i64 %i.ls, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.lt)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  %i.lu = load i64, ptr %i.lm, align 8, !tbaa !34, !alias.scope !308
  %i.lv = icmp eq i64 %i.lu, 4611686018427387903
  br i1 %i.lv, label %.invoke.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i167: ; preds = %bb.bp
  %i.lw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i168 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i168: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i167
  %i.lx = load i64, ptr %i.lm, align 8, !tbaa !34, !alias.scope !308
  %i.ly = sub i64 4611686018427387903, %i.lx
  %i.lz = icmp ult i64 %i.ly, %i.ls
  br i1 %i.lz, label %.invoke.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i169

.invoke.i.i170:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i168, %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #26
          to label %.cont.i.i171 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i171:                                     ; preds = %.invoke.i.i170
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i168
  %i.ma = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.lq, i64 noundef %i.ls)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i167, %bb.bo, %.invoke.i.i170
  %lpad.loopexit.split-lp392 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mb = load ptr, ptr %7, align 8, !tbaa !105, !alias.scope !308 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.ll
  br i1 %i.mc, label %.body172, label %.body172.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i169
  %i.md = load i64, ptr %i.lm, align 8, !tbaa !34 ; 2 uses
  %i.me = load i64, ptr %i.lg, align 8, !tbaa !34
  %i.mf = sub i64 4611686018427387903, %i.me
  %i.mg = icmp ult i64 %i.mf, %i.md
  br i1 %i.mg, label %bb.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.bq:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #26
          to label %.noexc174 unwind label %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp

.noexc174:                                        ; preds = %bb.bq
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.mh = load ptr, ptr %7, align 8, !tbaa !105
  %i.mi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.mh, i64 noundef %i.md)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.mj = load ptr, ptr %7, align 8, !tbaa !105   ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.ll
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ml = load i64, ptr %i.ll, align 8, !tbaa !35
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.mn = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0224.0266) #27 ; 2 uses
  %.not239 = icmp eq ptr %i.mn, %i.lk
  br i1 %.not239, label %._crit_edge, label %bb.bo, !llvm.loop !295

bb.br:                                            ; preds = %.noexc.i
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.bq
  %lpad.loopexit.split-lp394 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mp = load ptr, ptr %7, align 8, !tbaa !105   ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.ll
  br i1 %i.mq, label %.body172, label %.body172.sink.split

.body172.sink.split:                              ; preds = %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink386 = phi ptr [ %i.mb, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.mp, %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp ]
  %.pn27.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp392, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp394, %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp ]
  %i.mr = load i64, ptr %i.ll, align 8, !tbaa !35
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %.sink386, i64 noundef %i.ms) #24
  br label %.body172

.body172:                                         ; preds = %.body172.sink.split, %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn27 = phi { ptr, i32 } [ %lpad.loopexit.split-lp392, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp394, %.loopexit.split-lp241.loopexit.split-lp.loopexit.split-lp ], [ %.pn27.ph, %.body172.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bx

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %bb.bn
  %i.mt = load ptr, ptr %i.i, align 8, !tbaa !109 ; 8 uses
  %i.mu = load ptr, ptr %12, align 8, !tbaa !111
  %.not.i182 = icmp eq ptr %i.mt, %i.mu
  br i1 %.not.i182, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 16 ; 3 uses
  store ptr %i.mv, ptr %i.mt, align 8, !tbaa !32
  %i.mw = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.mx = load i64, ptr %i.lg, align 8, !tbaa !34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.mx, ptr %i.a, align 8, !tbaa !137
  %i.my = icmp ugt i64 %i.mx, 15
  br i1 %i.my, label %.noexc.i.i185, label %._crit_edge.i.i.i183

.noexc.i.i185:                                    ; preds = %bb.bs
  %i.mz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.mt, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc187 unwind label %bb.bw ; 2 uses

.noexc187:                                        ; preds = %.noexc.i.i185
  store ptr %i.mz, ptr %i.mt, align 8, !tbaa !105
  %i.na = load i64, ptr %i.a, align 8, !tbaa !137
  store i64 %i.na, ptr %i.mv, align 8, !tbaa !35
  br label %._crit_edge.i.i.i183

._crit_edge.i.i.i183:                             ; preds = %.noexc187, %bb.bs
  %i.nb = phi ptr [ %i.mz, %.noexc187 ], [ %i.mv, %bb.bs ] ; 2 uses
  switch i64 %i.mx, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i184
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i.i183
  %i.nc = load i8, ptr %i.mw, align 1, !tbaa !35
  store i8 %i.nc, ptr %i.nb, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i184

bb.bu:                                            ; preds = %._crit_edge.i.i.i183
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nb, ptr align 1 %i.mw, i64 %i.mx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i184: ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i.i183
  %i.nd = load i64, ptr %i.a, align 8, !tbaa !137 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store i64 %i.nd, ptr %i.ne, align 8, !tbaa !34
  %i.nf = load ptr, ptr %i.mt, align 8, !tbaa !105
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.nd
  store i8 0, ptr %i.ng, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.nh = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 32
  store ptr %i.ni, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit189

bb.bv:                                            ; preds = %._crit_edge
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.mt, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit189 unwind label %bb.bw

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit189: ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i184
  %i.nj = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.kw
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit189
  %i.nl = load i64, ptr %i.kw, align 8, !tbaa !35
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.by

bb.bw:                                            ; preds = %bb.bv, %.noexc.i.i185
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.body172
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %.body172 ], [ %i.nn, %bb.bw ] ; 2 uses
  %i.no = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.kw
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %bb.bx
  %i.nq = load i64, ptr %i.kw, align 8, !tbaa !35
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.nr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193, %bb.br
  %.pn27.pn.pn = phi { ptr, i32 } [ %i.mo, %bb.br ], [ %.pn27.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193 ], [ %.pn27.pn, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.loopexit.split-lp247.loopexit.split-lp

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %bb.bi, %.loopexit245
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.ns = load ptr, ptr %i.dr, align 8, !tbaa !105, !noalias !309
  %i.nt = load i64, ptr %i.dt, align 8, !tbaa !34, !noalias !309 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.nu, ptr %8, align 8, !tbaa !32, !alias.scope !310
  %i.nv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 0, ptr %i.nv, align 8, !tbaa !34, !alias.scope !310
  store i8 0, ptr %i.nu, align 8, !tbaa !35, !alias.scope !310
  %i.nw = add i64 %i.nt, 11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.nw)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.nx = load i64, ptr %i.nv, align 8, !tbaa !34, !alias.scope !310
  %i.ny = sub i64 4611686018427387903, %i.nx
  %i.nz = icmp ult i64 %i.ny, %i.nt
  br i1 %i.nz, label %.invoke.i.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i199: ; preds = %bb.bz
  %i.oa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.ns, i64 noundef %i.nt)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i200 unwind label %bb.ca ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i200: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i199
  %i.ob = load i64, ptr %i.nv, align 8, !tbaa !34, !alias.scope !310
  %i.oc = add i64 %i.ob, -4611686018427387893
  %i.od = icmp ult i64 %i.oc, 11
  br i1 %i.od, label %.invoke.i.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i201

.invoke.i.i202:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i200, %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #26
          to label %.cont.i.i203 unwind label %bb.ca

.cont.i.i203:                                     ; preds = %.invoke.i.i202
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i200
  %i.oe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.20, i64 noundef 11)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit206 unwind label %bb.ca ; 0 uses

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i201, %.invoke.i.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i199, %bb.by
  %i.of = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.og = load ptr, ptr %8, align 8, !tbaa !105, !alias.scope !310 ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.nu
  br i1 %i.oh, label %.body204, label %.body204.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit206: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i201
  %i.oi = load ptr, ptr %i.i, align 8, !tbaa !109 ; 6 uses
  %i.oj = load ptr, ptr %12, align 8, !tbaa !111
  %.not.i207 = icmp eq ptr %i.oi, %i.oj
  br i1 %.not.i207, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit206
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 16 ; 3 uses
  store ptr %i.ok, ptr %i.oi, align 8, !tbaa !32
  %i.ol = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.nu
  br i1 %i.om, label %bb.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

bb.cc:                                            ; preds = %bb.cb
  %i.on = load i64, ptr %i.nv, align 8, !tbaa !34 ; 3 uses
  %i.oo = icmp ult i64 %i.on, 16
  call void @llvm.assume(i1 %i.oo)
  %i.op = add nuw nsw i64 %i.on, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ok, ptr noundef nonnull align 8 dereferenceable(1) %i.nu, i64 %i.op, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit212.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.cb
  store ptr %i.ol, ptr %i.oi, align 8, !tbaa !105
  %i.oq = load i64, ptr %i.nu, align 8, !tbaa !35
  store i64 %i.oq, ptr %i.ok, align 8, !tbaa !35
  %.pre283 = load i64, ptr %i.nv, align 8, !tbaa !34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit212.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit212.thread: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  %i.or = phi i64 [ %.pre283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208 ], [ %i.on, %bb.cc ]
  %i.os = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i64 %i.or, ptr %i.os, align 8, !tbaa !34
  store i64 0, ptr %i.nv, align 8, !tbaa !34
  %i.ot = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  store ptr %i.ou, ptr %i.i, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

bb.cd:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit206
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.oi, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit212 unwind label %bb.ce

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit212: ; preds = %bb.cd
  %.pre284 = load ptr, ptr %8, align 8, !tbaa !105 ; 2 uses
  %i.ov = icmp eq ptr %.pre284, %i.nu
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit212
  %i.ow = load i64, ptr %i.nu, align 8, !tbaa !35
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %.pre284, i64 noundef %i.ox) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit212, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit212.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void

bb.ce:                                            ; preds = %bb.cd
  %i.oy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oz = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.nu
  br i1 %i.pa, label %.body204, label %.body204.sink.split

.body204.sink.split:                              ; preds = %bb.ce, %bb.ca
  %.sink389 = phi ptr [ %i.og, %bb.ca ], [ %i.oz, %bb.ce ]
  %.pn31.ph = phi { ptr, i32 } [ %i.of, %bb.ca ], [ %i.oy, %bb.ce ]
  %i.pb = load i64, ptr %i.nu, align 8, !tbaa !35
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %.sink389, i64 noundef %i.pc) #24
  br label %.body204

.body204:                                         ; preds = %.body204.sink.split, %bb.ce, %bb.ca
  %.pn31 = phi { ptr, i32 } [ %i.of, %bb.ca ], [ %i.oy, %bb.ce ], [ %.pn31.ph, %.body204.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.loopexit.split-lp247.loopexit.split-lp

.loopexit.split-lp247.loopexit.split-lp:          ; preds = %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %bb.bh, %.body92, %.body
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %.body204 ], [ %.pn27.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 ], [ %.pn, %.body ], [ %.pn23.pn.pn, %bb.bh ], [ %.pn21, %.body92 ], [ %lpad.loopexit.split-lp399, %.loopexit.split-lp247.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn31.pn
}

declare noundef zeroext i1 @_ZNK16cmCPackIFWCommon13IsVersionLessEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

declare void @_ZN13cmSystemTools18PrintSingleCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN13cmSystemTools16RunSingleCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPS6_SB_PiPKcNS_12OutputOptionENSt6chrono8durationIdSt5ratioILl1ELl1EEEEN15cmProcessOutput8EncodingES8_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, double, i32 noundef, ptr noundef align 8) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @_ZN21cmGeneratedFileStreamC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb16codecvt_Encoding(ptr noundef nonnull align 8 dereferenceable(348), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN21cmGeneratedFileStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(348)) unnamed_addr #1

declare noundef zeroext i1 @_ZN20cmCPackIFWRepository15PatchUpdatesXmlEv(ptr noundef nonnull align 8 dereferenceable(328)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19cmCPackIFWGenerator25BuildBinaryCreatorCommandB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(2448) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 23 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 13 uses
  store i64 0, ptr %i.k, align 8, !tbaa !34
  store i8 0, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 59 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 21 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit unwind label %.loopexit.split-lp463.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 4 uses
  %i.p = invoke noundef zeroext i1 @_ZNK16cmCPackIFWCommon13IsVersionLessEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.4)
          to label %bb.b unwind label %.loopexit.split-lp463.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit
  br i1 %i.p, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit79, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2328 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2336 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit65, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !109  ; 8 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !111
  %.not.i52 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i52, label %bb.e, label %.noexc.i.i54

.noexc.i.i54:                                     ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i64 16, ptr %i.i, align 8, !tbaa !137
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc56 unwind label %.loopexit.split-lp463.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc56:                                         ; preds = %.noexc.i.i54
  store ptr %i.x, ptr %i.u, align 8, !tbaa !105
  %i.y = load i64, ptr %i.i, align 8, !tbaa !137  ; 3 uses
  store i64 %i.y, ptr %i.w, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(17) @.str.5, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !105
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA17_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.u, ptr noundef nonnull align 1 dereferenceable(17) @.str.5)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge unwind label %.loopexit.split-lp463.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge, %.noexc56
  %i.ae = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.ad, %.noexc56 ] ; 8 uses
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !111
  %.not.i58 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i58, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !32
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !105 ; 2 uses
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !34  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !137
end_hunk_0
