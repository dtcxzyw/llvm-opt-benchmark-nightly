Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read_graphviz_new?download=true
inline.NumInlined: 6920
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18calculate_backstepEPNS0_14re_syntax_baseE:bb.a
.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.lr.ph, %.outer.backedge
  %.sroa.037.0.ph195 = phi ptr [ %.sroa.037.0.ph.ph205, %.lr.ph.lr.ph.lr.ph ], [ %.sroa.037.0.ph83184, %.outer.backedge ]
  %.sroa.10.0.ph194 = phi ptr [ %.sroa.10.0.ph.ph204, %.lr.ph.lr.ph.lr.ph ], [ %.sroa.10.0.ph82183, %.outer.backedge ]
  %.sroa.19.0.ph193 = phi ptr [ %.sroa.19.0.ph.ph203, %.lr.ph.lr.ph.lr.ph ], [ %.sroa.19.0.ph81182, %.outer.backedge ]
  %.0.ph191 = phi i32 [ %.0.ph.ph202, %.lr.ph.lr.ph.lr.ph ], [ %.0.ph.be, %.outer.backedge ] ; 13 uses
  %.065.ph190 = phi ptr [ %.065.ph.ph201, %.lr.ph.lr.ph.lr.ph ], [ %.065.ph.be, %.outer.backedge ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit
  %.sroa.037.0.ph83184 = phi ptr [ %.sroa.037.0.ph195, %.lr.ph.lr.ph ], [ %.sroa.037.1, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit ] ; 25 uses
  %.sroa.10.0.ph82183 = phi ptr [ %.sroa.10.0.ph194, %.lr.ph.lr.ph ], [ %.sroa.10.1, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit ] ; 11 uses
  %.sroa.19.0.ph81182 = phi ptr [ %.sroa.19.0.ph193, %.lr.ph.lr.ph ], [ %.sroa.19.1, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit ] ; 18 uses
  %.065.ph80181 = phi ptr [ %.065.ph190, %.lr.ph.lr.ph ], [ %i.bx, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.065176 = phi ptr [ %.065.ph80181, %.lr.ph ], [ %.065.be, %.backedge ] ; 21 uses
  %i.a = load i32, ptr %.065176, align 8, !tbaa !279
  switch i32 %i.a, label %.outer.backedge [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.j
    i32 5, label %bb.k
    i32 15, label %bb.k
    i32 17, label %bb.w
    i32 16, label %bb.v
    i32 14, label %bb.t
    i32 18, label %bb.l
    i32 22, label %.loopexit470
    i32 23, label %.loopexit470
    i32 24, label %.loopexit470
    i32 25, label %bb.q
    i32 13, label %.thread
    i32 19, label %.thread
    i32 26, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.065176, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !281
  switch i32 %i.c, label %.outer.backedge [
    i32 -1, label %bb.d
    i32 -2, label %bb.d
    i32 -3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.065176, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.e, %bb.v
  %.065.be.in = phi ptr [ %i.az, %bb.v ], [ %i.k, %bb.e ], [ %i.h, %bb.d ]
  %.065.be = load ptr, ptr %.065.be.in, align 8, !tbaa !60 ; 2 uses
  %.not = icmp eq ptr %.065.be, null
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !1063

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.065176, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.065176, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !281
  %switch = icmp ugt i32 %i.m, -3
  br i1 %switch, label %bb.g, label %.outer.backedge

bb.g:                                             ; preds = %bb.f
  %i.n = icmp sgt i32 %.016.ph.ph206, -1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not27 = icmp eq i32 %.016.ph.ph206, %.0.ph191
  br i1 %.not27, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  %.117 = phi i32 [ %.016.ph.ph206, %bb.h ], [ %.0.ph191, %bb.g ]
  %.not28 = icmp eq ptr %.sroa.10.0.ph82183, %.sroa.037.0.ph83184
  br i1 %.not28, label %.thread, label %.outer.outer

.outer.outer:                                     ; preds = %bb.i
  %i.o = getelementptr inbounds i8, ptr %.sroa.10.0.ph82183, i64 -16 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.10.0.ph82183, i64 -8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !132
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !1070 ; 2 uses
  %.not175180189 = icmp eq ptr %i.r, null
  br i1 %.not175180189, label %.thread, label %.lr.ph.lr.ph.lr.ph, !llvm.loop !1063

bb.j:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.065176, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !340
  %i.u = add i32 %i.t, %.0.ph191
  br label %.outer.backedge

bb.k:                                             ; preds = %bb.b, %bb.b
  %i.v = add nsw i32 %.0.ph191, 1
  br label %.outer.backedge

bb.l:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.065176, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %.065176, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.m, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %i.x, align 8, !tbaa !279
  switch i32 %i.af, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71 [
    i32 5, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread
    i32 2, label %bb.n
    i32 15, label %bb.o
    i32 14, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread

bb.o:                                             ; preds = %bb.m
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread

bb.p:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 37
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !381, !range !283, !noundef !108
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.thread300, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71

.thread300:                                       ; preds = %bb.p
  store i32 25, ptr %.065176, align 8, !tbaa !279
  br label %bb.r

_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread: ; preds = %bb.m, %bb.n, %bb.o
  %.0.i.ph = phi i32 [ 24, %bb.o ], [ 23, %bb.n ], [ 22, %bb.m ]
  store i32 %.0.i.ph, ptr %.065176, align 8, !tbaa !279
  br label %.loopexit470

_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71: ; preds = %bb.l, %bb.m, %bb.p
  store i32 18, ptr %.065176, align 8, !tbaa !279
  br label %.thread

.loopexit470:                                     ; preds = %bb.b, %bb.b, %bb.b, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %.065176, i64 296
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !342 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.065176, i64 288
  %i.am = load i64, ptr %i.al, align 8, !tbaa !341 ; 2 uses
  %.not26 = icmp ne i64 %i.ak, %i.am
  %i.an = sub nsw i32 2147483647, %.0.ph191
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = icmp ugt i64 %i.am, %i.ao
  %or.cond = select i1 %.not26, i1 true, i1 %i.ap
  br i1 %or.cond, label %.thread, label %bb.s, !llvm.loop !1063

bb.q:                                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.065176, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60
  %.phi.trans.insert292 = getelementptr inbounds nuw i8, ptr %.pre, i64 37
  %.pre293 = load i8, ptr %.phi.trans.insert292, align 1, !tbaa !381, !range !283
  %i.aq = icmp eq i8 %.pre293, 0
  br i1 %i.aq, label %.thread, label %bb.r

bb.r:                                             ; preds = %.thread300, %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %.065176, i64 296
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !342 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.065176, i64 288
  %i.au = load i64, ptr %i.at, align 8, !tbaa !341
  %.not25 = icmp eq i64 %i.as, %i.au
  br i1 %.not25, label %bb.s, label %.thread, !llvm.loop !1063

bb.s:                                             ; preds = %bb.r, %.loopexit470
  %.pn.in = phi i64 [ %i.ak, %.loopexit470 ], [ %i.as, %bb.r ]
  %.pn = trunc i64 %.pn.in to i32
  %.1 = add nsw i32 %.0.ph191, %.pn
  br label %.outer.backedge

bb.t:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %.065176, i64 37
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !381, !range !283, !noundef !108
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = add nsw i32 %.0.ph191, 1
  br label %.outer.backedge

bb.v:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %.065176, i64 16
  br label %.backedge

bb.w:                                             ; preds = %bb.b
  %i.ba = ptrtoint ptr %.sroa.10.0.ph82183 to i64
  %i.bb = ptrtoint ptr %.sroa.037.0.ph83184 to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = ashr exact i64 %i.bc, 4                 ; 3 uses
  %i.be = icmp ugt i64 %i.bd, 1024
  br i1 %i.be, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %.065176, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1070, !noalias !1071 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.10.0.ph82183, %.sroa.19.0.ph81182
  br i1 %.not.i.i, label %_ZNKSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE12_M_check_lenEmPKc.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = ptrtoint ptr %i.bg to i64
  store i64 %i.bh, ptr %.sroa.10.0.ph82183, align 8, !tbaa !1070
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.10.0.ph82183, i64 8
  store i32 %.0.ph191, ptr %i.bi, align 8, !tbaa !132
  br label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit

_ZNKSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.x
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.bj = add nuw nsw i64 %.sroa.speculated.i.i, %i.bd ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 4
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #32
          to label %.noexc33 unwind label %bb.aa  ; 5 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc ; 2 uses
  %i.bn = ptrtoint ptr %i.bg to i64
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !1070
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 %.0.ph191, ptr %i.bo, align 8, !tbaa !132
  %.not10.i.i.i.i = icmp eq ptr %.sroa.037.0.ph83184, %.sroa.10.0.ph82183
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc33, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %i.bl, %.noexc33 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.sroa.037.0.ph83184, %.noexc33 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.bp = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !1070, !alias.scope !1073, !noalias !1072
  store i64 %i.bp, ptr %.012.i.i.i.i, align 8, !tbaa !1070, !alias.scope !1072, !noalias !1073
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !132, !alias.scope !1073, !noalias !1072
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !132, !alias.scope !1072, !noalias !1073
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bt, %.sroa.10.0.ph82183
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1069

_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %.noexc33
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %.noexc33 ], [ %i.bu, %.lr.ph.i.i.i.i ]
  %.not.i23.i = icmp eq ptr %.sroa.037.0.ph83184, null
  br i1 %.not.i23.i, label %.noexc, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0.ph83184, i64 noundef %i.bc) #29
  br label %.noexc

.noexc:                                           ; preds = %bb.z, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bj
  br label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc, %bb.y
  %.sroa.19.1 = phi ptr [ %i.bv, %.noexc ], [ %.sroa.19.0.ph81182, %bb.y ] ; 2 uses
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %.noexc ], [ %.sroa.10.0.ph82183, %bb.y ]
  %.sroa.037.1 = phi ptr [ %i.bl, %.noexc ], [ %.sroa.037.0.ph83184, %bb.y ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.065176, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !60 ; 2 uses
  %.not175 = icmp eq ptr %i.bx, null
  br i1 %.not175, label %.thread, label %.lr.ph, !llvm.loop !1063

bb.aa:                                            ; preds = %_ZNKSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.037.0.ph83184, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0.ph83184, i64 noundef %i.bc) #29
  br label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit

_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %lpad.loopexit

.outer.backedge:                                  ; preds = %bb.b, %bb.c, %bb.j, %bb.k, %bb.u, %bb.f, %bb.s
  %.sink = phi i64 [ 16, %bb.s ], [ 8, %bb.k ], [ 8, %bb.j ], [ 8, %bb.f ], [ 8, %bb.u ], [ 8, %bb.c ], [ 8, %bb.b ]
  %.0.ph.be = phi i32 [ %.1, %bb.s ], [ %i.v, %bb.k ], [ %i.u, %bb.j ], [ %.0.ph191, %bb.f ], [ %i.ay, %bb.u ], [ %.0.ph191, %bb.c ], [ %.0.ph191, %bb.b ]
  %i.by = getelementptr inbounds nuw i8, ptr %.065176, i64 %.sink
  %.065.ph.be = load ptr, ptr %i.by, align 8, !tbaa !60 ; 2 uses
  %.not175180 = icmp eq ptr %.065.ph.be, null
  br i1 %.not175180, label %.thread, label %.lr.ph.lr.ph, !llvm.loop !1063

.thread:                                          ; preds = %.outer.outer, %bb.i, %bb.h, %.outer.backedge, %bb.q, %.loopexit470, %bb.r, %bb.t, %bb.w, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit, %bb.b, %bb.b, %bb.b, %.backedge, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71
  %.sroa.19.0.ph81163 = phi ptr [ %.sroa.19.0.ph81182, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71 ], [ %.sroa.19.0.ph81182, %.outer.backedge ], [ %.sroa.19.0.ph81182, %bb.w ], [ %.sroa.19.0.ph81182, %bb.b ], [ %.sroa.19.0.ph81182, %.backedge ], [ %.sroa.19.0.ph81182, %bb.b ], [ %.sroa.19.0.ph81182, %bb.b ], [ %.sroa.19.1, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit ], [ %.sroa.19.0.ph81182, %bb.t ], [ %.sroa.19.0.ph81182, %bb.r ], [ %.sroa.19.0.ph81182, %.loopexit470 ], [ %.sroa.19.0.ph81182, %bb.q ], [ %.sroa.19.0.ph81182, %bb.h ], [ %.sroa.19.0.ph81182, %bb.i ], [ %.sroa.19.0.ph81182, %.outer.outer ]
  %.sroa.037.0.ph83127 = phi ptr [ %.sroa.037.0.ph83184, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71 ], [ %.sroa.037.0.ph83184, %.outer.backedge ], [ %.sroa.037.0.ph83184, %bb.w ], [ %.sroa.037.0.ph83184, %bb.b ], [ %.sroa.037.0.ph83184, %.backedge ], [ %.sroa.037.0.ph83184, %bb.b ], [ %.sroa.037.0.ph83184, %bb.b ], [ %.sroa.037.1, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit ], [ %.sroa.037.0.ph83184, %bb.t ], [ %.sroa.037.0.ph83184, %bb.r ], [ %.sroa.037.0.ph83184, %.loopexit470 ], [ %.sroa.037.0.ph83184, %bb.q ], [ %.sroa.037.0.ph83184, %bb.h ], [ %.sroa.037.0.ph83184, %bb.i ], [ %.sroa.037.0.ph83184, %.outer.outer ] ; 3 uses
  %.2 = phi i32 [ -1, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71 ], [ -1, %.outer.backedge ], [ -1, %bb.w ], [ -1, %bb.b ], [ -1, %.backedge ], [ -1, %bb.b ], [ -1, %bb.b ], [ -1, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit ], [ -1, %bb.t ], [ -1, %bb.r ], [ -1, %.loopexit470 ], [ -1, %bb.q ], [ -1, %bb.h ], [ -1, %.outer.outer ], [ %.0.ph191, %bb.i ] ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %.sroa.037.0.ph83127, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit30, label %bb.ac

bb.ac:                                            ; preds = %.thread
  %i.bz = ptrtoint ptr %.sroa.19.0.ph81163 to i64
  %i.ca = ptrtoint ptr %.sroa.037.0.ph83127 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0.ph83127, i64 noundef %i.cb) #29
  br label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit30

_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit30: ; preds = %bb.a, %.thread, %bb.ac
  %.2305 = phi i32 [ %.2, %bb.ac ], [ %.2, %.thread ], [ -1, %bb.a ]
  ret i32 %.2305
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172
  %i.c = load ptr, ptr %0, align 8, !tbaa !171    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %1, 0
  br i1 %i.h, label %bb.c, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.275) #28
  unreachable

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %1) #32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %1 ; 2 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 %i.k, i64 %1, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !171    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !172
  store ptr %i.i, ptr %0, align 8, !tbaa !171
  store ptr %i.j, ptr %i.m, align 8, !tbaa !392
  store ptr %i.j, ptr %i.a, align 8, !tbaa !172
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !392  ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = sub i64 %i.t, %i.e                       ; 2 uses
  %i.v = icmp ugt i64 %1, %i.u
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.i11 = icmp eq ptr %i.s, %i.c
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhEvT_S7_RKT0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %2, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.c, i8 %i.w, i64 %i.u, i1 false)
  %.pre14 = load ptr, ptr %i.r, align 8, !tbaa !392 ; 2 uses
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !171
  %.pre16 = ptrtoint ptr %.pre14 to i64
  %.pre17 = ptrtoint ptr %.pre15 to i64
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhEvT_S7_RKT0_.exit: ; preds = %bb.f, %bb.g
  %.pre-phi18 = phi i64 [ %i.e, %bb.f ], [ %.pre17, %bb.g ]
  %.pre-phi = phi i64 [ %i.t, %bb.f ], [ %.pre16, %bb.g ]
  %i.x = phi ptr [ %i.s, %bb.f ], [ %.pre14, %bb.g ] ; 3 uses
  %.neg = sub i64 %.pre-phi18, %.pre-phi
  %i.y = add i64 %.neg, %1                        ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhEvT_S7_RKT0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.ab = load i8, ptr %2, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 %i.ab, i64 %i.y, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhEvT_S7_RKT0_.exit, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %i.x, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhEvT_S7_RKT0_.exit ], [ %i.aa, %bb.h ]
  store ptr %.0.i.i.i.i.i, ptr %i.r, align 8, !tbaa !392
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.i:                                             ; preds = %bb.e
  %i.ac = icmp eq i64 %1, 0
  br i1 %i.ac, label %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %1
  %i.ae = load i8, ptr %2, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.c, i8 %i.ae, i64 %1, i1 false)
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !392
  br label %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit

_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit:              ; preds = %bb.i, %bb.j
  %i.af = phi ptr [ %i.s, %bb.i ], [ %.pre, %bb.j ]
  %.0.i.i = phi ptr [ %i.c, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %.not.i = icmp eq ptr %i.af, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.r, align 8, !tbaa !392
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost13re_detail_60016re_is_set_memberIPccNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEjEET_S7_S7_PKNS0_11re_set_longIT2_EERKNS0_10regex_dataIT0_T1_EEb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(402) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !374
  %.not251 = icmp eq i32 %i.h, 0
  br i1 %.not251, label %._crit_edge233, label %.lr.ph232.split

.lr.ph232.split:                                  ; preds = %bb.b, %bb.h
  %.0100230 = phi i32 [ %i.bb, %bb.h ], [ 0, %bb.b ]
  %.0103229 = phi ptr [ %.2105, %bb.h ], [ %i.d, %bb.b ] ; 4 uses
  %i.i = load i8, ptr %.0103229, align 1, !tbaa !60 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph232.split
  br i1 %4, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135.us, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135

_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135.us: ; preds = %.lr.ph, %bb.c
  %.0102218.us = phi ptr [ %i.u, %bb.c ], [ %0, %.lr.ph ] ; 3 uses
  %.1104217.us = phi ptr [ %i.t, %bb.c ], [ %.0103229, %.lr.ph ] ; 3 uses
  %i.k = load i8, ptr %.0102218.us, align 1, !tbaa !60
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !191  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext %i.k), !inline_history !21
  %i.s = load i8, ptr %.1104217.us, align 1, !tbaa !60 ; 2 uses
  %.not132.us = icmp eq i8 %i.r, %i.s
  br i1 %.not132.us, label %bb.c, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135._crit_edge

bb.c:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135.us
  %i.t = getelementptr inbounds nuw i8, ptr %.1104217.us, i64 1 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0102218.us, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.t, align 1, !tbaa !60    ; 2 uses
  %i.w = icmp ne i8 %i.v, 0
  %i.x = icmp ne ptr %i.u, %1
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135.us, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135._crit_edge, !llvm.loop !1074

bb.d:                                             ; preds = %.lr.ph232.split
  %i.z = load i8, ptr %0, align 1, !tbaa !60      ; 2 uses
  br i1 %4, label %bb.e, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !191 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
end_hunk_0
