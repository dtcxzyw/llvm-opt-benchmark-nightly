Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/probe?download=true
inline.NumInlined: 751
inline.NumDeleted: 346
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal10next_probeEv:bb.a
.loopexit10:                                      ; preds = %bb.b, %.split
  %.3 = phi i32 [ %i.k, %.split ], [ 0, %bb.b ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal11probe_roundEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !247, !range !155, !noundef !156
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 4 uses
  %i.e = load volatile i8, ptr %i.d, align 8, !tbaa !269, !range !155, !noundef !156
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !270  ; 3 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !270
  %i.k = icmp eq i32 %i.i, 1
  br i1 %i.k, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 360
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !272  ; 3 uses
  %.not3.i = icmp eq ptr %i.o, null
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.g, align 8, !tbaa !291  ; 2 uses
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.g, align 8, !tbaa !291
  %.not4.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.s = load i32, ptr %i.r, align 8, !tbaa !292
  store i32 %i.s, ptr %i.g, align 8, !tbaa !291
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !293
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !inline_history !295
  br i1 %i.w, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.d, align 8, !tbaa !269
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !154, !range !155, !noundef !156
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %._crit_edge59, label %bb.i

._crit_edge59:                                    ; preds = %bb.h
  %.pre = load i32, ptr %0, align 8, !tbaa !296
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !297, !range !155, !noundef !156
  %i.ac = trunc nuw i8 %i.ab to i1
  %.pre60 = load i32, ptr %0, align 8, !tbaa !296 ; 2 uses
  %i.ad = and i32 %.pre60, -257
  %spec.select80 = select i1 %i.ac, i32 %.pre60, i32 %i.ad
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge59
  %i.ae = phi i32 [ %.pre, %._crit_edge59 ], [ %spec.select80, %bb.i ]
  %i.af = or i32 %i.ae, 640
  store i32 %i.af, ptr %0, align 8, !tbaa !296
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5232 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !298
  %i.ai = add nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !298
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3960
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !299
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.am = load i64, ptr %i.al, align 8, !tbaa !300
  %i.an = sub nsw i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !301
  %i.aq = sitofp i32 %i.ap to double
  %i.ar = fmul nnan double %i.aq, 1.000000e-03
  %i.as = sitofp i64 %i.an to double
  %i.at = fmul double %i.ar, %i.as
  %i.au = fptosi double %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3596
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !302
  %i.ax = sext i32 %i.aw to i64
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.au, i64 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !303
  %i.ba = sext i32 %i.az to i64
  %.1 = tail call i64 @llvm.smin.i64(i64 %spec.select, i64 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5536
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !304
  %sext43 = shl i64 %i.bc, 32
  %i.bd = ashr exact i64 %sext43, 31
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3952 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !231
  %i.bg = add i64 %i.bd, %i.bf
  %i.bh = add i64 %i.bg, %.1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 5256 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !245
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4680 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !305
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2160 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !253
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2168 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !253
  %i.bq = icmp eq ptr %i.bn, %i.bp
  br i1 %i.bq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN7CaDiCaL8Internal12flush_probesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !250, !nonnull !156, !align !251
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !182 ; 5 uses
  %.not4449 = icmp eq i32 %i.bt, 0
  br i1 %.not4449, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !188 ; 6 uses
  %xtraiter = and i32 %i.bt, 1
  %i.bw = icmp eq i32 %i.bt, 1
  br i1 %i.bw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.bt, -2
  br label %bb.m

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.m
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.sroa.036.050.epil.init = phi i32 [ 1, %.lr.ph ], [ %i.dm, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod87 = trunc i32 %i.bt to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.bx = sub nsw i32 0, %.sroa.036.050.epil.init
  %i.by = tail call i32 @llvm.abs.i32(i32 %.sroa.036.050.epil.init, i1 true) ; 2 uses
  %i.bz = tail call noundef i32 @llvm.fshl.i32(i32 %i.by, i32 %i.bx, i32 1)
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ca
  store i32 -1, ptr %i.cb, align 4, !tbaa !182
  %i.cc = tail call noundef i32 @llvm.fshl.i32(i32 %i.by, i32 %.sroa.036.050.epil.init, i32 1)
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cd
  store i32 -1, ptr %i.ce, align 4, !tbaa !182
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !186
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !188
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2                 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !210
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !209
  tail call void @_ZN7CaDiCaL8Internal18init_probehbr_lratEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.cp = load i8, ptr %i.a, align 4, !tbaa !247, !range !155, !noundef !156
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %.critedge, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 5448
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 5248 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.new
  %.sroa.036.050 = phi i32 [ 1, %.lr.ph.new ], [ %i.dm, %bb.m ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.m ]
  %i.da = sub nsw i32 0, %.sroa.036.050
  %1 = tail call i32 @llvm.abs.i32(i32 %.sroa.036.050, i1 true) ; 2 uses
  %i.db = tail call noundef i32 @llvm.fshl.i32(i32 %1, i32 %i.da, i32 1)
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dc
  store i32 -1, ptr %i.dd, align 4, !tbaa !182
  %2 = tail call noundef i32 @llvm.fshl.i32(i32 %1, i32 %.sroa.036.050, i32 1)
  %i.de = zext i32 %2 to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.de
  store i32 -1, ptr %i.df, align 4, !tbaa !182
  %i.dg = add nuw i32 %.sroa.036.050, 1           ; 2 uses
  %3 = xor i32 %.sroa.036.050, -1
  %4 = tail call i32 @llvm.abs.i32(i32 %i.dg, i1 true) ; 2 uses
  %i.dh = tail call noundef i32 @llvm.fshl.i32(i32 %4, i32 %3, i32 1)
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.di
  store i32 -1, ptr %i.dj, align 4, !tbaa !182
  %5 = tail call noundef i32 @llvm.fshl.i32(i32 %4, i32 %i.dg, i32 1)
  %i.dk = zext i32 %5 to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dk
  store i32 -1, ptr %i.dl, align 4, !tbaa !182
  %i.dm = add nuw i32 %.sroa.036.050, 2           ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.m

bb.n:                                             ; preds = %.lr.ph52, %_ZN7CaDiCaL8Internal19clean_probehbr_lratEv.exit
  %i.dn = load volatile i8, ptr %i.d, align 8, !tbaa !269, !range !155, !noundef !156
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = load i32, ptr %i.h, align 4, !tbaa !270 ; 3 uses
  %.not.i27 = icmp eq i32 %i.dp, 0
  br i1 %.not.i27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dq = add nsw i32 %i.dp, -1
  store i32 %i.dq, ptr %i.h, align 4, !tbaa !270
  %i.dr = icmp eq i32 %i.dp, 1
  br i1 %i.dr, label %.sink.split.i31, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ds = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 360
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !272 ; 3 uses
  %.not3.i28 = icmp eq ptr %i.du, null
  br i1 %.not3.i28, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dv = load i32, ptr %i.g, align 8, !tbaa !291 ; 2 uses
  %i.dw = add nsw i32 %i.dv, -1
  store i32 %i.dw, ptr %i.g, align 8, !tbaa !291
  %.not4.i29 = icmp eq i32 %i.dv, 0
  br i1 %.not4.i29, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dx = load i32, ptr %i.cr, align 8, !tbaa !292
  store i32 %i.dx, ptr %i.g, align 8, !tbaa !291
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !293
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = tail call noundef zeroext i1 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.du), !inline_history !295
  br i1 %i.eb, label %.sink.split.i31, label %bb.t

.sink.split.i31:                                  ; preds = %bb.s, %bb.p
  store volatile i8 1, ptr %i.d, align 8, !tbaa !269
  br label %.critedge

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.s
  %i.ec = load i64, ptr %i.be, align 8, !tbaa !231
  %i.ed = icmp slt i64 %i.ec, %i.bh
  br i1 %i.ed, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %.pre.i = load ptr, ptr %i.bm, align 8, !tbaa !253
  %.pre21.i = load ptr, ptr %i.bo, align 8, !tbaa !253
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.outer.i, %bb.u
  %.promoted1423.i = phi ptr [ %.pre21.i, %bb.u ], [ %.promoted1424.i, %.outer.i ] ; 2 uses
  %i.ee = phi ptr [ %.pre.i, %bb.u ], [ %i.eg, %.outer.i ] ; 2 uses
  %.06.i = phi i32 [ 0, %bb.u ], [ %.1.i, %.outer.i ] ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %.promoted1423.i
  br i1 %i.ef, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.loopexit.i
  %.not.i33 = icmp eq i32 %.06.i, 0
  br i1 %.not.i33, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN7CaDiCaL8Internal15generate_probesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %.pre22.i = load ptr, ptr %i.bm, align 8, !tbaa !253
  %.promoted14.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !253
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit.i
  %.promoted14.i = phi ptr [ %.promoted14.pre.i, %bb.w ], [ %.promoted1423.i, %.loopexit.i ]
  %i.eg = phi ptr [ %.pre22.i, %bb.w ], [ %i.ee, %.loopexit.i ] ; 2 uses
  %.1.i = phi i32 [ 1, %bb.w ], [ %.06.i, %.loopexit.i ]
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %bb.x
  %.promoted1424.i = phi ptr [ %.promoted14.i, %bb.x ], [ %i.ei, %.outer.i.backedge ] ; 3 uses
  %i.eh = icmp eq ptr %i.eg, %.promoted1424.i
  br i1 %i.eh, label %.loopexit.i, label %bb.y, !llvm.loop !267

bb.y:                                             ; preds = %.outer.i
  %i.ei = getelementptr inbounds i8, ptr %.promoted1424.i, i64 -4 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !182 ; 5 uses
  store ptr %i.ei, ptr %i.bo, align 8, !tbaa !186
  %i.ek = tail call noundef i32 @llvm.abs.i32(i32 %i.ej, i1 true) ; 2 uses
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = load ptr, ptr %i.cs, align 8, !tbaa !185
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.el
  %i.eo = load i32, ptr %i.en, align 1
  %i.ep = and i32 %i.eo, 117440512
  %i.eq = icmp eq i32 %i.ep, 16777216
  br i1 %i.eq, label %.split.i, label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.y, %.split.i
  br label %.outer.i, !llvm.loop !268

.split.i:                                         ; preds = %bb.y
  %i.er = tail call noundef i32 @llvm.fshl.i32(i32 %i.ek, i32 %i.ej, i32 1)
  %i.es = zext i32 %i.er to i64
  %i.et = load ptr, ptr %i.ct, align 8, !tbaa !188
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.es
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !182
  %i.ew = sext i32 %i.ev to i64
  %i.ex = load i64, ptr %i.cu, align 8, !tbaa !208
  %.not9.not.i = icmp sgt i64 %i.ex, %i.ew
  br i1 %.not9.not.i, label %_ZN7CaDiCaL8Internal10next_probeEv.exit, label %.outer.i.backedge

_ZN7CaDiCaL8Internal10next_probeEv.exit:          ; preds = %.split.i
  %.not = icmp eq i32 %i.ej, 0
  br i1 %.not, label %.critedge, label %bb.z

bb.z:                                             ; preds = %_ZN7CaDiCaL8Internal10next_probeEv.exit
  %i.ey = load i64, ptr %i.cv, align 8, !tbaa !306
  %i.ez = add nsw i64 %i.ey, 1
  store i64 %i.ez, ptr %i.cv, align 8, !tbaa !306
  tail call void @_ZN7CaDiCaL8Internal21probe_assign_decisionEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.ej)
  %i.fa = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal15probe_propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.fa, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  tail call void @_ZN7CaDiCaL8Internal14failed_literalEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.ej)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fb = load i8, ptr %i.cw, align 8, !tbaa !162, !range !155, !noundef !156
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = load i32, ptr %i.cx, align 8
  %.not.i34 = icmp eq i32 %i.fd, 0
  %or.cond.i = select i1 %i.fc, i1 %.not.i34, i1 false
  br i1 %or.cond.i, label %bb.ad, label %_ZN7CaDiCaL8Internal19clean_probehbr_lratEv.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fe = load ptr, ptr %i.cy, align 8, !tbaa !163 ; 2 uses
  %i.ff = load ptr, ptr %i.cz, align 8, !tbaa !163 ; 2 uses
  %.not1519.i = icmp eq ptr %i.fe, %i.ff
  br i1 %.not1519.i, label %_ZN7CaDiCaL8Internal19clean_probehbr_lratEv.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %bb.ad, %._crit_edge.i
  %.sroa.012.020.i = phi ptr [ %i.fj, %._crit_edge.i ], [ %i.fe, %bb.ad ] ; 3 uses
  %i.fg = load ptr, ptr %.sroa.012.020.i, align 8, !tbaa !164 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !164 ; 2 uses
  %.not1617.i = icmp eq ptr %i.fg, %i.fi
  br i1 %.not1617.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i, %.lr.ph22.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i, i64 24 ; 2 uses
  %.not15.i = icmp eq ptr %i.fj, %i.ff
  br i1 %.not15.i, label %_ZN7CaDiCaL8Internal19clean_probehbr_lratEv.exit, label %.lr.ph22.i

.lr.ph.i:                                         ; preds = %.lr.ph22.i, %_ZNSt6vectorImSaImEE5clearEv.exit.i
  %.sroa.08.018.i = phi ptr [ %i.fn, %_ZNSt6vectorImSaImEE5clearEv.exit.i ], [ %i.fg, %.lr.ph22.i ] ; 3 uses
  %i.fk = load ptr, ptr %.sroa.08.018.i, align 8, !tbaa !166 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.08.018.i, i64 8 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !167
  %.not.i.i.i = icmp eq ptr %i.fm, %i.fk
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEE5clearEv.exit.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %.lr.ph.i
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !167
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

_ZNSt6vectorImSaImEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i, %.lr.ph.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.08.018.i, i64 24 ; 2 uses
  %.not16.i = icmp eq ptr %i.fn, %i.fi
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i

_ZN7CaDiCaL8Internal19clean_probehbr_lratEv.exit: ; preds = %._crit_edge.i, %bb.ac, %bb.ad
  %i.fo = load i8, ptr %i.a, align 4, !tbaa !247, !range !155, !noundef !156
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %.critedge, label %bb.n, !llvm.loop !307

.critedge:                                        ; preds = %_ZN7CaDiCaL8Internal10next_probeEv.exit, %_ZN7CaDiCaL8Internal19clean_probehbr_lratEv.exit, %bb.t, %bb.n, %bb.v, %._crit_edge, %.sink.split.i31
  %i.fq = load i8, ptr %i.a, align 4, !tbaa !247, !range !155, !noundef !156
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.fs = load i64, ptr %i.co, align 8, !tbaa !209
  %i.ft = load ptr, ptr %i.cg, align 8, !tbaa !186
  %i.fu = load ptr, ptr %i.cf, align 8, !tbaa !188
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = ashr exact i64 %i.fx, 2
  %i.fz = icmp ult i64 %i.fs, %i.fy
  br i1 %i.fz, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ga = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.ga, label %bb.ah, label %bb.ag

end_hunk_0
