Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmListCommand?download=true
inline.NumInlined: 2142
inline.NumDeleted: 590
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_119HandleLengthCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 42, ptr %i.a, align 8, !tbaa !22
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %2, align 8, !tbaa !24
  %i.j = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.i, ptr noundef nonnull align 1 dereferenceable(42) @.str.19, i64 42, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.n = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.p = load i64, ptr %i.h, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.t

bb.b:                                             ; preds = %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.c:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.c
  %i.v = load i64, ptr %i.h, align 8, !tbaa !25
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.r, %bb.b ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.y = getelementptr inbounds i8, ptr %i.c, i64 -32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.z = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call fastcc void @_ZN12_GLOBAL__N_17GetListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefile(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(2952) %i.z)
  %i.aa = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !42, !range !43, !noundef !39
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.ag = load ptr, ptr %3, align 8, !tbaa !17
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 5                 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.al = icmp ult i64 %i.ak, 10
  br i1 %i.al, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.k
  %.029.i.i = phi i32 [ %i.at, %bb.k ], [ 1, %bb.e ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.as, %bb.k ], [ %i.ak, %bb.e ] ; 5 uses
  %i.am = icmp ult i64 %.02328.i.i, 100
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.an = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aq = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.k:                                             ; preds = %bb.i
  %i.as = udiv i64 %.02328.i.i, 10000
  %i.at = add i32 %.029.i.i, 4                    ; 2 uses
  %i.au = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.au, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.k, %bb.d, %bb.j, %bb.h, %bb.f, %bb.e
  %i.av = phi i64 [ %i.ak, %bb.j ], [ %i.ak, %bb.f ], [ %i.ak, %bb.h ], [ %i.ak, %bb.e ], [ 0, %bb.d ], [ %i.ak, %bb.k ] ; 3 uses
  %.022.i.i = phi i32 [ %i.ar, %bb.j ], [ %i.an, %bb.f ], [ %i.ap, %bb.h ], [ 1, %bb.e ], [ 1, %bb.d ], [ %i.at, %bb.k ]
  %i.aw = zext i32 %.022.i.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ax, ptr %4, align 8, !tbaa !20, !alias.scope !74
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.aw, i8 noundef signext 0)
          to label %.noexc23 unwind label %bb.r

.noexc23:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ay = load ptr, ptr %4, align 8, !tbaa !24, !alias.scope !74 ; 4 uses
  %i.az = icmp ugt i64 %i.av, 99
  br i1 %i.az, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i22

.lr.ph.preheader.i.i:                             ; preds = %.noexc23
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !26, !alias.scope !74
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add i32 %i.bc, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bg, %.lr.ph.i4.i ], [ %i.av, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bq, %.lr.ph.i4.i ], [ %i.bd, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.be = urem i64 %.020.i.i, 100
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !25, !noalias !74
  %i.bk = zext i32 %.01819.i.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !25
  %i.bm = load i8, ptr %i.bh, align 2, !tbaa !25, !noalias !74
  %i.bn = add i32 %.01819.i.i, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bo
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !25
  %i.bq = add i32 %.01819.i.i, -2
  %i.br = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.br, label %.lr.ph.i4.i, label %._crit_edge.i.i22, !llvm.loop !1

._crit_edge.i.i22:                                ; preds = %.lr.ph.i4.i, %.noexc23
  %.0.lcssa.i.i = phi i64 [ %i.av, %.noexc23 ], [ %i.bg, %.lr.ph.i4.i ] ; 3 uses
  %i.bs = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i22
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !25, !noalias !74
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !25
  %i.by = load i8, ptr %i.bu, align 2, !tbaa !25, !noalias !74
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i22
  %i.bz = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ca = or disjoint i8 %i.bz, 48
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge.i.i = phi i8 [ %i.ca, %bb.m ], [ %i.by, %bb.l ]
  store i8 %storemerge.i.i, ptr %i.ay, align 1, !tbaa !25
  %i.cb = load ptr, ptr %4, align 8, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !26
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 %i.cd, ptr %i.cb)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ax
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.o
  %i.cg = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ci = load i8, ptr %i.ab, align 8, !tbaa !42, !range !43, !noundef !39
  %i.cj = trunc nuw i8 %i.ci to i1
  store i8 0, ptr %i.ab, align 8, !tbaa !42
  br i1 %i.cj, label %bb.p, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.ck = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.cs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.ck, %bb.p ] ; 3 uses
  %i.cn = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !25
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.p
  %i.ct = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.ck, %bb.p ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !45
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.s:                                             ; preds = %bb.n
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ax
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.s
  %i.dd = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.r ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.da, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %.not

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_116HandleGetCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"struct.std::pair.170"], align 8 ; 12 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::optional.9", align 8   ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %class.cmList, align 8              ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, 128
  br i1 %i.j, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 50, ptr %i.b, align 8, !tbaa !22
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.l, ptr %3, align 8, !tbaa !24
  %i.m = load i64, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.l, ptr noundef nonnull align 1 dereferenceable(50) @.str.20, i64 50, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.q = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.k
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.s = load i64, ptr %i.k, align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.aq

bb.b:                                             ; preds = %.noexc.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.c:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.k
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.c
  %i.y = load i64, ptr %i.k, align 8, !tbaa !25
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.b
  %.pn63 = phi { ptr, i32 } [ %i.u, %bb.b ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ar

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ab = getelementptr inbounds i8, ptr %i.e, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ac = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call fastcc void @_ZN12_GLOBAL__N_17GetListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefile(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(2952) %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !42, !range !43, !noundef !39
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 8, ptr nonnull @.str.21)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

bb.g:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %4, align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %.noexc.i72, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.an = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 5
  %i.as = add nsw i64 %i.ar, -4
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_116HandleGetCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.ds = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.z
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !25
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.dx = load ptr, ptr %7, align 8, !tbaa !17    ; 3 uses
  %i.dy = load ptr, ptr %i.dk, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dx, %i.dy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ee, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 3 uses
  %i.dz = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !25
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ee, %i.dy
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %7, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.ef = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i1.i.i, label %_ZN6cmListD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !45
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #26
  br label %_ZN6cmListD2Ev.exit

_ZN6cmListD2Ev.exit:                              ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ak

bb.ab:                                            ; preds = %.critedge
  %i.el = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  br label %bb.ae

bb.ac:                                            ; preds = %bb.y
  %i.em = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.ad:                                            ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range         ; 2 uses
  %i.eo = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.ad
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !25
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.ac
  %.pn54 = phi { ptr, i32 } [ %i.em, %bb.ac ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.en, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.ab
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.el, %bb.ab ] ; 3 uses
  %.542 = extractvalue { ptr, i32 } %.pn54.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.et = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #25
  %i.eu = icmp eq i32 %.542, %i.et
  br i1 %i.eu, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %.536 = extractvalue { ptr, i32 } %.pn54.pn, 0
  %i.ev = call ptr @__cxa_begin_catch(ptr %.536) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef ptr %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ez, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit102 unwind label %bb.ai

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit102: ; preds = %bb.ag
  %i.fb = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit102
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !25
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.ai:                                            ; preds = %bb.ag
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.ai
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !25
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.ah
  %.pn57 = phi { ptr, i32 } [ %i.fg, %bb.ah ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %i.fh, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  invoke void @__cxa_end_catch()
          to label %bb.am unwind label %bb.as

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZN6cmListD2Ev.exit
  %.sroa.0.0144 = phi ptr [ %.sroa.0.0.lcssa, %_ZN6cmListD2Ev.exit ], [ %.sroa.0.0149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87 ], [ %.sroa.0.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 3 uses
  %.sroa.13.0134 = phi ptr [ %.sroa.13.0.lcssa, %_ZN6cmListD2Ev.exit ], [ %.sroa.13.0151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87 ], [ %.sroa.13.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ]
  %.3 = phi i1 [ true, %_ZN6cmListD2Ev.exit ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %.sroa.0.0144, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fo = ptrtoint ptr %.sroa.13.0134 to i64
  %i.fp = ptrtoint ptr %.sroa.0.0144 to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0144, i64 noundef %i.fq) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.am:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %bb.ae, %bb.v
  %.sroa.0.0145 = phi ptr [ %.sroa.0.0149, %bb.v ], [ %.sroa.0.0.lcssa, %bb.ae ], [ %.sroa.0.0.lcssa, %bb.aj ], [ %.sroa.0.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ] ; 3 uses
  %.sroa.13.0135 = phi ptr [ %.sroa.13.0151, %bb.v ], [ %.sroa.13.0.lcssa, %bb.ae ], [ %.sroa.13.0.lcssa, %bb.aj ], [ %.sroa.13.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ]
  %.merged66 = phi { ptr, i32 } [ %.pn52, %bb.v ], [ %.pn54.pn, %bb.ae ], [ %i.fn, %bb.aj ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ] ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %.sroa.0.0145, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIiSaIiEED2Ev.exit111, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fr = ptrtoint ptr %.sroa.13.0135 to i64
  %i.fs = ptrtoint ptr %.sroa.0.0145 to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0145, i64 noundef %i.ft) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.al, %bb.ak, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %.4 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ true, %bb.e ], [ %.3, %bb.ak ], [ %.3, %bb.al ]
  %i.fu = load i8, ptr %i.ad, align 8, !tbaa !42, !range !43, !noundef !39
  %i.fv = trunc nuw i8 %i.fu to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !42
  br i1 %i.fv, label %bb.ao, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fw = load ptr, ptr %4, align 8, !tbaa !17    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.fw, %i.fy
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.fw, %bb.ao ] ; 3 uses
  %i.fz = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !25
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fy
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.ao
  %i.gf = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.fw, %bb.ao ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !45
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gk) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.aq

_ZNSt6vectorIiSaIiEED2Ev.exit111:                 ; preds = %bb.an, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.f
  %.merged65 = phi { ptr, i32 } [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %i.ah, %bb.f ], [ %.merged66, %bb.am ], [ %.merged66, %bb.an ]
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.5 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.4, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit ]
  ret i1 %.5

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.merged = phi { ptr, i32 } [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.merged65, %_ZNSt6vectorIiSaIiEED2Ev.exit111 ]
  resume { ptr, i32 } %.merged

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119HandleAppendCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, 65
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !26
  store i8 0, ptr %i.j, align 8, !tbaa !25
  %i.l = invoke ptr @_ZNK10cmMakefile13GetDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit unwind label %bb.h

_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit: ; preds = %.noexc, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN6cmList6appendIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS8_SF_T_SG_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !22
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !47
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull %i.n, ptr %i.o, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %.noexc17 unwind label %bb.h

.noexc17:                                         ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6cmList6appendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc17
  %i.r = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.u = load i64, ptr %i.s, align 8, !tbaa !25
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN6cmList6appendIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS8_SF_T_SG_.exit

bb.f:                                             ; preds = %.noexc17
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !25
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

_ZN6cmList6appendIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS8_SF_T_SG_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit
  %.0.i = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %3, %_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit ] ; 2 uses
  %i.ac = load ptr, ptr %.0.i, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 %i.ae, ptr %i.ac)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN6cmList6appendIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS8_SF_T_SG_.exit
  %i.af = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.j
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !25
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.i

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.d, %_ZN6cmList6appendIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS8_SF_T_SG_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %.pn = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.aj, %bb.h ]
  %i.ak = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.j
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.body
  %i.am = load i64, ptr %i.j, align 8, !tbaa !25
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 true
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_120HandlePopBackCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
  %i.f = load i8, ptr %i.e, align 8, !tbaa !42, !range !43, !noundef !39
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %.preheader67

.preheader67:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %.not70 = icmp eq ptr %i.d, %i.i
  br i1 %.not70, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader67, %bb.b
  %.sroa.040.071 = phi ptr [ %i.j, %bb.b ], [ %i.d, %.preheader67 ] ; 2 uses
  invoke void @_ZN10cmMakefile16RemoveDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.040.071)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.040.071, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !46
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !98

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph78, %.lr.ph81, %bb.f, %.lr.ph
  %lpad.loopexit.split-lp132 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %2, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 4 uses
  %i.o = icmp eq ptr %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %.not58 = icmp eq ptr %i.d, %i.q                ; 2 uses
  br i1 %i.o, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not58, label %bb.e, label %.lr.ph73

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -32 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 -16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN6cmList8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !25
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #26
  br label %_ZN6cmList8pop_backEv.exit

.lr.ph73:                                         ; preds = %bb.d, %_ZN6cmList8pop_backEv.exit28
  %i.x = phi ptr [ %i.ak, %_ZN6cmList8pop_backEv.exit28 ], [ %i.n, %bb.d ] ; 2 uses
  %.sroa.040.172 = phi ptr [ %i.al, %_ZN6cmList8pop_backEv.exit28 ], [ %i.d, %bb.d ] ; 3 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !46
  %.not56 = icmp eq ptr %.sroa.040.172, %i.y
  br i1 %.not56, label %_ZN6cmList8pop_backEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph73
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.040.172, i64 %i.ac, ptr %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !16  ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -32 ; 3 uses
  store ptr %i.ae, ptr %i.m, align 8, !tbaa !16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 -16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN6cmList8pop_backEv.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26: ; preds = %bb.g
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !25
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #26
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !46
  br label %_ZN6cmList8pop_backEv.exit28

_ZN6cmList8pop_backEv.exit28:                     ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26
  %i.ak = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26 ], [ %i.ae, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.040.172, i64 32 ; 3 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !46
  %i.an = icmp eq ptr %i.am, %i.ak
  br i1 %i.an, label %.critedge, label %.lr.ph73, !llvm.loop !99

.critedge:                                        ; preds = %_ZN6cmList8pop_backEv.exit28
  %.pre89.pre = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.ao = icmp eq ptr %i.al, %.pre89.pre
  br i1 %i.ao, label %_ZN6cmList8pop_backEv.exit, label %.lr.ph78

.lr.ph78:                                         ; preds = %.critedge, %bb.h
  %.sroa.040.277 = phi ptr [ %i.ap, %bb.h ], [ %i.al, %.critedge ] ; 2 uses
  invoke void @_ZN10cmMakefile16RemoveDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.040.277)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %.lr.ph78
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.040.277, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !46
  %.not57 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not57, label %_ZN6cmList8pop_backEv.exit, label %.lr.ph78, !llvm.loop !100

_ZN6cmList8pop_backEv.exit:                       ; preds = %.lr.ph73, %bb.h, %bb.e, %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !22, !noalias !108
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !47, !noalias !108
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !16, !noalias !111 ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !17, !noalias !111 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6cmList8pop_backEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.au, ptr %3, align 8, !tbaa !20, !alias.scope !111
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !26, !alias.scope !111
  store i8 0, ptr %i.au, align 8, !tbaa !25, !alias.scope !111
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

bb.j:                                             ; preds = %_ZN6cmList8pop_backEv.exit
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.as, ptr %i.ar, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge unwind label %bb.l

._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge:   ; preds = %bb.j
  %.pre90 = load ptr, ptr %3, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre91 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

_ZNK6cmList9to_stringB5cxx11Ev.exit:              ; preds = %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge, %bb.i
  %i.aw = phi i64 [ %.pre91, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ 0, %bb.i ]
  %i.ax = phi ptr [ %.pre90, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ %i.au, %bb.i ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 %i.aw, ptr %i.ax)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.ay = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !25
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.m:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.m
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !25
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.be, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.c
  br i1 %.not58, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.n, %bb.o
  %.sroa.040.380 = phi ptr [ %i.bk, %bb.o ], [ %i.d, %bb.n ] ; 2 uses
  invoke void @_ZN10cmMakefile16RemoveDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.040.380)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %.lr.ph81
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.040.380, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !46
  %.not59 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not59, label %.loopexit, label %.lr.ph81, !llvm.loop !107

.loopexit:                                        ; preds = %bb.b, %bb.o, %.preheader67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  %i.bm = load i8, ptr %i.e, align 8, !tbaa !42, !range !43, !noundef !39
  %i.bn = trunc nuw i8 %i.bm to i1
  store i8 0, ptr %i.e, align 8, !tbaa !42
  br i1 %i.bn, label %bb.p, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %.loopexit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !17    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.p ] ; 3 uses
  %i.br = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !25
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.bq
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.p
  %i.bx = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.bo, %bb.p ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !45
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %.loopexit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 true

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn24 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %lpad.loopexit.split-lp132, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_121HandlePopFrontCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::optional.9", align 8   ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call fastcc void @_ZN12_GLOBAL__N_17GetListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefile(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(2952) %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !42, !range !43, !noundef !39
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %.preheader77

.preheader77:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %.not84 = icmp eq ptr %i.d, %i.i
  br i1 %.not84, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader77, %bb.b
  %.sroa.049.085 = phi ptr [ %i.j, %bb.b ], [ %i.d, %.preheader77 ] ; 2 uses
  invoke void @_ZN10cmMakefile16RemoveDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.049.085)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.049.085, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !46
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !112

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %2, align 8, !tbaa !46     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = icmp eq ptr %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %.not68 = icmp eq ptr %i.d, %i.q                ; 2 uses
  br i1 %i.o, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not68, label %bb.e, label %.lr.ph89

bb.e:                                             ; preds = %bb.d
  %i.r = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.l)
          to label %_ZN6cmList9pop_frontEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph89:                                         ; preds = %bb.d, %bb.g
  %.sroa.049.188 = phi ptr [ %i.w, %bb.g ], [ %i.d, %bb.d ] ; 4 uses
  %.sroa.042.087 = phi ptr [ %i.x, %bb.g ], [ %i.l, %bb.d ] ; 4 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !46
  %.not66 = icmp eq ptr %.sroa.049.188, %i.s
  br i1 %.not66, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph89
  %i.t = load ptr, ptr %.sroa.042.087, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.042.087, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.049.188, i64 %i.v, ptr %i.t)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.049.188, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.042.087, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !46
  %.not65 = icmp eq ptr %i.x, %i.y
  br i1 %.not65, label %.critedge, label %.lr.ph89, !llvm.loop !113

.critedge:                                        ; preds = %.lr.ph89, %bb.g
  %.sroa.042.0.lcssa.ph = phi ptr [ %.sroa.042.087, %.lr.ph89 ], [ %i.x, %bb.g ]
  %.sroa.049.1.lcssa.ph = phi ptr [ %.sroa.049.188, %.lr.ph89 ], [ %i.w, %bb.g ] ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !46    ; 3 uses
  %i.z = ptrtoint ptr %.pre to i64
  %i.aa = ptrtoint ptr %.sroa.042.0.lcssa.ph to i64
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = getelementptr inbounds i8, ptr %.pre, i64 %i.ab
  %i.ad = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.pre, ptr %i.ac)
          to label %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_.exit.preheader: ; preds = %.critedge
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !46
  %.not6794 = icmp eq ptr %.sroa.049.1.lcssa.ph, %i.ae
  br i1 %.not6794, label %_ZN6cmList9pop_frontEv.exit, label %.lr.ph96

.lr.ph96:                                         ; preds = %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_.exit.preheader, %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_.exit
  %.sroa.049.295 = phi ptr [ %i.af, %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_.exit ], [ %.sroa.049.1.lcssa.ph, %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_.exit.preheader ] ; 2 uses
  invoke void @_ZN10cmMakefile16RemoveDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.049.295)
          to label %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_.exit: ; preds = %.lr.ph96
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.049.295, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !46
  %.not67 = icmp eq ptr %i.af, %i.ag
  br i1 %.not67, label %_ZN6cmList9pop_frontEv.exit, label %.lr.ph96, !llvm.loop !114

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.lr.ph99, %.lr.ph96, %.lr.ph, %bb.e, %.critedge
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN6cmList9pop_frontEv.exit:                      ; preds = %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_.exit, %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_.exit.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !22, !noalias !122
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !47, !noalias !122
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !16, !noalias !125 ; 2 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !17, !noalias !125 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6cmList9pop_frontEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !20, !alias.scope !125
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !26, !alias.scope !125
  store i8 0, ptr %i.ak, align 8, !tbaa !25, !alias.scope !125
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

bb.i:                                             ; preds = %_ZN6cmList9pop_frontEv.exit
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.ai, ptr %i.ah, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge unwind label %bb.k

._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge:   ; preds = %bb.i
  %.pre109 = load ptr, ptr %3, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre110 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

_ZNK6cmList9to_stringB5cxx11Ev.exit:              ; preds = %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge, %bb.h
  %i.am = phi i64 [ %.pre110, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ 0, %bb.h ]
  %i.an = phi ptr [ %.pre109, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ %i.ak, %bb.h ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 %i.am, ptr %i.an)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.ao = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.l:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.au, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.c
  br i1 %.not68, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.m, %bb.n
  %.sroa.049.398 = phi ptr [ %i.ba, %bb.n ], [ %i.d, %bb.m ] ; 2 uses
  invoke void @_ZN10cmMakefile16RemoveDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.049.398)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.lr.ph99
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.049.398, i64 32 ; 2 uses
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !46
  %.not69 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not69, label %.loopexit, label %.lr.ph99, !llvm.loop !121

.loopexit:                                        ; preds = %bb.b, %bb.n, %.preheader77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m
  %i.bc = load i8, ptr %i.e, align 8, !tbaa !42, !range !43, !noundef !39
  %i.bd = trunc nuw i8 %i.bc to i1
  store i8 0, ptr %i.e, align 8, !tbaa !42
  br i1 %i.bd, label %bb.o, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.o:                                             ; preds = %.loopexit
  %i.be = load ptr, ptr %2, align 8, !tbaa !17    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.o, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.be, %bb.o ] ; 3 uses
  %i.bh = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !25
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bg
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.o
  %i.bn = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.be, %bb.o ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !45
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %.loopexit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 true

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn28 = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %lpad.loopexit.split-lp146, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn28
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_117HandleFindCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::optional.9", align 8   ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.not = icmp eq i64 %i.g, 128                   ; 2 uses
  br i1 %.not, label %bb.d, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 42, ptr %i.a, align 8, !tbaa !22
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %2, align 8, !tbaa !24
  %i.j = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.i, ptr noundef nonnull align 1 dereferenceable(42) @.str.31, i64 42, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.n = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.p = load i64, ptr %i.h, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.z

bb.b:                                             ; preds = %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.c:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.c
  %i.v = load i64, ptr %i.h, align 8, !tbaa !25
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.b
  %.pn38 = phi { ptr, i32 } [ %i.r, %bb.b ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.y = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.z = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call fastcc void @_ZN12_GLOBAL__N_17GetListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefile(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(2952) %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !42, !range !43, !noundef !39
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 2, ptr nonnull @.str.32)
          to label %bb.v unwind label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.aj = invoke noundef i64 @_ZNK6cmList4findESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %i.ai, ptr %i.ag)
          to label %bb.g unwind label %bb.s       ; 6 uses

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.al = icmp eq i64 %i.aj, -1
  br i1 %i.al, label %._crit_edge.i.i47, label %bb.h

._crit_edge.i.i47:                                ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !20
  store i16 12589, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.an, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.ao, align 2, !tbaa !25
  br label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.ap = icmp ult i64 %i.aj, 10
  br i1 %i.ap, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.n
  %.029.i.i = phi i32 [ %i.ax, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.aw, %bb.n ], [ %i.aj, %bb.h ] ; 5 uses
  %i.aq = icmp ult i64 %.02328.i.i, 100
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ar = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.as = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.au = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aw = udiv i64 %.02328.i.i, 10000
  %i.ax = add i32 %.029.i.i, 4                    ; 2 uses
  %i.ay = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.ay, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.h
  %.022.i.i = phi i32 [ %i.av, %bb.m ], [ %i.ar, %bb.i ], [ %i.at, %bb.k ], [ 1, %bb.h ], [ %i.ax, %bb.n ]
  %i.az = zext i32 %.022.i.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ba, ptr %4, align 8, !tbaa !20, !alias.scope !128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.az, i8 noundef signext 0)
          to label %.noexc52 unwind label %bb.t

.noexc52:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bb = load ptr, ptr %4, align 8, !tbaa !24, !alias.scope !128 ; 4 uses
  %i.bc = icmp ugt i64 %i.aj, 99
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i51

.lr.ph.preheader.i.i:                             ; preds = %.noexc52
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !26, !alias.scope !128
  %i.bf = trunc i64 %i.be to i32
  %i.bg = add i32 %i.bf, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bj, %.lr.ph.i4.i ], [ %i.aj, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bt, %.lr.ph.i4.i ], [ %i.bg, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bh = urem i64 %.020.i.i, 100
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !25, !noalias !128
  %i.bn = zext i32 %.01819.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bn
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !25
  %i.bp = load i8, ptr %i.bk, align 2, !tbaa !25, !noalias !128
  %i.bq = add i32 %.01819.i.i, -1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.br
  store i8 %i.bp, ptr %i.bs, align 1, !tbaa !25
  %i.bt = add i32 %.01819.i.i, -2
  %i.bu = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bu, label %.lr.ph.i4.i, label %._crit_edge.i.i51, !llvm.loop !1

._crit_edge.i.i51:                                ; preds = %.lr.ph.i4.i, %.noexc52
  %.0.lcssa.i.i = phi i64 [ %i.aj, %.noexc52 ], [ %i.bj, %.lr.ph.i4.i ] ; 3 uses
  %i.bv = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i51
  %i.bw = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !25, !noalias !128
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !25
  %i.cb = load i8, ptr %i.bx, align 2, !tbaa !25, !noalias !128
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.p:                                             ; preds = %._crit_edge.i.i51
  %i.cc = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.cd = or disjoint i8 %i.cc, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.o, %bb.p
  %storemerge.i.i = phi i8 [ %i.cd, %bb.p ], [ %i.cb, %bb.o ]
  store i8 %storemerge.i.i, ptr %i.bb, align 1, !tbaa !25
  %.pre = load ptr, ptr %4, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre71 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit, %._crit_edge.i.i47
  %i.ce = phi i64 [ %.pre71, %_ZNSt7__cxx119to_stringEm.exit ], [ 2, %._crit_edge.i.i47 ]
  %i.cf = phi ptr [ %.pre, %_ZNSt7__cxx119to_stringEm.exit ], [ %i.am, %._crit_edge.i.i47 ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 %i.ce, ptr %i.cf)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.r
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !25
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #26
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.v

bb.s:                                             ; preds = %bb.e, %bb.f
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.critedge42

bb.u:                                             ; preds = %bb.q
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %.critedge42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.u
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !25
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #26
  br label %.critedge42

.critedge42:                                      ; preds = %bb.u, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.t ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.cn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.y

bb.v:                                             ; preds = %bb.e, %.critedge
  %i.ct = load i8, ptr %i.aa, align 8, !tbaa !42, !range !43, !noundef !39
  %i.cu = trunc nuw i8 %i.ct to i1
  store i8 0, ptr %i.aa, align 8, !tbaa !42
  br i1 %i.cu, label %bb.w, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.cv = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.cx
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.w, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.cv, %bb.w ] ; 3 uses
  %i.cy = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !25
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.cx
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.w
  %i.de = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.cv, %bb.w ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !45
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %bb.v, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.z

bb.y:                                             ; preds = %bb.s, %.critedge42
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.s ], [ %.pn, %.critedge42 ]
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %.not

bb.aa:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn.pn.pn, %bb.y ]
  resume { ptr, i32 } %.pn38.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119HandleInsertCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"struct.std::pair.170"], align 8 ; 12 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::optional.9", align 8   ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 128
  br i1 %i.i, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 53, ptr %i.a, align 8, !tbaa !22
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %3, align 8, !tbaa !24
  %i.l = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.k, ptr noundef nonnull align 1 dereferenceable(53) @.str.33, i64 53, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.p = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = load i64, ptr %i.j, align 8, !tbaa !25
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.y

bb.b:                                             ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.c:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.c
  %i.x = load i64, ptr %i.j, align 8, !tbaa !25
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.b
  %.pn38 = phi { ptr, i32 } [ %i.t, %bb.b ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.u, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ab = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  %i.ac = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111GetIndexArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiR10cmMakefile(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(2952) %i.ab)
  br i1 %i.ac, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ad = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !144
  store i64 7, ptr %2, align 8, !tbaa !22, !alias.scope !145, !noalias !144
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.23, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !47, !alias.scope !145, !noalias !144
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.af, align 8, !tbaa !49, !alias.scope !145, !noalias !144
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !24, !noalias !144
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26, !noalias !144
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !22, !alias.scope !146, !noalias !144
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !47, !alias.scope !146, !noalias !144
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.ak, align 8, !tbaa !49, !alias.scope !146, !noalias !144
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 21, ptr %i.al, align 8, !tbaa !22, !alias.scope !147, !noalias !144
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.24, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !tbaa !47, !alias.scope !147, !noalias !144
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr null, ptr %i.am, align 8, !tbaa !49, !alias.scope !147, !noalias !144
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %2, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !144
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47 unwind label %bb.f

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47: ; preds = %bb.e
  %i.ao = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_119HandleInsertCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
  store i8 1, ptr %i.ba, align 8, !tbaa !42
  br label %_ZN6cmListD2Ev.exit

_ZN6cmListD2Ev.exit:                              ; preds = %bb.h, %bb.g
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !50
  %i.be = sext i32 %i.bd to i64
  %i.bf = load ptr, ptr %0, align 8, !tbaa !46
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !46  ; 2 uses
  %i.bh = invoke noundef i64 @_ZNK6cmList18ComputeInsertIndexElb(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.be, i1 noundef zeroext true)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %_ZN6cmListD2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 96 ; 2 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bg
  br i1 %i.bk, label %_ZN6cmList12insert_itemsIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS_lT_SG_NS_14ExpandElementsENS_13EmptyElementsE.exit, label %.lr.ph.split.us.i.i.i.preheader

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.noexc54
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.bh
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.preheader, %.noexc55
  %.sroa.033.149.us.i.i.i = phi ptr [ %i.bo, %.noexc55 ], [ %i.bi, %.lr.ph.split.us.i.i.i.preheader ] ; 2 uses
  %.sroa.025.148.us.i.i.i = phi ptr [ %i.bn, %.noexc55 ], [ %i.bl, %.lr.ph.split.us.i.i.i.preheader ]
  %i.bm = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EERSA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %.sroa.025.148.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.149.us.i.i.i)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %.lr.ph.split.us.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.033.149.us.i.i.i, i64 32 ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %i.bo, %i.bg
  br i1 %.not.us.i.i.i, label %_ZN6cmList12insert_itemsIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS_lT_SG_NS_14ExpandElementsENS_13EmptyElementsE.exit.loopexit, label %.lr.ph.split.us.i.i.i, !llvm.loop !137

_ZN6cmList12insert_itemsIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS_lT_SG_NS_14ExpandElementsENS_13EmptyElementsE.exit.loopexit: ; preds = %.noexc55
  %.pre = load ptr, ptr %5, align 8, !tbaa !17, !noalias !148
  br label %_ZN6cmList12insert_itemsIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS_lT_SG_NS_14ExpandElementsENS_13EmptyElementsE.exit

_ZN6cmList12insert_itemsIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS_lT_SG_NS_14ExpandElementsENS_13EmptyElementsE.exit: ; preds = %_ZN6cmList12insert_itemsIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS_lT_SG_NS_14ExpandElementsENS_13EmptyElementsE.exit.loopexit, %.noexc54
  %i.bp = phi ptr [ %.pre, %_ZN6cmList12insert_itemsIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS_lT_SG_NS_14ExpandElementsENS_13EmptyElementsE.exit.loopexit ], [ %i.bj, %.noexc54 ] ; 2 uses
  %i.bq = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !22, !noalias !149
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !47, !noalias !149
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16, !noalias !148 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bp
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6cmList12insert_itemsIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS_lT_SG_NS_14ExpandElementsENS_13EmptyElementsE.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bu, ptr %6, align 8, !tbaa !20, !alias.scope !148
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bv, align 8, !tbaa !26, !alias.scope !148
  store i8 0, ptr %i.bu, align 8, !tbaa !25, !alias.scope !148
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

bb.j:                                             ; preds = %_ZN6cmList12insert_itemsIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS_lT_SG_NS_14ExpandElementsENS_13EmptyElementsE.exit
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr %i.bp, ptr %i.bs, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge unwind label %bb.l

._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge:   ; preds = %bb.j
  %.pre80 = load ptr, ptr %6, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre81 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

_ZNK6cmList9to_stringB5cxx11Ev.exit:              ; preds = %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge, %bb.i
  %i.bw = phi i64 [ %.pre81, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ 0, %bb.i ]
  %i.bx = phi ptr [ %.pre80, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ %i.bu, %bb.i ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 %i.bw, ptr %i.bx)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.by = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.k
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !25
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.s

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.split.us.i.i.i, %_ZN6cmListD2Ev.exit
  %lpad.loopexit.split-lp110 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  br label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.m:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range         ; 2 uses
  %i.cf = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.m
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !25
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.ce, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %lpad.loopexit.split-lp110, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.226 = extractvalue { ptr, i32 } %.pn.pn, 1
  %i.ck = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #25
  %i.cl = icmp eq i32 %.226, %i.ck
  br i1 %i.cl, label %bb.n, label %bb.v

bb.n:                                             ; preds = %.loopexit.split-lp
  %.223 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.cm = call ptr @__cxa_begin_catch(ptr %.223) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !52
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cq, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64 unwind label %bb.q

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64: ; preds = %bb.o
  %i.cs = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !25
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.q:                                             ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.q
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !25
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.p
  %.pn34 = phi { ptr, i32 } [ %i.cx, %bb.p ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.cy, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.aa

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.0 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ]
  %i.df = load i8, ptr %i.ba, align 8, !tbaa !42, !range !43, !noundef !39
  %i.dg = trunc nuw i8 %i.df to i1
  store i8 0, ptr %i.ba, align 8, !tbaa !42
  br i1 %i.dg, label %bb.t, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.dh = load ptr, ptr %5, align 8, !tbaa !17    ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.dh, %i.dj
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.t, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.dp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %bb.t ] ; 3 uses
  %i.dk = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !25
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dp, %i.dj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.t
  %i.dq = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.dh, %bb.t ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !45
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %bb.s, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %.loopexit.split-lp
  %.merged41 = phi { ptr, i32 } [ %.pn.pn, %.loopexit.split-lp ], [ %i.de, %bb.r ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.1 = phi i1 [ %.0, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.merged40 = phi { ptr, i32 } [ %.merged41, %bb.v ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.2 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.1, %bb.w ]
  ret i1 %.2

bb.z:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.merged = phi { ptr, i32 } [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.merged40, %bb.x ]
  resume { ptr, i32 } %.merged

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_117HandleJoinCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"struct.std::pair.170"], align 8 ; 12 uses
  %3 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::optional.9", align 8   ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not = icmp eq i64 %i.f, 128                   ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ashr exact i64 %i.f, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.h = add nsw i64 %i.g, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !164
  store i64 43, ptr %2, align 8, !tbaa !22, !alias.scope !165, !noalias !164
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.34, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !47, !alias.scope !165, !noalias !164
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !49, !alias.scope !165, !noalias !164
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !164
  call void @_ZN10cmAlphaNumC1Em(ptr noundef nonnull align 8 dereferenceable(56) %3, i64 noundef %i.h), !noalias !164
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.k = load ptr, ptr %3, align 8, !tbaa !54, !noalias !167 ; 4 uses
  %.not.i.i3.i = icmp eq ptr %i.k, null           ; 2 uses
  %.sroa.3.0..sroa_idx.i.i4.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pn.in.i.i6.i = select i1 %.not.i.i3.i, ptr %.sroa.3.0..sroa_idx.i.i4.i, ptr %i.k
  %.pn.i.i7.i = load ptr, ptr %.pn.in.i.i6.i, align 8, !tbaa !47, !noalias !167
  %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i3.i, ptr %3, ptr %i.k
  %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i9.i = load i64, ptr %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !22, !noalias !167
  store i64 %.pn2.i.i9.i, ptr %i.j, align 8, !tbaa !22, !alias.scope !166, !noalias !164
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.pn.i.i7.i, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !47, !alias.scope !166, !noalias !164
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.k, ptr %i.l, align 8, !tbaa !49, !alias.scope !166, !noalias !164
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 8, ptr %i.m, align 8, !tbaa !22, !alias.scope !168, !noalias !164
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.35, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !tbaa !47, !alias.scope !168, !noalias !164
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr null, ptr %i.n, align 8, !tbaa !49, !alias.scope !168, !noalias !164
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %2, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !164
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.c
  %i.y = load i64, ptr %i.w, align 8, !tbaa !25
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ac = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call fastcc void @_ZN12_GLOBAL__N_17GetListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefile(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(2952) %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !42, !range !43, !noundef !39
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 0, ptr nonnull @.str.36)
          to label %bb.m unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.aj = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16, !noalias !171 ; 2 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !17, !noalias !171 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !20, !alias.scope !171
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !26, !alias.scope !171
  store i8 0, ptr %i.ar, align 8, !tbaa !25, !alias.scope !171
  br label %_ZNK6cmList4joinB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr %i.ap, ptr %i.ao, i64 %i.am, ptr %i.ak)
          to label %._ZNK6cmList4joinB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit_crit_edge unwind label %bb.k

._ZNK6cmList4joinB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit_crit_edge: ; preds = %bb.i
  %.pre = load ptr, ptr %6, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre39 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNK6cmList4joinB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK6cmList4joinB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %._ZNK6cmList4joinB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit_crit_edge, %bb.h
  %i.at = phi i64 [ %.pre39, %._ZNK6cmList4joinB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit_crit_edge ], [ 0, %bb.h ]
  %i.au = phi ptr [ %.pre, %._ZNK6cmList4joinB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit_crit_edge ], [ %i.ar, %bb.h ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 %i.at, ptr %i.au)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNK6cmList4joinB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.av = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.j
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.l:                                             ; preds = %_ZNK6cmList4joinB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.l
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.bb, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.p

bb.m:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.bh = load i8, ptr %i.ad, align 8, !tbaa !42, !range !43, !noundef !39
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !42
  br i1 %i.bi, label %bb.n, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %5, align 8, !tbaa !17    ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.br, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.bj, %bb.n ] ; 3 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.n
  %i.bs = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.bj, %bb.n ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !45
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.ah, %bb.f ]
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %.not

bb.r:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn24 = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn.pn, %bb.p ]
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_121HandleRemoveAtCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"struct.std::pair.170"], align 8 ; 12 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::optional.9", align 8   ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 65
  br i1 %i.i, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 54, ptr %i.a, align 8, !tbaa !22
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %3, align 8, !tbaa !24
  %i.l = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.k, ptr noundef nonnull align 1 dereferenceable(54) @.str.37, i64 54, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.p = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = load i64, ptr %i.j, align 8, !tbaa !25
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.as

bb.b:                                             ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.c:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.c
  %i.x = load i64, ptr %i.j, align 8, !tbaa !25
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.b
  %.pn67 = phi { ptr, i32 } [ %i.t, %bb.b ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.u, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.at

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aa = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call fastcc void @_ZN12_GLOBAL__N_17GetListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefile(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(2952) %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !42, !range !43, !noundef !39
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %4, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.aj = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ugt i64 %i.am, 64
  br i1 %i.an, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.23, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %bb.g
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.aq = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ugt i64 %i.at, 32
  br i1 %i.au, label %.lr.ph165, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.39, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph165:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.ax = phi ptr [ %i.bl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 ], [ %i.aq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader ]
  %.052164 = phi i64 [ %i.bm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader ] ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_121HandleRemoveAtCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
  br i1 %i.fb, label %.lr.ph, label %._crit_edge, !llvm.loop !185

.loopexit.split-lp134.loopexit.split-lp:          ; preds = %.lr.ph, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp134.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.pn60 = phi { ptr, i32 } [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp134.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.ao

._crit_edge:                                      ; preds = %bb.z, %.preheader
  %.sroa.0.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0.1.ph, %bb.z ] ; 6 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.9.1.ph, %bb.z ]
  %.sroa.13.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.13.1.ph, %bb.z ] ; 5 uses
  %i.fc = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.fd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6cmList12remove_itemsIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEERS_T_S9_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %.sroa.0.0.lcssa, ptr %.sroa.9.0.lcssa)
          to label %bb.ab unwind label %bb.af     ; 2 uses

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !22, !noalias !204
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !47, !noalias !204
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !16, !noalias !207 ; 2 uses
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !17, !noalias !207 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.fi, ptr %8, align 8, !tbaa !20, !alias.scope !207
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !26, !alias.scope !207
  store i8 0, ptr %i.fi, align 8, !tbaa !25, !alias.scope !207
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr %i.fg, ptr %i.ff, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge unwind label %bb.af

._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge:   ; preds = %bb.ad
  %.pre = load ptr, ptr %8, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre178 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

_ZNK6cmList9to_stringB5cxx11Ev.exit:              ; preds = %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge, %bb.ac
  %i.fk = phi i64 [ %.pre178, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ 0, %bb.ac ]
  %i.fl = phi ptr [ %.pre, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ %i.fi, %bb.ac ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 %i.fk, ptr %i.fl)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.fm = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.ae
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !25
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.am

bb.af:                                            ; preds = %bb.ad, %._crit_edge
  %i.fr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.ag:                                            ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.fs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range         ; 2 uses
  %i.ft = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ag
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !25
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.af
  %.pn = phi { ptr, i32 } [ %i.fr, %bb.af ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.fs, %bb.ag ] ; 3 uses
  %.644 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.fy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #25
  %i.fz = icmp eq i32 %.644, %i.fy
  br i1 %i.fz, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.6 = extractvalue { ptr, i32 } %.pn, 0
  %i.ga = call ptr @__cxa_begin_catch(ptr %.6) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !52
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call noundef ptr %i.gd(ptr noundef nonnull align 8 dereferenceable(16) %i.ga) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ge, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gf, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109 unwind label %bb.ak

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109: ; preds = %bb.ai
  %i.gg = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !25
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  invoke void @__cxa_end_catch()
          to label %bb.am unwind label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

bb.ak:                                            ; preds = %bb.ai
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gn = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.ak
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !25
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.aj
  %.pn54 = phi { ptr, i32 } [ %i.gl, %bb.aj ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %i.gm, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  invoke void @__cxa_end_catch()
          to label %bb.ao unwind label %bb.au

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.am:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.sroa.0.0154 = phi ptr [ %.sroa.0.0158, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ %.sroa.0.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %.sroa.0.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ] ; 3 uses
  %.sroa.13.0144 = phi ptr [ %.sroa.13.0160, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ %.sroa.13.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %.sroa.13.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ]
  %.2 = phi i1 [ false, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0154, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gt = ptrtoint ptr %.sroa.13.0144 to i64
  %i.gu = ptrtoint ptr %.sroa.0.0154 to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0154, i64 noundef %i.gv) #26
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.ao:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.aa
  %.sroa.0.0155 = phi ptr [ %.sroa.0.0158, %bb.aa ], [ %.sroa.0.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.sroa.0.0.lcssa, %bb.al ], [ %.sroa.0.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ] ; 3 uses
  %.sroa.13.0145 = phi ptr [ %.sroa.13.0160, %bb.aa ], [ %.sroa.13.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.sroa.13.0.lcssa, %bb.al ], [ %.sroa.13.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ]
  %.merged70 = phi { ptr, i32 } [ %.pn60, %bb.aa ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.gs, %bb.al ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ] ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %.sroa.0.0155, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIlSaIlEED2Ev.exit117, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gw = ptrtoint ptr %.sroa.13.0145 to i64
  %i.gx = ptrtoint ptr %.sroa.0.0155 to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0155, i64 noundef %i.gy) #26
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit117

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.an, %bb.am, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.3 = phi i1 [ false, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.2, %bb.am ], [ %.2, %bb.an ]
  %i.gz = load i8, ptr %i.ab, align 8, !tbaa !42, !range !43, !noundef !39
  %i.ha = trunc nuw i8 %i.gz to i1
  store i8 0, ptr %i.ab, align 8, !tbaa !42
  br i1 %i.ha, label %bb.aq, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.aq:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.hb = load ptr, ptr %4, align 8, !tbaa !17    ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.hb, %i.hd
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.aq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.hb, %bb.aq ] ; 3 uses
  %i.he = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !25
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hj, %i.hd
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.aq
  %i.hk = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.hb, %bb.aq ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !45
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.as

_ZNSt6vectorIlSaIlEED2Ev.exit117:                 ; preds = %bb.ap, %bb.ao, %bb.n
  %.merged69 = phi { ptr, i32 } [ %.pn64.pn, %bb.n ], [ %.merged70, %bb.ao ], [ %.merged70, %bb.ap ]
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.at

bb.as:                                            ; preds = %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.4 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.3, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit ]
  ret i1 %.4

bb.at:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.merged = phi { ptr, i32 } [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.merged69, %_ZNSt6vectorIlSaIlEED2Ev.exit117 ]
  resume { ptr, i32 } %.merged

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_123HandleRemoveItemCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::optional.9", align 8   ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp eq i64 %i.f, 64
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.i = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call fastcc void @_ZN12_GLOBAL__N_17GetListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefile(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(2952) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !42, !range !43, !noundef !39
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.n = load ptr, ptr %0, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.q = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6cmList12remove_itemsIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEERS_T_SG_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull %i.o, ptr %i.p)
          to label %bb.d unwind label %bb.h       ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !22, !noalias !214
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !47, !noalias !214
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16, !noalias !217 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !17, !noalias !217 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !20, !alias.scope !217
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !26, !alias.scope !217
  store i8 0, ptr %i.v, align 8, !tbaa !25, !alias.scope !217
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.t, ptr %i.s, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge unwind label %bb.h

._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge:   ; preds = %bb.f
  %.pre = load ptr, ptr %3, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre18 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

_ZNK6cmList9to_stringB5cxx11Ev.exit:              ; preds = %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge, %bb.e
  %i.x = phi i64 [ %.pre18, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ 0, %bb.e ]
  %i.y = phi ptr [ %.pre, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ %i.v, %bb.e ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 %i.x, ptr %i.y)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.z = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.i:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !25
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.af, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre19 = load i8, ptr %i.j, align 8, !tbaa !42, !range !43
  %i.al = trunc nuw i8 %.pre19 to i1
  store i8 0, ptr %i.j, align 8, !tbaa !42
  br i1 %i.al, label %bb.j, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.am = load ptr, ptr %2, align 8, !tbaa !17    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.am, %bb.j ] ; 3 uses
  %i.ap = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !25
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.j
  %i.av = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.am, %bb.j ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_129HandleRemoveDuplicatesCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::optional.9", align 8   ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 65                    ; 2 uses
  br i1 %i.h, label %bb.d, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 54, ptr %i.a, align 8, !tbaa !22
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %2, align 8, !tbaa !24
  %i.k = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.j, ptr noundef nonnull align 1 dereferenceable(54) @.str.42, i64 54, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 0, ptr %i.m, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.o = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.q = load i64, ptr %i.i, align 8, !tbaa !25
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.n

bb.b:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.c:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.c
  %i.w = load i64, ptr %i.i, align 8, !tbaa !25
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.s, %bb.b ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.t, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.z = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call fastcc void @_ZN12_GLOBAL__N_17GetListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefile(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(2952) %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !42, !range !43, !noundef !39
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ae = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6cmList17remove_duplicatesEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !22, !noalias !224
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !47, !noalias !224
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16, !noalias !227 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !17, !noalias !227 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !20, !alias.scope !227
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !26, !alias.scope !227
  store i8 0, ptr %i.aj, align 8, !tbaa !25, !alias.scope !227
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr %i.ah, ptr %i.ag, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge unwind label %bb.j

._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge:   ; preds = %bb.h
  %.pre = load ptr, ptr %4, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre29 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

_ZNK6cmList9to_stringB5cxx11Ev.exit:              ; preds = %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge, %bb.g
  %i.al = phi i64 [ %.pre29, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ 0, %bb.g ]
  %i.am = phi ptr [ %.pre, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ %i.aj, %bb.g ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 %i.al, ptr %i.am)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.an = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24

bb.j:                                             ; preds = %bb.h, %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.k:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.k
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !25
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.j
  %.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pre30 = load i8, ptr %i.aa, align 8, !tbaa !42, !range !43
  %i.az = trunc nuw i8 %.pre30 to i1
  store i8 0, ptr %i.aa, align 8, !tbaa !42
  br i1 %i.az, label %bb.l, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24
  %i.ba = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bi, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.ba, %bb.l ] ; 3 uses
  %i.bd = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !25
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.bc
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.l
  %i.bj = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.ba, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %i.h

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_122HandleTransformCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"struct.std::pair.170"], align 8 ; 12 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %3 = alloca [3 x %"struct.std::pair.170"], align 8 ; 12 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %4 = alloca [5 x %"struct.std::pair.170"], align 8 ; 18 uses
  %5 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %6 = alloca [3 x %"struct.std::pair.170"], align 8 ; 12 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::set.185", align 8      ; 21 uses
  %9 = alloca [8 x %struct.ActionDescriptor], align 8 ; 46 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::function.191", align 8 ; 10 uses
  %19 = alloca %struct.ActionDescriptor, align 8  ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::vector", align 8      ; 15 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %33 = alloca %"class.std::unique_ptr.200", align 8 ; 7 uses
  %34 = alloca %"class.std::vector.174", align 8  ; 12 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %36 = alloca %"class.std::unique_ptr.200", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.std::unique_ptr.200", align 8 ; 7 uses
  %i.m = alloca [3 x i64], align 8                ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %44 = alloca %"class.std::unique_ptr.200", align 8 ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %48 = alloca %"class.std::basic_string_view", align 8 ; 2 uses
  %49 = alloca %"class.std::optional.9", align 8  ; 14 uses
  %50 = alloca %"class.std::unique_ptr.200", align 8 ; 5 uses
  %51 = alloca %"class.std::unique_ptr.200", align 8 ; 4 uses
  %52 = alloca %"class.std::unique_ptr.200", align 8 ; 4 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %55 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.p = load ptr, ptr %0, align 8, !tbaa !17
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ult i64 %i.s, 65
  br i1 %i.t, label %.noexc.i, label %.lr.ph.i.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  store i64 57, ptr %i.l, align 8, !tbaa !22
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.v, ptr %7, align 8, !tbaa !24
  %i.w = load i64, ptr %i.l, align 8, !tbaa !22   ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.v, ptr noundef nonnull align 1 dereferenceable(57) @.str.43, i64 57, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.aa = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.u
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !25
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.gd

bb.b:                                             ; preds = %.noexc.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

bb.c:                                             ; preds = %.noexc
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286: ; preds = %bb.c
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !25
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286, %bb.b
  %.pn265 = phi { ptr, i32 } [ %i.ae, %bb.b ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286 ], [ %i.af, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ge

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ak, ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_122HandleTransformCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.ahp = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 3 uses
  %i.ahq = load i8, ptr %i.ahp, align 8, !tbaa !42, !range !43, !noundef !39
  %i.ahr = trunc nuw i8 %i.ahq to i1
  br i1 %i.ahr, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ahs = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.ahs, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 0, ptr nonnull @.str.36)
          to label %bb.fm unwind label %bb.ew

bb.ev:                                            ; preds = %bb.es
  %i.aht = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6cmList15transform_errorE
  br label %bb.fp

bb.ew:                                            ; preds = %bb.eu
  %i.ahu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6cmList15transform_errorE
  br label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit647

bb.ex:                                            ; preds = %bb.et
  br i1 %i.qx, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #25
  invoke void @_ZN6cmList17TransformSelector3NewEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.200") align 8 %50)
          to label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EEaSEOS4_.exit638 unwind label %bb.ez

_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EEaSEOS4_.exit638: ; preds = %bb.ey
  %i.ahv = load ptr, ptr %50, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.ahw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6cmList15transform_errorE
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  br label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit647

bb.fa:                                            ; preds = %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EEaSEOS4_.exit638, %bb.ex
  %.sroa.0741.3 = phi ptr [ %.sroa.0741.0.ph, %bb.ex ], [ %i.ahv, %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EEaSEOS4_.exit638 ] ; 3 uses
  %i.ahx = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.sroa.0741.3, i64 8
  store ptr %i.ahx, ptr %i.ahy, align 8, !tbaa !313
  %i.ahz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.aia = load i32, ptr %i.ahz, align 8, !tbaa !280 ; 2 uses
  %i.aib = icmp eq i32 %i.aia, 7
  br i1 %i.aib, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.aic = load ptr, ptr %23, align 8, !tbaa !46
  %i.aid = ptrtoint ptr %.sroa.0741.3 to i64
  store i64 %i.aid, ptr %51, align 8, !tbaa !305
  %i.aie = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6cmList9transformENS_15TransformActionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER10cmMakefileSt10unique_ptrINS_17TransformSelectorESt14default_deleteISC_EE(ptr noundef nonnull align 8 dereferenceable(24) %49, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(32) %i.aic, ptr noundef nonnull align 8 dereferenceable(2952) %i.ahx, ptr noundef nonnull align 8 %51)
          to label %bb.fc unwind label %bb.fd     ; 0 uses

bb.fc:                                            ; preds = %bb.fb
  %i.aif = load ptr, ptr %51, align 8, !tbaa !305 ; 2 uses
  %.not.i642 = icmp eq ptr %i.aif, null
  br i1 %.not.i642, label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit644, label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit644.sink.split

bb.fd:                                            ; preds = %bb.fb
  %i.aig = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6cmList15transform_errorE ; 2 uses
  %i.aih = load ptr, ptr %51, align 8, !tbaa !305 ; 3 uses
  %.not.i645 = icmp eq ptr %i.aih, null
  br i1 %.not.i645, label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit647, label %_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i646

_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i646: ; preds = %bb.fd
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !52
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 8
  %i.aik = load ptr, ptr %i.aij, align 8
  call void %i.aik(ptr noundef nonnull align 8 dereferenceable(16) %i.aih) #25, !inline_history !262
  br label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit647

bb.fe:                                            ; preds = %bb.fa
  %i.ail = ptrtoint ptr %.sroa.0741.3 to i64
  store i64 %i.ail, ptr %52, align 8, !tbaa !305
  %i.aim = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6cmList9transformENS_15TransformActionERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt10unique_ptrINS_17TransformSelectorESt14default_deleteISD_EE(ptr noundef nonnull align 8 dereferenceable(24) %49, i32 noundef %i.aia, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 %52)
          to label %bb.ff unwind label %bb.fg     ; 0 uses

bb.ff:                                            ; preds = %bb.fe
  %i.ain = load ptr, ptr %52, align 8, !tbaa !305 ; 2 uses
  %.not.i648 = icmp eq ptr %i.ain, null
  br i1 %.not.i648, label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit644, label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit644.sink.split

bb.fg:                                            ; preds = %bb.fe
  %i.aio = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6cmList15transform_errorE ; 2 uses
  %i.aip = load ptr, ptr %52, align 8, !tbaa !305 ; 3 uses
  %.not.i651 = icmp eq ptr %i.aip, null
  br i1 %.not.i651, label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit647, label %_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i652

_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i652: ; preds = %bb.fg
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !52
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  %i.ais = load ptr, ptr %i.air, align 8
  call void %i.ais(ptr noundef nonnull align 8 dereferenceable(16) %i.aip) #25, !inline_history !262
  br label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit647

_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit644.sink.split: ; preds = %bb.ff, %bb.fc
  %.sink1540 = phi ptr [ %i.aif, %bb.fc ], [ %i.ain, %bb.ff ] ; 2 uses
  %i.ait = load ptr, ptr %.sink1540, align 8, !tbaa !52
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %i.aiv = load ptr, ptr %i.aiu, align 8
  call void %i.aiv(ptr noundef nonnull align 8 dereferenceable(16) %.sink1540) #25
  br label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit644

_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit644: ; preds = %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit644.sink.split, %bb.ff, %bb.fc
  %i.aiw = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !22, !noalias !314
  %.sroa.2.0.copyload.i654 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !47, !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.aix = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !16, !noalias !317 ; 2 uses
  %i.aiz = load ptr, ptr %49, align 8, !tbaa !17, !noalias !317 ; 2 uses
  %i.aja = icmp eq ptr %i.aiy, %i.aiz
  br i1 %i.aja, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit644
  %i.ajb = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 3 uses
  store ptr %i.ajb, ptr %53, align 8, !tbaa !20, !alias.scope !317
  %i.ajc = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 0, ptr %i.ajc, align 8, !tbaa !26, !alias.scope !317
  store i8 0, ptr %i.ajb, align 8, !tbaa !25, !alias.scope !317
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

bb.fi:                                            ; preds = %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit644
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %53, ptr %i.aiz, ptr %i.aiy, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i654)
          to label %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge unwind label %bb.fk

._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge:   ; preds = %bb.fi
  %.pre1140 = load ptr, ptr %53, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %53, i64 8
  %.pre1141 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

_ZNK6cmList9to_stringB5cxx11Ev.exit:              ; preds = %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge, %bb.fh
  %i.ajd = phi i64 [ %.pre1141, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ 0, %bb.fh ]
  %i.aje = phi ptr [ %.pre1140, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ %i.ajb, %bb.fh ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.aiw, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 %i.ajd, ptr %i.aje)
          to label %bb.fj unwind label %bb.fl

bb.fj:                                            ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.ajf = load ptr, ptr %53, align 8, !tbaa !24  ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.ajh = icmp eq ptr %i.ajf, %i.ajg
  br i1 %i.ajh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658: ; preds = %bb.fj
  %i.aji = load i64, ptr %i.ajg, align 8, !tbaa !25
  %i.ajj = add i64 %i.aji, 1
  call void @_ZdlPvm(ptr noundef %i.ajf, i64 noundef %i.ajj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  br label %bb.fm

bb.fk:                                            ; preds = %bb.fi
  %i.ajk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6cmList15transform_errorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663

bb.fl:                                            ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.ajl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6cmList15transform_errorE ; 2 uses
  %i.ajm = load ptr, ptr %53, align 8, !tbaa !24  ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.ajo = icmp eq ptr %i.ajm, %i.ajn
  br i1 %i.ajo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661: ; preds = %bb.fl
  %i.ajp = load i64, ptr %i.ajn, align 8, !tbaa !25
  %i.ajq = add i64 %i.ajp, 1
  call void @_ZdlPvm(ptr noundef %i.ajm, i64 noundef %i.ajq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661, %bb.fk
  %.pn228 = phi { ptr, i32 } [ %i.ajk, %bb.fk ], [ %i.ajl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661 ], [ %i.ajl, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  br label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit647

bb.fm:                                            ; preds = %bb.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660
  %.sroa.0741.5 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660 ], [ %.sroa.0741.0.ph, %bb.eu ]
  %i.ajr = load i8, ptr %i.ahp, align 8, !tbaa !42, !range !43, !noundef !39
  %i.ajs = trunc nuw i8 %i.ajr to i1
  store i8 0, ptr %i.ahp, align 8, !tbaa !42
  br i1 %i.ajs, label %bb.fn, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.fn:                                            ; preds = %bb.fm
  %i.ajt = load ptr, ptr %49, align 8, !tbaa !17  ; 3 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.ajt, %i.ajv
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.fn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.akb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.ajt, %bb.fn ] ; 3 uses
  %i.ajw = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ajy = icmp eq ptr %i.ajw, %i.ajx
  br i1 %i.ajy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ajz = load i64, ptr %i.ajx, align 8, !tbaa !25
  %i.aka = add i64 %i.ajz, 1
  call void @_ZdlPvm(ptr noundef %i.ajw, i64 noundef %i.aka) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.akb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.akb, %i.ajv
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %49, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.fn
  %i.akc = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.ajt, %bb.fn ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.akc, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.fo

bb.fo:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.akd = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !45
  %i.akf = ptrtoint ptr %i.ake to i64
  %i.akg = ptrtoint ptr %i.akc to i64
  %i.akh = sub i64 %i.akf, %i.akg
  call void @_ZdlPvm(ptr noundef nonnull %i.akc, i64 noundef %i.akh) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %bb.fm, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #25
  br label %.thread829

_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit647: ; preds = %_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i652, %bb.fg, %_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i646, %bb.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663, %bb.ez, %bb.ew
  %.sroa.0741.6 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663 ], [ %.sroa.0741.0.ph, %bb.ew ], [ null, %_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i646 ], [ null, %bb.ez ], [ null, %bb.fd ], [ null, %bb.fg ], [ null, %_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i652 ]
  %.pn228.pn = phi { ptr, i32 } [ %.pn228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663 ], [ %i.ahu, %bb.ew ], [ %i.aig, %_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i646 ], [ %i.ahw, %bb.ez ], [ %i.aig, %bb.fd ], [ %i.aio, %bb.fg ], [ %i.aio, %_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i652 ]
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %49) #25
  br label %bb.fp

bb.fp:                                            ; preds = %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit647, %bb.ev
  %.sroa.0741.7 = phi ptr [ %.sroa.0741.6, %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit647 ], [ %.sroa.0741.0.ph, %bb.ev ]
  %.pn228.pn.pn = phi { ptr, i32 } [ %.pn228.pn, %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit647 ], [ %i.aht, %bb.ev ] ; 2 uses
  %.28 = extractvalue { ptr, i32 } %.pn228.pn.pn, 0
  %.28160 = extractvalue { ptr, i32 } %.pn228.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #25
  br label %.loopexit844

.loopexit844:                                     ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i569, %.body544, %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, %bb.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584, %bb.dz, %bb.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, %bb.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, %_ZNSt6vectorIlSaIlEED2Ev.exit529, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485
  %.sroa.0741.8 = phi ptr [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485 ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495 ], [ %.sroa.0741.0.ph, %bb.bf ], [ %.sroa.0741.0.ph, %_ZNSt6vectorIlSaIlEED2Ev.exit529 ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584 ], [ %.sroa.0741.0.ph, %bb.dz ], [ %.sroa.0741.0.ph, %bb.dv ], [ %.sroa.0741.7, %bb.fp ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565 ], [ %.sroa.0741.0.ph, %bb.dg ], [ %.sroa.0741.0.ph, %.body544 ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539 ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601 ], [ %.sroa.0741.0.ph, %bb.eh ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ %.sroa.0741.0.ph, %bb.em ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635 ], [ %.sroa.0741.0.ph, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i569 ] ; 4 uses
  %.29161 = phi i32 [ %.12144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485 ], [ %.13145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495 ], [ %i.ui, %bb.bf ], [ %.17149, %_ZNSt6vectorIlSaIlEED2Ev.exit529 ], [ %.20152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584 ], [ %i.aec, %bb.dz ], [ %i.adb, %bb.dv ], [ %.28160, %bb.fp ], [ %.19151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565 ], [ %i.abl, %bb.dg ], [ %i.aab, %.body544 ], [ %.18150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539 ], [ %.22154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601 ], [ %i.afj, %bb.eh ], [ %.23155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ %i.agl, %bb.em ], [ %.25157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635 ], [ %i.acj, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i569 ] ; 2 uses
  %.29 = phi ptr [ %.12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485 ], [ %.13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495 ], [ %i.uh, %bb.bf ], [ %.17, %_ZNSt6vectorIlSaIlEED2Ev.exit529 ], [ %.20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584 ], [ %i.aeb, %bb.dz ], [ %i.ada, %bb.dv ], [ %.28, %bb.fp ], [ %.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565 ], [ %i.abk, %bb.dg ], [ %i.aaa, %.body544 ], [ %.18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539 ], [ %.22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601 ], [ %i.afi, %bb.eh ], [ %.23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ %i.agk, %bb.em ], [ %.25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635 ], [ %i.aci, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i569 ] ; 2 uses
  %i.aki = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6cmList15transform_errorE) #25
  %i.akj = icmp eq i32 %.29161, %i.aki
  br i1 %i.akj, label %bb.fq, label %bb.fx

bb.fq:                                            ; preds = %.loopexit844
  %i.akk = call ptr @__cxa_begin_catch(ptr %.29) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #25
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !52
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 16
  %i.akn = load ptr, ptr %i.akm, align 8
  %i.ako = call noundef ptr %i.akn(ptr noundef nonnull align 8 dereferenceable(16) %i.akk) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef %i.ako, ptr noundef nonnull align 1 dereferenceable(1) %55)
          to label %bb.fr unwind label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.qw, ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit665 unwind label %bb.ft

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit665: ; preds = %bb.fr
  %i.akp = load ptr, ptr %54, align 8, !tbaa !24  ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.akr = icmp eq ptr %i.akp, %i.akq
  br i1 %i.akr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i666

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i666: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit665
  %i.aks = load i64, ptr %i.akq, align 8, !tbaa !25
  %i.akt = add i64 %i.aks, 1
  call void @_ZdlPvm(ptr noundef %i.akp, i64 noundef %i.akt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit665, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i666
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  invoke void @__cxa_end_catch()
          to label %.thread829 unwind label %bb.fu

bb.fs:                                            ; preds = %bb.fq
  %i.aku = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671

bb.ft:                                            ; preds = %bb.fr
  %i.akv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akw = load ptr, ptr %54, align 8, !tbaa !24  ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.aky = icmp eq ptr %i.akw, %i.akx
  br i1 %i.aky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669: ; preds = %bb.ft
  %i.akz = load i64, ptr %i.akx, align 8, !tbaa !25
  %i.ala = add i64 %i.akz, 1
  call void @_ZdlPvm(ptr noundef %i.akw, i64 noundef %i.ala) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669, %bb.fs
  %.pn257 = phi { ptr, i32 } [ %i.aku, %bb.fs ], [ %i.akv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669 ], [ %i.akv, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  invoke void @__cxa_end_catch()
          to label %bb.fv unwind label %bb.gf

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668
  %i.alb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671, %bb.fu
  %.pn259 = phi { ptr, i32 } [ %i.alb, %bb.fu ], [ %.pn257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671 ] ; 2 uses
  %.31 = extractvalue { ptr, i32 } %.pn259, 0
  %.31163 = extractvalue { ptr, i32 } %.pn259, 1
  br label %bb.fx

.thread829:                                       ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482
  %.sroa.0741.9 = phi ptr [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482 ], [ %.sroa.0741.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668 ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492 ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555 ], [ %.sroa.0741.5, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536 ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598 ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614 ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629 ], [ %.sroa.0741.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581 ], [ %.sroa.0741.1, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %.4 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555 ], [ true, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581 ], [ false, %_ZNSt6vectorIlSaIlEED2Ev.exit ]
  %i.alc = load ptr, ptr %29, align 8, !tbaa !24  ; 2 uses
  %i.ald = icmp eq ptr %i.alc, %i.qd
  br i1 %i.ald, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672: ; preds = %.thread829
  %i.ale = load i64, ptr %i.qd, align 8, !tbaa !25
  %i.alf = add i64 %i.ale, 1
  call void @_ZdlPvm(ptr noundef %i.alc, i64 noundef %i.alf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674: ; preds = %.thread829, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %.not.i675 = icmp eq ptr %.sroa.0741.9, null
  br i1 %.not.i675, label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit677, label %_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i676

_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i676: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674
  %i.alg = load ptr, ptr %.sroa.0741.9, align 8, !tbaa !52
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  %i.ali = load ptr, ptr %i.alh, align 8
  call void %i.ali(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0741.9) #25, !inline_history !262
  br label %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit677

_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit677: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674, %_ZNKSt14default_deleteIN6cmList17TransformSelectorEEclEPS1_.exit.i676
  %i.alj = load ptr, ptr %28, align 8, !tbaa !24  ; 2 uses
  %i.alk = icmp eq ptr %i.alj, %i.qa
  br i1 %i.alk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678: ; preds = %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit677
  %i.all = load i64, ptr %i.qa, align 8, !tbaa !25
  %i.alm = add i64 %i.all, 1
  call void @_ZdlPvm(ptr noundef %i.alj, i64 noundef %i.alm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680: ; preds = %_ZNSt10unique_ptrIN6cmList17TransformSelectorESt14default_deleteIS1_EED2Ev.exit677, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  %i.aln = load ptr, ptr %27, align 8, !tbaa !24  ; 2 uses
  %i.alo = icmp eq ptr %i.aln, %i.px
  br i1 %i.alo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680
  %i.alp = load i64, ptr %i.px, align 8, !tbaa !25
  %i.alq = add i64 %i.alp, 1
  call void @_ZdlPvm(ptr noundef %i.aln, i64 noundef %i.alq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.alr = load ptr, ptr %26, align 8, !tbaa !24  ; 2 uses
  %i.als = icmp eq ptr %i.alr, %i.pu
  br i1 %i.als, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683
  %i.alt = load i64, ptr %i.pu, align 8, !tbaa !25
  %i.alu = add i64 %i.alt, 1
  call void @_ZdlPvm(ptr noundef %i.alr, i64 noundef %i.alu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_117HandleSortCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
  %i.pu = load i64, ptr %i.ps, align 8, !tbaa !25
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  invoke void @__cxa_end_catch()
          to label %bb.cv unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cf
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

bb.ci:                                            ; preds = %bb.cg
  %i.px = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.py = load ptr, ptr %27, align 8, !tbaa !24   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373: ; preds = %bb.ci
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !25
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373, %bb.ch
  %.pn147 = phi { ptr, i32 } [ %i.pw, %bb.ch ], [ %i.px, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373 ], [ %i.px, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  invoke void @__cxa_end_catch()
          to label %bb.cy unwind label %bb.dd

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.ck:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 12, i1 false)
  %i.qe = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 7 uses
  store ptr %i.qf, ptr %i.qe, align 8, !tbaa !20
  %i.qg = load ptr, ptr %i.np, align 8, !tbaa !24 ; 2 uses
  %i.qh = load i64, ptr %i.nq, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.qh, ptr %i.a, align 8, !tbaa !22
  %i.qi = icmp ugt i64 %i.qh, 15
  br i1 %i.qi, label %.noexc.i.i377, label %._crit_edge.i.i.i376

.noexc.i.i377:                                    ; preds = %bb.ck
  %i.qj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.qe, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc378 unwind label %bb.cs ; 2 uses

.noexc378:                                        ; preds = %.noexc.i.i377
  store ptr %i.qj, ptr %i.qe, align 8, !tbaa !24
  %i.qk = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.qk, ptr %i.qf, align 8, !tbaa !25
  br label %._crit_edge.i.i.i376

._crit_edge.i.i.i376:                             ; preds = %.noexc378, %bb.ck
  %i.ql = phi ptr [ %i.qj, %.noexc378 ], [ %i.qf, %bb.ck ] ; 2 uses
  switch i64 %i.qh, label %bb.cm [
    i64 1, label %bb.cl
    i64 0, label %bb.cn
  ]

bb.cl:                                            ; preds = %._crit_edge.i.i.i376
  %i.qm = load i8, ptr %i.qg, align 1, !tbaa !25
  store i8 %i.qm, ptr %i.ql, align 1, !tbaa !25
  br label %bb.cn

bb.cm:                                            ; preds = %._crit_edge.i.i.i376
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ql, ptr align 1 %i.qg, i64 %i.qh, i1 false)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %._crit_edge.i.i.i376
  %i.qn = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i64 %i.qn, ptr %i.qo, align 8, !tbaa !26
  %i.qp = load ptr, ptr %i.qe, align 8, !tbaa !24
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qn
  store i8 0, ptr %i.qq, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.qr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6cmList4sortENS_17SortConfigurationE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 %30)
          to label %bb.co unwind label %bb.ct     ; 2 uses

bb.co:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %.sroa.0.0.copyload.i380 = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !22, !noalias !411
  %.sroa.2.0.copyload.i381 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !47, !noalias !411
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !16, !noalias !414 ; 2 uses
  %i.qu = load ptr, ptr %i.qr, align 8, !tbaa !17, !noalias !414 ; 2 uses
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.qw = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  store ptr %i.qw, ptr %29, align 8, !tbaa !20, !alias.scope !414
  %i.qx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.qx, align 8, !tbaa !26, !alias.scope !414
  store i8 0, ptr %i.qw, align 8, !tbaa !25, !alias.scope !414
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit383

bb.cq:                                            ; preds = %bb.co
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr %i.qu, ptr %i.qt, i64 %.sroa.0.0.copyload.i380, ptr %.sroa.2.0.copyload.i381)
          to label %._ZNK6cmList9to_stringB5cxx11Ev.exit383_crit_edge unwind label %bb.ct

._ZNK6cmList9to_stringB5cxx11Ev.exit383_crit_edge: ; preds = %bb.cq
  %.pre517 = load ptr, ptr %29, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.pre518 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit383

_ZNK6cmList9to_stringB5cxx11Ev.exit383:           ; preds = %._ZNK6cmList9to_stringB5cxx11Ev.exit383_crit_edge, %bb.cp
  %i.qy = phi i64 [ %.pre518, %._ZNK6cmList9to_stringB5cxx11Ev.exit383_crit_edge ], [ 0, %bb.cp ]
  %i.qz = phi ptr [ %.pre517, %._ZNK6cmList9to_stringB5cxx11Ev.exit383_crit_edge ], [ %i.qw, %bb.cp ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.no, ptr noundef nonnull align 8 dereferenceable(32) %i.ni, i64 %i.qy, ptr %i.qz)
          to label %bb.cr unwind label %bb.cu

bb.cr:                                            ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit383
  %i.ra = load ptr, ptr %29, align 8, !tbaa !24   ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.rc = icmp eq ptr %i.ra, %i.rb
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %bb.cr
  %i.rd = load i64, ptr %i.rb, align 8, !tbaa !25
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.re) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386
  %i.rf = load ptr, ptr %i.qe, align 8, !tbaa !24 ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.qf
  br i1 %i.rg, label %_ZN6cmList17SortConfigurationD2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388
  %i.rh = load i64, ptr %i.qf, align 8, !tbaa !25
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.ri) #26
  br label %_ZN6cmList17SortConfigurationD2Ev.exit391

_ZN6cmList17SortConfigurationD2Ev.exit391:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i389
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.cv

bb.cs:                                            ; preds = %.noexc.i.i377
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6cmList17SortConfigurationD2Ev.exit397

bb.ct:                                            ; preds = %bb.cq, %bb.cn
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

bb.cu:                                            ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit383
  %i.rl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rm = load ptr, ptr %29, align 8, !tbaa !24   ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ro = icmp eq ptr %i.rm, %i.rn
  br i1 %i.ro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392: ; preds = %bb.cu
  %i.rp = load i64, ptr %i.rn, align 8, !tbaa !25
  %i.rq = add i64 %i.rp, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392, %bb.ct
  %.pn = phi { ptr, i32 } [ %i.rk, %bb.ct ], [ %i.rl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392 ], [ %i.rl, %bb.cu ] ; 2 uses
  %i.rr = load ptr, ptr %i.qe, align 8, !tbaa !24 ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.qf
  br i1 %i.rs, label %_ZN6cmList17SortConfigurationD2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394
  %i.rt = load i64, ptr %i.qf, align 8, !tbaa !25
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.ru) #26
  br label %_ZN6cmList17SortConfigurationD2Ev.exit397

_ZN6cmList17SortConfigurationD2Ev.exit397:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i395, %bb.cs
  %.pn.pn = phi { ptr, i32 } [ %i.rj, %bb.cs ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i395 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.cy

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %bb.br, %_ZN6cmList17SortConfigurationD2Ev.exit391, %_ZN6cmList17SortConfigurationD2Ev.exit
  %.6 = phi i1 [ true, %_ZN6cmList17SortConfigurationD2Ev.exit ], [ true, %bb.br ], [ true, %_ZN6cmList17SortConfigurationD2Ev.exit391 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ]
  %i.rv = load i8, ptr %i.nk, align 8, !tbaa !42, !range !43, !noundef !39
  %i.rw = trunc nuw i8 %i.rv to i1
  store i8 0, ptr %i.nk, align 8, !tbaa !42
  br i1 %i.rw, label %bb.cw, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.cw:                                            ; preds = %bb.cv
  %i.rx = load ptr, ptr %24, align 8, !tbaa !17   ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.rx, %i.rz
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.cw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.sf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.rx, %bb.cw ] ; 3 uses
  %i.sa = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.sc = icmp eq ptr %i.sa, %i.sb
  br i1 %i.sc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.sd = load i64, ptr %i.sb, align 8, !tbaa !25
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.se) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.sf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.sf, %i.rz
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %24, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.cw
  %i.sg = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.rx, %bb.cw ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.sg, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.sh = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !45
  %i.sj = ptrtoint ptr %i.si to i64
  %i.sk = ptrtoint ptr %i.sg to i64
  %i.sl = sub i64 %i.sj, %i.sk
  call void @_ZdlPvm(ptr noundef nonnull %i.sg, i64 noundef %i.sl) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %bb.cv, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %.critedge195

bb.cy:                                            ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, %_ZN6cmList17SortConfigurationD2Ev.exit397, %_ZN6cmList17SortConfigurationD2Ev.exit367
  %.merged189 = phi { ptr, i32 } [ %.pn.pn, %_ZN6cmList17SortConfigurationD2Ev.exit397 ], [ %.pn144.pn, %_ZN6cmList17SortConfigurationD2Ev.exit367 ], [ %i.qd, %bb.cj ], [ %.pn147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375 ]
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %24) #25
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.bs
  %.merged188 = phi { ptr, i32 } [ %.merged189, %bb.cy ], [ %i.nn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.da

.critedge195:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit
  %.7 = phi i1 [ %.6, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ]
  %i.sm = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.ab
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %.critedge195
  %i.so = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %.critedge195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.sq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !24 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.st = icmp eq ptr %i.sr, %i.ss
  br i1 %i.st, label %_ZN6cmList17SortConfigurationD2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i401: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  %i.su = load i64, ptr %i.ss, align 8, !tbaa !25
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.sv) #26
  br label %_ZN6cmList17SortConfigurationD2Ev.exit403

_ZN6cmList17SortConfigurationD2Ev.exit403:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.db

bb.da:                                            ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356, %bb.cz
  %.merged187 = phi { ptr, i32 } [ %.merged188, %bb.cz ], [ %.pn181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.pn177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %.pn175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ], [ %.pn172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.pn169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ], [ %.pn167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %.pn164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301 ], [ %.pn162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313 ], [ %.pn160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ], [ %.pn157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ], [ %.pn155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339 ], [ %i.bv, %bb.h ], [ %.pn153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ], [ %.pn151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356 ] ; 2 uses
  %i.sw = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.ab
  br i1 %i.sx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %bb.da
  %i.sy = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.sz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %bb.g
  %.merged186 = phi { ptr, i32 } [ %i.bu, %bb.g ], [ %.merged187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ], [ %.merged187, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ta = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !24 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.td = icmp eq ptr %i.tb, %i.tc
  br i1 %i.td, label %_ZN6cmList17SortConfigurationD2Ev.exit409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i407: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406
  %i.te = load i64, ptr %i.tc, align 8, !tbaa !25
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tb, i64 noundef %i.tf) #26
  br label %_ZN6cmList17SortConfigurationD2Ev.exit409

_ZN6cmList17SortConfigurationD2Ev.exit409:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i407
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.dc

bb.db:                                            ; preds = %_ZN6cmList17SortConfigurationD2Ev.exit403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.8 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.7, %_ZN6cmList17SortConfigurationD2Ev.exit403 ]
  ret i1 %.8

bb.dc:                                            ; preds = %_ZN6cmList17SortConfigurationD2Ev.exit409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  %.merged = phi { ptr, i32 } [ %.pn184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %.merged186, %_ZN6cmList17SortConfigurationD2Ev.exit409 ]
  resume { ptr, i32 } %.merged

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375
  %i.tg = landingpad { ptr, i32 }
          catch ptr null
  %i.th = extractvalue { ptr, i32 } %i.tg, 0
  call void @__clang_call_terminate(ptr %i.th) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_120HandleSublistCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"struct.std::pair.170"], align 8 ; 12 uses
  %3 = alloca [3 x %"struct.std::pair.170"], align 8 ; 12 uses
  %4 = alloca [3 x %"struct.std::pair.170"], align 8 ; 12 uses
  %5 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::optional.9", align 8   ; 14 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %class.cmList, align 8             ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %.not = icmp eq i64 %i.i, 160
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ashr exact i64 %i.i, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.k = add nsw i64 %i.j, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !439
  store i64 45, ptr %4, align 8, !tbaa !22, !alias.scope !440, !noalias !439
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.95, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !47, !alias.scope !440, !noalias !439
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.l, align 8, !tbaa !49, !alias.scope !440, !noalias !439
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !439
  call void @_ZN10cmAlphaNumC1Em(ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef %i.k), !noalias !439
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.n = load ptr, ptr %5, align 8, !tbaa !54, !noalias !442 ; 4 uses
  %.not.i.i3.i = icmp eq ptr %i.n, null           ; 2 uses
  %.sroa.3.0..sroa_idx.i.i4.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pn.in.i.i6.i = select i1 %.not.i.i3.i, ptr %.sroa.3.0..sroa_idx.i.i4.i, ptr %i.n
  %.pn.i.i7.i = load ptr, ptr %.pn.in.i.i6.i, align 8, !tbaa !47, !noalias !442
  %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i3.i, ptr %5, ptr %i.n
  %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i9.i = load i64, ptr %.pn3.i.i5.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !22, !noalias !442
  store i64 %.pn2.i.i9.i, ptr %i.m, align 8, !tbaa !22, !alias.scope !441, !noalias !439
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %.pn.i.i7.i, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !47, !alias.scope !441, !noalias !439
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.n, ptr %i.o, align 8, !tbaa !49, !alias.scope !441, !noalias !439
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 8, ptr %i.p, align 8, !tbaa !22, !alias.scope !443, !noalias !439
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @.str.35, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !tbaa !47, !alias.scope !443, !noalias !439
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr null, ptr %i.q, align 8, !tbaa !49, !alias.scope !443, !noalias !439
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !439
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %6)
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_120HandleSublistCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
  %i.dq = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit88
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !25
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aq

bb.ab:                                            ; preds = %bb.z
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.ac:                                            ; preds = %bb.aa
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.ac
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !25
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.ab
  %.pn51 = phi { ptr, i32 } [ %i.dv, %bb.ab ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %i.dw, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ar

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.ec = zext nneg i32 %i.cr to i64
  %i.ed = sext i32 %i.dn to i64
  invoke void @_ZNK6cmList7sublistEmm(ptr dead_on_unwind nonnull writable sret(%class.cmList) align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ec, i64 noundef %i.ed)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ee = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNK6cmList9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ef = load ptr, ptr %13, align 8, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !26
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 %i.eh, ptr %i.ef)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ei = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ag
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !25
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aq

bb.ah:                                            ; preds = %bb.ad
  %i.en = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ae
  %i.eo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.aj:                                            ; preds = %bb.af
  %i.ep = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range         ; 2 uses
  %i.eq = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.aj
  %i.et = load i64, ptr %i.er, align 8, !tbaa !25
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.ai
  %.pn44 = phi { ptr, i32 } [ %i.eo, %bb.ai ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.ep, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #25
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.ah
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.en, %bb.ah ] ; 3 uses
  %.535 = extractvalue { ptr, i32 } %.pn44.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ev = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #25
  %i.ew = icmp eq i32 %.535, %i.ev
  br i1 %i.ew, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %.5 = extractvalue { ptr, i32 } %.pn44.pn, 0
  %i.ex = call ptr @__cxa_begin_catch(ptr %.5) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call noundef ptr %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.fb, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit101 unwind label %bb.ao

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit101: ; preds = %bb.am
  %i.fd = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit101
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !25
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.ao:                                            ; preds = %bb.am
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ao
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !25
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.an
  %.pn47 = phi { ptr, i32 } [ %i.fi, %bb.an ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.fj, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  invoke void @__cxa_end_catch()
          to label %bb.ar unwind label %bb.ay

bb.ap:                                            ; preds = %bb.h, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.merged56 = phi { ptr, i32 } [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn44.pn, %bb.ak ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.fp, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.av

bb.as:                                            ; preds = %bb.f, %bb.aq
  %.1 = phi i1 [ %.0, %bb.aq ], [ true, %bb.f ]
  %i.fq = load i8, ptr %i.ag, align 8, !tbaa !42, !range !43, !noundef !39
  %i.fr = trunc nuw i8 %i.fq to i1
  store i8 0, ptr %i.ag, align 8, !tbaa !42
  br i1 %i.fr, label %bb.at, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.at:                                            ; preds = %bb.as
  %i.fs = load ptr, ptr %7, align 8, !tbaa !17    ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.fs, %i.fu
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.at, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ga, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.fs, %bb.at ] ; 3 uses
  %i.fv = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !25
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ga, %i.fu
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.at
  %i.gb = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.fs, %bb.at ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !45
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gb to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gg) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %bb.as, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aw

bb.av:                                            ; preds = %bb.ar, %bb.g
  %.merged55 = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %.merged56, %bb.ar ]
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.2 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.1, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit ]
  ret i1 %.2

bb.ax:                                            ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.merged = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.merged55, %bb.av ]
  resume { ptr, i32 } %.merged

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_120HandleReverseCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::optional.9", align 8   ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 65                    ; 2 uses
  br i1 %i.h, label %bb.d, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 44, ptr %i.a, align 8, !tbaa !22
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %2, align 8, !tbaa !24
  %i.k = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.j, ptr noundef nonnull align 1 dereferenceable(44) @.str.100, i64 44, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 0, ptr %i.m, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.o = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.q = load i64, ptr %i.i, align 8, !tbaa !25
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.m

bb.b:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.c:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.c
  %i.w = load i64, ptr %i.i, align 8, !tbaa !25
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.s, %bb.b ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.t, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.z = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call fastcc void @_ZN12_GLOBAL__N_17GetListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefile(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(2952) %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !42, !range !43, !noundef !39
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ae = load ptr, ptr %3, align 8, !tbaa !46    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46 ; 3 uses
  %i.ah = icmp ne ptr %i.ae, %i.ag
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %i.ag, i64 -32 ; 2 uses
  %i.ai = icmp ult ptr %i.ae, %.sroa.0.08.i.i.i
  %or.cond.i.i.i = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZN6cmList7reverseEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %bb.e ] ; 2 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.ae, %bb.e ] ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i.i.i) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 32 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -32 ; 2 uses
  %i.ak = icmp ult ptr %i.aj, %.sroa.0.0.i.i.i
  br i1 %i.ak, label %.lr.ph.i.i.i, label %_ZN6cmList7reverseEv.exit.loopexit, !llvm.loop !452

_ZN6cmList7reverseEv.exit.loopexit:               ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !16, !noalias !459
  %.pre29 = load ptr, ptr %3, align 8, !tbaa !17, !noalias !459
  br label %_ZN6cmList7reverseEv.exit

_ZN6cmList7reverseEv.exit:                        ; preds = %_ZN6cmList7reverseEv.exit.loopexit, %bb.e
  %i.al = phi ptr [ %.pre29, %_ZN6cmList7reverseEv.exit.loopexit ], [ %i.ae, %bb.e ] ; 2 uses
  %i.am = phi ptr [ %.pre, %_ZN6cmList7reverseEv.exit.loopexit ], [ %i.ag, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !22, !noalias !460
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !47, !noalias !460
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.an = icmp eq ptr %i.am, %i.al
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6cmList7reverseEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ao, ptr %4, align 8, !tbaa !20, !alias.scope !459
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !26, !alias.scope !459
  store i8 0, ptr %i.ao, align 8, !tbaa !25, !alias.scope !459
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

bb.g:                                             ; preds = %_ZN6cmList7reverseEv.exit
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr %i.al, ptr %i.am, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge unwind label %bb.i

._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge:   ; preds = %bb.g
  %.pre30 = load ptr, ptr %4, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre31 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

_ZNK6cmList9to_stringB5cxx11Ev.exit:              ; preds = %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge, %bb.f
  %i.aq = phi i64 [ %.pre31, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ 0, %bb.f ]
  %i.ar = phi ptr [ %.pre30, %._ZNK6cmList9to_stringB5cxx11Ev.exit_crit_edge ], [ %i.ao, %bb.f ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 %i.aq, ptr %i.ar)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.as = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.h
  %i.av = load i64, ptr %i.at, align 8, !tbaa !25
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24

bb.i:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.j:                                             ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !25
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.i ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.ay, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pre32 = load i8, ptr %i.aa, align 8, !tbaa !42, !range !43
  %i.be = trunc nuw i8 %.pre32 to i1
  store i8 0, ptr %i.aa, align 8, !tbaa !42
  br i1 %i.be, label %bb.k, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24
  %i.bf = load ptr, ptr %3, align 8, !tbaa !17    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.k ] ; 3 uses
  %i.bi = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !25
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.k
  %i.bo = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.bf, %bb.k ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !45
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %i.h

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119HandleFilterCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::optional.9", align 8   ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 5                   ; 2 uses
  %i.k = icmp ult i64 %i.j, 2
  br i1 %i.k, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 51, ptr %i.c, align 8, !tbaa !22
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %2, align 8, !tbaa !24
  %i.n = load i64, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.m, ptr noundef nonnull align 1 dereferenceable(51) @.str.101, i64 51, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 0, ptr %i.p, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.r = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.l
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = load i64, ptr %i.l, align 8, !tbaa !25
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ay

bb.b:                                             ; preds = %.noexc.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.c:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.c
  %i.z = load i64, ptr %i.l, align 8, !tbaa !25
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.b
  %.pn99 = phi { ptr, i32 } [ %i.v, %bb.b ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %i.w, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %i.ab = icmp eq i64 %i.i, 64
  br i1 %i.ab, label %.noexc.i110, label %bb.g

.noexc.i110:                                      ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 56, ptr %i.b, align 8, !tbaa !22
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc111 unwind label %bb.e  ; 3 uses

.noexc111:                                        ; preds = %.noexc.i110
  store ptr %i.ad, ptr %3, align 8, !tbaa !24
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !22  ; 3 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.ad, ptr noundef nonnull align 1 dereferenceable(56) @.str.102, i64 56, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 0, ptr %i.ag, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit114 unwind label %bb.f

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit114: ; preds = %.noexc111
  %i.ai = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ac
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit114
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ay

bb.e:                                             ; preds = %.noexc.i110
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.f:                                             ; preds = %.noexc111
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ac
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_119HandleFilterCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EER17cmExecutionStatus:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.af
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !25
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176, %bb.ae
  %.pn84 = phi { ptr, i32 } [ %i.gz, %bb.ae ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176 ], [ %i.ha, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.au

bb.ag:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170.thread
  %i.hg = getelementptr inbounds nuw i8, ptr %i.dj, i64 128
  %i.hh = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !39, !align !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.hi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6cmList6filterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10FilterModeER10cmMakefile(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.hg, i32 noundef %.074, ptr noundef nonnull align 8 dereferenceable(2952) %i.hh)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNK6cmList9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %i.hi)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hj = load ptr, ptr %14, align 8, !tbaa !24
  %i.hk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !26
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i64 %i.hl, ptr %i.hj)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.hm = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.aj
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !25
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.av

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.hr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

bb.al:                                            ; preds = %bb.ai
  %i.hs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument     ; 2 uses
  %i.ht = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.al
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !25
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.ak
  %.pn78 = phi { ptr, i32 } [ %i.hr, %bb.ak ], [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %i.hs, %bb.al ] ; 3 uses
  %.966 = extractvalue { ptr, i32 } %.pn78, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.hy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt16invalid_argument) #25
  %i.hz = icmp eq i32 %.966, %i.hy
  br i1 %i.hz, label %bb.am, label %bb.au

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %.9 = extractvalue { ptr, i32 } %.pn78, 0
  %i.ia = call ptr @__cxa_begin_catch(ptr %.9) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !52
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = call noundef ptr %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.ia) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.ie, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.if, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit188 unwind label %bb.ap

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit188: ; preds = %bb.an
  %i.ig = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit188
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !25
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.invoke

bb.ao:                                            ; preds = %bb.am
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

bb.ap:                                            ; preds = %bb.an
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.in = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %bb.ap
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !25
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192, %bb.ao
  %.pn80 = phi { ptr, i32 } [ %i.il, %bb.ao ], [ %i.im, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192 ], [ %i.im, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  invoke void @__cxa_end_catch()
          to label %bb.au unwind label %bb.az

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.invoke
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170.thread208: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit144, %bb.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.109, ptr noundef nonnull align 8 dereferenceable(32) %i.dk)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170.thread208
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit196 unwind label %bb.at

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit196: ; preds = %bb.ar
  %i.iu = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit196
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !25
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.av

bb.as:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170.thread208
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

bb.at:                                            ; preds = %bb.ar
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.at
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !25
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200, %bb.as
  %.pn = phi { ptr, i32 } [ %i.iz, %bb.as ], [ %i.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200 ], [ %i.ja, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %.merged102 = phi { ptr, i32 } [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ], [ %i.is, %bb.aq ]
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.3 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.invoke ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ]
  %i.jg = load i8, ptr %i.dg, align 8, !tbaa !42, !range !43, !noundef !39
  %i.jh = trunc nuw i8 %i.jg to i1
  store i8 0, ptr %i.dg, align 8, !tbaa !42
  br i1 %i.jh, label %bb.aw, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

bb.aw:                                            ; preds = %bb.av
  %i.ji = load ptr, ptr %6, align 8, !tbaa !17    ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !16 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.ji, %i.jk
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.aw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.jq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.ji, %bb.aw ] ; 3 uses
  %i.jl = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !25
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.jq, %i.jk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.aw
  %i.jr = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.ji, %bb.aw ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !45
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = ptrtoint ptr %i.jr to i64
  %i.jw = sub i64 %i.ju, %i.jv
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jw) #26
  br label %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit:  ; preds = %bb.av, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.5 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.3, %_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ]
  ret i1 %.5

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.jx = landingpad { ptr, i32 }
          catch ptr null
  %i.jy = extractvalue { ptr, i32 } %i.jx, 0
  call void @__clang_call_terminate(ptr %i.jy) #29
  unreachable
}

declare void @_ZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EER17cmExecutionStatusEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17cmSubcommandTableD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !470    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKS_INSt7__cxx1112basic_stringIcS3_SaIcEEESaIS8_EER17cmExecutionStatusEESaISH_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !471
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #26
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKS_INSt7__cxx1112basic_stringIcS3_SaIcEEESaIS8_EER17cmExecutionStatusEESaISH_EED2Ev.exit

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKS_INSt7__cxx1112basic_stringIcS3_SaIcEEESaIS8_EER17cmExecutionStatusEESaISH_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK17cmSubcommandTableclESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaIS8_EER17cmExecutionStatus(ptr noundef nonnull align 8 dereferenceable(24), i64, ptr, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_17GetListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefile(ptr dead_on_unwind noalias nonnull writable align 8 initializes((24, 25)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(2952) %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i8 0, ptr %i.a, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !26
  store i8 0, ptr %i.b, align 8, !tbaa !25
  %i.d = invoke ptr @_ZNK10cmMakefile13GetDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.c, align 8, !tbaa !26
  %i.g = icmp eq i64 %i.f, 0
  %i.h = load i8, ptr %i.a, align 8, !tbaa !42, !range !43, !noundef !39
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !42
  br i1 %i.g, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.f, label %_ZNSt8optionalI6cmListE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS0_DpT_EERS0_E4typeEDpOS4_.exit

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.j, %bb.f ] ; 3 uses
  %i.m = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.f
  %i.s = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.j, %bb.f ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt8optionalI6cmListE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS0_DpT_EERS0_E4typeEDpOS4_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #26
  br label %_ZNSt8optionalI6cmListE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS0_DpT_EERS0_E4typeEDpOS4_.exit

_ZNSt8optionalI6cmListE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS0_DpT_EERS0_E4typeEDpOS4_.exit: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !42
  br label %_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit

bb.h:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.i, label %_ZNSt19_Optional_base_implI6cmListSt14_Optional_baseIS0_Lb0ELb0EEE8_M_resetEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i8 = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i.i.i.i.i.i8, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i.i9

.lr.ph.i.i.i.i.i.i.i.i9:                          ; preds = %bb.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i12
  %.05.i.i.i.i.i.i.i.i10 = phi ptr [ %i.ag, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i12 ], [ %i.y, %bb.i ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i.i.i.i.i10, align 8, !tbaa !24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i10, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i11: ; preds = %.lr.ph.i.i.i.i.i.i.i.i9
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i12

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i12: ; preds = %.lr.ph.i.i.i.i.i.i.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i11
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i10, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i13 = icmp eq ptr %i.ag, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i.i.i.i9, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i14: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i12
  %.pr.i.i.i.i.i.i15 = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i16

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i16: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i14, %bb.i
  %i.ah = phi ptr [ %.pr.i.i.i.i.i.i15, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i14 ], [ %i.y, %bb.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i17 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i.i.i.i.i.i17, label %_ZNSt19_Optional_base_implI6cmListSt14_Optional_baseIS0_Lb0ELb0EEE8_M_resetEv.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #26
  br label %_ZNSt19_Optional_base_implI6cmListSt14_Optional_baseIS0_Lb0ELb0EEE8_M_resetEv.exit.i

_ZNSt19_Optional_base_implI6cmListSt14_Optional_baseIS0_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.j, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i16, %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 24, i1 false)
  %i.an = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1, i32 noundef 1)
          to label %bb.l unwind label %bb.k       ; 0 uses

bb.k:                                             ; preds = %_ZNSt19_Optional_base_implI6cmListSt14_Optional_baseIS0_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %0) #25
  br label %.body

bb.l:                                             ; preds = %_ZNSt19_Optional_base_implI6cmListSt14_Optional_baseIS0_Lb0ELb0EEE8_M_resetEv.exit.i
  store i8 1, ptr %i.a, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !26
  store i8 0, ptr %i.ap, align 8, !tbaa !25
  %i.ar = load ptr, ptr %0, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  %i.au = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.ar, ptr %i.at, ptr nonnull align 8 dereferenceable(32) %4)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ap
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit

bb.n:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ap
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.n
  %i.bc = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit: ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8optionalI6cmListE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS0_DpT_EERS0_E4typeEDpOS4_.exit
  %i.be = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.b
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !25
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZN12_GLOBAL__N_113GetListStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_RK10cmMakefile.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

.body:                                            ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %bb.c
  %.pn = phi { ptr, i32 } [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.e, %bb.c ], [ %i.ao, %bb.k ]
  %i.bi = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.b
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.body
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !25
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #25
  resume { ptr, i32 } %.pn
}

declare void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseI6cmListLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !42, !range !43, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !42
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadI6cmListLb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.b
  %i.m = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt17_Optional_payloadI6cmListLb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #26
  br label %_ZNSt17_Optional_payloadI6cmListLb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadI6cmListLb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare ptr @_ZNK10cmMakefile13GetDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !25
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !25
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !25
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !2

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
end_hunk_8
