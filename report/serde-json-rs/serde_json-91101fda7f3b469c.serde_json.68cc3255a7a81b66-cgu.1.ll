Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.1?download=true
inline.NumInlined: 150
inline.NumDeleted: 101
begin_hunk_0_@_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECs8ZPNfZ0ciAA_10serde_json:bb.a
  call void @llvm.assume(i1 %i.bh)
  br i1 %i.p, label %.loopexit41.split.us.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 128
  br i1 %i.bi, label %.lr.ph.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 2048
  br i1 %i.bj, label %.lr.ph.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 65536
  %..i.us.i.peel = select i1 %i.bk, i64 3, i64 4
  br label %.lr.ph.i

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
end_hunk_0
begin_hunk_1_@_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_:bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVechEECs8ZPNfZ0ciAA_10serde_json.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVechEECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8ZPNfZ0ciAA_10serde_json.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8ZPNfZ0ciAA_10serde_json.exit
    i64 1, label %bb.c
  ], !prof !8

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8ZPNfZ0ciAA_10serde_json.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !70
  store i8 3, ptr %i.a, align 8, !alias.scope !70
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8ZPNfZ0ciAA_10serde_json.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs2_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer16deserialize_unitNtNtBW_5impls11UnitVisitorEBa_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load i8, ptr %0, align 8, !range !9, !noundef !5
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = invoke fastcc noundef nonnull align 8 ptr @_RINvMsm_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5Value12invalid_typeNtNtBa_5error5ErrorEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #17
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsc_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deRNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer16deserialize_unitNtNtBX_5impls11UnitVisitorEBa_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load i8, ptr %0, align 8, !range !9, !noundef !5
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc noundef nonnull align 8 ptr @_RINvMsm_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5Value12invalid_typeNtNtBa_5error5ErrorEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB5_5Value11pointer_mut(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 14 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 47, ptr %i.d, align 4
  %i.g = call noundef zeroext i1 @_RNvMNtCs8Chj7Szqq0n_4core5sliceSh11starts_withCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.g, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.i, %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val.i.i.i.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !98, !noalias !99, !nonnull !5 ; 3 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !98, !noalias !99 ; 2 uses
  %i.m = load i64, ptr %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !98, !noalias !99 ; 6 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.m, %.val1.i.i.i.i
  %i.n = load i8, ptr %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !98, !noalias !99 ; 2 uses
  %i.o = zext nneg i8 %i.n to i64                 ; 4 uses
  %i.p = icmp ult i8 %i.n, 5
  %i.q = getelementptr i8, ptr %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !range !11, !alias.scope !98, !noalias !99
  %i.t = trunc nuw i8 %i.s to i1
  %.pre2.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !98, !noalias !99 ; 2 uses
  %.pre.i = load i8, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !range !11, !alias.scope !100, !noalias !101
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i, %bb.d
  %i.u = phi i8 [ %.pre.i, %bb.d ], [ %i.at, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i ]
  %.sroa.01.0.i.i = phi ptr [ %0, %bb.d ], [ %.sroa.0.1.i.i10.i.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %.promoted.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !105, !noalias !106 ; 2 uses
  %i.w = icmp ult i64 %i.m, %.promoted.i.i.i.i.i
  %or.cond27.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.w
  br i1 %or.cond27.i.i.i.i.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %bb.f
  call void @llvm.assume(i1 %i.p)
  %.pre.i.i.i.i.i = load i8, ptr %i.r, align 1, !alias.scope !105, !noalias !106 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.i, %.lr.ph.split.preheader.i.i.i.i.i
  %i.x = phi i64 [ %i.al, %bb.i ], [ %.promoted.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  %i.y = sub nuw i64 %i.m, %i.x                   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.x ; 2 uses
  %i.aa = icmp samesign ult i64 %i.y, 16
  br i1 %i.aa, label %.preheader.i.i.i.i.i.i, label %bb.g

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.m, %i.x
  br i1 %.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ab = call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.y), !noalias !107 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = extractvalue { i64, i64 } %i.ab, 1
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %.loopexit.i.i.i.i.i, label %.loopexit15.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.h ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !108, !noalias !107, !noundef !5
  %i.ah = icmp eq i8 %i.ag, %.pre.i.i.i.i.i
  br i1 %i.ah, label %.loopexit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ai = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.y
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.aj = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.y
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add i64 %i.x, 1
  %i.al = add i64 %i.ak, %.sroa.5.0.i.i.i.i.i.i   ; 7 uses
  store i64 %i.al, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !105, !noalias !106
  %.not11.i.i.i.i.i = icmp ult i64 %i.al, %i.o
  %.not12.i.i.i.i.i = icmp ugt i64 %i.al, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.i, label %bb.j

.loopexit15.i.i.i.i.i:                            ; preds = %bb.g, %.preheader.i.i.i.i.i.i, %bb.h
  store i64 %i.m, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !105, !noalias !106
  br label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i

bb.i:                                             ; preds = %bb.j, %.loopexit.i.i.i.i.i
  %i.am = icmp ult i64 %i.m, %i.al
  br i1 %i.am, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.j:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.an = sub nuw i64 %i.al, %i.o                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.an
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.o), !noalias !109
  %i.ap = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ap, label %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.i

_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.j
  %i.aq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !100, !noalias !101, !noundef !5 ; 2 uses
  %i.ar = sub nuw i64 %i.an, %i.aq
  store i64 %i.al, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !100, !noalias !101
  br label %select.unfold.i.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i: ; preds = %bb.i, %.loopexit15.i.i.i.i.i, %bb.f
  store i8 1, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !alias.scope !110, !noalias !101
  %.pre.i2.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !110, !noalias !101 ; 3 uses
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.pre.i2.i.i.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.t, i1 true, i1 %.not.i3.i.i.i.i
  %i.as = sub nuw i64 %.pre2.i.i.i.i.i, %.pre.i2.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  %i.at = phi i8 [ 0, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ 1, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.sroa.4.1.i.i.i.i = phi i64 [ %i.ar, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %i.as, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.pn.i.i = phi i64 [ %i.aq, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre.i2.i.i.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.pn.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  call fastcc void @_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11) #21
  %i.au = load ptr, ptr %i.h, align 8, !noalias !113, !nonnull !5, !noundef !5
  %i.av = load i64, ptr %i.i, align 8, !noalias !113, !noundef !5
  invoke fastcc void @_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #17
          to label %common.resume.i.i.i unwind label %bb.o, !noalias !114

bb.l:                                             ; preds = %select.unfold.i.i
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i unwind label %bb.m, !noalias !114

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i unwind label %bb.n, !noalias !114

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !114
  unreachable

common.resume.i.i.i:                              ; preds = %bb.v, %bb.r, %bb.m, %bb.k
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ax, %bb.m ], [ %i.bq, %bb.v ], [ %i.bg, %bb.r ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !114
  unreachable

_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i: ; preds = %bb.l
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  store ptr %.sroa.01.0.i.i, ptr %i.c, align 8, !noalias !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !112
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.ba = load i8, ptr %.sroa.01.0.i.i, align 8, !range !9, !alias.scope !117, !noalias !118, !noundef !5
  switch i8 %i.ba, label %bb.u [
    i8 4, label %bb.p
    i8 5, label %bb.q
  ]

bb.p:                                             ; preds = %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i
  %i.bb = load ptr, ptr %i.k, align 8, !alias.scope !116, !noalias !119, !nonnull !5, !noundef !5
  %i.bc = load i64, ptr %i.l, align 8, !alias.scope !116, !noalias !119, !noundef !5
  %i.bd = invoke fastcc { i64, i64 } @_RNvNtCs8ZPNfZ0ciAA_10serde_json5value11parse_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bc)
          to label %bb.s unwind label %bb.r, !noalias !120 ; 2 uses

bb.q:                                             ; preds = %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.bf = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE7get_mutB18_EB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.u unwind label %bb.r, !noalias !97

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #17
          to label %common.resume.i.i.i unwind label %bb.x, !noalias !97

bb.s:                                             ; preds = %bb.p
  %i.bh = extractvalue { i64, i64 } %i.bd, 0
  %i.bi = extractvalue { i64, i64 } %i.bd, 1      ; 2 uses
  %i.bj = trunc nuw i64 %i.bh to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !117, !noalias !118
  %i.bm = icmp ult i64 %i.bi, %i.bl
  %or.cond.i.i.i.i = select i1 %i.bj, i1 %i.bm, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !117, !noalias !118, !nonnull !5, !noundef !5
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bi
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i
  %.sroa.0.1.i.i10.i.i = phi ptr [ %i.bf, %bb.q ], [ null, %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i ], [ %i.bp, %bb.t ], [ null, %bb.s ] ; 2 uses
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i unwind label %bb.v, !noalias !97

bb.v:                                             ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.w, !noalias !97

bb.w:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !97
  unreachable

bb.x:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !97
  unreachable

_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i: ; preds = %bb.u
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !112
  %i.bt = icmp eq ptr %.sroa.0.1.i.i10.i.i, null
  br i1 %i.bt, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit, label %bb.e

bb.y:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %1, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  store i32 47, ptr %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.8.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 47, ptr %.sroa.4.sroa.5.sroa.8.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i8 1, ptr %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  store i8 1, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 73 ; 3 uses
  store i8 0, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  store i64 0, ptr %i.e, align 8, !alias.scope !98, !noalias !99
  %i.bu = call fastcc ptr @_RNvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator3nthCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, i64 noundef 0) #21
  %.not3.i = icmp eq ptr %i.bu, null
  br i1 %.not3.i, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit, label %bb.d

_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit: ; preds = %bb.e, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i, %bb.y
  %.sroa.0.0.i = phi ptr [ %0, %bb.y ], [ %.sroa.01.0.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ], [ null, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i ], [ %.sroa.01.0.i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB5_5Value7pointer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 14 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 47, ptr %i.d, align 4
  %i.g = call noundef zeroext i1 @_RNvMNtCs8Chj7Szqq0n_4core5sliceSh11starts_withCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.g, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4r_s_0E0B3Y_EB2c_.exit
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.i, %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4r_s_0E0B3Y_EB2c_.exit ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %.promoted.i.i = load i8, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !alias.scope !148, !noalias !149
  %.promoted20.i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !150, !noalias !149
  %.val.i.i.i.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !150, !noalias !149, !nonnull !5 ; 3 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !150, !noalias !149 ; 2 uses
  %i.h = load i64, ptr %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !150, !noalias !149 ; 7 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.h, %.val1.i.i.i.i
  %i.i = load i8, ptr %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !150, !noalias !149 ; 2 uses
  %i.j = zext nneg i8 %i.i to i64                 ; 4 uses
  %i.k = icmp ult i8 %i.i, 5
  %i.l = getelementptr i8, ptr %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !range !11, !alias.scope !150, !noalias !149
  %i.o = trunc nuw i8 %i.n to i1
  %.pre2.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !150, !noalias !149 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.promoted23.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !150, !noalias !149
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i, %bb.d
  %i.u = phi i64 [ %.promoted23.i.i, %bb.d ], [ %i.as, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i ] ; 3 uses
  %.lcssa1622.i.i = phi i64 [ %.promoted20.i.i, %bb.d ], [ %.lcssa1621.i.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i ] ; 4 uses
  %i.v = phi i8 [ %.promoted.i.i, %bb.d ], [ %i.at, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i ]
  %.sroa.01.0.i.i = phi ptr [ %0, %bb.d ], [ %.sroa.0.1.i.i10.i.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4r_s_0E0B3Y_EB2c_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.x = icmp ult i64 %i.h, %i.u
  %or.cond27.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.x
  br i1 %or.cond27.i.i.i.i.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %bb.f
  call void @llvm.assume(i1 %i.k)
  %.pre.i.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !154, !noalias !155 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.i, %.lr.ph.split.preheader.i.i.i.i.i
  %i.y = phi i64 [ %i.am, %bb.i ], [ %i.u, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  %i.z = sub nuw i64 %i.h, %i.y                   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.y ; 2 uses
  %i.ab = icmp samesign ult i64 %i.z, 16
  br i1 %i.ab, label %.preheader.i.i.i.i.i.i, label %bb.g

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.h, %i.y
  br i1 %.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ac = call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.z), !noalias !156 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %.loopexit.i.i.i.i.i, label %.loopexit15.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.h ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !157, !noalias !156, !noundef !5
  %i.ai = icmp eq i8 %i.ah, %.pre.i.i.i.i.i
  br i1 %i.ai, label %.loopexit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.aj, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.g ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ak = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.z
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %i.y, 1
  %i.am = add i64 %i.al, %.sroa.5.0.i.i.i.i.i.i   ; 10 uses
  store i64 %i.am, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !154, !noalias !155
  %.not11.i.i.i.i.i = icmp ult i64 %i.am, %i.j
  %.not12.i.i.i.i.i = icmp ugt i64 %i.am, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.i, label %bb.j

.loopexit15.i.i.i.i.i:                            ; preds = %bb.g, %.preheader.i.i.i.i.i.i, %bb.h
  store i64 %i.h, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !154, !noalias !155
  br label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i

bb.i:                                             ; preds = %bb.j, %.loopexit.i.i.i.i.i
  %i.an = icmp ult i64 %i.h, %i.am
  br i1 %i.an, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.j:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.ao = sub nuw i64 %i.am, %i.j                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ao
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.j), !noalias !158
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aq, label %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.i

_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.j
  store i64 %i.am, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !148, !noalias !149
  br label %select.unfold.i.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i: ; preds = %bb.i, %.loopexit15.i.i.i.i.i, %bb.f
  %i.ar = phi i64 [ %i.u, %bb.f ], [ %i.h, %.loopexit15.i.i.i.i.i ], [ %i.am, %bb.i ]
  store i8 1, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !alias.scope !159, !noalias !149
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa1622.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.o, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4r_s_0E0B3Y_EB2c_.exit

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  %i.as = phi i64 [ %i.am, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %i.ar, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.lcssa1621.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.lcssa1622.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %i.at = phi i8 [ 0, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ 1, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.pn26.i.i = phi i64 [ %i.ao, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn26.i.i, %.lcssa1622.i.i
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa1622.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !162
  call fastcc void @_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11) #21
  %i.au = load ptr, ptr %i.p, align 8, !noalias !162, !nonnull !5, !noundef !5
  %i.av = load i64, ptr %i.q, align 8, !noalias !162, !noundef !5
  invoke fastcc void @_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #17
          to label %common.resume.i.i.i unwind label %bb.o, !noalias !163

bb.l:                                             ; preds = %select.unfold.i.i
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i unwind label %bb.m, !noalias !163

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i unwind label %bb.n, !noalias !163

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !163
  unreachable

common.resume.i.i.i:                              ; preds = %bb.v, %bb.r, %bb.m, %bb.k
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ax, %bb.m ], [ %i.bq, %bb.v ], [ %i.bg, %bb.r ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !163
  unreachable

_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i: ; preds = %bb.l
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !162
  store ptr %.sroa.01.0.i.i, ptr %i.c, align 8, !noalias !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !161
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.ba = load i8, ptr %.sroa.01.0.i.i, align 8, !range !9, !alias.scope !166, !noalias !167, !noundef !5
  switch i8 %i.ba, label %bb.u [
    i8 4, label %bb.p
    i8 5, label %bb.q
  ]

bb.p:                                             ; preds = %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i
  %i.bb = load ptr, ptr %i.s, align 8, !alias.scope !165, !noalias !168, !nonnull !5, !noundef !5
  %i.bc = load i64, ptr %i.t, align 8, !alias.scope !165, !noalias !168, !noundef !5
  %i.bd = invoke fastcc { i64, i64 } @_RNvNtCs8ZPNfZ0ciAA_10serde_json5value11parse_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bc)
          to label %bb.s unwind label %bb.r, !noalias !169 ; 2 uses

bb.q:                                             ; preds = %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.bf = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE3getB18_EB1x_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.u unwind label %bb.r, !noalias !147

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #17
          to label %common.resume.i.i.i unwind label %bb.x, !noalias !147

bb.s:                                             ; preds = %bb.p
  %i.bh = extractvalue { i64, i64 } %i.bd, 0
  %i.bi = extractvalue { i64, i64 } %i.bd, 1      ; 2 uses
  %i.bj = trunc nuw i64 %i.bh to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !166, !noalias !167
  %i.bm = icmp ult i64 %i.bi, %i.bl
  %or.cond.i.i.i.i = select i1 %i.bj, i1 %i.bm, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !166, !noalias !167, !nonnull !5, !noundef !5
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bi
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i
  %.sroa.0.1.i.i10.i.i = phi ptr [ %i.bf, %bb.q ], [ null, %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i ], [ %i.bp, %bb.t ], [ null, %bb.s ] ; 2 uses
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
end_hunk_1
begin_hunk_2_@_RNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB4_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt:bb.a
  store i64 %.sroa.5.0.i.i14, ptr %.sroa.59.0..sroa_idx.i.i22, align 8, !noalias !253
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.cd = call { ptr, ptr } @_RNvXsk_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !250 ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cd, 0      ; 2 uses
  %.not39.i.i23 = icmp eq ptr %i.ce, null
  br i1 %.not39.i.i23, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cf = extractvalue { ptr, ptr } %i.cd, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  %i.cg = call noundef align 8 ptr @_RINvYINtNtCs8ZPNfZ0ciAA_10serde_json3ser8CompoundQNtNvXs_NtB8_5valueNtBT_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_entryNtNtCsbqH9stoieM8_5alloc6string6StringB14_EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cf), !noalias !250 ; 2 uses
  %.not40.i.i24 = icmp eq ptr %i.cg, null
  br i1 %.not40.i.i24, label %bb.aj, label %bb.aq

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !253
  %i.ch = load ptr, ptr %i.b, align 8, !noalias !253, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.ci = load i8, ptr %i.bz, align 8, !range !245, !noalias !253, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.val.i47.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !264, !noalias !250 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !266, !noalias !250, !noundef !5
  %i.cn = add i64 %i.cm, -1                       ; 3 uses
  store i64 %i.cn, ptr %i.cl, align 8, !alias.scope !266, !noalias !250
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cp = load i8, ptr %i.co, align 8, !range !11, !alias.scope !266, !noalias !250, !noundef !5
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.an, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48.i.i

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i47.i.i) ]
  %i.cr = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.val.i47.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1), !noalias !267 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i, label %bb.ao, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.cs = load ptr, ptr %i.ck, align 8, !alias.scope !266, !noalias !250, !nonnull !5, !noundef !5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !266, !noalias !250, !noundef !5
  %exitcond.not.i.i.i.i69 = icmp eq i64 %i.cn, 0
  br i1 %exitcond.not.i.i.i.i69, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48.i.i, label %.lr.ph

bb.ap:                                            ; preds = %.lr.ph
  %i.cv = add i64 %.sroa.06.0.i.i.i.i70, 1        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cv, %i.cn
  br i1 %exitcond.not.i.i.i.i, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao, %bb.ap
  %.sroa.06.0.i.i.i.i70 = phi i64 [ %i.cv, %bb.ap ], [ 0, %bb.ao ]
  %i.cw = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.val.i47.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef range(i64 0, -9223372036854775808) %i.cu), !noalias !267 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not8.i.i.i.i, label %bb.ap, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i.i.i

_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48.i.i: ; preds = %bb.ap, %bb.ao, %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i47.i.i) ]
  %i.cx = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.val.i47.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 1), !noalias !267 ; 2 uses
  %.not.i49.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i49.i.i, label %_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit.i.i, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i.i.i, !prof !262

_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i.i.i: ; preds = %.lr.ph, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48.i.i, %bb.an
  %.sroa.0.0.i5.i.i.i = phi ptr [ %i.cx, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48.i.i ], [ %i.cr, %bb.an ], [ %i.cw, %.lr.ph ]
  %i.cy = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i.i.i), !noalias !268
  br label %_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit.i.i

_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit.i.i: ; preds = %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i.i.i, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48.i.i, %bb.al
  %.sroa.0.0.i50.i.i = phi ptr [ null, %bb.al ], [ %i.cy, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i.i.i ], [ null, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !253
  br label %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit

bb.aq:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !253
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ah
  %.sroa.0.1.i.i8 = phi ptr [ %i.bx, %bb.ah ], [ %i.cg, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !253
  br label %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit.thread

_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit.thread: ; preds = %bb.ar, %bb.y, %bb.aa, %bb.ad
  %.sroa.0.0.i.i9.ph = phi ptr [ %i.bp, %bb.ad ], [ %i.bh, %bb.aa ], [ %i.bb, %bb.y ], [ %.sroa.0.1.i.i8, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !247
  br label %bb.au

_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit.thread43: ; preds = %bb.x, %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser15PrettyFormatterNtB5_9Formatter10write_boolQNtNvXs_NtB7_5valueNtB1r_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !247
  br label %bb.at

_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit: ; preds = %bb.ab, %bb.ae, %_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit.i.i
  %.sroa.0.0.i.i9 = phi ptr [ %.sroa.0.0.i50.i.i, %_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit.i.i ], [ %i.br, %bb.ae ], [ %i.bj, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !247
  %.not6.not = icmp eq ptr %.sroa.0.0.i.i9, null
  br i1 %.not6.not, label %bb.at, label %bb.au

bb.as:                                            ; preds = %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser9to_writerQNtNvXs_NtB4_5valueNtBQ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB11_EB4_.exit.thread, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser9to_writerQNtNvXs_NtB4_5valueNtBQ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB11_EB4_.exit
  %.sroa.0.0.i.i34 = phi ptr [ %.sroa.0.0.i.i.ph, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser9to_writerQNtNvXs_NtB4_5valueNtBQ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB11_EB4_.exit.thread ], [ %.sroa.0.0.i.i, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser9to_writerQNtNvXs_NtB4_5valueNtBQ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB11_EB4_.exit ]
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr nonnull %.sroa.0.0.i.i34)
  br label %bb.at

bb.at:                                            ; preds = %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit.thread43, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser9to_writerQNtNvXs_NtB4_5valueNtBQ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB11_EB4_.exit.thread36, %bb.au, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit, %bb.as, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser9to_writerQNtNvXs_NtB4_5valueNtBQ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB11_EB4_.exit
  %.sroa.0.1 = phi i1 [ true, %bb.as ], [ false, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser9to_writerQNtNvXs_NtB4_5valueNtBQ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB11_EB4_.exit ], [ false, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit ], [ true, %bb.au ], [ false, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser9to_writerQNtNvXs_NtB4_5valueNtBQ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB11_EB4_.exit.thread36 ], [ false, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit.thread43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %.sroa.0.1

bb.au:                                            ; preds = %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit.thread, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit
  %.sroa.0.0.i.i941 = phi ptr [ %.sroa.0.0.i.i9.ph, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit.thread ], [ %.sroa.0.0.i.i9, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit ]
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr nonnull %.sroa.0.0.i.i941)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_5ValueNtNtNtCs8Chj7Szqq0n_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvNtCs8ZPNfZ0ciAA_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueEB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value4fromNtB6_5ValueINtNtCs8Chj7Szqq0n_4core7convert4FromdE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, double noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = tail call double @llvm.fabs.f64(double %1)
  %i.c = fcmp ueq double %i.b, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !alias.scope !279, !noalias !280
  br label %_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionNtNtCs8ZPNfZ0ciAA_10serde_json6number6NumberE6map_orNtNtBM_5value5ValueNcNtB1y_6Number0EBM_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.d, align 8, !alias.scope !285, !noalias !282
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %1, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !285, !noalias !282
  store i8 2, ptr %0, align 8, !alias.scope !286, !noalias !287
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !288
  br label %_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionNtNtCs8ZPNfZ0ciAA_10serde_json6number6NumberE6map_orNtNtBM_5value5ValueNcNtB1y_6Number0EBM_.exit

_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionNtNtCs8ZPNfZ0ciAA_10serde_json6number6NumberE6map_orNtNtBM_5value5ValueNcNtB1y_6Number0EBM_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RNvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator3nthCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef range(i64 0, -1) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_3str4iter5SplitcENtB4_13SpecAdvanceBy15spec_advance_byCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef range(i64 0, -1) %1)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !11, !alias.scope !302, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !302, !nonnull !5, !noundef !5 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !302, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !304, !noalias !305, !noundef !5 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.i, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !304, !noalias !305 ; 2 uses
  %i.j = icmp ult i64 %i.i, %.promoted.i.i.i
  %or.cond27.i.i.i = or i1 %.not.i.i.i, %i.j
  br i1 %or.cond27.i.i.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !304, !noalias !305, !noundef !5 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.o = icmp ult i8 %i.m, 5
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.pre.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !304, !noalias !305 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.r = phi i64 [ %i.af, %bb.f ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  %i.s = sub nuw i64 %i.i, %i.r                   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.i, %i.r
  br i1 %.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.i.i.i
  %i.v = tail call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !306 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %.loopexit.i.i.i, label %.loopexit15.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.e
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ac, %bb.e ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.04.011.i.i.i.i
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !307, !noalias !306, !noundef !5
  %i.ab = icmp eq i8 %i.aa, %.pre.i.i.i
  br i1 %i.ab, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ac, %i.s
  br i1 %exitcond.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.x, %bb.d ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ad = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.s
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add i64 %i.r, 1
  %i.af = add i64 %i.ae, %.sroa.5.0.i.i.i.i       ; 7 uses
  store i64 %i.af, ptr %i.g, align 8, !alias.scope !304, !noalias !305
  %.not11.i.i.i = icmp ult i64 %i.af, %i.n
  %.not12.i.i.i = icmp ugt i64 %i.af, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.loopexit15.i.i.i:                                ; preds = %bb.d, %.preheader.i.i.i.i, %bb.e
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !304, !noalias !305
  br label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i

bb.f:                                             ; preds = %bb.g, %.loopexit.i.i.i
  %i.ag = icmp ult i64 %i.i, %i.af
  br i1 %i.ag, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %.loopexit.i.i.i
  %i.ah = sub nuw i64 %i.af, %i.n
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ah
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ai, ptr nonnull %i.k, i64 %i.n), !noalias !305
  %i.aj = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.aj, label %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.ak = load i64, ptr %0, align 8, !alias.scope !302, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ak
  store i64 %i.af, ptr %0, align 8, !alias.scope !302
  br label %_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i: ; preds = %bb.f, %.loopexit15.i.i.i, %bb.c
  store i8 1, ptr %i.b, align 1, !alias.scope !308
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load i8, ptr %i.am, align 8, !range !11, !alias.scope !308, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  %.pre.i2.i.i = load i64, ptr %0, align 8, !alias.scope !308 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !308
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ao, i1 true, i1 %.not.i3.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pre.i2.i.i
  %.sroa.0.0.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.ap, ptr null
  br label %_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit

_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.al, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.sroa.0.0.i.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.split39._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !alias.scope !317, !noalias !318, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !319
  br i1 %i.e, label %.lr.ph56, label %.split39._crit_edge

.lr.ph56:                                         ; preds = %.lr.ph, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.f = call noundef nonnull ptr @_RINvMNtNtCsbqH9stoieM8_5alloc2io5errorNtNtNtCs8Chj7Szqq0n_4core2io5error5Error3newReECsigunbJSLHCW_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 9) #22, !noalias !317 ; 11 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %.split38
    i64 0, label %.split39
    i64 1, label %.split
  ], !prof !8

default.unreachable:                              ; preds = %.lr.ph56
  unreachable

bb.b:                                             ; preds = %.lr.ph56
  %i.i = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs8Chj7Szqq0n_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = invoke noundef zeroext i1 %i.m(i32 noundef %i.k)
          to label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.f, !inline_history !313

.split38:                                         ; preds = %.lr.ph56
  %i.o = lshr i64 %i.g, 32
  %i.p = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.o to i8
  %spec.select.i.i.i = select i1 %i.p, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.q = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.r, label %bb.c, label %.split39._crit_edge

.split39:                                         ; preds = %.lr.ph56
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !320, !noundef !5
  %i.u = icmp eq i8 %i.t, 35
  br i1 %i.u, label %.thread.thread, label %.split39._crit_edge

.split:                                           ; preds = %.lr.ph56
  %i.v = getelementptr i8, ptr %i.f, i64 31
  %i.w = load i8, ptr %i.v, align 8, !range !320, !noundef !5
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %bb.d, label %.split39._crit_edge

_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.n, label %.thread.thread, label %.split39._crit_edge

.split39._crit_edge:                              ; preds = %.split39, %.split38, %.split, %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.e, %.lr.ph, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ null, %.lr.ph ], [ null, %bb.e ], [ %i.f, %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.f, %.split38 ], [ %i.f, %.split39 ], [ %i.f, %.split ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %.split38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.z = and i64 %i.g, 1095216660480
  %i.aa = icmp ne i64 %i.z, 1095216660480
  call void @llvm.assume(i1 %i.y)
  call void @llvm.assume(i1 %i.aa)
  br label %bb.e

bb.d:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  store ptr %i.ab, ptr %i.d, align 8, !alias.scope !321
  store i8 3, ptr %i.a, align 8, !alias.scope !321
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !322
  br i1 %i.ac, label %.lr.ph56, label %.split39._crit_edge

bb.f:                                             ; preds = %.noexc, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json(ptr nonnull %i.f) #17
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19
  unreachable
}

end_hunk_2
