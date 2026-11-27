Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/zip-6da3ff7bab271d6c.zip.63b7b3929591a8f8-cgu.0?download=true
inline.NumInlined: 145
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData19file_name_sanitized:bb.a
.preheader.i10.us.us.i.us.i.preheader:            ; preds = %.preheader35.i.us.i.us.i, %.preheader35.i.us.i.us.i.preheader
  br i1 %.not34.i.us.us.i.us.i218, label %.loopexit.i.us.i, label %.lr.ph220

.lr.ph217:                                        ; preds = %.preheader35.i.us.i.us.i.preheader, %.preheader35.i.us.i.us.i
  %.sroa.04.0.us.i.us.i.us.i216 = phi i64 [ %i.fc, %.preheader35.i.us.i.us.i ], [ %.fr63.i143.i, %.preheader35.i.us.i.us.i.preheader ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %.sroa.04.0.us.i.us.i.us.i216
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !149, !noalias !147, !noundef !6
  %i.ff = add i64 %.sroa.04.0.us.i.us.i.us.i216, %i.ev ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.1281.0.copyload.i, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !148, !noalias !147, !noundef !6
  %.not21.us.i.us.i.us.i = icmp eq i8 %i.fe, %i.fi
  br i1 %.not21.us.i.us.i.us.i, label %.preheader35.i.us.i.us.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph217
  %i.fj = add i64 %i.ev, %i.cp
  %i.fk = add i64 %i.fj, %.sroa.04.0.us.i.us.i.us.i216
  br label %bb.ao

.preheader.i10.us.us.i.us.i:                      ; preds = %.lr.ph220
  %.not34.i.us.us.i.us.i = icmp eq i64 %i.fl, 0
  br i1 %.not34.i.us.us.i.us.i, label %.loopexit.i.us.i, label %.lr.ph220

.lr.ph220:                                        ; preds = %.preheader.i10.us.us.i.us.i.preheader, %.preheader.i10.us.us.i.us.i
  %.sroa.2.0.us.i.us.us.i.us.i219 = phi i64 [ %i.fl, %.preheader.i10.us.us.i.us.i ], [ %.fr63.i143.i, %.preheader.i10.us.us.i.us.i.preheader ]
  %i.fl = add i64 %.sroa.2.0.us.i.us.us.i.us.i219, -1 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !149, !noalias !147, !noundef !6
  %i.fo = add i64 %i.fl, %i.ev                    ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.fp)
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.1281.0.copyload.i, i64 %i.fo
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !148, !noalias !147, !noundef !6
  %.not20.us.i.us.us.i.us.i = icmp eq i8 %i.fn, %i.fr
  br i1 %.not20.us.i.us.us.i.us.i, label %.preheader.i10.us.us.i.us.i, label %.split.us.us.i.us.i

.split.us.us.i.us.i:                              ; preds = %.lr.ph220
  %i.fs = add i64 %i.ev, %.sroa.675.0.copyload.i
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph.split.us.i.us.i.us.i
  %i.ft = add i64 %i.ev, %.sroa.15.0.copyload.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.split.us.us.i.us.i, %bb.am
  %.sink.i9.us.i.us.i = phi i64 [ %i.ft, %bb.an ], [ %i.fk, %bb.am ], [ %i.fs, %.split.us.us.i.us.i ] ; 2 uses
  %i.fu = add i64 %.sink.i9.us.i.us.i, %i.cm      ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %.sroa.1382.0.copyload.i
  br i1 %i.fv, label %.lr.ph.split.us.i.us.i.us.i, label %.loopexit.i

.loopexit.i.us.i:                                 ; preds = %.preheader36.i.i.us.i.preheader, %.preheader.i10.us.us.i.us.i.preheader, %.preheader36.i.i.us.i, %.preheader.i10.us.us.i.us.i, %.preheader.i10.i.us.i
  %.sroa.584.0.us.i = phi i64 [ %i.ev, %.preheader.i10.us.us.i.us.i ], [ %i.eb, %.preheader.i10.i.us.i ], [ %i.cv, %.preheader36.i.i.us.i ], [ %i.ev, %.preheader.i10.us.us.i.us.i.preheader ], [ %i.cv, %.preheader36.i.i.us.i.preheader ] ; 3 uses
  %.sroa.2747.2.us.i = phi i64 [ -1, %.preheader.i10.us.us.i.us.i ], [ -1, %.preheader.i10.i.us.i ], [ 0, %.preheader36.i.i.us.i ], [ -1, %.preheader.i10.us.us.i.us.i.preheader ], [ 0, %.preheader36.i.i.us.i.preheader ]
  %.sroa.985.0.us.i = add i64 %.sroa.584.0.us.i, %.sroa.15.0.copyload.i ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.04.0.us.i
  %gepdiff.us.i = sub nuw nsw i64 %.sroa.584.0.us.i, %.sroa.04.0.us.i ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %gepdiff.us.i)
          to label %.noexc28.us.i unwind label %.loopexit108.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !143

.noexc28.us.i:                                    ; preds = %.loopexit.i.us.i
  %i.fx = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !150, !noalias !144, !noundef !6 ; 3 uses
  %i.fy = icmp sgt i64 %i.fx, -1
  call void @llvm.assume(i1 %i.fy)
  %.not.i26.us.i = icmp eq i64 %.sroa.584.0.us.i, %.sroa.04.0.us.i
  br i1 %.not.i26.us.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.noexc28.us.i
  %i.fz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !150, !noalias !144, !nonnull !6, !noundef !6
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ga, ptr nonnull readonly align 1 %i.fw, i64 %gepdiff.us.i, i1 false), !noalias !143
  %.pre.i27.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !150, !noalias !144
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.noexc28.us.i
  %i.gb = phi i64 [ %.pre.i27.us.i, %bb.ap ], [ %i.fx, %.noexc28.us.i ]
  %i.gc = add i64 %i.gb, %gepdiff.us.i
  store i64 %i.gc, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !150, !noalias !144
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %.noexc32.us.i unwind label %.loopexit108.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !143

.noexc32.us.i:                                    ; preds = %bb.aq
  %i.gd = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !151, !noalias !144, !noundef !6 ; 2 uses
  %i.ge = icmp sgt i64 %i.gd, -1
  call void @llvm.assume(i1 %i.ge)
  %i.gf = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !151, !noalias !144, !nonnull !6, !noundef !6
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gd
  %i.gh = load i8, ptr %i.bs, align 1, !noalias !152
  store i8 %i.gh, ptr %i.gg, align 1, !noalias !152
  %.pre.i31.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !151, !noalias !144
  %i.gi = add i64 %.pre.i31.us.i, 1
  store i64 %i.gi, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !151, !noalias !144
  br label %bb.z

.split.i:                                         ; preds = %bb.y
  %i.gj = and i64 %.sroa.675.0.copyload.i, 65536
  %.not103.i = icmp eq i64 %i.gj, 0
  br i1 %.not103.i, label %.lr.ph.i.lr.ph.i, label %.loopexit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1281.0.copyload.i) ]
  %i.gk = trunc i64 %.sroa.675.0.copyload.i to i1 ; 2 uses
  %i.gl = icmp eq i64 %.fr63.i143.i, 0
  br i1 %i.gl, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.lr.ph.i
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.fr63.i143.i, %.sroa.1382.0.copyload.i
  br i1 %.not.i.i.i.peel.i.peel, label %bb.as, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.ar
  %i.gm = icmp eq i64 %.fr63.i143.i, %.sroa.1382.0.copyload.i
  br i1 %i.gm, label %bb.at, label %.loopexit182.i

bb.as:                                            ; preds = %bb.ar
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.1281.0.copyload.i, i64 %.fr63.i143.i
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !153, !noalias !154, !noundef !6
  %i.gp = icmp sgt i8 %i.go, -65
  br i1 %i.gp, label %bb.at, label %.loopexit182.i

bb.at:                                            ; preds = %bb.as, %.split.i.i.i.peel.i.peel, %.lr.ph.i.lr.ph.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.1281.0.copyload.i, i64 %.fr63.i143.i ; 4 uses
  %i.gr = icmp samesign eq i64 %.fr63.i143.i, %.sroa.1382.0.copyload.i
  br i1 %i.gr, label %.loopexit183.i.peel, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gs = load i8, ptr %i.gq, align 1, !noalias !155, !noundef !6 ; 5 uses
  %i.gt = icmp sgt i8 %i.gs, -1
  br i1 %i.gt, label %bb.av, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.peel.i.peel: ; preds = %bb.au
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gv = and i8 %i.gs, 31
  %i.gw = zext nneg i8 %i.gv to i32               ; 3 uses
  %i.gx = add nuw nsw i64 %.fr63.i143.i, 1
  %i.gy = icmp samesign ne i64 %i.gx, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.gy)
  %i.gz = load i8, ptr %i.gu, align 1, !noalias !155, !noundef !6
  %i.ha = shl nuw nsw i32 %i.gw, 6
  %i.hb = and i8 %i.gz, 63
  %i.hc = zext nneg i8 %i.hb to i32               ; 2 uses
  %i.hd = or disjoint i32 %i.ha, %i.hc
  %i.he = icmp samesign ugt i8 %i.gs, -33
  br i1 %i.he, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.peel.i.peel, label %bb.aw

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.peel.i.peel
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.hg = add nuw nsw i64 %.fr63.i143.i, 2
  %i.hh = icmp samesign ne i64 %i.hg, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.hh)
  %i.hi = load i8, ptr %i.hf, align 1, !noalias !155, !noundef !6
  %i.hj = shl nuw nsw i32 %i.hc, 6
  %i.hk = and i8 %i.hi, 63
  %i.hl = zext nneg i8 %i.hk to i32
  %i.hm = or disjoint i32 %i.hj, %i.hl            ; 2 uses
  %i.hn = shl nuw nsw i32 %i.gw, 12
  %i.ho = or disjoint i32 %i.hm, %i.hn
  %i.hp = icmp samesign ugt i8 %i.gs, -17
  br i1 %i.hp, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.peel.i.peel, label %bb.aw

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.peel.i.peel
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gq, i64 3
  %i.hr = add nuw nsw i64 %.fr63.i143.i, 3
  %i.hs = icmp samesign ne i64 %i.hr, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.hs)
  %i.ht = load i8, ptr %i.hq, align 1, !noalias !155, !noundef !6
  %i.hu = shl nuw nsw i32 %i.gw, 18
  %i.hv = and i32 %i.hu, 1835008
  %i.hw = shl nuw nsw i32 %i.hm, 6
  %i.hx = and i8 %i.ht, 63
  %i.hy = zext nneg i8 %i.hx to i32
  %i.hz = or disjoint i32 %i.hw, %i.hy
  %i.ia = or disjoint i32 %i.hz, %i.hv
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ib = zext nneg i8 %i.gs to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.ho, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.peel.i.peel ], [ %i.ia, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.peel.i.peel ], [ %i.hd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.peel.i.peel ], [ %i.ib, %bb.av ]
  %.sroa.4.0.i.ph.i.i.peel.i.peel.fr = freeze i32 %.sroa.4.0.i.ph.i.i.peel.i.peel ; 4 uses
  %i.ic = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.fr, 1114112
  call void @llvm.assume(i1 %i.ic)
  br i1 %i.gk, label %.loopexit.i.i.peel, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.id = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.fr, 128
  br i1 %i.id, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ie = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.fr, 2048
  br i1 %i.ie, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.if = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.fr, 65536
  %..i.i.peel.i.peel = select i1 %i.if, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel: ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.ay ], [ %..i.i.peel.i.peel, %bb.az ], [ 1, %bb.ax ]
  %i.ig = add i64 %.sroa.01.0.i.i.peel.i.peel, %.fr63.i143.i ; 15 uses
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel
  %.not.i.i.i.i.peel = icmp ult i64 %i.ig, %.sroa.1382.0.copyload.i
  br i1 %.not.i.i.i.i.peel, label %bb.bb, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.ba
  %i.ii = icmp eq i64 %i.ig, %.sroa.1382.0.copyload.i
  br i1 %i.ii, label %bb.bc, label %.loopexit182.i

bb.bb:                                            ; preds = %bb.ba
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.1281.0.copyload.i, i64 %i.ig
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !153, !noalias !154, !noundef !6
  %i.il = icmp sgt i8 %i.ik, -65
  br i1 %i.il, label %bb.bc, label %.loopexit182.i

bb.bc:                                            ; preds = %bb.bb, %.split.i.i.i.i.peel, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel
  %i.im = icmp samesign eq i64 %i.ig, %.sroa.1382.0.copyload.i
  br i1 %i.im, label %.loopexit.i.i.peel, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.1281.0.copyload.i, i64 %i.ig
  %i.in = load i8, ptr %2, align 1, !noalias !155, !noundef !6 ; 3 uses
  %i.io = icmp sgt i8 %i.in, -1
  br i1 %i.io, label %.loopexit.i.i.peel, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.i.peel: ; preds = %bb.bd
  %i.ip = add nuw nsw i64 %i.ig, 1
  %i.iq = icmp samesign ne i64 %i.ip, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.iq)
  %i.ir = icmp samesign ugt i8 %i.in, -33
  br i1 %i.ir, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.i.peel, label %.loopexit.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.i.peel
  %i.is = add nuw nsw i64 %i.ig, 2
  %i.it = icmp samesign ne i64 %i.is, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.it)
  %i.iu = icmp samesign ugt i8 %i.in, -17
  br i1 %i.iu, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.i.peel, label %.loopexit.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.i.peel
  %i.iv = add nuw nsw i64 %i.ig, 3
  %i.iw = icmp samesign ne i64 %i.iv, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.iw)
  br label %.loopexit.i.i.peel

.loopexit183.i.peel:                              ; preds = %bb.at
  br i1 %i.gk, label %.loopexit.i.i.peel, label %.loopexit.i

.loopexit.i.i.peel:                               ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.i.peel, %bb.bd, %.loopexit183.i.peel, %bb.bc, %bb.aw
  %.fr63.i177.i.peel = phi i64 [ %.fr63.i143.i, %.loopexit183.i.peel ], [ %.sroa.1382.0.copyload.i, %bb.bc ], [ %.fr63.i143.i, %bb.aw ], [ %i.ig, %bb.bd ], [ %i.ig, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.i.peel ], [ %i.ig, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.i.peel ], [ %i.ig, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.i.peel ] ; 5 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.fr63.i177.i.peel)
          to label %.noexc28.i.peel unwind label %.loopexit108.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !143

.noexc28.i.peel:                                  ; preds = %.loopexit.i.i.peel
  %i.ix = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !150, !noalias !144, !noundef !6 ; 3 uses
  %i.iy = icmp sgt i64 %i.ix, -1
  call void @llvm.assume(i1 %i.iy)
  %.not.i26.i.peel = icmp eq i64 %.fr63.i177.i.peel, 0
  br i1 %.not.i26.i.peel, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.noexc28.i.peel
  %i.iz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !150, !noalias !144, !nonnull !6, !noundef !6
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ix
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ja, ptr nonnull readonly align 1 %i.ba, i64 %.fr63.i177.i.peel, i1 false), !noalias !143
  %.pre.i27.i.peel = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !150, !noalias !144
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.noexc28.i.peel
  %i.jb = phi i64 [ %.pre.i27.i.peel, %bb.be ], [ %i.ix, %.noexc28.i.peel ]
  %i.jc = add i64 %i.jb, %.fr63.i177.i.peel
  store i64 %i.jc, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !150, !noalias !144
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %.lr.ph.i.i unwind label %.loopexit108.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !143

.lr.ph.i.i:                                       ; preds = %bb.bf, %bb.bu
  %.fr63.i146.i = phi i64 [ %.fr63.i177.i, %bb.bu ], [ %.fr63.i177.i.peel, %bb.bf ] ; 15 uses
  %i.jd = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !151, !noalias !144, !noundef !6 ; 2 uses
  %i.je = icmp sgt i64 %i.jd, -1
  call void @llvm.assume(i1 %i.je)
  %i.jf = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !151, !noalias !144, !nonnull !6, !noundef !6
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jd
  %i.jh = load i8, ptr %i.bs, align 1, !noalias !152
  store i8 %i.jh, ptr %i.jg, align 1, !noalias !152
  %.pre.i31.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !151, !noalias !144
  %storemerge = add i64 %.pre.i31.i, 1
  store i64 %storemerge, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !151, !noalias !144
  %i.ji = icmp eq i64 %.fr63.i146.i, 0
  br i1 %i.ji, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.fr63.i146.i, %.sroa.1382.0.copyload.i
  br i1 %.not.i.i.i.peel.i, label %bb.bh, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.bg
  %i.jj = icmp eq i64 %.fr63.i146.i, %.sroa.1382.0.copyload.i
  br i1 %i.jj, label %bb.bi, label %.loopexit182.i

bb.bh:                                            ; preds = %bb.bg
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.1281.0.copyload.i, i64 %.fr63.i146.i
  %i.jl = load i8, ptr %i.jk, align 1, !alias.scope !153, !noalias !154, !noundef !6
  %i.jm = icmp sgt i8 %i.jl, -65
  br i1 %i.jm, label %bb.bi, label %.loopexit182.i

bb.bi:                                            ; preds = %bb.bh, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.1281.0.copyload.i, i64 %.fr63.i146.i ; 4 uses
  %i.jo = icmp samesign eq i64 %.fr63.i146.i, %.sroa.1382.0.copyload.i
  br i1 %i.jo, label %.loopexit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jp = load i8, ptr %i.jn, align 1, !noalias !155, !noundef !6 ; 4 uses
  %i.jq = icmp sgt i8 %i.jp, -1
  br i1 %i.jq, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.peel.i: ; preds = %bb.bj
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.js = and i8 %i.jp, 31
  %i.jt = zext nneg i8 %i.js to i32               ; 3 uses
  %i.ju = add nuw nsw i64 %.fr63.i146.i, 1
  %i.jv = icmp samesign ne i64 %i.ju, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.jv)
  %i.jw = load i8, ptr %i.jr, align 1, !noalias !155, !noundef !6
  %i.jx = shl nuw nsw i32 %i.jt, 6
  %i.jy = and i8 %i.jw, 63
  %i.jz = zext nneg i8 %i.jy to i32               ; 2 uses
  %i.ka = or disjoint i32 %i.jx, %i.jz
  %i.kb = icmp samesign ugt i8 %i.jp, -33
  br i1 %i.kb, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.peel.i, label %bb.bk

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.peel.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  %i.kd = add nuw nsw i64 %.fr63.i146.i, 2
  %i.ke = icmp samesign ne i64 %i.kd, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.ke)
  %i.kf = load i8, ptr %i.kc, align 1, !noalias !155, !noundef !6
  %i.kg = shl nuw nsw i32 %i.jz, 6
  %i.kh = and i8 %i.kf, 63
  %i.ki = zext nneg i8 %i.kh to i32
  %i.kj = or disjoint i32 %i.kg, %i.ki            ; 2 uses
  %i.kk = shl nuw nsw i32 %i.jt, 12
  %i.kl = or disjoint i32 %i.kj, %i.kk
  %i.km = icmp samesign ugt i8 %i.jp, -17
  br i1 %i.km, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.peel.i, label %bb.bk

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.peel.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jn, i64 3
  %i.ko = add nuw nsw i64 %.fr63.i146.i, 3
  %i.kp = icmp samesign ne i64 %i.ko, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.kp)
  %i.kq = load i8, ptr %i.kn, align 1, !noalias !155, !noundef !6
  %i.kr = shl nuw nsw i32 %i.jt, 18
  %i.ks = and i32 %i.kr, 1835008
  %i.kt = shl nuw nsw i32 %i.kj, 6
  %i.ku = and i8 %i.kq, 63
  %i.kv = zext nneg i8 %i.ku to i32
  %i.kw = or disjoint i32 %i.kt, %i.kv
  %i.kx = or disjoint i32 %i.kw, %i.ks
  br label %bb.bk

bb.bk:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.kl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.peel.i ], [ %i.kx, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.peel.i ], [ %i.ka, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.peel.i ] ; 4 uses
  %i.ky = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.ky)
  %i.kz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.kz, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.la = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.la, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.lb, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i: ; preds = %bb.bj, %bb.bm, %bb.bl, %bb.bk
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.bl ], [ %..i.i.peel.i, %bb.bm ], [ 1, %bb.bk ], [ 1, %bb.bj ]
  %i.lc = add i64 %.sroa.01.0.i.i.peel.i, %.fr63.i146.i
  %.fr63.i.i = freeze i64 %i.lc                   ; 15 uses
  %i.ld = icmp eq i64 %.fr63.i.i, 0
  br i1 %i.ld, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i
  %.not.i.i.i.i = icmp ult i64 %.fr63.i.i, %.sroa.1382.0.copyload.i
  br i1 %.not.i.i.i.i, label %bb.bo, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.bn
  %i.le = icmp eq i64 %.fr63.i.i, %.sroa.1382.0.copyload.i
  br i1 %i.le, label %bb.bp, label %.loopexit182.i

bb.bo:                                            ; preds = %bb.bn
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.1281.0.copyload.i, i64 %.fr63.i.i
  %i.lg = load i8, ptr %i.lf, align 1, !alias.scope !153, !noalias !154, !noundef !6
  %i.lh = icmp sgt i8 %i.lg, -65
  br i1 %i.lh, label %bb.bp, label %.loopexit182.i

bb.bp:                                            ; preds = %bb.bo, %.split.i.i.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i
  %i.li = icmp samesign eq i64 %.fr63.i.i, %.sroa.1382.0.copyload.i
  br i1 %i.li, label %.loopexit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.1281.0.copyload.i, i64 %.fr63.i.i
  %i.lk = load i8, ptr %i.lj, align 1, !noalias !155, !noundef !6 ; 3 uses
  %i.ll = icmp sgt i8 %i.lk, -1
  br i1 %i.ll, label %.loopexit.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.i: ; preds = %bb.bq
  %i.lm = add nuw nsw i64 %.fr63.i.i, 1
  %i.ln = icmp samesign ne i64 %i.lm, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.ln)
  %i.lo = icmp samesign ugt i8 %i.lk, -33
  br i1 %i.lo, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit12.i.i.i.i
  %i.lp = add nuw nsw i64 %.fr63.i.i, 2
  %i.lq = icmp samesign ne i64 %i.lp, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.lq)
  %i.lr = icmp samesign ugt i8 %i.lk, -17
  br i1 %i.lr, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8yNfvVM1dno_3zip.exit14.i.i.i.i
  %i.ls = add nuw nsw i64 %.fr63.i.i, 3
  %i.lt = icmp samesign ne i64 %i.ls, %.sroa.1382.0.copyload.i
  call void @llvm.assume(i1 %i.lt)
  br label %.loopexit.i.i

.loopexit182.i:                                   ; preds = %bb.bo, %.split.i.i.i.i, %bb.bh, %.split.i.i.i.peel.i, %bb.bb, %.split.i.i.i.i.peel, %bb.as, %.split.i.i.i.peel.i.peel
  %.fr63.i.lcssa.i = phi i64 [ %.fr63.i143.i, %.split.i.i.i.peel.i.peel ], [ %.fr63.i143.i, %bb.as ], [ %i.ig, %.split.i.i.i.i.peel ], [ %i.ig, %bb.bb ], [ %.fr63.i.i, %bb.bo ], [ %.fr63.i.i, %.split.i.i.i.i ], [ %.fr63.i146.i, %.split.i.i.i.peel.i ], [ %.fr63.i146.i, %bb.bh ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.1281.0.copyload.i, i64 noundef %.sroa.1382.0.copyload.i, i64 noundef %.fr63.i.lcssa.i, i64 noundef %.sroa.1382.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #16
          to label %.noexc.i unwind label %.loopexit108.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154

.noexc.i:                                         ; preds = %.loopexit182.i
  unreachable

.split32.us.i11.i.invoke.i:                       ; preds = %.preheader.i10.i.us.i, %.lr.ph208
  %i.lu = phi i64 [ %i.dn, %.lr.ph208 ], [ %i.co, %.preheader.i10.i.us.i ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.lu, i64 noundef range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #16
          to label %.split32.us.i11.i.cont.i unwind label %.loopexit108.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !156

.split32.us.i11.i.cont.i:                         ; preds = %.split32.us.i11.i.invoke.i
  unreachable

.loopexit108.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aq, %.loopexit.i.us.i, %.loopexit.i.i, %bb.bu, %bb.bf, %.loopexit.i.i.peel, %.loopexit.i, %.split32.us.i11.i.invoke.i, %.loopexit182.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8yNfvVM1dno_3zip.exit.i
  %lpad.loopexit.split-lp254 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #17
          to label %.body unwind label %bb.bv, !noalias !143

.loopexit.i:                                      ; preds = %bb.bi, %bb.ai, %bb.aa, %bb.ah, %bb.al, %bb.ao, %.loopexit183.i.peel, %.split.i
  %.sroa.04.0134.i = phi i64 [ %.sroa.04.0.us.i, %bb.ao ], [ %.sroa.04.0.us.i, %bb.ai ], [ 0, %.split.i ], [ %.sroa.04.0.us.i, %bb.ah ], [ 0, %.loopexit183.i.peel ], [ %.sroa.04.0.us.i, %bb.al ], [ %.sroa.04.0.us.i, %bb.aa ], [ %.sroa.1382.0.copyload.i, %bb.bi ] ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.04.0134.i
end_hunk_0
