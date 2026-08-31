Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.07?download=true
inline.NumInlined: 73
inline.NumDeleted: 50
begin_hunk_0_@_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_:bb.a
.split.us.i10.i.i:                                ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i
  %i.em = add i64 %.sink71.i.i22.i, %i.co
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

.lr.ph86.a:                                       ; preds = %.preheader36.i.i.i.preheader, %.preheader36.i.i.i
  %.sroa.2.0.i.i.i85 = phi i64 [ %i.en, %.preheader36.i.i.i ], [ %i.dn, %.preheader36.i.i.i.preheader ]
  %i.en = add i64 %.sroa.2.0.i.i.i85, -1          ; 6 uses
  %i.eo = icmp ult i64 %i.en, %i.co
  br i1 %i.eo, label %bb.y, label %.split32.us.i.i.i

bb.y:                                             ; preds = %.lr.ph86.a
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !84, !noalias !90, !noundef !11
  %i.er = add i64 %i.en, %.sink71.i.i22.i         ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.ck
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !82, !noalias !89, !noundef !11
  %.not20.i.i.i = icmp eq i8 %i.eq, %i.eu
  br i1 %.not20.i.i.i, label %.preheader36.i.i.i, label %bb.z

.split32.us.i.i.i:                                ; preds = %.lr.ph86.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.en, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16, !noalias !91
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ev = add i64 %.sink71.i.i22.i, %i.dp
  br label %bb.w

bb.aa:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i22.i, %invariant.op
  %i.ew = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i84
  br label %bb.w

bb.ab:                                            ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %.promoted.i11.i.i = load i64, ptr %i.cp, align 8, !alias.scope !99, !noalias !100 ; 3 uses
  %i.ex = add i64 %.promoted.i11.i.i, %i.cq       ; 3 uses
  %i.ey = icmp ult i64 %i.ex, %i.ck
  br i1 %i.ey, label %.lr.ph.i14.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.i14.i.i:                                   ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !99, !noalias !100, !noundef !11 ; 2 uses
  %i.fb = load i64, ptr %i.cd, align 8, !alias.scope !99, !noalias !100
  %.fr214.i.i = freeze i64 %i.fb                  ; 10 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !99, !noalias !100
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr214.i.i, i64 range(i64 0, -9223372036854775808) %i.co) ; 2 uses
  %i.fe = add i64 %.fr214.i.i, -1                 ; 2 uses
  %.first_iter.i15.i.i = icmp ult i64 %i.fe, %i.co
  %reass.sub95.i = sub i64 1, %.fr214.i.i         ; 2 uses
  br i1 %.first_iter.i15.i.i, label %.lr.ph.split.us.i.i.i.us.preheader, label %.lr.ph.split.us.i.i.i.preheader

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i14.i.i
  %exitcond.not.i16.i.i88.not = icmp ult i64 %.fr214.i.i, %i.co
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i.us.preheader:               ; preds = %.lr.ph.i14.i.i
  %exitcond.not.i16.i.i.us93.not = icmp ult i64 %.fr214.i.i, %i.co
  %.not34.i.us.i.i.us96 = icmp eq i64 %.fr214.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us

.lr.ph.split.us.i.i.i.us:                         ; preds = %.lr.ph.split.us.i.i.i.us.preheader, %bb.ae
  %.sink.i17.i28.i.us = phi i64 [ %.sink.i17.i.i.us, %bb.ae ], [ %.promoted.i11.i.i, %.lr.ph.split.us.i.i.i.us.preheader ] ; 7 uses
  %i.ff = phi i64 [ %i.gd, %bb.ae ], [ %i.ex, %.lr.ph.split.us.i.i.i.us.preheader ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !95, !noalias !102, !noundef !11
  %i.fi = and i8 %i.fh, 63
  %i.fj = zext nneg i8 %i.fi to i64
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = and i64 %i.fk, %i.fa
  %.not.us.i.i.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.us.i.i.i.us, label %bb.ad, label %.preheader35.i.i.i.us.preheader

.preheader35.i.i.i.us.preheader:                  ; preds = %.lr.ph.split.us.i.i.i.us
  br i1 %exitcond.not.i16.i.i.us93.not, label %.lr.ph95, label %.preheader.i18.us.i.i.us.preheader

.preheader35.i.i.i.us:                            ; preds = %.lr.ph95
  %i.fm = add i64 %.sroa.04.0.us.i.i.i.us94, 1    ; 2 uses
  %exitcond.not.i16.i.i.us = icmp eq i64 %i.fm, %umax.i.i.i
  br i1 %exitcond.not.i16.i.i.us, label %.preheader.i18.us.i.i.us.preheader, label %.lr.ph95

.preheader.i18.us.i.i.us.preheader:               ; preds = %.preheader35.i.i.i.us, %.preheader35.i.i.i.us.preheader
  br i1 %.not34.i.us.i.i.us96, label %.split.us.i20.i.i, label %.lr.ph98

.lr.ph95:                                         ; preds = %.preheader35.i.i.i.us.preheader, %.preheader35.i.i.i.us
  %.sroa.04.0.us.i.i.i.us94 = phi i64 [ %i.fm, %.preheader35.i.i.i.us ], [ %.fr214.i.i, %.preheader35.i.i.i.us.preheader ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.us.i.i.i.us94
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !97, !noalias !103, !noundef !11
  %i.fp = add i64 %.sroa.04.0.us.i.i.i.us94, %.sink.i17.i28.i.us ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.ck
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fp
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !95, !noalias !102, !noundef !11
  %.not21.us.i.i.i.us = icmp eq i8 %i.fo, %i.fs
  br i1 %.not21.us.i.i.i.us, label %.preheader35.i.i.i.us, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph95
  %.reass281.i.reass.i.us = add i64 %reass.sub95.i, %.sink.i17.i28.i.us
  %i.ft = add i64 %.reass281.i.reass.i.us, %.sroa.04.0.us.i.i.i.us94
  br label %bb.ae

.preheader.i18.us.i.i.us:                         ; preds = %.lr.ph98
  %.not34.i.us.i.i.us = icmp eq i64 %i.fu, 0
  br i1 %.not34.i.us.i.i.us, label %.split.us.i20.i.i, label %.lr.ph98

.lr.ph98:                                         ; preds = %.preheader.i18.us.i.i.us.preheader, %.preheader.i18.us.i.i.us
  %.sroa.2.0.us.i.us.i.i.us97 = phi i64 [ %i.fu, %.preheader.i18.us.i.i.us ], [ %.fr214.i.i, %.preheader.i18.us.i.i.us.preheader ]
  %i.fu = add i64 %.sroa.2.0.us.i.us.i.i.us97, -1 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !97, !noalias !103, !noundef !11
  %i.fx = add i64 %i.fu, %.sink.i17.i28.i.us      ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.ck
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !95, !noalias !102, !noundef !11
  %.not20.us.i.us.i.i.us = icmp eq i8 %i.fw, %i.ga
  br i1 %.not20.us.i.us.i.i.us, label %.preheader.i18.us.i.i.us, label %.split.us.i.i.us

.split.us.i.i.us:                                 ; preds = %.lr.ph98
  %i.gb = add i64 %.sink.i17.i28.i.us, %i.fd
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us.i.i.i.us
  %i.gc = add i64 %.sink.i17.i28.i.us, %i.co
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.split.us.i.i.us, %bb.ac
  %.sink.i17.i.i.us = phi i64 [ %i.gc, %bb.ad ], [ %i.ft, %bb.ac ], [ %i.gb, %.split.us.i.i.us ] ; 2 uses
  %i.gd = add i64 %.sink.i17.i.i.us, %i.cq        ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.ck
  br i1 %i.ge, label %.lr.ph.split.us.i.i.i.us, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.preheader, %bb.ah
  %.sink.i17.i28.i = phi i64 [ %.sink.i17.i.i, %bb.ah ], [ %.promoted.i11.i.i, %.lr.ph.split.us.i.i.i.preheader ] ; 4 uses
  %i.gf = phi i64 [ %i.gv, %bb.ah ], [ %i.ex, %.lr.ph.split.us.i.i.i.preheader ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !95, !noalias !102, !noundef !11
  %i.gi = and i8 %i.gh, 63
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = and i64 %i.gk, %i.fa
  %.not.us.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not.us.i.i.i, label %bb.ag, label %.preheader35.i.i.i.preheader

.preheader35.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i.i
  br i1 %exitcond.not.i16.i.i88.not, label %.lr.ph90, label %.preheader.i18.i.i

.preheader35.i.i.i:                               ; preds = %.lr.ph90
  %i.gm = add i64 %.sroa.04.0.us.i.i.i89, 1       ; 2 uses
  %exitcond.not.i16.i.i = icmp eq i64 %i.gm, %umax.i.i.i
  br i1 %exitcond.not.i16.i.i, label %.preheader.i18.i.i, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.sroa.04.0.us.i.i.i89 = phi i64 [ %i.gm, %.preheader35.i.i.i ], [ %.fr214.i.i, %.preheader35.i.i.i.preheader ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sroa.04.0.us.i.i.i89
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !97, !noalias !103, !noundef !11
  %i.gp = add i64 %.sroa.04.0.us.i.i.i89, %.sink.i17.i28.i ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.ck
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !95, !noalias !102, !noundef !11
  %.not21.us.i.i.i = icmp eq i8 %i.go, %i.gs
  br i1 %.not21.us.i.i.i, label %.preheader35.i.i.i, label %bb.af

.preheader.i18.i.i:                               ; preds = %.preheader35.i.i.i.preheader, %.preheader35.i.i.i
  %.not34.i.i.i = icmp eq i64 %.fr214.i.i, 0
  br i1 %.not34.i.i.i, label %.split.us.i20.i.i, label %.split32.us.i19.i.i

.split32.us.i19.i.i:                              ; preds = %.preheader.i18.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16, !noalias !104
  unreachable

bb.af:                                            ; preds = %.lr.ph90
  %.reass281.i.reass.i = add i64 %reass.sub95.i, %.sink.i17.i28.i
  %i.gt = add i64 %.reass281.i.reass.i, %.sroa.04.0.us.i.i.i89
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.gu = add i64 %.sink.i17.i28.i, %i.co
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i17.i.i = phi i64 [ %i.gu, %bb.ag ], [ %i.gt, %bb.af ] ; 2 uses
  %i.gv = add i64 %.sink.i17.i.i, %i.cq           ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.ck
  br i1 %i.gw, label %.lr.ph.split.us.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread

.split.us.i20.i.i:                                ; preds = %.preheader.i18.us.i.i.us.preheader, %.preheader.i18.us.i.i.us, %.preheader.i18.i.i
  %.sink.i17.i28.i16 = phi i64 [ %.sink.i17.i28.i, %.preheader.i18.i.i ], [ %.sink.i17.i28.i.us, %.preheader.i18.us.i.i.us ], [ %.sink.i17.i28.i.us, %.preheader.i18.us.i.i.us.preheader ]
  %i.gx = add i64 %.sink.i17.i28.i16, %i.co
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread: ; preds = %bb.w, %bb.ah, %bb.ae, %bb.s, %.preheader.i.i, %.split165.us.i.i, %bb.o, %bb.r, %bb.t, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50
  br label %bb.ai

_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i, %bb.n, %.split.us.i20.i.i, %.split.us.i10.i.i, %.loopexit42.i.i, %.split165.us.i.i, %bb.m, %bb.g
  %.sroa.10.0.i.ph.pn = phi i64 [ %i.i, %.split165.us.i.i ], [ %i.gx, %.split.us.i20.i.i ], [ %.promoted156.i.i, %bb.g ], [ %i.i, %bb.m ], [ %i.di, %.loopexit42.i.i ], [ %i.em, %.split.us.i10.i.i ], [ %i.bh, %bb.n ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50
  %0 = sub nuw i64 %.8.val, %.sroa.10.0.i.ph.pn
  %1 = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.10.0.i.ph.pn
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6
  %.sroa.3.0 = phi i64 [ %0, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6 ], [ %.8.val, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread ]
  %.sroa.0.0 = phi ptr [ %1, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread6 ], [ %.0.val, %_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli.exit.thread ]
  %i.gy = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.gz = insertvalue { ptr, i64 } %i.gy, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.gz
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtCs8WPnInWCYsb_6anyhow7contextINtB5_6QuotedRNtNtCs1xwejQucwHj_5alloc6string6StringENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.44.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.e, %bb.c ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtCs8WPnInWCYsb_6anyhow7contextINtB5_6QuotedRReENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli, ptr %.sroa.44.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.e, %bb.c ], [ true, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs8WPnInWCYsb_6anyhow7context6QuotedQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtBK_5Write10write_charCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !105
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !105
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !105
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !105
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !105
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !105
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !105
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !105
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !105
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvXs5_NtCs8WPnInWCYsb_6anyhow7contextINtB5_6QuotedQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtBQ_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs8WPnInWCYsb_6anyhow7context6QuotedQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtBK_5Write9write_fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNtCs8WPnInWCYsb_6anyhow7context6QuotedQNtB8_9FormatterENtB4_12SpecWriteFmt14spec_write_fmtCs3tZ2SXJA1qv_8jiff_cli.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !108
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i32 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyReNCNvBZ_9configure0E0EB11_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2s_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs3tZ2SXJA1qv_8jiff_cli(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCs8WPnInWCYsb_6anyhow7contextINtB5_6QuotedQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtBQ_5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { inlinehint }
attributes #14 = { noinline }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_: argument 0"}
!7 = distinct !{!7, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_"}
!8 = !{!9, !10}
!9 = distinct !{!9, !7, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_: argument 1"}
!10 = distinct !{!10, !7, !"_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_: argument 2"}
!11 = !{}
!12 = !{!6, !9, !10}
!13 = !{!14, !16, !17, !19, !20, !22}
end_hunk_0
