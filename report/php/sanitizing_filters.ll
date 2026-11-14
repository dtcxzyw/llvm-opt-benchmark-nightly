Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/sanitizing_filters?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@php_filter_strip:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.du, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.split.split.split.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %conditional.step, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %i.n, -8                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next107, %vec.epilog.vector.body ] ; 2 uses
  %conditional.iv104 = phi i64 [ %bc.resume.val, %vec.epilog.ph ], [ %conditional.step106, %vec.epilog.vector.body ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 %index103
  %wide.load105 = load <8 x i8>, ptr %i.ef, align 1, !tbaa !14 ; 3 uses
  %i.eg = add <8 x i8> %wide.load105, splat (i8 -32)
  %i.eh = icmp ult <8 x i8> %i.eg, splat (i8 95)
  %i.ei = icmp ne <8 x i8> %wide.load105, splat (i8 96)
  %i.ej = and <8 x i1> %i.eh, %i.ei               ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.r, i64 %conditional.iv104
  tail call void @llvm.masked.compressstore.v8i8.p0(<8 x i8> %wide.load105, ptr nonnull align 1 %i.ek, <8 x i1> %i.ej), !tbaa !14
  %i.el = bitcast <8 x i1> %i.ej to i8
  %i.em = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.el)
  %i.en = zext nneg i8 %i.em to i64
  %conditional.step106 = add i64 %conditional.iv104, %i.en ; 3 uses
  %index.next107 = add nuw i64 %index103, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next107, %n.vec102
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n108 = icmp eq i64 %i.n, %n.vec102
  br i1 %cmp.n108, label %._crit_edge, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.036.ph = phi i64 [ 0, %iter.check ], [ %conditional.step, %vec.epilog.iter.check ], [ %conditional.step106, %vec.epilog.middle.block ]
  %.02935.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ]
  br label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %bb.q, %.lr.ph.split.split.split.us.preheader.new
  %.036.us44 = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader.new ], [ %.1.us47.1, %bb.q ] ; 3 uses
  %.02935.us45 = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader.new ], [ %i.fa, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader.new ], [ %niter.next.1, %bb.q ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us45
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !14  ; 2 uses
  %i.er = add i8 %i.eq, -32
  %or.cond60 = icmp ult i8 %i.er, 95
  br i1 %or.cond60, label %bb.o, label %.lr.ph.split.split.split.us.1

bb.o:                                             ; preds = %.lr.ph.split.split.split.us
  %i.es = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us44
  store i8 %i.eq, ptr %i.es, align 1, !tbaa !14
  %i.et = add i64 %.036.us44, 1
  br label %.lr.ph.split.split.split.us.1

.lr.ph.split.split.split.us.1:                    ; preds = %bb.o, %.lr.ph.split.split.split.us
  %.1.us47 = phi i64 [ %.036.us44, %.lr.ph.split.split.split.us ], [ %i.et, %bb.o ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us45
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !14  ; 2 uses
  %i.ex = add i8 %i.ew, -32
  %or.cond60.1 = icmp ult i8 %i.ex, 95
  br i1 %or.cond60.1, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.split.split.us.1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 %.1.us47
  store i8 %i.ew, ptr %i.ey, align 1, !tbaa !14
  %i.ez = add i64 %.1.us47, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.split.split.split.us.1
  %.1.us47.1 = phi i64 [ %.1.us47, %.lr.ph.split.split.split.us.1 ], [ %i.ez, %bb.p ] ; 3 uses
  %i.fa = add nuw i64 %.02935.us45, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit203.unr-lcssa, label %.lr.ph.split.split.split.us, !llvm.loop !29

._crit_edge.loopexit198.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split.epil.preheader

.lr.ph.split.us.split.us.split.epil.preheader:    ; preds = %._crit_edge.loopexit198.unr-lcssa, %.lr.ph.split.us.split.us.split.preheader
  %.036.us.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader ], [ %.1.us.us.1, %._crit_edge.loopexit198.unr-lcssa ] ; 3 uses
  %.02935.us.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader ], [ %i.aq, %._crit_edge.loopexit198.unr-lcssa ]
  %lcmp.mod222 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us.us.epil.init
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !14  ; 2 uses
  %.not64.epil = icmp eq i8 %i.fc, 96
  br i1 %.not64.epil, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us.split.us.split.epil.preheader
  %i.fd = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us.us.epil.init
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !14
  %i.fe = add i64 %.036.us.us.epil.init, 1
  br label %._crit_edge

._crit_edge.loopexit199.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod214.not = icmp eq i64 %xtraiter213, 0
  br i1 %lcmp.mod214.not, label %._crit_edge, label %.lr.ph.split.us.split.split.us.epil.preheader

.lr.ph.split.us.split.split.us.epil.preheader:    ; preds = %._crit_edge.loopexit199.unr-lcssa, %.lr.ph.split.us.split.split.us.preheader
  %.036.us.us52.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader ], [ %.1.us.us55.1, %._crit_edge.loopexit199.unr-lcssa ] ; 3 uses
  %.02935.us.us53.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader ], [ %i.bw, %._crit_edge.loopexit199.unr-lcssa ]
  %lcmp.mod216 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod216)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us.us53.epil.init
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !14  ; 2 uses
  %i.fh = icmp ugt i8 %i.fg, 31
  br i1 %i.fh, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %.lr.ph.split.us.split.split.us.epil.preheader
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us.us52.epil.init
  store i8 %i.fg, ptr %i.fi, align 1, !tbaa !14
  %i.fj = add i64 %.036.us.us52.epil.init, 1
  br label %._crit_edge

._crit_edge.loopexit201.unr-lcssa:                ; preds = %bb.l
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %._crit_edge, label %.lr.ph.split.split.us.split.us.epil.preheader

.lr.ph.split.split.us.split.us.epil.preheader:    ; preds = %._crit_edge.loopexit201.unr-lcssa, %.lr.ph.split.split.us.split.us.preheader
  %.036.us37.us.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader ], [ %.1.us41.us.1, %._crit_edge.loopexit201.unr-lcssa ] ; 3 uses
  %.02935.us38.us.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader ], [ %i.dk, %._crit_edge.loopexit201.unr-lcssa ]
  %lcmp.mod210 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod210)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us38.us.epil.init
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !14  ; 2 uses
  %i.fm = icmp ult i8 %i.fl, 127
  br i1 %i.fm, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %.lr.ph.split.split.us.split.us.epil.preheader
  %i.fn = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us37.us.epil.init
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !14
  %i.fo = add i64 %.036.us37.us.epil.init, 1
  br label %._crit_edge

._crit_edge.loopexit203.unr-lcssa:                ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.split.split.us.epil.preheader

.lr.ph.split.split.split.us.epil.preheader:       ; preds = %._crit_edge.loopexit203.unr-lcssa, %.lr.ph.split.split.split.us.preheader
  %.036.us44.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader ], [ %.1.us47.1, %._crit_edge.loopexit203.unr-lcssa ] ; 3 uses
  %.02935.us45.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader ], [ %i.fa, %._crit_edge.loopexit203.unr-lcssa ]
  %lcmp.mod206 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us45.epil.init
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !14  ; 2 uses
  %i.fr = add i8 %i.fq, -32
  %or.cond60.epil = icmp ult i8 %i.fr, 95
  br i1 %or.cond60.epil, label %bb.u, label %._crit_edge

bb.u:                                             ; preds = %.lr.ph.split.split.split.us.epil.preheader
  %i.fs = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us44.epil.init
  store i8 %i.fq, ptr %i.fs, align 1, !tbaa !14
  %i.ft = add i64 %.036.us44.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %._crit_edge.loopexit203.unr-lcssa, %bb.u, %.lr.ph.split.split.split.us.epil.preheader, %bb.n, %._crit_edge.loopexit201.unr-lcssa, %bb.t, %.lr.ph.split.split.us.split.us.epil.preheader, %bb.i, %._crit_edge.loopexit199.unr-lcssa, %bb.s, %.lr.ph.split.us.split.split.us.epil.preheader, %._crit_edge.loopexit198.unr-lcssa, %bb.r, %.lr.ph.split.us.split.us.split.epil.preheader, %.lr.ph.split.us.split.us.split.us, %middle.block, %vec.epilog.middle.block, %middle.block121, %vec.epilog.middle.block137, %middle.block152, %vec.epilog.middle.block168, %middle.block182, %vec.epilog.middle.block195, %zend_string_alloc.exit
  %.0.lcssa = phi i64 [ 0, %zend_string_alloc.exit ], [ %.036.us.us52.epil.init, %.lr.ph.split.us.split.split.us.epil.preheader ], [ %i.af, %.lr.ph.split.us.split.us.split.us ], [ %i.ft, %bb.u ], [ %.036.us.us.epil.init, %.lr.ph.split.us.split.us.split.epil.preheader ], [ %i.fo, %bb.t ], [ %.1.us, %bb.i ], [ %.1.us41, %bb.n ], [ %n.vec190, %vec.epilog.middle.block195 ], [ %n.vec176, %middle.block182 ], [ %conditional.step166, %vec.epilog.middle.block168 ], [ %conditional.step150, %middle.block152 ], [ %conditional.step135, %vec.epilog.middle.block137 ], [ %conditional.step119, %middle.block121 ], [ %conditional.step106, %vec.epilog.middle.block ], [ %conditional.step, %middle.block ], [ %.1.us.us.1, %._crit_edge.loopexit198.unr-lcssa ], [ %i.fe, %bb.r ], [ %.1.us.us55.1, %._crit_edge.loopexit199.unr-lcssa ], [ %i.fj, %bb.s ], [ %.1.us41.us.1, %._crit_edge.loopexit201.unr-lcssa ], [ %.036.us37.us.epil.init, %.lr.ph.split.split.us.split.us.epil.preheader ], [ %.1.us47.1, %._crit_edge.loopexit203.unr-lcssa ], [ %.036.us44.epil.init, %.lr.ph.split.split.split.us.epil.preheader ], [ %.1, %bb.w ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.0.lcssa
  store i8 0, ptr %i.fv, align 1, !tbaa !14
  store i64 %.0.lcssa, ptr %i.k, align 8, !tbaa !18
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  store ptr %i.h, ptr %0, align 8, !tbaa !14
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.fw, align 8, !tbaa !14
  br label %bb.x

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split.split.preheader, %bb.w
  %.036 = phi i64 [ %.1, %bb.w ], [ %.036.ph, %.lr.ph.split.split.split.preheader ] ; 3 uses
  %.02935 = phi i64 [ %i.gd, %bb.w ], [ %.02935.ph, %.lr.ph.split.split.split.preheader ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !14  ; 3 uses
  %i.fz = add i8 %i.fy, -32
  %or.cond61 = icmp ult i8 %i.fz, 95
  %i.ga = icmp ne i8 %i.fy, 96
  %or.cond62 = and i1 %or.cond61, %i.ga
  br i1 %or.cond62, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.split.split.split
  %i.gb = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036
  store i8 %i.fy, ptr %i.gb, align 1, !tbaa !14
  %i.gc = add i64 %.036, 1
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.split.split, %bb.v
  %.1 = phi i64 [ %.036, %.lr.ph.split.split.split ], [ %i.gc, %bb.v ] ; 2 uses
  %i.gd = add nuw i64 %.02935, 1                  ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.n
  br i1 %i.ge, label %.lr.ph.split.split.split, label %._crit_edge, !llvm.loop !38

bb.x:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @php_filter_encode_html(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %2 = alloca %struct.smart_str, align 8          ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %bb.v, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.bg, %bb.m ] ; 4 uses
  %.047 = phi ptr [ %i.e, %.lr.ph ], [ %i.bh, %bb.m ] ; 5 uses
  %.02346 = phi ptr [ %i.e, %.lr.ph ], [ %.1, %bb.m ] ; 3 uses
  %i.l = load i8, ptr %.047, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %.047 to i64
  %i.q = ptrtoint ptr %.02346 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %.not.i29 = icmp eq ptr %i.k, null
  br i1 %.not.i29, label %bb.e, label %bb.d, !prof !45

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  %i.u = add i64 %i.t, %i.r                       ; 3 uses
  %i.v = load i64, ptr %i.h, align 8, !tbaa !47
  %.not12.i30 = icmp ult i64 %i.u, %i.v
  br i1 %.not12.i30, label %bb.f, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i31 = phi i64 [ %i.r, %bb.c ], [ %i.u, %bb.d ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i31) #8
  %.pre = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre50 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i64 [ %i.t, %bb.d ], [ %.pre50, %bb.e ]
  %i.x = phi ptr [ %i.k, %bb.d ], [ %.pre, %bb.e ]
  %.1.i32 = phi i64 [ %i.u, %bb.d ], [ %.0.i31, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %.02346, i64 %i.r, i1 false)
  %i.aa = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.1.i32, ptr %i.ab, align 8, !tbaa !18
  %i.ac = add i64 %.1.i32, 2                      ; 3 uses
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !47
  %.not12.i25 = icmp ult i64 %i.ac, %i.ad
  br i1 %.not12.i25, label %smart_str_alloc.exit28, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.ac) #8
  %.pre51 = load ptr, ptr %2, align 8, !tbaa !49  ; 2 uses
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %.pre51, i64 16
  %.pre53 = load i64, ptr %.phi.trans.insert52, align 8, !tbaa !18
  br label %smart_str_alloc.exit28

smart_str_alloc.exit28:                           ; preds = %bb.f, %bb.g
  %i.ae = phi i64 [ %.1.i32, %bb.f ], [ %.pre53, %bb.g ]
  %i.af = phi ptr [ %i.aa, %bb.f ], [ %.pre51, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i16 8998, ptr %i.ah, align 1
  %i.ai = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i64 %i.ac, ptr %i.aj, align 8, !tbaa !18
  %i.ak = load i8, ptr %.047, align 1, !tbaa !14
  %3 = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.i, align 1, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %smart_str_alloc.exit28
  %.05.i = phi ptr [ %i.i, %smart_str_alloc.exit28 ], [ %6, %bb.h ]
  %.0.i34 = phi i64 [ %3, %smart_str_alloc.exit28 ], [ %7, %bb.h ] ; 3 uses
  %4 = urem i64 %.0.i34, 10
  %5 = trunc nuw nsw i64 %4 to i8
  %i.al = or disjoint i8 %5, 48
  %6 = getelementptr inbounds i8, ptr %.05.i, i64 -1 ; 4 uses
  store i8 %i.al, ptr %6, align 1, !tbaa !14
  %7 = udiv i64 %.0.i34, 10
  %.not.i35.a = icmp samesign ult i64 %.0.i34, 10
  br i1 %.not.i35.a, label %bb.i, label %bb.h, !llvm.loop !43

bb.i:                                             ; preds = %bb.h
  %i.am = ptrtoint ptr %6 to i64
  %i.an = sub i64 %i.j, %i.am                     ; 2 uses
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.ap = add i64 %i.ao, %i.an                    ; 3 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !47
  %.not12.i.i = icmp ult i64 %i.ap, %i.aq
  br i1 %.not12.i.i, label %bb.k, label %bb.j, !prof !48

bb.j:                                             ; preds = %bb.i
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.ap) #8
  %.pre54 = load ptr, ptr %2, align 8, !tbaa !49  ; 2 uses
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %.pre54, i64 16
  %.pre56 = load i64, ptr %.phi.trans.insert55, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = phi i64 [ %.pre56, %bb.j ], [ %i.ao, %bb.i ]
  %i.as = phi ptr [ %.pre54, %bb.j ], [ %i.ai, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr noundef nonnull align 1 dereferenceable(1) %6, i64 %i.an, i1 false)
  %i.av = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store i64 %i.ap, ptr %i.aw, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !18
  %i.ay = add i64 %i.ax, 1                        ; 4 uses
  %i.az = load i64, ptr %i.h, align 8, !tbaa !47
  %.not12.i.i37 = icmp ult i64 %i.ay, %i.az
  br i1 %.not12.i.i37, label %smart_str_appendc_ex.exit, label %bb.l, !prof !48

bb.l:                                             ; preds = %bb.k
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.ay) #8
  %.pre57 = load ptr, ptr %2, align 8, !tbaa !49
  br label %smart_str_appendc_ex.exit

smart_str_appendc_ex.exit:                        ; preds = %bb.k, %bb.l
  %i.ba = phi ptr [ %i.av, %bb.k ], [ %.pre57, %bb.l ]
  %i.bb = getelementptr i8, ptr %i.ba, i64 23
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ay
  store i8 59, ptr %i.bc, align 1, !tbaa !14
  %i.bd = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.ay, ptr %i.be, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.047, i64 1
  br label %bb.m

bb.m:                                             ; preds = %smart_str_appendc_ex.exit, %bb.b
  %i.bg = phi ptr [ %i.bd, %smart_str_appendc_ex.exit ], [ %i.k, %bb.b ] ; 4 uses
  %.1 = phi ptr [ %i.bf, %smart_str_appendc_ex.exit ], [ %.02346, %bb.b ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.047, i64 1 ; 3 uses
  %i.bi = icmp ult ptr %i.bh, %i.f
  br i1 %i.bi, label %bb.b, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.m
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %.1 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !45

bb.n:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18 ; 2 uses
  %i.bo = add i64 %i.bn, %i.bl                    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !47
  %.not12.i = icmp ult i64 %i.bo, %i.bq
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.o, !prof !48

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.0.i = phi i64 [ %i.bl, %._crit_edge ], [ %i.bo, %bb.n ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i) #8
  %.pre58 = load ptr, ptr %2, align 8, !tbaa !49  ; 2 uses
  %.phi.trans.insert59 = getelementptr inbounds nuw i8, ptr %.pre58, i64 16
  %.pre60 = load i64, ptr %.phi.trans.insert59, align 8, !tbaa !18
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.n, %bb.o
  %i.br = phi i64 [ %i.bn, %bb.n ], [ %.pre60, %bb.o ]
  %i.bs = phi ptr [ %i.bg, %bb.n ], [ %.pre58, %bb.o ]
  %.1.i = phi i64 [ %i.bo, %bb.n ], [ %.0.i, %bb.o ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr align 1 %.1, i64 %i.bl, i1 false)
  %i.bv = load ptr, ptr %2, align 8, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %.1.i, ptr %i.bw, align 8, !tbaa !18
  call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  %i.bx = load ptr, ptr %2, align 8, !tbaa !49    ; 3 uses
  %.not.i40 = icmp eq ptr %i.bx, null
  br i1 %.not.i40, label %bb.u, label %smart_str_0.exit

smart_str_0.exit:                                 ; preds = %smart_str_alloc.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca
  store i8 0, ptr %i.cb, align 1, !tbaa !14
  %i.cc = load ptr, ptr %2, align 8, !tbaa !49    ; 9 uses
  %.not.i43 = icmp eq ptr %i.cc, null
  br i1 %.not.i43, label %smart_str_extract_ex.exit, label %bb.p

bb.p:                                             ; preds = %smart_str_0.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !47
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !18 ; 6 uses
  %i.ch = icmp ugt i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.q, label %smart_str_extract_ex.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !14
  %i.ck = and i32 %i.cj, 64
  %.not.i44 = icmp eq i32 %i.ck, 0
  br i1 %.not.i44, label %bb.r, label %zend_string_alloc.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cl = load i32, ptr %i.cc, align 8, !tbaa !19
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.s, label %zend_string_alloc.exit.i, !prof !48

bb.s:                                             ; preds = %bb.r
  %i.cn = and i64 %i.cg, -8
  %i.co = add i64 %i.cn, 32
  %i.cp = call ptr @_erealloc(ptr noundef nonnull %i.cc, i64 noundef %i.co) #10 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %i.cg, ptr %i.cq, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !14
  %i.cu = and i32 %i.ct, -513
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !14
  br label %smart_str_extract_ex.exit

zend_string_alloc.exit.i:                         ; preds = %bb.q, %bb.r
  %i.cv = and i64 %i.cg, -8
  %i.cw = add i64 %i.cv, 32
  %i.cx = call noalias ptr @_emalloc(i64 noundef %i.cw) #9 ; 7 uses
  store i32 1, ptr %i.cx, align 4, !tbaa !19
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 22, ptr %i.cy, align 4, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 0, ptr %i.cz, align 8, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.cg, ptr %i.da, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.dd = load i64, ptr %i.cf, align 8, !tbaa !18
  %..i = call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.dd)
  %i.de = add nuw i64 %..i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, ptr noundef nonnull align 8 dereferenceable(1) %i.dc, i64 %i.de, i1 false)
  %i.df = load i32, ptr %i.ci, align 4, !tbaa !14
  %i.dg = and i32 %i.df, 64
  %.not24.i = icmp eq i32 %i.dg, 0
  br i1 %.not24.i, label %bb.t, label %smart_str_extract_ex.exit

bb.t:                                             ; preds = %zend_string_alloc.exit.i
  %i.dh = load i32, ptr %i.cc, align 8, !tbaa !19 ; 2 uses
  %i.di = icmp ne i32 %i.dh, 0
  call void @llvm.assume(i1 %i.di)
  %i.dj = add i32 %i.dh, -1
  store i32 %i.dj, ptr %i.cc, align 8, !tbaa !19
  br label %smart_str_extract_ex.exit

bb.u:                                             ; preds = %smart_str_alloc.exit
  %i.dk = load ptr, ptr @zend_empty_string, align 8, !tbaa !23
  br label %smart_str_extract_ex.exit

smart_str_extract_ex.exit:                        ; preds = %bb.p, %smart_str_0.exit, %bb.s, %zend_string_alloc.exit.i, %bb.t, %bb.u
  %.0.i41 = phi ptr [ %i.dk, %bb.u ], [ null, %smart_str_0.exit ], [ %i.cc, %bb.p ], [ %i.cp, %bb.s ], [ %i.cx, %bb.t ], [ %i.cx, %zend_string_alloc.exit.i ]
  store ptr %.0.i41, ptr %0, align 8, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.dl, align 8, !tbaa !14
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %smart_str_extract_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

declare i64 @php_strip_tags_ex(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_encoded(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  tail call fastcc void @php_filter_strip(ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(255) %i.a, i8 1, i64 255, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 97
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 45
  store i8 0, ptr %i.e, align 1, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  store i8 0, ptr %i.f, align 2, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 95
  store i8 0, ptr %i.g, align 1, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.d, i8 0, i64 10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.c, i8 0, i64 26, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.b, i8 0, i64 26, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = tail call noalias ptr @_safe_emalloc(i64 noundef %i.j, i64 noundef 3, i64 noundef 32) #8 ; 6 uses
  store i32 1, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 22, ptr %i.l, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %.not4.i = icmp eq i64 %i.r, 0
  br i1 %.not4.i, label %php_filter_encode_url.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.03.i = phi ptr [ %.1.i, %bb.d ], [ %i.n, %bb.a ] ; 5 uses
  %.1322.i = phi ptr [ %i.ak, %bb.d ], [ %i.p, %bb.a ] ; 4 uses
  %i.t = load i8, ptr %.1322.i, align 1, !tbaa !14 ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.03.i, i64 1 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  store i8 37, ptr %.03.i, align 1, !tbaa !14
  %i.y = load i8, ptr %.1322.i, align 1, !tbaa !14
  %i.z = lshr i8 %i.y, 4
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %.03.i, i64 2
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !14
  %i.ae = load i8, ptr %.1322.i, align 1, !tbaa !14
  %i.af = and i8 %i.ae, 15
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %.03.i, i64 3
  store i8 %i.ai, ptr %i.ad, align 1, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i8 %i.t, ptr %.03.i, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi ptr [ %i.aj, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1322.i, i64 1 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %i.s
  br i1 %i.al, label %.lr.ph.i, label %php_filter_encode_url.exit, !llvm.loop !50

php_filter_encode_url.exit:                       ; preds = %bb.d, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %.1.i, %bb.d ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 0, ptr %.0.lcssa.i, align 1, !tbaa !14
  %i.an = ptrtoint ptr %.0.lcssa.i to i64
  %i.ao = ptrtoint ptr %i.n to i64
  %i.ap = sub i64 %i.an, %i.ao
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !18
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  store ptr %i.k, ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.aq, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_special_chars(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.b, i8 0, i64 224, i1 false)
  tail call fastcc void @php_filter_strip(ptr noundef %0, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i8 1, ptr %i.c, align 2, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  store i8 1, ptr %i.d, align 2, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i8 1, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 1, ptr %i.f, align 2, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  store i8 1, ptr %i.g, align 1, !tbaa !14
  %i.h = and i64 %1, 32
  %.not = icmp eq i64 %i.h, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 1, i64 32, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(129) %i.i, i8 1, i64 129, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call fastcc void @php_filter_encode_html(ptr noundef %0, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_full_special_chars(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 128
  %.not = icmp eq i64 %i.a, 0
  %. = select i1 %.not, i32 3, i32 0
  %i.b = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = tail call ptr @php_escape_html_entities_ex(ptr noundef nonnull %i.c, i64 noundef %i.e, i32 noundef 1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8 ; 2 uses
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  store ptr %i.f, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14
  %i.i = and i32 %i.h, 64
  %.not10 = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not10, i32 262, i32 6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !14
  ret i32 0
}

declare ptr @php_escape_html_entities_ex(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_unsafe_raw(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %.not11 = icmp eq i64 %i.d, 0
  br i1 %.not11, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  tail call fastcc void @php_filter_strip(ptr noundef nonnull %0, i64 noundef %1)
  %i.e = and i64 %1, 64
  %.not13 = icmp eq i64 %i.e, 0
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i8 1, ptr %i.f, align 2, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = and i64 %1, 16
  %.not14 = icmp eq i64 %i.g, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 1, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = and i64 %1, 32
  %.not15 = icmp eq i64 %i.h, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(129) %i.i, i8 1, i64 129, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call fastcc void @php_filter_encode_html(ptr noundef nonnull %0, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread

bb.j:                                             ; preds = %bb.b
  %i.j = and i64 %1, 256
  %.not12 = icmp eq i64 %i.j, 0
  br i1 %.not12, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.j, %bb.k, %bb.i
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_email(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %.07.i = phi i64 [ 0, %bb.a ], [ %i.ae, %.lr.ph.i ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.c = load i8, ptr %i.b, align 2, !tbaa !14
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  store i64 1, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i
  store i64 1, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i8, ptr %i.l, align 2, !tbaa !14
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  store i64 1, ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s
  store i64 1, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i8, ptr %i.v, align 2, !tbaa !14
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x
  store i64 1, ptr %i.y, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac
  store i64 1, ptr %i.ad, align 8, !tbaa !25
  %i.ae = add nuw nsw i64 %.07.i, 6               ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %i.ae, 84
  br i1 %exitcond.not.i.5, label %filter_map_update.exit, label %.lr.ph.i, !llvm.loop !0

filter_map_update.exit:                           ; preds = %.lr.ph.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.aj = and i64 %i.ai, -8
  %i.ak = add i64 %i.aj, 32
  %i.al = tail call noalias ptr @_emalloc(i64 noundef %i.ak) #9 ; 7 uses
  store i32 1, ptr %i.al, align 4, !tbaa !19
end_hunk_0
begin_hunk_1_@php_filter_number_float:.lr.ph.i
  %.not25.i = icmp eq i64 %i.z, 0
  br i1 %.not25.i, label %filter_map_apply.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %filter_map_update.exit19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %xtraiter = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.i20.new

.lr.ph.i20.new:                                   ; preds = %.lr.ph.i20
  %unroll_iter = and i64 %i.z, -2
  br label %bb.a

bb.a:                                             ; preds = %bb.e, %.lr.ph.i20.new
  %.024.i = phi i64 [ 0, %.lr.ph.i20.new ], [ %i.ar, %bb.e ] ; 3 uses
  %.02223.i = phi i64 [ 0, %.lr.ph.i20.new ], [ %.1.i.1, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i20.new ], [ %niter.next.1, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %.024.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14  ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !25
  %.not.i21 = icmp eq i64 %i.ag, 0
  br i1 %.not.i21, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.02223.i
  store i8 %i.ad, ptr %i.ah, align 1, !tbaa !14
  %i.ai = add i64 %.02223.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1.i = phi i64 [ %i.ai, %bb.b ], [ %.02223.i, %bb.a ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 %.024.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14  ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !25
  %.not.i21.1 = icmp eq i64 %i.ao, 0
  br i1 %.not.i21.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.1.i
  store i8 %i.al, ptr %i.ap, align 1, !tbaa !14
  %i.aq = add i64 %.1.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i.1 = phi i64 [ %i.aq, %bb.d ], [ %.1.i, %bb.c ] ; 3 uses
  %i.ar = add nuw i64 %.024.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %filter_map_apply.exit.loopexit.unr-lcssa, label %bb.a, !llvm.loop !1

filter_map_apply.exit.loopexit.unr-lcssa:         ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %filter_map_apply.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %filter_map_apply.exit.loopexit.unr-lcssa, %.lr.ph.i20
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i20 ], [ %i.ar, %filter_map_apply.exit.loopexit.unr-lcssa ]
  %.02223.i.epil.init = phi i64 [ 0, %.lr.ph.i20 ], [ %.1.i.1, %filter_map_apply.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod25 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 %.024.i.epil.init
  %i.at = load i8, ptr %i.as, align 1, !tbaa !14  ; 2 uses
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25
  %.not.i21.epil = icmp eq i64 %i.aw, 0
  br i1 %.not.i21.epil, label %filter_map_apply.exit, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.02223.i.epil.init
  store i8 %i.at, ptr %i.ax, align 1, !tbaa !14
  %i.ay = add i64 %.02223.i.epil.init, 1
  br label %filter_map_apply.exit

filter_map_apply.exit:                            ; preds = %filter_map_apply.exit.loopexit.unr-lcssa, %bb.f, %.epil.preheader, %filter_map_update.exit19
  %.022.lcssa.i = phi i64 [ 0, %filter_map_update.exit19 ], [ %.1.i.1, %filter_map_apply.exit.loopexit.unr-lcssa ], [ %i.ay, %bb.f ], [ %.02223.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.022.lcssa.i
  store i8 0, ptr %i.bb, align 1, !tbaa !14
  store i64 %.022.lcssa.i, ptr %i.az, align 8, !tbaa !18
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  store ptr %i.u, ptr %0, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.bc, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_add_slashes(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = tail call ptr @php_addslashes(ptr noundef %i.a) #8 ; 2 uses
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = and i32 %i.d, 64
  %.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not, i32 262, i32 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !14
  ret i32 0
}

declare ptr @php_addslashes(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #4

declare void @smart_str_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.compressstore.v16i8.p0(<16 x i8>, ptr captures(none), <16 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.compressstore.v8i8.p0(<8 x i8>, ptr captures(none), <8 x i1>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(1) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!"_zend_refcounted_h", !11, i64 0, !10, i64 4}
!16 = !{!"long", !10, i64 0}
!17 = !{!"_zend_string", !15, i64 0, !16, i64 8, !16, i64 16, !10, i64 24}
!18 = !{!17, !16, i64 16}
!19 = !{!15, !11, i64 0}
!20 = !{!17, !16, i64 8}
!21 = !{!"any pointer", !10, i64 0}
!22 = !{!"p1 _ZTS12_zend_string", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!16, !16, i64 0}
!26 = distinct !{!26, !24, !39, !40}
!27 = distinct !{!27, !24, !39, !40}
!28 = distinct !{!28, !24, !40, !39}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24, !39, !40}
!31 = distinct !{!31, !24, !39, !40}
!32 = distinct !{!32, !24, !40, !39}
!33 = distinct !{!33, !24, !39, !40}
!34 = distinct !{!34, !24, !39, !40}
!35 = distinct !{!35, !24, !40, !39}
!36 = distinct !{!36, !24, !39, !40}
!37 = distinct !{!37, !24, !39, !40}
!38 = distinct !{!38, !24, !40, !39}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"branch_weights", i32 4, i32 28}
!42 = !{!"branch_weights", i32 8, i32 8}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!46 = !{!"", !22, i64 0, !16, i64 8}
!47 = !{!46, !16, i64 8}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = !{!46, !22, i64 0}
!50 = distinct !{!50, !24}
end_hunk_1
