inline.NumInlined: 657
inline.NumDeleted: 259
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4absl19str_format_internal12_GLOBAL__N_113PrintExponentEicPNS1_6BufferE:bb.a
bb.g:                                             ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit18, %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit17
  %.0 = phi i32 [ %i.j, %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit17 ], [ %0, %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit18 ] ; 5 uses
  %i.l = icmp samesign ugt i32 %.0, 99
  %i.m = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.n = icmp ult ptr %i.m, %i.c                  ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %i.n, label %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit19, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 1011, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc) #19
  unreachable

_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit19: ; preds = %bb.h
  %i.o = udiv i32 %.0, 100
  %i.p = trunc i32 %i.o to i8
  %i.q = add i8 %i.p, 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.r, ptr %i.a, align 8
  store i8 %i.q, ptr %i.m, align 1
  %i.s = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.t = icmp ult ptr %i.s, %i.c
  br i1 %i.t, label %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit20, label %bb.j

bb.j:                                             ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit19
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 1011, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc) #19
  unreachable

_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit20: ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit19
  %i.u = udiv i32 %.0, 10
  %i.v = urem i32 %.0, 10
  %i.w = urem i32 %i.u, 10
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.z, ptr %i.a, align 8
  store i8 %i.y, ptr %i.s, align 1
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit21, label %bb.k

bb.k:                                             ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit20
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 1011, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc) #19
  unreachable

_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit21: ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit20
  %i.ac = trunc nuw nsw i32 %i.v to i8
  br label %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit23

bb.l:                                             ; preds = %bb.g
  br i1 %i.n, label %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit22, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 1011, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc) #19
  unreachable

_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit22: ; preds = %bb.l
  %.lhs.trunc = trunc nuw nsw i32 %.0 to i8       ; 2 uses
  %i.ad = udiv i8 %.lhs.trunc, 10
  %i.ae = urem i8 %.lhs.trunc, 10
  %i.af = or disjoint i8 %i.ad, 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.ag, ptr %i.a, align 8
  store i8 %i.af, ptr %i.m, align 1
  %i.ah = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.c
  br i1 %i.ai, label %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit23, label %bb.n

bb.n:                                             ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit22
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, i32 noundef 1011, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc) #19
  unreachable

_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit23: ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit22, %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit21
  %.sink39 = phi i8 [ %i.ac, %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit21 ], [ %i.ae, %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit22 ]
  %.sink38 = phi ptr [ %i.aa, %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit21 ], [ %i.ah, %_ZN4absl19str_format_internal12_GLOBAL__N_16Buffer9push_backEc.exit22 ] ; 2 uses
  %i.aj = or disjoint i8 %.sink39, 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.sink38, i64 1
  store ptr %i.ak, ptr %i.a, align 8
  store i8 %i.aj, ptr %.sink38, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_117WriteBufferToSinkEcSt17basic_string_viewIcSt11char_traitsIcEERKNS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE(i8 noundef signext range(i8 0, 46) %0, i64 %1, ptr %2, i8 %.1.val, i32 %.4.val, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %.4.val, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %.4.val to i64
  %i.c = icmp ne i8 %0, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add i64 %1, %i.d
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %spec.select, %bb.b ], [ 0, %bb.a ] ; 7 uses
  %i.f = trunc i8 %.1.val to i1
  br i1 %i.f, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i8 %.1.val, 16
  %.not7 = icmp eq i8 %i.g, 0
  br i1 %.not7, label %bb.e, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %.1, 0
  br i1 %i.h, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %.1
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1056 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.n, %i.p                       ; 4 uses
  %i.r = icmp ugt i64 %.1, %i.q
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = sub nuw nsw i64 %.1, %i.q                ; 3 uses
  %.not.peel.i = icmp eq ptr %i.l, %i.o
  br i1 %.not.peel.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 32, i64 %i.q, i1 false)
  %i.w = load ptr, ptr %i.m, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q ; 2 uses
  store ptr %i.x, ptr %i.m, align 8
  %.pre.i = ptrtoint ptr %i.x to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.n, %.lr.ph.i ]
  %i.y = sub i64 %.pre-phi.i, %i.t
  %i.z = load ptr, ptr %i.u, align 8
  %i.aa = load ptr, ptr %3, align 8
  tail call void %i.z(ptr noundef %i.aa, i64 %i.y, ptr nonnull %i.s) #18, !inline_history !40
  store ptr %i.s, ptr %i.m, align 8
  %i.ab = icmp samesign ugt i64 %i.v, 1024
  br i1 %i.ab, label %.peel.next.i, label %._crit_edge.i

.peel.next.i:                                     ; preds = %bb.h, %.peel.next.i
  %.010.i = phi i64 [ %i.ac, %.peel.next.i ], [ %i.v, %bb.h ]
  %i.ac = add i64 %.010.i, -1024                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.s, i8 32, i64 1024, i1 false)
  store ptr %i.l, ptr %i.m, align 8
  %i.ad = load ptr, ptr %i.u, align 8
  %i.ae = load ptr, ptr %3, align 8
  tail call void %i.ad(ptr noundef %i.ae, i64 1024, ptr nonnull %i.s) #18, !inline_history !40
  store ptr %i.s, ptr %i.m, align 8
  %i.af = icmp ugt i64 %i.ac, 1024
  br i1 %i.af, label %.peel.next.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.peel.next.i, %bb.h, %bb.f
  %.0.lcssa.i = phi i64 [ %.1, %bb.f ], [ %i.v, %bb.h ], [ %i.ac, %.peel.next.i ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.o, %bb.f ], [ %i.s, %bb.h ], [ %i.s, %.peel.next.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 32, i64 %.0.lcssa.i, i1 false)
  %i.ag = load ptr, ptr %i.m, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0.lcssa.i
  store ptr %i.ah, ptr %i.m, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit: ; preds = %bb.d, %bb.c, %bb.e, %._crit_edge.i
  %.0216 = phi i64 [ 0, %._crit_edge.i ], [ 0, %bb.e ], [ 0, %bb.c ], [ %.1, %bb.d ] ; 5 uses
  %.0225 = phi i64 [ 0, %._crit_edge.i ], [ 0, %bb.e ], [ %.1, %bb.c ], [ 0, %bb.d ] ; 5 uses
  %.not = icmp eq i8 %0, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %.lr.ph.i29, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit35

.lr.ph.i29:                                       ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %3, align 8
  tail call void %i.ar(ptr noundef %i.as, i64 1024, ptr nonnull %i.ap) #18, !inline_history !40
  store ptr %i.ap, ptr %i.am, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit35

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit35: ; preds = %bb.i, %.lr.ph.i29
  %.lcssa.i28 = phi ptr [ %i.an, %bb.i ], [ %i.ap, %.lr.ph.i29 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i28, i8 %0, i64 1, i1 false)
  %i.at = load ptr, ptr %i.am, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.am, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit35, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit
  %i.av = icmp eq i64 %.0216, 0
  br i1 %i.av, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit45, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, %.0216
  store i64 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 1056 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8            ; 4 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bb, %i.bd                    ; 4 uses
  %i.bf = icmp ugt i64 %.0216, %i.be
  br i1 %i.bf, label %.lr.ph.i39, label %._crit_edge.i36

.lr.ph.i39:                                       ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bj = sub nuw nsw i64 %.0216, %i.be           ; 3 uses
  %.not.peel.i40 = icmp eq ptr %i.az, %i.bc
  br i1 %.not.peel.i40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i39
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bc, i8 48, i64 %i.be, i1 false)
  %i.bk = load ptr, ptr %i.ba, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.be ; 2 uses
  store ptr %i.bl, ptr %i.ba, align 8
  %.pre.i41 = ptrtoint ptr %i.bl to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i39
  %.pre-phi.i42 = phi i64 [ %.pre.i41, %bb.l ], [ %i.bb, %.lr.ph.i39 ]
  %i.bm = sub i64 %.pre-phi.i42, %i.bh
  %i.bn = load ptr, ptr %i.bi, align 8
  %i.bo = load ptr, ptr %3, align 8
  tail call void %i.bn(ptr noundef %i.bo, i64 %i.bm, ptr nonnull %i.bg) #18, !inline_history !40
  store ptr %i.bg, ptr %i.ba, align 8
  %i.bp = icmp samesign ugt i64 %i.bj, 1024
  br i1 %i.bp, label %.peel.next.i43, label %._crit_edge.i36

.peel.next.i43:                                   ; preds = %bb.m, %.peel.next.i43
  %.010.i44 = phi i64 [ %i.bq, %.peel.next.i43 ], [ %i.bj, %bb.m ]
  %i.bq = add i64 %.010.i44, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.bg, i8 48, i64 1024, i1 false)
  store ptr %i.az, ptr %i.ba, align 8
  %i.br = load ptr, ptr %i.bi, align 8
  %i.bs = load ptr, ptr %3, align 8
  tail call void %i.br(ptr noundef %i.bs, i64 1024, ptr nonnull %i.bg) #18, !inline_history !40
  store ptr %i.bg, ptr %i.ba, align 8
  %i.bt = icmp ugt i64 %i.bq, 1024
  br i1 %i.bt, label %.peel.next.i43, label %._crit_edge.i36, !llvm.loop !41

._crit_edge.i36:                                  ; preds = %.peel.next.i43, %bb.m, %bb.k
  %.0.lcssa.i37 = phi i64 [ %.0216, %bb.k ], [ %i.bj, %bb.m ], [ %i.bq, %.peel.next.i43 ] ; 2 uses
  %.lcssa.i38 = phi ptr [ %i.bc, %bb.k ], [ %i.bg, %bb.m ], [ %i.bg, %.peel.next.i43 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i38, i8 48, i64 %.0.lcssa.i37, i1 false)
  %i.bu = load ptr, ptr %i.ba, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.0.lcssa.i37
  store ptr %i.bv, ptr %i.ba, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit45

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit45: ; preds = %bb.j, %._crit_edge.i36
  %i.bw = icmp eq i64 %1, 0
  br i1 %i.bw, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit45
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = add i64 %i.by, %1
  store i64 %i.bz, ptr %i.bx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce
  %.not.i = icmp ult i64 %1, %i.cf
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %3, align 8
  tail call void %i.ck(ptr noundef %i.cl, i64 %i.ci, ptr nonnull %i.cg) #18, !inline_history !38
  store ptr %i.cg, ptr %i.cb, align 8
  %i.cm = load ptr, ptr %i.cj, align 8
  %i.cn = load ptr, ptr %3, align 8
  tail call void %i.cm(ptr noundef %i.cn, i64 %1, ptr %2) #18, !inline_history !39
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %2, i64 %1, i1 false)
  %i.co = load ptr, ptr %i.cb, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %1
  store ptr %i.cp, ptr %i.cb, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit45, %bb.o, %bb.p
  %i.cq = icmp eq i64 %.0225, 0
  br i1 %i.cq, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit55, label %bb.q

bb.q:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = add i64 %i.cs, %.0225
  store i64 %i.ct, ptr %i.cr, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 1056 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = load ptr, ptr %i.cv, align 8            ; 4 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cw, %i.cy                    ; 4 uses
  %i.da = icmp ugt i64 %.0225, %i.cz
  br i1 %i.da, label %.lr.ph.i49, label %._crit_edge.i46

.lr.ph.i49:                                       ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.de = sub nuw nsw i64 %.0225, %i.cz           ; 3 uses
  %.not.peel.i50 = icmp eq ptr %i.cu, %i.cx
  br i1 %.not.peel.i50, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i49
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cx, i8 32, i64 %i.cz, i1 false)
  %i.df = load ptr, ptr %i.cv, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cz ; 2 uses
  store ptr %i.dg, ptr %i.cv, align 8
  %.pre.i51 = ptrtoint ptr %i.dg to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i49
  %.pre-phi.i52 = phi i64 [ %.pre.i51, %bb.r ], [ %i.cw, %.lr.ph.i49 ]
  %i.dh = sub i64 %.pre-phi.i52, %i.dc
  %i.di = load ptr, ptr %i.dd, align 8
  %i.dj = load ptr, ptr %3, align 8
  tail call void %i.di(ptr noundef %i.dj, i64 %i.dh, ptr nonnull %i.db) #18, !inline_history !40
  store ptr %i.db, ptr %i.cv, align 8
  %i.dk = icmp samesign ugt i64 %i.de, 1024
  br i1 %i.dk, label %.peel.next.i53, label %._crit_edge.i46

.peel.next.i53:                                   ; preds = %bb.s, %.peel.next.i53
  %.010.i54 = phi i64 [ %i.dl, %.peel.next.i53 ], [ %i.de, %bb.s ]
  %i.dl = add i64 %.010.i54, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.db, i8 32, i64 1024, i1 false)
  store ptr %i.cu, ptr %i.cv, align 8
  %i.dm = load ptr, ptr %i.dd, align 8
  %i.dn = load ptr, ptr %3, align 8
  tail call void %i.dm(ptr noundef %i.dn, i64 1024, ptr nonnull %i.db) #18, !inline_history !40
  store ptr %i.db, ptr %i.cv, align 8
  %i.do = icmp ugt i64 %i.dl, 1024
  br i1 %i.do, label %.peel.next.i53, label %._crit_edge.i46, !llvm.loop !41

._crit_edge.i46:                                  ; preds = %.peel.next.i53, %bb.s, %bb.q
  %.0.lcssa.i47 = phi i64 [ %.0225, %bb.q ], [ %i.de, %bb.s ], [ %i.dl, %.peel.next.i53 ] ; 2 uses
  %.lcssa.i48 = phi ptr [ %i.cx, %bb.q ], [ %i.db, %bb.s ], [ %i.db, %.peel.next.i53 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i48, i8 32, i64 %.0.lcssa.i47, i1 false)
  %i.dp = load ptr, ptr %i.cv, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.0.lcssa.i47
  store ptr %i.dq, ptr %i.cv, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit55

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit55: ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, %._crit_edge.i46
  ret void
}

declare noundef zeroext i1 @_ZN4absl19str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056), i64, ptr, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4absl7uint128C1Ee(ptr noundef nonnull align 16 dereferenceable(16), x86_fp80 noundef) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { x86_fp80, i32 } @llvm.frexp.f80.i32(x86_fp80) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare x86_fp80 @ldexpl(x86_fp80 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS_7uint128EiRKNS1_11FormatStateE(i64 %0, i64 %1, i32 noundef range(i32 0, -2147483648) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %class.anon.1, align 16             ; 8 uses
  %5 = alloca %class.anon, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %3, ptr %5, align 8
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 144, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS_7uint128EiNS_11FunctionRefIFvS2_EEE) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = icmp samesign ult i32 %2, 16385
  br i1 %i.a, label %_ZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS_7uint128EiNS_11FunctionRefIFvS2_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 145, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS_7uint128EiNS_11FunctionRefIFvS2_EEE) #19
  unreachable

_ZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS_7uint128EiNS_11FunctionRefIFvS2_EEE.exit: ; preds = %bb.c
  %.lhs.trunc.i = add nuw nsw i32 %2, 159
  %.zext.i = lshr i32 %.lhs.trunc.i, 5
  %i.b = trunc nuw nsw i32 %.zext.i to i16
  %.lhs.trunc6.i = mul nuw nsw i16 %i.b, 11
  %i.c = udiv i16 %.lhs.trunc6.i, 10
  %i.d = zext nneg i16 %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %5, ptr %4, align 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @"_ZN4absl19functional_internal12InvokeObjectIZNS_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS_7uint128EiRKNS3_11FormatStateEE3$_0vJNS3_15BinaryToDecimalEEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE", ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %0, ptr %i.e, align 16
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %1, ptr %.sroa.25.0..sroa_idx.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %2, ptr %i.f, align 16
  call fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray15RunWithCapacityEmNS_11FunctionRefIFvNS_4SpanIjEEEEE(i64 noundef %i.d, ptr nonnull %4, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectIZNS_19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS_7uint128EiNS_11FunctionRefIFvS4_EEEEUlNS_4SpanIjEEE_vJSA_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS_7uint128EiRKNS1_11FormatStateE(i64 %0, i64 %1, i32 noundef range(i32 129, -2147483648) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %class.anon.7, align 16             ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.anon.6, align 8              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.val20 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.val21 = load ptr, ptr %i.c, align 8           ; 3 uses
  %.not.i = icmp eq i64 %.val20, 0
  br i1 %.not.i, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread

_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val21, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 8
  %.not83 = icmp eq i8 %i.f, 0
  br i1 %.not83, label %bb.b, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread

_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread: ; preds = %bb.a, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit
  %i.g = add i64 %.val20, 2
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread
  %i.h = phi i64 [ %i.g, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread ], [ 1, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit ]
  %i.i = load i8, ptr %3, align 8                 ; 2 uses
  %.not = icmp ne i8 %i.i, 0
  %i.j = zext i1 %.not to i64
  %i.k = add i64 %i.h, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val21, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noalias !43 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.m to i64                ; 2 uses
  %.not.i23 = icmp ult i64 %i.k, %i.o
  br i1 %.not.i23, label %bb.d, label %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = sub nuw nsw i64 %i.o, %i.k               ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val21, i64 1
  %i.r = load i8, ptr %i.q, align 1, !noalias !43 ; 2 uses
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i8 %i.r, 16
  %.not1.i = icmp eq i8 %i.t, 0
  br i1 %.not1.i, label %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit, label %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread

_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread: ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.12.0.ph = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.p, %bb.d ]
  %.sroa.7.0.ph = phi i64 [ %i.p, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.u = add nuw nsw i64 %.sroa.7.0.ph, 1
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit

_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, %i.p
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1056 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 8 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.ad, %i.af                    ; 4 uses
  %i.ah = icmp ugt i64 %i.p, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 8 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.al = sub nuw nsw i64 %i.p, %i.ag             ; 3 uses
  %.not.peel.i = icmp eq ptr %i.ab, %i.ae
  br i1 %.not.peel.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 32, i64 %i.ag, i1 false)
  %i.am = load ptr, ptr %i.ac, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ag ; 2 uses
  store ptr %i.an, ptr %i.ac, align 8
  %.pre.i = ptrtoint ptr %i.an to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.f ], [ %i.ad, %.lr.ph.i ]
  %i.ao = sub i64 %.pre-phi.i, %i.aj
  %i.ap = load ptr, ptr %i.ak, align 8
  %i.aq = load ptr, ptr %i.x, align 8
  tail call void %i.ap(ptr noundef %i.aq, i64 %i.ao, ptr nonnull %i.ai) #18, !inline_history !40
  store ptr %i.ai, ptr %i.ac, align 8
  %i.ar = icmp samesign ugt i64 %i.al, 1024
  br i1 %i.ar, label %.peel.next.i, label %._crit_edge.i

.peel.next.i:                                     ; preds = %bb.g, %.peel.next.i
  %.010.i = phi i64 [ %i.as, %.peel.next.i ], [ %i.al, %bb.g ]
  %i.as = add i64 %.010.i, -1024                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ai, i8 32, i64 1024, i1 false)
  store ptr %i.ab, ptr %i.ac, align 8
  %i.at = load ptr, ptr %i.ak, align 8
  %i.au = load ptr, ptr %i.x, align 8
  tail call void %i.at(ptr noundef %i.au, i64 1024, ptr nonnull %i.ai) #18, !inline_history !40
  store ptr %i.ai, ptr %i.ac, align 8
  %i.av = icmp ugt i64 %i.as, 1024
  br i1 %i.av, label %.peel.next.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.peel.next.i, %bb.g, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit
  %.0.lcssa.i = phi i64 [ %i.p, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit ], [ %i.al, %bb.g ], [ %i.as, %.peel.next.i ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.ae, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit ], [ %i.ai, %bb.g ], [ %i.ai, %.peel.next.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 32, i64 %.0.lcssa.i, i1 false)
  %i.aw = load ptr, ptr %i.ac, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0.lcssa.i
  store ptr %i.ax, ptr %i.ac, align 8
  %.pre = load i8, ptr %3, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit: ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread, %._crit_edge.i
  %i.ay = phi i8 [ %i.i, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread ], [ %.pre, %._crit_edge.i ] ; 2 uses
  %i.az = phi ptr [ %i.v, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread ], [ %i.w, %._crit_edge.i ] ; 5 uses
  %i.ba = phi i64 [ %i.u, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread ], [ 1, %._crit_edge.i ] ; 4 uses
  %.sroa.12.082 = phi i64 [ %.sroa.12.0.ph, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread ], [ 0, %._crit_edge.i ] ; 5 uses
  %.not18 = icmp eq i8 %i.ay, 0
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit
  %i.bb = load ptr, ptr %i.az, align 8            ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 1056
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %.lr.ph.i27, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit33

.lr.ph.i27:                                       ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.bb, align 8
  tail call void %i.bl(ptr noundef %i.bm, i64 1024, ptr nonnull %i.bj) #18, !inline_history !40
  store ptr %i.bj, ptr %i.bg, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit33

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit33: ; preds = %bb.h, %.lr.ph.i27
  %.lcssa.i26 = phi ptr [ %i.bh, %bb.h ], [ %i.bj, %.lr.ph.i27 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i26, i8 %i.ay, i64 1, i1 false)
  %i.bn = load ptr, ptr %i.bg, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bo, ptr %i.bg, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit33
  %i.bp = load ptr, ptr %i.az, align 8            ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = add i64 %i.br, %i.ba
  store i64 %i.bs, ptr %i.bq, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 1056 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 8 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8            ; 4 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bv, %i.bx                    ; 4 uses
  %i.bz = icmp ugt i64 %i.ba, %i.by
  br i1 %i.bz, label %.lr.ph.i37, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit43

.lr.ph.i37:                                       ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 8 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.cd = sub nuw nsw i64 %i.ba, %i.by            ; 3 uses
  %.not.peel.i38 = icmp eq ptr %i.bt, %i.bw
  br i1 %.not.peel.i38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i37
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 48, i64 %i.by, i1 false)
  %i.ce = load ptr, ptr %i.bu, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.by ; 2 uses
  store ptr %i.cf, ptr %i.bu, align 8
  %.pre.i39 = ptrtoint ptr %i.cf to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i37
  %.pre-phi.i40 = phi i64 [ %.pre.i39, %bb.j ], [ %i.bv, %.lr.ph.i37 ]
  %i.cg = sub i64 %.pre-phi.i40, %i.cb
  %i.ch = load ptr, ptr %i.cc, align 8
  %i.ci = load ptr, ptr %i.bp, align 8
  tail call void %i.ch(ptr noundef %i.ci, i64 %i.cg, ptr nonnull %i.ca) #18, !inline_history !40
  store ptr %i.ca, ptr %i.bu, align 8
  %i.cj = icmp samesign ugt i64 %i.cd, 1024
  br i1 %i.cj, label %.peel.next.i41, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit43

.peel.next.i41:                                   ; preds = %bb.k, %.peel.next.i41
  %.010.i42 = phi i64 [ %i.ck, %.peel.next.i41 ], [ %i.cd, %bb.k ]
  %i.ck = add i64 %.010.i42, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ca, i8 48, i64 1024, i1 false)
  store ptr %i.bt, ptr %i.bu, align 8
  %i.cl = load ptr, ptr %i.cc, align 8
  %i.cm = load ptr, ptr %i.bp, align 8
  tail call void %i.cl(ptr noundef %i.cm, i64 1024, ptr nonnull %i.ca) #18, !inline_history !40
  store ptr %i.ca, ptr %i.bu, align 8
  %i.cn = icmp ugt i64 %i.ck, 1024
  br i1 %i.cn, label %.peel.next.i41, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit43, !llvm.loop !41

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit43: ; preds = %.peel.next.i41, %bb.i, %bb.k
  %.0.lcssa.i35 = phi i64 [ %i.ba, %bb.i ], [ %i.cd, %bb.k ], [ %i.ck, %.peel.next.i41 ] ; 2 uses
  %.lcssa.i36 = phi ptr [ %i.bw, %bb.i ], [ %i.ca, %bb.k ], [ %i.ca, %.peel.next.i41 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i36, i8 48, i64 %.0.lcssa.i35, i1 false)
  %i.co = load ptr, ptr %i.bu, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.0.lcssa.i35
  store ptr %i.cp, ptr %i.bu, align 8
  %.val = load i64, ptr %i.b, align 8
  %.not.i44 = icmp eq i64 %.val, 0
  br i1 %.not.i44, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit45, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit45.thread

_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit45: ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit43
  %.val19 = load ptr, ptr %i.c, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.val19, i64 1
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = and i8 %i.cr, 8
  %.not84 = icmp eq i8 %i.cs, 0
  br i1 %.not84, label %bb.l, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit45.thread

_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit45.thread: ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit43, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit45
  %i.ct = load ptr, ptr %i.az, align 8            ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %i.cu, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1056
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = icmp eq ptr %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph.i49, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit55

.lr.ph.i49:                                       ; preds = %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit45.thread
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = load ptr, ptr %i.ct, align 8
  tail call void %i.dd(ptr noundef %i.de, i64 1024, ptr nonnull %i.db) #18, !inline_history !40
  store ptr %i.db, ptr %i.cy, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit55

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit55: ; preds = %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit45.thread, %.lr.ph.i49
  %.lcssa.i48 = phi ptr [ %i.cz, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit45.thread ], [ %i.db, %.lr.ph.i49 ]
  store i8 46, ptr %.lcssa.i48, align 1
  %i.df = load ptr, ptr %i.cy, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store ptr %i.dg, ptr %i.cy, align 8
  %.pre91 = load i64, ptr %i.b, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit55, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit45
  %i.dh = phi i64 [ %.pre91, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit55 ], [ 0, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit45 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.dh, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %3, ptr %5, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.di, align 8
  %i.dj = icmp samesign ult i32 %2, 16510
  br i1 %i.dj, label %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS_7uint128EiNS_11FunctionRefIFvS2_EEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 255, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS_7uint128EiNS_11FunctionRefIFvS2_EEE) #19
  unreachable

_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS_7uint128EiNS_11FunctionRefIFvS2_EEE.exit: ; preds = %bb.l
  %i.dk = add nuw nsw i32 %2, 95
  %i.dl = lshr i32 %i.dk, 5
  %i.dm = zext nneg i32 %i.dl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %5, ptr %4, align 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @"_ZN4absl19functional_internal12InvokeObjectIZNS_19str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS_7uint128EiRKNS3_11FormatStateEE3$_0vJNS3_24FractionalDigitGeneratorEEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE", ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %0, ptr %i.dn, align 16
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %1, ptr %.sroa.25.0..sroa_idx.i, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %2, ptr %i.do, align 16
  call fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110StackArray15RunWithCapacityEmNS_11FunctionRefIFvNS_4SpanIjEEEEE(i64 noundef %i.dm, ptr nonnull %4, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectIZNS_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS_7uint128EiNS_11FunctionRefIFvS4_EEEEUlNS_4SpanIjEEE_vJSA_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.dp = load ptr, ptr %i.az, align 8            ; 8 uses
  %i.dq = load i64, ptr %i.a, align 8             ; 5 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit65, label %bb.n

bb.n:                                             ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS_7uint128EiNS_11FunctionRefIFvS2_EEE.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = add i64 %i.dt, %i.dq
  store i64 %i.du, ptr %i.ds, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 1056 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 8 uses
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = load ptr, ptr %i.dw, align 8            ; 4 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dx, %i.dz                    ; 4 uses
  %i.eb = icmp ugt i64 %i.dq, %i.ea
  br i1 %i.eb, label %.lr.ph.i59, label %._crit_edge.i56

.lr.ph.i59:                                       ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 32 ; 8 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.ef = sub nuw i64 %i.dq, %i.ea                ; 3 uses
  %.not.peel.i60 = icmp eq ptr %i.dv, %i.dy
  br i1 %.not.peel.i60, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i59
  call void @llvm.memset.p0.i64(ptr align 1 %i.dy, i8 48, i64 %i.ea, i1 false)
  %i.eg = load ptr, ptr %i.dw, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ea ; 2 uses
  store ptr %i.eh, ptr %i.dw, align 8
  %.pre.i61 = ptrtoint ptr %i.eh to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i59
  %.pre-phi.i62 = phi i64 [ %.pre.i61, %bb.o ], [ %i.dx, %.lr.ph.i59 ]
  %i.ei = sub i64 %.pre-phi.i62, %i.ed
  %i.ej = load ptr, ptr %i.ee, align 8
  %i.ek = load ptr, ptr %i.dp, align 8
  call void %i.ej(ptr noundef %i.ek, i64 %i.ei, ptr nonnull %i.ec) #18, !inline_history !40
  store ptr %i.ec, ptr %i.dw, align 8
  %i.el = icmp ugt i64 %i.ef, 1024
  br i1 %i.el, label %.peel.next.i63, label %._crit_edge.i56

.peel.next.i63:                                   ; preds = %bb.p, %.peel.next.i63
  %.010.i64 = phi i64 [ %i.em, %.peel.next.i63 ], [ %i.ef, %bb.p ]
  %i.em = add i64 %.010.i64, -1024                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ec, i8 48, i64 1024, i1 false)
  store ptr %i.dv, ptr %i.dw, align 8
  %i.en = load ptr, ptr %i.ee, align 8
  %i.eo = load ptr, ptr %i.dp, align 8
  call void %i.en(ptr noundef %i.eo, i64 1024, ptr nonnull %i.ec) #18, !inline_history !40
  store ptr %i.ec, ptr %i.dw, align 8
  %i.ep = icmp ugt i64 %i.em, 1024
  br i1 %i.ep, label %.peel.next.i63, label %._crit_edge.i56, !llvm.loop !41

._crit_edge.i56:                                  ; preds = %.peel.next.i63, %bb.p, %bb.n
  %.0.lcssa.i57 = phi i64 [ %i.dq, %bb.n ], [ %i.ef, %bb.p ], [ %i.em, %.peel.next.i63 ] ; 2 uses
  %.lcssa.i58 = phi ptr [ %i.dy, %bb.n ], [ %i.ec, %bb.p ], [ %i.ec, %.peel.next.i63 ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i58, i8 48, i64 %.0.lcssa.i57, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4absl19functional_internal12InvokeObjectIZNS_19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS_7uint128EiNS_11FunctionRefIFvS4_EEEEUlNS_4SpanIjEEE_vJSA_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE:bb.a
bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4SpanIjEixEmENKUlvE_clEv) #19
  unreachable

_ZNK4absl4SpanIjEixEm.exit40.i.i.i.i.i:           ; preds = %._crit_edge.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %.not2960.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not2960.i.i.i.i.i, label %_ZSt6invokeIRKZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEEEUlNS0_4SpanIjEEE_JS9_EENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit, label %.lr.ph62.i.i.i.i.i

.lr.ph62.i.i.i.i.i:                               ; preds = %_ZNK4absl4SpanIjEixEm.exit40.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph62.i.i.i.i.i
  %.061.i.i.i.i.i = phi i32 [ %i.bo, %.lr.ph62.i.i.i.i.i ], [ %i.bx, %bb.h ] ; 3 uses
  %i.bq = urem i32 %.061.i.i.i.i.i, 10
  %i.br = trunc nuw nsw i32 %i.bq to i8
  %i.bs = or disjoint i8 %i.br, 48
  %i.bt = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.d, align 8
  %i.bv = sub i64 8, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bv
  store i8 %i.bs, ptr %i.bw, align 1
  %i.bx = udiv i32 %.061.i.i.i.i.i, 10
  %.not29.i.i.i.i.i = icmp ult i32 %.061.i.i.i.i.i, 10
  br i1 %.not29.i.i.i.i.i, label %_ZSt6invokeIRKZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEEEUlNS0_4SpanIjEEE_JS9_EENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit, label %bb.h, !llvm.loop !52

_ZSt6invokeIRKZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEEEUlNS0_4SpanIjEEE_JS9_EENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit: ; preds = %bb.h, %_ZNK4absl4SpanIjEixEm.exit40.i.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %0, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  call void %.val5.i.i.i.i(ptr %.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %3) #18, !inline_history !53
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl19functional_internal12InvokeObjectIZNS_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS_7uint128EiRKNS3_11FormatStateEE3$_0vJNS3_15BinaryToDecimalEEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) #0 {
bb.a:
  %2 = alloca %"class.absl::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = load i64, ptr %2, align 8
  %i.d = sub i64 %i.b, %i.c
  %i.e = mul i64 %i.d, 9
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.e, %i.g
  %i.i = load ptr, ptr %0, align 8, !nonnull !54, !align !55 ; 8 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val3.i.i.i.i = load i64, ptr %i.j, align 8    ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val4.i.i.i.i = load ptr, ptr %i.k, align 8    ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i

_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, 8
  %.not66.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not66.i.i.i.i, label %bb.b, label %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i

_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i: ; preds = %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i, %bb.a
  %i.o = add i64 %.val3.i.i.i.i, 1
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i
  %i.p = phi i64 [ %i.o, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i ], [ 0, %_ZNK4absl19str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i ]
  %i.q = add i64 %i.h, %i.p
  %i.r = load i8, ptr %i.i, align 8               ; 5 uses
  %.not.i.i.i.i = icmp ne i8 %i.r, 0
  %i.s = zext i1 %.not.i.i.i.i to i64
  %i.t = add i64 %i.q, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !noalias !56 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = zext nneg i32 %i.v to i64                ; 2 uses
  %.not.i6.i.i.i.i = icmp ult i64 %i.t, %i.x
  br i1 %.not.i6.i.i.i.i, label %bb.d, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = sub nuw nsw i64 %i.x, %i.t               ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !noalias !56 ; 2 uses
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = and i8 %i.aa, 16
  %.not1.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, %i.y
  store i64 %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1056 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 8 uses
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8            ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.ak, %i.am                    ; 4 uses
  %i.ao = icmp ugt i64 %i.y, %i.an
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 8 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.as = sub nuw nsw i64 %i.y, %i.an             ; 3 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.ai, %i.al
  br i1 %.not.peel.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 32, i64 %i.an, i1 false)
  %i.at = load ptr, ptr %i.aj, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 2 uses
  store ptr %i.au, ptr %i.aj, align 8
  %.pre.i.i.i.i.i = ptrtoint ptr %i.au to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.av = sub i64 %.pre-phi.i.i.i.i.i, %i.aq
  %i.aw = load ptr, ptr %i.ar, align 8
  %i.ax = load ptr, ptr %i.ae, align 8
  tail call void %i.aw(ptr noundef %i.ax, i64 %i.av, ptr nonnull %i.ap) #18, !inline_history !59
  store ptr %i.ap, ptr %i.aj, align 8
  %i.ay = icmp samesign ugt i64 %i.as, 1024
  br i1 %i.ay, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.g, %.peel.next.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.az, %.peel.next.i.i.i.i.i ], [ %i.as, %bb.g ]
  %i.az = add i64 %.010.i.i.i.i.i, -1024          ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ap, i8 32, i64 1024, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ba = load ptr, ptr %i.ar, align 8
  %i.bb = load ptr, ptr %i.ae, align 8
  tail call void %i.ba(ptr noundef %i.bb, i64 1024, ptr nonnull %i.ap) #18, !inline_history !59
  store ptr %i.ap, ptr %i.aj, align 8
  %i.bc = icmp ugt i64 %i.az, 1024
  br i1 %i.bc, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !41

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.g, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.y, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i ], [ %i.as, %bb.g ], [ %i.az, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.i.i.i.i ], [ %i.ap, %bb.g ], [ %i.ap, %.peel.next.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i.i.i.i, i8 32, i64 %.0.lcssa.i.i.i.i.i, i1 false)
  %i.bd = load ptr, ptr %i.aj, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.be, ptr %i.aj, align 8
  %.pre.i.i.i.i = load ptr, ptr %0, align 8       ; 2 uses
  %.pre74.i.i.i.i = load i8, ptr %.pre.i.i.i.i, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bf = phi i8 [ %.pre74.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %i.bg = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.10.065.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ %i.y, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.7.064.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ 0, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.not1.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not1.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8            ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1056
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph.i10.i.i.i.i, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bi, align 8
  tail call void %i.bs(ptr noundef %i.bt, i64 1024, ptr nonnull %i.bq) #18, !inline_history !59
  store ptr %i.bq, ptr %i.bn, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i: ; preds = %.lr.ph.i10.i.i.i.i, %bb.h
  %.lcssa.i9.i.i.i.i = phi ptr [ %i.bo, %bb.h ], [ %i.bq, %.lr.ph.i10.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i9.i.i.i.i, i8 %i.bf, i64 1, i1 false)
  %i.bu = load ptr, ptr %i.bn, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.bn, align 8
  %.pre75.i.i.i.i = load ptr, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bw = phi ptr [ %.pre75.i.i.i.i, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i ], [ %i.bg, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8            ; 7 uses
  %i.bz = icmp eq i64 %.sroa.7.064.i.i.i.i, 0
  br i1 %i.bz, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = add i64 %i.cb, %.sroa.7.064.i.i.i.i
  store i64 %i.cc, ptr %i.ca, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1056 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 8 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = load ptr, ptr %i.ce, align 8            ; 4 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.cf, %i.ch                    ; 4 uses
  %i.cj = icmp ugt i64 %.sroa.7.064.i.i.i.i, %i.ci
  br i1 %i.cj, label %.lr.ph.i20.i.i.i.i, label %._crit_edge.i17.i.i.i.i

.lr.ph.i20.i.i.i.i:                               ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 8 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cn = sub nuw nsw i64 %.sroa.7.064.i.i.i.i, %i.ci ; 3 uses
  %.not.peel.i21.i.i.i.i = icmp eq ptr %i.cd, %i.cg
  br i1 %.not.peel.i21.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i20.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cg, i8 48, i64 %i.ci, i1 false)
  %i.co = load ptr, ptr %i.ce, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ci ; 2 uses
  store ptr %i.cp, ptr %i.ce, align 8
  %.pre.i22.i.i.i.i = ptrtoint ptr %i.cp to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i20.i.i.i.i
  %.pre-phi.i23.i.i.i.i = phi i64 [ %.pre.i22.i.i.i.i, %bb.k ], [ %i.cf, %.lr.ph.i20.i.i.i.i ]
  %i.cq = sub i64 %.pre-phi.i23.i.i.i.i, %i.cl
  %i.cr = load ptr, ptr %i.cm, align 8
  %i.cs = load ptr, ptr %i.by, align 8
  tail call void %i.cr(ptr noundef %i.cs, i64 %i.cq, ptr nonnull %i.ck) #18, !inline_history !59
  store ptr %i.ck, ptr %i.ce, align 8
  %i.ct = icmp samesign ugt i64 %i.cn, 1024
  br i1 %i.ct, label %.peel.next.i24.i.i.i.i, label %._crit_edge.i17.i.i.i.i

.peel.next.i24.i.i.i.i:                           ; preds = %bb.l, %.peel.next.i24.i.i.i.i
  %.010.i25.i.i.i.i = phi i64 [ %i.cu, %.peel.next.i24.i.i.i.i ], [ %i.cn, %bb.l ]
  %i.cu = add i64 %.010.i25.i.i.i.i, -1024        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ck, i8 48, i64 1024, i1 false)
  store ptr %i.cd, ptr %i.ce, align 8
  %i.cv = load ptr, ptr %i.cm, align 8
  %i.cw = load ptr, ptr %i.by, align 8
  tail call void %i.cv(ptr noundef %i.cw, i64 1024, ptr nonnull %i.ck) #18, !inline_history !59
  store ptr %i.ck, ptr %i.ce, align 8
  %i.cx = icmp ugt i64 %i.cu, 1024
  br i1 %i.cx, label %.peel.next.i24.i.i.i.i, label %._crit_edge.i17.i.i.i.i, !llvm.loop !41

._crit_edge.i17.i.i.i.i:                          ; preds = %.peel.next.i24.i.i.i.i, %bb.l, %bb.j
  %.0.lcssa.i18.i.i.i.i = phi i64 [ %.sroa.7.064.i.i.i.i, %bb.j ], [ %i.cn, %bb.l ], [ %i.cu, %.peel.next.i24.i.i.i.i ] ; 2 uses
  %.lcssa.i19.i.i.i.i = phi ptr [ %i.cg, %bb.j ], [ %i.ck, %bb.l ], [ %i.ck, %.peel.next.i24.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i19.i.i.i.i, i8 48, i64 %.0.lcssa.i18.i.i.i.i, i1 false)
  %i.cy = load ptr, ptr %i.ce, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.0.lcssa.i18.i.i.i.i
  store ptr %i.cz, ptr %i.ce, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i: ; preds = %._crit_edge.i17.i.i.i.i, %bb.i
  %.pr.i.i.i.i = load i64, ptr %i.f, align 8      ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.de = load ptr, ptr %0, align 8, !nonnull !54, !align !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8            ; 7 uses
  %i.dh = sub i64 9, %.pr.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dh ; 2 uses
  %i.dj = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.dj, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel, label %bb.m

bb.m:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = add i64 %i.dl, %.pr.i.i.i.i
  store i64 %i.dm, ptr %i.dk, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 1056
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr
  %.not.i27.i.i.i.i.peel = icmp ult i64 %.pr.i.i.i.i, %i.ds
  br i1 %.not.i27.i.i.i.i.peel, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 3 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.dr, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = load ptr, ptr %i.dg, align 8
  tail call void %i.dx(ptr noundef %i.dy, i64 %i.dv, ptr nonnull %i.dt) #18, !inline_history !60
  store ptr %i.dt, ptr %i.do, align 8
  %i.dz = load ptr, ptr %i.dw, align 8
  %i.ea = load ptr, ptr %i.dg, align 8
  call void %i.dz(ptr noundef %i.ea, i64 %.pr.i.i.i.i, ptr nonnull %i.di) #18, !inline_history !61
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr nonnull align 1 %i.di, i64 %.pr.i.i.i.i, i1 false)
  %i.eb = load ptr, ptr %i.do, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.pr.i.i.i.i
  store ptr %i.ec, ptr %i.do, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel

_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel: ; preds = %bb.o, %bb.n, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.ed = load i64, ptr %2, align 8               ; 4 uses
  %i.ee = load i64, ptr %i.a, align 8
  %.not.i28.i.i.i.i.peel = icmp ult i64 %i.ed, %i.ee
  br i1 %.not.i28.i.i.i.i.peel, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel
  %i.ef = add nuw i64 %i.ed, 1
  store i64 %i.ef, ptr %2, align 8
  %i.eg = load i64, ptr %i.db, align 8
  %i.eh = icmp ult i64 %i.ed, %i.eg
  br i1 %i.eh, label %_ZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel, label %.loopexit46, !prof !15

_ZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel: ; preds = %bb.p
  %i.ei = load ptr, ptr %i.dc, align 8
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ed
  %i.ek = load i32, ptr %i.ej, align 4            ; 6 uses
  %i.el = urem i32 %i.ek, 10
  %i.em = trunc nuw nsw i32 %i.el to i8
  %i.en = or disjoint i8 %i.em, 48
  store i8 %i.en, ptr %i.dd, align 8
  %i.eo = udiv i32 %i.ek, 10000000
  %.lhs.trunc9.i.i.i.i.i.peel = trunc nuw nsw i32 %i.eo to i16
  %i.ep = urem i16 %.lhs.trunc9.i.i.i.i.i.peel, 10
  %i.eq = trunc nuw nsw i16 %i.ep to i8
  %i.er = udiv i32 %i.ek, 100000000
  %.lhs.trunc11.i.i.i.i.i.peel = trunc nuw nsw i32 %i.er to i8
  %i.es = urem i8 %.lhs.trunc11.i.i.i.i.i.peel, 10
  %i.et = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %i.eu = shufflevector <4 x i32> %i.et, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ev = udiv <4 x i32> %i.eu, <i32 10000, i32 1000, i32 100, i32 10>
  %i.ew = urem <4 x i32> %i.ev, splat (i32 10)
  %i.ex = trunc nuw nsw <4 x i32> %i.ew to <4 x i8>
  %i.ey = udiv i32 %i.ek, 100000
  %i.ez = udiv i32 %i.ek, 1000000
  %.lhs.trunc.i.i.i.i.i.peel = trunc nuw i32 %i.ey to i16
  %.lhs.trunc7.i.i.i.i.i.peel = trunc nuw nsw i32 %i.ez to i16
  %i.fa = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i.i.i.i.peel, i64 0
  %i.fb = insertelement <2 x i16> %i.fa, i16 %.lhs.trunc.i.i.i.i.i.peel, i64 1
  %i.fc = urem <2 x i16> %i.fb, splat (i16 10)
  %i.fd = insertelement <8 x i8> poison, i8 %i.es, i64 0
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.eq, i64 1
  %i.ff = shufflevector <4 x i8> %i.ex, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i8> %i.fe, <8 x i8> %i.ff, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.fh = shufflevector <2 x i16> %i.fc, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = trunc <8 x i16> %i.fh to <8 x i8>
  %i.fj = shufflevector <8 x i8> %i.fg, <8 x i8> %i.fi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.fk = or disjoint <8 x i8> %i.fj, splat (i8 48)
  store <8 x i8> %i.fk, ptr %i.da, align 8
  store i64 9, ptr %i.f, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i, %_ZN4absl19str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel
  %i.fl = load ptr, ptr %0, align 8, !nonnull !54, !align !55
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8            ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = add i64 %i.fp, 9
  store i64 %i.fq, ptr %i.fo, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 1056
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 24 ; 4 uses
  %i.ft = load ptr, ptr %i.fs, align 8            ; 2 uses
  %i.fu = ptrtoint ptr %i.fr to i64
  %i.fv = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.fw = sub i64 %i.fu, %i.fv
  %.not.i27.i.i.i.i = icmp ugt i64 %i.fw, 9
  br i1 %.not.i27.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 32 ; 3 uses
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = sub i64 %i.fv, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = load ptr, ptr %i.fn, align 8
  call void %i.gb(ptr noundef %i.gc, i64 %i.fz, ptr nonnull %i.fx) #18, !inline_history !60
end_hunk_1
begin_hunk_2_@"_ZN4absl19functional_internal12InvokeObjectIZNS_19str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS_7uint128EiRKNS3_11FormatStateEE3$_0vJNS3_24FractionalDigitGeneratorEEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE":bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i.i.preheader.i.i.i.i

.preheader.i.i.preheader.i.i.i.i:                 ; preds = %bb.b
  %i.j = add i64 %.lcssa95115.i.i.i.i, -1         ; 4 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.j, %.sroa.55.0.copyload.i.i.i
  br i1 %.first_iter.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader, label %bb.c, !prof !15

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %.preheader.i.i.preheader.i.i.i.i
  %xtraiter = and i64 %.lcssa95115.i.i.i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.lcssa95115.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i

_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.i.epil.init = phi i64 [ %.lcssa95115.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ag, %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i.unr-lcssa ]
  %.0612.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.an, %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod77 = trunc i64 %.lcssa95115.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.l = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.013.i.i.i.i.i.i.epil.init
  %i.m = getelementptr i8, ptr %i.l, i64 -4       ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, 10
  %i.q = add nuw nsw i64 %i.p, %.0612.i.i.i.i.i.i.epil.init ; 2 uses
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.m, align 4
  %i.s = lshr i64 %i.q, 32
  br label %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i

_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i:           ; preds = %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  %.lcssa65 = phi i64 [ %i.an, %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i.unr-lcssa ], [ %i.s, %.preheader.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.t = trunc nuw nsw i64 %.lcssa65 to i8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.j
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 0
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.j, i64 %.lcssa95115.i.i.i.i ; 3 uses
  %i.x = icmp eq i64 %.lcssa65, 9
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.013.i.i.i.i.i.i = phi i64 [ %.lcssa95115.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ag, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0612.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.an, %.preheader.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.y = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.013.i.i.i.i.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 -4       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %i.ac = mul nuw nsw i64 %i.ab, 10
  %i.ad = add nuw nsw i64 %i.ac, %.0612.i.i.i.i.i.i ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %i.z, align 4
  %i.af = lshr i64 %i.ad, 32
  %i.ag = add i64 %.013.i.i.i.i.i.i, -2           ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 10
  %i.al = add nuw nsw i64 %i.ak, %i.af            ; 2 uses
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %i.ah, align 4
  %i.an = lshr i64 %i.al, 32                      ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !63

bb.c:                                             ; preds = %.preheader.i.i.preheader.i.i.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4SpanIjEixEmENKUlvE_clEv) #19
  unreachable

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i
  %i.ao = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %i.ao, label %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i
  %i.ap = phi i64 [ %spec.select123.i.i.i.i, %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 8 uses
  %.sroa.2.014.i.i.i.i.i = phi i64 [ %i.aq, %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.aq = add i64 %.sroa.2.014.i.i.i.i.i, 1       ; 3 uses
  %.not.i2.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i2.i.i.i.i.i, label %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i3.i.preheader.i.i.i.i

.preheader.i3.i.preheader.i.i.i.i:                ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ar = add i64 %i.ap, -1                       ; 4 uses
  %.first_iter160.i.i.i.i = icmp ult i64 %i.ar, %.sroa.55.0.copyload.i.i.i
  br i1 %.first_iter160.i.i.i.i, label %.preheader.i3.i.i.i.i.i.preheader, label %bb.d, !prof !15

.preheader.i3.i.i.i.i.i.preheader:                ; preds = %.preheader.i3.i.preheader.i.i.i.i
  %xtraiter78 = and i64 %i.ap, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.preheader.i3.i.i.i.i.i.epil.preheader, label %.preheader.i3.i.i.i.i.i.preheader.new

.preheader.i3.i.i.i.i.i.preheader.new:            ; preds = %.preheader.i3.i.i.i.i.i.preheader
  %unroll_iter82 = and i64 %i.ap, -2
  br label %.preheader.i3.i.i.i.i.i

_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i3.i.i.i.i.i
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i, label %.preheader.i3.i.i.i.i.i.epil.preheader

.preheader.i3.i.i.i.i.i.epil.preheader:           ; preds = %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.preheader
  %.013.i4.i.i.i.i.i.epil.init = phi i64 [ %i.ap, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bn, %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i.unr-lcssa ]
  %.0612.i5.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bu, %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod81 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.at = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.013.i4.i.i.i.i.i.epil.init
  %i.au = getelementptr i8, ptr %i.at, i64 -4     ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 10
  %i.ay = add nuw nsw i64 %i.ax, %.0612.i5.i.i.i.i.i.epil.init ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.au, align 4
  %i.ba = lshr i64 %i.ay, 32
  br label %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i

_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i:          ; preds = %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.epil.preheader
  %.lcssa66 = phi i64 [ %i.bu, %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i.unr-lcssa ], [ %i.ba, %.preheader.i3.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ar
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp eq i32 %i.bc, 0
  %spec.select123.i.i.i.i = select i1 %i.bd, i64 %i.ar, i64 %i.ap ; 2 uses
  %i.be = icmp eq i64 %.lcssa66, 9
  br i1 %i.be, label %.lr.ph.split.i.i.i.i.i, label %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit198.i.i.i.i, !llvm.loop !66

.preheader.i3.i.i.i.i.i:                          ; preds = %.preheader.i3.i.i.i.i.i, %.preheader.i3.i.i.i.i.i.preheader.new
  %.013.i4.i.i.i.i.i = phi i64 [ %i.ap, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bn, %.preheader.i3.i.i.i.i.i ] ; 2 uses
  %.0612.i5.i.i.i.i.i = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bu, %.preheader.i3.i.i.i.i.i ]
  %niter83 = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %niter83.next.1, %.preheader.i3.i.i.i.i.i ]
  %i.bf = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.013.i4.i.i.i.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4     ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = zext i32 %i.bh to i64
  %i.bj = mul nuw nsw i64 %i.bi, 10
  %i.bk = add nuw nsw i64 %i.bj, %.0612.i5.i.i.i.i.i ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  store i32 %i.bl, ptr %i.bg, align 4
  %i.bm = lshr i64 %i.bk, 32
  %i.bn = add i64 %.013.i4.i.i.i.i.i, -2          ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = mul nuw nsw i64 %i.bq, 10
  %i.bs = add nuw nsw i64 %i.br, %i.bm            ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  store i32 %i.bt, ptr %i.bo, align 4
  %i.bu = lshr i64 %i.bs, 32                      ; 3 uses
  %niter83.next.1 = add nuw i64 %niter83, 2       ; 2 uses
  %niter83.ncmp.1 = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i.unr-lcssa, label %.preheader.i3.i.i.i.i.i, !llvm.loop !63

bb.d:                                             ; preds = %.preheader.i3.i.preheader.i.i.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4SpanIjEixEmENKUlvE_clEv) #19
  unreachable

_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit198.i.i.i.i: ; preds = %_ZNK4absl4SpanIjEixEm.exit.i8.i.i.i.i.i
  %i.bv = trunc nuw nsw i64 %.lcssa66 to i8
  br label %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i, %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit198.i.i.i.i, %.lr.ph.i.i.i.i.i, %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i, %bb.b
  %.val20.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i ], [ 0, %bb.b ], [ 0, %.lr.ph.i.i.i.i.i ], [ %spec.select123.i.i.i.i, %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit198.i.i.i.i ], [ 0, %.lr.ph.split.i.i.i.i.i ] ; 3 uses
  %.val19.i.i.i.i = phi i8 [ %i.t, %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i ], [ 0, %bb.b ], [ 0, %.lr.ph.i.i.i.i.i ], [ %i.bv, %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit198.i.i.i.i ], [ 0, %.lr.ph.split.i.i.i.i.i ] ; 3 uses
  %.sroa.2.0.lcssa.i.i.i.i.i = phi i64 [ 0, %_ZNK4absl4SpanIjEixEm.exit.i.i.i.i.i.i ], [ 0, %bb.b ], [ 1, %.lr.ph.i.i.i.i.i ], [ %i.aq, %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit198.i.i.i.i ], [ %i.aq, %.lr.ph.split.i.i.i.i.i ] ; 7 uses
  %i.bw = add i64 %.sroa.2.0.lcssa.i.i.i.i.i, 1   ; 3 uses
  %i.bx = load ptr, ptr %i.e, align 8, !nonnull !54, !align !55
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %.not62.i.i.i.i = icmp ult i64 %i.bw, %i.by
  br i1 %.not62.i.i.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i
  %i.bz = load ptr, ptr %0, align 8, !nonnull !54, !align !55
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8            ; 6 uses
  %i.cc = add i8 %.lcssa100102109.i.i.i.i, 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 1056
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp eq ptr %i.cg, %i.ci
  br i1 %i.cj, label %.lr.ph.i23.i.i.i.i, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

.lr.ph.i23.i.i.i.i:                               ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %i.cb, align 8
  tail call void %i.cm(ptr noundef %i.cn, i64 1024, ptr nonnull %i.ck) #18, !inline_history !68
  store ptr %i.ck, ptr %i.ch, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %.lr.ph.i23.i.i.i.i, %bb.e
  %.lcssa.i.i.i.i.i = phi ptr [ %i.ci, %bb.e ], [ %i.ck, %.lr.ph.i23.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i.i.i.i.i, i8 %i.cc, i64 1, i1 false)
  %i.co = load ptr, ptr %i.ch, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store ptr %i.cp, ptr %i.ch, align 8
  %i.cq = load ptr, ptr %0, align 8, !nonnull !54, !align !55
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8            ; 7 uses
  %i.ct = icmp eq i64 %.sroa.2.0.lcssa.i.i.i.i.i, 0
  br i1 %i.ct, label %bb.o, label %bb.f

bb.f:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = add i64 %i.cv, %.sroa.2.0.lcssa.i.i.i.i.i
  store i64 %i.cw, ptr %i.cu, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1056 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 8 uses
  %i.cz = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.da = load ptr, ptr %i.cy, align 8            ; 4 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.cz, %i.db                    ; 4 uses
  %i.dd = icmp ugt i64 %.sroa.2.0.lcssa.i.i.i.i.i, %i.dc
  br i1 %i.dd, label %.lr.ph.i26.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %bb.f
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 8 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.dh = sub nuw i64 %.sroa.2.0.lcssa.i.i.i.i.i, %i.dc ; 3 uses
  %.not.peel.i27.i.i.i.i = icmp eq ptr %i.cx, %i.da
  br i1 %.not.peel.i27.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i26.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.da, i8 57, i64 %i.dc, i1 false)
  %i.di = load ptr, ptr %i.cy, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dc ; 2 uses
  store ptr %i.dj, ptr %i.cy, align 8
  %.pre.i28.i.i.i.i = ptrtoint ptr %i.dj to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i26.i.i.i.i
  %.pre-phi.i29.i.i.i.i = phi i64 [ %.pre.i28.i.i.i.i, %bb.g ], [ %i.cz, %.lr.ph.i26.i.i.i.i ]
  %i.dk = sub i64 %.pre-phi.i29.i.i.i.i, %i.df
  %i.dl = load ptr, ptr %i.dg, align 8
  %i.dm = load ptr, ptr %i.cs, align 8
  tail call void %i.dl(ptr noundef %i.dm, i64 %i.dk, ptr nonnull %i.de) #18, !inline_history !68
  store ptr %i.de, ptr %i.cy, align 8
  %i.dn = icmp ugt i64 %i.dh, 1024
  br i1 %i.dn, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.h, %.peel.next.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.do, %.peel.next.i.i.i.i.i ], [ %i.dh, %bb.h ]
  %i.do = add i64 %.010.i.i.i.i.i, -1024          ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.de, i8 57, i64 1024, i1 false)
  store ptr %i.cx, ptr %i.cy, align 8
  %i.dp = load ptr, ptr %i.dg, align 8
  %i.dq = load ptr, ptr %i.cs, align 8
  tail call void %i.dp(ptr noundef %i.dq, i64 1024, ptr nonnull %i.de) #18, !inline_history !68
  store ptr %i.de, ptr %i.cy, align 8
  %i.dr = icmp ugt i64 %i.do, 1024
  br i1 %i.dr, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !41

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.h, %bb.f
  %.0.lcssa.i24.i.i.i.i = phi i64 [ %.sroa.2.0.lcssa.i.i.i.i.i, %bb.f ], [ %i.dh, %bb.h ], [ %i.do, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i25.i.i.i.i = phi ptr [ %i.da, %bb.f ], [ %i.de, %bb.h ], [ %i.de, %.peel.next.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i25.i.i.i.i, i8 57, i64 %.0.lcssa.i24.i.i.i.i, i1 false)
  %i.ds = load ptr, ptr %i.cy, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.0.lcssa.i24.i.i.i.i
  store ptr %i.dt, ptr %i.cy, align 8
  br label %bb.o

bb.i:                                             ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i
  %i.du = icmp ugt i64 %i.bw, %i.by
  %i.dv = icmp sgt i8 %.val19.i.i.i.i, 5
  %or.cond.i.i.i.i = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond.i.i.i.i, label %.critedge17.i.i.i.i, label %_ZNK4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i

_ZNK4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i: ; preds = %bb.i
  %i.dw = icmp eq i8 %.val19.i.i.i.i, 5           ; 2 uses
  %i.dx = icmp ne i64 %.val20.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %spec.select.i.i.i.i.i, label %.critedge17.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i
  %.not.i31.i.i.i.i = icmp eq i64 %.val20.i.i.i.i, 0
  %i.dy = select i1 %i.dw, i1 %.not.i31.i.i.i.i, i1 false
  br i1 %i.dy, label %bb.k, label %.critedge15.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %.not13.i.i.i.i = icmp ne i64 %.sroa.2.0.lcssa.i.i.i.i.i, 0
  %i.dz = and i8 %.lcssa100102109.i.i.i.i, -127
  %i.ea = icmp eq i8 %i.dz, 1
  %i.eb = or i1 %i.ea, %.not13.i.i.i.i
  br i1 %i.eb, label %.critedge17.i.i.i.i, label %.critedge15.i.i.i.i

.critedge17.i.i.i.i:                              ; preds = %bb.k, %_ZNK4absl19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i, %bb.i
  %i.ec = load ptr, ptr %0, align 8, !nonnull !54, !align !55
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8            ; 6 uses
  %i.ef = add i8 %.lcssa100102109.i.i.i.i, 49
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 1056
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 4 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = icmp eq ptr %i.ej, %i.el
  br i1 %i.em, label %.lr.ph.i35.i.i.i.i, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit41.i.i.i.i

.lr.ph.i35.i.i.i.i:                               ; preds = %.critedge17.i.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = load ptr, ptr %i.ee, align 8
  tail call void %i.ep(ptr noundef %i.eq, i64 1024, ptr nonnull %i.en) #18, !inline_history !68
  store ptr %i.en, ptr %i.ek, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit41.i.i.i.i

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit41.i.i.i.i: ; preds = %.lr.ph.i35.i.i.i.i, %.critedge17.i.i.i.i
  %.lcssa.i34.i.i.i.i = phi ptr [ %i.el, %.critedge17.i.i.i.i ], [ %i.en, %.lr.ph.i35.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i34.i.i.i.i, i8 %i.ef, i64 1, i1 false)
  %i.er = load ptr, ptr %i.ek, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  store ptr %i.es, ptr %i.ek, align 8
  %i.et = load ptr, ptr %i.e, align 8, !nonnull !54, !align !55 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = add i64 %i.eu, -1
  store i64 %i.ev, ptr %i.et, align 8
  br label %"_ZSt6invokeIRKZN4absl19str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateEE3$_0JNS2_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit"

.critedge15.i.i.i.i:                              ; preds = %bb.k, %bb.j
  %i.ew = load ptr, ptr %0, align 8, !nonnull !54, !align !55
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8            ; 6 uses
  %i.ez = add i8 %.lcssa100102109.i.i.i.i, 48
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr %i.fa, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 1056
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 4 uses
  %i.ff = load ptr, ptr %i.fe, align 8            ; 2 uses
  %i.fg = icmp eq ptr %i.fd, %i.ff
  br i1 %i.fg, label %.lr.ph.i45.i.i.i.i, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i

.lr.ph.i45.i.i.i.i:                               ; preds = %.critedge15.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = load ptr, ptr %i.ey, align 8
  tail call void %i.fj(ptr noundef %i.fk, i64 1024, ptr nonnull %i.fh) #18, !inline_history !68
  store ptr %i.fh, ptr %i.fe, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i: ; preds = %.lr.ph.i45.i.i.i.i, %.critedge15.i.i.i.i
  %.lcssa.i44.i.i.i.i = phi ptr [ %i.ff, %.critedge15.i.i.i.i ], [ %i.fh, %.lr.ph.i45.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i44.i.i.i.i, i8 %i.ez, i64 1, i1 false)
  %i.fl = load ptr, ptr %i.fe, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store ptr %i.fm, ptr %i.fe, align 8
  %i.fn = load ptr, ptr %0, align 8, !nonnull !54, !align !55
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8            ; 7 uses
  %i.fq = load ptr, ptr %i.e, align 8, !nonnull !54, !align !55 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = add i64 %i.fr, -1                       ; 5 uses
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit61.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = add i64 %i.fv, %i.fs
  store i64 %i.fw, ptr %i.fu, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 1056 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 24 ; 8 uses
  %i.fz = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.ga = load ptr, ptr %i.fy, align 8            ; 4 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = sub i64 %i.fz, %i.gb                    ; 4 uses
  %i.gd = icmp ugt i64 %i.fs, %i.gc
  br i1 %i.gd, label %.lr.ph.i55.i.i.i.i, label %._crit_edge.i52.i.i.i.i

.lr.ph.i55.i.i.i.i:                               ; preds = %bb.l
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 32 ; 8 uses
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.gh = sub nuw i64 %i.fs, %i.gc                ; 3 uses
  %.not.peel.i56.i.i.i.i = icmp eq ptr %i.fx, %i.ga
  br i1 %.not.peel.i56.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i55.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ga, i8 57, i64 %i.gc, i1 false)
  %i.gi = load ptr, ptr %i.fy, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gc ; 2 uses
  store ptr %i.gj, ptr %i.fy, align 8
  %.pre.i57.i.i.i.i = ptrtoint ptr %i.gj to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i55.i.i.i.i
  %.pre-phi.i58.i.i.i.i = phi i64 [ %.pre.i57.i.i.i.i, %bb.m ], [ %i.fz, %.lr.ph.i55.i.i.i.i ]
  %i.gk = sub i64 %.pre-phi.i58.i.i.i.i, %i.gf
  %i.gl = load ptr, ptr %i.gg, align 8
  %i.gm = load ptr, ptr %i.fp, align 8
  tail call void %i.gl(ptr noundef %i.gm, i64 %i.gk, ptr nonnull %i.ge) #18, !inline_history !68
  store ptr %i.ge, ptr %i.fy, align 8
  %i.gn = icmp ugt i64 %i.gh, 1024
  br i1 %i.gn, label %.peel.next.i59.i.i.i.i, label %._crit_edge.i52.i.i.i.i

.peel.next.i59.i.i.i.i:                           ; preds = %bb.n, %.peel.next.i59.i.i.i.i
  %.010.i60.i.i.i.i = phi i64 [ %i.go, %.peel.next.i59.i.i.i.i ], [ %i.gh, %bb.n ]
  %i.go = add i64 %.010.i60.i.i.i.i, -1024        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ge, i8 57, i64 1024, i1 false)
  store ptr %i.fx, ptr %i.fy, align 8
  %i.gp = load ptr, ptr %i.gg, align 8
  %i.gq = load ptr, ptr %i.fp, align 8
  tail call void %i.gp(ptr noundef %i.gq, i64 1024, ptr nonnull %i.ge) #18, !inline_history !68
  store ptr %i.ge, ptr %i.fy, align 8
  %i.gr = icmp ugt i64 %i.go, 1024
  br i1 %i.gr, label %.peel.next.i59.i.i.i.i, label %._crit_edge.i52.i.i.i.i, !llvm.loop !41

._crit_edge.i52.i.i.i.i:                          ; preds = %.peel.next.i59.i.i.i.i, %bb.n, %bb.l
  %.0.lcssa.i53.i.i.i.i = phi i64 [ %i.fs, %bb.l ], [ %i.gh, %bb.n ], [ %i.go, %.peel.next.i59.i.i.i.i ] ; 2 uses
  %.lcssa.i54.i.i.i.i = phi ptr [ %i.ga, %bb.l ], [ %i.ge, %bb.n ], [ %i.ge, %.peel.next.i59.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i54.i.i.i.i, i8 57, i64 %.0.lcssa.i53.i.i.i.i, i1 false)
  %i.gs = load ptr, ptr %i.fy, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.0.lcssa.i53.i.i.i.i
  store ptr %i.gt, ptr %i.fy, align 8
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit61.i.i.i.i

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit61.i.i.i.i: ; preds = %._crit_edge.i52.i.i.i.i, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i
  %i.gu = phi ptr [ %i.fq, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i ], [ %.pre.i.i.i.i, %._crit_edge.i52.i.i.i.i ]
  store i64 0, ptr %i.gu, align 8
  br label %"_ZSt6invokeIRKZN4absl19str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateEE3$_0JNS2_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit"

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.gv = load ptr, ptr %i.e, align 8, !nonnull !54, !align !55 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = sub i64 %i.gw, %i.bw
  store i64 %i.gx, ptr %i.gv, align 8
  %i.gy = load ptr, ptr %i.e, align 8, !nonnull !54, !align !55
  %i.gz = load i64, ptr %i.gy, align 8
  %.not.i.i.i.i = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i.i.i, label %"_ZSt6invokeIRKZN4absl19str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateEE3$_0JNS2_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit", label %.lr.ph.i.i.i.i

"_ZSt6invokeIRKZN4absl19str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateEE3$_0JNS2_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit": ; preds = %.lr.ph.i.i.i.i, %bb.o, %bb.a, %.preheader.i.i.i.i, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit41.i.i.i.i, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit61.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_ZN4absl19str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastENS_7uint128EPcim(i64 %0, i64 %1, ptr nofree noundef nonnull captures(ret: address, provenance) %2, i32 noundef range(i32 1, -2147483648) %3, i64 noundef %4) unnamed_addr #9 {
bb.a:
  %i.a = sub nsw i32 128, %3
  %i.b = zext i64 %1 to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = zext i64 %0 to i128
  %i.e = or disjoint i128 %i.c, %i.d
  %i.f = zext nneg i32 %i.a to i128
  %i.g = shl i128 %i.e, %i.f                      ; 2 uses
  %i.h = trunc i128 %i.g to i64                   ; 2 uses
  %i.i = lshr i128 %i.g, 64
  %i.j = trunc nuw i128 %i.i to i64               ; 2 uses
  %i.k = icmp ne i64 %4, 0
  %i.l = icmp ne i64 %i.h, 0                      ; 2 uses
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph, label %.preheader34

.preheader34:                                     ; preds = %.lr.ph, %bb.a
  %.032.lcssa = phi i64 [ %i.j, %bb.a ], [ %i.u, %.lr.ph ] ; 2 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %.015.lcssa = phi i64 [ %4, %bb.a ], [ %i.y, %.lr.ph ] ; 2 uses
  %.lcssa39 = phi i1 [ %i.l, %bb.a ], [ %i.aa, %.lr.ph ]
  %.not47 = icmp eq i64 %.015.lcssa, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph51

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01543 = phi i64 [ %i.y, %.lr.ph ], [ %4, %bb.a ]
  %.01642 = phi ptr [ %i.x, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.041 = phi i64 [ %i.p, %.lr.ph ], [ %i.h, %bb.a ]
  %.03240 = phi i64 [ %i.u, %.lr.ph ], [ %i.j, %bb.a ]
  %i.n = zext i64 %.041 to i128
  %i.o = mul nuw nsw i128 %i.n, 10                ; 2 uses
  %i.p = trunc i128 %i.o to i64                   ; 2 uses
  %i.q = lshr i128 %i.o, 64
  %i.r = zext i64 %.03240 to i128
  %i.s = mul nuw nsw i128 %i.r, 10
  %i.t = add nuw nsw i128 %i.q, %i.s              ; 2 uses
  %i.u = trunc i128 %i.t to i64                   ; 2 uses
  %i.v = lshr i128 %i.t, 64
  %.tr.i.i19 = trunc nuw nsw i128 %i.v to i8
  %i.w = add nuw nsw i8 %.tr.i.i19, 48
  %i.x = getelementptr inbounds nuw i8, ptr %.01642, i64 1 ; 2 uses
  store i8 %i.w, ptr %.01642, align 1
  %i.y = add i64 %.01543, -1                      ; 3 uses
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ne i64 %i.p, 0                     ; 2 uses
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph, label %.preheader34, !llvm.loop !69

.lr.ph51:                                         ; preds = %.preheader34, %bb.b
  %.150 = phi i64 [ %i.ai, %bb.b ], [ %.015.lcssa, %.preheader34 ]
  %.11749 = phi ptr [ %i.ah, %bb.b ], [ %.016.lcssa, %.preheader34 ] ; 3 uses
  %.13348 = phi i64 [ %i.ae, %bb.b ], [ %.032.lcssa, %.preheader34 ] ; 2 uses
  %.not18 = icmp eq i64 %.13348, 0
  br i1 %.not18, label %_ZN4absl19str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph51
  %i.ac = zext i64 %.13348 to i128
  %i.ad = mul nuw nsw i128 %i.ac, 10              ; 2 uses
  %i.ae = trunc i128 %i.ad to i64                 ; 2 uses
  %i.af = lshr i128 %i.ad, 64
  %.tr.i.i20 = trunc nuw nsw i128 %i.af to i8
  %i.ag = or disjoint i8 %.tr.i.i20, 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.11749, i64 1 ; 2 uses
  store i8 %i.ag, ptr %.11749, align 1
  %i.ai = add i64 %.150, -1                       ; 2 uses
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph51, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.b, %.preheader34
  %.133.lcssa = phi i64 [ %.032.lcssa, %.preheader34 ], [ %i.ae, %bb.b ] ; 2 uses
  %.117.lcssa = phi ptr [ %.016.lcssa, %.preheader34 ], [ %i.ah, %bb.b ] ; 5 uses
  %i.aj = icmp sgt i64 %.133.lcssa, -1
  br i1 %i.aj, label %_ZN4absl19str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ak = icmp ne i64 %.133.lcssa, -9223372036854775808
  %or.cond = select i1 %i.ak, i1 true, i1 %.lcssa39
  br i1 %or.cond, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c, %.preheader.backedge
  %.117.pn = phi ptr [ %.0.i, %.preheader.backedge ], [ %.117.lcssa, %bb.c ]
  %.0.i = getelementptr inbounds i8, ptr %.117.pn, i64 -1 ; 4 uses
  %i.al = load i8, ptr %.0.i, align 1             ; 2 uses
  switch i8 %i.al, label %_ZN4absl19str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split [
    i8 57, label %bb.d
    i8 46, label %.preheader.backedge
  ]

bb.d:                                             ; preds = %.preheader
  store i8 48, ptr %.0.i, align 1
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.preheader
  br label %.preheader, !llvm.loop !19

bb.e:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds i8, ptr %.117.lcssa, i64 -1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 46
  %spec.select.idx.i = sext i1 %i.ao to i64
  %spec.select.i = getelementptr inbounds i8, ptr %i.am, i64 %spec.select.idx.i ; 2 uses
  %i.ap = load i8, ptr %spec.select.i, align 1    ; 2 uses
  %i.aq = and i8 %i.ap, -127
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %.preheader.i, label %_ZN4absl19str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit

.preheader.i:                                     ; preds = %bb.e, %bb.g
  %i.as = phi i8 [ %.pr.i, %bb.g ], [ %i.ap, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.at, %bb.g ], [ %spec.select.i, %bb.e ] ; 3 uses
  switch i8 %i.as, label %_ZN4absl19str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split [
    i8 57, label %bb.f
    i8 46, label %bb.g
  ]

bb.f:                                             ; preds = %.preheader.i
  store i8 48, ptr %.0.i.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.i
  %i.at = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  %.pr.i = load i8, ptr %i.at, align 1
  br label %.preheader.i, !llvm.loop !19

_ZN4absl19str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split: ; preds = %.preheader.i, %.preheader
  %.lcssa64.sink = phi i8 [ %i.al, %.preheader ], [ %i.as, %.preheader.i ]
  %.0.i.i.lcssa.sink = phi ptr [ %.0.i, %.preheader ], [ %.0.i.i, %.preheader.i ]
  %i.au = add i8 %.lcssa64.sink, 1
  store i8 %i.au, ptr %.0.i.i.lcssa.sink, align 1
  br label %_ZN4absl19str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit

_ZN4absl19str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit: ; preds = %.lr.ph51, %_ZN4absl19str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split, %bb.e, %._crit_edge
  %.11737 = phi ptr [ %.117.lcssa, %._crit_edge ], [ %.117.lcssa, %_ZN4absl19str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split ], [ %.117.lcssa, %bb.e ], [ %.11749, %.lr.ph51 ]
  ret ptr %.11737
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_110FinalPrintERKNS1_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, ptr %2, i64 noundef range(i64 0, 3) %3, i64 noundef %4, i64 %.0.val, ptr %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %i.f = load i8, ptr %0, align 8                 ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not32 = icmp eq i8 %i.f, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1056
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %.lr.ph.i, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.h, align 8
  tail call void %i.r(ptr noundef %i.s, i64 1024, ptr nonnull %i.p) #18, !inline_history !40
  store ptr %i.p, ptr %i.m, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit: ; preds = %bb.c, %.lr.ph.i
  %.lcssa.i = phi ptr [ %i.n, %bb.c ], [ %i.p, %.lr.ph.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i, i8 %i.f, i64 1, i1 false)
  %i.t = load ptr, ptr %i.m, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 7 uses
  %i.x = icmp eq i64 %1, 0
  br i1 %i.x, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, %1
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 1056
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp ult i64 %1, %i.ag
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.w, align 8
  tail call void %i.al(ptr noundef %i.am, i64 %i.aj, ptr nonnull %i.ah) #18, !inline_history !38
  store ptr %i.ah, ptr %i.ac, align 8
  %i.an = load ptr, ptr %i.ak, align 8
  %i.ao = load ptr, ptr %i.w, align 8
  tail call void %i.an(ptr noundef %i.ao, i64 %1, ptr %2) #18, !inline_history !39
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %2, i64 %1, i1 false)
  %i.ap = load ptr, ptr %i.ac, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %1
  store ptr %i.aq, ptr %i.ac, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.ar = load ptr, ptr %i.v, align 8             ; 8 uses
  %i.as = icmp eq i64 %4, 0
  br i1 %i.as, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit39, label %bb.h

bb.h:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = add i64 %i.au, %4
  store i64 %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 1056 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 8 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = load ptr, ptr %i.ax, align 8            ; 4 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ay, %i.ba                    ; 4 uses
  %i.bc = icmp ugt i64 %4, %i.bb
  br i1 %i.bc, label %.lr.ph.i35, label %._crit_edge.i

.lr.ph.i35:                                       ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 8 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.bg = sub nuw i64 %4, %i.bb                   ; 3 uses
  %.not.peel.i36 = icmp eq ptr %i.aw, %i.az
  br i1 %.not.peel.i36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i35
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 48, i64 %i.bb, i1 false)
  %i.bh = load ptr, ptr %i.ax, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb ; 2 uses
  store ptr %i.bi, ptr %i.ax, align 8
  %.pre.i37 = ptrtoint ptr %i.bi to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i35
  %.pre-phi.i38 = phi i64 [ %.pre.i37, %bb.i ], [ %i.ay, %.lr.ph.i35 ]
  %i.bj = sub i64 %.pre-phi.i38, %i.be
  %i.bk = load ptr, ptr %i.bf, align 8
  %i.bl = load ptr, ptr %i.ar, align 8
  tail call void %i.bk(ptr noundef %i.bl, i64 %i.bj, ptr nonnull %i.bd) #18, !inline_history !40
  store ptr %i.bd, ptr %i.ax, align 8
  %i.bm = icmp ugt i64 %i.bg, 1024
  br i1 %i.bm, label %.peel.next.i, label %._crit_edge.i

.peel.next.i:                                     ; preds = %bb.j, %.peel.next.i
  %.010.i = phi i64 [ %i.bn, %.peel.next.i ], [ %i.bg, %bb.j ]
  %i.bn = add i64 %.010.i, -1024                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.bd, i8 48, i64 1024, i1 false)
  store ptr %i.aw, ptr %i.ax, align 8
  %i.bo = load ptr, ptr %i.bf, align 8
  %i.bp = load ptr, ptr %i.ar, align 8
  tail call void %i.bo(ptr noundef %i.bp, i64 1024, ptr nonnull %i.bd) #18, !inline_history !40
  store ptr %i.bd, ptr %i.ax, align 8
  %i.bq = icmp ugt i64 %i.bn, 1024
  br i1 %i.bq, label %.peel.next.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.peel.next.i, %bb.j, %bb.h
  %.0.lcssa.i33 = phi i64 [ %4, %bb.h ], [ %i.bg, %bb.j ], [ %i.bn, %.peel.next.i ] ; 2 uses
  %.lcssa.i34 = phi ptr [ %i.az, %bb.h ], [ %i.bd, %bb.j ], [ %i.bd, %.peel.next.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i34, i8 48, i64 %.0.lcssa.i33, i1 false)
  %i.br = load ptr, ptr %i.ax, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.0.lcssa.i33
  store ptr %i.bs, ptr %i.ax, align 8
  %.pre21 = load ptr, ptr %i.v, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit39

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit39: ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, %._crit_edge.i
  %i.bt = phi ptr [ %i.ar, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.pre21, %._crit_edge.i ] ; 7 uses
  %i.bu = icmp eq i64 %.0.val, 0
  br i1 %i.bu, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit41, label %bb.k

bb.k:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit39
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add i64 %i.bw, %.0.val
  store i64 %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 1056
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %.not.i40 = icmp ult i64 %.0.val, %i.cd
  br i1 %.not.i40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 3 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.bt, align 8
  tail call void %i.ci(ptr noundef %i.cj, i64 %i.cg, ptr nonnull %i.ce) #18, !inline_history !38
  store ptr %i.ce, ptr %i.bz, align 8
  %i.ck = load ptr, ptr %i.ch, align 8
  %i.cl = load ptr, ptr %i.bt, align 8
  tail call void %i.ck(ptr noundef %i.cl, i64 %.0.val, ptr %.8.val) #18, !inline_history !39
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit41

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %.8.val, i64 %.0.val, i1 false)
  %i.cm = load ptr, ptr %i.bz, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.0.val
  store ptr %i.cn, ptr %i.bz, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit41

bb.n:                                             ; preds = %bb.a
  %.not = icmp ne i8 %i.f, 0
  %i.co = zext i1 %.not to i64
  %i.cp = add i64 %4, %1
  %i.cq = add i64 %i.cp, %.0.val
  %i.cr = add i64 %i.cq, %i.co                    ; 2 uses
  %i.cs = zext nneg i32 %i.d to i64               ; 2 uses
  %.not.i42 = icmp ult i64 %i.cr, %i.cs
  br i1 %.not.i42, label %bb.o, label %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ct = sub nuw nsw i64 %i.cs, %i.cr            ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !71 ; 2 uses
  %i.cw = trunc i8 %i.cv to i1
  br i1 %i.cw, label %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = and i8 %i.cv, 16
  %.not1.i = icmp eq i8 %i.cx, 0
  br i1 %.not1.i, label %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit, label %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread

_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread: ; preds = %bb.o, %bb.n, %bb.p
  %.sroa.7.0.ph = phi i64 [ %i.ct, %bb.p ], [ 0, %bb.n ], [ 0, %bb.o ]
  %.sroa.10.0.ph = phi i64 [ 0, %bb.p ], [ 0, %bb.n ], [ %i.ct, %bb.o ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit52

_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit: ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = add i64 %i.dc, %i.ct
  store i64 %i.dd, ptr %i.db, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 1056 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 8 uses
  %i.dg = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dh = load ptr, ptr %i.df, align 8            ; 4 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.dg, %i.di                    ; 4 uses
  %i.dk = icmp ugt i64 %i.ct, %i.dj
  br i1 %i.dk, label %.lr.ph.i46, label %._crit_edge.i43

.lr.ph.i46:                                       ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 8 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.do = sub nuw nsw i64 %i.ct, %i.dj            ; 3 uses
  %.not.peel.i47 = icmp eq ptr %i.de, %i.dh
  br i1 %.not.peel.i47, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i46
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dh, i8 32, i64 %i.dj, i1 false)
  %i.dp = load ptr, ptr %i.df, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dj ; 2 uses
  store ptr %i.dq, ptr %i.df, align 8
  %.pre.i48 = ptrtoint ptr %i.dq to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i46
  %.pre-phi.i49 = phi i64 [ %.pre.i48, %bb.q ], [ %i.dg, %.lr.ph.i46 ]
  %i.dr = sub i64 %.pre-phi.i49, %i.dm
  %i.ds = load ptr, ptr %i.dn, align 8
  %i.dt = load ptr, ptr %i.da, align 8
  tail call void %i.ds(ptr noundef %i.dt, i64 %i.dr, ptr nonnull %i.dl) #18, !inline_history !40
  store ptr %i.dl, ptr %i.df, align 8
  %i.du = icmp samesign ugt i64 %i.do, 1024
  br i1 %i.du, label %.peel.next.i50, label %._crit_edge.i43

.peel.next.i50:                                   ; preds = %bb.r, %.peel.next.i50
  %.010.i51 = phi i64 [ %i.dv, %.peel.next.i50 ], [ %i.do, %bb.r ]
  %i.dv = add i64 %.010.i51, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.dl, i8 32, i64 1024, i1 false)
  store ptr %i.de, ptr %i.df, align 8
  %i.dw = load ptr, ptr %i.dn, align 8
  %i.dx = load ptr, ptr %i.da, align 8
  tail call void %i.dw(ptr noundef %i.dx, i64 1024, ptr nonnull %i.dl) #18, !inline_history !40
  store ptr %i.dl, ptr %i.df, align 8
  %i.dy = icmp ugt i64 %i.dv, 1024
  br i1 %i.dy, label %.peel.next.i50, label %._crit_edge.i43, !llvm.loop !41

._crit_edge.i43:                                  ; preds = %.peel.next.i50, %bb.r, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit
  %.0.lcssa.i44 = phi i64 [ %i.ct, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit ], [ %i.do, %bb.r ], [ %i.dv, %.peel.next.i50 ] ; 2 uses
  %.lcssa.i45 = phi ptr [ %i.dh, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit ], [ %i.dl, %bb.r ], [ %i.dl, %.peel.next.i50 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i45, i8 32, i64 %.0.lcssa.i44, i1 false)
  %i.dz = load ptr, ptr %i.df, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.0.lcssa.i44
  store ptr %i.ea, ptr %i.df, align 8
  %.pre = load i8, ptr %0, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit52

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit52: ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread, %._crit_edge.i43
  %i.eb = phi i8 [ %i.f, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread ], [ %.pre, %._crit_edge.i43 ] ; 2 uses
  %i.ec = phi ptr [ %i.cy, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread ], [ %i.cz, %._crit_edge.i43 ] ; 7 uses
  %.sroa.10.010 = phi i64 [ %.sroa.10.0.ph, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread ], [ 0, %._crit_edge.i43 ] ; 5 uses
  %.sroa.7.09 = phi i64 [ %.sroa.7.0.ph, %_ZN4absl19str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS1_11FormatStateE.exit.thread ], [ 0, %._crit_edge.i43 ] ; 5 uses
  %.not31 = icmp eq i8 %i.eb, 0
  br i1 %.not31, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit52
  %i.ed = load ptr, ptr %i.ec, align 8            ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 1056
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 4 uses
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.ek = icmp eq ptr %i.eh, %i.ej
  br i1 %i.ek, label %.lr.ph.i56, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit62

.lr.ph.i56:                                       ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = load ptr, ptr %i.ed, align 8
  tail call void %i.en(ptr noundef %i.eo, i64 1024, ptr nonnull %i.el) #18, !inline_history !40
  store ptr %i.el, ptr %i.ei, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit62

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit62: ; preds = %bb.s, %.lr.ph.i56
  %.lcssa.i55 = phi ptr [ %i.ej, %bb.s ], [ %i.el, %.lr.ph.i56 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i55, i8 %i.eb, i64 1, i1 false)
  %i.ep = load ptr, ptr %i.ei, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.eq, ptr %i.ei, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit62, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit52
  %i.er = load ptr, ptr %i.ec, align 8            ; 7 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %3) ; 6 uses
  %i.es = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.es, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = add i64 %i.eu, %.sroa.speculated.i
  store i64 %i.ev, ptr %i.et, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 1056
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 4 uses
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = ptrtoint ptr %i.ey to i64               ; 2 uses
  %i.fb = sub i64 %i.ez, %i.fa
  %.not.i63 = icmp ult i64 %.sroa.speculated.i, %i.fb
  br i1 %.not.i63, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 3 uses
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = sub i64 %i.fa, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = load ptr, ptr %i.er, align 8
  tail call void %i.fg(ptr noundef %i.fh, i64 %i.fe, ptr nonnull %i.fc) #18, !inline_history !38
  store ptr %i.fc, ptr %i.ex, align 8
  %i.fi = load ptr, ptr %i.ff, align 8
  %i.fj = load ptr, ptr %i.er, align 8
  tail call void %i.fi(ptr noundef %i.fj, i64 %.sroa.speculated.i, ptr %2) #18, !inline_history !39
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %2, i64 %.sroa.speculated.i, i1 false)
  %i.fk = load ptr, ptr %i.ex, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sroa.speculated.i
  store ptr %i.fl, ptr %i.ex, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64

_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64: ; preds = %bb.t, %bb.v, %bb.w
  %i.fm = load ptr, ptr %i.ec, align 8            ; 8 uses
  %i.fn = icmp eq i64 %.sroa.7.09, 0
  br i1 %i.fn, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit74, label %bb.x

bb.x:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = add i64 %i.fp, %.sroa.7.09
  store i64 %i.fq, ptr %i.fo, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 1056 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 8 uses
  %i.ft = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fu = load ptr, ptr %i.fs, align 8            ; 4 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = sub i64 %i.ft, %i.fv                    ; 4 uses
  %i.fx = icmp ugt i64 %.sroa.7.09, %i.fw
  br i1 %i.fx, label %.lr.ph.i68, label %._crit_edge.i65

.lr.ph.i68:                                       ; preds = %bb.x
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 32 ; 8 uses
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.gb = sub nuw nsw i64 %.sroa.7.09, %i.fw      ; 3 uses
  %.not.peel.i69 = icmp eq ptr %i.fr, %i.fu
  br i1 %.not.peel.i69, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i68
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 48, i64 %i.fw, i1 false)
  %i.gc = load ptr, ptr %i.fs, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fw ; 2 uses
  store ptr %i.gd, ptr %i.fs, align 8
  %.pre.i70 = ptrtoint ptr %i.gd to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i68
  %.pre-phi.i71 = phi i64 [ %.pre.i70, %bb.y ], [ %i.ft, %.lr.ph.i68 ]
  %i.ge = sub i64 %.pre-phi.i71, %i.fz
  %i.gf = load ptr, ptr %i.ga, align 8
  %i.gg = load ptr, ptr %i.fm, align 8
  tail call void %i.gf(ptr noundef %i.gg, i64 %i.ge, ptr nonnull %i.fy) #18, !inline_history !40
  store ptr %i.fy, ptr %i.fs, align 8
  %i.gh = icmp samesign ugt i64 %i.gb, 1024
  br i1 %i.gh, label %.peel.next.i72, label %._crit_edge.i65

.peel.next.i72:                                   ; preds = %bb.z, %.peel.next.i72
  %.010.i73 = phi i64 [ %i.gi, %.peel.next.i72 ], [ %i.gb, %bb.z ]
  %i.gi = add i64 %.010.i73, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.fy, i8 48, i64 1024, i1 false)
  store ptr %i.fr, ptr %i.fs, align 8
  %i.gj = load ptr, ptr %i.ga, align 8
  %i.gk = load ptr, ptr %i.fm, align 8
  tail call void %i.gj(ptr noundef %i.gk, i64 1024, ptr nonnull %i.fy) #18, !inline_history !40
  store ptr %i.fy, ptr %i.fs, align 8
  %i.gl = icmp ugt i64 %i.gi, 1024
  br i1 %i.gl, label %.peel.next.i72, label %._crit_edge.i65, !llvm.loop !41

._crit_edge.i65:                                  ; preds = %.peel.next.i72, %bb.z, %bb.x
  %.0.lcssa.i66 = phi i64 [ %.sroa.7.09, %bb.x ], [ %i.gb, %bb.z ], [ %i.gi, %.peel.next.i72 ] ; 2 uses
  %.lcssa.i67 = phi ptr [ %i.fu, %bb.x ], [ %i.fy, %bb.z ], [ %i.fy, %.peel.next.i72 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i67, i8 48, i64 %.0.lcssa.i66, i1 false)
  %i.gm = load ptr, ptr %i.fs, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.0.lcssa.i66
  store ptr %i.gn, ptr %i.fs, align 8
  %.pre19 = load ptr, ptr %i.ec, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit74

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit74: ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64, %._crit_edge.i65
  %i.go = phi ptr [ %i.fm, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64 ], [ %.pre19, %._crit_edge.i65 ] ; 7 uses
  %i.gp = icmp ugt i64 %3, %1
  br i1 %i.gp, label %bb.aa, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.aa:                                            ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit74
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i64 noundef %3, i64 noundef %1) #19
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit74
  %i.gq = sub nuw i64 %1, %3                      ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.gs = icmp eq i64 %1, %3
  br i1 %i.gs, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit79, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = add i64 %i.gu, %i.gq
  store i64 %i.gv, ptr %i.gt, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 1056
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 24 ; 4 uses
  %i.gy = load ptr, ptr %i.gx, align 8            ; 2 uses
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.hb = sub i64 %i.gz, %i.ha
  %.not.i78 = icmp ult i64 %i.gq, %i.hb
  br i1 %.not.i78, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 32 ; 3 uses
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = sub i64 %i.ha, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = load ptr, ptr %i.go, align 8
  tail call void %i.hg(ptr noundef %i.hh, i64 %i.he, ptr nonnull %i.hc) #18, !inline_history !38
  store ptr %i.hc, ptr %i.gx, align 8
  %i.hi = load ptr, ptr %i.hf, align 8
  %i.hj = load ptr, ptr %i.go, align 8
  tail call void %i.hi(ptr noundef %i.hj, i64 %i.gq, ptr %i.gr) #18, !inline_history !39
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit79

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gy, ptr align 1 %i.gr, i64 %i.gq, i1 false)
  %i.hk = load ptr, ptr %i.gx, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.gq
  store ptr %i.hl, ptr %i.gx, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit79

_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit79: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.ac, %bb.ad
  %i.hm = load ptr, ptr %i.ec, align 8            ; 8 uses
  %i.hn = icmp eq i64 %4, 0
  br i1 %i.hn, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit89, label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit79
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = add i64 %i.hp, %4
  store i64 %i.hq, ptr %i.ho, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 1056 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 24 ; 8 uses
  %i.ht = ptrtoint ptr %i.hr to i64               ; 2 uses
  %i.hu = load ptr, ptr %i.hs, align 8            ; 4 uses
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub i64 %i.ht, %i.hv                    ; 4 uses
  %i.hx = icmp ugt i64 %4, %i.hw
  br i1 %i.hx, label %.lr.ph.i83, label %._crit_edge.i80

.lr.ph.i83:                                       ; preds = %bb.ae
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 32 ; 8 uses
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %i.ib = sub nuw i64 %4, %i.hw                   ; 3 uses
  %.not.peel.i84 = icmp eq ptr %i.hr, %i.hu
  br i1 %.not.peel.i84, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i83
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hu, i8 48, i64 %i.hw, i1 false)
  %i.ic = load ptr, ptr %i.hs, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hw ; 2 uses
  store ptr %i.id, ptr %i.hs, align 8
  %.pre.i85 = ptrtoint ptr %i.id to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i83
  %.pre-phi.i86 = phi i64 [ %.pre.i85, %bb.af ], [ %i.ht, %.lr.ph.i83 ]
end_hunk_2
