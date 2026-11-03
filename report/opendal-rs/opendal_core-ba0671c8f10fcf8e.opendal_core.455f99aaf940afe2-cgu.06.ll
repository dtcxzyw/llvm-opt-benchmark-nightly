Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.06?download=true
inline.NumInlined: 684
inline.NumDeleted: 367
begin_hunk_0_@_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalReE4nextCs5XgW7KoffLW_12opendal_core:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !642, !noundef !10 ; 16 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.bq = add nsw i64 %i.bo, -1                   ; 5 uses
  br i1 %i.bk, label %bb.s, label %bb.z

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.j ], [ %..i.i.peel, %bb.k ], [ 1, %bb.i ]
  %i.br = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 16 uses
  store i64 %i.br, ptr %i.h, align 8, !alias.scope !648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp ult i64 %i.br, %.val1
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.n
  %i.bt = icmp eq i64 %i.br, %.val1
  br i1 %i.bt, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !645, !noalias !650, !noundef !10
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i, %bb.m
  %i.bx = icmp samesign eq i64 %i.br, %.val1
  br i1 %i.bx, label %.loopexit51.thread, label %bb.q

.loopexit51.thread:                               ; preds = %bb.p
  store i8 0, ptr %i.l, align 8, !alias.scope !643
  br label %bb.ah

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %i.br
  %i.bz = load i8, ptr %i.by, align 1, !noalias !651, !noundef !10 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %.loopexit.i, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i: ; preds = %bb.q
  %i.cb = add nuw nsw i64 %i.br, 1
  %i.cc = icmp samesign ne i64 %i.cb, %.val1
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.cd, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i, label %.loopexit.i

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i
  %i.ce = add nuw nsw i64 %i.br, 2
  %i.cf = icmp samesign ne i64 %i.ce, %.val1
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i, label %.loopexit.i

_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i
  %i.ch = add nuw nsw i64 %i.br, 3
  %i.ci = icmp samesign ne i64 %i.ch, %.val1
  tail call void @llvm.assume(i1 %i.ci)
  br label %.loopexit.i

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.d, %.split.i.i.i.peel
  %.lcssa47 = phi i8 [ %.promoted51.i, %.split.i.i.i.peel ], [ %.promoted51.i, %bb.d ], [ 1, %.split.i.i.i ], [ 1, %bb.o ]
  %.lcssa44 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.d ], [ %i.br, %.split.i.i.i ], [ %i.br, %bb.o ]
  %i.cj = xor i8 %.lcssa47, 1
  store i8 %i.cj, ptr %i.l, align 8, !alias.scope !643
  tail call void @_RNvNtCsgxBkk5gSRhY_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef %.lcssa44, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #27, !noalias !650
  unreachable

.loopexit51:                                      ; preds = %bb.e
  %i.ck = xor i8 %.promoted51.i, 1
  store i8 %i.ck, ptr %i.l, align 8, !alias.scope !643
  br i1 %i.m, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %.loopexit51
  store i8 1, ptr %i.i, align 2, !alias.scope !643
  br label %bb.ai

.loopexit.i:                                      ; preds = %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i, %bb.q, %bb.h
  %.lcssa46 = phi i64 [ %.promoted.i, %bb.h ], [ %i.br, %bb.q ], [ %i.br, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit12.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit14.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCsgxBkk5gSRhY_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit16.i.i.i ] ; 2 uses
  store i8 0, ptr %i.l, align 8, !alias.scope !643
  br label %bb.ah

bb.s:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %.promoted.i.i = load i64, ptr %i.bp, align 8, !alias.scope !655 ; 3 uses
  %i.cl = add i64 %.promoted.i.i, %i.bq           ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %.val1
  br i1 %i.cm, label %.lr.ph.i1.i, label %._crit_edge.i.i

.lr.ph.i1.i:                                      ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !655, !noundef !10 ; 2 uses
  %i.cp = load i64, ptr %i.h, align 8, !alias.scope !655
  %.fr62.i = freeze i64 %i.cp                     ; 10 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !655
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr62.i, i64 range(i64 0, -9223372036854775808) %i.bo) ; 2 uses
  %i.cs = add i64 %.fr62.i, -1                    ; 2 uses
  %.first_iter.i2.i = icmp ult i64 %i.cs, %i.bo
  %i.ct = sub i64 1, %.fr62.i                     ; 2 uses
  br i1 %.first_iter.i2.i, label %.lr.ph.split.us.i.us.i.preheader, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i1.i
  %exitcond.not.i.i100.not = icmp ult i64 %.fr62.i, %i.bo
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.us.i.preheader:                 ; preds = %.lr.ph.i1.i
  %exitcond.not.i.us.i105.not = icmp ult i64 %.fr62.i, %i.bo
  %.not33.i.us.us.i108 = icmp eq i64 %.fr62.i, 0
  br label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.i.us.i.preheader, %bb.v
  %i.cu = phi i64 [ %i.dv, %bb.v ], [ %i.cl, %.lr.ph.split.us.i.us.i.preheader ]
  %i.cv = phi i64 [ %.sink.i3.us.i, %bb.v ], [ %.promoted.i.i, %.lr.ph.split.us.i.us.i.preheader ] ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cu
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !653, !noalias !656, !noundef !10
  %i.cy = and i8 %i.cx, 63
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.da, %i.co
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.u, label %.preheader34.i.us.i.preheader

.preheader34.i.us.i.preheader:                    ; preds = %.lr.ph.split.us.i.us.i
  br i1 %exitcond.not.i.us.i105.not, label %.lr.ph107, label %.preheader.i4.us.us.i.preheader

.preheader34.i.us.i:                              ; preds = %.lr.ph107
  %i.dd = add i64 %.sroa.04.0.us.i.us.i106, 1     ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.dd, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %.preheader.i4.us.us.i.preheader, label %.lr.ph107

.preheader.i4.us.us.i.preheader:                  ; preds = %.preheader34.i.us.i, %.preheader34.i.us.i.preheader
  br i1 %.not33.i.us.us.i108, label %.split.us.i.i, label %.lr.ph110

.lr.ph107:                                        ; preds = %.preheader34.i.us.i.preheader, %.preheader34.i.us.i
  %.sroa.04.0.us.i.us.i106 = phi i64 [ %i.dd, %.preheader34.i.us.i ], [ %.fr62.i, %.preheader34.i.us.i.preheader ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.us.i.us.i106
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !654, !noalias !656, !noundef !10
  %i.dg = add i64 %.sroa.04.0.us.i.us.i106, %i.cv ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %.val1
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dg
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !653, !noalias !656, !noundef !10
  %.not20.us.i.us.i = icmp eq i8 %i.df, %i.dj
  br i1 %.not20.us.i.us.i, label %.preheader34.i.us.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph107
  %i.dk = add i64 %i.cv, %i.ct
  %i.dl = add i64 %i.dk, %.sroa.04.0.us.i.us.i106
  br label %bb.v

.preheader.i4.us.us.i:                            ; preds = %.lr.ph110
  %.not33.i.us.us.i = icmp eq i64 %i.dm, 0
  br i1 %.not33.i.us.us.i, label %.split.us.i.i, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader.i4.us.us.i.preheader, %.preheader.i4.us.us.i
  %.sroa.2.0.us.i.us.us.i109 = phi i64 [ %i.dm, %.preheader.i4.us.us.i ], [ %.fr62.i, %.preheader.i4.us.us.i.preheader ]
  %i.dm = add i64 %.sroa.2.0.us.i.us.us.i109, -1  ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !654, !noalias !656, !noundef !10
  %i.dp = add i64 %i.dm, %i.cv                    ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %.val1
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dp
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !653, !noalias !656, !noundef !10
  %.not.us.i.us.us.i = icmp eq i8 %i.do, %i.ds
  br i1 %.not.us.i.us.us.i, label %.preheader.i4.us.us.i, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.lr.ph110
  %i.dt = add i64 %i.cv, %i.cr
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.us.i.us.i
  %i.du = add i64 %i.cv, %i.bo
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.split.us.us.i, %bb.t
  %.sink.i3.us.i = phi i64 [ %i.du, %bb.u ], [ %i.dl, %bb.t ], [ %i.dt, %.split.us.us.i ] ; 3 uses
  store i64 %.sink.i3.us.i, ptr %i.bp, align 8, !alias.scope !655
  %i.dv = add i64 %.sink.i3.us.i, %i.bq           ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %.val1
  br i1 %i.dw, label %.lr.ph.split.us.i.us.i, label %._crit_edge.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %bb.y
  %i.dx = phi i64 [ %i.eq, %bb.y ], [ %i.cl, %.lr.ph.split.us.i.i.preheader ]
  %i.dy = phi i64 [ %.sink.i3.i, %bb.y ], [ %.promoted.i.i, %.lr.ph.split.us.i.i.preheader ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dx
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !653, !noalias !656, !noundef !10
  %i.eb = and i8 %i.ea, 63
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.ed, %i.co
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.x, label %.preheader34.i.i.preheader

.preheader34.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
  br i1 %exitcond.not.i.i100.not, label %.lr.ph102, label %.preheader.i4.i

.preheader34.i.i:                                 ; preds = %.lr.ph102
  %i.eg = add i64 %.sroa.04.0.us.i.i101, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.eg, %umax.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i4.i, label %.lr.ph102

.lr.ph102:                                        ; preds = %.preheader34.i.i.preheader, %.preheader34.i.i
  %.sroa.04.0.us.i.i101 = phi i64 [ %i.eg, %.preheader34.i.i ], [ %.fr62.i, %.preheader34.i.i.preheader ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.us.i.i101
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !654, !noalias !656, !noundef !10
  %i.ej = add i64 %.sroa.04.0.us.i.i101, %i.dy    ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %.val1
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ej
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !653, !noalias !656, !noundef !10
  %.not20.us.i.i = icmp eq i8 %i.ei, %i.em
  br i1 %.not20.us.i.i, label %.preheader34.i.i, label %bb.w

.preheader.i4.i:                                  ; preds = %.preheader34.i.i.preheader, %.preheader34.i.i
  %.not33.i.i = icmp eq i64 %.fr62.i, 0
  br i1 %.not33.i.i, label %.split.us.i.i, label %.split31.us.i.i

.split31.us.i.i:                                  ; preds = %.preheader.i4.i
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27, !noalias !657
  unreachable

bb.w:                                             ; preds = %.lr.ph102
  %i.en = add i64 %i.dy, %i.ct
  %i.eo = add i64 %i.en, %.sroa.04.0.us.i.i101
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ep = add i64 %i.dy, %i.bo
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink.i3.i = phi i64 [ %i.ep, %bb.x ], [ %i.eo, %bb.w ] ; 3 uses
  store i64 %.sink.i3.i, ptr %i.bp, align 8, !alias.scope !655
  %i.eq = add i64 %.sink.i3.i, %i.bq              ; 2 uses
  %i.er = icmp ult i64 %i.eq, %.val1
  br i1 %i.er, label %.lr.ph.split.us.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.v, %bb.s
  store i64 %.val1, ptr %i.bp, align 8, !alias.scope !655
  br label %bb.ai

.split.us.i.i:                                    ; preds = %.preheader.i4.us.us.i.preheader, %.preheader.i4.us.us.i, %.preheader.i4.i
  %.us-phi.i = phi i64 [ %i.dy, %.preheader.i4.i ], [ %i.cv, %.preheader.i4.us.us.i ], [ %i.cv, %.preheader.i4.us.us.i.preheader ] ; 2 uses
  %i.es = add i64 %.us-phi.i, %i.bo               ; 2 uses
  store i64 %i.es, ptr %i.bp, align 8, !alias.scope !655
  br label %bb.ah

bb.z:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %.promoted.i5.i = load i64, ptr %i.bp, align 8, !alias.scope !661 ; 2 uses
  %i.et = add i64 %.promoted.i5.i, %i.bq          ; 2 uses
  %i.eu = icmp ult i64 %i.et, %.val1
  br i1 %i.eu, label %.lr.ph.i8.i, label %._crit_edge.i6.i

.lr.ph.i8.i:                                      ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !661, !noundef !10
  %i.ex = load i64, ptr %i.h, align 8, !alias.scope !661 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !661 ; 2 uses
  %i.fa = sub i64 %i.bo, %i.ez
  %invariant.op = sub i64 1, %i.ex
  br label %.lr.ph.split.i.i

._crit_edge.i6.i:                                 ; preds = %bb.ac, %bb.z
  store i64 %.val1, ptr %i.bp, align 8, !alias.scope !661
  br label %bb.ai

.lr.ph.split.i.i:                                 ; preds = %bb.ac, %.lr.ph.i8.i
  %i.fb = phi i64 [ %.sink69.i.i, %bb.ac ], [ %i.bj, %.lr.ph.i8.i ] ; 3 uses
  %i.fc = phi i64 [ %i.fn, %bb.ac ], [ %i.et, %.lr.ph.i8.i ]
  %i.fd = phi i64 [ %.sink70.i.i, %bb.ac ], [ %.promoted.i5.i, %.lr.ph.i8.i ] ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fc
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !659, !noalias !656, !noundef !10
  %i.fg = and i8 %i.ff, 63
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fi, %i.ew
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.split.i.i
  %i.fl = add i64 %i.fd, %i.bo
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.i.i
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.fb, i64 %i.ex) ; 2 uses
  %i.fm = icmp ult i64 %.sroa.0.0.i.i.i, %i.bo
  br i1 %i.fm, label %.lr.ph, label %.preheader35.i.i.preheader

bb.ac:                                            ; preds = %bb.ag, %bb.af, %bb.aa
  %.sink70.i.i = phi i64 [ %i.gj, %bb.ag ], [ %i.gi, %bb.af ], [ %i.fl, %bb.aa ] ; 3 uses
  %.sink69.i.i = phi i64 [ 0, %bb.ag ], [ %i.fa, %bb.af ], [ 0, %bb.aa ] ; 2 uses
  store i64 %.sink70.i.i, ptr %i.bp, align 8, !alias.scope !661
  store i64 %.sink69.i.i, ptr %i.bi, align 8, !alias.scope !661
  %i.fn = add i64 %.sink70.i.i, %i.bq             ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %.val1
  br i1 %i.fo, label %.lr.ph.split.i.i, label %._crit_edge.i6.i

bb.ad:                                            ; preds = %.lr.ph
  %i.fp = add nuw nsw i64 %.sroa.04.0.i.i96, 1    ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.bo
  br i1 %i.fq, label %.lr.ph, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %bb.ad, %bb.ab
  %i.fr = icmp ult i64 %i.fb, %i.ex
  br i1 %i.fr, label %.lr.ph98, label %.split.us.i9.i

.lr.ph:                                           ; preds = %bb.ab, %bb.ad
  %.sroa.04.0.i.i96 = phi i64 [ %i.fp, %bb.ad ], [ %.sroa.0.0.i.i.i, %bb.ab ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.i.i96
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !660, !noalias !656, !noundef !10
  %i.fu = add i64 %.sroa.04.0.i.i96, %i.fd        ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %.val1
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fu
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !659, !noalias !656, !noundef !10
  %.not20.i.i = icmp eq i8 %i.ft, %i.fx
  br i1 %.not20.i.i, label %bb.ad, label %bb.ag

.preheader35.i.i:                                 ; preds = %bb.ae
  %i.fy = icmp ult i64 %i.fb, %i.ga
  br i1 %i.fy, label %.lr.ph98, label %.split.us.i9.i

.split.us.i9.i:                                   ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %i.fz = add i64 %i.fd, %i.bo                    ; 2 uses
  store i64 %i.fz, ptr %i.bp, align 8, !alias.scope !661
  store i64 0, ptr %i.bi, align 8, !alias.scope !661
  br label %bb.ah

.lr.ph98:                                         ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.2.0.i.i97 = phi i64 [ %i.ga, %.preheader35.i.i ], [ %i.ex, %.preheader35.i.i.preheader ]
  %i.ga = add i64 %.sroa.2.0.i.i97, -1            ; 6 uses
  %i.gb = icmp ult i64 %i.ga, %i.bo
  br i1 %i.gb, label %bb.ae, label %.split31.us.i10.i

bb.ae:                                            ; preds = %.lr.ph98
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ga
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !660, !noalias !656, !noundef !10
  %i.ge = add i64 %i.ga, %i.fd                    ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %.val1
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ge
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !659, !noalias !656, !noundef !10
  %.not.i11.i = icmp eq i8 %i.gd, %i.gh
  br i1 %.not.i11.i, label %.preheader35.i.i, label %bb.af

.split31.us.i10.i:                                ; preds = %.lr.ph98
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.ga, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27, !noalias !662
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.gi = add i64 %i.fd, %i.ez
  br label %bb.ac

bb.ag:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.fd, %invariant.op
  %i.gj = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i96
  br label %bb.ac

bb.ah:                                            ; preds = %.loopexit51.thread, %.split.us.i9.i, %.split.us.i.i, %.loopexit.i, %.loopexit51
  %.sroa.8.0.ph = phi i64 [ %.val1, %.loopexit51 ], [ %.lcssa46, %.loopexit.i ], [ %i.fz, %.split.us.i9.i ], [ %i.es, %.split.us.i.i ], [ %.val1, %.loopexit51.thread ]
  %.sroa.4.02.ph = phi i64 [ %.val1, %.loopexit51 ], [ %.lcssa46, %.loopexit.i ], [ %i.fd, %.split.us.i9.i ], [ %.us-phi.i, %.split.us.i.i ], [ %.val1, %.loopexit51.thread ]
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !noundef !10 ; 2 uses
  %i.gm = sub nuw i64 %.sroa.4.02.ph, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gl
  store i64 %.sroa.8.0.ph, ptr %i.gk, align 8
  br label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalReE7get_endCs5XgW7KoffLW_12opendal_core.exit

bb.ai:                                            ; preds = %.preheader.i, %bb.r, %._crit_edge.i.i, %._crit_edge.i6.i
  store i8 1, ptr %i.a, align 1, !alias.scope !663
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gp = load i8, ptr %i.go, align 8, !range !22, !alias.scope !663, !noundef !10
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %._crit_edge.i, label %bb.aj

._crit_edge.i:                                    ; preds = %bb.ai
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !663
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !663
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !663, !noundef !10 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !663, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %i.gs, %i.gu
  br i1 %.not.i, label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalReE7get_endCs5XgW7KoffLW_12opendal_core.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i
  %i.gv = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.gs, %bb.aj ]
  %i.gw = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.gu, %bb.aj ] ; 2 uses
  %i.gx = sub nuw i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gw
  br label %_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalReE7get_endCs5XgW7KoffLW_12opendal_core.exit

_RNvMsf_NtNtCsgxBkk5gSRhY_4core3str4iterINtB5_13SplitInternalReE7get_endCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.gm, %bb.ah ], [ %i.gx, %bb.ak ], [ undef, %bb.aj ]
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.gn, %bb.ah ], [ %i.gy, %bb.ak ], [ null, %bb.aj ]
  %i.gz = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.ha = insertvalue { ptr, i64 } %i.gz, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.ha
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE6insertCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 7 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !669, !noundef !10 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !671
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !669, !noundef !10
  invoke void @_RINvMs_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB1h_14LeafOrInternalE11search_treeB1x_ECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.e unwind label %bb.h, !noalias !672

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload4 = load i64, ptr %2, align 8, !alias.scope !673
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx6, i64 16, i1 false), !alias.scope !673
  br label %_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE5entryCs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !672
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !range !11, !noalias !671, !noundef !10
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !674
  %.sroa.9.8..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.8.copyload8 = load ptr, ptr %.sroa.9.8..sroa_idx7, align 8, !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !671
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE5entryCs5XgW7KoffLW_12opendal_core.exit.thread unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %.sroa.11.32.copyload = load ptr, ptr %i.m, align 8, !noalias !674
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.32..sroa_idx, i64 16, i1 false), !noalias !674
  %.sroa.0.0.copyload3 = load i64, ptr %2, align 8, !alias.scope !673
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx5, i64 16, i1 false), !alias.scope !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !671
  br label %_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE5entryCs5XgW7KoffLW_12opendal_core.exit

bb.h:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %.thread13 unwind label %bb.d, !noalias !672

bb.i:                                             ; preds = %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread13

_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE5entryCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.g, %bb.c
  %.sroa.11.0 = phi ptr [ null, %bb.c ], [ %.sroa.11.32.copyload, %bb.g ] ; 2 uses
  %.sroa.0.09 = phi i64 [ %.sroa.0.0.copyload4, %bb.c ], [ %.sroa.0.0.copyload3, %bb.g ] ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.09, -1
  br i1 %i.o, label %_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE5entryCs5XgW7KoffLW_12opendal_core.exit.thread, label %bb.j

_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE5entryCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %bb.f, %_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE5entryCs5XgW7KoffLW_12opendal_core.exit
  %.sroa.9.024 = phi ptr [ %1, %_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE5entryCs5XgW7KoffLW_12opendal_core.exit ], [ %.sroa.9.8.copyload8, %bb.f ]
  %.sroa.11.023 = phi ptr [ %.sroa.11.0, %_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE5entryCs5XgW7KoffLW_12opendal_core.exit ], [ %1, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.9.024, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.11.023, ptr %.sroa.11.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @_RNvMs5_NtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE6insertCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.j:                                             ; preds = %_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE5entryCs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.0.09, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE12insert_entryCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  %i.p = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCs6i54tJFfzR_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE8into_mutCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.k:                                             ; preds = %_RNvMsi_NtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE5entryCs5XgW7KoffLW_12opendal_core.exit.thread, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  ret void

bb.l:                                             ; preds = %.thread13
  resume { ptr, i32 } %eh.lpad-body16
end_hunk_0
