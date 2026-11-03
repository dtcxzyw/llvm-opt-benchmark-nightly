Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.12?download=true
inline.NumInlined: 1985
inline.NumDeleted: 971
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXNtCshxhuDJfZv4T_6fontbe4nameNtB2_8NameWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB4_5error5ErrorE4exec:bb.a
  br i1 %i.dm, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dn = load i8, ptr %i.dl, align 1, !noalias !2921, !noundef !5 ; 5 uses
  %i.do = icmp sgt i8 %i.dn, -1
  br i1 %i.do, label %bb.ap, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit12.i.i.us.i.peel.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit12.i.i.us.i.peel.i.i: ; preds = %bb.ao
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dq = and i8 %i.dn, 31
  %i.dr = zext nneg i8 %i.dq to i32               ; 3 uses
  %i.ds = add nuw nsw i64 %.promoted156.i.i.i, 1
  %i.dt = icmp samesign ne i64 %i.ds, %i.de
  call void @llvm.assume(i1 %i.dt)
  %i.du = load i8, ptr %i.dp, align 1, !noalias !2921, !noundef !5
  %i.dv = shl nuw nsw i32 %i.dr, 6
  %i.dw = and i8 %i.du, 63
  %i.dx = zext nneg i8 %i.dw to i32               ; 2 uses
  %i.dy = or disjoint i32 %i.dv, %i.dx
  %i.dz = icmp samesign ugt i8 %i.dn, -33
  br i1 %i.dz, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit14.i.i.us.i.peel.i.i, label %bb.aq

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit14.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit12.i.i.us.i.peel.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.eb = add nuw nsw i64 %.promoted156.i.i.i, 2
  %i.ec = icmp samesign ne i64 %i.eb, %i.de
  call void @llvm.assume(i1 %i.ec)
  %i.ed = load i8, ptr %i.ea, align 1, !noalias !2921, !noundef !5
  %i.ee = shl nuw nsw i32 %i.dx, 6
  %i.ef = and i8 %i.ed, 63
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = or disjoint i32 %i.ee, %i.eg            ; 2 uses
  %i.ei = shl nuw nsw i32 %i.dr, 12
  %i.ej = or disjoint i32 %i.eh, %i.ei
  %i.ek = icmp samesign ugt i8 %i.dn, -17
  br i1 %i.ek, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit16.i.i.us.i.peel.i.i, label %bb.aq

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit16.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit14.i.i.us.i.peel.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %i.em = add nuw nsw i64 %.promoted156.i.i.i, 3
  %i.en = icmp samesign ne i64 %i.em, %i.de
  call void @llvm.assume(i1 %i.en)
  %i.eo = load i8, ptr %i.el, align 1, !noalias !2921, !noundef !5
  %i.ep = shl nuw nsw i32 %i.dr, 18
  %i.eq = and i32 %i.ep, 1835008
  %i.er = shl nuw nsw i32 %i.eh, 6
  %i.es = and i8 %i.eo, 63
  %i.et = zext nneg i8 %i.es to i32
  %i.eu = or disjoint i32 %i.er, %i.et
  %i.ev = or disjoint i32 %i.eu, %i.eq
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ew = zext nneg i8 %i.dn to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit16.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit14.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit12.i.i.us.i.peel.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i = phi i32 [ %i.ej, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit14.i.i.us.i.peel.i.i ], [ %i.ev, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit16.i.i.us.i.peel.i.i ], [ %i.dy, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit12.i.i.us.i.peel.i.i ], [ %i.ew, %bb.ap ] ; 4 uses
  %i.ex = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 1114112
  call void @llvm.assume(i1 %i.ex)
  br i1 %i.df, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ey = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 128
  br i1 %i.ey, label %.lr.ph.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ez = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 2048
  br i1 %i.ez, label %.lr.ph.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fa = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 65536
  %..i.us.i.peel.i.i = select i1 %i.fa, i64 3, i64 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.at, %bb.as, %bb.ar
  %.sroa.01.0.i.us.i.peel.i.i = phi i64 [ 2, %bb.as ], [ %..i.us.i.peel.i.i, %bb.at ], [ 1, %bb.ar ]
  %i.fb = add i64 %.sroa.01.0.i.us.i.peel.i.i, %.promoted156.i.i.i ; 15 uses
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.fb, %i.de
  br i1 %.not.i.i.us.i.i.i, label %bb.av, label %.split.i.i.us.i.i.i

.split.i.i.us.i.i.i:                              ; preds = %bb.au
  %i.fd = icmp eq i64 %i.fb, %i.de
  br i1 %i.fd, label %bb.aw, label %.split.us160.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fb
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !2919, !noalias !2922, !noundef !5
  %i.fg = icmp sgt i8 %i.ff, -65
  br i1 %i.fg, label %bb.aw, label %.split.us160.i.i.i

bb.aw:                                            ; preds = %bb.av, %.split.i.i.us.i.i.i, %.lr.ph.i.i.i
  %i.fh = icmp samesign eq i64 %i.fb, %i.de
  br i1 %i.fh, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fb
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !2923, !noundef !5 ; 3 uses
  %i.fk = icmp sgt i8 %i.fj, -1
  br i1 %i.fk, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit12.i.i.us.i.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit12.i.i.us.i.i.i: ; preds = %bb.ax
  %i.fl = add nuw nsw i64 %i.fb, 1
  %i.fm = icmp samesign ne i64 %i.fl, %i.de
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp samesign ugt i8 %i.fj, -33
  br i1 %i.fn, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit14.i.i.us.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit14.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit12.i.i.us.i.i.i
  %i.fo = add nuw nsw i64 %i.fb, 2
  %i.fp = icmp samesign ne i64 %i.fo, %i.de
  call void @llvm.assume(i1 %i.fp)
  %i.fq = icmp samesign ugt i8 %i.fj, -17
  br i1 %i.fq, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit16.i.i.us.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit16.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit14.i.i.us.i.i.i
  %i.fr = add nuw nsw i64 %i.fb, 3
  %i.fs = icmp samesign ne i64 %i.fr, %i.de
  call void @llvm.assume(i1 %i.fs)
  br label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i

.split.us160.i.i.i:                               ; preds = %bb.av, %.split.i.i.us.i.i.i, %bb.am, %.split.i.i.us.i.peel.i.i
  %.lcssa37.i.i = phi i64 [ %.promoted156.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted156.i.i.i, %bb.am ], [ %i.fb, %.split.i.i.us.i.i.i ], [ %i.fb, %bb.av ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef %i.de, i64 noundef %.lcssa37.i.i, i64 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #27
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.split.us160.i.i.i
  unreachable

default.unreachable:                              ; preds = %.noexc49
  unreachable

bb.ay:                                            ; preds = %.noexc49
  %i.ft = load i64, ptr %i.cl, align 8, !alias.scope !2918, !noalias !2917, !noundef !5 ; 2 uses
  %i.fu = load i64, ptr %i.ci, align 8, !alias.scope !2918, !noalias !2917, !noundef !5 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.fu, %i.ft
  br i1 %.not.i.i.i, label %bb.ba, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread.i

bb.az:                                            ; preds = %.noexc49
  %i.fv = load i64, ptr %i.cj, align 8, !alias.scope !2918, !noalias !2917, !noundef !5 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, -1
  %i.fx = load ptr, ptr %i.ck, align 8, !alias.scope !2918, !noalias !2917, !nonnull !5, !noundef !5 ; 6 uses
  %i.fy = load i64, ptr %i.cl, align 8, !alias.scope !2918, !noalias !2917, !noundef !5 ; 8 uses
  %i.fz = load ptr, ptr %i.cm, align 8, !alias.scope !2918, !noalias !2917, !nonnull !5, !noundef !5 ; 4 uses
  %i.ga = load i64, ptr %i.cn, align 8, !alias.scope !2918, !noalias !2917, !noundef !5 ; 11 uses
  %i.gb = add nsw i64 %i.ga, -1                   ; 4 uses
  br i1 %i.fw, label %bb.bl, label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  %i.gc = load ptr, ptr %i.ck, align 8, !alias.scope !2918, !noalias !2917, !nonnull !5, !noundef !5
  %i.gd = load i8, ptr %i.cq, align 8, !alias.scope !2918, !noalias !2917, !noundef !5 ; 2 uses
  %i.ge = sub nuw i64 %i.ft, %i.fu                ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fu ; 2 uses
  %i.gg = icmp samesign ult i64 %i.ge, 16
  br i1 %i.gg, label %.lr.ph.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gh = invoke { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.gd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gf, i64 noundef range(i64 0, -9223372036854775808) %i.ge)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc51:                                         ; preds = %bb.bb
  %i.gi = extractvalue { i64, i64 } %i.gh, 0
  %i.gj = extractvalue { i64, i64 } %i.gh, 1
  %i.gk = trunc nuw i64 %i.gi to i1
  br i1 %i.gk, label %.loopexit42.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ba, %bb.bc
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.go, %bb.bc ], [ 0, %bb.ba ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sroa.04.011.i.i.i.i
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !2924, !noalias !2925, !noundef !5
  %i.gn = icmp eq i8 %i.gm, %i.gd
  br i1 %i.gn, label %.loopexit42.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i
  %i.go = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i7.i.i.i = icmp eq i64 %i.go, %i.ge
  br i1 %exitcond.not.i7.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread.i, label %.lr.ph.i.i.i.i

.loopexit42.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %.noexc51
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.gj, %.noexc51 ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.gp = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.ge
  call void @llvm.assume(i1 %i.gp)
  %i.gq = add i64 %.sroa.5.0.i.i.i.i, %i.fu
  br label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i

bb.bd:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  call void @llvm.experimental.noalias.scope.decl(metadata !2927)
  call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  %.promoted.i.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !2929, !noalias !2917 ; 2 uses
  %i.gr = add i64 %.promoted.i.i.i.i, %i.gb       ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.fy
  br i1 %i.gs, label %.lr.ph.i8.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread.i

.lr.ph.i8.i.i.i:                                  ; preds = %bb.bd
  %i.gt = load i64, ptr %i.cp, align 8, !alias.scope !2929, !noalias !2917, !noundef !5
  %i.gu = load i64, ptr %i.ci, align 8, !alias.scope !2929, !noalias !2917
  %.fr60.i.i.i.i = freeze i64 %i.gu               ; 4 uses
  %i.gv = load i64, ptr %i.cq, align 8, !alias.scope !2929, !noalias !2917 ; 2 uses
  %i.gw = sub i64 %i.ga, %i.gv
  %invariant.op = sub i64 1, %.fr60.i.i.i.i
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.bg, %.lr.ph.i8.i.i.i
  %.sink70.i.i22.i.i = phi i64 [ %.sink70.i.i.i.i, %bb.bg ], [ %i.fv, %.lr.ph.i8.i.i.i ] ; 3 uses
  %.sink71.i.i19.i.i = phi i64 [ %.sink71.i.i.i.i, %bb.bg ], [ %.promoted.i.i.i.i, %.lr.ph.i8.i.i.i ] ; 7 uses
  %i.gx = phi i64 [ %i.hh, %bb.bg ], [ %i.gr, %.lr.ph.i8.i.i.i ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !2927, !noalias !2925, !noundef !5
  %i.ha = and i8 %i.gz, 63
  %i.hb = zext nneg i8 %i.ha to i64
  %i.hc = shl nuw i64 1, %i.hb
  %i.hd = and i64 %i.hc, %i.gt
  %.not.i9.i.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i9.i.i.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.he = add i64 %.sink71.i.i19.i.i, %i.ga
  br label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.hf = call i64 @llvm.umax.i64(i64 %.fr60.i.i.i.i, i64 %.sink70.i.i22.i.i) ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %i.ga
  br i1 %i.hg, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

bb.bg:                                            ; preds = %bb.bk, %bb.bj, %bb.be
  %.sink71.i.i.i.i = phi i64 [ %i.id, %bb.bk ], [ %i.ic, %bb.bj ], [ %i.he, %bb.be ] ; 2 uses
  %.sink70.i.i.i.i = phi i64 [ 0, %bb.bk ], [ %i.gw, %bb.bj ], [ 0, %bb.be ]
  %i.hh = add i64 %.sink71.i.i.i.i, %i.gb         ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %i.fy
  br i1 %i.hi, label %.lr.ph.split.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread.i

bb.bh:                                            ; preds = %.lr.ph
  %i.hj = add nuw nsw i64 %.sroa.04.0.i.i.i.i187, 1 ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.ga
  br i1 %i.hk, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

.preheader36.i.i.i.i.preheader:                   ; preds = %bb.bh, %bb.bf
  %i.hl = icmp ult i64 %.sink70.i.i22.i.i, %.fr60.i.i.i.i
  br i1 %i.hl, label %.lr.ph189, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i

.lr.ph:                                           ; preds = %bb.bf, %bb.bh
  %.sroa.04.0.i.i.i.i187 = phi i64 [ %i.hj, %bb.bh ], [ %i.hf, %bb.bf ] ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.sroa.04.0.i.i.i.i187
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !2928, !noalias !2925, !noundef !5
  %i.ho = add i64 %.sroa.04.0.i.i.i.i187, %.sink71.i.i19.i.i ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.fy
  call void @llvm.assume(i1 %i.hp)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ho
  %i.hr = load i8, ptr %i.hq, align 1, !alias.scope !2927, !noalias !2925, !noundef !5
  %.not21.i.i.i.i = icmp eq i8 %i.hn, %i.hr
  br i1 %.not21.i.i.i.i, label %bb.bh, label %bb.bk

.preheader36.i.i.i.i:                             ; preds = %bb.bi
  %i.hs = icmp ult i64 %.sink70.i.i22.i.i, %i.ht
  br i1 %i.hs, label %.lr.ph189, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i

.lr.ph189:                                        ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %.sroa.2.0.i.i.i.i188 = phi i64 [ %i.ht, %.preheader36.i.i.i.i ], [ %.fr60.i.i.i.i, %.preheader36.i.i.i.i.preheader ]
  %i.ht = add i64 %.sroa.2.0.i.i.i.i188, -1       ; 6 uses
  %i.hu = icmp ult i64 %i.ht, %i.ga
  br i1 %i.hu, label %bb.bi, label %.split32.us.i.i.i.i.invoke

bb.bi:                                            ; preds = %.lr.ph189
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ht
  %i.hw = load i8, ptr %i.hv, align 1, !alias.scope !2928, !noalias !2925, !noundef !5
  %i.hx = add i64 %i.ht, %.sink71.i.i19.i.i       ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.fy
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.hx
  %i.ia = load i8, ptr %i.hz, align 1, !alias.scope !2927, !noalias !2925, !noundef !5
  %.not20.i.i.i.i = icmp eq i8 %i.hw, %i.ia
  br i1 %.not20.i.i.i.i, label %.preheader36.i.i.i.i, label %bb.bj

.split32.us.i.i.i.i.invoke:                       ; preds = %.preheader.split.i20.i.i.i, %.lr.ph189
  %i.ib = phi i64 [ %i.ht, %.lr.ph189 ], [ %i.ij, %.preheader.split.i20.i.i.i ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef range(i64 0, -9223372036854775808) %i.ga, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %.split32.us.i.i.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split32.us.i.i.i.i.cont:                         ; preds = %.split32.us.i.i.i.i.invoke
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %i.ic = add i64 %.sink71.i.i19.i.i, %i.gv
  br label %bb.bg

bb.bk:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink71.i.i19.i.i, %invariant.op
  %i.id = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i187
  br label %bb.bg

bb.bl:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !2930)
  call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  %.promoted.i11.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !2933, !noalias !2917 ; 2 uses
  %i.ie = add i64 %.promoted.i11.i.i.i, %i.gb     ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.fy
  br i1 %i.if, label %.lr.ph.i14.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread.i

.lr.ph.i14.i.i.i:                                 ; preds = %bb.bl
  %i.ig = load i64, ptr %i.cp, align 8, !alias.scope !2933, !noalias !2917, !noundef !5
  %i.ih = load i64, ptr %i.ci, align 8, !alias.scope !2933, !noalias !2917
  %.fr214.i.i.i = freeze i64 %i.ih                ; 7 uses
  %i.ii = load i64, ptr %i.cq, align 8, !alias.scope !2933, !noalias !2917
  %umax.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr214.i.i.i, i64 range(i64 0, -9223372036854775808) %i.ga)
  %i.ij = add i64 %.fr214.i.i.i, -1               ; 2 uses
  %.first_iter.i15.i.i.i = icmp ult i64 %i.ij, %i.ga
  %exitcond.not.i16.i.i.i191.not = icmp ult i64 %.fr214.i.i.i, %i.ga
  %invariant.op242 = sub i64 1, %.fr214.i.i.i
  %.not34.i.us.i.i.i194 = icmp eq i64 %.fr214.i.i.i, 0 ; 2 uses
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %bb.bo, %.lr.ph.i14.i.i.i
  %.sink.i17.i25.i.i = phi i64 [ %.sink.i17.i.i.i, %bb.bo ], [ %.promoted.i11.i.i.i, %.lr.ph.i14.i.i.i ] ; 8 uses
  %i.ik = phi i64 [ %i.ji, %bb.bo ], [ %i.ie, %.lr.ph.i14.i.i.i ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !alias.scope !2931, !noalias !2925, !noundef !5
  %i.in = and i8 %i.im, 63
  %i.io = zext nneg i8 %i.in to i64
  %i.ip = shl nuw i64 1, %i.io
  %i.iq = and i64 %i.ip, %i.ig
  %.not.us.i.i.i.i = icmp eq i64 %i.iq, 0
  br i1 %.not.us.i.i.i.i, label %bb.bn, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i16.i.i.i191.not, label %.lr.ph193, label %.preheader.i18.preheader.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph193
  %i.ir = add i64 %.sroa.04.0.us.i.i.i.i192, 1    ; 2 uses
  %exitcond.not.i16.i.i.i = icmp eq i64 %i.ir, %umax.i.i.i.i
  br i1 %exitcond.not.i16.i.i.i, label %.preheader.i18.preheader.i.i.i, label %.lr.ph193

.preheader.i18.preheader.i.i.i:                   ; preds = %.preheader35.i.i.i.i, %.preheader35.i.i.i.i.preheader
  br i1 %.first_iter.i15.i.i.i, label %.preheader.i18.us.i.i.i.preheader, label %.preheader.split.i20.i.i.i

.preheader.i18.us.i.i.i.preheader:                ; preds = %.preheader.i18.preheader.i.i.i
  br i1 %.not34.i.us.i.i.i194, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i, label %.lr.ph196

.preheader.i18.us.i.i.i:                          ; preds = %.lr.ph196
  %.not34.i.us.i.i.i = icmp eq i64 %i.is, 0
  br i1 %.not34.i.us.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i, label %.lr.ph196

.lr.ph196:                                        ; preds = %.preheader.i18.us.i.i.i.preheader, %.preheader.i18.us.i.i.i
  %.sroa.2.0.us.i.us.i.i.i195 = phi i64 [ %i.is, %.preheader.i18.us.i.i.i ], [ %.fr214.i.i.i, %.preheader.i18.us.i.i.i.preheader ]
  %i.is = add i64 %.sroa.2.0.us.i.us.i.i.i195, -1 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !2932, !noalias !2925, !noundef !5
  %i.iv = add i64 %i.is, %.sink.i17.i25.i.i       ; 2 uses
  %i.iw = icmp ult i64 %i.iv, %i.fy
  call void @llvm.assume(i1 %i.iw)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.iv
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !2931, !noalias !2925, !noundef !5
  %.not20.us.i.us.i.i.i = icmp eq i8 %i.iu, %i.iy
  br i1 %.not20.us.i.us.i.i.i, label %.preheader.i18.us.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph196
  %i.iz = add i64 %.sink.i17.i25.i.i, %i.ii
  br label %bb.bo

.preheader.split.i20.i.i.i:                       ; preds = %.preheader.i18.preheader.i.i.i
  br i1 %.not34.i.us.i.i.i194, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i, label %.split32.us.i.i.i.i.invoke

.lr.ph193:                                        ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i192 = phi i64 [ %i.ir, %.preheader35.i.i.i.i ], [ %.fr214.i.i.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.sroa.04.0.us.i.i.i.i192
  %i.jb = load i8, ptr %i.ja, align 1, !alias.scope !2932, !noalias !2925, !noundef !5
  %i.jc = add i64 %.sroa.04.0.us.i.i.i.i192, %.sink.i17.i25.i.i ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.fy
  call void @llvm.assume(i1 %i.jd)
  %i.je = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.jc
  %i.jf = load i8, ptr %i.je, align 1, !alias.scope !2931, !noalias !2925, !noundef !5
  %.not21.us.i.i.i.i = icmp eq i8 %i.jb, %i.jf
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph193
  %.reass281.i.reass.i.reass.i.reass.reass = add i64 %.sink.i17.i25.i.i, %invariant.op242
  %i.jg = add i64 %.reass281.i.reass.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i.i192
  br label %bb.bo

bb.bn:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.jh = add i64 %.sink.i17.i25.i.i, %i.ga
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %.split.us.i.i.i
  %.sink.i17.i.i.i = phi i64 [ %i.jh, %bb.bn ], [ %i.jg, %bb.bm ], [ %i.iz, %.split.us.i.i.i ] ; 2 uses
  %i.ji = add i64 %.sink.i17.i.i.i, %i.gb         ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %i.fy
  br i1 %i.jj, label %.lr.ph.split.us.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread.i

_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread.i: ; preds = %bb.bg, %bb.bo, %bb.bc, %bb.bl, %bb.bd, %.noexc51, %bb.ay, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2917
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate.exitthread-pre-split.i

_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i: ; preds = %.preheader36.i.i.i.i.preheader, %.preheader.i18.us.i.i.i.preheader, %.preheader36.i.i.i.i, %.preheader.i18.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit12.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit14.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit16.i.i.us.i.i.i, %bb.ax, %.preheader.split.i20.i.i.i, %.loopexit42.i.i.i, %bb.aw, %bb.aq
  %.ph.i = phi i64 [ %i.gq, %.loopexit42.i.i.i ], [ %.sink.i17.i25.i.i, %.preheader.i18.us.i.i.i ], [ %.sink.i17.i25.i.i, %.preheader.split.i20.i.i.i ], [ %i.de, %bb.aw ], [ %.promoted156.i.i.i, %bb.aq ], [ %i.fb, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit12.i.i.us.i.i.i ], [ %i.fb, %bb.ax ], [ %i.fb, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit16.i.i.us.i.i.i ], [ %i.fb, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit14.i.i.us.i.i.i ], [ %.sink71.i.i19.i.i, %.preheader36.i.i.i.i ], [ %.sink.i17.i25.i.i, %.preheader.i18.us.i.i.i.preheader ], [ %.sink71.i.i19.i.i, %.preheader36.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2917
  br label %bb.bp

_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2917
  br i1 %i.df, label %bb.bp, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate.exitthread-pre-split.i

bb.bp:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.i, %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i
  %i.jk = phi i64 [ %.ph.i, %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread8.i ], [ %i.de, %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2934)
  %i.jl = load i64, ptr %i.cy, align 8, !noalias !2916, !noundef !5 ; 4 uses
  %i.jm = icmp sgt i64 %i.jl, -1
  call void @llvm.assume(i1 %i.jm)
  %.not.i.i = icmp ugt i64 %i.jk, %i.jl
  br i1 %.not.i.i, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jn = icmp ne i64 %i.jk, 0
  %.not2.i.i = icmp samesign ult i64 %i.jk, %i.jl
  %or.cond.i.i = select i1 %i.jn, i1 %.not2.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.br, label %.split.i.i

.split.i.i:                                       ; preds = %bb.br, %bb.bq
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8truncateCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef %i.jk)
          to label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate.exitthread-pre-split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %i.jo = load ptr, ptr %i.cw, align 8, !alias.scope !2934, !noalias !2916, !nonnull !5, !noundef !5
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jk
  %i.jq = load i8, ptr %i.jp, align 1, !noalias !2935, !noundef !5
  %i.jr = icmp sgt i8 %i.jq, -65
  br i1 %i.jr, label %.split.i.i, label %bb.bs, !prof !26

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #27
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.bs
  unreachable

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate.exitthread-pre-split.i: ; preds = %.split.i.i, %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.i, %_RINvMNtCsf3Ta7LF998c_4core3stre4findReECshxhuDJfZv4T_6fontbe.exit.thread.i
  %.pr.i = load i64, ptr %i.cy, align 8, !noalias !2916
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate.exit.i

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate.exit.i: ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate.exitthread-pre-split.i, %bb.bp
  %i.js = phi i64 [ %.pr.i, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate.exitthread-pre-split.i ], [ %i.jl, %bb.bp ] ; 2 uses
  %i.jt = icmp sgt i64 %i.js, -1
  call void @llvm.assume(i1 %i.jt)
  %i.ju = icmp eq i64 %i.js, 0
  br i1 %i.ju, label %.backedge.i, label %bb.bt

bb.bt:                                            ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate.exit.i
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef 7)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.bt
  %i.jv = load i64, ptr %i.cy, align 8, !alias.scope !2936, !noalias !2916, !noundef !5 ; 2 uses
  %i.jw = icmp sgt i64 %i.jv, -1
  call void @llvm.assume(i1 %i.jw)
  %i.jx = load ptr, ptr %i.cw, align 8, !alias.scope !2936, !noalias !2916, !nonnull !5, !noundef !5
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.jy, ptr noundef nonnull align 1 dereferenceable(7) @75, i64 7, i1 false), !noalias !2916
  %.pre.i.i = load i64, ptr %i.cy, align 8, !alias.scope !2936, !noalias !2916
  %i.jz = add i64 %.pre.i.i, 7
  store i64 %i.jz, ptr %i.cy, align 8, !alias.scope !2936, !noalias !2916
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef %i.ca)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %.noexc56
  %i.ka = load i64, ptr %i.cy, align 8, !alias.scope !2937, !noalias !2916, !noundef !5 ; 3 uses
  %i.kb = icmp sgt i64 %i.ka, -1
  call void @llvm.assume(i1 %i.kb)
  br i1 %.not.i4.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCshxhuDJfZv4T_6fontbe.exit.i, label %bb.bu

bb.bu:                                            ; preds = %.noexc57
  %i.kc = load ptr, ptr %i.cw, align 8, !alias.scope !2937, !noalias !2916, !nonnull !5, !noundef !5
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.ka
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kd, ptr nonnull readonly align 1 %i.cb, i64 %i.ca, i1 false), !noalias !2915
  %.pre.i5.i = load i64, ptr %i.cy, align 8, !alias.scope !2937, !noalias !2916
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCshxhuDJfZv4T_6fontbe.exit.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.bu, %.noexc57
  %i.ke = phi i64 [ %.pre.i5.i, %bb.bu ], [ %i.ka, %.noexc57 ]
  %i.kf = add i64 %i.ke, %i.ca
  store i64 %i.kf, ptr %i.cy, align 8, !alias.scope !2937, !noalias !2916
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCshxhuDJfZv4T_6fontbe.exit.i, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8truncate.exit.i, %bb.aj
  %i.kg = icmp eq ptr %i.cs, %i.cg
  br i1 %i.kg, label %_RNvNtCshxhuDJfZv4T_6fontbe4name22stamp_compiler_version.exit, label %bb.aj

_RNvNtCshxhuDJfZv4T_6fontbe4name22stamp_compiler_version.exit: ; preds = %.backedge.i, %bb.ai, %_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name10NameRecordNvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs6_NtNtCs6WnK4nVnpEz_11write_fonts6tables4nameNtB5_4Name3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k)
          to label %bb.bv unwind label %bb.ac

bb.bv:                                            ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe4name22stamp_compiler_version.exit
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 896
  invoke void @_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4name4NameE3setB14_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.kh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.bw unwind label %bb.ac

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !2938)
  %i.ki = load ptr, ptr %i.l, align 8, !alias.scope !2938, !noundef !5 ; 2 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration14ExtraFeaTablesEEEB1z_.exit59, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kk = atomicrmw add ptr %i.ki, i64 -1 release, align 8, !noalias !2939
  %i.kl = icmp eq i64 %i.kk, 1
  br i1 %i.kl, label %bb.by, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration14ExtraFeaTablesEEEB1z_.exit59

bb.by:                                            ; preds = %bb.bx
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration14ExtraFeaTablesE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration14ExtraFeaTablesEEEB1z_.exit59 unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration14ExtraFeaTablesEEEB1z_.exit59: ; preds = %bb.bx, %bb.bw, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  call void @llvm.experimental.noalias.scope.decl(metadata !2941)
  %i.km = load ptr, ptr %i.m, align 8, !alias.scope !2942, !nonnull !5, !noundef !5
  %i.kn = atomicrmw add ptr %i.km, i64 -1 release, align 8, !noalias !2942
  %i.ko = icmp eq i64 %i.kn, 1
  br i1 %i.ko, label %bb.bz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit61

bb.bz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration14ExtraFeaTablesEEEB1z_.exit59
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #29
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit61 unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit61: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration14ExtraFeaTablesEEEB1z_.exit59, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.kp = trunc nuw i8 %.sroa.015.2 to i1
  %i.kq = load i64, ptr %i.p, align 8, !range !11
  %.not.i.i62 = icmp ne i64 %i.kq, 2
  %or.cond82.not = select i1 %i.kp, i1 %.not.i.i62, i1 false
  br i1 %or.cond82.not, label %bb.ca, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit

bb.ca:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit61
  %i.kr = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.kr)
          to label %.thread73 unwind label %.thread74

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit67: ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit
  %i.ks = trunc nuw i8 %.sroa.017.0 to i1
  br i1 %i.ks, label %bb.cj, label %common.resume

.thread74:                                        ; preds = %bb.ca
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.cf, %bb.ce, %bb.cd, %.thread73, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

.thread73:                                        ; preds = %bb.ca
  %.pr = load i64, ptr %i.p, align 8, !alias.scope !2943 ; 2 uses
  %.not.i.i64 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i64, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit, label %bb.cb

bb.cb:                                            ; preds = %.thread73
  %i.ku = load i64, ptr %i.kr, align 8, !range !21, !alias.scope !2944, !noundef !5
  %i.kv = invoke noundef zeroext i1 @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p, i64 noundef %i.ku)
          to label %bb.cd unwind label %bb.cc     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.kw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p) #31
          to label %common.resume unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  call void @llvm.experimental.noalias.scope.decl(metadata !2946)
  call void @llvm.experimental.noalias.scope.decl(metadata !2947)
  call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  %i.kx = icmp eq i64 %.pr, 0
  br i1 %i.kx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ky = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2949)
  call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  %i.kz = load ptr, ptr %i.ky, align 8, !alias.scope !2951, !nonnull !5, !noundef !5
  %i.la = atomicrmw add ptr %i.kz, i64 -1 release, align 8, !noalias !2952
  %i.lb = icmp eq i64 %i.la, 1
  br i1 %i.lb, label %bb.cf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit

bb.cf:                                            ; preds = %bb.ce
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs6CpVowoi7NE_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ky) #29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span4SpanECshxhuDJfZv4T_6fontbe.exit

bb.cg:                                            ; preds = %bb.cc
  %i.lc = landingpad { ptr, i32 }
end_hunk_0
