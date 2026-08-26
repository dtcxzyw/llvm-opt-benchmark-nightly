Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_wwunpack?download=true
inline.NumInlined: 35
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@wwunpack:bb.a
._crit_edge.i:                                    ; preds = %bb.et
  %.pre528.i = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.eu

bb.eu:                                            ; preds = %._crit_edge.i, %bb.es, %bb.dy, %bb.do, %bb.de
  %i.ma = phi i32 [ %.pre528.i, %._crit_edge.i ], [ %i.ly, %bb.es ], [ %i.jx, %bb.do ], [ %i.ks, %bb.dy ], [ %i.ja, %bb.de ]
  %i.mb = trunc i32 %i.ma to i16
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.cw
  %.0201.i = phi i16 [ %i.mb, %bb.eu ], [ %i.il, %bb.cw ] ; 8 uses
  %i.mc = icmp eq i16 %.0201.i, 0
  %i.md = zext i16 %.0201.i to i32
  %.not271.i = icmp ult i32 %i.aj, %i.md
  %i.me = or i1 %i.mc, %.not271.i
  %or.cond298.i = select i1 %i.am, i1 true, i1 %i.me
  br i1 %or.cond298.i, label %getbits.exit.thread, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.mf = zext nneg i32 %i.ik to i64
  %i.mg = sub nsw i64 0, %i.mf                    ; 12 uses
  %i.mh = getelementptr inbounds i8, ptr %.0198.i, i64 %i.mg ; 2 uses
  %.not272.i = icmp ult ptr %i.mh, %i.af
  br i1 %.not272.i, label %getbits.exit.thread, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.mi = zext i16 %.0201.i to i64                ; 7 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mi
  %.not273.i = icmp ule ptr %i.mj, %i.ao
  %.not274.i = icmp uge ptr %.0198.i, %i.af
  %or.cond300.not508.i = select i1 %.not273.i, i1 %.not274.i, i1 false
  %i.mk = getelementptr inbounds nuw i8, ptr %.0198.i, i64 %i.mi
  %.not275.i = icmp ule ptr %i.mk, %i.ao
  %or.cond507.i = select i1 %or.cond300.not508.i, i1 %.not275.i, i1 false
  br i1 %or.cond507.i, label %iter.check, label %getbits.exit.thread

iter.check:                                       ; preds = %bb.ex
  %min.iters.check = icmp ult i16 %.0201.i, 4
  %i.ml = add nsw i32 %i.ik, -1
  %diff.check = icmp ult i32 %i.ml, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check285 = icmp ult i16 %.0201.i, 32
  br i1 %min.iters.check285, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mm = and i64 %i.mi, 28
  %n.vec = and i64 %i.mi, 65504                   ; 5 uses
  %i.mn = getelementptr i8, ptr %.0198.i, i64 %n.vec ; 2 uses
  %i.mo = trunc nuw i64 %n.vec to i16
  %i.mp = sub i16 %.0201.i, %i.mo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.0198.i, i64 %index ; 3 uses
  %i.mq = getelementptr inbounds i8, ptr %next.gep, i64 %i.mg ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %wide.load = load <16 x i8>, ptr %i.mq, align 1, !tbaa !11
  %wide.load286 = load <16 x i8>, ptr %i.mr, align 1, !tbaa !11
  %i.ms = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !11
  store <16 x i8> %wide.load286, ptr %i.ms, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mt = icmp eq i64 %index.next, %n.vec
  br i1 %i.mt, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mi
  br i1 %cmp.n, label %thread-pre-split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec288 = and i64 %i.mi, 65532                ; 4 uses
  %i.mu = getelementptr i8, ptr %.0198.i, i64 %n.vec288 ; 2 uses
  %i.mv = trunc nuw i64 %n.vec288 to i16
  %i.mw = sub i16 %.0201.i, %i.mv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index289 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next292, %vec.epilog.vector.body ] ; 2 uses
  %next.gep290 = getelementptr i8, ptr %.0198.i, i64 %index289 ; 2 uses
  %i.mx = getelementptr inbounds i8, ptr %next.gep290, i64 %i.mg
  %wide.load291 = load <4 x i8>, ptr %i.mx, align 1, !tbaa !11
  store <4 x i8> %wide.load291, ptr %next.gep290, align 1, !tbaa !11
  %index.next292 = add nuw i64 %index289, 4       ; 2 uses
  %i.my = icmp eq i64 %index.next292, %n.vec288
  br i1 %i.my, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n293 = icmp eq i64 %n.vec288, %i.mi
  br i1 %cmp.n293, label %thread-pre-split.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2200504.i.ph = phi ptr [ %.0198.i, %iter.check ], [ %i.mn, %vec.epilog.iter.check ], [ %i.mu, %vec.epilog.middle.block ] ; 2 uses
  %.1202503.i.ph = phi i16 [ %.0201.i, %iter.check ], [ %i.mp, %vec.epilog.iter.check ], [ %i.mw, %vec.epilog.middle.block ] ; 4 uses
  %i.mz = add i16 %.1202503.i.ph, -1
  %xtraiter = and i16 %.1202503.i.ph, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.2200504.i.prol = phi ptr [ %i.nd, %.lr.ph.i.prol ], [ %.2200504.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.1202503.i.prol = phi i16 [ %i.na, %.lr.ph.i.prol ], [ %.1202503.i.ph, %.lr.ph.i.preheader ]
  %prol.iter = phi i16 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.na = add i16 %.1202503.i.prol, -1            ; 2 uses
  %i.nb = getelementptr inbounds i8, ptr %.2200504.i.prol, i64 %i.mg
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !11
  store i8 %i.nc, ptr %.2200504.i.prol, align 1, !tbaa !11
  %i.nd = getelementptr inbounds nuw i8, ptr %.2200504.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i16 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i16 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !18

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa296.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.nd, %.lr.ph.i.prol ]
  %.2200504.i.unr = phi ptr [ %.2200504.i.ph, %.lr.ph.i.preheader ], [ %i.nd, %.lr.ph.i.prol ]
  %.1202503.i.unr = phi i16 [ %.1202503.i.ph, %.lr.ph.i.preheader ], [ %i.na, %.lr.ph.i.prol ]
  %i.ne = icmp ult i16 %i.mz, 7
  br i1 %i.ne, label %thread-pre-split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.2200504.i = phi ptr [ %i.od, %.lr.ph.i ], [ %.2200504.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %.1202503.i = phi i16 [ %i.oa, %.lr.ph.i ], [ %.1202503.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.nf = getelementptr inbounds i8, ptr %.2200504.i, i64 %i.mg
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !11
  store i8 %i.ng, ptr %.2200504.i, align 1, !tbaa !11
  %i.nh = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 1 ; 2 uses
  %i.ni = getelementptr inbounds i8, ptr %i.nh, i64 %i.mg
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !11
  store i8 %i.nj, ptr %i.nh, align 1, !tbaa !11
  %i.nk = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 2 ; 2 uses
  %i.nl = getelementptr inbounds i8, ptr %i.nk, i64 %i.mg
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !11
  store i8 %i.nm, ptr %i.nk, align 1, !tbaa !11
  %i.nn = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 3 ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 %i.mg
  %i.np = load i8, ptr %i.no, align 1, !tbaa !11
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !11
  %i.nq = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 4 ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 %i.mg
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !11
  store i8 %i.ns, ptr %i.nq, align 1, !tbaa !11
  %i.nt = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 5 ; 2 uses
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 %i.mg
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !11
  store i8 %i.nv, ptr %i.nt, align 1, !tbaa !11
  %i.nw = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 6 ; 2 uses
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 %i.mg
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !11
  store i8 %i.ny, ptr %i.nw, align 1, !tbaa !11
  %i.nz = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 7 ; 2 uses
  %i.oa = add i16 %.1202503.i, -8                 ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %i.nz, i64 %i.mg
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !11
  store i8 %i.oc, ptr %i.nz, align 1, !tbaa !11
  %i.od = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 8 ; 2 uses
  %.not276.i.7 = icmp eq i16 %i.oa, 0
  br i1 %.not276.i.7, label %thread-pre-split.i, label %.lr.ph.i, !llvm.loop !20

getbits.exit.thread:                              ; preds = %bb.eo, %bb.en, %bb.eq, %bb.er, %bb.dz, %bb.ei, %bb.eh, %bb.ee, %bb.ed, %bb.ea, %bb.ca, %bb.cy, %bb.cc, %bb.cd, %bb.dd, %bb.br, %bb.bs, %bb.bm, %bb.bn, %bb.bf, %bb.dt, %bb.bh, %bb.bi, %bb.cm, %bb.ar, %bb.cu, %bb.at, %bb.au, %bb.dm, %bb.af, %bb.ag, %bb.cj, %bb.ai, %bb.aj, %bb.ct, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.x, %bb.dc, %bb.z, %bb.aa, %bb.dv, %bb.n, %bb.o, %bb.dw, %bb.et, %bb.ew, %bb.ex, %bb.w, %bb.bz, %bb.q, %bb.r, %bb.j, %bb.k, %bb.i, %bb.cz, %bb.cr, %bb.be, %bb.aq, %bb.ds, %bb.ev, %bb.cq, %bb.ci, %bb.dj, %bb.di, %bb.dl, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  tail call void @free(ptr noundef %i.aa) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #7
  br label %bb.fb

bb.ey:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  tail call void @free(ptr noundef %i.aa) #7
  %i.oe = getelementptr inbounds nuw i8, ptr %.090, i64 16
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !11
  %.not106 = icmp eq i8 %i.of, 0
  br i1 %.not106, label %bb.ez, label %.split.split

bb.ez:                                            ; preds = %bb.ey
  %i.og = zext i32 %5 to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 %i.og ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 6
  store i16 %8, ptr %i.oi, align 1
  %i.oj = getelementptr inbounds nuw i8, ptr %6, i64 661
  %.val119 = load i32, ptr %i.oj, align 1
  %i.ok = add i32 %4, 665
  %i.ol = add i32 %i.ok, %.val119                 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, i32 noundef %i.ol) #7
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  store i32 %i.ol, ptr %i.om, align 1
  %i.on = getelementptr inbounds nuw i8, ptr %i.oh, i64 80 ; 2 uses
  %.val118 = load i32, ptr %i.on, align 1
  %i.oo = add i32 %7, 4095
  %i.op = and i32 %i.oo, -4096
  %i.oq = sub i32 %.val118, %i.op
  store i32 %i.oq, ptr %i.on, align 1
  %i.or = getelementptr inbounds nuw i8, ptr %i.oh, i64 20
  %.val117 = load i32, ptr %i.or, align 1
  %i.os = and i32 %.val117, 65535
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ot ; 6 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 24 ; 2 uses
  %.not108152 = icmp eq i16 %8, 0
  br i1 %.not108152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ez
  %i.ow = sub i32 %2, %3                          ; 3 uses
  %xtraiter306 = and i16 %8, 1
  %lcmp.mod307.not = icmp eq i16 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %9 = add nsw i16 %8, -1
  %10 = getelementptr inbounds nuw i8, ptr %i.ou, i64 32 ; 2 uses
  %.val116.prol = load i32, ptr %10, align 1
  %11 = getelementptr inbounds nuw i8, ptr %i.ou, i64 40 ; 2 uses
  %.val115.prol = load i32, ptr %11, align 1
  %12 = tail call i32 @llvm.umax.i32(i32 %.val115.prol, i32 %.val116.prol)
  %13 = add i32 %12, 4095
  %14 = and i32 %13, -4096                        ; 2 uses
  store i32 %14, ptr %10, align 1
  store i32 %14, ptr %11, align 1
  %15 = getelementptr inbounds nuw i8, ptr %i.ou, i64 44
  %16 = getelementptr inbounds nuw i8, ptr %i.ou, i64 36
  %.val.prol = load i32, ptr %16, align 1
  %17 = add i32 %i.ow, %.val.prol
  store i32 %17, ptr %15, align 1
  %18 = getelementptr inbounds nuw i8, ptr %i.ou, i64 64 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa.unr = phi ptr [ poison, %.lr.ph ], [ %18, %.prol.loopexit.unr-lcssa ]
  %.089154.unr = phi i16 [ %8, %.lr.ph ], [ %9, %.prol.loopexit.unr-lcssa ]
  %.1153.unr = phi ptr [ %i.ov, %.lr.ph ], [ %18, %.prol.loopexit.unr-lcssa ]
  %19 = icmp eq i16 %8, 1
  br i1 %19, label %._crit_edge, label %bb.fa

bb.fa:                                            ; preds = %.prol.loopexit, %bb.fa
  %.089154 = phi i16 [ %26, %bb.fa ], [ %.089154.unr, %.prol.loopexit ]
  %.1153 = phi ptr [ %i.pe, %bb.fa ], [ %.1153.unr, %.prol.loopexit ] ; 9 uses
  %20 = getelementptr inbounds nuw i8, ptr %.1153, i64 8 ; 2 uses
  %.val116 = load i32, ptr %20, align 1
  %i.ox = getelementptr inbounds nuw i8, ptr %.1153, i64 16 ; 2 uses
  %.val116.a = load i32, ptr %i.ox, align 1
  %21 = tail call i32 @llvm.umax.i32(i32 %.val116.a, i32 %.val116)
  %22 = add i32 %21, 4095
  %23 = and i32 %22, -4096                        ; 2 uses
  store i32 %23, ptr %20, align 1
  store i32 %23, ptr %i.ox, align 1
  %24 = getelementptr inbounds nuw i8, ptr %.1153, i64 20
  %i.oy = getelementptr inbounds nuw i8, ptr %.1153, i64 12
  %.val115 = load i32, ptr %i.oy, align 1
  %25 = add i32 %i.ow, %.val115
  store i32 %25, ptr %24, align 1
  %26 = add i16 %.089154, -2                      ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %.1153, i64 48 ; 2 uses
  %.val116.1 = load i32, ptr %27, align 1
  %28 = getelementptr inbounds nuw i8, ptr %.1153, i64 56 ; 2 uses
  %.val115.1 = load i32, ptr %28, align 1
  %29 = tail call i32 @llvm.umax.i32(i32 %.val115.1, i32 %.val116.1)
  %i.oz = add i32 %29, 4095
  %i.pa = and i32 %i.oz, -4096                    ; 2 uses
  store i32 %i.pa, ptr %27, align 1
  store i32 %i.pa, ptr %28, align 1
  %i.pb = getelementptr inbounds nuw i8, ptr %.1153, i64 60
  %i.pc = getelementptr inbounds nuw i8, ptr %.1153, i64 52
  %.val = load i32, ptr %i.pc, align 1
  %i.pd = add i32 %i.ow, %.val
  store i32 %i.pd, ptr %i.pb, align 1
  %i.pe = getelementptr inbounds nuw i8, ptr %.1153, i64 80 ; 2 uses
  %.not108 = icmp eq i16 %26, 0
  br i1 %.not108, label %._crit_edge, label %bb.fa, !llvm.loop !21

._crit_edge:                                      ; preds = %.prol.loopexit, %bb.fa, %bb.ez
  %.1.lcssa = phi ptr [ %i.ov, %bb.ez ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.pe, %bb.fa ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.1.lcssa, i8 0, i64 40, i1 false)
  br label %bb.fb

bb.fb:                                            ; preds = %._crit_edge, %getbits.exit.thread, %.split150, %.split148.us, %.split146.us, %.split142
  %.0 = phi i32 [ 1, %.split146.us ], [ 1, %.split148.us ], [ 1, %getbits.exit.thread ], [ 0, %._crit_edge ], [ 1, %.split150 ], [ 1, %.split142 ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @getbits(i8 noundef zeroext %0, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull readnone captures(address) %5, i32 noundef range(i32 1, 0) %6) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !4
  %i.b = zext i8 %0 to i32                        ; 2 uses
  %i.c = sub nsw i32 32, %i.b
  %i.d = lshr i32 %i.a, %i.c                      ; 2 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !4
  %i.e = load i8, ptr %3, align 1, !tbaa !11      ; 3 uses
  %i.f = icmp ugt i8 %i.e, %0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 4, !tbaa !4
  %i.h = shl i32 %i.g, %i.b
  store i32 %i.h, ptr %2, align 4, !tbaa !4
  %i.i = load i8, ptr %3, align 1, !tbaa !11
  %i.j = sub i8 %i.i, %0
  br label %getbitmap.exit.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ult i8 %i.e, %0
  br i1 %i.k, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw i8 %0, %i.e                   ; 2 uses
  %i.l = zext i8 %narrow to i32                   ; 4 uses
  %i.m = lshr i32 %i.d, %i.l
  store i32 %i.m, ptr %1, align 4, !tbaa !4
  %i.n = icmp ugt i32 %6, 3
  br i1 %i.n, label %bb.e, label %getbitmap.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %4, align 8, !tbaa !8      ; 3 uses
  %.not.i = icmp ult ptr %i.o, %5
  br i1 %.not.i, label %getbitmap.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = zext i32 %6 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 %i.q
  %.not18.not.i = icmp ugt ptr %i.p, %i.r
  br i1 %.not18.not.i, label %getbitmap.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i = load i32, ptr %i.o, align 1
  store i32 %.val.i, ptr %2, align 4, !tbaa !4
  store ptr %i.p, ptr %4, align 8, !tbaa !8
  store i8 32, ptr %3, align 1, !tbaa !11
  %i.s = load i32, ptr %1, align 4, !tbaa !4
  %i.t = shl i32 %i.s, %i.l                       ; 2 uses
  store i32 %i.t, ptr %1, align 4, !tbaa !4
  %i.u = load i32, ptr %2, align 4, !tbaa !4
  %i.v = sub nsw i32 32, %i.l
  %i.w = lshr i32 %i.u, %i.v
  %i.x = or disjoint i32 %i.w, %i.t
  store i32 %i.x, ptr %1, align 4, !tbaa !4
  %i.y = load i32, ptr %2, align 4, !tbaa !4
  %i.z = shl i32 %i.y, %i.l
  store i32 %i.z, ptr %2, align 4, !tbaa !4
  %i.aa = load i8, ptr %3, align 1, !tbaa !11
  %i.ab = sub i8 %i.aa, %narrow
  br label %getbitmap.exit.thread.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ac = icmp ugt i32 %6, 3
  br i1 %i.ac, label %bb.i, label %getbitmap.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %4, align 8, !tbaa !8     ; 3 uses
  %.not.i38 = icmp ult ptr %i.ad, %5
  br i1 %.not.i38, label %getbitmap.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = zext i32 %6 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 %i.af
  %.not18.not.i39 = icmp ugt ptr %i.ae, %i.ag
  br i1 %.not18.not.i39, label %getbitmap.exit.thread, label %getbitmap.exit41

getbitmap.exit41:                                 ; preds = %bb.j
  %.val.i40 = load i32, ptr %i.ad, align 1
  store i32 %.val.i40, ptr %2, align 4, !tbaa !4
  store ptr %i.ae, ptr %4, align 8, !tbaa !8
  br label %getbitmap.exit.thread.sink.split

getbitmap.exit.thread.sink.split:                 ; preds = %getbitmap.exit41, %bb.g, %bb.b
  %.sink = phi i8 [ %i.j, %bb.b ], [ %i.ab, %bb.g ], [ 32, %getbitmap.exit41 ]
  store i8 %.sink, ptr %3, align 1, !tbaa !11
  br label %getbitmap.exit.thread

getbitmap.exit.thread:                            ; preds = %getbitmap.exit.thread.sink.split, %bb.h, %bb.i, %bb.j, %bb.d, %bb.e, %bb.f
  %.0 = phi i32 [ 1, %bb.d ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.f ], [ 1, %bb.e ], [ 0, %getbitmap.exit.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13, !14, !15}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 4, i32 28}
!17 = distinct !{!17, !13, !14, !15}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13}
end_hunk_0
