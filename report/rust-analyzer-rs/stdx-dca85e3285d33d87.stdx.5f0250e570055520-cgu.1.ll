Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/stdx-dca85e3285d33d87.stdx.5f0250e570055520-cgu.1?download=true
inline.NumInlined: 202
inline.NumDeleted: 122
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter14SplitInclusiveReENCNvCs89JjGp7luZU_4stdx13indent_string0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweENCINvXsl_NtB3l_6stringNtB41_6StringINtNtB2h_7collect6ExtendB3g_E6extendBN_E0E0EB1D_:bb.a
.split.us.i.i.i.i.i:                              ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i
  %i.dj = add i64 %i.co, %.sroa.19.0.copyload.a   ; 3 uses
  br label %._crit_edge.i.i.i.i

.lr.ph94:                                         ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i93 = phi i64 [ %i.dk, %.preheader36.i.i.i.i.i ], [ %.fr63.i.i.i.i, %.preheader36.i.i.i.i.i.preheader ]
  %i.dk = add i64 %.sroa.2.0.i.i.i.i.i93, -1      ; 6 uses
  %i.dl = icmp ult i64 %i.dk, %.sroa.19.0.copyload.a
  br i1 %i.dl, label %bb.w, label %.split32.us.i.i.i.i.i

bb.w:                                             ; preds = %.lr.ph94
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.18.0.copyload.a, i64 %i.dk
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !117, !noalias !118, !noundef !5
  %i.do = add i64 %i.dk, %i.co                    ; 2 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.17.0.copyload.a
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.165.0.copyload, i64 %i.do
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !116, !noalias !118, !noundef !5
  %.not20.i.i.i.i.i = icmp eq i8 %i.dn, %i.dr
  br i1 %.not20.i.i.i.i.i, label %.preheader36.i.i.i.i.i, label %bb.x

.split32.us.i.i.i.i.i:                            ; preds = %.lr.ph94
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef range(i64 0, -9223372036854775808) %.sroa.19.0.copyload.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !119
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ds = add i64 %i.co, %.sroa.51.sroa.0.0.insert.insert
  br label %bb.u

bb.y:                                             ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.co, %invariant.op
  %i.dt = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i92
  br label %bb.u

bb.z:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  br i1 %i.br, label %.lr.ph.i7.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i7.i.i.i.i:                                ; preds = %bb.z
  %.sroa.51.sroa.913.0.insert.ext14 = zext i8 %.sroa.51.sroa.913.0 to i64
  %.sroa.51.sroa.913.0.insert.shift15 = shl nuw nsw i64 %.sroa.51.sroa.913.0.insert.ext14, 16
  %.sroa.51.sroa.0.0.insert.ext6 = zext i8 %.sroa.51.sroa.0.0 to i64
  %i.du = or disjoint i64 %.sroa.51.sroa.913.0.insert.shift15, %.sroa.51.sroa.0.0.insert.ext6
  %.sroa.51.sroa.0.0.insert.insert8 = or disjoint i64 %i.du, %i.q
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr63.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.19.0.copyload.a) ; 2 uses
  %i.dv = add i64 %.fr63.i.i.i.i, -1              ; 2 uses
  %.first_iter.i8.i.i.i.i = icmp ult i64 %i.dv, %.sroa.19.0.copyload.a
  %i.dw = sub i64 1, %.fr63.i.i.i.i               ; 2 uses
  br i1 %.first_iter.i8.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i7.i.i.i.i
  %exitcond.not.i.i.i.i.i96.not = icmp ult i64 %.fr63.i.i.i.i, %.sroa.19.0.copyload.a
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.preheader:           ; preds = %.lr.ph.i7.i.i.i.i
  %exitcond.not.i.us.i.i.i.i101.not = icmp ult i64 %.fr63.i.i.i.i, %.sroa.19.0.copyload.a
  %.not34.i.us.us.i.i.i.i104 = icmp eq i64 %.fr63.i.i.i.i, 0
  br label %.lr.ph.split.us.i.us.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i:                     ; preds = %.lr.ph.split.us.i.us.i.i.i.i.preheader, %bb.ac
  %i.dx = phi i64 [ %i.ex, %bb.ac ], [ %i.bq, %.lr.ph.split.us.i.us.i.i.i.i.preheader ]
  %i.dy = phi i64 [ %.sink.i9.us.i.i.i.i, %bb.ac ], [ %.sink.i9.us.i.i.i44.i, %.lr.ph.split.us.i.us.i.i.i.i.preheader ] ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.165.0.copyload, i64 %i.dx
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !120, !noalias !118, !noundef !5
  %i.eb = and i8 %i.ea, 63
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.ed, %.sroa.13.0.copyload.a
  %.not.us.i.us.i.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.us.i.us.i.i.i.i, label %bb.ab, label %.preheader35.i.us.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i.preheader:              ; preds = %.lr.ph.split.us.i.us.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i101.not, label %.lr.ph103, label %.preheader.i10.us.us.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i:                        ; preds = %.lr.ph103
  %i.ef = add i64 %.sroa.04.0.us.i.us.i.i.i.i102, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i.i = icmp eq i64 %i.ef, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i.preheader, label %.lr.ph103

.preheader.i10.us.us.i.i.i.i.preheader:           ; preds = %.preheader35.i.us.i.i.i.i, %.preheader35.i.us.i.i.i.i.preheader
  br i1 %.not34.i.us.us.i.i.i.i104, label %.split.us.i12.i.i.i.i, label %.lr.ph106

.lr.ph103:                                        ; preds = %.preheader35.i.us.i.i.i.i.preheader, %.preheader35.i.us.i.i.i.i
  %.sroa.04.0.us.i.us.i.i.i.i102 = phi i64 [ %i.ef, %.preheader35.i.us.i.i.i.i ], [ %.fr63.i.i.i.i, %.preheader35.i.us.i.i.i.i.preheader ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.18.0.copyload.a, i64 %.sroa.04.0.us.i.us.i.i.i.i102
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !121, !noalias !118, !noundef !5
  %i.ei = add i64 %.sroa.04.0.us.i.us.i.i.i.i102, %i.dy ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %.sroa.17.0.copyload.a
  call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.165.0.copyload, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !120, !noalias !118, !noundef !5
  %.not21.us.i.us.i.i.i.i = icmp eq i8 %i.eh, %i.el
  br i1 %.not21.us.i.us.i.i.i.i, label %.preheader35.i.us.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph103
  %i.em = add i64 %i.dy, %i.dw
  %i.en = add i64 %i.em, %.sroa.04.0.us.i.us.i.i.i.i102
  br label %bb.ac

.preheader.i10.us.us.i.i.i.i:                     ; preds = %.lr.ph106
  %.not34.i.us.us.i.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not34.i.us.us.i.i.i.i, label %.split.us.i12.i.i.i.i, label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader.i10.us.us.i.i.i.i.preheader, %.preheader.i10.us.us.i.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i.i105 = phi i64 [ %i.eo, %.preheader.i10.us.us.i.i.i.i ], [ %.fr63.i.i.i.i, %.preheader.i10.us.us.i.i.i.i.preheader ]
  %i.eo = add i64 %.sroa.2.0.us.i.us.us.i.i.i.i105, -1 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.18.0.copyload.a, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !121, !noalias !118, !noundef !5
  %i.er = add i64 %i.eo, %i.dy                    ; 2 uses
  %i.es = icmp ult i64 %i.er, %.sroa.17.0.copyload.a
  call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.165.0.copyload, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !120, !noalias !118, !noundef !5
  %.not20.us.i.us.us.i.i.i.i = icmp eq i8 %i.eq, %i.eu
  br i1 %.not20.us.i.us.us.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i, label %.split.us.us.i.i.i.i

.split.us.us.i.i.i.i:                             ; preds = %.lr.ph106
  %i.ev = add i64 %.sroa.51.sroa.0.0.insert.insert8, %i.dy
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.us.i.us.i.i.i.i
  %i.ew = add i64 %i.dy, %.sroa.19.0.copyload.a
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.split.us.us.i.i.i.i, %bb.aa
  %.sink.i9.us.i.i.i.i = phi i64 [ %i.ew, %bb.ab ], [ %i.en, %bb.aa ], [ %i.ev, %.split.us.us.i.i.i.i ] ; 2 uses
  %i.ex = add i64 %.sink.i9.us.i.i.i.i, %i.i      ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %.sroa.17.0.copyload.a
  br i1 %i.ey, label %.lr.ph.split.us.i.us.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %bb.af
  %i.ez = phi i64 [ %i.fr, %bb.af ], [ %i.bq, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.fa = phi i64 [ %.sink.i9.i.i.i.i, %bb.af ], [ %.sink.i9.us.i.i.i44.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.165.0.copyload, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !120, !noalias !118, !noundef !5
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %.sroa.13.0.copyload.a
  %.not.us.i.i.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.us.i.i.i.i.i, label %bb.ae, label %.preheader35.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.split.us.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i96.not, label %.lr.ph98, label %.preheader.i10.i.i.i.i

.preheader35.i.i.i.i.i:                           ; preds = %.lr.ph98
  %i.fh = add i64 %.sroa.04.0.us.i.i.i.i.i97, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fh, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i10.i.i.i.i, label %.lr.ph98

.lr.ph98:                                         ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i97 = phi i64 [ %i.fh, %.preheader35.i.i.i.i.i ], [ %.fr63.i.i.i.i, %.preheader35.i.i.i.i.i.preheader ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.18.0.copyload.a, i64 %.sroa.04.0.us.i.i.i.i.i97
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !121, !noalias !118, !noundef !5
  %i.fk = add i64 %.sroa.04.0.us.i.i.i.i.i97, %i.fa ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %.sroa.17.0.copyload.a
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.165.0.copyload, i64 %i.fk
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !120, !noalias !118, !noundef !5
  %.not21.us.i.i.i.i.i = icmp eq i8 %i.fj, %i.fn
  br i1 %.not21.us.i.i.i.i.i, label %.preheader35.i.i.i.i.i, label %bb.ad

.preheader.i10.i.i.i.i:                           ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i64 %.fr63.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %.split.us.i12.i.i.i.i, label %.split32.us.i11.i.i.i.i

.split32.us.i11.i.i.i.i:                          ; preds = %.preheader.i10.i.i.i.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.dv, i64 noundef range(i64 0, -9223372036854775808) %.sroa.19.0.copyload.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !122
  unreachable

bb.ad:                                            ; preds = %.lr.ph98
  %i.fo = add i64 %i.fa, %i.dw
  %i.fp = add i64 %i.fo, %.sroa.04.0.us.i.i.i.i.i97
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.fq = add i64 %i.fa, %.sroa.19.0.copyload.a
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink.i9.i.i.i.i = phi i64 [ %i.fq, %bb.ae ], [ %i.fp, %bb.ad ] ; 2 uses
  %i.fr = add i64 %.sink.i9.i.i.i.i, %i.i         ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %.sroa.17.0.copyload.a
  br i1 %i.fs, label %.lr.ph.split.us.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.split.us.i12.i.i.i.i:                            ; preds = %.preheader.i10.us.us.i.i.i.i.preheader, %.preheader.i10.us.us.i.i.i.i, %.preheader.i10.i.i.i.i
  %.us-phi.i.i.i.i = phi i64 [ %i.fa, %.preheader.i10.i.i.i.i ], [ %i.dy, %.preheader.i10.us.us.i.i.i.i ], [ %i.dy, %.preheader.i10.us.us.i.i.i.i.preheader ]
  %i.ft = add i64 %.us-phi.i.i.i.i, %.sroa.19.0.copyload.a ; 3 uses
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.u, %bb.af, %bb.ac, %.loopexit48.i.i.i, %bb.z, %bb.r, %.preheader.i.i.i.i
  %.sroa.51.sroa.913.2 = phi i8 [ 1, %.loopexit48.i.i.i ], [ %.sroa.51.sroa.913.0, %bb.af ], [ %.sroa.51.sroa.913.0, %bb.z ], [ %.sroa.51.sroa.913.0, %bb.ac ], [ %.sroa.51.sroa.913.0, %bb.r ], [ 1, %.preheader.i.i.i.i ], [ %.sroa.51.sroa.913.0, %bb.u ]
  %.sroa.51.sroa.0.2 = phi i8 [ 1, %.loopexit48.i.i.i ], [ %.sroa.51.sroa.0.0, %bb.af ], [ %.sroa.51.sroa.0.0, %bb.z ], [ %.sroa.51.sroa.0.0, %bb.ac ], [ %.sroa.51.sroa.0.0, %bb.r ], [ %.sroa.51.sroa.0.0, %.preheader.i.i.i.i ], [ %.sroa.51.sroa.0.0, %bb.u ]
  %.sink.i9.us.i.i.i43.i = phi i64 [ %.sink.i9.us.i.i.i44.i, %.loopexit48.i.i.i ], [ %.sroa.17.0.copyload.a, %bb.af ], [ %.sroa.17.0.copyload.a, %bb.z ], [ %.sroa.17.0.copyload.a, %bb.ac ], [ %.sroa.17.0.copyload.a, %bb.r ], [ %.sink.i9.us.i.i.i44.i, %.preheader.i.i.i.i ], [ %.sroa.17.0.copyload.a, %bb.u ]
  %.sink70.i.i.i.i37.i = phi i64 [ %.sink70.i.i.i.i39.i, %.loopexit48.i.i.i ], [ -1, %bb.af ], [ -1, %bb.z ], [ -1, %bb.ac ], [ %.sink70.i.i.i.i39.i, %bb.r ], [ %.sink70.i.i.i.i39.i, %.preheader.i.i.i.i ], [ %.sink70.i.i.i.i.i, %bb.u ]
  %.not.i.i.i.i = icmp ne i64 %.sroa.21.0.copyload.a, %.sroa.7.0.ph.i.i47.i
  %or.cond.not.i = select i1 %i.j, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.not.i, label %._crit_edge.i.i.i.i, label %_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter14SplitInclusiveReENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldBS_INtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEuNCNvCs89JjGp7luZU_4stdx13indent_string0NCINvNvBV_8for_each4callB2i_NCINvXsl_NtB2n_6stringNtB49_6StringINtNtBZ_7collect6ExtendB2i_E6extendINtB1L_3MapB3_B2V_EE0E0E0EB2Z_.exit

._crit_edge.i.i.i.i:                              ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit12.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit14.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit16.i.i.i.i.i.i, %bb.q, %bb.h, %._crit_edge.i.i.i.i.i, %.split.us.i12.i.i.i.i, %.split.us.i.i.i.i.i, %.loopexit48.i.i.i, %bb.p
  %.sroa.51.sroa.913.1 = phi i8 [ %.sroa.51.sroa.913.2, %._crit_edge.i.i.i.i.i ], [ %.sroa.51.sroa.913.0, %.split.us.i12.i.i.i.i ], [ %.sroa.51.sroa.913.0, %.split.us.i.i.i.i.i ], [ 0, %.loopexit48.i.i.i ], [ 0, %bb.p ], [ 0, %bb.h ], [ 0, %bb.q ], [ 0, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit16.i.i.i.i.i.i ], [ 0, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit14.i.i.i.i.i.i ], [ 0, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit12.i.i.i.i.i.i ]
  %.sroa.51.sroa.0.1 = phi i8 [ %.sroa.51.sroa.0.2, %._crit_edge.i.i.i.i.i ], [ %.sroa.51.sroa.0.0, %.split.us.i12.i.i.i.i ], [ %.sroa.51.sroa.0.0, %.split.us.i.i.i.i.i ], [ 0, %.loopexit48.i.i.i ], [ 0, %bb.p ], [ 0, %bb.h ], [ 0, %bb.q ], [ 0, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit16.i.i.i.i.i.i ], [ 0, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit14.i.i.i.i.i.i ], [ 0, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit12.i.i.i.i.i.i ]
  %.sroa.7.0.ph.i.i46.i = phi i64 [ %.sroa.7.0.ph.i.i47.i, %._crit_edge.i.i.i.i.i ], [ %i.ft, %.split.us.i12.i.i.i.i ], [ %i.dj, %.split.us.i.i.i.i.i ], [ %.sroa.17.0.copyload.a, %.loopexit48.i.i.i ], [ %.sroa.17.0.copyload.a, %bb.p ], [ %.fr63.i.i.i.i, %bb.h ], [ %i.bs, %bb.q ], [ %i.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit16.i.i.i.i.i.i ], [ %i.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit14.i.i.i.i.i.i ], [ %i.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit12.i.i.i.i.i.i ]
  %.sink.i9.us.i.i.i41.i = phi i64 [ %.sink.i9.us.i.i.i43.i, %._crit_edge.i.i.i.i.i ], [ %i.ft, %.split.us.i12.i.i.i.i ], [ %i.dj, %.split.us.i.i.i.i.i ], [ %.sink.i9.us.i.i.i44.i, %.loopexit48.i.i.i ], [ %.sink.i9.us.i.i.i44.i, %bb.p ], [ %.sink.i9.us.i.i.i44.i, %bb.h ], [ %.sink.i9.us.i.i.i44.i, %bb.q ], [ %.sink.i9.us.i.i.i44.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit16.i.i.i.i.i.i ], [ %.sink.i9.us.i.i.i44.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit14.i.i.i.i.i.i ], [ %.sink.i9.us.i.i.i44.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit12.i.i.i.i.i.i ]
  %.sink70.i.i.i.i35.i = phi i64 [ %.sink70.i.i.i.i37.i, %._crit_edge.i.i.i.i.i ], [ -1, %.split.us.i12.i.i.i.i ], [ 0, %.split.us.i.i.i.i.i ], [ %.sink70.i.i.i.i39.i, %.loopexit48.i.i.i ], [ %.sink70.i.i.i.i39.i, %bb.p ], [ %.sink70.i.i.i.i39.i, %bb.h ], [ %.sink70.i.i.i.i39.i, %bb.q ], [ %.sink70.i.i.i.i39.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit16.i.i.i.i.i.i ], [ %.sink70.i.i.i.i39.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit14.i.i.i.i.i.i ], [ %.sink70.i.i.i.i39.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit12.i.i.i.i.i.i ]
  %i.fu = phi i64 [ %.fr63.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.fr63.i.i.i.i, %.split.us.i12.i.i.i.i ], [ %.fr63.i.i.i.i, %.split.us.i.i.i.i.i ], [ %.sroa.17.0.copyload.a, %.loopexit48.i.i.i ], [ %.sroa.17.0.copyload.a, %bb.p ], [ %.fr63.i.i.i.i, %bb.h ], [ %i.bs, %bb.q ], [ %i.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit16.i.i.i.i.i.i ], [ %i.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit14.i.i.i.i.i.i ], [ %i.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit12.i.i.i.i.i.i ]
  %i.fv = phi i1 [ true, %._crit_edge.i.i.i.i.i ], [ false, %.split.us.i12.i.i.i.i ], [ false, %.split.us.i.i.i.i.i ], [ false, %.loopexit48.i.i.i ], [ false, %bb.p ], [ false, %bb.h ], [ false, %bb.q ], [ false, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit16.i.i.i.i.i.i ], [ false, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit14.i.i.i.i.i.i ], [ false, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit12.i.i.i.i.i.i ]
  %.pn48.i = phi i64 [ %.sroa.21.0.copyload.a, %._crit_edge.i.i.i.i.i ], [ %i.ft, %.split.us.i12.i.i.i.i ], [ %i.dj, %.split.us.i.i.i.i.i ], [ %.sroa.17.0.copyload.a, %.loopexit48.i.i.i ], [ %.sroa.17.0.copyload.a, %bb.p ], [ %.fr63.i.i.i.i, %bb.h ], [ %i.bs, %bb.q ], [ %i.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit16.i.i.i.i.i.i ], [ %i.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit14.i.i.i.i.i.i ], [ %i.bs, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs89JjGp7luZU_4stdx.exit12.i.i.i.i.i.i ]
  %.sroa.4.1.i.i.i = sub nuw i64 %.pn48.i, %.sroa.7.0.ph.i.i47.i ; 3 uses
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.165.0.copyload, i64 %.sroa.7.0.ph.i.i47.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !124
  store ptr %.sroa.0.1.i.i.i, ptr %i.c, align 8, !noalias !125
  store i64 %.sroa.4.1.i.i.i, ptr %i.k, align 8, !noalias !125
  %i.fw = call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %.sroa.4.1.i.i.i), !noalias !126
  %i.fx = extractvalue { ptr, i64 } %i.fw, 1
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %bb.ag, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !125
  store ptr %i.f, ptr %i.b, align 8, !noalias !125
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !125
  store ptr %i.c, ptr %i.l, align 8, !noalias !125
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs89JjGp7luZU_4stdx, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !125
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @6, ptr noundef nonnull %i.b), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !125
  br label %_RNCNvCs89JjGp7luZU_4stdx13indent_string0B3_.exit.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i
  store ptr %.sroa.0.1.i.i.i, ptr %i.m, align 8, !noalias !124
  store i64 %.sroa.4.1.i.i.i, ptr %i.n, align 8, !noalias !124
  store i64 -1, ptr %i.d, align 8, !noalias !124
  br label %_RNCNvCs89JjGp7luZU_4stdx13indent_string0B3_.exit.i.i

_RNCNvCs89JjGp7luZU_4stdx13indent_string0B3_.exit.i.i: ; preds = %bb.ag, %.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !124
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i, align 8, !alias.scope !129, !noalias !128, !nonnull !5, !noundef !5
  %.sroa.3.0.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i, align 8, !alias.scope !129, !noalias !128, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.3.0.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.ah, !noalias !130

bb.ah:                                            ; preds = %_RNCNvCs89JjGp7luZU_4stdx13indent_string0B3_.exit.i.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #23
          to label %common.resume.i.i.i.i unwind label %bb.an, !noalias !131

.noexc.i.i.i.i:                                   ; preds = %_RNCNvCs89JjGp7luZU_4stdx13indent_string0B3_.exit.i.i
  %i.ga = load i64, ptr %i.o, align 8, !alias.scope !132, !noalias !133, !noundef !5 ; 3 uses
  %i.gb = icmp sgt i64 %i.ga, -1
  call void @llvm.assume(i1 %i.gb)
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.3.0.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.noexc.i.i.i.i
  %i.gc = load ptr, ptr %i.p, align 8, !alias.scope !132, !noalias !133, !nonnull !5, !noundef !5
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gd, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i.i, i64 %.sroa.3.0.i.i.i.i, i1 false), !noalias !130
  %.pre.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !132, !noalias !133
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.noexc.i.i.i.i
  %i.ge = phi i64 [ %.pre.i.i.i.i.i, %bb.ai ], [ %i.ga, %.noexc.i.i.i.i ]
  %i.gf = add i64 %i.ge, %.sroa.3.0.i.i.i.i
  store i64 %i.gf, ptr %i.o, align 8, !alias.scope !132, !noalias !133
  %i.gg = load i64, ptr %i.a, align 8, !range !4, !alias.scope !134, !noalias !128, !noundef !5
  %i.gh = icmp eq i64 %i.gg, -1
  br i1 %i.gh, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEuNCNvCs89JjGp7luZU_4stdx13indent_string0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsl_NtB11_6stringNtB3h_6StringINtNtB2n_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter14SplitInclusiveBU_EB1z_EE0E0E0B1D_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs89JjGp7luZU_4stdx.exit.i.i.i.i.i unwind label %bb.al, !noalias !131

bb.al:                                            ; preds = %bb.ak
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i.i unwind label %bb.am, !noalias !131

bb.am:                                            ; preds = %bb.al
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !131
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.al, %bb.ah
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.gi, %bb.al ], [ %i.fz, %bb.ah ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs89JjGp7luZU_4stdx.exit.i.i.i.i.i: ; preds = %bb.ak
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !131
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEuNCNvCs89JjGp7luZU_4stdx13indent_string0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsl_NtB11_6stringNtB3h_6StringINtNtB2n_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter14SplitInclusiveBU_EB1z_EE0E0E0B1D_.exit.i

bb.an:                                            ; preds = %bb.ah
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !131
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEuNCNvCs89JjGp7luZU_4stdx13indent_string0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsl_NtB11_6stringNtB3h_6StringINtNtB2n_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter14SplitInclusiveBU_EB1z_EE0E0E0B1D_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs89JjGp7luZU_4stdx.exit.i.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !123
  br i1 %i.fv, label %_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter14SplitInclusiveReENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldBS_INtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEuNCNvCs89JjGp7luZU_4stdx13indent_string0NCINvNvBV_8for_each4callB2i_NCINvXsl_NtB2n_6stringNtB49_6StringINtNtBZ_7collect6ExtendB2i_E6extendINtB1L_3MapB3_B2V_EE0E0E0EB2Z_.exit, label %bb.b

_RINvYINtNtNtCshzWfHUSfYae_4core3str4iter14SplitInclusiveReENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldBS_INtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEuNCNvCs89JjGp7luZU_4stdx13indent_string0NCINvNvBV_8for_each4callB2i_NCINvXsl_NtB2n_6stringNtB49_6StringINtNtBZ_7collect6ExtendB2i_E6extendINtB1L_3MapB3_B2V_EE0E0E0EB2Z_.exit: ; preds = %._crit_edge.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEuNCNvCs89JjGp7luZU_4stdx13indent_string0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsl_NtB11_6stringNtB3h_6StringINtNtB2n_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_3str4iter14SplitInclusiveBU_EB1z_EE0E0E0B1D_.exit.i, %bb.a
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB5_7Context4withNCNvMs1_NtNtB7_7flavors4listINtB1b_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4recvs_0uEs0_0B1Q_(ptr nofree captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtCsM5evIHPibA_17crossbeam_channel7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs1_NtNtCsM5evIHPibA_17crossbeam_channel7flavors4listINtB7_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4recvs_0B1e_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !150, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !150
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextECs89JjGp7luZU_4stdx.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextECs89JjGp7luZU_4stdx.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !154, !nonnull !5, !noundef !5
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !154
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextECs89JjGp7luZU_4stdx.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextECs89JjGp7luZU_4stdx.exit6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextECs89JjGp7luZU_4stdx.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsM5evIHPibA_17crossbeam_channel7context7ContextECs89JjGp7luZU_4stdx.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtCsM5evIHPibA_17crossbeam_channel7flavors4listINtB7_7ChannelNtNtNtCs89JjGp7luZU_4stdx6thread4pool3JobE4recvs_0B1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
end_hunk_0
