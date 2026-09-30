Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_yolo-8383caacbfc2b2c9.candle_wasm_example_yolo.a69836c64f6f67e8-cgu.08?download=true
inline.NumInlined: 230
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  br i1 %i.ck, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseiMiKruFR5A_24candle_wasm_example_yolo.exit14.i.i.us.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseiMiKruFR5A_24candle_wasm_example_yolo.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseiMiKruFR5A_24candle_wasm_example_yolo.exit12.i.i.us.i
  %i.cl = add nuw nsw i64 %i.by, 2
  %i.cm = icmp samesign ne i64 %i.cl, %i.z
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp samesign ugt i8 %i.cg, -17
  br i1 %i.cn, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseiMiKruFR5A_24candle_wasm_example_yolo.exit16.i.i.us.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseiMiKruFR5A_24candle_wasm_example_yolo.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseiMiKruFR5A_24candle_wasm_example_yolo.exit14.i.i.us.i
  %i.co = add nuw nsw i64 %i.by, 3
  %i.cp = icmp samesign ne i64 %i.co, %i.z
  tail call void @llvm.assume(i1 %i.cp)
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

.split.us160.i:                                   ; preds = %bb.s, %.split.i.i.us.i, %bb.j, %.split.i.i.us.i.peel
  %.lcssa61 = phi i64 [ %.promoted156.i, %.split.i.i.us.i.peel ], [ %.promoted156.i, %bb.j ], [ %i.by, %.split.i.i.us.i ], [ %i.by, %bb.s ]
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z, i64 noundef %.lcssa61, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22, !noalias !201
  unreachable

default.unreachable:                              ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit
  unreachable

bb.v:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !195, !noalias !197, !noundef !5 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !195, !noalias !197, !noundef !5 ; 3 uses
  %.not.i = icmp ult i64 %i.ct, %i.cr
  br i1 %.not.i, label %bb.x, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.w:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !195, !noalias !197, !noundef !5 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !195, !noalias !197, !nonnull !5, !noundef !5 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !195, !noalias !197, !noundef !5 ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !195, !noalias !197, !nonnull !5, !noundef !5 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !195, !noalias !197, !noundef !5 ; 12 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.dh = add nsw i64 %i.df, -1                   ; 4 uses
  br i1 %i.cx, label %bb.ai, label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !195, !noalias !197, !nonnull !5, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dl = load i8, ptr %i.dk, align 8, !alias.scope !195, !noalias !197, !noundef !5 ; 2 uses
  %i.dm = sub nuw i64 %i.cr, %i.ct                ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ct ; 2 uses
  %i.do = icmp samesign ult i64 %i.dm, 16
  br i1 %i.do, label %.lr.ph.i.i4, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef range(i64 0, -9223372036854775808) %i.dm), !noalias !203
  %i.dq = extractvalue { i64, i64 } %i.dp, 0
  %i.dr = trunc nuw i64 %i.dq to i1
  br i1 %i.dr, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i.i4:                                      ; preds = %bb.x, %bb.z
  %.sroa.04.011.i.i5 = phi i64 [ %i.dv, %bb.z ], [ 0, %bb.x ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.011.i.i5
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !204, !noalias !203, !noundef !5
  %i.du = icmp eq i8 %i.dt, %i.dl
  br i1 %i.du, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i4
  %i.dv = add nuw nsw i64 %.sroa.04.011.i.i5, 1   ; 2 uses
  %exitcond.not.i7.i = icmp eq i64 %i.dv, %i.dm
  br i1 %exitcond.not.i7.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i.i4

bb.aa:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %.promoted.i.i = load i64, ptr %i.dg, align 8, !alias.scope !208, !noalias !209 ; 2 uses
  %i.dw = add i64 %.promoted.i.i, %i.dh           ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.db
  br i1 %i.dx, label %.lr.ph.i8.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i8.i:                                      ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !208, !noalias !209, !noundef !5
  %i.ea = load i64, ptr %i.cu, align 8, !alias.scope !208, !noalias !209 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !208, !noalias !209 ; 2 uses
  %i.ed = sub i64 %i.df, %i.ec
  %invariant.op = sub i64 1, %i.ea
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.ad, %.lr.ph.i8.i
  %.sink70.i.i42 = phi i64 [ %.sink70.i.i, %bb.ad ], [ %i.cw, %.lr.ph.i8.i ] ; 3 uses
  %.sink71.i.i39 = phi i64 [ %.sink71.i.i, %bb.ad ], [ %.promoted.i.i, %.lr.ph.i8.i ] ; 5 uses
  %i.ee = phi i64 [ %i.eo, %bb.ad ], [ %i.dw, %.lr.ph.i8.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !206, !noalias !210, !noundef !5
  %i.eh = and i8 %i.eg, 63
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.ej, %i.dz
  %.not.i9.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i9.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.i.i
  %i.el = add i64 %.sink71.i.i39, %i.df
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.i.i
  %i.em = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 %.sink70.i.i42) ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.df
  br i1 %i.en, label %.lr.ph154, label %.preheader36.i.i.preheader

bb.ad:                                            ; preds = %bb.ah, %bb.ag, %bb.ab
  %.sink71.i.i = phi i64 [ %i.fj, %bb.ah ], [ %i.fi, %bb.ag ], [ %i.el, %bb.ab ] ; 2 uses
  %.sink70.i.i = phi i64 [ 0, %bb.ah ], [ %i.ed, %bb.ag ], [ 0, %bb.ab ]
  %i.eo = add i64 %.sink71.i.i, %i.dh             ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.db
  br i1 %i.ep, label %.lr.ph.split.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.ae:                                            ; preds = %.lr.ph154
  %i.eq = add nuw nsw i64 %.sroa.04.0.i.i153, 1   ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.df
  br i1 %i.er, label %.lr.ph154, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.ae, %bb.ac
  %i.es = icmp ult i64 %.sink70.i.i42, %i.ea
  br i1 %i.es, label %.lr.ph156, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph154:                                        ; preds = %bb.ac, %bb.ae
  %.sroa.04.0.i.i153 = phi i64 [ %i.eq, %bb.ae ], [ %i.em, %bb.ac ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sroa.04.0.i.i153
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !207, !noalias !211, !noundef !5
  %i.ev = add i64 %.sroa.04.0.i.i153, %.sink71.i.i39 ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.db
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ev
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !206, !noalias !210, !noundef !5
  %.not21.i.i = icmp eq i8 %i.eu, %i.ey
  br i1 %.not21.i.i, label %bb.ae, label %bb.ah

.preheader36.i.i:                                 ; preds = %bb.af
  %i.ez = icmp ult i64 %.sink70.i.i42, %i.fa
  br i1 %i.ez, label %.lr.ph156, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph156:                                        ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i155 = phi i64 [ %i.fa, %.preheader36.i.i ], [ %i.ea, %.preheader36.i.i.preheader ]
  %i.fa = add i64 %.sroa.2.0.i.i155, -1           ; 6 uses
  %i.fb = icmp ult i64 %i.fa, %i.df
  br i1 %i.fb, label %bb.af, label %.split32.us.i.i

bb.af:                                            ; preds = %.lr.ph156
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fa
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !207, !noalias !211, !noundef !5
  %i.fe = add i64 %i.fa, %.sink71.i.i39           ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.db
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.fe
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !206, !noalias !210, !noundef !5
  %.not20.i.i = icmp eq i8 %i.fd, %i.fh
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.ag

.split32.us.i.i:                                  ; preds = %.lr.ph156
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fa, i64 noundef range(i64 0, -9223372036854775808) %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !212
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.fi = add i64 %.sink71.i.i39, %i.ec
  br label %bb.ad

bb.ah:                                            ; preds = %.lr.ph154
  %.reass.i.reass.reass = add i64 %.sink71.i.i39, %invariant.op
  %i.fj = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i153
  br label %bb.ad

bb.ai:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %.promoted.i11.i = load i64, ptr %i.dg, align 8, !alias.scope !216, !noalias !217 ; 2 uses
  %i.fk = add i64 %.promoted.i11.i, %i.dh         ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.db
  br i1 %i.fl, label %.lr.ph.i14.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14.i:                                     ; preds = %bb.ai
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !216, !noalias !217, !noundef !5
  %i.fo = load i64, ptr %i.cu, align 8, !alias.scope !216, !noalias !217
  %.fr214.i = freeze i64 %i.fo                    ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !216, !noalias !217
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr214.i, i64 range(i64 0, -9223372036854775808) %i.df)
  %i.fr = add i64 %.fr214.i, -1                   ; 2 uses
  %.first_iter.i15.i = icmp ult i64 %i.fr, %i.df
  %exitcond.not.i16.i157.not = icmp ult i64 %.fr214.i, %i.df
  %invariant.op195 = sub i64 1, %.fr214.i
  %.not34.i.us.i160 = icmp eq i64 %.fr214.i, 0    ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.al, %.lr.ph.i14.i
  %.sink.i17.i45 = phi i64 [ %.sink.i17.i, %bb.al ], [ %.promoted.i11.i, %.lr.ph.i14.i ] ; 5 uses
  %i.fs = phi i64 [ %i.gq, %bb.al ], [ %i.fk, %.lr.ph.i14.i ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !214, !noalias !218, !noundef !5
  %i.fv = and i8 %i.fu, 63
  %i.fw = zext nneg i8 %i.fv to i64
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fx, %i.fn
  %.not.us.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not.us.i.i, label %bb.ak, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i16.i157.not, label %.lr.ph159, label %.preheader.i18.preheader.i

.preheader35.i.i:                                 ; preds = %.lr.ph159
  %i.fz = add i64 %.sroa.04.0.us.i.i158, 1        ; 2 uses
  %exitcond.not.i16.i = icmp eq i64 %i.fz, %umax.i.i
  br i1 %exitcond.not.i16.i, label %.preheader.i18.preheader.i, label %.lr.ph159

.preheader.i18.preheader.i:                       ; preds = %.preheader35.i.i, %.preheader35.i.i.preheader
  br i1 %.first_iter.i15.i, label %.preheader.i18.us.i.preheader, label %.preheader.i18.i

.preheader.i18.us.i.preheader:                    ; preds = %.preheader.i18.preheader.i
  br i1 %.not34.i.us.i160, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph162

.preheader.i18.us.i:                              ; preds = %.lr.ph162
  %.not34.i.us.i = icmp eq i64 %i.ga, 0
  br i1 %.not34.i.us.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader.i18.us.i.preheader, %.preheader.i18.us.i
  %.sroa.2.0.us.i.us.i161 = phi i64 [ %i.ga, %.preheader.i18.us.i ], [ %.fr214.i, %.preheader.i18.us.i.preheader ]
  %i.ga = add i64 %.sroa.2.0.us.i.us.i161, -1     ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !215, !noalias !219, !noundef !5
  %i.gd = add i64 %i.ga, %.sink.i17.i45           ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.db
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !214, !noalias !218, !noundef !5
  %.not20.us.i.us.i = icmp eq i8 %i.gc, %i.gg
  br i1 %.not20.us.i.us.i, label %.preheader.i18.us.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph162
  %i.gh = add i64 %.sink.i17.i45, %i.fq
  br label %bb.al

.lr.ph159:                                        ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i158 = phi i64 [ %i.fz, %.preheader35.i.i ], [ %.fr214.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sroa.04.0.us.i.i158
  %i.gj = load i8, ptr %i.gi, align 1, !alias.scope !215, !noalias !219, !noundef !5
  %i.gk = add i64 %.sroa.04.0.us.i.i158, %.sink.i17.i45 ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.db
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.gk
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !214, !noalias !218, !noundef !5
  %.not21.us.i.i = icmp eq i8 %i.gj, %i.gn
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.aj

.preheader.i18.i:                                 ; preds = %.preheader.i18.preheader.i
  br i1 %.not34.i.us.i160, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.split32.us.i19.i

.split32.us.i19.i:                                ; preds = %.preheader.i18.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fr, i64 noundef range(i64 0, -9223372036854775808) %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22, !noalias !220
  unreachable

bb.aj:                                            ; preds = %.lr.ph159
  %.reass281.i.reass.reass = add i64 %.sink.i17.i45, %invariant.op195
  %i.go = add i64 %.reass281.i.reass.reass, %.sroa.04.0.us.i.i158
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph.split.us.i.i
  %i.gp = add i64 %.sink.i17.i45, %i.df
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.split.us.i
  %.sink.i17.i = phi i64 [ %i.gp, %bb.ak ], [ %i.go, %bb.aj ], [ %i.gh, %.split.us.i ] ; 2 uses
  %i.gq = add i64 %.sink.i17.i, %i.dh             ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.db
  br i1 %i.gr, label %.lr.ph.split.us.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split: ; preds = %.lr.ph.i.i4, %bb.y, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseiMiKruFR5A_24candle_wasm_example_yolo.exit16.i.i.us.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseiMiKruFR5A_24candle_wasm_example_yolo.exit14.i.i.us.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCseiMiKruFR5A_24candle_wasm_example_yolo.exit12.i.i.us.i, %bb.u
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %bb.ad, %.preheader36.i.i.preheader, %.preheader36.i.i, %bb.al, %.preheader.i18.us.i.preheader, %.preheader.i18.us.i, %bb.z, %bb.k, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, %.preheader.i18.i, %bb.ai, %bb.aa, %bb.y, %bb.n, %bb.t, %.preheader.i, %bb.v
  %storemerge.i.sink.i = phi i8 [ %.promoted205.i, %bb.k ], [ 0, %bb.aa ], [ 0, %bb.v ], [ 0, %bb.ai ], [ 1, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split ], [ 0, %bb.y ], [ 1, %.preheader.i18.us.i ], [ 0, %.preheader.i ], [ 1, %bb.n ], [ 1, %bb.t ], [ 1, %.preheader36.i.i ], [ 1, %.preheader.i18.i ], [ 1, %.preheader.i18.us.i.preheader ], [ 0, %bb.z ], [ 0, %bb.al ], [ 0, %bb.ad ], [ 1, %.preheader36.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread

bb.am:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.gs = load i8, ptr %0, align 1, !alias.scope !221, !noalias !222, !noundef !5 ; 3 uses
  %i.gt = add nsw i64 %1, -1                      ; 2 uses
  %i.gu = icmp eq i64 %1, 2
  br i1 %i.gu, label %.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.am
  %i.gv = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  br label %bb.ao

bb.an:                                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.i
  %i.gw = icmp ult i64 %i.gv, %i.gy
  br i1 %i.gw, label %bb.ao, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit

bb.ao:                                            ; preds = %.lr.ph, %bb.an
  %i.gx = phi i64 [ %1, %.lr.ph ], [ %i.gy, %bb.an ]
  %i.gy = add nsw i64 %i.gx, -1                   ; 6 uses
  %i.gz = icmp ult i64 %i.gy, %1
  br i1 %i.gz, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gy, i64 noundef range(i64 2, 33) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !noalias !223
  unreachable

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.i: ; preds = %bb.ao
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 %i.gy
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !221, !noalias !224, !noundef !5 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.hb, %i.gs
  br i1 %.not.i.not.i.i, label %bb.an, label %bb.aq

bb.aq:                                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.i.i
  %i.hc = add nuw nsw i64 %1, 15
  %i.hd = icmp ult i64 %3, %i.hc
  br i1 %i.hd, label %.lr.ph.split.us.i.i10, label %bb.ar

.thread.i:                                        ; preds = %bb.am
  %i.he = icmp ult i64 %3, 17
  br i1 %i.he, label %.lr.ph.split.us.i.i10, label %.thread97.i

.thread97.i:                                      ; preds = %.thread.i
  %i.hf = insertelement <16 x i8> poison, i8 %i.gs, i64 0
  %i.hg = shufflevector <16 x i8> %i.hf, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !221, !noalias !222
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hh = insertelement <16 x i8> poison, i8 %i.gs, i64 0
  %i.hi = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.as

.lr.ph.split.us.i.i10:                            ; preds = %bb.aq, %.thread.i
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !225, !noalias !226
  %i.hj = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.hj, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.backedge.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.backedge.us.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.hk, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !225, !noalias !226
  %i.hl = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.hl, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CseiMiKruFR5A_24candle_wasm_example_yolo.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i10, %.split.us.i.i
  %.pn.i = phi ptr [ %i.hk, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i10 ]
  %.in.i = phi i64 [ %i.hm, %.split.us.i.i ], [ %3, %.lr.ph.split.us.i.i10 ]
  %i.hm = add i64 %.in.i, -1                      ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.hm
  br i1 %.not27.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.as:                                            ; preds = %bb.ar, %.thread97.i
  %i.hn = phi i8 [ %.pre.i, %.thread97.i ], [ %i.hb, %bb.ar ]
  %i.ho = phi <16 x i8> [ %i.hg, %.thread97.i ], [ %i.hi, %bb.ar ] ; 6 uses
  %storemerge9699.i = phi i64 [ 1, %.thread97.i ], [ %i.gy, %bb.ar ] ; 6 uses
  %i.hp = insertelement <16 x i8> poison, i8 %i.hn, i64 0
  %i.hq = shufflevector <16 x i8> %i.hp, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !225
  store ptr %2, ptr %i.a, align 8, !noalias !225
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.hs, align 8, !noalias !225
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.hr, ptr %i.ht, align 8, !noalias !225
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.gt, ptr %i.hu, align 8, !noalias !225
  %i.hv = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i6 = icmp ult i64 %i.hv, %3
  br i1 %.not.i6, label %.lr.ph.i8, label %.preheader.i7

.preheader.i7:                                    ; preds = %bb.aw, %bb.as
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.as ], [ %.sroa.014.2.3.i, %bb.aw ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.as ], [ %i.jr, %bb.aw ] ; 2 uses
  %i.hw = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.hx = add i64 %.sroa.06.0.lcssa.i, %i.hw
  %i.hy = icmp uge i64 %i.hx, %3
  %i.hz = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3109.i = select i1 %i.hy, i1 true, i1 %i.hz
  br i1 %or.cond3109.i, label %._crit_edge.i, label %.lr.ph111.i

.lr.ph.i8:                                        ; preds = %bb.as, %bb.aw
  %.sroa.06.0107.i = phi i64 [ %i.jr, %bb.aw ], [ 0, %bb.as ] ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0107.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ia, align 1, !alias.scope !222, !noalias !227
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %storemerge9699.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.ib, align 1, !alias.scope !222, !noalias !227
  %i.ic = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ho
  %i.id = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.hq
  %i.ie = and <16 x i1> %i.ic, %i.id
  %i.if = bitcast <16 x i1> %i.ie to i16          ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ig, align 1, !alias.scope !222, !noalias !227
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %storemerge9699.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.ih, align 1, !alias.scope !222, !noalias !227
  %i.ii = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ho
  %i.ij = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.hq
  %i.ik = and <16 x i1> %i.ii, %i.ij
  %i.il = bitcast <16 x i1> %i.ik to i16          ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.im, align 1, !alias.scope !222, !noalias !227
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %storemerge9699.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.in, align 1, !alias.scope !222, !noalias !227
  %i.io = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ho
  %i.ip = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.hq
  %i.iq = and <16 x i1> %i.io, %i.ip
  %i.ir = bitcast <16 x i1> %i.iq to i16          ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ia, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.is, align 1, !alias.scope !222, !noalias !227
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %storemerge9699.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.it, align 1, !alias.scope !222, !noalias !227
  %i.iu = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ho
  %i.iv = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.hq
  %i.iw = and <16 x i1> %i.iu, %i.iv
  %i.ix = bitcast <16 x i1> %i.iw to i16          ; 2 uses
  %i.iy = icmp eq i16 %i.if, 0
  br i1 %i.iy, label %.preheader100.1.i, label %bb.ax

.preheader100.1.i:                                ; preds = %bb.ax, %.lr.ph.i8
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i8 ], [ %i.jw, %bb.ax ] ; 3 uses
  %i.iz = icmp eq i16 %i.il, 0
  br i1 %i.iz, label %.preheader100.2.i, label %bb.at

bb.at:                                            ; preds = %.preheader100.1.i
  %i.ja = or disjoint i64 %.sroa.06.0107.i, 16
  %i.jb = trunc nuw i8 %.sroa.014.2.i to i1
  %i.jc = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0CseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ja, i16 noundef %i.il, i1 noundef zeroext %i.jb) #24
  %i.jd = zext i1 %i.jc to i8
  %i.je = or i8 %.sroa.014.2.i, %i.jd
  br label %.preheader100.2.i

.preheader100.2.i:                                ; preds = %bb.at, %.preheader100.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader100.1.i ], [ %i.je, %bb.at ] ; 3 uses
  %i.jf = icmp eq i16 %i.ir, 0
  br i1 %i.jf, label %.preheader100.3.i, label %bb.au

bb.au:                                            ; preds = %.preheader100.2.i
  %i.jg = or disjoint i64 %.sroa.06.0107.i, 32
  %i.jh = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.ji = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0CseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jg, i16 noundef %i.ir, i1 noundef zeroext %i.jh) #24
  %i.jj = zext i1 %i.ji to i8
  %i.jk = or i8 %.sroa.014.2.1.i, %i.jj
  br label %.preheader100.3.i

.preheader100.3.i:                                ; preds = %bb.au, %.preheader100.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader100.2.i ], [ %i.jk, %bb.au ] ; 3 uses
  %i.jl = icmp eq i16 %i.ix, 0
  br i1 %i.jl, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.preheader100.3.i
  %i.jm = or disjoint i64 %.sroa.06.0107.i, 48
  %i.jn = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.jo = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0CseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jm, i16 noundef %i.ix, i1 noundef zeroext %i.jn) #24
  %i.jp = zext i1 %i.jo to i8
  %i.jq = or i8 %.sroa.014.2.2.i, %i.jp
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.preheader100.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader100.3.i ], [ %i.jq, %bb.av ] ; 2 uses
  %i.jr = add i64 %.sroa.06.0107.i, 64            ; 3 uses
  %i.js = add i64 %i.jr, %i.hv
  %i.jt = icmp uge i64 %i.js, %3
  %i.ju = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.jt, i1 true, i1 %i.ju
  br i1 %or.cond.i, label %.preheader.i7, label %.lr.ph.i8

bb.ax:                                            ; preds = %.lr.ph.i8
  %i.jv = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0CseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0107.i, i16 noundef %i.if, i1 noundef zeroext false) #24
  %i.jw = zext i1 %i.jv to i8
  br label %.preheader100.1.i

._crit_edge.i:                                    ; preds = %bb.ay, %.preheader.i7
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i7 ], [ %.sroa.014.4.i, %bb.ay ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.hz, %.preheader.i7 ], [ %i.kq, %bb.ay ]
  %i.jx = sub nuw i64 %3, %i.gt
  %i.jy = add i64 %i.jx, -16                      ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 %i.jy ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.jz, align 1, !alias.scope !222, !noalias !228
end_hunk_0
