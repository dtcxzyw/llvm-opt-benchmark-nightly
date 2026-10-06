Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/partition_generator?download=true
inline.NumInlined: 1265
inline.NumDeleted: 560
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal6theory18PartitionGenerator23emitRemainingPartitionsEb:bb.a
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit76: ; preds = %bb.cw, %bb.cx, %bb.cy
  %i.ki = load ptr, ptr %11, align 8, !tbaa !283  ; 3 uses
  %i.kj = load i64, ptr %i.ki, align 8            ; 3 uses
  %i.kk = and i64 %i.kj, 1152920405095219200
  %.not.i.i77 = icmp eq i64 %i.kk, 1152920405095219200
  br i1 %.not.i.i77, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79, label %bb.da, !prof !284

bb.da:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit76
  %i.kl = add i64 %i.kj, 1152920405095219200
  %i.km = and i64 %i.kl, 1152920405095219200      ; 2 uses
  %i.kn = and i64 %i.kj, -1152920405095219201
  %i.ko = or disjoint i64 %i.km, %i.kn
  store i64 %i.ko, ptr %i.ki, align 8
  %i.kp = icmp eq i64 %i.km, 0
  br i1 %i.kp, label %bb.db, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79, !prof !284

bb.db:                                            ; preds = %bb.da
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ki)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79 unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.kq = landingpad { ptr, i32 }
          catch ptr null
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0
  call void @__clang_call_terminate(ptr %i.kr) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit76, %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ks = load ptr, ptr %9, align 8, !tbaa !279   ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i80 = icmp eq ptr %i.ks, %i.ku
  br i1 %.not4.i.i.i80, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i88, label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i84
  %.05.i.i.i82 = phi ptr [ %i.lf, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i84 ], [ %i.ks, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79 ] ; 2 uses
  %i.kv = load ptr, ptr %.05.i.i.i82, align 8, !tbaa !283 ; 3 uses
  %i.kw = load i64, ptr %i.kv, align 8            ; 3 uses
  %i.kx = and i64 %i.kw, 1152920405095219200
  %.not.i.i.i.i.i.i83 = icmp eq i64 %i.kx, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i83, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i84, label %bb.dd, !prof !284

bb.dd:                                            ; preds = %.lr.ph.i.i.i81
  %i.ky = add i64 %i.kw, 1152920405095219200
  %i.kz = and i64 %i.ky, 1152920405095219200      ; 2 uses
  %i.la = and i64 %i.kw, -1152920405095219201
  %i.lb = or disjoint i64 %i.kz, %i.la
  store i64 %i.lb, ptr %i.kv, align 8
  %i.lc = icmp eq i64 %i.kz, 0
  br i1 %i.lc, label %bb.de, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i84, !prof !284

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kv)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i84 unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i84: ; preds = %bb.de, %bb.dd, %.lr.ph.i.i.i81
  %i.lf = getelementptr inbounds nuw i8, ptr %.05.i.i.i82, i64 8 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.lf, %i.ku
  br i1 %.not.i.i.i85, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i86, label %.lr.ph.i.i.i81, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i86: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i84
  %.pr.i87 = load ptr, ptr %9, align 8, !tbaa !279
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i88

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i88: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i86, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79
  %i.lg = phi ptr [ %.pr.i87, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i86 ], [ %i.ks, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit79 ] ; 3 uses
  %.not.i.i1.i89 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i1.i89, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit90, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i88
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !286
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = ptrtoint ptr %i.lg to i64
  %i.ll = sub i64 %i.lj, %i.lk
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.ll) #22
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit90

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit90: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i88, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.dl

bb.dh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit73
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #21
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.cr, %bb.co
  %.pn23 = phi { ptr, i32 } [ %i.lm, %bb.dh ], [ %i.jj, %bb.co ], [ %.pn, %bb.cr ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #21
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.cn
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %bb.di ], [ %i.ji, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.body
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %.body ], [ %.pn23.pn, %bb.dj ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.dr

bb.dl:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit90, %._crit_edge
  %i.ln = load ptr, ptr %4, align 16, !tbaa !279  ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i91 = icmp eq ptr %i.ln, %i.lp
  br i1 %.not4.i.i.i91, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i99, label %.lr.ph.i.i.i92

.lr.ph.i.i.i92:                                   ; preds = %bb.dl, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i95
  %.05.i.i.i93 = phi ptr [ %i.ma, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i95 ], [ %i.ln, %bb.dl ] ; 2 uses
  %i.lq = load ptr, ptr %.05.i.i.i93, align 8, !tbaa !283 ; 3 uses
  %i.lr = load i64, ptr %i.lq, align 8            ; 3 uses
  %i.ls = and i64 %i.lr, 1152920405095219200
  %.not.i.i.i.i.i.i94 = icmp eq i64 %i.ls, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i94, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i95, label %bb.dm, !prof !284

bb.dm:                                            ; preds = %.lr.ph.i.i.i92
  %i.lt = add i64 %i.lr, 1152920405095219200
  %i.lu = and i64 %i.lt, 1152920405095219200      ; 2 uses
  %i.lv = and i64 %i.lr, -1152920405095219201
  %i.lw = or disjoint i64 %i.lu, %i.lv
  store i64 %i.lw, ptr %i.lq, align 8
  %i.lx = icmp eq i64 %i.lu, 0
  br i1 %i.lx, label %bb.dn, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i95, !prof !284

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lq)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i95 unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ly = landingpad { ptr, i32 }
          catch ptr null
  %i.lz = extractvalue { ptr, i32 } %i.ly, 0
  call void @__clang_call_terminate(ptr %i.lz) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i95: ; preds = %bb.dn, %bb.dm, %.lr.ph.i.i.i92
  %i.ma = getelementptr inbounds nuw i8, ptr %.05.i.i.i93, i64 8 ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.ma, %i.lp
  br i1 %.not.i.i.i96, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i97, label %.lr.ph.i.i.i92, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i97: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i95
  %.pr.i98 = load ptr, ptr %4, align 16, !tbaa !279
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i99

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i99: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i97, %bb.dl
  %i.mb = phi ptr [ %.pr.i98, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i97 ], [ %i.ln, %bb.dl ] ; 3 uses
  %.not.i.i1.i100 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i1.i100, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit101, label %bb.dp

bb.dp:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i99
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.md = load ptr, ptr %i.mc, align 16, !tbaa !286
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = ptrtoint ptr %i.mb to i64
  %i.mg = sub i64 %i.me, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %i.mb, i64 noundef %i.mg) #22
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit101

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit101: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i99, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.dq

bb.dq:                                            ; preds = %bb.a, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit101
  ret void

bb.dr:                                            ; preds = %bb.dk, %bb.bd, %bb.m
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.bd ], [ %.pn26.pn, %bb.dk ], [ %i.ba, %bb.m ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn31.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory18PartitionGenerator18makeCubePartitionsENS2_15LiteralListTypeEbb(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(456) %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.299", align 8 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector", align 8       ; 13 uses
  %9 = alloca %"class.std::mersenne_twister_engine", align 8 ; 8 uses
  %10 = alloca %"class.std::random_device", align 8 ; 7 uses
  %11 = alloca %"class.std::vector.447", align 8  ; 11 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 13 uses
  %15 = alloca %"class.std::vector", align 8      ; 11 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZN4cvc58internal6theory18PartitionGenerator15collectLiteralsENS2_15LiteralListTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %8, ptr noundef nonnull align 8 dereferenceable(456) %1, i32 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.c = load i64, ptr %i.b, align 8, !tbaa !267
  %i.d = uitofp i64 %i.c to double
  %i.e = call noundef double @log2(double noundef %i.d) #21
  %i.f = fptoui double %i.e to i64                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !280  ; 3 uses
  %i.i = load ptr, ptr %8, align 8, !tbaa !279    ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %.not = icmp ult i64 %i.m, %i.f
  br i1 %.not, label %bb.cp, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.n, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.p, align 1, !tbaa !20
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %10, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %7, align 8, !tbaa !19     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.n, align 8, !tbaa !20
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %7, align 8, !tbaa !19     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.n, align 8, !tbaa !20
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.z = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %10)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.l

_ZNSt13random_deviceclEv.exit:                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  store i64 %i.aa, ptr %9, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZNSt13random_deviceclEv.exit
  %store_forwarded = phi i64 [ %i.aa, %_ZNSt13random_deviceclEv.exit ], [ %i.an, %bb.g ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit ], [ %i.ao, %bb.g ] ; 4 uses
  %i.ab = getelementptr [8 x i8], ptr %9, i64 %.011.i.i
  %i.ac = lshr i64 %store_forwarded, 30
  %i.ad = xor i64 %i.ac, %store_forwarded
  %i.ae = mul nuw nsw i64 %i.ad, 1812433253
  %i.af = add nuw i64 %i.ae, %.011.i.i            ; 2 uses
  %i.ag = and i64 %i.af, 4294967295               ; 2 uses
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !17
  %i.ah = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, 624
  br i1 %exitcond.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr [8 x i8], ptr %9, i64 %i.ah
  %i.aj = lshr i64 %i.ag, 30
  %i.ak = xor i64 %i.aj, %i.af
  %i.al = mul i64 %i.ak, 1812433253
  %i.am = add i64 %i.al, %i.ah
  %i.an = and i64 %i.am, 4294967295               ; 2 uses
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !17
  %i.ao = add nuw nsw i64 %.011.i.i, 2
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 4992
  store i64 624, ptr %i.ap, align 8, !tbaa !313
  invoke void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SD_OT0_(ptr %i.i, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(5000) %9)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %10)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #24
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !280 ; 2 uses
  %.pre168 = load ptr, ptr %8, align 8, !tbaa !279 ; 2 uses
  %.pre171 = ptrtoint ptr %.pre to i64
  %.pre172 = ptrtoint ptr %.pre168 to i64
  %.pre174 = sub i64 %.pre171, %.pre172
  %.pre176 = ashr exact i64 %.pre174, 3
  br label %bb.n

bb.k:                                             ; preds = %bb.cs, %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %10)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #24
  unreachable

.body:                                            ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %.pn = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.cx

bb.n:                                             ; preds = %_ZNSt13random_deviceD2Ev.exit, %bb.b
  %.pre-phi177 = phi i64 [ %.pre176, %_ZNSt13random_deviceD2Ev.exit ], [ %i.m, %bb.b ] ; 3 uses
  %i.aw = phi ptr [ %.pre168, %_ZNSt13random_deviceD2Ev.exit ], [ %i.i, %bb.b ]
  %i.ax = phi ptr [ %.pre, %_ZNSt13random_deviceD2Ev.exit ], [ %i.h, %bb.b ] ; 2 uses
  %i.ay = icmp ult i64 %.pre-phi177, %i.f
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = sub nuw i64 %i.f, %.pre-phi177
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.az)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit unwind label %bb.k

bb.p:                                             ; preds = %bb.n
  %i.ba = icmp ugt i64 %.pre-phi177, %i.f
  br i1 %i.ba, label %bb.q, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.f ; 3 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.bb
  br i1 %.not.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bm, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i ], [ %i.bb, %bb.q ] ; 2 uses
  %i.bc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !283 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.be = and i64 %i.bd, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.be, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, label %bb.r, !prof !284

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bf = add i64 %i.bd, 1152920405095219200
  %i.bg = and i64 %i.bf, 1152920405095219200      ; 2 uses
  %i.bh = and i64 %i.bd, -1152920405095219201
  %i.bi = or disjoint i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %i.bc, align 8
  %i.bj = icmp eq i64 %i.bg, 0
  br i1 %i.bj, label %bb.s, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, !prof !284

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, %i.ax
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  store ptr %i.bb, ptr %i.g, align 8, !tbaa !280
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.q, %bb.p, %bb.o
  %i.bn = uitofp i64 %i.f to double
  %exp2 = call double @exp2(double %i.bn)
  %i.bo = fptoui double %exp2 to i64              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.bp = icmp ugt i64 %i.bo, 384307168202282325
  br i1 %i.bp, label %bb.u, label %_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.u:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
          to label %.noexc64 unwind label %bb.at

.noexc64:                                         ; preds = %bb.u
  unreachable

_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE6resizeEm.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i63 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i63, label %bb.v, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.bq = mul nuw nsw i64 %i.bo, 24               ; 3 uses
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #23
          to label %.noexc65 unwind label %bb.at  ; 5 uses

.noexc65:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.br, ptr %11, align 8, !tbaa !321
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.bo
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.br, i8 0, i64 %i.bq, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.br, i64 %i.bq
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i, %.noexc65
  %i.bt = phi ptr [ %i.br, %.noexc65 ], [ null, %_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ]
  %.sink.i = phi ptr [ %i.bs, %.noexc65 ], [ null, %_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc65 ], [ null, %_ZNSt6vectorIS_IN4cvc58internal12NodeTemplateILb1EEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %.sink.i, ptr %i.bv, align 8, !tbaa !322
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bu, align 8, !tbaa !323
  %i.bw = load ptr, ptr %8, align 8, !tbaa !305   ; 2 uses
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !305 ; 2 uses
  %.not115125 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not115125, label %._crit_edge131, label %.lr.ph130

._crit_edge131.loopexit:                          ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit72
  %.pre169 = load ptr, ptr %11, align 8, !tbaa !422
  %.pre170 = load ptr, ptr %i.bu, align 8, !tbaa !422
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %._crit_edge131.loopexit, %bb.v
  %i.by = phi ptr [ %.pre170, %._crit_edge131.loopexit ], [ %.0.lcssa.i.i.i.i.i, %bb.v ] ; 3 uses
  %i.bz = phi ptr [ %.pre169, %._crit_edge131.loopexit ], [ %i.bt, %bb.v ] ; 3 uses
  %.not116132 = icmp eq ptr %i.bz, %i.by
  br i1 %.not116132, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %._crit_edge131
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  br i1 %3, label %.lr.ph135.split.us, label %.lr.ph135.split

.lr.ph135.split.us:                               ; preds = %.lr.ph135, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93.us
  %.sroa.0107.0133.us = phi ptr [ %i.ev, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93.us ], [ %i.bz, %.lr.ph135 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.cc = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.w unwind label %.split.us

bb.w:                                             ; preds = %.lr.ph135.split.us
  invoke void @_ZN4cvc58internal11NodeManager5mkAndILb1EEENS0_12NodeTemplateILb1EEERKSt6vectorINS3_IXT_EEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %14, ptr noundef nonnull align 8 dereferenceable(3592) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107.0133.us)
          to label %bb.x unwind label %.split.us

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZN4cvc58internal6theory18PartitionGenerator15collectLiteralsENS2_15LiteralListTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %15, ptr noundef nonnull align 8 dereferenceable(456) %1, i32 noundef 3)
          to label %bb.y unwind label %.split138.us

bb.y:                                             ; preds = %bb.x
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !280 ; 3 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !286
  %.not.i77.us = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i77.us, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = load ptr, ptr %14, align 8, !tbaa !283  ; 5 uses
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !283
  %i.cg = load i64, ptr %i.cf, align 8            ; 3 uses
  %i.ch = lshr i64 %i.cg, 40
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 1048575                  ; 3 uses
  %i.ck = icmp samesign ult i32 %i.cj, 1048574
  br i1 %i.ck, label %bb.ac, label %bb.aa, !prof !292

bb.aa:                                            ; preds = %bb.z
  %i.cl = icmp eq i32 %i.cj, 1048574
  br i1 %i.cl, label %bb.ab, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i78.us, !prof !284

bb.ab:                                            ; preds = %bb.aa
  %i.cm = or i64 %i.cg, 1152920405095219200
  store i64 %i.cm, ptr %i.cf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i78.us unwind label %.split141.us

bb.ac:                                            ; preds = %bb.z
  %i.cn = add nuw nsw i32 %i.cj, 1
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 40
  %i.cq = and i64 %i.cg, -1152920405095219201
  %i.cr = or i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.cf, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i78.us

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i78.us: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.cs = load ptr, ptr %i.ca, align 8, !tbaa !280
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.ct, ptr %i.ca, align 8, !tbaa !280
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit81.us

bb.ad:                                            ; preds = %bb.y
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit81.us unwind label %.split141.us

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit81.us: ; preds = %bb.ad, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i78.us
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.cu = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.ae unwind label %.split144.us

bb.ae:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit81.us
  invoke void @_ZN4cvc58internal11NodeManager5mkAndILb1EEENS0_12NodeTemplateILb1EEERKSt6vectorINS3_IXT_EEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %16, ptr noundef nonnull align 8 dereferenceable(3592) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.af unwind label %.split144.us

bb.af:                                            ; preds = %bb.ae
  %i.cv = load ptr, ptr %16, align 8, !tbaa !283  ; 8 uses
  store ptr %i.cv, ptr %17, align 8, !tbaa !283
  %i.cw = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.cx = lshr i64 %i.cw, 40
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = and i32 %i.cy, 1048575                  ; 3 uses
  %i.da = icmp samesign ult i32 %i.cz, 1048574
  br i1 %i.da, label %bb.ai, label %bb.ag, !prof !292

bb.ag:                                            ; preds = %bb.af
  %i.db = icmp eq i32 %i.cz, 1048574
  br i1 %i.db, label %bb.ah, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit83.us, !prof !284

bb.ah:                                            ; preds = %bb.ag
  %i.dc = or i64 %i.cw, 1152920405095219200
  store i64 %i.dc, ptr %i.cv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit83.us unwind label %.split147.us

bb.ai:                                            ; preds = %bb.af
  %i.dd = add nuw nsw i32 %i.cz, 1
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 40
  %i.dg = and i64 %i.cw, -1152920405095219201
  %i.dh = or i64 %i.df, %i.dg
  store i64 %i.dh, ptr %i.cv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit83.us

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit83.us: ; preds = %bb.ai, %bb.ah, %bb.ag
  invoke void @_ZN4cvc58internal6theory18PartitionGenerator13emitPartitionENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull align 8 %17)
          to label %bb.aj unwind label %.split150.us

bb.aj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit83.us
  %i.di = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.dj = and i64 %i.di, 1152920405095219200
  %.not.i.i84.us = icmp eq i64 %i.dj, 1152920405095219200
  br i1 %.not.i.i84.us, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us, label %bb.ak, !prof !284

bb.ak:                                            ; preds = %bb.aj
  %i.dk = add i64 %i.di, 1152920405095219200
  %i.dl = and i64 %i.dk, 1152920405095219200      ; 2 uses
  %i.dm = and i64 %i.di, -1152920405095219201
  %i.dn = or disjoint i64 %i.dl, %i.dm
  store i64 %i.dn, ptr %i.cv, align 8
  %i.do = icmp eq i64 %i.dl, 0
  br i1 %i.do, label %bb.al, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us, !prof !284

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us unwind label %.split153.us

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.dp = load ptr, ptr %16, align 8, !tbaa !283  ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8            ; 3 uses
  %i.dr = and i64 %i.dq, 1152920405095219200
  %.not.i.i86.us = icmp eq i64 %i.dr, 1152920405095219200
  br i1 %.not.i.i86.us, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us, label %bb.am, !prof !284

bb.am:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us
  %i.ds = add i64 %i.dq, 1152920405095219200
  %i.dt = and i64 %i.ds, 1152920405095219200      ; 2 uses
  %i.du = and i64 %i.dq, -1152920405095219201
  %i.dv = or disjoint i64 %i.dt, %i.du
  store i64 %i.dv, ptr %i.dp, align 8
  %i.dw = icmp eq i64 %i.dt, 0
  br i1 %i.dw, label %bb.an, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us, !prof !284

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us unwind label %.split156.us

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us: ; preds = %bb.an, %bb.am, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.dx = load ptr, ptr %15, align 8, !tbaa !279  ; 3 uses
  %i.dy = load ptr, ptr %i.ca, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.us = icmp eq ptr %i.dx, %i.dy
  br i1 %.not4.i.i.i.us, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.us, label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us
  %.05.i.i.i.us = phi ptr [ %i.eh, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us ], [ %i.dx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us ] ; 2 uses
  %i.dz = load ptr, ptr %.05.i.i.i.us, align 8, !tbaa !283 ; 3 uses
  %i.ea = load i64, ptr %i.dz, align 8            ; 3 uses
  %i.eb = and i64 %i.ea, 1152920405095219200
  %.not.i.i.i.i.i.i.us = icmp eq i64 %i.eb, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.us, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us, label %bb.ao, !prof !284

bb.ao:                                            ; preds = %.lr.ph.i.i.i.us
  %i.ec = add i64 %i.ea, 1152920405095219200
  %i.ed = and i64 %i.ec, 1152920405095219200      ; 2 uses
  %i.ee = and i64 %i.ea, -1152920405095219201
  %i.ef = or disjoint i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.dz, align 8
  %i.eg = icmp eq i64 %i.ed, 0
  br i1 %i.eg, label %bb.ap, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us, !prof !284

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us unwind label %.split159.us

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us: ; preds = %bb.ap, %bb.ao, %.lr.ph.i.i.i.us
  %i.eh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.eh, %i.dy
  br i1 %.not.i.i.i.us, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.us, label %.lr.ph.i.i.i.us, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.us: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us
end_hunk_0
