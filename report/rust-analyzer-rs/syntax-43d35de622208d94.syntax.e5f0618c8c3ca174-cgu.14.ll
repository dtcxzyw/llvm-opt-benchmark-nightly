Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syntax-43d35de622208d94.syntax.e5f0618c8c3ca174-cgu.14?download=true
inline.NumInlined: 487
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs2_NtNtCsjJXvCMGntp8_6syntax3ast4editNtB5_11IndentLevel21clone_decrease_indent:bb.a

.preheader.i10.us.us.i.us.i.preheader:            ; preds = %.preheader35.i.us.i.us.i, %.preheader35.i.us.i.us.i.preheader
  br i1 %.not34.i.us.us.i.us.i484, label %.loopexit.i.us.i, label %.lr.ph486

.lr.ph483:                                        ; preds = %.preheader35.i.us.i.us.i.preheader, %.preheader35.i.us.i.us.i
  %.sroa.04.0.us.i.us.i.us.i482 = phi i64 [ %i.gw, %.preheader35.i.us.i.us.i ], [ %.fr63.i109.i, %.preheader35.i.us.i.us.i.preheader ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %.sroa.04.0.us.i.us.i.us.i482
  %i.gy = load i8, ptr %i.gx, align 1, !alias.scope !322, !noalias !320, !noundef !9
  %i.gz = add i64 %.sroa.04.0.us.i.us.i.us.i482, %i.gp ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.1248.0.copyload.i, i64 %i.gz
  %i.hc = load i8, ptr %i.hb, align 1, !alias.scope !321, !noalias !320, !noundef !9
  %.not21.us.i.us.i.us.i = icmp eq i8 %i.gy, %i.hc
  br i1 %.not21.us.i.us.i.us.i, label %.preheader35.i.us.i.us.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph483
  %i.hd = add i64 %i.gp, %i.ej
  %i.he = add i64 %i.hd, %.sroa.04.0.us.i.us.i.us.i482
  br label %bb.az

.preheader.i10.us.us.i.us.i:                      ; preds = %.lr.ph486
  %.not34.i.us.us.i.us.i = icmp eq i64 %i.hf, 0
  br i1 %.not34.i.us.us.i.us.i, label %.loopexit.i.us.i, label %.lr.ph486

.lr.ph486:                                        ; preds = %.preheader.i10.us.us.i.us.i.preheader, %.preheader.i10.us.us.i.us.i
  %.sroa.2.0.us.i.us.us.i.us.i485 = phi i64 [ %i.hf, %.preheader.i10.us.us.i.us.i ], [ %.fr63.i109.i, %.preheader.i10.us.us.i.us.i.preheader ]
  %i.hf = add i64 %.sroa.2.0.us.i.us.us.i.us.i485, -1 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !322, !noalias !320, !noundef !9
  %i.hi = add i64 %i.hf, %i.gp                    ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.1248.0.copyload.i, i64 %i.hi
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !321, !noalias !320, !noundef !9
  %.not20.us.i.us.us.i.us.i = icmp eq i8 %i.hh, %i.hl
  br i1 %.not20.us.i.us.us.i.us.i, label %.preheader.i10.us.us.i.us.i, label %.split.us.us.i.us.i

.split.us.us.i.us.i:                              ; preds = %.lr.ph486
  %i.hm = add i64 %i.gp, %.sroa.642.0.copyload.i
  br label %bb.az

bb.ay:                                            ; preds = %.lr.ph.split.us.i.us.i.us.i
  %i.hn = add i64 %i.gp, %.sroa.15.0.copyload.i
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.split.us.us.i.us.i, %bb.ax
  %.sink.i9.us.i.us.i = phi i64 [ %i.hn, %bb.ay ], [ %i.he, %bb.ax ], [ %i.hm, %.split.us.us.i.us.i ] ; 2 uses
  %i.ho = add i64 %.sink.i9.us.i.us.i, %i.eg      ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %.sroa.1349.0.copyload.i
  br i1 %i.hp, label %.lr.ph.split.us.i.us.i.us.i, label %.loopexit.i

.loopexit.i.us.i:                                 ; preds = %.preheader36.i.i.us.i.preheader, %.preheader.i10.us.us.i.us.i.preheader, %.preheader36.i.i.us.i, %.preheader.i10.us.us.i.us.i, %.preheader.i10.i.us.i
  %.sroa.551.0.us.i = phi i64 [ %i.gp, %.preheader.i10.us.us.i.us.i ], [ %i.fv, %.preheader.i10.i.us.i ], [ %i.ep, %.preheader36.i.i.us.i ], [ %i.gp, %.preheader.i10.us.us.i.us.i.preheader ], [ %i.ep, %.preheader36.i.i.us.i.preheader ] ; 3 uses
  %.sroa.2712.2.us.i = phi i64 [ -1, %.preheader.i10.us.us.i.us.i ], [ -1, %.preheader.i10.i.us.i ], [ 0, %.preheader36.i.i.us.i ], [ -1, %.preheader.i10.us.us.i.us.i.preheader ], [ 0, %.preheader36.i.i.us.i.preheader ]
  %.sroa.952.0.us.i = add i64 %.sroa.551.0.us.i, %.sroa.15.0.copyload.i ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.04.0.us.i
  %gepdiff.us.i = sub nuw nsw i64 %.sroa.551.0.us.i, %.sroa.04.0.us.i ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %gepdiff.us.i)
          to label %.noexc26.us.i unwind label %.loopexit74.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !316

.noexc26.us.i:                                    ; preds = %.loopexit.i.us.i
  %i.hr = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !323, !noalias !317, !noundef !9 ; 3 uses
  %i.hs = icmp sgt i64 %i.hr, -1
  call void @llvm.assume(i1 %i.hs)
  %.not.i24.us.i = icmp eq i64 %.sroa.551.0.us.i, %.sroa.04.0.us.i
  br i1 %.not.i24.us.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.noexc26.us.i
  %i.ht = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !323, !noalias !317, !nonnull !9, !noundef !9
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hu, ptr nonnull readonly align 1 %i.hq, i64 %gepdiff.us.i, i1 false), !noalias !316
  %.pre.i25.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !323, !noalias !317
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.noexc26.us.i
  %i.hv = phi i64 [ %.pre.i25.us.i, %bb.ba ], [ %i.hr, %.noexc26.us.i ]
  %i.hw = add i64 %i.hv, %gepdiff.us.i
  store i64 %i.hw, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !323, !noalias !317
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %bb.bc unwind label %.loopexit74.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !316

bb.bc:                                            ; preds = %bb.bb
  %i.hx = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !324, !noalias !317, !noundef !9 ; 2 uses
  %i.hy = icmp sgt i64 %i.hx, -1
  call void @llvm.assume(i1 %i.hy)
  %i.hz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !324, !noalias !317, !nonnull !9, !noundef !9
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hx
  store i8 10, ptr %i.ia, align 1, !noalias !316
  %.pre.i29.us.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !324, !noalias !317
  %i.ib = add i64 %.pre.i29.us.i, 1
  store i64 %i.ib, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !324, !noalias !317
  br label %bb.ak

.split.i:                                         ; preds = %bb.aj
  %i.ic = and i64 %.sroa.642.0.copyload.i, 65536
  %.not.i = icmp eq i64 %i.ic, 0
  br i1 %.not.i, label %.lr.ph.i.lr.ph.i, label %.loopexit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1248.0.copyload.i) ]
  %i.id = trunc i64 %.sroa.642.0.copyload.i to i1 ; 2 uses
  %i.ie = icmp eq i64 %.fr63.i109.i, 0
  br i1 %i.ie, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.lr.ph.i
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.fr63.i109.i, %.sroa.1349.0.copyload.i
  br i1 %.not.i.i.i.peel.i.peel, label %bb.be, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.bd
  %i.if = icmp eq i64 %.fr63.i109.i, %.sroa.1349.0.copyload.i
  br i1 %i.if, label %bb.bf, label %.loopexit148.i

bb.be:                                            ; preds = %bb.bd
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.1248.0.copyload.i, i64 %.fr63.i109.i
  %i.ih = load i8, ptr %i.ig, align 1, !alias.scope !325, !noalias !326, !noundef !9
  %i.ii = icmp sgt i8 %i.ih, -65
  br i1 %i.ii, label %bb.bf, label %.loopexit148.i

bb.bf:                                            ; preds = %bb.be, %.split.i.i.i.peel.i.peel, %.lr.ph.i.lr.ph.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.1248.0.copyload.i, i64 %.fr63.i109.i ; 4 uses
  %i.ik = icmp samesign eq i64 %.fr63.i109.i, %.sroa.1349.0.copyload.i
  br i1 %i.ik, label %.loopexit149.i.peel, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.il = load i8, ptr %i.ij, align 1, !noalias !327, !noundef !9 ; 5 uses
  %i.im = icmp sgt i8 %i.il, -1
  br i1 %i.im, label %bb.bh, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.peel.i.peel: ; preds = %bb.bg
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.io = and i8 %i.il, 31
  %i.ip = zext nneg i8 %i.io to i32               ; 3 uses
  %i.iq = add nuw nsw i64 %.fr63.i109.i, 1
  %i.ir = icmp samesign ne i64 %i.iq, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.ir)
  %i.is = load i8, ptr %i.in, align 1, !noalias !327, !noundef !9
  %i.it = shl nuw nsw i32 %i.ip, 6
  %i.iu = and i8 %i.is, 63
  %i.iv = zext nneg i8 %i.iu to i32               ; 2 uses
  %i.iw = or disjoint i32 %i.it, %i.iv
  %i.ix = icmp samesign ugt i8 %i.il, -33
  br i1 %i.ix, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.peel.i.peel, label %bb.bi

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.peel.i.peel
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %i.iz = add nuw nsw i64 %.fr63.i109.i, 2
  %i.ja = icmp samesign ne i64 %i.iz, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.ja)
  %i.jb = load i8, ptr %i.iy, align 1, !noalias !327, !noundef !9
  %i.jc = shl nuw nsw i32 %i.iv, 6
  %i.jd = and i8 %i.jb, 63
  %i.je = zext nneg i8 %i.jd to i32
  %i.jf = or disjoint i32 %i.jc, %i.je            ; 2 uses
  %i.jg = shl nuw nsw i32 %i.ip, 12
  %i.jh = or disjoint i32 %i.jf, %i.jg
  %i.ji = icmp samesign ugt i8 %i.il, -17
  br i1 %i.ji, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.peel.i.peel, label %bb.bi

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.peel.i.peel
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ij, i64 3
  %i.jk = add nuw nsw i64 %.fr63.i109.i, 3
  %i.jl = icmp samesign ne i64 %i.jk, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.jl)
  %i.jm = load i8, ptr %i.jj, align 1, !noalias !327, !noundef !9
  %i.jn = shl nuw nsw i32 %i.ip, 18
  %i.jo = and i32 %i.jn, 1835008
  %i.jp = shl nuw nsw i32 %i.jf, 6
  %i.jq = and i8 %i.jm, 63
  %i.jr = zext nneg i8 %i.jq to i32
  %i.js = or disjoint i32 %i.jp, %i.jr
  %i.jt = or disjoint i32 %i.js, %i.jo
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ju = zext nneg i8 %i.il to i32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.jh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.peel.i.peel ], [ %i.jt, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.peel.i.peel ], [ %i.iw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.peel.i.peel ], [ %i.ju, %bb.bh ]
  %.sroa.4.0.i.ph.i.i.peel.i.peel.fr = freeze i32 %.sroa.4.0.i.ph.i.i.peel.i.peel ; 4 uses
  %i.jv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.fr, 1114112
  call void @llvm.assume(i1 %i.jv)
  br i1 %i.id, label %.loopexit.i.i.peel, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.fr, 128
  br i1 %i.jw, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.fr, 2048
  br i1 %i.jx, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.fr, 65536
  %..i.i.peel.i.peel = select i1 %i.jy, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel: ; preds = %bb.bl, %bb.bk, %bb.bj
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.bk ], [ %..i.i.peel.i.peel, %bb.bl ], [ 1, %bb.bj ]
  %i.jz = add i64 %.sroa.01.0.i.i.peel.i.peel, %.fr63.i109.i ; 12 uses
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel
  %.not.i.i.i.i48.peel = icmp ult i64 %i.jz, %.sroa.1349.0.copyload.i
  br i1 %.not.i.i.i.i48.peel, label %bb.bn, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.bm
  %i.kb = icmp eq i64 %i.jz, %.sroa.1349.0.copyload.i
  br i1 %i.kb, label %bb.bo, label %.loopexit148.i

bb.bn:                                            ; preds = %bb.bm
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.1248.0.copyload.i, i64 %i.jz
  %i.kd = load i8, ptr %i.kc, align 1, !alias.scope !325, !noalias !326, !noundef !9
  %i.ke = icmp sgt i8 %i.kd, -65
  br i1 %i.ke, label %bb.bo, label %.loopexit148.i

bb.bo:                                            ; preds = %bb.bn, %.split.i.i.i.i.peel, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i.peel
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.1248.0.copyload.i, i64 %i.jz ; 4 uses
  %i.kf = icmp samesign eq i64 %i.jz, %.sroa.1349.0.copyload.i
  br i1 %i.kf, label %.loopexit.i.i.peel, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kg = load i8, ptr %2, align 1, !noalias !327, !noundef !9 ; 5 uses
  %i.kh = icmp sgt i8 %i.kg, -1
  br i1 %i.kh, label %28, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.i.peel: ; preds = %bb.bp
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = and i8 %i.kg, 31
  %5 = zext nneg i8 %4 to i32                     ; 3 uses
  %i.ki = add nuw nsw i64 %i.jz, 1
  %i.kj = icmp samesign ne i64 %i.ki, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.kj)
  %6 = load i8, ptr %3, align 1, !noalias !327, !noundef !9
  %7 = shl nuw nsw i32 %5, 6
  %8 = and i8 %6, 63
  %9 = zext nneg i8 %8 to i32                     ; 2 uses
  %10 = or disjoint i32 %7, %9
  %i.kk = icmp samesign ugt i8 %i.kg, -33
  br i1 %i.kk, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.i.peel, label %.loopexit.i.loopexit.loopexit.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.i.peel
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.kl = add nuw nsw i64 %i.jz, 2
  %i.km = icmp samesign ne i64 %i.kl, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.km)
  %12 = load i8, ptr %11, align 1, !noalias !327, !noundef !9
  %13 = shl nuw nsw i32 %9, 6
  %14 = and i8 %12, 63
  %15 = zext nneg i8 %14 to i32
  %16 = or disjoint i32 %13, %15                  ; 2 uses
  %17 = shl nuw nsw i32 %5, 12
  %18 = or disjoint i32 %16, %17
  %i.kn = icmp samesign ugt i8 %i.kg, -17
  br i1 %i.kn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.i.peel, label %.loopexit.i.loopexit.loopexit.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.i.peel
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ko = add nuw nsw i64 %i.jz, 3
  %i.kp = icmp samesign ne i64 %i.ko, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.kp)
  %20 = load i8, ptr %19, align 1, !noalias !327, !noundef !9
  %21 = shl nuw nsw i32 %5, 18
  %22 = and i32 %21, 1835008
  %23 = shl nuw nsw i32 %16, 6
  %24 = and i8 %20, 63
  %25 = zext nneg i8 %24 to i32
  %26 = or disjoint i32 %23, %25
  %27 = or disjoint i32 %26, %22
  br label %.loopexit.i.loopexit.loopexit.i.peel

28:                                               ; preds = %bb.bp
  %29 = zext nneg i8 %i.kg to i32
  br label %.loopexit.i.loopexit.loopexit.i.peel

.loopexit.i.loopexit.loopexit.i.peel:             ; preds = %28, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.i.peel = phi i32 [ %18, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.i.peel ], [ %27, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.i.peel ], [ %10, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.i.peel ], [ %29, %28 ]
  %30 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %30)
  br label %.loopexit.i.i.peel

.loopexit149.i.peel:                              ; preds = %bb.bf
  br i1 %i.id, label %.loopexit.i.i.peel, label %.loopexit.i

.loopexit.i.i.peel:                               ; preds = %.loopexit149.i.peel, %.loopexit.i.loopexit.loopexit.i.peel, %bb.bo, %bb.bi
  %.fr63.i143.i.peel = phi i64 [ %.fr63.i109.i, %.loopexit149.i.peel ], [ %i.jz, %.loopexit.i.loopexit.loopexit.i.peel ], [ %.fr63.i109.i, %bb.bi ], [ %.sroa.1349.0.copyload.i, %bb.bo ] ; 5 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.fr63.i143.i.peel)
          to label %.noexc26.i.peel unwind label %.loopexit74.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !316

.noexc26.i.peel:                                  ; preds = %.loopexit.i.i.peel
  %i.kq = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !323, !noalias !317, !noundef !9 ; 3 uses
  %i.kr = icmp sgt i64 %i.kq, -1
  call void @llvm.assume(i1 %i.kr)
  %.not.i24.i.peel = icmp eq i64 %.fr63.i143.i.peel, 0
  br i1 %.not.i24.i.peel, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.noexc26.i.peel
  %i.ks = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !323, !noalias !317, !nonnull !9, !noundef !9
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kt, ptr nonnull readonly align 1 %.sroa.0.0.i, i64 %.fr63.i143.i.peel, i1 false), !noalias !316
  %.pre.i25.i.peel = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !323, !noalias !317
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.noexc26.i.peel
  %i.ku = phi i64 [ %.pre.i25.i.peel, %bb.bq ], [ %i.kq, %.noexc26.i.peel ]
  %i.kv = add i64 %i.ku, %.fr63.i143.i.peel
  store i64 %i.kv, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !323, !noalias !317
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %.lr.ph.i.i47 unwind label %.loopexit74.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !316

.lr.ph.i.i47:                                     ; preds = %bb.br, %bb.cg
  %.fr63.i112.i = phi i64 [ %.fr63.i143.i, %bb.cg ], [ %.fr63.i143.i.peel, %bb.br ] ; 15 uses
  %i.kw = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !324, !noalias !317, !noundef !9 ; 2 uses
  %i.kx = icmp sgt i64 %i.kw, -1
  call void @llvm.assume(i1 %i.kx)
  %i.ky = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !324, !noalias !317, !nonnull !9, !noundef !9
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kw
  store i8 10, ptr %i.kz, align 1, !noalias !316
  %.pre.i29.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !324, !noalias !317
  %storemerge = add i64 %.pre.i29.i, 1
  store i64 %storemerge, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !324, !noalias !317
  %i.la = icmp eq i64 %.fr63.i112.i, 0
  br i1 %i.la, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i47
  %.not.i.i.i.peel.i = icmp ult i64 %.fr63.i112.i, %.sroa.1349.0.copyload.i
  br i1 %.not.i.i.i.peel.i, label %bb.bt, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.bs
  %i.lb = icmp eq i64 %.fr63.i112.i, %.sroa.1349.0.copyload.i
  br i1 %i.lb, label %bb.bu, label %.loopexit148.i

bb.bt:                                            ; preds = %bb.bs
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.1248.0.copyload.i, i64 %.fr63.i112.i
  %i.ld = load i8, ptr %i.lc, align 1, !alias.scope !325, !noalias !326, !noundef !9
  %i.le = icmp sgt i8 %i.ld, -65
  br i1 %i.le, label %bb.bu, label %.loopexit148.i

bb.bu:                                            ; preds = %bb.bt, %.split.i.i.i.peel.i, %.lr.ph.i.i47
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.1248.0.copyload.i, i64 %.fr63.i112.i ; 4 uses
  %i.lg = icmp samesign eq i64 %.fr63.i112.i, %.sroa.1349.0.copyload.i
  br i1 %i.lg, label %.loopexit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lh = load i8, ptr %i.lf, align 1, !noalias !327, !noundef !9 ; 4 uses
  %i.li = icmp sgt i8 %i.lh, -1
  br i1 %i.li, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.peel.i: ; preds = %bb.bv
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.lk = and i8 %i.lh, 31
  %i.ll = zext nneg i8 %i.lk to i32               ; 3 uses
  %i.lm = add nuw nsw i64 %.fr63.i112.i, 1
  %i.ln = icmp samesign ne i64 %i.lm, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.ln)
  %i.lo = load i8, ptr %i.lj, align 1, !noalias !327, !noundef !9
  %i.lp = shl nuw nsw i32 %i.ll, 6
  %i.lq = and i8 %i.lo, 63
  %i.lr = zext nneg i8 %i.lq to i32               ; 2 uses
  %i.ls = or disjoint i32 %i.lp, %i.lr
  %i.lt = icmp samesign ugt i8 %i.lh, -33
  br i1 %i.lt, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.peel.i, label %bb.bw

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.peel.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.lv = add nuw nsw i64 %.fr63.i112.i, 2
  %i.lw = icmp samesign ne i64 %i.lv, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.lw)
  %i.lx = load i8, ptr %i.lu, align 1, !noalias !327, !noundef !9
  %i.ly = shl nuw nsw i32 %i.lr, 6
  %i.lz = and i8 %i.lx, 63
  %i.ma = zext nneg i8 %i.lz to i32
  %i.mb = or disjoint i32 %i.ly, %i.ma            ; 2 uses
  %i.mc = shl nuw nsw i32 %i.ll, 12
  %i.md = or disjoint i32 %i.mb, %i.mc
  %i.me = icmp samesign ugt i8 %i.lh, -17
  br i1 %i.me, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.peel.i, label %bb.bw

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.peel.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lf, i64 3
  %i.mg = add nuw nsw i64 %.fr63.i112.i, 3
  %i.mh = icmp samesign ne i64 %i.mg, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.mh)
  %i.mi = load i8, ptr %i.mf, align 1, !noalias !327, !noundef !9
  %i.mj = shl nuw nsw i32 %i.ll, 18
  %i.mk = and i32 %i.mj, 1835008
  %i.ml = shl nuw nsw i32 %i.mb, 6
  %i.mm = and i8 %i.mi, 63
  %i.mn = zext nneg i8 %i.mm to i32
  %i.mo = or disjoint i32 %i.ml, %i.mn
  %i.mp = or disjoint i32 %i.mo, %i.mk
  br label %bb.bw

bb.bw:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.md, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.peel.i ], [ %i.mp, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.peel.i ], [ %i.ls, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.peel.i ] ; 4 uses
  %i.mq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.mq)
  %i.mr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.mr, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ms = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.ms, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mt = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.mt, i64 3, i64 4
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i: ; preds = %bb.bv, %bb.by, %bb.bx, %bb.bw
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.bx ], [ %..i.i.peel.i, %bb.by ], [ 1, %bb.bw ], [ 1, %bb.bv ]
  %i.mu = add i64 %.sroa.01.0.i.i.peel.i, %.fr63.i112.i
  %.fr63.i.i = freeze i64 %i.mu                   ; 15 uses
  %i.mv = icmp eq i64 %.fr63.i.i, 0
  br i1 %i.mv, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i
  %.not.i.i.i.i48 = icmp ult i64 %.fr63.i.i, %.sroa.1349.0.copyload.i
  br i1 %.not.i.i.i.i48, label %bb.ca, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.bz
  %i.mw = icmp eq i64 %.fr63.i.i, %.sroa.1349.0.copyload.i
  br i1 %i.mw, label %bb.cb, label %.loopexit148.i

bb.ca:                                            ; preds = %bb.bz
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.1248.0.copyload.i, i64 %.fr63.i.i
  %i.my = load i8, ptr %i.mx, align 1, !alias.scope !325, !noalias !326, !noundef !9
  %i.mz = icmp sgt i8 %i.my, -65
  br i1 %i.mz, label %bb.cb, label %.loopexit148.i

bb.cb:                                            ; preds = %bb.ca, %.split.i.i.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.i.peel.i
  %i.na = icmp samesign eq i64 %.fr63.i.i, %.sroa.1349.0.copyload.i
  br i1 %i.na, label %.loopexit.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.1248.0.copyload.i, i64 %.fr63.i.i
  %i.nc = load i8, ptr %i.nb, align 1, !noalias !327, !noundef !9 ; 3 uses
  %i.nd = icmp sgt i8 %i.nc, -1
  br i1 %i.nd, label %.loopexit.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.i: ; preds = %bb.cc
  %i.ne = add nuw nsw i64 %.fr63.i.i, 1
  %i.nf = icmp samesign ne i64 %i.ne, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.nf)
  %i.ng = icmp samesign ugt i8 %i.nc, -33
  br i1 %i.ng, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit12.i.i.i.i
  %i.nh = add nuw nsw i64 %.fr63.i.i, 2
  %i.ni = icmp samesign ne i64 %i.nh, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.ni)
  %i.nj = icmp samesign ugt i8 %i.nc, -17
  br i1 %i.nj, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.i, label %.loopexit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjJXvCMGntp8_6syntax.exit14.i.i.i.i
  %i.nk = add nuw nsw i64 %.fr63.i.i, 3
  %i.nl = icmp samesign ne i64 %i.nk, %.sroa.1349.0.copyload.i
  call void @llvm.assume(i1 %i.nl)
  br label %.loopexit.i.i

.loopexit148.i:                                   ; preds = %bb.bn, %.split.i.i.i.i.peel, %bb.be, %.split.i.i.i.peel.i.peel, %bb.ca, %.split.i.i.i.i, %bb.bt, %.split.i.i.i.peel.i
  %.fr63.i.lcssa.i = phi i64 [ %.fr63.i.i, %bb.ca ], [ %.fr63.i.i, %.split.i.i.i.i ], [ %.fr63.i112.i, %.split.i.i.i.peel.i ], [ %.fr63.i112.i, %bb.bt ], [ %.fr63.i109.i, %.split.i.i.i.peel.i.peel ], [ %.fr63.i109.i, %bb.be ], [ %i.jz, %.split.i.i.i.i.peel ], [ %i.jz, %bb.bn ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.1248.0.copyload.i, i64 noundef %.sroa.1349.0.copyload.i, i64 noundef %.fr63.i.lcssa.i, i64 noundef %.sroa.1349.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #23
          to label %.noexc.i unwind label %.loopexit74.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !326

.noexc.i:                                         ; preds = %.loopexit148.i
  unreachable

.split32.us.i11.i.invoke.i:                       ; preds = %.preheader.i10.i.us.i, %.lr.ph474
  %i.nm = phi i64 [ %i.fh, %.lr.ph474 ], [ %i.ei, %.preheader.i10.i.us.i ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.nm, i64 noundef range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23
          to label %.split32.us.i11.i.cont.i unwind label %.loopexit74.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !328

.split32.us.i11.i.cont.i:                         ; preds = %.split32.us.i11.i.invoke.i
  unreachable

.loopexit74.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cg, %.loopexit.i.i, %.loopexit.i.us.i, %bb.bb, %.loopexit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjJXvCMGntp8_6syntax.exit.i, %bb.br, %.loopexit.i.i.peel, %.split32.us.i11.i.invoke.i, %.loopexit148.i
  %lpad.loopexit.split-lp509 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #24
          to label %.body52 unwind label %bb.ch, !noalias !316

.loopexit.i:                                      ; preds = %bb.bu, %bb.at, %bb.al, %bb.as, %bb.aw, %bb.az, %.loopexit149.i.peel, %.split.i
  %.sroa.04.0100.i = phi i64 [ %.sroa.04.0.us.i, %bb.az ], [ %.sroa.04.0.us.i, %bb.at ], [ 0, %.split.i ], [ %.sroa.04.0.us.i, %bb.as ], [ 0, %.loopexit149.i.peel ], [ %.sroa.04.0.us.i, %bb.aw ], [ %.sroa.04.0.us.i, %bb.al ], [ %.sroa.1349.0.copyload.i, %bb.bu ] ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.04.0100.i
  %gepdiff70.i = sub nuw nsw i64 %.sroa.3.0.i, %.sroa.04.0100.i ; 3 uses
end_hunk_0
