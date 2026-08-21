Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/ternary?download=true
inline.NumInlined: 252
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal13ternary_roundERlS1_:bb.a

bb.j:                                             ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #12
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bm, ptr %i.au, align 8, !tbaa !16
  store ptr %i.bq, ptr %i.av, align 8, !tbaa !12
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.br, ptr %i.ax, align 8, !tbaa !174
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.04593, i64 4 ; 2 uses
  %.not59 = icmp eq ptr %i.bs, %i.ab
  br i1 %.not59, label %.thread77, label %.lr.ph94

.thread77:                                        ; preds = %bb.e, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, %bb.d, %._crit_edge, %bb.c, %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.070.096, i64 8 ; 2 uses
  %.not84 = icmp eq ptr %i.bt, %i.d
  br i1 %.not84, label %._crit_edge99, label %bb.b

bb.l:                                             ; preds = %.lr.ph103, %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit
  %.sroa.066.0101 = phi i32 [ 1, %.lr.ph103 ], [ %i.dy, %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit ] ; 6 uses
  %i.bu = load volatile i8, ptr %i.k, align 8, !tbaa !180, !range !168, !noundef !169
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = load i32, ptr %i.m, align 4, !tbaa !181 ; 3 uses
  %.not.i61 = icmp eq i32 %i.bw, 0
  br i1 %.not.i61, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = add nsw i32 %i.bw, -1
  store i32 %i.bx, ptr %i.m, align 4, !tbaa !181
  %i.by = icmp eq i32 %i.bw, 1
  br i1 %i.by, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bz = load ptr, ptr %i.n, align 8, !tbaa !182
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 360
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !183 ; 3 uses
  %.not3.i = icmp eq ptr %i.cb, null
  br i1 %.not3.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i32, ptr %i.l, align 8, !tbaa !202 ; 2 uses
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.l, align 8, !tbaa !202
  %.not4.i = icmp eq i32 %i.cc, 0
  br i1 %.not4.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = load i32, ptr %i.o, align 8, !tbaa !203
  store i32 %i.ce, ptr %i.l, align 8, !tbaa !202
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !204
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cb), !inline_history !206
  br i1 %i.ci, label %.sink.split.i, label %bb.r

.sink.split.i:                                    ; preds = %bb.q, %bb.n
  store volatile i8 1, ptr %i.k, align 8, !tbaa !180
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.q
  %i.cj = load i64, ptr %1, align 8, !tbaa !164
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = load i64, ptr %2, align 8, !tbaa !164
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %.critedge

.critedge:                                        ; preds = %bb.s
  %i.cn = tail call i32 @llvm.abs.i32(i32 %.sroa.066.0101, i1 true) ; 3 uses
  %i.co = zext nneg i32 %i.cn to i64              ; 3 uses
  %i.cp = load ptr, ptr %i.p, align 8, !tbaa !177 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load i32, ptr %i.cq, align 1            ; 2 uses
  %i.cs = and i32 %i.cr, 117441536
  %or.cond18.not.i = icmp eq i32 %i.cs, 16778240
  br i1 %or.cond18.not.i, label %bb.t, label %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit

bb.t:                                             ; preds = %.critedge
  %i.ct = tail call noundef i32 @llvm.fshl.i32(i32 %i.cn, i32 %.sroa.066.0101, i32 1)
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !8   ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cu ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !12
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !16
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = lshr exact i64 %i.dc, 3
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = sub nsw i32 0, %.sroa.066.0101          ; 2 uses
  %i.dg = tail call noundef i32 @llvm.fshl.i32(i32 %i.cn, i32 %i.df, i32 1)
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !12
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !16
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = lshr exact i64 %i.do, 3
  %i.dq = trunc i64 %i.dp to i32                  ; 2 uses
  %i.dr = load i32, ptr %i.r, align 4, !tbaa !17  ; 2 uses
  %.not16.i = icmp slt i32 %i.dr, %i.de
  %.not17.i = icmp slt i32 %i.dr, %i.dq
  %or.cond.i = or i1 %.not16.i, %.not17.i
  br i1 %or.cond.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = icmp slt i32 %i.dq, %i.de
  %i.dt = select i1 %i.ds, i32 %i.df, i32 %.sroa.066.0101
  tail call void @_ZN7CaDiCaL8Internal11ternary_litEiRlS1_(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !177 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.co
  %.pre19.i = load i32, ptr %.phi.trans.insert.i, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.du = phi i32 [ %.pre19.i, %bb.u ], [ %i.cr, %bb.t ]
  %i.dv = phi ptr [ %.pre.i, %bb.u ], [ %i.cp, %bb.t ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.co
  %i.dx = and i32 %i.du, -1025
  store i32 %i.dx, ptr %i.dw, align 1
  br label %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit

_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit:    ; preds = %.critedge, %bb.v
  %i.dy = add i32 %.sroa.066.0101, 1
  %.not85 = icmp eq i32 %.sroa.066.0101, %i.j
  br i1 %.not85, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.l

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %_ZN7CaDiCaL8Internal11ternary_idxEiRlS1_.exit, %bb.s, %bb.r, %bb.l, %._crit_edge99, %.sink.split.i
  %i.dz = load ptr, ptr %i.h, align 8, !tbaa !178, !nonnull !169, !align !179
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !158 ; 5 uses
  %.not86107 = icmp eq i32 %i.ea, 0
  br i1 %.not86107, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !177 ; 3 uses
  %xtraiter = and i32 %i.ea, 1
  %i.ed = icmp eq i32 %i.ea, 1
  br i1 %i.ed, label %.epil.preheader, label %.lr.ph110.new

.lr.ph110.new:                                    ; preds = %.lr.ph110
  %unroll_iter = and i32 %i.ea, -2
  br label %bb.w

._crit_edge111.loopexit.unr-lcssa:                ; preds = %bb.w
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge111.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge111.loopexit.unr-lcssa, %.lr.ph110
  %.0109.epil.init = phi i32 [ 0, %.lr.ph110 ], [ %.1.1, %._crit_edge111.loopexit.unr-lcssa ]
  %.sroa.062.0108.epil.init = phi i32 [ 1, %.lr.ph110 ], [ %i.fa, %._crit_edge111.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i32 %i.ea to i1
  tail call void @llvm.assume(i1 %lcmp.mod138)
  %i.ee = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.062.0108.epil.init, i1 true)
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 1            ; 2 uses
  %i.ei = and i32 %i.eh, 117440512
  %i.ej = icmp eq i32 %i.ei, 16777216
  %i.ek = lshr i32 %i.eh, 10
  %i.el = and i32 %i.ek, 1
  %spec.select60.epil = select i1 %i.ej, i32 %i.el, i32 0
  %.1.epil = add nuw nsw i32 %spec.select60.epil, %.0109.epil.init
  br label %._crit_edge111.loopexit

._crit_edge111.loopexit:                          ; preds = %._crit_edge111.loopexit.unr-lcssa, %.epil.preheader
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge111.loopexit.unr-lcssa ], [ %.1.epil, %.epil.preheader ]
  %i.em = icmp ne i32 %.1.lcssa, 0
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %.0.lcssa = phi i1 [ false, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit ], [ %i.em, %._crit_edge111.loopexit ]
  tail call void @_ZN7CaDiCaL8Internal10reset_occsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  ret i1 %.0.lcssa

bb.w:                                             ; preds = %bb.w, %.lr.ph110.new
  %.0109 = phi i32 [ 0, %.lr.ph110.new ], [ %.1.1, %bb.w ]
  %.sroa.062.0108 = phi i32 [ 1, %.lr.ph110.new ], [ %i.fa, %bb.w ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph110.new ], [ %niter.next.1, %bb.w ]
  %i.en = zext nneg i32 %.sroa.062.0108 to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 1            ; 2 uses
  %i.eq = and i32 %i.ep, 117440512
  %i.er = icmp eq i32 %i.eq, 16777216
  %i.es = lshr i32 %i.ep, 10
  %i.et = and i32 %i.es, 1
  %spec.select60 = select i1 %i.er, i32 %i.et, i32 0
  %i.eu = add nuw nsw i32 %spec.select60, %.0109
  %3 = zext nneg i32 %.sroa.062.0108 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %3
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ev = load i32, ptr %5, align 1               ; 2 uses
  %i.ew = and i32 %i.ev, 117440512
  %i.ex = icmp eq i32 %i.ew, 16777216
  %i.ey = lshr i32 %i.ev, 10
  %i.ez = and i32 %i.ey, 1
  %spec.select60.1 = select i1 %i.ex, i32 %i.ez, i32 0
  %.1.1 = add nuw nsw i32 %spec.select60.1, %i.eu ; 3 uses
  %i.fa = add nuw nsw i32 %.sroa.062.0108, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge111.loopexit.unr-lcssa, label %bb.w
}

declare void @_ZN7CaDiCaL8Internal9init_occsEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal10reset_occsEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal7ternaryEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.d = load i32, ptr %i.c, align 4, !tbaa !207
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i8, ptr %i.e, align 4, !range !168
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 6 uses
  %i.i = load volatile i8, ptr %i.h, align 8, !tbaa !180, !range !168, !noundef !169
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !181  ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !181
  %i.o = icmp eq i32 %i.m, 1
  br i1 %i.o, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !182
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !183  ; 3 uses
  %.not3.i = icmp eq ptr %i.s, null
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.k, align 8, !tbaa !202  ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.k, align 8, !tbaa !202
  %.not4.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.w = load i32, ptr %i.v, align 8, !tbaa !203
  store i32 %i.w, ptr %i.k, align 8, !tbaa !202
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !204
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.s), !inline_history !206
  br i1 %i.aa, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.h, align 8, !tbaa !180
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !208
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4192 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !209
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !210, !range !168, !noundef !169
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i32, ptr %0, align 8, !tbaa !211
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !212, !range !168, !noundef !169
  %i.al = trunc nuw i8 %i.ak to i1
  %.pre56 = load i32, ptr %0, align 8, !tbaa !211 ; 2 uses
  %i.am = and i32 %.pre56, -257
  %spec.select = select i1 %i.al, i32 %.pre56, i32 %i.am
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.an = phi i32 [ %.pre, %._crit_edge ], [ %spec.select, %bb.j ]
  %i.ao = or i32 %i.an, 2560
  store i32 %i.ao, ptr %0, align 8, !tbaa !211
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4968 ; 4 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !213
  %i.ar = add nsw i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !213
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !214
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !214
  %.not40 = icmp eq ptr %i.at, %i.av
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7CaDiCaL8Internal13reset_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3960
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !215
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3824
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !216
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fmul nnan double %i.ba, 1.000000e-03
  %i.bc = sitofp i64 %i.ax to double
  %i.bd = fmul double %i.bb, %i.bc
  %i.be = fptosi double %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3816
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !217
  %i.bh = sext i32 %i.bg to i64
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.be, i64 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3812
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !218
  %i.bk = sext i32 %i.bj to i64
  %spec.store.select27 = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 %i.bk) ; 2 uses
  store i64 %spec.store.select27, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4208
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !219
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !220
  %i.bp = add nsw i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3808
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !221
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.bp, %i.bs                ; 2 uses
  %i.bu = sdiv i64 %i.bt, 100
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !164
  %i.bv = load volatile i8, ptr %i.h, align 8, !tbaa !180, !range !168, !noundef !169
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3800 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3828 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 5000 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3660 ; 2 uses
  %i.cc = load i32, ptr %i.l, align 4, !tbaa !181 ; 3 uses
  %.not.i32.peel = icmp eq i32 %i.cc, 0
  br i1 %.not.i32.peel, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.l, align 4, !tbaa !181
  %i.ce = icmp eq i32 %i.cc, 1
  br i1 %i.ce, label %.sink.split.i36, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !182
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 360
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !183 ; 3 uses
  %.not3.i33.peel = icmp eq ptr %i.ch, null
  br i1 %.not3.i33.peel, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = load i32, ptr %i.k, align 8, !tbaa !202 ; 2 uses
  %i.cj = add nsw i32 %i.ci, -1
  store i32 %i.cj, ptr %i.k, align 8, !tbaa !202
  %.not4.i34.peel = icmp eq i32 %i.ci, 0
  br i1 %.not4.i34.peel, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ck = load i32, ptr %i.bx, align 8, !tbaa !203
  store i32 %i.ck, ptr %i.k, align 8, !tbaa !202
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !204
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ch), !inline_history !206
  br i1 %i.co, label %.sink.split.i36, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.cp = load i32, ptr %i.by, align 4, !tbaa !222
  %i.cq = icmp slt i32 %i.cp, 1
  %i.cr = icmp slt i64 %i.bt, -99
  %or.cond29.peel = select i1 %i.cq, i1 true, i1 %i.cr
  %i.cs = icmp slt i64 %spec.store.select27, 0
  %or.cond31.peel = select i1 %or.cond29.peel, i1 true, i1 %i.cs
  br i1 %or.cond31.peel, label %.critedge, label %bb.s

end_hunk_0
