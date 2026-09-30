Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.1?download=true
inline.NumInlined: 150
inline.NumDeleted: 101
begin_hunk_0_@_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECs8ZPNfZ0ciAA_10serde_json:bb.a
.lr.ph.i:                                         ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.01.0.i.us.i.peel = phi i64 [ 2, %bb.n ], [ %..i.us.i.peel, %bb.o ], [ 1, %bb.m ]
  %i.bl = add i64 %.sroa.01.0.i.us.i.peel, %.fr214.i ; 23 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %.not.i.i.us.i = icmp ult i64 %i.bl, %.sroa.1390.0.copyload
  br i1 %.not.i.i.us.i, label %bb.q, label %.split.i.i.us.i

.split.i.i.us.i:                                  ; preds = %bb.p
  %i.bn = icmp eq i64 %i.bl, %.sroa.1390.0.copyload
  br i1 %i.bn, label %bb.r, label %.split.us160.i

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.1289.0.copyload, i64 %i.bl
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !42, !noalias !43, !noundef !5
  %i.bq = icmp sgt i8 %i.bp, -65
  br i1 %i.bq, label %bb.r, label %.split.us160.i

bb.r:                                             ; preds = %bb.q, %.split.i.i.us.i, %.lr.ph.i
  %i.br = icmp samesign eq i64 %i.bl, %.sroa.1390.0.copyload
  br i1 %i.br, label %.loopexit41.split.us.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.1289.0.copyload, i64 %i.bl
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !44, !noundef !5 ; 3 uses
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %.loopexit41.split.us.i, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit12.i.i.us.i

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit12.i.i.us.i: ; preds = %bb.s
  %i.bv = add nuw nsw i64 %i.bl, 1
  %i.bw = icmp samesign ne i64 %i.bv, %.sroa.1390.0.copyload
  call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp samesign ugt i8 %i.bt, -33
  br i1 %i.bx, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit14.i.i.us.i, label %.loopexit41.split.us.i

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit12.i.i.us.i
  %i.by = add nuw nsw i64 %i.bl, 2
  %i.bz = icmp samesign ne i64 %i.by, %.sroa.1390.0.copyload
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp samesign ugt i8 %i.bt, -17
  br i1 %i.ca, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit16.i.i.us.i, label %.loopexit41.split.us.i

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit14.i.i.us.i
  %i.cb = add nuw nsw i64 %i.bl, 3
  %i.cc = icmp samesign ne i64 %i.cb, %.sroa.1390.0.copyload
  call void @llvm.assume(i1 %i.cc)
  br label %.loopexit41.split.us.i

.split.us160.i:                                   ; preds = %bb.h, %.split.i.i.us.i.peel, %bb.q, %.split.i.i.us.i
  %.sroa.442.1.lcssa = phi i64 [ %i.bl, %bb.q ], [ %i.bl, %.split.i.i.us.i ], [ %.fr214.i, %.split.i.i.us.i.peel ], [ %.fr214.i, %bb.h ]
  invoke void @_RNvNtCs8Chj7Szqq0n_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.1289.0.copyload, i64 noundef %.sroa.1390.0.copyload, i64 noundef %.sroa.442.1.lcssa, i64 noundef %.sroa.1390.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.us160.i
  unreachable

.split165.us.i:                                   ; preds = %bb.i
  br i1 %i.p, label %.loopexit41.split.us.i, label %.loopexit

default.unreachable260.i:                         ; preds = %bb.f
  unreachable

bb.t:                                             ; preds = %bb.f
  %.not.i = icmp ult i64 %.fr214.i, %.sroa.1390.0.copyload
  br i1 %.not.i, label %bb.v, label %.loopexit

bb.u:                                             ; preds = %bb.f
  %i.cd = icmp eq i64 %.sroa.3050.0, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1289.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.ce = add i64 %.sroa.22.0, %i.n               ; 3 uses
  %i.cf = icmp ult i64 %i.ce, %.sroa.1390.0.copyload ; 2 uses
  br i1 %i.cd, label %bb.ag, label %bb.y

bb.v:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1289.0.copyload) ]
  %i.cg = sub nuw i64 %.sroa.1390.0.copyload, %.fr214.i ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.1289.0.copyload, i64 %.fr214.i ; 2 uses
  %i.ci = icmp samesign ult i64 %i.cg, 16
  br i1 %i.ci, label %.lr.ph.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = invoke { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef %.sroa.1145.sroa.0.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef range(i64 0, -9223372036854775808) %i.cg)
          to label %.noexc23 unwind label %.loopexit115 ; 2 uses

.noexc23:                                         ; preds = %bb.w
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = extractvalue { i64, i64 } %i.cj, 1
  %i.cm = trunc nuw i64 %i.ck to i1
  br i1 %i.cm, label %.loopexit42.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.v, %bb.x
  %.sroa.04.011.i.i = phi i64 [ %i.cq, %bb.x ], [ 0, %bb.v ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.04.011.i.i
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !45, !noalias !46, !noundef !5
  %i.cp = icmp eq i8 %i.co, %.sroa.1145.sroa.0.0
  br i1 %i.cp, label %.loopexit42.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.cq = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i7.i = icmp eq i64 %i.cq, %i.cg
  br i1 %exitcond.not.i7.i, label %.loopexit, label %.lr.ph.i.i

.loopexit42.i:                                    ; preds = %.lr.ph.i.i, %.noexc23
  %.sroa.5.0.i.i = phi i64 [ %i.cl, %.noexc23 ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cr = icmp ult i64 %.sroa.5.0.i.i, %i.cg
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add i64 %.sroa.5.0.i.i, %.fr214.i       ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 2 uses
  br label %.loopexit41.split.us.i

bb.y:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  br i1 %i.cf, label %.lr.ph.i8.i, label %.loopexit

.lr.ph.i8.i:                                      ; preds = %bb.y
  %.sroa.1145.sroa.0.0.insert.ext = zext i8 %.sroa.1145.sroa.0.0 to i64
  %.sroa.1145.sroa.0.0.insert.insert = or disjoint i64 %.sroa.1145.sroa.10.0.insert.insert, %.sroa.1145.sroa.0.0.insert.ext ; 2 uses
  %i.cu = sub i64 %.sroa.15.0.copyload, %.sroa.1145.sroa.0.0.insert.insert
  %invariant.op = sub i64 1, %.fr214.i
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.ab, %.lr.ph.i8.i
  %i.cv = phi i64 [ %.sink70.i.i, %bb.ab ], [ %.sroa.3050.0, %.lr.ph.i8.i ] ; 3 uses
  %i.cw = phi i64 [ %i.dh, %bb.ab ], [ %i.ce, %.lr.ph.i8.i ]
  %i.cx = phi i64 [ %.sink71.i.i, %bb.ab ], [ %.sroa.22.0, %.lr.ph.i8.i ] ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.1289.0.copyload, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !47, !noalias !49, !noundef !5
  %i.da = and i8 %i.cz, 63
  %i.db = zext nneg i8 %i.da to i64
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %.sroa.784.0.copyload
  %.not.i9.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i9.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.split.i.i
  %i.de = add i64 %i.cx, %.sroa.15.0.copyload
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.i.i
  %i.df = call i64 @llvm.umax.i64(i64 %.fr214.i, i64 %i.cv) ; 2 uses
  %i.dg = icmp ult i64 %i.df, %.sroa.15.0.copyload
  br i1 %i.dg, label %.lr.ph, label %.preheader36.i.i.preheader

bb.ab:                                            ; preds = %bb.af, %bb.ae, %bb.z
  %.sink71.i.i = phi i64 [ %i.ee, %bb.af ], [ %i.ed, %bb.ae ], [ %i.de, %bb.z ] ; 2 uses
  %.sink70.i.i = phi i64 [ 0, %bb.af ], [ %i.cu, %bb.ae ], [ 0, %bb.z ]
  %i.dh = add i64 %.sink71.i.i, %i.n              ; 2 uses
  %i.di = icmp ult i64 %i.dh, %.sroa.1390.0.copyload
  br i1 %i.di, label %.lr.ph.split.i.i, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph
  %i.dj = add nuw nsw i64 %.sroa.04.0.i.i26, 1    ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %.sroa.15.0.copyload
  br i1 %i.dk, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.ac, %bb.aa
  %i.dl = icmp ult i64 %i.cv, %.fr214.i
  br i1 %i.dl, label %.lr.ph28, label %.split.us.i10.i

.lr.ph:                                           ; preds = %bb.aa, %bb.ac
  %.sroa.04.0.i.i26 = phi i64 [ %i.dj, %bb.ac ], [ %i.df, %bb.aa ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.i.i26
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !48, !noalias !50, !noundef !5
  %i.do = add i64 %.sroa.04.0.i.i26, %i.cx        ; 2 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.1390.0.copyload
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.1289.0.copyload, i64 %i.do
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !47, !noalias !49, !noundef !5
  %.not21.i.i = icmp eq i8 %i.dn, %i.dr
  br i1 %.not21.i.i, label %bb.ac, label %bb.af

.preheader36.i.i:                                 ; preds = %bb.ad
  %i.ds = icmp ult i64 %i.cv, %i.du
  br i1 %i.ds, label %.lr.ph28, label %.split.us.i10.i

.split.us.i10.i:                                  ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %i.dt = add i64 %i.cx, %.sroa.15.0.copyload     ; 2 uses
  br label %.loopexit41.split.us.i

.lr.ph28:                                         ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i27 = phi i64 [ %i.du, %.preheader36.i.i ], [ %.fr214.i, %.preheader36.i.i.preheader ]
  %i.du = add i64 %.sroa.2.0.i.i27, -1            ; 6 uses
  %i.dv = icmp ult i64 %i.du, %.sroa.15.0.copyload
  br i1 %i.dv, label %bb.ad, label %.split32.us.i.i.invoke

bb.ad:                                            ; preds = %.lr.ph28
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.du
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !48, !noalias !50, !noundef !5
  %i.dy = add i64 %i.du, %i.cx                    ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %.sroa.1390.0.copyload
  call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.1289.0.copyload, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !47, !noalias !49, !noundef !5
  %.not20.i.i = icmp eq i8 %i.dx, %i.eb
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.ae

.split32.us.i.i.invoke:                           ; preds = %.preheader.i18.i, %.lr.ph28
  %i.ec = phi i64 [ %i.du, %.lr.ph28 ], [ %i.ef, %.preheader.i18.i ]
  invoke void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.ec, i64 noundef range(i64 0, -9223372036854775808) %.sroa.15.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18
          to label %.split32.us.i.i.cont unwind label %.loopexit.split-lp

.split32.us.i.i.cont:                             ; preds = %.split32.us.i.i.invoke
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.ed = add i64 %i.cx, %.sroa.1145.sroa.0.0.insert.insert
  br label %bb.ab

bb.af:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.cx, %invariant.op
  %i.ee = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i26
  br label %bb.ab

bb.ag:                                            ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  br i1 %i.cf, label %.lr.ph.i14.i, label %.loopexit

.lr.ph.i14.i:                                     ; preds = %bb.ag
  %.sroa.1145.sroa.0.0.insert.ext56 = zext i8 %.sroa.1145.sroa.0.0 to i64
  %.sroa.1145.sroa.0.0.insert.insert58 = or disjoint i64 %.sroa.1145.sroa.10.0.insert.insert, %.sroa.1145.sroa.0.0.insert.ext56
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.fr214.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload)
  %i.ef = add i64 %.fr214.i, -1                   ; 2 uses
  %.first_iter.i15.i = icmp ult i64 %i.ef, %.sroa.15.0.copyload
  %exitcond.not.i16.i30.not = icmp ult i64 %.fr214.i, %.sroa.15.0.copyload
  %invariant.op96 = sub i64 1, %.fr214.i
  %.not34.i.us.i33 = icmp eq i64 %.fr214.i, 0     ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.aj, %.lr.ph.i14.i
  %i.eg = phi i64 [ %i.ff, %bb.aj ], [ %i.ce, %.lr.ph.i14.i ]
  %i.eh = phi i64 [ %.sink.i17.i, %bb.aj ], [ %.sroa.22.0, %.lr.ph.i14.i ] ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.1289.0.copyload, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !51, !noalias !53, !noundef !5
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el
  %i.en = and i64 %i.em, %.sroa.784.0.copyload
  %.not.us.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.us.i.i, label %bb.ai, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i16.i30.not, label %.lr.ph32, label %.preheader.i18.preheader.i

.preheader35.i.i:                                 ; preds = %.lr.ph32
  %i.eo = add i64 %.sroa.04.0.us.i.i31, 1         ; 2 uses
  %exitcond.not.i16.i = icmp eq i64 %i.eo, %umax.i.i
  br i1 %exitcond.not.i16.i, label %.preheader.i18.preheader.i, label %.lr.ph32

.preheader.i18.preheader.i:                       ; preds = %.preheader35.i.i, %.preheader35.i.i.preheader
  br i1 %.first_iter.i15.i, label %.preheader.i18.us.i.preheader, label %.preheader.i18.i

.preheader.i18.us.i.preheader:                    ; preds = %.preheader.i18.preheader.i
  br i1 %.not34.i.us.i33, label %.split.us.i20.i, label %.lr.ph35

.preheader.i18.us.i:                              ; preds = %.lr.ph35
  %.not34.i.us.i = icmp eq i64 %i.ep, 0
  br i1 %.not34.i.us.i, label %.split.us.i20.i, label %.lr.ph35

.lr.ph35:                                         ; preds = %.preheader.i18.us.i.preheader, %.preheader.i18.us.i
  %.sroa.2.0.us.i.us.i34 = phi i64 [ %i.ep, %.preheader.i18.us.i ], [ %.fr214.i, %.preheader.i18.us.i.preheader ]
  %i.ep = add i64 %.sroa.2.0.us.i.us.i34, -1      ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !52, !noalias !54, !noundef !5
  %i.es = add i64 %i.ep, %i.eh                    ; 2 uses
  %i.et = icmp ult i64 %i.es, %.sroa.1390.0.copyload
  call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.1289.0.copyload, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !51, !noalias !53, !noundef !5
  %.not20.us.i.us.i = icmp eq i8 %i.er, %i.ev
  br i1 %.not20.us.i.us.i, label %.preheader.i18.us.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph35
  %i.ew = add i64 %.sroa.1145.sroa.0.0.insert.insert58, %i.eh
  br label %bb.aj

.lr.ph32:                                         ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i31 = phi i64 [ %i.eo, %.preheader35.i.i ], [ %.fr214.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.04.0.us.i.i31
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !52, !noalias !54, !noundef !5
  %i.ez = add i64 %.sroa.04.0.us.i.i31, %i.eh     ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %.sroa.1390.0.copyload
  call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.1289.0.copyload, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !51, !noalias !53, !noundef !5
  %.not21.us.i.i = icmp eq i8 %i.ey, %i.fc
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.ah

.preheader.i18.i:                                 ; preds = %.preheader.i18.preheader.i
  br i1 %.not34.i.us.i33, label %.split.us.i20.i, label %.split32.us.i.i.invoke

bb.ah:                                            ; preds = %.lr.ph32
  %.reass281.i.reass.reass = add i64 %i.eh, %invariant.op96
  %i.fd = add i64 %.reass281.i.reass.reass, %.sroa.04.0.us.i.i31
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.split.us.i.i
  %i.fe = add i64 %i.eh, %.sroa.15.0.copyload
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %.split.us.i
  %.sink.i17.i = phi i64 [ %i.fe, %bb.ai ], [ %i.fd, %bb.ah ], [ %i.ew, %.split.us.i ] ; 2 uses
  %i.ff = add i64 %.sink.i17.i, %i.n              ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %.sroa.1390.0.copyload
  br i1 %i.fg, label %.lr.ph.split.us.i.i, label %.loopexit

.split.us.i20.i:                                  ; preds = %.preheader.i18.us.i.preheader, %.preheader.i18.us.i, %.preheader.i18.i
  %i.fh = add i64 %i.eh, %.sroa.15.0.copyload     ; 2 uses
  br label %.loopexit41.split.us.i

.loopexit115:                                     ; preds = %bb.w, %.loopexit41.split.us.i, %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.split32.us.i.i.invoke, %.split.us160.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit:                                        ; preds = %bb.ag, %.preheader.i, %.split165.us.i, %bb.y, %.noexc23, %bb.t, %bb.ab, %bb.aj, %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff111 = sub nuw nsw i64 %2, %.sroa.04.0   ; 3 uses
  invoke void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff111)
          to label %.noexc27 unwind label %bb.e

.noexc27:                                         ; preds = %.loopexit
  %i.fj = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !41, !noundef !5 ; 3 uses
  %i.fk = icmp sgt i64 %i.fj, -1
  call void @llvm.assume(i1 %i.fk)
  %.not.i26 = icmp eq i64 %2, %.sroa.04.0
  br i1 %.not.i26, label %bb.b, label %bb.ak

bb.ak:                                            ; preds = %.noexc27
  %i.fl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !41, !nonnull !5, !noundef !5
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull readonly align 1 %i.fi, i64 %gepdiff111, i1 false)
  %.pre.i = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !41
  br label %bb.b

.loopexit41.split.us.i:                           ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit16.i.i.us.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit14.i.i.us.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit12.i.i.us.i, %bb.s, %bb.r, %bb.l, %.split165.us.i, %.loopexit42.i, %.split.us.i10.i, %.split.us.i20.i
  %.sroa.592.0 = phi i64 [ %i.eh, %.split.us.i20.i ], [ %.sroa.1390.0.copyload, %.split165.us.i ], [ %i.cx, %.split.us.i10.i ], [ %i.cs, %.loopexit42.i ], [ %.sroa.1390.0.copyload, %bb.r ], [ %.fr214.i, %bb.l ], [ %i.bl, %bb.s ], [ %i.bl, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit12.i.i.us.i ], [ %i.bl, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit14.i.i.us.i ], [ %i.bl, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit16.i.i.us.i ] ; 2 uses
  %.sroa.1093.0 = phi i64 [ %i.fh, %.split.us.i20.i ], [ %.sroa.1390.0.copyload, %.split165.us.i ], [ %i.dt, %.split.us.i10.i ], [ %i.ct, %.loopexit42.i ], [ %.sroa.1390.0.copyload, %bb.r ], [ %.fr214.i, %bb.l ], [ %i.bl, %bb.s ], [ %i.bl, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit12.i.i.us.i ], [ %i.bl, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit14.i.i.us.i ], [ %i.bl, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit16.i.i.us.i ]
  %.sroa.1145.sroa.0.2 = phi i8 [ %.sroa.1145.sroa.0.0, %.split.us.i20.i ], [ 0, %.split165.us.i ], [ %.sroa.1145.sroa.0.0, %.split.us.i10.i ], [ %.sroa.1145.sroa.0.0, %.loopexit42.i ], [ 0, %bb.r ], [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit12.i.i.us.i ], [ 0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit14.i.i.us.i ], [ 0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit16.i.i.us.i ]
  %.sroa.3050.2 = phi i64 [ -1, %.split.us.i20.i ], [ %.sroa.3050.0, %.split165.us.i ], [ 0, %.split.us.i10.i ], [ %.sroa.3050.0, %.loopexit42.i ], [ %.sroa.3050.0, %bb.r ], [ %.sroa.3050.0, %bb.l ], [ %.sroa.3050.0, %bb.s ], [ %.sroa.3050.0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit12.i.i.us.i ], [ %.sroa.3050.0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit14.i.i.us.i ], [ %.sroa.3050.0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit16.i.i.us.i ]
  %.sroa.22.1 = phi i64 [ %i.fh, %.split.us.i20.i ], [ %.sroa.22.0, %.split165.us.i ], [ %i.dt, %.split.us.i10.i ], [ %.sroa.22.0, %.loopexit42.i ], [ %.sroa.22.0, %bb.r ], [ %.sroa.22.0, %bb.l ], [ %.sroa.22.0, %bb.s ], [ %.sroa.22.0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit12.i.i.us.i ], [ %.sroa.22.0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit14.i.i.us.i ], [ %.sroa.22.0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit16.i.i.us.i ]
  %.sroa.442.2 = phi i64 [ %.fr214.i, %.split.us.i20.i ], [ %.sroa.1390.0.copyload, %.split165.us.i ], [ %.fr214.i, %.split.us.i10.i ], [ %i.ct, %.loopexit42.i ], [ %.sroa.1390.0.copyload, %bb.r ], [ %.fr214.i, %bb.l ], [ %i.bl, %bb.s ], [ %i.bl, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit12.i.i.us.i ], [ %i.bl, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit14.i.i.us.i ], [ %i.bl, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit16.i.i.us.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1289.0.copyload) ]
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff = sub nuw nsw i64 %.sroa.592.0, %.sroa.04.0 ; 3 uses
  invoke void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff)
          to label %.noexc30 unwind label %.loopexit115

.noexc30:                                         ; preds = %.loopexit41.split.us.i
  %i.fo = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !55, !noundef !5 ; 3 uses
  %i.fp = icmp sgt i64 %i.fo, -1
  call void @llvm.assume(i1 %i.fp)
  %.not.i28 = icmp eq i64 %.sroa.592.0, %.sroa.04.0
  br i1 %.not.i28, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc30
  %i.fq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !55, !nonnull !5, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr nonnull readonly align 1 %i.fn, i64 %gepdiff, i1 false)
  %.pre.i29 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !55
  br label %bb.am

bb.am:                                            ; preds = %.noexc30, %bb.al
  %i.fs = phi i64 [ %.pre.i29, %bb.al ], [ %i.fo, %.noexc30 ]
  %i.ft = add i64 %i.fs, %gepdiff
  store i64 %i.ft, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !55
  invoke void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.an unwind label %.loopexit115

bb.an:                                            ; preds = %bb.am
  %i.fu = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !56, !noundef !5 ; 2 uses
  %i.fv = icmp sgt i64 %i.fu, -1
  call void @llvm.assume(i1 %i.fv)
  %i.fw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !56, !nonnull !5, !noundef !5
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fu
  %i.fy = load i8, ptr %4, align 1
  store i8 %i.fy, ptr %i.fx, align 1
  %.pre.i33 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !56
  %i.fz = add i64 %.pre.i33, 1
  store i64 %i.fz, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !56
  br label %bb.f

bb.ao:                                            ; preds = %bb.d
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ap:                                            ; preds = %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMsm_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5Value12invalid_typeNtNtBa_5error5ErrorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsm_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB7_5Value10unexpected(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.b = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr captures(address) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.b = load i64, ptr %.0.val, align 8, !range !65, !alias.scope !66, !noundef !5
  switch i64 %i.b, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEEB1e_.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !66, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEEB1e_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !66, !nonnull !5, !noundef !5
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i, i64 noundef 1) #20, !noalias !66
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEEB1e_.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !66, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  %i.g = ptrtoint ptr %.val.i.i.i to i64          ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i
    i64 1, label %bb.f
  ], !prof !8

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !67, !noalias !66
  store i8 3, ptr %i.a, align 8, !alias.scope !67, !noalias !66
  invoke void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i unwind label %bb.g

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEEB1e_.exit

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #20
  resume { ptr, i32 } %i.n

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEEB1e_.exit: ; preds = %bb.a, %bb.b, %bb.c, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #20
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !9, !noundef !5
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
