inline.NumInlined: 368
inline.NumDeleted: 121
begin_hunk_0_@_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc:bb.a
  %spec.select232 = tail call i32 @llvm.abs.i32(i32 %spec.select109.i, i1 true) ; 4 uses
  store i8 %spec.select, ptr %i.gn, align 1, !tbaa !9
  %.16 = getelementptr inbounds nuw i8, ptr %.15, i64 2 ; 2 uses
  %i.gp = icmp samesign ugt i32 %spec.select232, 99
  br i1 %i.gp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit
  %.lhs.trunc = trunc i32 %spec.select232 to i16
  %i.gq = udiv i16 %.lhs.trunc, 100               ; 2 uses
  %.zext = zext nneg i16 %i.gq to i32
  %.neg = mul nsw i32 %.zext, -100
  %i.gr = add nsw i32 %.neg, %spec.select232
  %i.gs = trunc i16 %i.gq to i8
  %i.gt = add nuw nsw i8 %i.gs, 48
  %i.gu = getelementptr inbounds nuw i8, ptr %.15, i64 3
  store i8 %i.gt, ptr %.16, align 1, !tbaa !9
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit
  %.17 = phi ptr [ %i.gu, %bb.at ], [ %.16, %.loopexit ] ; 2 uses
  %.1137 = phi i32 [ %i.gr, %bb.at ], [ %spec.select232, %.loopexit ] ; 2 uses
  %i.gv = zext i32 %.1137 to i64
  %i.gw = mul nuw nsw i64 %i.gv, 103
  %i.gx = lshr i64 %i.gw, 10
  %i.gy = trunc nuw nsw i64 %i.gx to i32          ; 2 uses
  %.neg.i199 = mul i32 %i.gy, 246
  %i.gz = add i32 %.neg.i199, %.1137
  %i.ha = shl i32 %i.gz, 8
  %i.hb = add i32 %i.ha, %i.gy
  %i.hc = trunc i32 %i.hb to i16
  %i.hd = add i16 %i.hc, 12336
  store i16 %i.hd, ptr %.17, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.17, i64 2 ; 2 uses
  store i8 0, ptr %i.he, align 1, !tbaa !9
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %1 to i64
  %i.hh = sub i64 %i.hf, %i.hg
  br label %bb.av

bb.av:                                            ; preds = %bb.x, %bb.aa, %bb.ae, %.loopexit201, %.loopexit202, %.loopexit203, %bb.aq, %bb.au, %bb.j, %bb.f, %bb.b
  %.1 = phi i64 [ 3, %bb.b ], [ %i.j, %bb.f ], [ %i.r, %bb.j ], [ %i.hh, %bb.au ], [ %i.ej, %bb.x ], [ %i.eq, %bb.aa ], [ %i.ey, %bb.ae ], [ %i.fg, %.loopexit201 ], [ %i.fo, %.loopexit202 ], [ %i.fv, %.loopexit203 ], [ %i.gi, %bb.aq ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal16safe_strto8_baseESt17basic_string_viewIcSt11char_traitsIcEEPai(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i8 0, ptr %2, align 1, !tbaa !9
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i28 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i28, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i28
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i28 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %bb.r [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i28
  br i1 %.not67.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %bb.r

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i28 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %bb.r [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i28
  br i1 %.not66.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i28 to i64
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 4 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 5 uses
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq ; 2 uses
  %i.at = icmp eq i64 %.pre-phi.i.i, %i.ap        ; 2 uses
  br i1 %i.s, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIaE13kVmaxOverBaseE, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %bb.s
  %i.aw = trunc nuw i32 %.0.i.i to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i6.i
  %.02640.i.i = phi i8 [ 0, %.lr.ph.i6.i ], [ %i.bh, %bb.w ] ; 3 uses
  %.02839.i.i = phi ptr [ %.2.i.i, %.lr.ph.i6.i ], [ %i.bi, %bb.w ] ; 2 uses
  %i.ax = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9   ; 2 uses
  %i.bb = sext i8 %i.ba to i32                    ; 2 uses
  %.not.i7.i = icmp sgt i32 %.0.i.i, %i.bb
  br i1 %.not.i7.i, label %bb.u, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.u:                                             ; preds = %bb.t
  %i.bc = icmp sgt i8 %.02640.i.i, %i.av
  br i1 %i.bc, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = mul i8 %.02640.i.i, %i.aw               ; 2 uses
  %i.be = sext i8 %i.bd to i32
  %i.bf = sub nsw i32 127, %i.bb
  %i.bg = icmp slt i32 %i.bf, %i.be
  br i1 %i.bg, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = add i8 %i.ba, %i.bd                     ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bi, %i.as
  br i1 %.not42.i.i, label %bb.t, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !34

bb.x:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIaE13kVminOverBaseE, i64 %i.ar
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.x
  %i.bl = trunc nuw i32 %.0.i.i to i8
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i9.i
  %.02742.i.i = phi i8 [ 0, %.lr.ph.i9.i ], [ %i.bw, %bb.ab ] ; 3 uses
  %.03041.i.i = phi ptr [ %.2.i.i, %.lr.ph.i9.i ], [ %i.bx, %bb.ab ] ; 2 uses
  %i.bm = load i8, ptr %.03041.i.i, align 1, !tbaa !9
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !9   ; 2 uses
  %i.bq = sext i8 %i.bp to i32                    ; 2 uses
  %.not.i10.i = icmp sgt i32 %.0.i.i, %i.bq
  br i1 %.not.i10.i, label %bb.z, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.z:                                             ; preds = %bb.y
  %i.br = icmp slt i8 %.02742.i.i, %i.bk
  br i1 %i.br, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = mul i8 %.02742.i.i, %i.bl               ; 2 uses
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add nsw i32 %i.bq, -128
  %i.bv = icmp sgt i32 %i.bu, %i.bt
  br i1 %i.bv, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = sub i8 %i.bs, %i.bp                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.03041.i.i, i64 1 ; 2 uses
  %.not44.i.i = icmp ult ptr %i.bx, %i.as
  br i1 %.not44.i.i, label %bb.y, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !35

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.s
  %.02742.lcssa.sink.i.sink.i = phi i8 [ 0, %bb.x ], [ 0, %bb.s ], [ %i.bw, %bb.ab ], [ -128, %bb.aa ], [ %.02742.i.i, %bb.y ], [ -128, %bb.z ], [ %.02640.i.i, %bb.t ], [ 127, %bb.u ], [ %i.bh, %bb.w ], [ 127, %bb.v ]
  %.0.ph.i = phi i1 [ true, %bb.x ], [ true, %bb.s ], [ true, %bb.ab ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.t ], [ false, %bb.u ], [ true, %bb.w ], [ false, %bb.v ]
  store i8 %.02742.lcssa.sink.i.sink.i, ptr %2, align 1, !tbaa !9
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIaEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i
  %.0.i = phi i1 [ false, %bb.k ], [ %.0.ph.i, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto16_baseESt17basic_string_viewIcSt11char_traitsIcEEPsi(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i16 0, ptr %2, align 2, !tbaa !36
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i28 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i28, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i28
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i28 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %bb.r [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i28
  br i1 %.not67.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %bb.r

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i28 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %bb.r [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i28
  br i1 %.not66.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i28 to i64
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 4 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 5 uses
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq ; 2 uses
  %i.at = icmp eq i64 %.pre-phi.i.i, %i.ap        ; 2 uses
  br i1 %i.s, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIsE13kVmaxOverBaseE, i64 %i.ar
  %i.av = load i16, ptr %i.au, align 2, !tbaa !36
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %bb.s
  %i.aw = trunc nuw i32 %.0.i.i to i16
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i6.i
  %.02640.i.i = phi i16 [ 0, %.lr.ph.i6.i ], [ %i.bi, %bb.w ] ; 3 uses
  %.02839.i.i = phi ptr [ %.2.i.i, %.lr.ph.i6.i ], [ %i.bj, %bb.w ] ; 2 uses
  %i.ax = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9   ; 2 uses
  %i.bb = sext i8 %i.ba to i32                    ; 2 uses
  %.not.i7.i = icmp sgt i32 %.0.i.i, %i.bb
  br i1 %.not.i7.i, label %bb.u, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.u:                                             ; preds = %bb.t
  %i.bc = icmp sgt i16 %.02640.i.i, %i.av
  br i1 %i.bc, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = mul i16 %.02640.i.i, %i.aw              ; 2 uses
  %i.be = sext i16 %i.bd to i32
  %i.bf = sub nsw i32 32767, %i.bb
  %i.bg = icmp slt i32 %i.bf, %i.be
  br i1 %i.bg, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = sext i8 %i.ba to i16
  %i.bi = add i16 %i.bd, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bj, %i.as
  br i1 %.not42.i.i, label %bb.t, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !38

bb.x:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIsE13kVminOverBaseE, i64 %i.ar
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !36
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.x
  %i.bm = trunc nuw i32 %.0.i.i to i16
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i9.i
  %.02742.i.i = phi i16 [ 0, %.lr.ph.i9.i ], [ %i.by, %bb.ab ] ; 3 uses
  %.03041.i.i = phi ptr [ %.2.i.i, %.lr.ph.i9.i ], [ %i.bz, %bb.ab ] ; 2 uses
  %i.bn = load i8, ptr %.03041.i.i, align 1, !tbaa !9
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9   ; 2 uses
  %i.br = sext i8 %i.bq to i32                    ; 2 uses
  %.not.i10.i = icmp sgt i32 %.0.i.i, %i.br
  br i1 %.not.i10.i, label %bb.z, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.z:                                             ; preds = %bb.y
  %i.bs = icmp slt i16 %.02742.i.i, %i.bl
  br i1 %i.bs, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = mul i16 %.02742.i.i, %i.bm              ; 2 uses
  %i.bu = sext i16 %i.bt to i32
  %i.bv = add nsw i32 %i.br, -32768
  %i.bw = icmp sgt i32 %i.bv, %i.bu
  br i1 %i.bw, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = sext i8 %i.bq to i16
  %i.by = sub i16 %i.bt, %i.bx                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.03041.i.i, i64 1 ; 2 uses
  %.not44.i.i = icmp ult ptr %i.bz, %i.as
  br i1 %.not44.i.i, label %bb.y, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !39

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.s
  %.02742.lcssa.sink.i.sink.i = phi i16 [ 0, %bb.x ], [ 0, %bb.s ], [ %i.by, %bb.ab ], [ -32768, %bb.aa ], [ %.02742.i.i, %bb.y ], [ -32768, %bb.z ], [ %.02640.i.i, %bb.t ], [ 32767, %bb.u ], [ %i.bi, %bb.w ], [ 32767, %bb.v ]
  %.0.ph.i = phi i1 [ true, %bb.x ], [ true, %bb.s ], [ true, %bb.ab ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.t ], [ false, %bb.u ], [ true, %bb.w ], [ false, %bb.v ]
  store i16 %.02742.lcssa.sink.i.sink.i, ptr %2, align 2, !tbaa !36
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIsEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i
  %.0.i = phi i1 [ false, %bb.k ], [ %.0.ph.i, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto32_baseESt17basic_string_viewIcSt11char_traitsIcEEPii(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !3
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i30 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i30, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i30
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i30 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %bb.r [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i30
  br i1 %.not67.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %bb.r

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i30 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %bb.r [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i30
  br i1 %.not66.i.i, label %bb.r, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalIiEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i30 to i64
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 4 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 5 uses
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq ; 2 uses
  %i.at = icmp eq i64 %.pre-phi.i.i, %i.ap        ; 2 uses
  br i1 %i.s, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIiE13kVmaxOverBaseE, i64 %i.ar
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  br i1 %i.at, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %bb.s, %bb.v
  %.02640.i.i = phi i32 [ %i.bf, %bb.v ], [ 0, %bb.s ] ; 3 uses
  %.02839.i.i = phi ptr [ %i.bg, %bb.v ], [ %.2.i.i, %bb.s ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216numbers_internal18safe_strto128_baseESt17basic_string_viewIcSt11char_traitsIcEEPNS0_6int128Ei:bb.a
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesINS0_6int128EE13kVminOverBaseE, i64 %i.bh
  %.sroa.039.0.copyload.i.i = load i128, ptr %i.bi, align 16, !tbaa !46
  %i.bj = zext nneg i32 %.0.i.i to i128
  br i1 %i.as, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %bb.w, %bb.z
  %.02854.i.i = phi ptr [ %i.bv, %bb.z ], [ %.2.i.i, %bb.w ] ; 2 uses
  %.sroa.041.053.i.i = phi i128 [ %i.bu, %bb.z ], [ 0, %bb.w ] ; 3 uses
  %i.bk = load i8, ptr %.02854.i.i, align 1, !tbaa !9
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9   ; 2 uses
  %i.bo = sext i8 %i.bn to i32
  %.not.i10.i = icmp sgt i32 %.0.i.i, %i.bo
  br i1 %.not.i10.i, label %bb.x, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i

bb.x:                                             ; preds = %.lr.ph.i9.i
  %i.bp = icmp slt i128 %.sroa.041.053.i.i, %.sroa.039.0.copyload.i.i
  br i1 %i.bp, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = mul nsw i128 %.sroa.041.053.i.i, %i.bj  ; 2 uses
  %i.br = sext i8 %i.bn to i128                   ; 2 uses
  %i.bs = or disjoint i128 %i.br, -170141183460469231731687303715884105728
  %i.bt = icmp slt i128 %i.bq, %i.bs
  br i1 %i.bt, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = sub nsw i128 %i.bq, %i.br               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02854.i.i, i64 1 ; 2 uses
  %.not56.i.i = icmp ult ptr %i.bv, %i.ar
  br i1 %.not56.i.i, label %.lr.ph.i9.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i, !llvm.loop !49

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i: ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph.i6.i, %bb.z, %bb.y, %bb.x, %.lr.ph.i9.i, %bb.w, %bb.s
  %.sroa.041.053.lcssa.sink.i.sink.i = phi i128 [ 0, %bb.w ], [ 0, %bb.s ], [ %i.bu, %bb.z ], [ -170141183460469231731687303715884105728, %bb.y ], [ %.sroa.041.053.i.i, %.lr.ph.i9.i ], [ -170141183460469231731687303715884105728, %bb.x ], [ %.sroa.033.045.i.i, %.lr.ph.i6.i ], [ 170141183460469231731687303715884105727, %bb.t ], [ %i.bf, %bb.v ], [ 170141183460469231731687303715884105727, %bb.u ]
  %.0.ph.i = phi i1 [ true, %bb.w ], [ true, %bb.s ], [ true, %bb.z ], [ false, %bb.y ], [ false, %.lr.ph.i9.i ], [ false, %bb.x ], [ false, %.lr.ph.i6.i ], [ false, %bb.t ], [ true, %bb.v ], [ false, %bb.u ]
  store i128 %.sroa.041.053.lcssa.sink.i.sink.i, ptr %2, align 16, !tbaa !46
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalINS0_6int128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_117safe_int_internalINS0_6int128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i
  %.0.i = phi i1 [ false, %bb.k ], [ %.0.ph.i, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.thread.sink.split.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strtou8_baseESt17basic_string_viewIcSt11char_traitsIcEEPhi(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i8 0, ptr %2, align 1, !tbaa !9
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i14 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i14, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i14
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i14 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i14
  br i1 %.not67.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i14 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i14
  br i1 %.not66.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i14 to i64
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i: ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 3 uses
  br i1 %i.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIhE13kVmaxOverBaseE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq
  %i.av = icmp eq i64 %.pre-phi.i.i, %i.ap
  br i1 %i.av, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.r
  %i.aw = trunc nuw i32 %.0.i.i to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i4.i
  %.02640.i.i = phi i8 [ 0, %.lr.ph.i4.i ], [ %i.bh, %bb.v ] ; 3 uses
  %.02839.i.i = phi ptr [ %.2.i.i, %.lr.ph.i4.i ], [ %i.bi, %bb.v ] ; 2 uses
  %i.ax = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9   ; 2 uses
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %.not.i5.i = icmp samesign ugt i32 %.0.i.i, %i.bb
  br i1 %.not.i5.i, label %bb.t, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bc = icmp ugt i8 %.02640.i.i, %i.at
  br i1 %i.bc, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = mul i8 %.02640.i.i, %i.aw               ; 2 uses
  %i.be = zext i8 %i.bd to i32
  %i.bf = xor i32 %i.bb, 255
  %i.bg = icmp samesign ult i32 %i.bf, %i.be
  br i1 %i.bg, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = add i8 %i.ba, %i.bd                     ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bi, %i.au
  br i1 %.not42.i.i, label %bb.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, !llvm.loop !50

_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.02640.lcssa.sink.i.i = phi i8 [ 0, %bb.r ], [ -1, %bb.u ], [ %.02640.i.i, %bb.s ], [ -1, %bb.t ], [ %i.bh, %bb.v ]
  %i.bj = phi i1 [ true, %bb.r ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.t ], [ true, %bb.v ]
  store i8 %.02640.lcssa.sink.i.i, ptr %2, align 1, !tbaa !9
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIhEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i
  %.0.i = phi i1 [ %i.bj, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIhEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i ], [ false, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %bb.k ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal18safe_strtou16_baseESt17basic_string_viewIcSt11char_traitsIcEEPti(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i16 0, ptr %2, align 2, !tbaa !36
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i14 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i14, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i14
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i14 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i14
  br i1 %.not67.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i14 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i14
  br i1 %.not66.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i14 to i64
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i: ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 3 uses
  br i1 %i.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesItE13kVmaxOverBaseE, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq
  %i.av = icmp eq i64 %.pre-phi.i.i, %i.ap
  br i1 %i.av, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.r
  %i.aw = trunc nuw i32 %.0.i.i to i16
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i4.i
  %.02640.i.i = phi i16 [ 0, %.lr.ph.i4.i ], [ %i.bj, %bb.v ] ; 3 uses
  %.02839.i.i = phi ptr [ %.2.i.i, %.lr.ph.i4.i ], [ %i.bk, %bb.v ] ; 2 uses
  %i.ax = load i8, ptr %.02839.i.i, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9   ; 2 uses
  %i.bb = sext i8 %i.ba to i32
  %i.bc = and i32 %i.bb, 65535                    ; 2 uses
  %.not.i5.i = icmp samesign ult i32 %i.bc, %.0.i.i
  br i1 %.not.i5.i, label %bb.t, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bd = icmp ugt i16 %.02640.i.i, %i.at
  br i1 %i.bd, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = mul i16 %.02640.i.i, %i.aw              ; 2 uses
  %i.bf = zext i16 %i.be to i32
  %i.bg = xor i32 %i.bc, 65535
  %i.bh = icmp samesign ult i32 %i.bg, %i.bf
  br i1 %i.bh, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = sext i8 %i.ba to i16
  %i.bj = add i16 %i.be, %i.bi                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 1 ; 2 uses
  %.not42.i.i = icmp ult ptr %i.bk, %i.au
  br i1 %.not42.i.i, label %bb.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, !llvm.loop !51

_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.02640.lcssa.sink.i.i = phi i16 [ 0, %bb.r ], [ -1, %bb.u ], [ %.02640.i.i, %bb.s ], [ -1, %bb.t ], [ %i.bj, %bb.v ]
  %i.bl = phi i1 [ true, %bb.r ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.t ], [ true, %bb.v ]
  store i16 %.02640.lcssa.sink.i.i, ptr %2, align 2, !tbaa !36
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalItEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i
  %.0.i = phi i1 [ %i.bl, %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intItEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i ], [ false, %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %bb.k ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal18safe_strtou32_baseESt17basic_string_viewIcSt11char_traitsIcEEPji(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !3
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 3 uses
  %.not75.i.i = icmp eq i64 %0, 0
  br i1 %.not75.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.05672.i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.c = load i8, ptr %.05672.i.i, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05672.i.i, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !32

.critedge.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.056.lcssa.i.i = phi ptr [ %1, %bb.b ], [ %i.h, %bb.c ], [ %.05672.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.j = icmp ult ptr %.056.lcssa.i.i, %i.b
  br i1 %i.j, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult ptr %.056.lcssa.i.i, %i.l
  br i1 %i.k, label %.lr.ph, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.critedge.i.i, %bb.d
  %.055.i.i15 = phi ptr [ %i.l, %bb.d ], [ %i.b, %.critedge.i.i ] ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %.055.i.i15, i64 -1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = and i8 %i.p, 8
  %.not69.i.i = icmp eq i8 %i.q, 0
  br i1 %.not69.i.i, label %bb.e, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.056.lcssa.i.i, align 1, !tbaa !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  switch i8 %i.r, label %bb.g [
    i8 45, label %bb.f
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.056.lcssa.i.i, i64 1 ; 2 uses
  %.not65.i.i = icmp ult ptr %i.t, %.055.i.i15
  br i1 %.not65.i.i, label %bb.g, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %i.t, %bb.f ], [ %.056.lcssa.i.i, %bb.e ] ; 16 uses
  switch i32 %3, label %bb.q [
    i32 0, label %bb.h
    i32 16, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = ptrtoint ptr %.055.i.i15 to i64          ; 6 uses
  %i.v = ptrtoint ptr %.1.i.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.j, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  switch i8 %i.ab, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.k
    i8 88, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not67.i.i = icmp ult ptr %i.ac, %.055.i.i15
  br i1 %.not67.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.l:                                             ; preds = %bb.h
  %i.ad = icmp eq i64 %i.w, 1
  br i1 %i.ad, label %.thread.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

.thread.i.i:                                      ; preds = %bb.l
  %.pre.i.i = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %.pre.fr.i.i = freeze i8 %.pre.i.i
  %i.ae = icmp eq i8 %.pre.fr.i.i, 48             ; 2 uses
  %spec.select.idx.i.i = zext i1 %i.ae to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i
  %spec.select96.i.i = select i1 %i.ae, i32 8, i32 10
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.m:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %.055.i.i15 to i64         ; 5 uses
  %i.ag = ptrtoint ptr %.1.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.i.i, align 1, !tbaa !9
  %i.ak = icmp eq i8 %i.aj, 48
  br i1 %i.ak, label %bb.o, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  switch i8 %i.am, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i [
    i8 120, label %bb.p
    i8 88, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  %.not66.i.i = icmp ult ptr %i.an, %.055.i.i15
  br i1 %.not66.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

bb.q:                                             ; preds = %bb.g
  %i.ao = add i32 %3, -2
  %or.cond.i.i = icmp ult i32 %i.ao, 35
  br i1 %or.cond.i.i, label %._crit_edge.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre77.i.i = ptrtoint ptr %.055.i.i15 to i64
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i: ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %.thread.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre77.i.i, %._crit_edge.i.i ], [ %i.u, %bb.k ], [ %i.af, %bb.o ], [ %i.u, %bb.l ], [ %i.af, %bb.p ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.u, %.thread.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %._crit_edge.i.i ], [ %i.ac, %bb.k ], [ %.1.i.i, %bb.o ], [ %.1.i.i, %bb.l ], [ %i.an, %bb.p ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %spec.select.i.i, %.thread.i.i ], [ %.1.i.i, %bb.i ], [ %i.aa, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %3, %._crit_edge.i.i ], [ 16, %bb.k ], [ 16, %bb.o ], [ 10, %bb.l ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select96.i.i, %.thread.i.i ], [ 10, %bb.i ], [ 8, %bb.j ] ; 3 uses
  br i1 %i.s, label %_ZN4absl12lts_2025051212_GLOBAL__N_118safe_uint_internalIjEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i
  %i.ap = ptrtoint ptr %.2.i.i to i64             ; 2 uses
  %i.aq = sub i64 %.pre-phi.i.i, %i.ap
  %i.ar = zext nneg i32 %.0.i.i to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIjE13kVmaxOverBaseE, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %i.aq
  %i.av = icmp eq i64 %.pre-phi.i.i, %i.ap
  br i1 %i.av, label %_ZN4absl12lts_2025051212_GLOBAL__N_123safe_parse_positive_intIjEEbSt17basic_string_viewIcSt11char_traitsIcEEiPT_.exit.i, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.r, %bb.u
  %.02640.i.i = phi i32 [ %i.bf, %bb.u ], [ 0, %bb.r ] ; 3 uses
end_hunk_1
