Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.01?download=true
inline.NumInlined: 5360
inline.NumDeleted: 1703
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECs92BnbMq7p8c_15influxdb3_write:bb.a
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.preheader.i4.i
  %.promoted.i.i = load i64, ptr %i.dk, align 8, !alias.scope !124, !noalias !125 ; 12 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !126, !noalias !127, !nonnull !11, !noundef !11 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !126, !noalias !127, !noundef !11 ; 14 uses
  %.promoted26.i.i = load i8, ptr %i.do, align 8, !alias.scope !126, !noalias !127 ; 2 uses
  %i.dt = trunc nuw i8 %.promoted26.i.i to i1
  %i.du = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.du, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i5.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %i.ds
  br i1 %.not.i.i.i.peel.i, label %bb.p, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.o
  %i.dv = icmp eq i64 %.promoted.i.i, %i.ds
  br i1 %i.dv, label %bb.q, label %.loopexit.i

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.promoted.i.i
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !128, !noalias !129, !noundef !11
  %i.dy = icmp sgt i8 %i.dx, -65
  br i1 %i.dy, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p, %.split.i.i.i.peel.i, %.lr.ph.i5.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.promoted.i.i ; 4 uses
  %i.ea = icmp samesign eq i64 %.promoted.i.i, %i.ds
  br i1 %i.ea, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = load i8, ptr %i.dz, align 1, !noalias !130, !noundef !11 ; 5 uses
  %i.ec = icmp sgt i8 %i.eb, -1
  br i1 %i.ec, label %bb.s, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.peel.i: ; preds = %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.ee = and i8 %i.eb, 31
  %i.ef = zext nneg i8 %i.ee to i32               ; 3 uses
  %i.eg = add nuw nsw i64 %.promoted.i.i, 1
  %i.eh = icmp samesign ne i64 %i.eg, %i.ds
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load i8, ptr %i.ed, align 1, !noalias !130, !noundef !11
  %i.ej = shl nuw nsw i32 %i.ef, 6
  %i.ek = and i8 %i.ei, 63
  %i.el = zext nneg i8 %i.ek to i32               ; 2 uses
  %i.em = or disjoint i32 %i.ej, %i.el
  %i.en = icmp samesign ugt i8 %i.eb, -33
  br i1 %i.en, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.peel.i, label %bb.t

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.peel.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.ep = add nuw nsw i64 %.promoted.i.i, 2
  %i.eq = icmp samesign ne i64 %i.ep, %i.ds
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = load i8, ptr %i.eo, align 1, !noalias !130, !noundef !11
  %i.es = shl nuw nsw i32 %i.el, 6
  %i.et = and i8 %i.er, 63
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = or disjoint i32 %i.es, %i.eu            ; 2 uses
  %i.ew = shl nuw nsw i32 %i.ef, 12
  %i.ex = or disjoint i32 %i.ev, %i.ew
  %i.ey = icmp samesign ugt i8 %i.eb, -17
  br i1 %i.ey, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.peel.i, label %bb.t

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.peel.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 3
  %i.fa = add nuw nsw i64 %.promoted.i.i, 3
  %i.fb = icmp samesign ne i64 %i.fa, %i.ds
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = load i8, ptr %i.ez, align 1, !noalias !130, !noundef !11
  %i.fd = shl nuw nsw i32 %i.ef, 18
  %i.fe = and i32 %i.fd, 1835008
  %i.ff = shl nuw nsw i32 %i.ev, 6
  %i.fg = and i8 %i.fc, 63
  %i.fh = zext nneg i8 %i.fg to i32
  %i.fi = or disjoint i32 %i.ff, %i.fh
  %i.fj = or disjoint i32 %i.fi, %i.fe
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fk = zext nneg i8 %i.eb to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.ex, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.peel.i ], [ %i.fj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.peel.i ], [ %i.em, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.peel.i ], [ %i.fk, %bb.s ] ; 4 uses
  %i.fl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.fl)
  br i1 %i.dt, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.fm, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.fn, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.fo, i64 3, i64 4
  br label %bb.y

bb.x:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !124, !noalias !125, !noundef !11 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, -1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !124, !noalias !125, !nonnull !11, !noundef !11 ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !124, !noalias !125, !noundef !11 ; 14 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !124, !noalias !125, !nonnull !11, !noundef !11 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !124, !noalias !125, !noundef !11 ; 12 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.gb = add nsw i64 %i.fz, -1                   ; 4 uses
  br i1 %i.fr, label %bb.ad, label %bb.am

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.v ], [ %..i.i.peel.i, %bb.w ], [ 1, %bb.u ]
  %i.gc = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i.i = icmp ult i64 %i.gc, %i.ds
  br i1 %.not.i.i.i.i, label %bb.aa, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.z
  %i.ge = icmp eq i64 %i.gc, %i.ds
  br i1 %i.ge, label %bb.ab, label %.loopexit.i

bb.aa:                                            ; preds = %bb.z
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gc
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !128, !noalias !132, !noundef !11
  %i.gh = icmp sgt i8 %i.gg, -65
  br i1 %i.gh, label %bb.ab, label %.loopexit.i

bb.ab:                                            ; preds = %bb.aa, %.split.i.i.i.i, %bb.y
  %i.gi = icmp samesign eq i64 %i.gc, %i.ds
  br i1 %i.gi, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.gc
  %i.gk = load i8, ptr %i.gj, align 1, !noalias !133, !noundef !11 ; 3 uses
  %i.gl = icmp sgt i8 %i.gk, -1
  br i1 %i.gl, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.i: ; preds = %bb.ac
  %i.gm = add nuw nsw i64 %i.gc, 1
  %i.gn = icmp samesign ne i64 %i.gm, %i.ds
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = icmp samesign ugt i8 %i.gk, -33
  br i1 %i.go, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.i
  %i.gp = add nuw nsw i64 %i.gc, 2
  %i.gq = icmp samesign ne i64 %i.gp, %i.ds
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = icmp samesign ugt i8 %i.gk, -17
  br i1 %i.gr, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.i
  %i.gs = add nuw nsw i64 %i.gc, 3
  %i.gt = icmp samesign ne i64 %i.gs, %i.ds
  tail call void @llvm.assume(i1 %i.gt)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.loopexit.i:                                      ; preds = %bb.aa, %.split.i.i.i.i, %bb.p, %.split.i.i.i.peel.i
  %.lcssa139.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.p ], [ %i.gc, %.split.i.i.i.i ], [ %i.gc, %bb.aa ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef %i.ds, i64 noundef %.lcssa139.i, i64 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #28, !noalias !132
  unreachable

bb.ad:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %.promoted.i11.i = load i64, ptr %i.ga, align 8, !alias.scope !134, !noalias !137 ; 2 uses
  %i.gu = add i64 %.promoted.i11.i, %i.gb         ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.fv
  br i1 %i.gv, label %.lr.ph.i14.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph.i14.i:                                     ; preds = %bb.ad
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !134, !noalias !137, !noundef !11
  %i.gy = load i64, ptr %i.dk, align 8, !alias.scope !134, !noalias !137
  %.fr35 = freeze i64 %i.gy                       ; 8 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !134, !noalias !137
  %umax49.i17.i = tail call i64 @llvm.umax.i64(i64 %.fr35, i64 range(i64 0, -9223372036854775808) %i.fz)
  %i.hb = add i64 %.fr35, -1                      ; 2 uses
  %.first_iter.i = icmp ult i64 %i.hb, %i.fz
  %exitcond.not.i19.i170.not = icmp ult i64 %.fr35, %i.fz
  %invariant.op240 = sub i64 1, %.fr35
  %.not.i.us173 = icmp eq i64 %.fr35, 0           ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.lr.ph.i14.i
  %i.hc = phi i64 [ %.promoted.i11.i, %.lr.ph.i14.i ], [ %i.hm, %bb.ag ] ; 6 uses
  %i.hd = phi i64 [ %i.gu, %.lr.ph.i14.i ], [ %i.hn, %bb.ag ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !135, !noalias !138, !noundef !11
  %i.hg = and i8 %i.hf, 63
  %i.hh = zext nneg i8 %i.hg to i64
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = and i64 %i.hi, %i.gx
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.af, label %.preheader87.i.preheader

.preheader87.i.preheader:                         ; preds = %bb.ae
  br i1 %exitcond.not.i19.i170.not, label %.lr.ph172, label %.preheader.i.preheader

bb.af:                                            ; preds = %bb.ae
  %i.hl = add i64 %i.hc, %i.fz
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.split34.us, %bb.af
  %i.hm = phi i64 [ %i.if, %bb.al ], [ %i.hl, %bb.af ], [ %i.hx, %.split34.us ] ; 2 uses
  %i.hn = add i64 %i.hm, %i.gb                    ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.fv
  br i1 %i.ho, label %bb.ae, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.preheader87.i:                                   ; preds = %bb.aj
  %i.hp = add i64 %.sroa.02.0.i18.i171, 1         ; 2 uses
  %exitcond.not.i19.i = icmp eq i64 %i.hp, %umax49.i17.i
  br i1 %exitcond.not.i19.i, label %.preheader.i.preheader, label %.lr.ph172

.preheader.i.preheader:                           ; preds = %.preheader87.i, %.preheader87.i.preheader
  br i1 %.first_iter.i, label %.preheader.i.us.preheader, label %.preheader.i

.preheader.i.us.preheader:                        ; preds = %.preheader.i.preheader
  br i1 %.not.i.us173, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph175

.preheader.i.us:                                  ; preds = %bb.ah
  %.not.i.us = icmp eq i64 %i.hq, 0
  br i1 %.not.i.us, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph175

.lr.ph175:                                        ; preds = %.preheader.i.us.preheader, %.preheader.i.us
  %.sroa.2.0.i22.i.us174 = phi i64 [ %i.hq, %.preheader.i.us ], [ %.fr35, %.preheader.i.us.preheader ]
  %i.hq = add i64 %.sroa.2.0.i22.i.us174, -1      ; 4 uses
  %i.hr = add i64 %i.hq, %i.hc                    ; 3 uses
  %i.hs = icmp ult i64 %i.hr, %i.fv
  br i1 %i.hs, label %bb.ah, label %.split.us

bb.ah:                                            ; preds = %.lr.ph175
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.hq
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !136, !noalias !139, !noundef !11
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.hr
  %i.hw = load i8, ptr %i.hv, align 1, !alias.scope !135, !noalias !138, !noundef !11
  %.not.i23.i.us = icmp eq i8 %i.hu, %i.hw
  br i1 %.not.i23.i.us, label %.preheader.i.us, label %.split34.us

.split34.us:                                      ; preds = %bb.ah
  %i.hx = add i64 %i.hc, %i.ha
  br label %bb.ag

.lr.ph172:                                        ; preds = %.preheader87.i.preheader, %.preheader87.i
  %.sroa.02.0.i18.i171 = phi i64 [ %i.hp, %.preheader87.i ], [ %.fr35, %.preheader87.i.preheader ] ; 4 uses
  %i.hy = add i64 %.sroa.02.0.i18.i171, %i.hc     ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.fv
  br i1 %i.hz, label %bb.aj, label %bb.ak

.preheader.i:                                     ; preds = %.preheader.i.preheader
  br i1 %.not.i.us173, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.preheader.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hb, i64 noundef range(i64 0, -9223372036854775808) %i.fz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28, !noalias !140
  unreachable

.split.us:                                        ; preds = %.lr.ph175
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hr, i64 noundef range(i64 0, -9223372036854775808) %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28, !noalias !140
  unreachable

bb.aj:                                            ; preds = %.lr.ph172
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sroa.02.0.i18.i171
  %i.ib = load i8, ptr %i.ia, align 1, !alias.scope !136, !noalias !139, !noundef !11
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.hy
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !135, !noalias !138, !noundef !11
  %.not21.i21.i = icmp eq i8 %i.ib, %i.id
  br i1 %.not21.i21.i, label %.preheader87.i, label %bb.al

bb.ak:                                            ; preds = %.lr.ph172
  %i.ie = add i64 %i.hc, %.fr35
  %umax.i20.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.fv, i64 %i.ie)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i20.i, i64 noundef range(i64 0, -9223372036854775808) %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28, !noalias !140
  unreachable

bb.al:                                            ; preds = %bb.aj
  %.reass218.i.reass.reass = add i64 %i.hc, %invariant.op240
  %i.if = add i64 %.reass218.i.reass.reass, %.sroa.02.0.i18.i171
  br label %bb.ag

bb.am:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %.promoted.i6.i = load i64, ptr %i.ga, align 8, !alias.scope !141, !noalias !144 ; 2 uses
  %i.ig = add i64 %.promoted.i6.i, %i.gb          ; 2 uses
  %i.ih = icmp ult i64 %i.ig, %i.fv
  br i1 %i.ih, label %.lr.ph.i9.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph.i9.i:                                      ; preds = %bb.am
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !141, !noalias !144, !noundef !11
  %i.ik = load i64, ptr %i.dk, align 8, !alias.scope !141, !noalias !144 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !141, !noalias !144 ; 2 uses
  %i.in = sub i64 %i.fz, %i.im
  %invariant.op = sub i64 1, %i.ik
  br label %bb.an

bb.an:                                            ; preds = %.sink.split.i.i, %.lr.ph.i9.i
  %i.io = phi i64 [ %.promoted.i6.i, %.lr.ph.i9.i ], [ %.ph71.i.i, %.sink.split.i.i ] ; 6 uses
  %i.ip = phi i64 [ %i.fq, %.lr.ph.i9.i ], [ %.sink.i.i, %.sink.split.i.i ] ; 3 uses
  %i.iq = phi i64 [ %i.ig, %.lr.ph.i9.i ], [ %i.iz, %.sink.split.i.i ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !142, !noalias !145, !noundef !11
  %i.it = and i8 %i.is, 63
  %i.iu = zext nneg i8 %i.it to i64
  %i.iv = shl nuw i64 1, %i.iu
  %i.iw = and i64 %i.iv, %i.ij
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.iy = add i64 %i.io, %i.fz
  br label %.sink.split.i.i

bb.ap:                                            ; preds = %bb.an
  %.sroa.0.0.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ip, i64 %i.ik) ; 4 uses
  %umax49.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i, i64 range(i64 0, -9223372036854775808) %i.fz)
  %exitcond.not.i.i166.not = icmp ult i64 %.sroa.0.0.i.i.i, %i.fz
  br i1 %exitcond.not.i.i166.not, label %.lr.ph, label %.preheader29.i.preheader

.sink.split.i.i:                                  ; preds = %bb.ay, %bb.av, %bb.ao
  %.sink.i.i = phi i64 [ %i.in, %bb.av ], [ 0, %bb.ay ], [ 0, %bb.ao ]
  %.ph71.i.i = phi i64 [ %i.jo, %bb.av ], [ %i.ju, %bb.ay ], [ %i.iy, %bb.ao ] ; 2 uses
  %i.iz = add i64 %.ph71.i.i, %i.gb               ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %i.fv
  br i1 %i.ja, label %bb.an, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.aq:                                            ; preds = %bb.aw
  %i.jb = add i64 %.sroa.02.0.i.i167, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jb, %umax49.i.i
  br i1 %exitcond.not.i.i, label %.preheader29.i.preheader, label %.lr.ph

.preheader29.i.preheader:                         ; preds = %bb.aq, %bb.ap
  %i.jc = icmp ult i64 %i.ip, %i.ik
  br i1 %i.jc, label %.lr.ph169, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph:                                           ; preds = %bb.ap, %bb.aq
  %.sroa.02.0.i.i167 = phi i64 [ %i.jb, %bb.aq ], [ %.sroa.0.0.i.i.i, %bb.ap ] ; 4 uses
  %i.jd = add i64 %.sroa.02.0.i.i167, %i.io       ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.fv
  br i1 %i.je, label %bb.aw, label %bb.ax

.preheader29.i:                                   ; preds = %bb.at
  %i.jf = icmp ult i64 %i.ip, %i.jg
  br i1 %i.jf, label %.lr.ph169, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph169:                                        ; preds = %.preheader29.i.preheader, %.preheader29.i
  %.sroa.2.0.i.i168 = phi i64 [ %i.jg, %.preheader29.i ], [ %i.ik, %.preheader29.i.preheader ]
  %i.jg = add i64 %.sroa.2.0.i.i168, -1           ; 6 uses
  %i.jh = icmp ult i64 %i.jg, %i.fz
  br i1 %i.jh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph169
  %i.ji = add i64 %i.jg, %i.io                    ; 3 uses
  %i.jj = icmp ult i64 %i.ji, %i.fv
  br i1 %i.jj, label %bb.at, label %bb.au

bb.as:                                            ; preds = %.lr.ph169
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jg, i64 noundef range(i64 0, -9223372036854775808) %i.fz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28, !noalias !146
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.jg
  %i.jl = load i8, ptr %i.jk, align 1, !alias.scope !143, !noalias !147, !noundef !11
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.ji
  %i.jn = load i8, ptr %i.jm, align 1, !alias.scope !142, !noalias !145, !noundef !11
  %.not.i10.i = icmp eq i8 %i.jl, %i.jn
  br i1 %.not.i10.i, label %.preheader29.i, label %bb.av

bb.au:                                            ; preds = %bb.ar
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ji, i64 noundef range(i64 0, -9223372036854775808) %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28, !noalias !146
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.jo = add i64 %i.io, %i.im
  br label %.sink.split.i.i

bb.aw:                                            ; preds = %.lr.ph
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sroa.02.0.i.i167
  %i.jq = load i8, ptr %i.jp, align 1, !alias.scope !143, !noalias !147, !noundef !11
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.jd
  %i.js = load i8, ptr %i.jr, align 1, !alias.scope !142, !noalias !145, !noundef !11
  %.not21.i.i = icmp eq i8 %i.jq, %i.js
  br i1 %.not21.i.i, label %bb.aq, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph
  %i.jt = add i64 %.sroa.0.0.i.i.i, %i.io
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.fv, i64 %i.jt)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.fv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28, !noalias !146
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %.reass.i.reass.reass = add i64 %i.io, %invariant.op
  %i.ju = add i64 %.reass.i.reass.reass, %.sroa.02.0.i.i167
  br label %.sink.split.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %.sink.split.i.i, %.preheader29.i.preheader, %.preheader29.i, %bb.ag, %.preheader.i.us.preheader, %.preheader.i.us, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.i, %bb.ac, %.preheader.i, %bb.q, %bb.am, %bb.ad, %bb.ab, %bb.t, %.preheader.i4.i
  %.sroa.0.025.i = phi i8 [ 1, %.preheader.i.us ], [ 0, %bb.ad ], [ 0, %.preheader.i4.i ], [ 1, %bb.ab ], [ 1, %.preheader29.i ], [ 1, %bb.t ], [ %.promoted26.i.i, %bb.q ], [ 0, %bb.am ], [ 1, %.preheader.i.us.preheader ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.i ], [ 1, %.preheader.i ], [ 1, %bb.ac ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.i ], [ 0, %bb.ag ], [ 0, %.sink.split.i.i ], [ 1, %.preheader29.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  br label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.az:                                            ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 9, 13) %3), !alias.scope !123
  %i.jv = icmp eq i32 %bcmp.i, 0
  %i.jw = zext i1 %i.jv to i8
  br label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs92BnbMq7p8c_15influxdb3_write.exit.backedge.us.i.i.i, %.split.us.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs92BnbMq7p8c_15influxdb3_write.exit.backedge.us.i.i.i.preheader, %bb.b, %.lr.ph.split.us.i.i.i, %bb.m, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, %bb.az
  %.sroa.0.0.i = phi i8 [ 0, %bb.b ], [ %i.jw, %bb.az ], [ %.sroa.0.025.i, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i ], [ 1, %.lr.ph.split.us.i.i.i ], [ %.sroa.014.5.i.i, %bb.m ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs92BnbMq7p8c_15influxdb3_write.exit.backedge.us.i.i.i.preheader ], [ 1, %.split.us.i.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs92BnbMq7p8c_15influxdb3_write.exit.backedge.us.i.i.i ]
  %i.jx = trunc nuw i8 %.sroa.0.0.i to i1
  ret i1 %i.jx
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !15, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #29
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB1W_6marker4SendEL_ENtNtNtB1W_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !15, !invariant.load !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #29
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB1W_6marker4SendEL_ENtNtNtB1W_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB1W_6marker4SendEL_ENtNtNtB1W_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !15, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #29
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !15, !invariant.load !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #29
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionTINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsEB3c_NtNtB2u_9semaphore20OwnedSemaphorePermitEENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionTINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsEB2W_NtNtB2e_9semaphore20OwnedSemaphorePermitEENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !15, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #29
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionTINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsEB2W_NtNtB2e_9semaphore20OwnedSemaphorePermitEENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6option6OptionTINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsEB2J_NtNtB21_9semaphore20OwnedSemaphorePermitEENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !15, !invariant.load !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #29
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6option6OptionTINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsEB2J_NtNtB21_9semaphore20OwnedSemaphorePermitEENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6option6OptionTINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsEB2J_NtNtB21_9semaphore20OwnedSemaphorePermitEENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionTINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsEB2W_NtNtB2e_9semaphore20OwnedSemaphorePermitEENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIB23_INtNtBW_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtCs4lw9sX6UwIr_8executor8JobErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !11 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIB1N_INtNtBG_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtCs4lw9sX6UwIr_8executor8JobErrorENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !15, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #29
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIB1N_INtNtBG_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtCs4lw9sX6UwIr_8executor8JobErrorENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !14, !invariant.load !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultIB1A_INtNtB7_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtCs4lw9sX6UwIr_8executor8JobErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !15, !invariant.load !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #29
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultIB1A_INtNtB7_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtCs4lw9sX6UwIr_8executor8JobErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultIB1A_INtNtB7_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtCs4lw9sX6UwIr_8executor8JobErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIB1N_INtNtBG_3vec3VecNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchENtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtCs4lw9sX6UwIr_8executor8JobErrorENtNtB4_6marker4SendEL_EECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.c, %bb.d
end_hunk_0
