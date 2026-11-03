Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/minilints-655a07651eab16c7.minilints.4d37230c40706770-cgu.01?download=true
inline.NumInlined: 364
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E":bb.a
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !93, !noundef !4 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !93, !nonnull !4, !align !7, !noundef !4 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !93, !noundef !4 ; 14 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !93, !nonnull !4, !align !7, !noundef !4 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !93, !noundef !4 ; 12 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.by = add i64 %i.bw, -1                       ; 4 uses
  br i1 %i.bo, label %bb.af, label %bb.s

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.k ], [ %..i.i.peel, %bb.l ], [ 1, %bb.j ]
  %i.bz = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp ult i64 %i.bz, %i.p
  br i1 %.not.i.i.i, label %bb.p, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.o
  %i.cb = icmp eq i64 %i.bz, %i.p
  br i1 %i.cb, label %bb.q, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !95, !noalias !99, !noundef !4
  %i.ce = icmp sgt i8 %i.cd, -65
  br i1 %i.ce, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p, %.split.i.i.i, %bb.n
  %i.cf = icmp samesign eq i64 %i.bz, %i.p
  br i1 %i.cf, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bz
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !100, !noundef !4 ; 3 uses
  %i.ci = icmp sgt i8 %i.ch, -1
  br i1 %i.ci, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i": ; preds = %bb.r
  %i.cj = add nuw nsw i64 %i.bz, 1
  %i.ck = icmp samesign ne i64 %i.cj, %i.p
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i8 %i.ch, -33
  br i1 %i.cl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i"
  %i.cm = add nuw nsw i64 %i.bz, 2
  %i.cn = icmp samesign ne i64 %i.cm, %i.p
  call void @llvm.assume(i1 %i.cn)
  %i.co = icmp samesign ugt i8 %i.ch, -17
  br i1 %i.co, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i"
  %i.cp = add nuw nsw i64 %i.bz, 3
  %i.cq = icmp samesign ne i64 %i.cp, %i.p
  call void @llvm.assume(i1 %i.cq)
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.loopexit:                                        ; preds = %bb.p, %.split.i.i.i, %bb.e, %.split.i.i.i.peel
  %.lcssa147 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.e ], [ %i.bz, %.split.i.i.i ], [ %i.bz, %bb.p ]
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.p, i64 noundef %.lcssa147, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23, !noalias !99
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %.promoted.i13 = load i64, ptr %i.bx, align 8, !alias.scope !101 ; 2 uses
  %i.cr = add i64 %.promoted.i13, %i.by           ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.bs
  br i1 %i.cs, label %.lr.ph.i16, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph.i16:                                       ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !101, !noundef !4
  %i.cv = load i64, ptr %i.h, align 8, !alias.scope !101 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !101 ; 2 uses
  %i.cy = sub i64 %i.bw, %i.cx
  %invariant.op = sub i64 1, %i.cv
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i, %.lr.ph.i16
  %i.cz = phi i64 [ %.promoted.i13, %.lr.ph.i16 ], [ %.ph71.i, %.sink.split.i ] ; 6 uses
  %i.da = phi i64 [ %i.bn, %.lr.ph.i16 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.db = phi i64 [ %i.cr, %.lr.ph.i16 ], [ %i.dk, %.sink.split.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !102, !noundef !4
  %i.de = and i8 %i.dd, 63
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = and i64 %i.dg, %i.cu
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dj = add i64 %i.cz, %i.bw
  br label %.sink.split.i

bb.v:                                             ; preds = %bb.t
  %.sroa.0.0.i.i18 = call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cv) ; 4 uses
  %umax49.i19 = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i18, i64 %i.bw)
  %exitcond.not.i21267.not = icmp ult i64 %.sroa.0.0.i.i18, %i.bw
  br i1 %exitcond.not.i21267.not, label %.lr.ph269, label %.preheader32.preheader

.sink.split.i:                                    ; preds = %bb.ae, %bb.ab, %bb.u
  %.sink.i = phi i64 [ %i.cy, %bb.ab ], [ 0, %bb.ae ], [ 0, %bb.u ]
  %.ph71.i = phi i64 [ %i.dz, %bb.ab ], [ %i.ef, %bb.ae ], [ %i.dj, %bb.u ] ; 2 uses
  %i.dk = add i64 %.ph71.i, %i.by                 ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.bs
  br i1 %i.dl, label %bb.t, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

bb.w:                                             ; preds = %bb.ac
  %i.dm = add nuw i64 %.sroa.02.0.i20268, 1       ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %i.dm, %umax49.i19
  br i1 %exitcond.not.i21, label %.preheader32.preheader, label %.lr.ph269

.preheader32.preheader:                           ; preds = %bb.w, %bb.v
  %i.dn = icmp ult i64 %i.da, %i.cv
  br i1 %i.dn, label %.lr.ph271, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph269:                                        ; preds = %bb.v, %bb.w
  %.sroa.02.0.i20268 = phi i64 [ %i.dm, %bb.w ], [ %.sroa.0.0.i.i18, %bb.v ] ; 4 uses
  %i.do = add i64 %.sroa.02.0.i20268, %i.cz       ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.bs
  br i1 %i.dp, label %bb.ac, label %bb.ad

.preheader32:                                     ; preds = %bb.z
  %i.dq = icmp ult i64 %i.da, %i.dr
  br i1 %i.dq, label %.lr.ph271, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph271:                                        ; preds = %.preheader32.preheader, %.preheader32
  %.sroa.2.0.i24270 = phi i64 [ %i.dr, %.preheader32 ], [ %i.cv, %.preheader32.preheader ]
  %i.dr = add i64 %.sroa.2.0.i24270, -1           ; 6 uses
  %i.ds = icmp ult i64 %i.dr, %i.bw
  br i1 %i.ds, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph271
  %i.dt = add i64 %i.dr, %i.cz                    ; 3 uses
  %i.du = icmp ult i64 %i.dt, %i.bs
  br i1 %i.du, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %.lr.ph271
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.dr, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23, !noalias !104
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dr
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !103, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dt
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !102, !noundef !4
  %.not.i25 = icmp eq i8 %i.dw, %i.dy
  br i1 %.not.i25, label %.preheader32, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.dt, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23, !noalias !104
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dz = add i64 %i.cz, %i.cx
  br label %.sink.split.i

bb.ac:                                            ; preds = %.lr.ph269
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.02.0.i20268
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !103, !noundef !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.do
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !102, !noundef !4
  %.not21.i23 = icmp eq i8 %i.eb, %i.ed
  br i1 %.not21.i23, label %bb.w, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph269
  %i.ee = add i64 %i.cz, %.sroa.0.0.i.i18
  %umax.i22 = call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.ee)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i22, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23, !noalias !104
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %.reass.reass = add i64 %i.cz, %invariant.op
  %i.ef = add i64 %.reass.reass, %.sroa.02.0.i20268
  br label %.sink.split.i

bb.af:                                            ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %.promoted.i8 = load i64, ptr %i.bx, align 8, !alias.scope !105 ; 2 uses
  %i.eg = add i64 %.promoted.i8, %i.by            ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.bs
  br i1 %i.eh, label %.lr.ph.i11, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph.i11:                                       ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !105, !noundef !4
  %i.ek = load i64, ptr %i.h, align 8, !alias.scope !105 ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !105
  %umax49.i = call i64 @llvm.umax.i64(i64 %i.ek, i64 %i.bw)
  %i.en = add i64 %i.ek, -1
  %.first_iter = icmp ult i64 %i.en, %i.bw
  %exitcond.not.i272.not = icmp ult i64 %i.ek, %i.bw
  %invariant.op354 = sub i64 1, %i.ek
  %.not30275 = icmp eq i64 %i.ek, 0
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.lr.ph.i11
  %i.eo = phi i64 [ %.promoted.i8, %.lr.ph.i11 ], [ %i.ey, %bb.ai ] ; 6 uses
  %i.ep = phi i64 [ %i.eg, %.lr.ph.i11 ], [ %i.ez, %bb.ai ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !106, !noundef !4
  %i.es = and i8 %i.er, 63
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = and i64 %i.eu, %i.ej
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.ah, label %.preheader93.preheader

.preheader93.preheader:                           ; preds = %bb.ag
  br i1 %exitcond.not.i272.not, label %.lr.ph274, label %.preheader.preheader

bb.ah:                                            ; preds = %bb.ag
  %i.ex = add i64 %i.eo, %i.bw
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ap, %bb.am, %bb.ah
  %i.ey = phi i64 [ %i.fo, %bb.ap ], [ %i.ex, %bb.ah ], [ %i.fi, %bb.am ] ; 2 uses
  %i.ez = add i64 %i.ey, %i.by                    ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.bs
  br i1 %i.fa, label %bb.ag, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.preheader93:                                     ; preds = %bb.an
  %i.fb = add nuw i64 %.sroa.02.0.i273, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fb, %umax49.i
  br i1 %exitcond.not.i, label %.preheader.preheader, label %.lr.ph274

.preheader.preheader:                             ; preds = %.preheader93, %.preheader93.preheader
  br i1 %.not30275, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %.lr.ph277

.lr.ph274:                                        ; preds = %.preheader93.preheader, %.preheader93
  %.sroa.02.0.i273 = phi i64 [ %i.fb, %.preheader93 ], [ %i.ek, %.preheader93.preheader ] ; 4 uses
  %4 = add i64 %.sroa.02.0.i273, %i.eo            ; 2 uses
  %5 = icmp ult i64 %4, %i.bs
  br i1 %5, label %bb.an, label %bb.ao

.preheader:                                       ; preds = %bb.ak
  %.not30 = icmp eq i64 %6, 0
  br i1 %.not30, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %.lr.ph277

.lr.ph277:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i276 = phi i64 [ %6, %.preheader ], [ %i.ek, %.preheader.preheader ]
  %6 = add i64 %.sroa.2.0.i276, -1                ; 5 uses
  br i1 %.first_iter, label %bb.aj, label %7

bb.aj:                                            ; preds = %.lr.ph277
  %i.fc = add i64 %6, %i.eo                       ; 3 uses
  %i.fd = icmp ult i64 %i.fc, %i.bs
  br i1 %i.fd, label %bb.ak, label %bb.al

7:                                                ; preds = %.lr.ph277
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %6, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23, !noalias !108
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bu, i64 %6
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !107, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.fc
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !106, !noundef !4
  %.not.i12 = icmp eq i8 %i.ff, %i.fh
  br i1 %.not.i12, label %.preheader, label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.fc, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23, !noalias !108
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.fi = add i64 %i.eo, %i.em
  br label %bb.ai

bb.an:                                            ; preds = %.lr.ph274
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.02.0.i273
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !107, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bq, i64 %4
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !106, !noundef !4
  %.not21.i = icmp eq i8 %i.fk, %i.fm
  br i1 %.not21.i, label %.preheader93, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph274
  %i.fn = add i64 %i.eo, %i.ek
  %umax.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.fn)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23, !noalias !108
  unreachable

bb.ap:                                            ; preds = %bb.an
  %.reass231.reass = add i64 %i.eo, %invariant.op354
  %i.fo = add i64 %.reass231.reass, %.sroa.02.0.i273
  br label %bb.ai

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit": ; preds = %.sink.split.i, %.preheader32.preheader, %.preheader32, %bb.ai, %.preheader.preheader, %.preheader, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i", %bb.r, %bb.f, %bb.af, %bb.s, %bb.i, %bb.q, %.preheader.i
  %.sroa.0.027 = phi i8 [ 0, %bb.s ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i" ], [ 0, %.preheader.i ], [ 1, %bb.q ], [ 1, %.preheader.preheader ], [ 1, %bb.i ], [ 1, %.preheader ], [ 0, %bb.af ], [ %.promoted26.i, %bb.f ], [ 1, %.preheader32 ], [ 1, %bb.r ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i" ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i" ], [ 0, %bb.ai ], [ 0, %.sink.split.i ], [ 1, %.preheader32.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

.lr.ph:                                           ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.fp = load i8, ptr %0, align 1, !alias.scope !109, !noundef !4 ; 5 uses
  %i.fq = add nsw i64 %1, -1                      ; 2 uses
  %i.fr = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 33) %1, i64 4) ; 3 uses
  %i.fs = add nsw i64 %1, -1                      ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !109, !noalias !111, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.fu, %i.fp
  br i1 %.not.i.not.i.i, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %.lr.ph
  %i.fv = icmp ult i64 %i.fr, %i.fs
  br i1 %i.fv, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.1", label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.1": ; preds = %bb.aq
  %i.fw = add nsw i64 %1, -2                      ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !109, !noalias !111, !noundef !4 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.fy, %i.fp
  br i1 %.not.i.not.i.i.1, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.1"
  %i.fz = icmp ult i64 %i.fr, %i.fw
  br i1 %i.fz, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.2", label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.2": ; preds = %bb.ar
  %i.ga = add nsw i64 %1, -3                      ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !109, !noalias !111, !noundef !4 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.gc, %i.fp
  br i1 %.not.i.not.i.i.2, label %bb.as, label %bb.av

bb.as:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.2"
  %i.gd = icmp ult i64 %i.fr, %i.ga
  br i1 %i.gd, label %bb.at, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

bb.at:                                            ; preds = %bb.as
  %i.ge = add nsw i64 %1, -4                      ; 3 uses
  %i.gf = icmp samesign ugt i64 %1, 3
  br i1 %i.gf, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.3", label %bb.au

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.3": ; preds = %bb.at
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ge
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !109, !noalias !111, !noundef !4 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.gh, %i.fp
  br i1 %.not.i.not.i.i.3, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ge, i64 noundef range(i64 3, 33) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !112
  unreachable

bb.av:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.3", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.2", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.1", %.lr.ph
  %.lcssa320 = phi i8 [ %i.fu, %.lr.ph ], [ %i.fy, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.1" ], [ %i.gc, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.2" ], [ %i.gh, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.3" ]
  %.lcssa318 = phi i64 [ %i.fs, %.lr.ph ], [ %i.fw, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.1" ], [ %i.ga, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.2" ], [ %i.ge, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i.3" ] ; 6 uses
  %i.gi = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.gj = icmp ult i64 %3, %i.gi
  br i1 %i.gj, label %.lr.ph.split.us.i.i, label %bb.aw

.lr.ph.split.us.i.i:                              ; preds = %bb.av
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 3, 33) %1), !alias.scope !113, !noalias !114
  %i.gk = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.gk, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader": ; preds = %.lr.ph.split.us.i.i
  %i.gl = add nsw i64 %3, -1                      ; 2 uses
  %.not28.i.i278 = icmp ugt i64 %1, %i.gl
  br i1 %.not28.i.i278, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i"
  %i.gm = phi i64 [ %i.gp, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i" ], [ %i.gl, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader" ]
  %.pn.i279 = phi ptr [ %i.gn, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i" ], [ %2, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader" ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.pn.i279, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.gn, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 3, 33) %1), !alias.scope !113, !noalias !114
  %i.go = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.go, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i": ; preds = %.split.us.i.i
  %i.gp = add nsw i64 %i.gm, -1                   ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.gp
  br i1 %.not28.i.i, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

bb.aw:                                            ; preds = %bb.av
  %i.gq = insertelement <1 x i8> poison, i8 %.lcssa320, i64 0
  %i.gr = insertelement <1 x i8> poison, i8 %i.fp, i64 0
  %i.gs = shufflevector <1 x i8> %i.gr, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.gt = shufflevector <1 x i8> %i.gq, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  store ptr %2, ptr %i.a, align 8, !noalias !113
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.gv, align 8, !noalias !113
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.gu, ptr %i.gw, align 8, !noalias !113
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.fq, ptr %i.gx, align 8, !noalias !113
  %i.gy = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.gy, %3
  br i1 %.not.i, label %.lr.ph.i7, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.ba, %bb.aw
  %.sroa.015.0.lcssa.i = phi i8 [ 0, %bb.aw ], [ %.sroa.015.2.3.i, %bb.ba ] ; 2 uses
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %bb.aw ], [ %i.ip, %bb.ba ] ; 2 uses
  %i.gz = add i64 %.sroa.07.0.lcssa.i, %i.gi
  %i.ha = icmp uge i64 %i.gz, %3
  %i.hb = trunc nuw i8 %.sroa.015.0.lcssa.i to i1 ; 2 uses
  %or.cond3113.i = select i1 %i.ha, i1 true, i1 %i.hb
  br i1 %or.cond3113.i, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph.i7:                                        ; preds = %bb.aw, %bb.ba
  %.sroa.07.0111.i = phi i64 [ %i.ip, %bb.ba ], [ 0, %bb.aw ] ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0111.i ; 5 uses
  %.val3.i.i = load <16 x i8>, ptr %i.hc, align 1, !alias.scope !110, !noalias !115
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.lcssa318
  %.val.i.i = load <16 x i8>, ptr %i.hd, align 1, !alias.scope !110, !noalias !115
  %i.he = icmp eq <16 x i8> %.val3.i.i, %i.gs
  %i.hf = icmp eq <16 x i8> %.val.i.i, %i.gt
  %narrow.i.i = select <16 x i1> %i.he, <16 x i1> %i.hf, <16 x i1> zeroinitializer
  %i.hg = bitcast <16 x i1> %narrow.i.i to i16    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %.val3.i.1.i = load <16 x i8>, ptr %i.hh, align 1, !alias.scope !110, !noalias !115
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.lcssa318
  %.val.i.1.i = load <16 x i8>, ptr %i.hi, align 1, !alias.scope !110, !noalias !115
  %i.hj = icmp eq <16 x i8> %.val3.i.1.i, %i.gs
  %i.hk = icmp eq <16 x i8> %.val.i.1.i, %i.gt
  %narrow.i.1.i = select <16 x i1> %i.hj, <16 x i1> %i.hk, <16 x i1> zeroinitializer
  %i.hl = bitcast <16 x i1> %narrow.i.1.i to i16  ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 32 ; 2 uses
  %.val3.i.2.i = load <16 x i8>, ptr %i.hm, align 1, !alias.scope !110, !noalias !115
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.lcssa318
  %.val.i.2.i = load <16 x i8>, ptr %i.hn, align 1, !alias.scope !110, !noalias !115
  %i.ho = icmp eq <16 x i8> %.val3.i.2.i, %i.gs
  %i.hp = icmp eq <16 x i8> %.val.i.2.i, %i.gt
  %narrow.i.2.i = select <16 x i1> %i.ho, <16 x i1> %i.hp, <16 x i1> zeroinitializer
  %i.hq = bitcast <16 x i1> %narrow.i.2.i to i16  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hc, i64 48 ; 2 uses
  %.val3.i.3.i = load <16 x i8>, ptr %i.hr, align 1, !alias.scope !110, !noalias !115
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.lcssa318
  %.val.i.3.i = load <16 x i8>, ptr %i.hs, align 1, !alias.scope !110, !noalias !115
  %i.ht = icmp eq <16 x i8> %.val3.i.3.i, %i.gs
  %i.hu = icmp eq <16 x i8> %.val.i.3.i, %i.gt
  %narrow.i.3.i = select <16 x i1> %i.ht, <16 x i1> %i.hu, <16 x i1> zeroinitializer
  %i.hv = bitcast <16 x i1> %narrow.i.3.i to i16  ; 2 uses
  %i.hw = icmp eq i16 %i.hg, 0
  br i1 %i.hw, label %.preheader104.1.i, label %bb.bb

.preheader104.1.i:                                ; preds = %bb.bb, %.lr.ph.i7
  %.sroa.015.2.i = phi i8 [ 0, %.lr.ph.i7 ], [ %i.iu, %bb.bb ] ; 3 uses
  %i.hx = icmp eq i16 %i.hl, 0
  br i1 %i.hx, label %.preheader104.2.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader104.1.i
  %i.hy = or disjoint i64 %.sroa.07.0111.i, 16
  %i.hz = trunc nuw i8 %.sroa.015.2.i to i1
  %i.ia = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.hy, i16 noundef %i.hl, i1 noundef zeroext %i.hz)
  %i.ib = zext i1 %i.ia to i8
  %i.ic = or i8 %.sroa.015.2.i, %i.ib
  br label %.preheader104.2.i

.preheader104.2.i:                                ; preds = %bb.ax, %.preheader104.1.i
  %.sroa.015.2.1.i = phi i8 [ %.sroa.015.2.i, %.preheader104.1.i ], [ %i.ic, %bb.ax ] ; 3 uses
  %i.id = icmp eq i16 %i.hq, 0
  br i1 %i.id, label %.preheader104.3.i, label %bb.ay

bb.ay:                                            ; preds = %.preheader104.2.i
  %i.ie = or disjoint i64 %.sroa.07.0111.i, 32
  %i.if = trunc nuw i8 %.sroa.015.2.1.i to i1
  %i.ig = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ie, i16 noundef %i.hq, i1 noundef zeroext %i.if)
  %i.ih = zext i1 %i.ig to i8
  %i.ii = or i8 %.sroa.015.2.1.i, %i.ih
  br label %.preheader104.3.i

.preheader104.3.i:                                ; preds = %bb.ay, %.preheader104.2.i
  %.sroa.015.2.2.i = phi i8 [ %.sroa.015.2.1.i, %.preheader104.2.i ], [ %i.ii, %bb.ay ] ; 3 uses
  %i.ij = icmp eq i16 %i.hv, 0
  br i1 %i.ij, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.preheader104.3.i
  %i.ik = or disjoint i64 %.sroa.07.0111.i, 48
  %i.il = trunc nuw i8 %.sroa.015.2.2.i to i1
  %i.im = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ik, i16 noundef %i.hv, i1 noundef zeroext %i.il)
  %i.in = zext i1 %i.im to i8
  %i.io = or i8 %.sroa.015.2.2.i, %i.in
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.preheader104.3.i
  %.sroa.015.2.3.i = phi i8 [ %.sroa.015.2.2.i, %.preheader104.3.i ], [ %i.io, %bb.az ] ; 2 uses
  %i.ip = add i64 %.sroa.07.0111.i, 64            ; 3 uses
  %i.iq = add i64 %i.ip, %i.gy
  %i.ir = icmp uge i64 %i.iq, %3
  %i.is = trunc nuw i8 %.sroa.015.2.3.i to i1
  %or.cond.i = select i1 %i.ir, i1 true, i1 %i.is
  br i1 %or.cond.i, label %.preheader.i6, label %.lr.ph.i7

bb.bb:                                            ; preds = %.lr.ph.i7
  %i.it = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.0111.i, i16 noundef %i.hg, i1 noundef zeroext false)
end_hunk_0
