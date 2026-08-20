inline.NumInlined: 80
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_do_add:bb.a

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check170 = icmp ult i32 %i.dy, 32
  br i1 %min.iters.check170, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ed = and i64 %i.ea, 28
  %n.vec = and i64 %i.ea, 2147483616              ; 6 uses
  %i.ee = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec
  %i.ef = getelementptr i8, ptr %i.t, i64 %n.vec
  %i.eg = trunc nuw nsw i64 %n.vec to i32
  %i.eh = sub nsw i32 %i.dy, %i.eg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %index ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.t, i64 %index ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !15
  %wide.load172 = load <16 x i8>, ptr %i.ei, align 1, !tbaa !15
  %i.ej = getelementptr i8, ptr %next.gep171, i64 16
  store <16 x i8> %wide.load, ptr %next.gep171, align 1, !tbaa !15
  store <16 x i8> %wide.load172, ptr %i.ej, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ea
  br i1 %cmp.n, label %_rm_leading_zeros.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ed, 0
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec175 = and i64 %i.ea, 2147483644           ; 5 uses
  %i.el = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec175
  %i.em = getelementptr i8, ptr %i.t, i64 %n.vec175
  %i.en = trunc nuw nsw i64 %n.vec175 to i32
  %i.eo = sub nsw i32 %i.dy, %i.en
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index176 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next180, %vec.epilog.vector.body ] ; 3 uses
  %next.gep177 = getelementptr i8, ptr %.0.lcssa.i, i64 %index176
  %next.gep178 = getelementptr i8, ptr %i.t, i64 %index176
  %wide.load179 = load <4 x i8>, ptr %next.gep177, align 1, !tbaa !15
  store <4 x i8> %wide.load179, ptr %next.gep178, align 1, !tbaa !15
  %index.next180 = add nuw i64 %index176, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.ep, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n181 = icmp eq i64 %n.vec175, %i.ea
  br i1 %cmp.n181, label %_rm_leading_zeros.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.124.i.ph = phi ptr [ %.0.lcssa.i, %iter.check ], [ %.0.lcssa.i, %vector.memcheck ], [ %i.ee, %vec.epilog.iter.check ], [ %i.el, %vec.epilog.middle.block ]
  %.01323.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.ef, %vec.epilog.iter.check ], [ %i.em, %vec.epilog.middle.block ]
  %.11522.i.ph = phi i32 [ %i.dy, %iter.check ], [ %i.dy, %vector.memcheck ], [ %i.eh, %vec.epilog.iter.check ], [ %i.eo, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %.124.i = phi ptr [ %i.er, %.lr.ph25.i ], [ %.124.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %.01323.i = phi ptr [ %i.et, %.lr.ph25.i ], [ %.01323.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %.11522.i = phi i32 [ %i.eq, %.lr.ph25.i ], [ %.11522.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %i.eq = add nsw i32 %.11522.i, -1
  %i.er = getelementptr inbounds nuw i8, ptr %.124.i, i64 1
  %i.es = load i8, ptr %.124.i, align 1, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %.01323.i, i64 1
  store i8 %i.es, ptr %.01323.i, align 1, !tbaa !15
  %i.eu = icmp samesign ugt i32 %.11522.i, 1
  br i1 %i.eu, label %.lr.ph25.i, label %_rm_leading_zeros.exit, !llvm.loop !40

_rm_leading_zeros.exit:                           ; preds = %.lr.ph25.i, %middle.block, %vec.epilog.middle.block, %.critedge.i
  ret ptr %i.o
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @_do_sub(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13   ; 2 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.d) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 2 uses
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %i.h) ; 2 uses
  %i.j = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.d) ; 4 uses
  %i.k = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.h) ; 7 uses
  %i.l = sext i32 %. to i64                       ; 3 uses
  %i.m = add nsw i64 %i.l, 1040
  %i.n = sext i32 %i.i to i64                     ; 3 uses
  %i.o = add nsw i64 %i.m, %i.n
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #21 ; 11 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  store i32 0, ptr %i.p, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  store i32 %., ptr %i.r, align 4, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store i32 %i.i, ptr %i.s, align 4, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 9 uses
  store i8 0, ptr %i.u, align 4, !tbaa !15
  %i.v = load i32, ptr %i.a, align 4, !tbaa !13
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.e, align 4, !tbaa !14   ; 4 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 15     ; 4 uses
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !13
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %1, i64 %i.ad
  %i.af = load i32, ptr %i.g, align 4, !tbaa !14  ; 3 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 15     ; 5 uses
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.l
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.n
  %i.al = getelementptr i8, ptr %i.ak, i64 15     ; 4 uses
  %.not = icmp eq i32 %i.y, %i.k
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = sub nsw i32 %i.y, %i.k                  ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %.loopexit112

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ao = add nsw i64 %i.n, %i.l                  ; 2 uses
  %i.ap = add nsw i64 %i.ao, 15
  %i.aq = xor i32 %i.k, -1
  %i.ar = add i32 %i.y, %i.aq
  %i.as = zext i32 %i.ar to i64                   ; 4 uses
  %i.at = sub nsw i64 %i.ap, %i.as
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.at
  %i.au = add nsw i64 %i.z, %i.w                  ; 2 uses
  %i.av = add nsw i64 %i.au, 15
  %i.aw = sub nsw i64 %i.av, %i.as
  %scevgep148 = getelementptr i8, ptr %0, i64 %i.aw
  %i.ax = zext nneg i32 %i.am to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep, ptr align 1 %scevgep148, i64 %i.ax, i1 false), !tbaa !15
  %i.ay = add nsw i64 %i.au, 14
  %i.az = sub nsw i64 %i.ay, %i.as
  %scevgep149 = getelementptr i8, ptr %0, i64 %i.az
  %i.ba = add nsw i64 %i.ao, 14
  %i.bb = sub nsw i64 %i.ba, %i.as
  %scevgep150 = getelementptr i8, ptr %i.p, i64 %i.bb
  br label %.loopexit112

bb.c:                                             ; preds = %bb.a
  %i.bc = sub nsw i32 %i.af, %i.k                 ; 4 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph122.preheader, label %.loopexit112

.lr.ph122.preheader:                              ; preds = %bb.c
  %.neg = add i32 %i.k, 1
  %xtraiter = and i32 %i.bc, 1
  %i.be = icmp eq i32 %i.af, %.neg
  br i1 %i.be, label %.lr.ph122.epil.preheader, label %.lr.ph122.preheader.new

.lr.ph122.preheader.new:                          ; preds = %.lr.ph122.preheader
  %unroll_iter = and i32 %i.bc, 2147483646
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122, %.lr.ph122.preheader.new
  %.072120 = phi i32 [ 0, %.lr.ph122.preheader.new ], [ %.108.1, %.lr.ph122 ]
  %.177119 = phi ptr [ %i.al, %.lr.ph122.preheader.new ], [ %i.bs, %.lr.ph122 ] ; 3 uses
  %.081118 = phi ptr [ %i.ai, %.lr.ph122.preheader.new ], [ %i.bm, %.lr.ph122 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph122.preheader.new ], [ %niter.next.1, %.lr.ph122 ]
  %i.bf = getelementptr inbounds i8, ptr %.081118, i64 -1
  %i.bg = load i8, ptr %.081118, align 1, !tbaa !15
  %i.bh = sext i8 %i.bg to i32
  %i.bi = add nsw i32 %.072120, %i.bh             ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0                   ; 2 uses
  %.108 = zext i1 %i.bj to i32
  %.109 = select i1 %i.bj, i32 10, i32 0
  %.0 = sub nsw i32 %.109, %i.bi
  %i.bk = trunc i32 %.0 to i8
  %i.bl = getelementptr inbounds i8, ptr %.177119, i64 -1
  store i8 %i.bk, ptr %.177119, align 1, !tbaa !15
  %i.bm = getelementptr inbounds i8, ptr %.081118, i64 -2 ; 3 uses
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !15
  %i.bo = sext i8 %i.bn to i32
  %i.bp = add nsw i32 %.108, %i.bo                ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0                   ; 2 uses
  %.108.1 = zext i1 %i.bq to i32                  ; 3 uses
  %.109.1 = select i1 %i.bq, i32 10, i32 0
  %.0.1 = sub nsw i32 %.109.1, %i.bp
  %i.br = trunc i32 %.0.1 to i8
  %i.bs = getelementptr inbounds i8, ptr %.177119, i64 -2 ; 3 uses
  store i8 %i.br, ptr %i.bl, align 1, !tbaa !15
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit112.loopexit.unr-lcssa, label %.lr.ph122, !llvm.loop !41

.loopexit112.loopexit.unr-lcssa:                  ; preds = %.lr.ph122
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit112, label %.lr.ph122.epil.preheader

.lr.ph122.epil.preheader:                         ; preds = %.loopexit112.loopexit.unr-lcssa, %.lr.ph122.preheader
  %.072120.epil.init = phi i32 [ 0, %.lr.ph122.preheader ], [ %.108.1, %.loopexit112.loopexit.unr-lcssa ]
  %.177119.epil.init = phi ptr [ %i.al, %.lr.ph122.preheader ], [ %i.bs, %.loopexit112.loopexit.unr-lcssa ] ; 2 uses
  %.081118.epil.init = phi ptr [ %i.ai, %.lr.ph122.preheader ], [ %i.bm, %.loopexit112.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod189 = trunc i32 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.bt = getelementptr inbounds i8, ptr %.081118.epil.init, i64 -1
  %i.bu = load i8, ptr %.081118.epil.init, align 1, !tbaa !15
  %i.bv = sext i8 %i.bu to i32
  %i.bw = add nsw i32 %.072120.epil.init, %i.bv   ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0                   ; 2 uses
  %.108.epil = zext i1 %i.bx to i32
  %.109.epil = select i1 %i.bx, i32 10, i32 0
  %.0.epil = sub nsw i32 %.109.epil, %i.bw
  %i.by = trunc i32 %.0.epil to i8
  %i.bz = getelementptr inbounds i8, ptr %.177119.epil.init, i64 -1
  store i8 %i.by, ptr %.177119.epil.init, align 1, !tbaa !15
  br label %.loopexit112

.loopexit112:                                     ; preds = %.lr.ph122.epil.preheader, %.loopexit112.loopexit.unr-lcssa, %.lr.ph.preheader, %bb.b, %bb.c
  %.185 = phi ptr [ %i.ab, %bb.c ], [ %scevgep149, %.lr.ph.preheader ], [ %i.ab, %bb.b ], [ %i.ab, %.loopexit112.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph122.epil.preheader ] ; 3 uses
  %.182 = phi ptr [ %i.ai, %bb.c ], [ %i.ai, %.lr.ph.preheader ], [ %i.ai, %bb.b ], [ %i.bm, %.loopexit112.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph122.epil.preheader ] ; 2 uses
  %.278 = phi ptr [ %i.al, %bb.c ], [ %scevgep150, %.lr.ph.preheader ], [ %i.al, %bb.b ], [ %i.bs, %.loopexit112.loopexit.unr-lcssa ], [ %i.bz, %.lr.ph122.epil.preheader ] ; 3 uses
  %.274 = phi i32 [ 0, %bb.c ], [ 0, %.lr.ph.preheader ], [ 0, %bb.b ], [ %.108.1, %.loopexit112.loopexit.unr-lcssa ], [ %.108.epil, %.lr.ph122.epil.preheader ] ; 3 uses
  %i.ca = add nsw i32 %i.k, %i.j                  ; 4 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph131.preheader, label %._crit_edge

.lr.ph131.preheader:                              ; preds = %.loopexit112
  %i.cc = add i32 %i.k, %i.j
  %xtraiter190 = and i32 %i.ca, 1
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph131.epil.preheader, label %.lr.ph131.preheader.new

.lr.ph131.preheader.new:                          ; preds = %.lr.ph131.preheader
  %unroll_iter196 = and i32 %i.ca, 2147483646
  br label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131, %.lr.ph131.preheader.new
  %.375129 = phi i32 [ %.274, %.lr.ph131.preheader.new ], [ %.lobit110.1, %.lr.ph131 ]
  %.379128 = phi ptr [ %.278, %.lr.ph131.preheader.new ], [ %i.db, %.lr.ph131 ] ; 3 uses
  %.283127 = phi ptr [ %.182, %.lr.ph131.preheader.new ], [ %i.ct, %.lr.ph131 ] ; 3 uses
  %.286126 = phi ptr [ %.185, %.lr.ph131.preheader.new ], [ %i.cq, %.lr.ph131 ] ; 3 uses
  %niter197 = phi i32 [ 0, %.lr.ph131.preheader.new ], [ %niter197.next.1, %.lr.ph131 ]
  %i.ce = getelementptr inbounds i8, ptr %.286126, i64 -1
  %i.cf = load i8, ptr %.286126, align 1, !tbaa !15
  %i.cg = sext i8 %i.cf to i32
  %i.ch = getelementptr inbounds i8, ptr %.283127, i64 -1
  %i.ci = load i8, ptr %.283127, align 1, !tbaa !15
  %i.cj = sext i8 %i.ci to i32
  %i.ck = add nsw i32 %.375129, %i.cj
  %i.cl = sub nsw i32 %i.cg, %i.ck                ; 4 uses
  %i.cm = icmp slt i32 %i.cl, 0
  %i.cn = add nsw i32 %i.cl, 10
  %.lobit110 = lshr i32 %i.cl, 31
  %.1 = select i1 %i.cm, i32 %i.cn, i32 %i.cl
  %i.co = trunc i32 %.1 to i8
  %i.cp = getelementptr inbounds i8, ptr %.379128, i64 -1
  store i8 %i.co, ptr %.379128, align 1, !tbaa !15
  %i.cq = getelementptr inbounds i8, ptr %.286126, i64 -2 ; 3 uses
  %i.cr = load i8, ptr %i.ce, align 1, !tbaa !15
  %i.cs = sext i8 %i.cr to i32
  %i.ct = getelementptr inbounds i8, ptr %.283127, i64 -2 ; 2 uses
  %i.cu = load i8, ptr %i.ch, align 1, !tbaa !15
  %i.cv = sext i8 %i.cu to i32
  %i.cw = add nsw i32 %.lobit110, %i.cv
  %i.cx = sub nsw i32 %i.cs, %i.cw                ; 4 uses
  %i.cy = icmp slt i32 %i.cx, 0
  %i.cz = add nsw i32 %i.cx, 10
  %.lobit110.1 = lshr i32 %i.cx, 31               ; 3 uses
  %.1.1 = select i1 %i.cy, i32 %i.cz, i32 %i.cx
  %i.da = trunc i32 %.1.1 to i8
  %i.db = getelementptr inbounds i8, ptr %.379128, i64 -2 ; 3 uses
  store i8 %i.da, ptr %i.cp, align 1, !tbaa !15
  %niter197.next.1 = add nuw i32 %niter197, 2     ; 2 uses
  %niter197.ncmp.1 = icmp eq i32 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph131, !llvm.loop !42

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph131
  %lcmp.mod191.not = icmp eq i32 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %._crit_edge, label %.lr.ph131.epil.preheader

.lr.ph131.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph131.preheader
  %.375129.epil.init = phi i32 [ %.274, %.lr.ph131.preheader ], [ %.lobit110.1, %._crit_edge.loopexit.unr-lcssa ]
  %.379128.epil.init = phi ptr [ %.278, %.lr.ph131.preheader ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.283127.epil.init = phi ptr [ %.182, %.lr.ph131.preheader ], [ %i.ct, %._crit_edge.loopexit.unr-lcssa ]
  %.286126.epil.init = phi ptr [ %.185, %.lr.ph131.preheader ], [ %i.cq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod195 = trunc i32 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.dc = getelementptr inbounds i8, ptr %.286126.epil.init, i64 -1
  %i.dd = load i8, ptr %.286126.epil.init, align 1, !tbaa !15
  %i.de = sext i8 %i.dd to i32
  %i.df = load i8, ptr %.283127.epil.init, align 1, !tbaa !15
  %i.dg = sext i8 %i.df to i32
  %i.dh = add nsw i32 %.375129.epil.init, %i.dg
  %i.di = sub nsw i32 %i.de, %i.dh                ; 4 uses
  %i.dj = icmp slt i32 %i.di, 0
  %i.dk = add nsw i32 %i.di, 10
  %.lobit110.epil = lshr i32 %i.di, 31
  %.1.epil = select i1 %i.dj, i32 %i.dk, i32 %i.di
  %i.dl = trunc i32 %.1.epil to i8
  %i.dm = getelementptr inbounds i8, ptr %.379128.epil.init, i64 -1
  store i8 %i.dl, ptr %.379128.epil.init, align 1, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph131.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.loopexit112
  %.286.lcssa = phi ptr [ %.185, %.loopexit112 ], [ %i.cq, %._crit_edge.loopexit.unr-lcssa ], [ %i.dc, %.lr.ph131.epil.preheader ] ; 3 uses
  %.379.lcssa = phi ptr [ %.278, %.loopexit112 ], [ %i.db, %._crit_edge.loopexit.unr-lcssa ], [ %i.dm, %.lr.ph131.epil.preheader ] ; 3 uses
  %.375.lcssa = phi i32 [ %.274, %.loopexit112 ], [ %.lobit110.1, %._crit_edge.loopexit.unr-lcssa ], [ %.lobit110.epil, %.lr.ph131.epil.preheader ] ; 2 uses
  %i.dn = sub i32 %., %i.j                        ; 4 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph140.preheader, label %.loopexit

.lr.ph140.preheader:                              ; preds = %._crit_edge
  %.neg200 = add i32 %i.j, 1
  %xtraiter198 = and i32 %i.dn, 1
  %lcmp.mod199.not = icmp eq i32 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %.lr.ph140.prol.loopexit, label %.lr.ph140.prol

.lr.ph140.prol:                                   ; preds = %.lr.ph140.preheader
  %i.dp = getelementptr inbounds i8, ptr %.286.lcssa, i64 -1
  %i.dq = load i8, ptr %.286.lcssa, align 1, !tbaa !15
  %i.dr = sext i8 %i.dq to i32
  %i.ds = sub nsw i32 %i.dr, %.375.lcssa          ; 4 uses
  %i.dt = icmp slt i32 %i.ds, 0
  %i.du = add nsw i32 %i.ds, 10
  %.lobit.prol = lshr i32 %i.ds, 31
  %.2.prol = select i1 %i.dt, i32 %i.du, i32 %i.ds
  %i.dv = trunc nsw i32 %.2.prol to i8
  %i.dw = getelementptr inbounds i8, ptr %.379.lcssa, i64 -1
  store i8 %i.dv, ptr %.379.lcssa, align 1, !tbaa !15
  %i.dx = add nsw i32 %i.dn, -1
  br label %.lr.ph140.prol.loopexit

.lr.ph140.prol.loopexit:                          ; preds = %.lr.ph140.prol, %.lr.ph140.preheader
  %.3138.unr = phi i32 [ %i.dn, %.lr.ph140.preheader ], [ %i.dx, %.lr.ph140.prol ]
  %.5137.unr = phi i32 [ %.375.lcssa, %.lr.ph140.preheader ], [ %.lobit.prol, %.lr.ph140.prol ]
  %.480136.unr = phi ptr [ %.379.lcssa, %.lr.ph140.preheader ], [ %i.dw, %.lr.ph140.prol ]
  %.387135.unr = phi ptr [ %.286.lcssa, %.lr.ph140.preheader ], [ %i.dp, %.lr.ph140.prol ]
  %i.dy = icmp eq i32 %., %.neg200
  br i1 %i.dy, label %.loopexit, label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.prol.loopexit, %.lr.ph140
  %.3138 = phi i32 [ %i.ep, %.lr.ph140 ], [ %.3138.unr, %.lr.ph140.prol.loopexit ] ; 2 uses
  %.5137 = phi i32 [ %.lobit.1, %.lr.ph140 ], [ %.5137.unr, %.lr.ph140.prol.loopexit ]
  %.480136 = phi ptr [ %i.eo, %.lr.ph140 ], [ %.480136.unr, %.lr.ph140.prol.loopexit ] ; 3 uses
  %.387135 = phi ptr [ %i.eh, %.lr.ph140 ], [ %.387135.unr, %.lr.ph140.prol.loopexit ] ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %.387135, i64 -1
  %i.ea = load i8, ptr %.387135, align 1, !tbaa !15
  %i.eb = sext i8 %i.ea to i32
  %i.ec = sub nsw i32 %i.eb, %.5137               ; 4 uses
  %i.ed = icmp slt i32 %i.ec, 0
  %i.ee = add nsw i32 %i.ec, 10
  %.lobit.neg = ashr i32 %i.ec, 31
  %.2 = select i1 %i.ed, i32 %i.ee, i32 %i.ec
  %i.ef = trunc nsw i32 %.2 to i8
  %i.eg = getelementptr inbounds i8, ptr %.480136, i64 -1
  store i8 %i.ef, ptr %.480136, align 1, !tbaa !15
  %i.eh = getelementptr inbounds i8, ptr %.387135, i64 -2
  %i.ei = load i8, ptr %i.dz, align 1, !tbaa !15
  %i.ej = sext i8 %i.ei to i32
  %i.ek = add nsw i32 %.lobit.neg, %i.ej          ; 4 uses
  %i.el = icmp slt i32 %i.ek, 0
  %i.em = add nsw i32 %i.ek, 10
  %.lobit.1 = lshr i32 %i.ek, 31
  %.2.1 = select i1 %i.el, i32 %i.em, i32 %i.ek
  %i.en = trunc nsw i32 %.2.1 to i8
  %i.eo = getelementptr inbounds i8, ptr %.480136, i64 -2
  store i8 %i.en, ptr %i.eg, align 1, !tbaa !15
  %i.ep = add nsw i32 %.3138, -2
  %i.eq = icmp sgt i32 %.3138, 2
  br i1 %i.eq, label %.lr.ph140, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %.lr.ph140.prol.loopexit, %.lr.ph140, %._crit_edge
  %i.er = load i32, ptr %i.r, align 4, !tbaa !13  ; 4 uses
  %i.es = icmp sgt i32 %i.er, 1
  br i1 %i.es, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %narrow.i = add nuw i32 %i.er, 15
  %i.et = zext i32 %narrow.i to i64
  %scevgep.i = getelementptr i8, ptr %i.p, i64 %i.et
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.ew, %bb.d ], [ %i.u, %.lr.ph.preheader.i ] ; 3 uses
  %.01416.i = phi i32 [ %i.ex, %bb.d ], [ %i.er, %.lr.ph.preheader.i ] ; 3 uses
  %i.eu = load i8, ptr %.017.i, align 1, !tbaa !15
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.ex = add nsw i32 %.01416.i, -1
  %i.ey = icmp sgt i32 %.01416.i, 2
  br i1 %i.ey, label %.lr.ph.i, label %.critedge.i, !llvm.loop !36

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %.loopexit
  %.014.lcssa.i = phi i32 [ %i.er, %.loopexit ], [ %.01416.i, %.lr.ph.i ], [ 1, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.u, %.loopexit ], [ %.017.i, %.lr.ph.i ], [ %scevgep.i, %bb.d ] ; 7 uses
  %.0.lcssa.i167 = ptrtoaddr ptr %.0.lcssa.i to i64
  store i32 %.014.lcssa.i, ptr %i.r, align 4, !tbaa !13
  %i.ez = load i32, ptr %i.s, align 4, !tbaa !14
  %i.fa = add nsw i32 %i.ez, %.014.lcssa.i        ; 8 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %iter.check, label %_rm_leading_zeros.exit

iter.check:                                       ; preds = %.critedge.i
  %i.fc = zext nneg i32 %i.fa to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.fa, 4
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fd = sub i64 %i.q, %.0.lcssa.i167
  %i.fe = add i64 %i.fd, 15
  %diff.check = icmp ult i64 %i.fe, 31
  br i1 %diff.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check168 = icmp ult i32 %i.fa, 32
  br i1 %min.iters.check168, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ff = and i64 %i.fc, 28
  %n.vec = and i64 %i.fc, 2147483616              ; 6 uses
  %i.fg = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec
  %i.fh = getelementptr i8, ptr %i.u, i64 %n.vec
  %i.fi = trunc nuw nsw i64 %n.vec to i32
  %i.fj = sub nsw i32 %i.fa, %i.fi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %index ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.u, i64 %index ; 2 uses
  %i.fk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !15
  %wide.load170 = load <16 x i8>, ptr %i.fk, align 1, !tbaa !15
  %i.fl = getelementptr i8, ptr %next.gep169, i64 16
  store <16 x i8> %wide.load, ptr %next.gep169, align 1, !tbaa !15
  store <16 x i8> %wide.load170, ptr %i.fl, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fc
  br i1 %cmp.n, label %_rm_leading_zeros.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ff, 0
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec173 = and i64 %i.fc, 2147483644           ; 5 uses
  %i.fn = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec173
  %i.fo = getelementptr i8, ptr %i.u, i64 %n.vec173
  %i.fp = trunc nuw nsw i64 %n.vec173 to i32
  %i.fq = sub nsw i32 %i.fa, %i.fp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index174 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next178, %vec.epilog.vector.body ] ; 3 uses
  %next.gep175 = getelementptr i8, ptr %.0.lcssa.i, i64 %index174
  %next.gep176 = getelementptr i8, ptr %i.u, i64 %index174
  %wide.load177 = load <4 x i8>, ptr %next.gep175, align 1, !tbaa !15
  store <4 x i8> %wide.load177, ptr %next.gep176, align 1, !tbaa !15
  %index.next178 = add nuw i64 %index174, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next178, %n.vec173
  br i1 %i.fr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n179 = icmp eq i64 %n.vec173, %i.fc
  br i1 %cmp.n179, label %_rm_leading_zeros.exit, label %.lr.ph25.i.preheader
end_hunk_0
begin_hunk_1_@bc_divide:bb.a
  %i.cy = sext i32 %i.cx to i64
  %i.cz = sext i32 %3 to i64
  %i.da = add nsw i64 %i.cz, 1040
  %i.db = add nsw i64 %i.da, %i.cy
  %i.dc = tail call noalias ptr @malloc(i64 noundef %i.db) #21 ; 10 uses
  %i.dd = ptrtoaddr ptr %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 3 uses
  store i32 %i.cx, ptr %i.de, align 4, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  store i32 %3, ptr %i.df, align 4, !tbaa !14
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 1, ptr %i.dg, align 4, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 13 uses
  store i8 0, ptr %i.dh, align 4, !tbaa !15
  %i.di = zext i32 %.0195 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dh, i8 0, i64 %i.di, i1 false)
  %i.dj = tail call noalias ptr @malloc(i64 noundef %.pre-phi361) #21 ; 4 uses
  br i1 %.not224, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.dk = load i8, ptr %.1203.lcssa, align 1, !tbaa !15
  %i.dl = sext i8 %i.dk to i16
  %.rhs.trunc = add nsw i16 %i.dl, 1
  %i.dm = sdiv i16 10, %.rhs.trunc                ; 4 uses
  %.sext = sext i16 %i.dm to i32                  ; 2 uses
  %.not225 = icmp eq i16 %i.dm, 1
  br i1 %.not225, label %_one_mult.exit245, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = add i32 %i.bt, 1                        ; 2 uses
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %cond = icmp eq i16 %i.dm, 0
  br i1 %cond, label %_one_mult.exit.thread, label %bb.m

_one_mult.exit.thread:                            ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 0, i64 %i.do, i1 false)
  %i.dp = sext i32 %.0197.lcssa to i64
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.dq = icmp ult i32 %i.bt, 2147483647
  br i1 %i.dq, label %.lr.ph.preheader.i230, label %_one_mult.exit

.lr.ph.preheader.i230:                            ; preds = %bb.m
  %i.dr = getelementptr inbounds i8, ptr %i.bw, i64 %i.do ; 2 uses
  %.025.i = getelementptr inbounds i8, ptr %i.dr, i64 -1
  br label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %.lr.ph.i231, %.lr.ph.preheader.i230
  %.029.i = phi ptr [ %.0.i, %.lr.ph.i231 ], [ %.025.i, %.lr.ph.preheader.i230 ] ; 2 uses
  %.pn28.i = phi ptr [ %.020.i, %.lr.ph.i231 ], [ %i.dr, %.lr.ph.preheader.i230 ]
  %.02127.i = phi i32 [ %i.dz, %.lr.ph.i231 ], [ 0, %.lr.ph.preheader.i230 ]
  %.02226.i = phi i32 [ %i.ds, %.lr.ph.i231 ], [ %i.dn, %.lr.ph.preheader.i230 ] ; 2 uses
  %.020.i = getelementptr inbounds i8, ptr %.pn28.i, i64 -1 ; 2 uses
  %i.ds = add nsw i32 %.02226.i, -1
  %i.dt = load i8, ptr %.020.i, align 1, !tbaa !15
  %i.du = sext i8 %i.dt to i32
  %i.dv = mul nsw i32 %i.du, %.sext
  %i.dw = add nsw i32 %i.dv, %.02127.i            ; 3 uses
  %i.dx = srem i32 %i.dw, 10
  %i.dy = trunc nsw i32 %i.dx to i8
  store i8 %i.dy, ptr %.029.i, align 1, !tbaa !15
  %i.dz = sdiv i32 %i.dw, 10                      ; 2 uses
  %.0.i = getelementptr inbounds i8, ptr %.029.i, i64 -1 ; 2 uses
  %i.ea = icmp samesign ugt i32 %.02226.i, 1
  br i1 %i.ea, label %.lr.ph.i231, label %._crit_edge.i, !llvm.loop !56

._crit_edge.i:                                    ; preds = %.lr.ph.i231
  %.off.i = add nsw i32 %i.dw, 9
  %.not.i232 = icmp ult i32 %.off.i, 19
  br i1 %.not.i232, label %_one_mult.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.eb = trunc i32 %i.dz to i8
  store i8 %i.eb, ptr %.0.i, align 1, !tbaa !15
  br label %_one_mult.exit

_one_mult.exit:                                   ; preds = %bb.m, %._crit_edge.i, %bb.n
  %i.ec = sext i32 %.0197.lcssa to i64            ; 2 uses
  switch i16 %i.dm, label %bb.p [
    i16 0, label %bb.o
    i16 1, label %_one_mult.exit245
  ]

bb.o:                                             ; preds = %_one_mult.exit.thread, %_one_mult.exit
  %i.ed = phi i64 [ %i.dp, %_one_mult.exit.thread ], [ %i.ec, %_one_mult.exit ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1203.lcssa, i8 0, i64 %i.ed, i1 false)
  br label %_one_mult.exit245

bb.p:                                             ; preds = %_one_mult.exit
  %i.ee = icmp sgt i32 %.0197.lcssa, 0
  br i1 %i.ee, label %.lr.ph.preheader.i233, label %_one_mult.exit245

.lr.ph.preheader.i233:                            ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %.1203.lcssa, i64 %i.ec ; 2 uses
  %.025.i234 = getelementptr inbounds i8, ptr %i.ef, i64 -1
  br label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235, %.lr.ph.preheader.i233
  %.029.i236 = phi ptr [ %.0.i241, %.lr.ph.i235 ], [ %.025.i234, %.lr.ph.preheader.i233 ] ; 2 uses
  %.pn28.i237 = phi ptr [ %.020.i240, %.lr.ph.i235 ], [ %i.ef, %.lr.ph.preheader.i233 ]
  %.02127.i238 = phi i32 [ %i.en, %.lr.ph.i235 ], [ 0, %.lr.ph.preheader.i233 ]
  %.02226.i239 = phi i32 [ %i.eg, %.lr.ph.i235 ], [ %.0197.lcssa, %.lr.ph.preheader.i233 ] ; 2 uses
  %.020.i240 = getelementptr inbounds i8, ptr %.pn28.i237, i64 -1 ; 2 uses
  %i.eg = add nsw i32 %.02226.i239, -1
  %i.eh = load i8, ptr %.020.i240, align 1, !tbaa !15
  %i.ei = sext i8 %i.eh to i32
  %i.ej = mul nsw i32 %i.ei, %.sext
  %i.ek = add nsw i32 %i.ej, %.02127.i238         ; 3 uses
  %i.el = srem i32 %i.ek, 10
  %i.em = trunc nsw i32 %i.el to i8
  store i8 %i.em, ptr %.029.i236, align 1, !tbaa !15
  %i.en = sdiv i32 %i.ek, 10                      ; 2 uses
  %.0.i241 = getelementptr inbounds i8, ptr %.029.i236, i64 -1 ; 2 uses
  %i.eo = icmp samesign ugt i32 %.02226.i239, 1
  br i1 %i.eo, label %.lr.ph.i235, label %._crit_edge.i242, !llvm.loop !56

._crit_edge.i242:                                 ; preds = %.lr.ph.i235
  %.off.i243 = add nsw i32 %i.ek, 9
  %.not.i244 = icmp ult i32 %.off.i243, 19
  br i1 %.not.i244, label %_one_mult.exit245, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i242
  %i.ep = trunc i32 %i.en to i8
  store i8 %i.ep, ptr %.0.i241, align 1, !tbaa !15
  br label %_one_mult.exit245

_one_mult.exit245:                                ; preds = %_one_mult.exit, %bb.q, %._crit_edge.i242, %bb.p, %bb.o, %bb.k
  %i.eq = zext i32 %.0197.lcssa to i64            ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.eq
  %i.es = zext i32 %i.bn to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 %i.et
  %.0200 = select i1 %i.cu, ptr %i.eu, ptr %i.dh
  %i.ev = sub i32 %i.ct, %.0197.lcssa
  %i.ew = getelementptr inbounds nuw i8, ptr %.1203.lcssa, i64 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 2 uses
  %i.ey = sext i32 %.0197.lcssa to i64            ; 3 uses
  %i.ez = icmp sgt i32 %.0197.lcssa, 0
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  %.025.i247 = getelementptr inbounds i8, ptr %i.fa, i64 -1
  %i.fb = getelementptr inbounds nuw i8, ptr %.1203.lcssa, i64 %i.ey
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.eq ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.1203.lcssa, i64 %i.eq ; 2 uses
  %i.fe = zext i32 %i.ev to i64
  %xtraiter = and i32 %.pre-phi, 1
  %i.ff = icmp eq i32 %.pre-phi, 1                ; 0 uses
  %unroll_iter = and i32 %.pre-phi, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod431 = trunc i32 %.pre-phi to i1
  %xtraiter432 = and i32 %.0197.lcssa, 1
  %i.fg = icmp eq i32 %.0197.lcssa, 1             ; 0 uses
  %unroll_iter437 = and i32 %.0197.lcssa, -2
  %lcmp.mod433.not = icmp eq i32 %xtraiter432, 0
  %lcmp.mod436 = trunc i32 %.0197.lcssa to i1
  br label %bb.r

bb.r:                                             ; preds = %_one_mult.exit245, %.thread
  %indvars.iv = phi i64 [ 0, %_one_mult.exit245 ], [ %indvars.iv.next.pre-phi, %.thread ] ; 4 uses
  %.1201339 = phi ptr [ %.0200, %_one_mult.exit245 ], [ %i.js, %.thread ] ; 2 uses
  %i.fh = load i8, ptr %.1203.lcssa, align 1, !tbaa !15 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !15  ; 3 uses
  %i.fk = icmp eq i8 %i.fh, %i.fj
  br i1 %i.fk, label %._crit_edge354, label %bb.s

._crit_edge354:                                   ; preds = %bb.r
  %.pre356 = add nuw nsw i64 %indvars.iv, 1       ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.pre356
  %.pre357 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !15
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fl = sext i8 %i.fj to i16
  %i.fm = mul nsw i16 %i.fl, 10
  %i.fn = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !15  ; 2 uses
  %i.fq = sext i8 %i.fp to i16
  %.lhs.trunc301 = add nsw i16 %i.fm, %i.fq
  %.rhs.trunc302 = sext i8 %i.fh to i16
  %i.fr = sdiv i16 %.lhs.trunc301, %.rhs.trunc302
  %.sext303 = sext i16 %i.fr to i32
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge354, %bb.s
  %i.fs = phi i8 [ %.pre357, %._crit_edge354 ], [ %i.fp, %bb.s ]
  %indvars.iv.next.pre-phi = phi i64 [ %.pre356, %._crit_edge354 ], [ %i.fn, %bb.s ] ; 2 uses
  %.0188 = phi i32 [ 9, %._crit_edge354 ], [ %.sext303, %bb.s ] ; 5 uses
  %i.ft = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.fu = sext i8 %i.ft to i32                    ; 2 uses
  %i.fv = mul nsw i32 %.0188, %i.fu
  %i.fw = sext i8 %i.fj to i32
  %i.fx = mul nsw i32 %i.fw, 10
  %i.fy = sext i8 %i.fs to i32
  %i.fz = add nsw i32 %i.fx, %i.fy                ; 2 uses
  %i.ga = sext i8 %i.fh to i32                    ; 2 uses
  %i.gb = mul nsw i32 %.0188, %i.ga
  %i.gc = sub nsw i32 %i.fz, %i.gb
  %i.gd = mul nsw i32 %i.gc, 10
  %4 = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !15
  %i.gg = sext i8 %i.gf to i32                    ; 2 uses
  %i.gh = add nsw i32 %i.gd, %i.gg
  %i.gi = icmp ugt i32 %i.fv, %i.gh
  br i1 %i.gi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gj = add nsw i32 %.0188, -1                  ; 3 uses
  %i.gk = mul nsw i32 %i.gj, %i.fu
  %i.gl = mul nsw i32 %i.gj, %i.ga
  %i.gm = sub nsw i32 %i.fz, %i.gl
  %i.gn = mul nsw i32 %i.gm, 10
  %i.go = add nsw i32 %i.gn, %i.gg
  %i.gp = icmp ugt i32 %i.gk, %i.go
  %i.gq = add nsw i32 %.0188, -2
  %spec.select = select i1 %i.gp, i32 %i.gq, i32 %i.gj
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1189 = phi i32 [ %.0188, %bb.t ], [ %spec.select, %bb.u ] ; 6 uses
  %.not227 = icmp eq i32 %.1189, 0
  br i1 %.not227, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.dj, align 1, !tbaa !15
  %cond304 = icmp eq i32 %.1189, 1
  br i1 %cond304, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr nonnull readonly align 1 %.1203.lcssa, i64 %i.ey, i1 false)
  br label %_one_mult.exit258

bb.y:                                             ; preds = %bb.w
  br i1 %i.ez, label %.lr.ph.i248, label %_one_mult.exit258

.lr.ph.i248:                                      ; preds = %bb.y, %.lr.ph.i248
  %.029.i249 = phi ptr [ %.0.i254, %.lr.ph.i248 ], [ %.025.i247, %bb.y ] ; 2 uses
  %.pn28.i250 = phi ptr [ %.020.i253, %.lr.ph.i248 ], [ %i.fb, %bb.y ]
  %.02127.i251 = phi i32 [ %i.gy, %.lr.ph.i248 ], [ 0, %bb.y ]
  %.02226.i252 = phi i32 [ %i.gr, %.lr.ph.i248 ], [ %.0197.lcssa, %bb.y ] ; 2 uses
  %.020.i253 = getelementptr inbounds i8, ptr %.pn28.i250, i64 -1 ; 2 uses
  %i.gr = add nsw i32 %.02226.i252, -1
  %i.gs = load i8, ptr %.020.i253, align 1, !tbaa !15
  %i.gt = sext i8 %i.gs to i32
  %i.gu = mul nsw i32 %.1189, %i.gt
  %i.gv = add nsw i32 %i.gu, %.02127.i251         ; 3 uses
  %i.gw = srem i32 %i.gv, 10
  %i.gx = trunc nsw i32 %i.gw to i8
  store i8 %i.gx, ptr %.029.i249, align 1, !tbaa !15
  %i.gy = sdiv i32 %i.gv, 10                      ; 2 uses
  %.0.i254 = getelementptr inbounds i8, ptr %.029.i249, i64 -1 ; 2 uses
  %i.gz = icmp samesign ugt i32 %.02226.i252, 1
  br i1 %i.gz, label %.lr.ph.i248, label %._crit_edge.i255, !llvm.loop !56

._crit_edge.i255:                                 ; preds = %.lr.ph.i248
  %.off.i256 = add nsw i32 %i.gv, 9
  %.not.i257 = icmp ult i32 %.off.i256, 19
  br i1 %.not.i257, label %_one_mult.exit258, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i255
  %i.ha = trunc i32 %i.gy to i8
  store i8 %i.ha, ptr %.0.i254, align 1, !tbaa !15
  br label %_one_mult.exit258

_one_mult.exit258:                                ; preds = %bb.x, %bb.y, %._crit_edge.i255, %bb.z
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.eq ; 4 uses
  switch i32 %.pre-phi, label %.lr.ph327 [
    i32 0, label %.thread
    i32 1, label %.lr.ph327.epil.preheader
  ]

.lr.ph327:                                        ; preds = %_one_mult.exit258, %.lr.ph327
  %.0186326 = phi i32 [ %.lobit.1, %.lr.ph327 ], [ 0, %_one_mult.exit258 ]
  %.0204324 = phi ptr [ %i.hp, %.lr.ph327 ], [ %i.fc, %_one_mult.exit258 ] ; 3 uses
  %.0206323 = phi ptr [ %i.hx, %.lr.ph327 ], [ %i.hb, %_one_mult.exit258 ] ; 4 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph327 ], [ 0, %_one_mult.exit258 ]
  %i.hc = load i8, ptr %.0206323, align 1, !tbaa !15
  %i.hd = sext i8 %i.hc to i32
  %i.he = getelementptr inbounds i8, ptr %.0204324, i64 -1
  %i.hf = load i8, ptr %.0204324, align 1, !tbaa !15
  %i.hg = sext i8 %i.hf to i32
  %i.hh = add nsw i32 %.0186326, %i.hg
  %i.hi = sub nsw i32 %i.hd, %i.hh                ; 4 uses
  %i.hj = icmp slt i32 %i.hi, 0
  %i.hk = add nsw i32 %i.hi, 10
  %.0198 = select i1 %i.hj, i32 %i.hk, i32 %i.hi
  %.lobit = lshr i32 %i.hi, 31
  %i.hl = trunc i32 %.0198 to i8
  %i.hm = getelementptr inbounds i8, ptr %.0206323, i64 -1 ; 2 uses
  store i8 %i.hl, ptr %.0206323, align 1, !tbaa !15
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !15
  %i.ho = sext i8 %i.hn to i32
  %i.hp = getelementptr inbounds i8, ptr %.0204324, i64 -2 ; 2 uses
  %i.hq = load i8, ptr %i.he, align 1, !tbaa !15
  %i.hr = sext i8 %i.hq to i32
  %i.hs = add nsw i32 %.lobit, %i.hr
  %i.ht = sub nsw i32 %i.ho, %i.hs                ; 5 uses
  %i.hu = icmp slt i32 %i.ht, 0
  %i.hv = add nsw i32 %i.ht, 10
  %.0198.1 = select i1 %i.hu, i32 %i.hv, i32 %i.ht
  %.lobit.1 = lshr i32 %i.ht, 31                  ; 2 uses
  %i.hw = trunc i32 %.0198.1 to i8
  %i.hx = getelementptr inbounds i8, ptr %.0206323, i64 -2 ; 2 uses
  store i8 %i.hw, ptr %i.hm, align 1, !tbaa !15
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge328.unr-lcssa, label %.lr.ph327, !llvm.loop !57

._crit_edge328.unr-lcssa:                         ; preds = %.lr.ph327
  br i1 %lcmp.mod.not, label %._crit_edge328, label %.lr.ph327.epil.preheader

.lr.ph327.epil.preheader:                         ; preds = %_one_mult.exit258, %._crit_edge328.unr-lcssa
  %.0186326.epil.init = phi i32 [ 0, %_one_mult.exit258 ], [ %.lobit.1, %._crit_edge328.unr-lcssa ]
  %.0204324.epil.init = phi ptr [ %i.fc, %_one_mult.exit258 ], [ %i.hp, %._crit_edge328.unr-lcssa ]
  %.0206323.epil.init = phi ptr [ %i.hb, %_one_mult.exit258 ], [ %i.hx, %._crit_edge328.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod431)
  %i.hy = load i8, ptr %.0206323.epil.init, align 1, !tbaa !15
  %i.hz = sext i8 %i.hy to i32
  %i.ia = load i8, ptr %.0204324.epil.init, align 1, !tbaa !15
  %i.ib = sext i8 %i.ia to i32
  %i.ic = add nsw i32 %.0186326.epil.init, %i.ib
  %i.id = sub nsw i32 %i.hz, %i.ic                ; 4 uses
  %i.ie = icmp slt i32 %i.id, 0
  %i.if = add nsw i32 %i.id, 10
  %.0198.epil = select i1 %i.ie, i32 %i.if, i32 %i.id
  %i.ig = trunc i32 %.0198.epil to i8
  store i8 %i.ig, ptr %.0206323.epil.init, align 1, !tbaa !15
  br label %._crit_edge328

._crit_edge328:                                   ; preds = %._crit_edge328.unr-lcssa, %.lr.ph327.epil.preheader
  %.lcssa421 = phi i32 [ %i.ht, %._crit_edge328.unr-lcssa ], [ %i.id, %.lr.ph327.epil.preheader ]
  %i.ih = icmp sgt i32 %.lcssa421, -1
  br i1 %i.ih, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge328
  %i.ii = add nsw i32 %.1189, -1                  ; 3 uses
  switch i32 %.0197.lcssa, label %.lr.ph335 [
    i32 0, label %.thread
    i32 1, label %.lr.ph335.epil.preheader
  ]

.lr.ph335:                                        ; preds = %bb.aa, %.lr.ph335
  %.0185333 = phi i32 [ %.1.1, %.lr.ph335 ], [ 0, %bb.aa ]
  %.pn228331 = phi ptr [ %.1205.1, %.lr.ph335 ], [ %i.fd, %bb.aa ] ; 2 uses
  %.1207330 = phi ptr [ %i.jc, %.lr.ph335 ], [ %i.hb, %bb.aa ] ; 4 uses
  %niter438 = phi i32 [ %niter438.next.1, %.lr.ph335 ], [ 0, %bb.aa ]
  %.1205 = getelementptr inbounds i8, ptr %.pn228331, i64 -1
  %i.ij = load i8, ptr %.1207330, align 1, !tbaa !15
  %i.ik = sext i8 %i.ij to i32
  %i.il = load i8, ptr %.1205, align 1, !tbaa !15
  %i.im = sext i8 %i.il to i32
  %i.in = add nsw i32 %.0185333, %i.ik
  %i.io = add nsw i32 %i.in, %i.im                ; 3 uses
  %i.ip = icmp sgt i32 %i.io, 9                   ; 2 uses
  %i.iq = add nsw i32 %i.io, 246
  %.1199 = select i1 %i.ip, i32 %i.iq, i32 %i.io
  %.1 = zext i1 %i.ip to i32
  %i.ir = trunc i32 %.1199 to i8
  %i.is = getelementptr inbounds i8, ptr %.1207330, i64 -1 ; 2 uses
  store i8 %i.ir, ptr %.1207330, align 1, !tbaa !15
  %.1205.1 = getelementptr inbounds i8, ptr %.pn228331, i64 -2 ; 3 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !15
  %i.iu = sext i8 %i.it to i32
  %i.iv = load i8, ptr %.1205.1, align 1, !tbaa !15
  %i.iw = sext i8 %i.iv to i32
  %i.ix = add nsw i32 %.1, %i.iu
  %i.iy = add nsw i32 %i.ix, %i.iw                ; 3 uses
  %i.iz = icmp sgt i32 %i.iy, 9                   ; 3 uses
  %i.ja = add nsw i32 %i.iy, 246
  %.1199.1 = select i1 %i.iz, i32 %i.ja, i32 %i.iy
  %.1.1 = zext i1 %i.iz to i32                    ; 2 uses
  %i.jb = trunc i32 %.1199.1 to i8
  %i.jc = getelementptr inbounds i8, ptr %.1207330, i64 -2 ; 3 uses
  store i8 %i.jb, ptr %i.is, align 1, !tbaa !15
  %niter438.next.1 = add nuw i32 %niter438, 2     ; 2 uses
  %niter438.ncmp.1 = icmp eq i32 %niter438.next.1, %unroll_iter437
  br i1 %niter438.ncmp.1, label %._crit_edge336.unr-lcssa, label %.lr.ph335, !llvm.loop !58

._crit_edge336.unr-lcssa:                         ; preds = %.lr.ph335
  br i1 %lcmp.mod433.not, label %._crit_edge336, label %.lr.ph335.epil.preheader

.lr.ph335.epil.preheader:                         ; preds = %bb.aa, %._crit_edge336.unr-lcssa
  %.0185333.epil.init = phi i32 [ 0, %bb.aa ], [ %.1.1, %._crit_edge336.unr-lcssa ]
  %.pn228331.epil.init = phi ptr [ %i.fd, %bb.aa ], [ %.1205.1, %._crit_edge336.unr-lcssa ]
  %.1207330.epil.init = phi ptr [ %i.hb, %bb.aa ], [ %i.jc, %._crit_edge336.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod436)
  %.1205.epil = getelementptr inbounds i8, ptr %.pn228331.epil.init, i64 -1
  %i.jd = load i8, ptr %.1207330.epil.init, align 1, !tbaa !15
  %i.je = sext i8 %i.jd to i32
  %i.jf = load i8, ptr %.1205.epil, align 1, !tbaa !15
  %i.jg = sext i8 %i.jf to i32
  %i.jh = add nsw i32 %.0185333.epil.init, %i.je
  %i.ji = add nsw i32 %i.jh, %i.jg                ; 3 uses
  %i.jj = icmp sgt i32 %i.ji, 9                   ; 2 uses
  %i.jk = add nsw i32 %i.ji, 246
  %.1199.epil = select i1 %i.jj, i32 %i.jk, i32 %i.ji
  %i.jl = trunc i32 %.1199.epil to i8
  %i.jm = getelementptr inbounds i8, ptr %.1207330.epil.init, i64 -1
  store i8 %i.jl, ptr %.1207330.epil.init, align 1, !tbaa !15
  br label %._crit_edge336
end_hunk_1
