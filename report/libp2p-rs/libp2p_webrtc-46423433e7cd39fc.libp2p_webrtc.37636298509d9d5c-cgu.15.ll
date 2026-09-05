Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.15?download=true
inline.NumInlined: 1939
inline.NumDeleted: 694
begin_hunk_0_@_RINvMNtCskKLDkoKarTP_4core3stre18trim_start_matchesReECs4KPtkQIfQGm_13libp2p_webrtc:bb.a
  %i.cg = phi i64 [ %.promoted98.i, %.lr.ph219.i ], [ %spec.select86, %.split69.us.i.us.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.ch = add i64 %.sink132.i.us.i49.lcssa51.us61, %i.m ; 4 uses
  %i.ci = icmp ult i64 %i.ch, %i.e
  br i1 %i.ci, label %.lr.ph.i.i.us.i, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs4KPtkQIfQGm_13libp2p_webrtc.exit

.lr.ph.i.i.us.i:                                  ; preds = %bb.g
  %i.cj = icmp eq i64 %i.cg, -1
  %invariant.op.i.i.us.reass.reass.i.reass.reass.reass = add i64 %.sink132.i.us.i49.lcssa51.us61, %invariant.op ; 3 uses
  %i.ck = add i64 %.sink132.i.us.i49.lcssa51.us61, %i.cd ; 2 uses
  %i.cl = add i64 %.sink132.i.us.i49.lcssa51.us61, %i.l ; 5 uses
  br i1 %i.cj, label %.lr.ph.i.split.us.i.us.i.preheader, label %.lr.ph.i.split.i.us.i

.lr.ph.i.split.us.i.us.i.preheader:               ; preds = %.lr.ph.i.i.us.i
  br i1 %.first_iter.i.fr.us.i, label %.lr.ph.i.split.us.i.us.i.us, label %.lr.ph.i.split.us.i.us.i

.lr.ph.i.split.us.i.us.i.us:                      ; preds = %.lr.ph.i.split.us.i.us.i.preheader, %.loopexit.split.us.us.i.us
  %.sink132.i.us.i49.us = phi i64 [ %.sink132.i.us.i.us, %.loopexit.split.us.us.i.us ], [ %.sink132.i.us.i49.lcssa51.us61, %.lr.ph.i.split.us.i.us.i.preheader ]
  %i.cm = phi i64 [ %i.dh, %.loopexit.split.us.us.i.us ], [ %i.ch, %.lr.ph.i.split.us.i.us.i.preheader ]
  %.not.i46.us.i.us.i.us = icmp eq i64 %.sink132.i.us.i49.lcssa51.us61, %.sink132.i.us.i49.us
  br i1 %.not.i46.us.i.us.i.us, label %bb.h, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.h:                                             ; preds = %.lr.ph.i.split.us.i.us.i.us
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !75, !noalias !77, !noundef !18
  %i.cp = and i8 %i.co, 63
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = and i64 %i.cr, %i.p
  %.not20.i.us.i.us.i.us = icmp eq i64 %i.cs, 0
  br i1 %.not20.i.us.i.us.i.us, label %.loopexit.split.us.us.i.us, label %.preheader74.i.us.i.us.preheader

.preheader74.i.us.i.us.preheader:                 ; preds = %bb.h
  br i1 %exitcond.not.i.us.i.us.i.us255.not, label %.lr.ph257, label %.preheader.i.us.us.i.us.preheader

.preheader74.i.us.i.us:                           ; preds = %.lr.ph257
  %i.ct = add i64 %.sroa.04.0.i.us.i.us.i.us256, 1 ; 2 uses
  %exitcond.not.i.us.i.us.i.us = icmp eq i64 %i.ct, %umax.i.us.i.us.i
  br i1 %exitcond.not.i.us.i.us.i.us, label %.preheader.i.us.us.i.us.preheader, label %.lr.ph257

.preheader.i.us.us.i.us.preheader:                ; preds = %.preheader74.i.us.i.us, %.preheader74.i.us.i.us.preheader
  br i1 %.not73.i.us.us.i.us258, label %.split69.us.i.us.i, label %.lr.ph260

.lr.ph257:                                        ; preds = %.preheader74.i.us.i.us.preheader, %.preheader74.i.us.i.us
  %.sroa.04.0.i.us.i.us.i.us256 = phi i64 [ %i.ct, %.preheader74.i.us.i.us ], [ %.promoted99.i, %.preheader74.i.us.i.us.preheader ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.04.0.i.us.i.us.i.us256
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !76, !noalias !78, !noundef !18
  %i.cw = add i64 %.sroa.04.0.i.us.i.us.i.us256, %.sink132.i.us.i49.lcssa51.us61 ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.e
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !75, !noalias !77, !noundef !18
  %.not22.i.us.i.us.i.us = icmp eq i8 %i.cv, %i.cz
  br i1 %.not22.i.us.i.us.i.us, label %.preheader74.i.us.i.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph257
  %.reass.i.us.i.us.i.us = add i64 %.sroa.04.0.i.us.i.us.i.us256, %invariant.op.i.i.us.reass.reass.i.reass.reass.reass
  br label %.loopexit.split.us.us.i.us

.preheader.i.us.us.i.us:                          ; preds = %.lr.ph260
  %.not73.i.us.us.i.us = icmp eq i64 %i.da, 0
  br i1 %.not73.i.us.us.i.us, label %.split69.us.i.us.i, label %.lr.ph260

.lr.ph260:                                        ; preds = %.preheader.i.us.us.i.us.preheader, %.preheader.i.us.us.i.us
  %.sroa.2.0.i.us.i.us.us.i.us259 = phi i64 [ %i.da, %.preheader.i.us.us.i.us ], [ %.promoted99.i, %.preheader.i.us.us.i.us.preheader ]
  %i.da = add i64 %.sroa.2.0.i.us.i.us.us.i.us259, -1 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !76, !noalias !78, !noundef !18
  %i.dd = add i64 %i.da, %.sink132.i.us.i49.lcssa51.us61 ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.e
  tail call void @llvm.assume(i1 %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !75, !noalias !77, !noundef !18
  %.not21.i.us.i.us.us.i.us = icmp eq i8 %i.dc, %i.dg
  br i1 %.not21.i.us.i.us.us.i.us, label %.preheader.i.us.us.i.us, label %.loopexit.split.us.us.i.us

.loopexit.split.us.us.i.us:                       ; preds = %.lr.ph260, %bb.i, %bb.h
  %.sink132.i.us.i.us = phi i64 [ %i.cl, %bb.h ], [ %.reass.i.us.i.us.i.us, %bb.i ], [ %i.ck, %.lr.ph260 ] ; 2 uses
  %i.dh = add i64 %.sink132.i.us.i.us, %i.m       ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.e
  br i1 %i.di, label %.lr.ph.i.split.us.i.us.i.us, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs4KPtkQIfQGm_13libp2p_webrtc.exit

.lr.ph.i.split.i.us.i:                            ; preds = %.lr.ph.i.i.us.i, %.sink.split.i.i.us.i
  %.sink133.i.us.i41 = phi i64 [ %.sink133.i.us.i, %.sink.split.i.i.us.i ], [ %.sink132.i.us.i49.lcssa51.us61, %.lr.ph.i.i.us.i ]
  %i.dj = phi i64 [ %.sink55.i.i.us.i, %.sink.split.i.i.us.i ], [ %i.cg, %.lr.ph.i.i.us.i ] ; 3 uses
  %i.dk = phi i64 [ %i.ei, %.sink.split.i.i.us.i ], [ %i.ch, %.lr.ph.i.i.us.i ]
  %.not.i46.i.us.i = icmp eq i64 %.sink132.i.us.i49.lcssa51.us61, %.sink133.i.us.i41
  br i1 %.not.i46.i.us.i, label %bb.j, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.j:                                             ; preds = %.lr.ph.i.split.i.us.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !75, !noalias !77, !noundef !18
  %i.dn = and i8 %i.dm, 63
  %i.do = zext nneg i8 %i.dn to i64
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.p
  %.not20.i.i.us.i = icmp eq i64 %i.dq, 0
  br i1 %.not20.i.i.us.i, label %.sink.split.i.i.us.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %..i.i.i.us.i = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 %.promoted99.i) ; 3 uses
  %umax.i.i.us.i = tail call i64 @llvm.umax.i64(i64 %..i.i.i.us.i, i64 range(i64 0, -9223372036854775808) %i.l)
  %exitcond.not.i.i.us.i247.not = icmp ult i64 %..i.i.i.us.i, %i.l
  br i1 %exitcond.not.i.i.us.i247.not, label %.lr.ph249, label %.preheader75.i.us.i.preheader

bb.l:                                             ; preds = %.lr.ph249
  %i.dr = add i64 %.sroa.04.0.i.i.us.i248, 1      ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.dr, %umax.i.i.us.i
  br i1 %exitcond.not.i.i.us.i, label %.preheader75.i.us.i.preheader, label %.lr.ph249

.preheader75.i.us.i.preheader:                    ; preds = %bb.l, %bb.k
  %i.ds = icmp ult i64 %i.dj, %.promoted99.i
  br i1 %i.ds, label %.lr.ph251, label %.split69.us.i.us.i

.lr.ph249:                                        ; preds = %bb.k, %bb.l
  %.sroa.04.0.i.i.us.i248 = phi i64 [ %i.dr, %bb.l ], [ %..i.i.i.us.i, %bb.k ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.04.0.i.i.us.i248
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !76, !noalias !78, !noundef !18
  %i.dv = add i64 %.sroa.04.0.i.i.us.i248, %.sink132.i.us.i49.lcssa51.us61 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.e
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !75, !noalias !77, !noundef !18
  %.not22.i.i.us.i = icmp eq i8 %i.du, %i.dy
  br i1 %.not22.i.i.us.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %.lr.ph249
  %.reass.i.i.us.i = add i64 %.sroa.04.0.i.i.us.i248, %invariant.op.i.i.us.reass.reass.i.reass.reass.reass
  br label %.sink.split.i.i.us.i

.preheader75.i.us.i:                              ; preds = %bb.n
  %i.dz = icmp ult i64 %i.dj, %i.ea
  br i1 %i.dz, label %.lr.ph251, label %.split69.us.i.us.i

.lr.ph251:                                        ; preds = %.preheader75.i.us.i.preheader, %.preheader75.i.us.i
  %.sroa.2.0.i.i.us.i250 = phi i64 [ %i.ea, %.preheader75.i.us.i ], [ %.promoted99.i, %.preheader75.i.us.i.preheader ]
  %i.ea = add i64 %.sroa.2.0.i.i.us.i250, -1      ; 6 uses
  %i.eb = icmp ult i64 %i.ea, %i.l
  br i1 %i.eb, label %bb.n, label %.split71.us.i.i

bb.n:                                             ; preds = %.lr.ph251
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ea
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !76, !noalias !78, !noundef !18
  %i.ee = add i64 %i.ea, %.sink132.i.us.i49.lcssa51.us61 ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.e
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ee
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !75, !noalias !77, !noundef !18
  %.not21.i.i.us.i = icmp eq i8 %i.ed, %i.eh
  br i1 %.not21.i.i.us.i, label %.preheader75.i.us.i, label %.sink.split.i.i.us.i

.sink.split.i.i.us.i:                             ; preds = %bb.n, %bb.m, %bb.j
  %.sink133.i.us.i = phi i64 [ %i.cl, %bb.j ], [ %.reass.i.i.us.i, %bb.m ], [ %i.ck, %bb.n ] ; 2 uses
  %.sink55.i.i.us.i = phi i64 [ 0, %bb.j ], [ 0, %bb.m ], [ %i.ce, %bb.n ]
  %i.ei = add i64 %.sink133.i.us.i, %i.m          ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.e
  br i1 %i.ej, label %.lr.ph.i.split.i.us.i, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs4KPtkQIfQGm_13libp2p_webrtc.exit

.lr.ph.i.split.us.i.us.i:                         ; preds = %.lr.ph.i.split.us.i.us.i.preheader, %.loopexit.split.us.us.i
  %.sink132.i.us.i49 = phi i64 [ %.sink132.i.us.i, %.loopexit.split.us.us.i ], [ %.sink132.i.us.i49.lcssa51.us61, %.lr.ph.i.split.us.i.us.i.preheader ]
  %i.ek = phi i64 [ %i.ey, %.loopexit.split.us.us.i ], [ %i.ch, %.lr.ph.i.split.us.i.us.i.preheader ]
  %.not.i46.us.i.us.i = icmp eq i64 %.sink132.i.us.i49.lcssa51.us61, %.sink132.i.us.i49
  br i1 %.not.i46.us.i.us.i, label %bb.o, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.o:                                             ; preds = %.lr.ph.i.split.us.i.us.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !75, !noalias !77, !noundef !18
  %i.en = and i8 %i.em, 63
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = and i64 %i.ep, %i.p
  %.not20.i.us.i.us.i = icmp eq i64 %i.eq, 0
  br i1 %.not20.i.us.i.us.i, label %.loopexit.split.us.us.i, label %.preheader74.i.us.i.preheader

.preheader74.i.us.i.preheader:                    ; preds = %bb.o
  br i1 %exitcond.not.i.us.i.us.i252.not, label %.lr.ph254, label %.preheader.i.preheader.us.i

.preheader74.i.us.i:                              ; preds = %.lr.ph254
  %i.er = add i64 %.sroa.04.0.i.us.i.us.i253, 1   ; 2 uses
  %exitcond.not.i.us.i.us.i = icmp eq i64 %i.er, %umax.i.us.i.us.i
  br i1 %exitcond.not.i.us.i.us.i, label %.preheader.i.preheader.us.i, label %.lr.ph254

.lr.ph254:                                        ; preds = %.preheader74.i.us.i.preheader, %.preheader74.i.us.i
  %.sroa.04.0.i.us.i.us.i253 = phi i64 [ %i.er, %.preheader74.i.us.i ], [ %.promoted99.i, %.preheader74.i.us.i.preheader ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.04.0.i.us.i.us.i253
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !76, !noalias !78, !noundef !18
  %i.eu = add i64 %.sroa.04.0.i.us.i.us.i253, %.sink132.i.us.i49.lcssa51.us61 ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.e
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.eu
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !75, !noalias !77, !noundef !18
  %.not22.i.us.i.us.i = icmp eq i8 %i.et, %i.ex
  br i1 %.not22.i.us.i.us.i, label %.preheader74.i.us.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph254
  %.reass.i.us.i.us.i = add i64 %.sroa.04.0.i.us.i.us.i253, %invariant.op.i.i.us.reass.reass.i.reass.reass.reass
  br label %.loopexit.split.us.us.i

.loopexit.split.us.us.i:                          ; preds = %bb.p, %bb.o
  %.sink132.i.us.i = phi i64 [ %i.cl, %bb.o ], [ %.reass.i.us.i.us.i, %bb.p ] ; 2 uses
  %i.ey = add i64 %.sink132.i.us.i, %i.m          ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.e
  br i1 %i.ez, label %.lr.ph.i.split.us.i.us.i, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs4KPtkQIfQGm_13libp2p_webrtc.exit

.split69.us.i.us.i:                               ; preds = %.preheader75.i.us.i.preheader, %.preheader.i.us.us.i.us.preheader, %.preheader75.i.us.i, %.preheader.i.us.us.i.us, %.preheader.i.preheader.us.i
  %spec.select86 = phi i64 [ -1, %.preheader.i.us.us.i.us ], [ -1, %.preheader.i.preheader.us.i ], [ 0, %.preheader75.i.us.i ], [ -1, %.preheader.i.us.us.i.us.preheader ], [ 0, %.preheader75.i.us.i.preheader ]
  %i.fa = icmp eq i64 %i.cl, %i.e
  br i1 %i.fa, label %_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs4KPtkQIfQGm_13libp2p_webrtc.exit, label %bb.g

.preheader.i.preheader.us.i:                      ; preds = %.preheader74.i.us.i.preheader, %.preheader74.i.us.i
  br i1 %.not73.i.us130.i, label %.split69.us.i.us.i, label %.split71.us.i.i

default.unreachable:                              ; preds = %bb.a
  unreachable

.split71.us.i.i:                                  ; preds = %.preheader.i.preheader.us.i, %.lr.ph251
  %.us-phi72.i.i = phi i64 [ %i.ea, %.lr.ph251 ], [ %i.cf, %.preheader.i.preheader.us.i ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi72.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29, !noalias !79
  unreachable

_RNvYNtNtNtCskKLDkoKarTP_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %.split69.us.i.us.i, %bb.g, %.lr.ph.i.split.i.us.i, %.sink.split.i.i.us.i, %.lr.ph.i.split.us.i.us.i, %.loopexit.split.us.us.i, %.lr.ph.i.split.us.i.us.i.us, %.loopexit.split.us.us.i.us, %.lr.ph262, %.lr.ph, %.lr.ph217.i, %.lr.ph.preheader, %bb.f, %thread-pre-split.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit16.i.i.us.i, %.lr.ph.split.us.split.split.us.i, %.lr.ph206.split.us.i, %.lr.ph201.split.us.i, %.split114.us.i.sink.split, %.split.us.i, %.split.us125.i, %.split.us115.i
  %.sroa.0.0 = phi i64 [ %.promoted99.i, %bb.f ], [ %.promoted99.i, %thread-pre-split.i ], [ %1, %.lr.ph.split.us.split.split.us.i ], [ %.promoted99.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit12.i.i.us.i ], [ %1, %.lr.ph206.split.us.i ], [ %1, %.split.us.i ], [ %1, %.split.us115.i ], [ %1, %.split.us125.i ], [ %.sink132.i.us.i49.lcssa51.us61, %.lr.ph.i.split.us.i.us.i ], [ %.sink132.i.us.i49.lcssa51.us61, %.lr.ph.i.split.i.us.i ], [ %.sink132.i.us.i49.lcssa51.us61, %.lr.ph.i.split.us.i.us.i.us ], [ %i.bx, %.lr.ph262 ], [ %.promoted99.i, %.lr.ph217.i ], [ %1, %.lr.ph.preheader ], [ %1, %.split114.us.i.sink.split ], [ %1, %.lr.ph201.split.us.i ], [ %.promoted99.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit16.i.i.us.i ], [ %.promoted99.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit14.i.i.us.i ], [ %1, %.lr.ph ], [ %.sink132.i.us.i49.lcssa51.us61, %.loopexit.split.us.us.i.us ], [ %.sink132.i.us.i49.lcssa51.us61, %.loopexit.split.us.us.i ], [ %.sink132.i.us.i49.lcssa51.us61, %.sink.split.i.i.us.i ], [ %.sink132.i.us.i49.lcssa51.us61, %bb.g ], [ %1, %.split69.us.i.us.i ] ; 2 uses
  %i.fb = sub nuw i64 %1, %.sroa.0.0
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fd = insertvalue { ptr, i64 } poison, ptr %i.fc, 0
  %i.fe = insertvalue { ptr, i64 } %i.fd, i64 %i.fb, 1
  ret { ptr, i64 } %i.fe
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtCskKLDkoKarTP_4core3stre9ends_withReECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEE4bindINtNtCskKLDkoKarTP_4core3pin3PinINtNtB18_5boxed3BoxNCNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB3r_7Session3new00EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMNtCs4OgC6VQp05E_11webrtc_srtp7sessionNtB1Y_7Session3new00EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef %3)
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !18, !noundef !18 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = invoke fastcc noundef ptr @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE10bind_innerCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4join10JoinHandleuEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.h, 1
  ret { ptr, ptr } %i.k

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4join10JoinHandleuEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEE4bindINtNtCskKLDkoKarTP_4core3pin3PinINtNtB18_5boxed3BoxNCNCNvMNtCsbCXxVlMkWND_6webrtc12data_channelNtB3r_14RTCDataChannel11handle_open00EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMNtCsbCXxVlMkWND_6webrtc12data_channelNtB1Y_14RTCDataChannel11handle_open00EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef %3)
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !18, !noundef !18 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = invoke fastcc noundef ptr @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE10bind_innerCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4join10JoinHandleuEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.h, 1
  ret { ptr, ptr } %i.k

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4join10JoinHandleuEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEE4bindINtNtCskKLDkoKarTP_4core3pin3PinINtNtB18_5boxed3BoxNCNCNvMNtCsbCXxVlMkWND_6webrtc12data_channelNtB3r_14RTCDataChannel9read_loop0s0_0EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMNtCsbCXxVlMkWND_6webrtc12data_channelNtB1Y_14RTCDataChannel9read_loop0s0_0EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef %3)
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !18, !noundef !18 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = invoke fastcc noundef ptr @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE10bind_innerCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4join10JoinHandleuEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.h, 1
  ret { ptr, ptr } %i.k

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4join10JoinHandleuEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEE4bindINtNtCskKLDkoKarTP_4core3pin3PinINtNtB18_5boxed3BoxNCNCNvMNtCsbCXxVlMkWND_6webrtc12data_channelNtB3r_14RTCDataChannel9read_loop0s1_0EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMNtCsbCXxVlMkWND_6webrtc12data_channelNtB1Y_14RTCDataChannel9read_loop0s1_0EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef %3)
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !18, !noundef !18 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = invoke fastcc noundef ptr @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE10bind_innerCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4join10JoinHandleuEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.h, 1
  ret { ptr, ptr } %i.k

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4join10JoinHandleuEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEE4bindINtNtCskKLDkoKarTP_4core3pin3PinINtNtB18_5boxed3BoxNCNCNvMNtCsbCXxVlMkWND_6webrtc12data_channelNtB3r_14RTCDataChannel9read_loop0s2_0EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsc13h7DQFCSE_5tokio7runtime4task8new_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvMNtCsbCXxVlMkWND_6webrtc12data_channelNtB1Y_14RTCDataChannel9read_loop0s2_0EEINtNtB1n_4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef %3)
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !18, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !18, !noundef !18 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
