Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.03?download=true
inline.NumInlined: 1586
inline.NumDeleted: 883
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replaceReECskIqAKC4t9Ft_2yr:bb.a
.lr.ph.i:                                         ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.01.0.i.us.i.peel = phi i64 [ 2, %bb.n ], [ %..i.us.i.peel, %bb.o ], [ 1, %bb.m ]
  %i.bm = add i64 %.sroa.01.0.i.us.i.peel, %.fr215.i ; 23 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %.not.i.i.us.i = icmp ult i64 %i.bm, %.sroa.1355.0.copyload
  br i1 %.not.i.i.us.i, label %bb.q, label %.split.i.i.us.i

.split.i.i.us.i:                                  ; preds = %bb.p
  %i.bo = icmp eq i64 %i.bm, %.sroa.1355.0.copyload
  br i1 %i.bo, label %bb.r, label %.split.us161.i

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.1254.0.copyload, i64 %i.bm
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !215, !noalias !216, !noundef !6
  %i.br = icmp sgt i8 %i.bq, -65
  br i1 %i.br, label %bb.r, label %.split.us161.i

bb.r:                                             ; preds = %bb.q, %.split.i.i.us.i, %.lr.ph.i
  %i.bs = icmp samesign eq i64 %i.bm, %.sroa.1355.0.copyload
  br i1 %i.bs, label %.loopexit42.split.us.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.1254.0.copyload, i64 %i.bm
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !217, !noundef !6 ; 3 uses
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %.loopexit42.split.us.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit12.i.i.us.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit12.i.i.us.i: ; preds = %bb.s
  %i.bw = add nuw nsw i64 %i.bm, 1
  %i.bx = icmp samesign ne i64 %i.bw, %.sroa.1355.0.copyload
  call void @llvm.assume(i1 %i.bx)
  %i.by = icmp samesign ugt i8 %i.bu, -33
  br i1 %i.by, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit14.i.i.us.i, label %.loopexit42.split.us.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit12.i.i.us.i
  %i.bz = add nuw nsw i64 %i.bm, 2
  %i.ca = icmp samesign ne i64 %i.bz, %.sroa.1355.0.copyload
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign ugt i8 %i.bu, -17
  br i1 %i.cb, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit16.i.i.us.i, label %.loopexit42.split.us.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit14.i.i.us.i
  %i.cc = add nuw nsw i64 %i.bm, 3
  %i.cd = icmp samesign ne i64 %i.cc, %.sroa.1355.0.copyload
  call void @llvm.assume(i1 %i.cd)
  br label %.loopexit42.split.us.i

.split.us161.i:                                   ; preds = %bb.h, %.split.i.i.us.i.peel, %bb.q, %.split.i.i.us.i
  %.sroa.48.1.lcssa = phi i64 [ %i.bm, %bb.q ], [ %i.bm, %.split.i.i.us.i ], [ %.fr215.i, %.split.i.i.us.i.peel ], [ %.fr215.i, %bb.h ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.1254.0.copyload, i64 noundef %.sroa.1355.0.copyload, i64 noundef %.sroa.48.1.lcssa, i64 noundef %.sroa.1355.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @330) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.us161.i
  unreachable

.split166.us.i:                                   ; preds = %bb.i
  br i1 %i.q, label %.loopexit42.split.us.i, label %.loopexit

default.unreachable261.i:                         ; preds = %bb.f
  unreachable

bb.t:                                             ; preds = %bb.f
  %.not.i = icmp ult i64 %.fr215.i, %.sroa.1355.0.copyload
  br i1 %.not.i, label %bb.v, label %.loopexit

bb.u:                                             ; preds = %bb.f
  %i.ce = icmp eq i64 %.sroa.3016.0, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1254.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.cf = add i64 %.sroa.22.0, %i.o               ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %.sroa.1355.0.copyload ; 2 uses
  br i1 %i.ce, label %bb.ag, label %bb.y

bb.v:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1254.0.copyload) ]
  %i.ch = sub nuw i64 %.sroa.1355.0.copyload, %.fr215.i ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.1254.0.copyload, i64 %.fr215.i ; 2 uses
  %i.cj = icmp samesign ult i64 %i.ch, 16
  br i1 %i.cj, label %.lr.ph.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.sroa.1111.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef range(i64 0, -9223372036854775808) %i.ch)
          to label %.noexc25 unwind label %.loopexit81 ; 2 uses

.noexc25:                                         ; preds = %bb.w
  %i.cl = extractvalue { i64, i64 } %i.ck, 0
  %i.cm = extractvalue { i64, i64 } %i.ck, 1
  %i.cn = trunc nuw i64 %i.cl to i1
  br i1 %i.cn, label %.loopexit43.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.v, %bb.x
  %.sroa.04.011.i.i = phi i64 [ %i.cr, %bb.x ], [ 0, %bb.v ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.04.011.i.i
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !218, !noalias !219, !noundef !6
  %i.cq = icmp eq i8 %i.cp, %.sroa.1111.sroa.0.0
  br i1 %i.cq, label %.loopexit43.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.cr = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i7.i = icmp eq i64 %i.cr, %i.ch
  br i1 %exitcond.not.i7.i, label %.loopexit, label %.lr.ph.i.i

.loopexit43.i:                                    ; preds = %.lr.ph.i.i, %.noexc25
  %.sroa.5.0.i.i = phi i64 [ %i.cm, %.noexc25 ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cs = icmp ult i64 %.sroa.5.0.i.i, %i.ch
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add i64 %.sroa.5.0.i.i, %.fr215.i       ; 2 uses
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  br label %.loopexit42.split.us.i

bb.y:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  br i1 %i.cg, label %.lr.ph.i8.i, label %.loopexit

.lr.ph.i8.i:                                      ; preds = %bb.y
  %.sroa.1111.sroa.0.0.insert.ext = zext i8 %.sroa.1111.sroa.0.0 to i64
  %.sroa.1111.sroa.0.0.insert.insert = or disjoint i64 %.sroa.1111.sroa.10.0.insert.insert, %.sroa.1111.sroa.0.0.insert.ext ; 2 uses
  %i.cv = sub i64 %.sroa.15.0.copyload, %.sroa.1111.sroa.0.0.insert.insert
  %invariant.op = sub i64 1, %.fr215.i
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.ab, %.lr.ph.i8.i
  %i.cw = phi i64 [ %.sink70.i.i, %bb.ab ], [ %.sroa.3016.0, %.lr.ph.i8.i ] ; 3 uses
  %i.cx = phi i64 [ %i.dh, %bb.ab ], [ %i.cf, %.lr.ph.i8.i ]
  %i.cy = phi i64 [ %.sink71.i.i, %bb.ab ], [ %.sroa.22.0, %.lr.ph.i8.i ] ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.1254.0.copyload, i64 %i.cx
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !220, !noalias !222, !noundef !6
  %i.db = and i8 %i.da, 63
  %i.dc = zext nneg i8 %i.db to i64
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.dd, %.sroa.749.0.copyload
  %.not.i9.i = icmp eq i64 %i.de, 0
  br i1 %.not.i9.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.split.i.i
  %i.df = add i64 %i.cy, %.sroa.15.0.copyload
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.i.i
  %..i.i10.i = call noundef i64 @llvm.umax.i64(i64 %i.cw, i64 %.fr215.i) ; 2 uses
  %i.dg = icmp ult i64 %..i.i10.i, %.sroa.15.0.copyload
  br i1 %i.dg, label %.lr.ph, label %.preheader36.i.i.preheader

bb.ab:                                            ; preds = %bb.af, %bb.ae, %bb.z
  %.sink71.i.i = phi i64 [ %i.ee, %bb.af ], [ %i.ed, %bb.ae ], [ %i.df, %bb.z ] ; 2 uses
  %.sink70.i.i = phi i64 [ 0, %bb.af ], [ %i.cv, %bb.ae ], [ 0, %bb.z ]
  %i.dh = add i64 %.sink71.i.i, %i.o              ; 2 uses
  %i.di = icmp ult i64 %i.dh, %.sroa.1355.0.copyload
  br i1 %i.di, label %.lr.ph.split.i.i, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph
  %i.dj = add nuw nsw i64 %.sroa.04.0.i.i26, 1    ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %.sroa.15.0.copyload
  br i1 %i.dk, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.ac, %bb.aa
  %i.dl = icmp ult i64 %i.cw, %.fr215.i
  br i1 %i.dl, label %.lr.ph28, label %.split.us.i11.i

.lr.ph:                                           ; preds = %bb.aa, %bb.ac
  %.sroa.04.0.i.i26 = phi i64 [ %i.dj, %bb.ac ], [ %..i.i10.i, %bb.aa ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.i.i26
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !221, !noalias !223, !noundef !6
  %i.do = add i64 %.sroa.04.0.i.i26, %i.cy        ; 2 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.1355.0.copyload
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.1254.0.copyload, i64 %i.do
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !220, !noalias !222, !noundef !6
  %.not21.i.i = icmp eq i8 %i.dn, %i.dr
  br i1 %.not21.i.i, label %bb.ac, label %bb.af

.preheader36.i.i:                                 ; preds = %bb.ad
  %i.ds = icmp ult i64 %i.cw, %i.du
  br i1 %i.ds, label %.lr.ph28, label %.split.us.i11.i

.split.us.i11.i:                                  ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %i.dt = add i64 %i.cy, %.sroa.15.0.copyload     ; 2 uses
  br label %.loopexit42.split.us.i

.lr.ph28:                                         ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i27 = phi i64 [ %i.du, %.preheader36.i.i ], [ %.fr215.i, %.preheader36.i.i.preheader ]
  %i.du = add i64 %.sroa.2.0.i.i27, -1            ; 6 uses
  %i.dv = icmp ult i64 %i.du, %.sroa.15.0.copyload
  br i1 %i.dv, label %bb.ad, label %.split32.us.i.i.invoke

bb.ad:                                            ; preds = %.lr.ph28
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.du
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !221, !noalias !223, !noundef !6
  %i.dy = add i64 %i.du, %i.cy                    ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %.sroa.1355.0.copyload
  call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.1254.0.copyload, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !220, !noalias !222, !noundef !6
  %.not20.i.i = icmp eq i8 %i.dx, %i.eb
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.ae

.split32.us.i.i.invoke:                           ; preds = %.preheader.i19.i, %.lr.ph28
  %i.ec = phi i64 [ %i.du, %.lr.ph28 ], [ %i.ef, %.preheader.i19.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ec, i64 noundef range(i64 0, -9223372036854775808) %.sroa.15.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #31
          to label %.split32.us.i.i.cont unwind label %.loopexit.split-lp

.split32.us.i.i.cont:                             ; preds = %.split32.us.i.i.invoke
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.ed = add i64 %i.cy, %.sroa.1111.sroa.0.0.insert.insert
  br label %bb.ab

bb.af:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.cy, %invariant.op
  %i.ee = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i26
  br label %bb.ab

bb.ag:                                            ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  br i1 %i.cg, label %.lr.ph.i15.i, label %.loopexit

.lr.ph.i15.i:                                     ; preds = %bb.ag
  %.sroa.1111.sroa.0.0.insert.ext22 = zext i8 %.sroa.1111.sroa.0.0 to i64
  %.sroa.1111.sroa.0.0.insert.insert24 = or disjoint i64 %.sroa.1111.sroa.10.0.insert.insert, %.sroa.1111.sroa.0.0.insert.ext22
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.fr215.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload)
  %i.ef = add i64 %.fr215.i, -1                   ; 2 uses
  %.first_iter.i16.i = icmp ult i64 %i.ef, %.sroa.15.0.copyload
  %exitcond.not.i17.i30.not = icmp ult i64 %.fr215.i, %.sroa.15.0.copyload
  %invariant.op96 = sub i64 1, %.fr215.i
  %.not34.i.us.i33 = icmp eq i64 %.fr215.i, 0     ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.aj, %.lr.ph.i15.i
  %i.eg = phi i64 [ %i.ff, %bb.aj ], [ %i.cf, %.lr.ph.i15.i ]
  %i.eh = phi i64 [ %.sink.i18.i, %bb.aj ], [ %.sroa.22.0, %.lr.ph.i15.i ] ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.1254.0.copyload, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !224, !noalias !226, !noundef !6
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el
  %i.en = and i64 %i.em, %.sroa.749.0.copyload
  %.not.us.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.us.i.i, label %bb.ai, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i17.i30.not, label %.lr.ph32, label %.preheader.i19.preheader.i

.preheader35.i.i:                                 ; preds = %.lr.ph32
  %i.eo = add i64 %.sroa.04.0.us.i.i31, 1         ; 2 uses
  %exitcond.not.i17.i = icmp eq i64 %i.eo, %umax.i.i
  br i1 %exitcond.not.i17.i, label %.preheader.i19.preheader.i, label %.lr.ph32

.preheader.i19.preheader.i:                       ; preds = %.preheader35.i.i, %.preheader35.i.i.preheader
  br i1 %.first_iter.i16.i, label %.preheader.i19.us.i.preheader, label %.preheader.i19.i

.preheader.i19.us.i.preheader:                    ; preds = %.preheader.i19.preheader.i
  br i1 %.not34.i.us.i33, label %.split.us.i21.i, label %.lr.ph35

.preheader.i19.us.i:                              ; preds = %.lr.ph35
  %.not34.i.us.i = icmp eq i64 %i.ep, 0
  br i1 %.not34.i.us.i, label %.split.us.i21.i, label %.lr.ph35

.lr.ph35:                                         ; preds = %.preheader.i19.us.i.preheader, %.preheader.i19.us.i
  %.sroa.2.0.us.i.us.i34 = phi i64 [ %i.ep, %.preheader.i19.us.i ], [ %.fr215.i, %.preheader.i19.us.i.preheader ]
  %i.ep = add i64 %.sroa.2.0.us.i.us.i34, -1      ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !225, !noalias !227, !noundef !6
  %i.es = add i64 %i.ep, %i.eh                    ; 2 uses
  %i.et = icmp ult i64 %i.es, %.sroa.1355.0.copyload
  call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.1254.0.copyload, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !224, !noalias !226, !noundef !6
  %.not20.us.i.us.i = icmp eq i8 %i.er, %i.ev
  br i1 %.not20.us.i.us.i, label %.preheader.i19.us.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph35
  %i.ew = add i64 %.sroa.1111.sroa.0.0.insert.insert24, %i.eh
  br label %bb.aj

.lr.ph32:                                         ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i31 = phi i64 [ %i.eo, %.preheader35.i.i ], [ %.fr215.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.us.i.i31
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !225, !noalias !227, !noundef !6
  %i.ez = add i64 %.sroa.04.0.us.i.i31, %i.eh     ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %.sroa.1355.0.copyload
  call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.1254.0.copyload, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !224, !noalias !226, !noundef !6
  %.not21.us.i.i = icmp eq i8 %i.ey, %i.fc
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.ah

.preheader.i19.i:                                 ; preds = %.preheader.i19.preheader.i
  br i1 %.not34.i.us.i33, label %.split.us.i21.i, label %.split32.us.i.i.invoke

bb.ah:                                            ; preds = %.lr.ph32
  %.reass282.i.reass.reass = add i64 %i.eh, %invariant.op96
  %i.fd = add i64 %.reass282.i.reass.reass, %.sroa.04.0.us.i.i31
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.split.us.i.i
  %i.fe = add i64 %i.eh, %.sroa.15.0.copyload
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %.split.us.i
  %.sink.i18.i = phi i64 [ %i.fe, %bb.ai ], [ %i.fd, %bb.ah ], [ %i.ew, %.split.us.i ] ; 2 uses
  %i.ff = add i64 %.sink.i18.i, %i.o              ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %.sroa.1355.0.copyload
  br i1 %i.fg, label %.lr.ph.split.us.i.i, label %.loopexit

.split.us.i21.i:                                  ; preds = %.preheader.i19.us.i.preheader, %.preheader.i19.us.i, %.preheader.i19.i
  %i.fh = add i64 %i.eh, %.sroa.15.0.copyload     ; 2 uses
  br label %.loopexit42.split.us.i

.loopexit81:                                      ; preds = %bb.w, %.loopexit42.split.us.i, %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.split32.us.i.i.invoke, %.split.us161.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit:                                        ; preds = %bb.ag, %.preheader.i, %.split166.us.i, %bb.y, %.noexc25, %bb.t, %bb.ab, %bb.aj, %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff77 = sub nuw nsw i64 %2, %.sroa.04.0    ; 3 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff77)
          to label %.noexc29 unwind label %bb.e

.noexc29:                                         ; preds = %.loopexit
  %i.fj = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !214, !noundef !6 ; 3 uses
  %i.fk = icmp sgt i64 %i.fj, -1
  call void @llvm.assume(i1 %i.fk)
  %.not.i28 = icmp eq i64 %2, %.sroa.04.0
  br i1 %.not.i28, label %bb.b, label %bb.ak

bb.ak:                                            ; preds = %.noexc29
  %i.fl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !214, !nonnull !6, !noundef !6
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull readonly align 1 %i.fi, i64 %gepdiff77, i1 false)
  %.pre.i = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !214
  br label %bb.b

.loopexit42.split.us.i:                           ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit16.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit14.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit12.i.i.us.i, %bb.s, %bb.r, %bb.l, %.split166.us.i, %.loopexit43.i, %.split.us.i11.i, %.split.us.i21.i
  %.sroa.557.0 = phi i64 [ %i.eh, %.split.us.i21.i ], [ %.sroa.1355.0.copyload, %.split166.us.i ], [ %i.cy, %.split.us.i11.i ], [ %i.ct, %.loopexit43.i ], [ %.sroa.1355.0.copyload, %bb.r ], [ %.fr215.i, %bb.l ], [ %i.bm, %bb.s ], [ %i.bm, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit12.i.i.us.i ], [ %i.bm, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit14.i.i.us.i ], [ %i.bm, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit16.i.i.us.i ] ; 2 uses
  %.sroa.1058.0 = phi i64 [ %i.fh, %.split.us.i21.i ], [ %.sroa.1355.0.copyload, %.split166.us.i ], [ %i.dt, %.split.us.i11.i ], [ %i.cu, %.loopexit43.i ], [ %.sroa.1355.0.copyload, %bb.r ], [ %.fr215.i, %bb.l ], [ %i.bm, %bb.s ], [ %i.bm, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit12.i.i.us.i ], [ %i.bm, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit14.i.i.us.i ], [ %i.bm, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit16.i.i.us.i ]
  %.sroa.1111.sroa.0.2 = phi i8 [ %.sroa.1111.sroa.0.0, %.split.us.i21.i ], [ 0, %.split166.us.i ], [ %.sroa.1111.sroa.0.0, %.split.us.i11.i ], [ %.sroa.1111.sroa.0.0, %.loopexit43.i ], [ 0, %bb.r ], [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit12.i.i.us.i ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit14.i.i.us.i ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit16.i.i.us.i ]
  %.sroa.3016.2 = phi i64 [ -1, %.split.us.i21.i ], [ %.sroa.3016.0, %.split166.us.i ], [ 0, %.split.us.i11.i ], [ %.sroa.3016.0, %.loopexit43.i ], [ %.sroa.3016.0, %bb.r ], [ %.sroa.3016.0, %bb.l ], [ %.sroa.3016.0, %bb.s ], [ %.sroa.3016.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit12.i.i.us.i ], [ %.sroa.3016.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit14.i.i.us.i ], [ %.sroa.3016.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit16.i.i.us.i ]
  %.sroa.22.1 = phi i64 [ %i.fh, %.split.us.i21.i ], [ %.sroa.22.0, %.split166.us.i ], [ %i.dt, %.split.us.i11.i ], [ %.sroa.22.0, %.loopexit43.i ], [ %.sroa.22.0, %bb.r ], [ %.sroa.22.0, %bb.l ], [ %.sroa.22.0, %bb.s ], [ %.sroa.22.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit12.i.i.us.i ], [ %.sroa.22.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit14.i.i.us.i ], [ %.sroa.22.0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit16.i.i.us.i ]
  %.sroa.48.2 = phi i64 [ %.fr215.i, %.split.us.i21.i ], [ %.sroa.1355.0.copyload, %.split166.us.i ], [ %.fr215.i, %.split.us.i11.i ], [ %i.cu, %.loopexit43.i ], [ %.sroa.1355.0.copyload, %bb.r ], [ %.fr215.i, %bb.l ], [ %i.bm, %bb.s ], [ %i.bm, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit12.i.i.us.i ], [ %i.bm, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit14.i.i.us.i ], [ %i.bm, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr.exit16.i.i.us.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1254.0.copyload) ]
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff = sub nuw nsw i64 %.sroa.557.0, %.sroa.04.0 ; 3 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff)
          to label %.noexc32 unwind label %.loopexit81

.noexc32:                                         ; preds = %.loopexit42.split.us.i
  %i.fo = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !228, !noundef !6 ; 3 uses
  %i.fp = icmp sgt i64 %i.fo, -1
  call void @llvm.assume(i1 %i.fp)
  %.not.i30 = icmp eq i64 %.sroa.557.0, %.sroa.04.0
  br i1 %.not.i30, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc32
  %i.fq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !228, !nonnull !6, !noundef !6
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr nonnull readonly align 1 %i.fn, i64 %gepdiff, i1 false)
  %.pre.i31 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !228
  br label %bb.am

bb.am:                                            ; preds = %.noexc32, %bb.al
  %i.fs = phi i64 [ %.pre.i31, %bb.al ], [ %i.fo, %.noexc32 ]
  %i.ft = add i64 %i.fs, %gepdiff
  store i64 %i.ft, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !228
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %4)
          to label %.noexc36 unwind label %.loopexit81

.noexc36:                                         ; preds = %bb.am
  %i.fu = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !229, !noundef !6 ; 3 uses
  %i.fv = icmp sgt i64 %i.fu, -1
  call void @llvm.assume(i1 %i.fv)
  br i1 %.not.i34, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc36
  %i.fw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !229, !nonnull !6, !noundef !6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fx, ptr nonnull readonly align 1 %3, i64 %4, i1 false)
  %.pre.i35 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !229
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.noexc36
  %i.fy = phi i64 [ %.pre.i35, %bb.an ], [ %i.fu, %.noexc36 ]
  %i.fz = add i64 %i.fy, %4
  store i64 %i.fz, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !229
  br label %bb.f

bb.ap:                                            ; preds = %bb.d
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.aq:                                            ; preds = %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs_NtCskIStwd7HrDO_12yara_x_proto4jsonINtB5_10SerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutE19print_integer_valuexECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = load i64, ptr %2, align 8, !range !13, !noundef !6
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringxNtB5_8ToString9to_stringCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, i64 %1)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringxNtB5_8ToString9to_stringCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, i64 %1)
          to label %bb.o unwind label %bb.d

.body:                                            ; preds = %bb.r, %bb.h, %bb.d, %bb.p, %bb.f
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.u, %bb.p ], [ %i.j, %bb.h ], [ %i.g, %bb.d ], [ %i.v, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskIStwd7HrDO_12yara_x_proto11FieldFormatECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #28
          to label %bb.t unwind label %bb.n

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i, %bb.b, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.h = invoke noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @0, ptr noundef nonnull %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #28
          to label %.body unwind label %bb.n

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit15, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit
  %.sroa.0.0 = phi ptr [ %i.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit15 ], [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.l = load i64, ptr %2, align 8, !range !13, !alias.scope !242, !noundef !6 ; 2 uses
  %i.m = icmp samesign ugt i64 %i.l, 1
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskIStwd7HrDO_12yara_x_proto11FieldFormatECskIqAKC4t9Ft_2yr.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskIStwd7HrDO_12yara_x_proto11FieldFormatECskIqAKC4t9Ft_2yr.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !248, !nonnull !6, !noundef !6
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !248
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskIStwd7HrDO_12yara_x_proto11FieldFormatECskIqAKC4t9Ft_2yr.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskIStwd7HrDO_12yara_x_proto11FieldFormatECskIqAKC4t9Ft_2yr.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskIStwd7HrDO_12yara_x_proto11FieldFormatECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  ret ptr %.sroa.0.0

bb.n:                                             ; preds = %bb.p, %bb.f, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
