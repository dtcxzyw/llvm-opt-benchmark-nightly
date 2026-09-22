Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v07?download=true
inline.NumInlined: 402
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@HUFv07_readStats:bb.a
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec132 = and i64 %i.o, -4                    ; 3 uses
  %i.au = shl i64 %n.vec132, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next136, %vec.epilog.vector.body ] ; 3 uses
  %i.av = shl nuw i64 %index133, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %index133
  %wide.load134 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !17, !alias.scope !90 ; 2 uses
  %i.ax = lshr <4 x i8> %wide.load134, splat (i8 4)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  %i.az = and <4 x i8> %wide.load134, splat (i8 15)
  %interleaved.vec135 = shufflevector <4 x i8> %i.ax, <4 x i8> %i.az, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec135, ptr %i.ay, align 1, !tbaa !17, !alias.scope !91, !noalias !90
  %index.next136 = add nuw i64 %index133, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !87

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %i.o, %n.vec132
  br i1 %cmp.n137, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bb = phi i64 [ %i.bl, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.bc = lshr exact i64 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17
  %i.bf = lshr i8 %i.be, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !17
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !17
  %i.bi = and i8 %i.bh, 15
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !17
  %i.bl = add nuw nsw i64 %i.bb, 2                ; 2 uses
  %i.bm = icmp samesign ugt i64 %i.i, %i.bl
  br i1 %i.bm, label %.lr.ph, label %.loopexit.thread, !llvm.loop !88

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i64 68, i1 false)
  br label %.lr.ph106.preheader

bb.g:                                             ; preds = %bb.b
  %.not89 = icmp ugt i64 %6, %i.b
  br i1 %.not89, label %bb.h, label %.critedge97

bb.h:                                             ; preds = %bb.g
  %i.bn = add i64 %1, -1
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bp = tail call i64 @FSEv07_decompress(ptr noundef %0, i64 noundef %i.bn, ptr noundef nonnull %i.bo, i64 noundef %i.b) ; 3 uses
  %i.bq = icmp ult i64 %i.bp, -119
  br i1 %i.bq, label %.loopexit, label %.critedge97

.loopexit:                                        ; preds = %bb.h, %bb.d
  %.076 = phi i64 [ 0, %bb.d ], [ %i.b, %bb.h ]
  %.075 = phi i64 [ %i.h, %bb.d ], [ %i.bp, %bb.h ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i64 68, i1 false)
  %.not93103.not = icmp eq i64 %.075, 0
  br i1 %.not93103.not, label %.critedge97, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %.loopexit.thread, %.loopexit
  %.075121 = phi i64 [ %i.i, %.loopexit.thread ], [ %.075, %.loopexit ] ; 3 uses
  %.076119 = phi i64 [ %i.k, %.loopexit.thread ], [ %.076, %.loopexit ]
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %bb.i
  %i.br = phi i64 [ %i.cf, %bb.i ], [ 0, %.lr.ph106.preheader ]
  %.0105 = phi i32 [ %i.ce, %bb.i ], [ 0, %.lr.ph106.preheader ]
  %.077104 = phi i32 [ %i.cd, %bb.i ], [ 0, %.lr.ph106.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17  ; 2 uses
  %i.bu = icmp ugt i8 %i.bt, 15
  br i1 %i.bu, label %.critedge97, label %bb.i

bb.i:                                             ; preds = %.lr.ph106
  %i.bv = zext nneg i8 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !13
  %i.bz = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = shl nuw i32 1, %i.ca
  %i.cc = ashr i32 %i.cb, 1
  %i.cd = add i32 %i.cc, %.077104                 ; 4 uses
  %i.ce = add i32 %.0105, 1                       ; 2 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %.not93 = icmp ugt i64 %.075121, %i.cf
  br i1 %.not93, label %.lr.ph106, label %.critedge, !llvm.loop !89

.critedge:                                        ; preds = %bb.i
  %.old = icmp eq i32 %i.cd, 0
  br i1 %.old, label %.critedge97, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.cg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cd, i1 true) ; 2 uses
  %i.ch = xor i32 %i.cg, 31                       ; 2 uses
  %i.ci = icmp samesign ugt i32 %i.ch, 15
  br i1 %i.ci, label %.critedge97, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = sub nuw nsw i32 32, %i.cg
  store i32 %i.cj, ptr %4, align 4, !tbaa !13
  %i.ck = shl nuw nsw i32 2, %i.ch
  %i.cl = sub i32 %i.ck, %i.cd                    ; 2 uses
  %i.cm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cl, i1 true) ; 2 uses
  %i.cn = lshr exact i32 -2147483648, %i.cm
  %.not94 = icmp eq i32 %i.cn, %i.cl
  br i1 %.not94, label %bb.l, label %.critedge97

bb.l:                                             ; preds = %bb.k
  %i.co = sub nuw nsw i32 32, %i.cm               ; 2 uses
  %i.cp = trunc nuw nsw i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.075121
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !17
  %i.cr = zext nneg i32 %i.co to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !13
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !13 ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 1
  %i.cy = and i32 %i.cw, 1
  %.not95 = icmp eq i32 %i.cy, 0
  %or.cond = and i1 %i.cx, %.not95
  br i1 %or.cond, label %bb.m, label %.critedge97

bb.m:                                             ; preds = %bb.l
  %i.cz = trunc nuw i64 %.075121 to i32
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %3, align 4, !tbaa !13
  %i.db = add nuw nsw i64 %.076119, 1
  br label %.critedge97

.critedge97:                                      ; preds = %.lr.ph106, %.loopexit, %bb.k, %bb.j, %bb.l, %.critedge, %bb.h, %bb.g, %bb.f, %bb.e, %bb.a, %bb.m
  %.3 = phi i64 [ %i.bp, %bb.h ], [ -20, %bb.j ], [ %i.db, %bb.m ], [ -20, %bb.k ], [ -20, %bb.l ], [ -72, %bb.a ], [ -72, %bb.e ], [ -20, %bb.f ], [ -72, %bb.g ], [ -20, %.critedge ], [ -20, %.loopexit ], [ -20, %.lr.ph106 ]
  ret i64 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @FSEv07_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [256 x i16], align 16             ; 7 uses
  %i.c = alloca [4097 x i32], align 16            ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i32 255, ptr %i.e, align 4, !tbaa !13
  %i.f = icmp ult i64 %3, 2
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i64 @FSEv07_readNCount(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not28 = icmp ult i64 %i.g, %3
  br i1 %.not28, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.j = sub nuw i64 %3, %i.g
  %i.k = load i32, ptr %i.e, align 4, !tbaa !13   ; 3 uses
  %i.l = load i32, ptr %i.d, align 4, !tbaa !13   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.n = shl nuw i32 1, %i.l                      ; 5 uses
  %i.o = add i32 %i.n, -1                         ; 5 uses
  %i.p = icmp ugt i32 %i.k, 255
  br i1 %i.p, label %FSEv07_buildDTable.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i32 %i.l, 12
  br i1 %i.q, label %FSEv07_buildDTable.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %sext.i = shl nuw nsw i32 32768, %i.l
  %i.r = lshr exact i32 %sext.i, 16               ; 3 uses
  %i.s = add nuw nsw i32 %i.k, 1                  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.s to i64  ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.f
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.m ] ; 5 uses
  %.sroa.4.079.i = phi i16 [ 1, %.new ], [ %.sroa.4.2.i.1, %bb.m ] ; 2 uses
  %.07178.i = phi i32 [ %i.o, %.new ], [ %.172.i.1, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.m ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.v = load i16, ptr %i.u, align 4, !tbaa !16   ; 3 uses
  %i.w = icmp eq i16 %i.v, -1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = trunc i64 %indvars.iv.i to i8
  %i.y = add i32 %.07178.i, -1
  %i.z = zext i32 %.07178.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 %i.x, ptr %i.ab, align 2, !tbaa !22
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = sext i16 %i.v to i32
  %.not76.i = icmp sgt i32 %i.r, %i.ac
  %spec.select.i = select i1 %.not76.i, i16 %.sroa.4.079.i, i16 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi i16 [ 1, %bb.h ], [ %i.v, %bb.i ]
  %.172.i = phi i32 [ %i.y, %bb.h ], [ %.07178.i, %bb.i ] ; 3 uses
  %.sroa.4.2.i = phi i16 [ %.sroa.4.079.i, %bb.h ], [ %spec.select.i, %bb.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  store i16 %.sink.i, ptr %i.ad, align 4, !tbaa !16
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !16 ; 3 uses
  %i.ag = icmp eq i16 %i.af, -1
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = sext i16 %i.af to i32
  %.not76.i.1 = icmp sgt i32 %i.r, %i.ah
  %spec.select.i.1 = select i1 %.not76.i.1, i16 %.sroa.4.2.i, i16 0
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = trunc i64 %indvars.iv.next.i to i8
  %i.aj = add i32 %.172.i, -1
  %i.ak = zext i32 %.172.i to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i8 %i.ai, ptr %i.am, align 2, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i.1 = phi i16 [ 1, %bb.l ], [ %i.af, %bb.k ]
  %.172.i.1 = phi i32 [ %i.aj, %bb.l ], [ %.172.i, %bb.k ] ; 3 uses
  %.sroa.4.2.i.1 = phi i16 [ %.sroa.4.2.i, %bb.l ], [ %spec.select.i.1, %bb.k ] ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i16 %.sink.i.1, ptr %i.an, align 2, !tbaa !16
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.g, !llvm.loop !0

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.p, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.f
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.1, %.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i.epil.init = phi i16 [ 1, %bb.f ], [ %.sroa.4.2.i.1, %.unr-lcssa ] ; 2 uses
  %.07178.i.epil.init = phi i32 [ %i.o, %bb.f ], [ %.172.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod44 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !16 ; 3 uses
  %i.aq = icmp eq i16 %i.ap, -1
  br i1 %i.aq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.epil.preheader
  %i.ar = sext i16 %i.ap to i32
  %.not76.i.epil = icmp sgt i32 %i.r, %i.ar
  %spec.select.i.epil = select i1 %.not76.i.epil, i16 %.sroa.4.079.i.epil.init, i16 0
  br label %.epilog-lcssa

bb.o:                                             ; preds = %.epil.preheader
  %i.as = trunc i64 %indvars.iv.i.epil.init to i8
  %i.at = add i32 %.07178.i.epil.init, -1
  %i.au = zext i32 %.07178.i.epil.init to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 %i.as, ptr %i.aw, align 2, !tbaa !22
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %bb.o, %bb.n
  %.sink.i.epil = phi i16 [ 1, %bb.o ], [ %i.ap, %bb.n ]
  %.172.i.epil = phi i32 [ %i.at, %bb.o ], [ %.07178.i.epil.init, %bb.n ]
  %.sroa.4.2.i.epil = phi i16 [ %.sroa.4.079.i.epil.init, %bb.o ], [ %spec.select.i.epil, %bb.n ]
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init
  store i16 %.sink.i.epil, ptr %i.ax, align 2, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %.172.i.lcssa = phi i32 [ %.172.i.1, %.unr-lcssa ], [ %.172.i.epil, %.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i.lcssa = phi i16 [ %.sroa.4.2.i.1, %.unr-lcssa ], [ %.sroa.4.2.i.epil, %.epilog-lcssa ]
  %i.ay = trunc nuw nsw i32 %i.l to i16
  store i16 %i.ay, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %.sroa.4.2.i.lcssa, ptr %.sroa.4.0..sroa_idx.i, align 2
  %i.az = lshr i32 %i.n, 1
  %i.ba = lshr i32 %i.n, 3
  %i.bb = add nuw nsw i32 %i.ba, 3
  %i.bc = add nuw nsw i32 %i.bb, %i.az            ; 3 uses
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %._crit_edge.i, %bb.p
  %indvars.iv87.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next88.i, %._crit_edge.i ] ; 3 uses
  %.06684.i = phi i32 [ 0, %bb.p ], [ %.167.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv87.i
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !16 ; 5 uses
  %i.bf = icmp sgt i16 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader77.i
  %i.bg = trunc i64 %indvars.iv87.i to i8         ; 3 uses
  %i.bh = icmp eq i16 %i.be, 1
  br i1 %i.bh, label %.epil.preheader45, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %i.bi = and i16 %i.be, 32766
  %unroll_iter50 = zext nneg i16 %i.bi to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.new
  %.16781.i = phi i32 [ %.06684.i, %.lr.ph.i.new ], [ %.2.i.1, %bb.u ] ; 2 uses
  %niter51 = phi i32 [ 0, %.lr.ph.i.new ], [ %niter51.next.1, %bb.u ]
  %i.bj = zext nneg i32 %.16781.i to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 %i.bg, ptr %i.bl, align 2, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.167.pn.i = phi i32 [ %.16781.i, %bb.q ], [ %.2.i, %bb.r ]
  %.pn.i = add nuw i32 %i.bc, %.167.pn.i
  %.2.i = and i32 %.pn.i, %i.o                    ; 4 uses
  %i.bm = icmp ugt i32 %.2.i, %.172.i.lcssa
  br i1 %i.bm, label %bb.r, label %bb.s, !llvm.loop !1

bb.s:                                             ; preds = %bb.r
  %i.bn = zext nneg i32 %.2.i to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store i8 %i.bg, ptr %i.bp, align 2, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.167.pn.i.1 = phi i32 [ %.2.i, %bb.s ], [ %.2.i.1, %bb.t ]
  %.pn.i.1 = add nuw i32 %i.bc, %.167.pn.i.1
  %.2.i.1 = and i32 %.pn.i.1, %i.o                ; 5 uses
  %i.bq = icmp ugt i32 %.2.i.1, %.172.i.lcssa
  br i1 %i.bq, label %bb.t, label %bb.u, !llvm.loop !1

bb.u:                                             ; preds = %bb.t
  %niter51.next.1 = add i32 %niter51, 2           ; 2 uses
  %niter51.ncmp.1 = icmp eq i32 %niter51.next.1, %unroll_iter50
  br i1 %niter51.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.q, !llvm.loop !2

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.u
  %i.br = and i16 %i.be, 1
  %lcmp.mod47.not = icmp eq i16 %i.br, 0
  br i1 %lcmp.mod47.not, label %._crit_edge.i, label %.epil.preheader45

.epil.preheader45:                                ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.16781.i.epil.init = phi i32 [ %.06684.i, %.lr.ph.i ], [ %.2.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod49 = trunc i16 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.bs = zext nneg i32 %.16781.i.epil.init to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i8 %i.bg, ptr %i.bu, align 2, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader45
  %.167.pn.i.epil = phi i32 [ %.16781.i.epil.init, %.epil.preheader45 ], [ %.2.i.epil, %bb.v ]
  %.pn.i.epil = add nuw i32 %i.bc, %.167.pn.i.epil
  %.2.i.epil = and i32 %.pn.i.epil, %i.o          ; 3 uses
  %i.bv = icmp ugt i32 %.2.i.epil, %.172.i.lcssa
  br i1 %i.bv, label %bb.v, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.v, %.preheader77.i
  %.167.lcssa.i = phi i32 [ %.06684.i, %.preheader77.i ], [ %.2.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.2.i.epil, %bb.v ] ; 2 uses
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond91.not.i = icmp eq i64 %indvars.iv.next88.i, %wide.trip.count.i
  br i1 %exitcond91.not.i, label %bb.w, label %.preheader77.i, !llvm.loop !3

bb.w:                                             ; preds = %._crit_edge.i
  %.not.i = icmp eq i32 %.167.lcssa.i, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %FSEv07_buildDTable.exit.thread

.preheader.preheader.i:                           ; preds = %bb.w
  %wide.trip.count95.i = zext nneg i32 %i.n to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv92.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next93.i, %.preheader.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv92.i ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !22
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bz ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !16 ; 2 uses
  %i.cc = add i16 %i.cb, 1
  store i16 %i.cc, ptr %i.ca, align 2, !tbaa !16
  %i.cd = zext i16 %i.cb to i32                   ; 2 uses
  %i.ce = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cd, i1 true)
  %i.cf = xor i32 %i.ce, 31
  %i.cg = sub nsw i32 %i.l, %i.cf                 ; 2 uses
  %i.ch = trunc nsw i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !23
  %i.cj = and i32 %i.cg, 255
  %i.ck = shl i32 %i.cd, %i.cj
  %i.cl = sub i32 %i.ck, %i.n
  %i.cm = trunc i32 %i.cl to i16
  store i16 %i.cm, ptr %i.bw, align 4, !tbaa !24
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %exitcond96.not.i = icmp eq i64 %indvars.iv.next93.i, %wide.trip.count95.i
  br i1 %exitcond96.not.i, label %bb.x, label %.preheader.i, !llvm.loop !4

FSEv07_buildDTable.exit.thread:                   ; preds = %bb.w, %bb.d, %bb.e
  %.1.i.ph = phi i64 [ -44, %bb.e ], [ -46, %bb.d ], [ -1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.thread

bb.x:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cn = call i64 @FSEv07_decompress_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %i.i, i64 noundef %i.j, ptr noundef nonnull %i.c)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %FSEv07_buildDTable.exit.thread, %bb.a, %bb.x
  %.2 = phi i64 [ -72, %bb.a ], [ %i.cn, %bb.x ], [ %.1.i.ph, %FSEv07_buildDTable.exit.thread ], [ -72, %bb.c ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret i64 %.2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @FSEv07_createDTable(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %0, i32 15)
  %i.a = shl nuw nsw i32 4, %spec.store.select
  %i.b = add nuw nsw i32 %i.a, 4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #28
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @FSEv07_freeDTable(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @free(ptr noundef %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -46, 1) i64 @FSEv07_buildDTable(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.c = shl nuw i32 1, %3                        ; 5 uses
  %i.d = add i32 %i.c, -1                         ; 5 uses
  %i.e = icmp ugt i32 %2, 255
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i32 %3, 12
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %sext = shl nuw nsw i32 32768, %3
  %i.g = lshr exact i32 %sext, 16                 ; 3 uses
  %i.h = add nuw nsw i32 %2, 1                    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %wide.trip.count, 510
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.j ] ; 5 uses
  %.sroa.4.079 = phi i16 [ 1, %.new ], [ %.sroa.4.2.1, %bb.j ] ; 2 uses
  %.07178 = phi i32 [ %i.d, %.new ], [ %.172.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.j ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !16   ; 3 uses
  %i.l = icmp eq i16 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = trunc i64 %indvars.iv to i8
  %i.n = add i32 %.07178, -1
  %i.o = zext i32 %.07178 to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i8 %i.m, ptr %i.q, align 2, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = sext i16 %i.k to i32
  %.not76 = icmp sgt i32 %i.g, %i.r
  %spec.select = select i1 %.not76, i16 %.sroa.4.079, i16 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i16 [ 1, %bb.e ], [ %i.k, %bb.f ]
  %.172 = phi i32 [ %i.n, %bb.e ], [ %.07178, %bb.f ] ; 3 uses
  %.sroa.4.2 = phi i16 [ %.sroa.4.079, %bb.e ], [ %spec.select, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %.sink, ptr %i.s, align 4, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.u = load i16, ptr %i.t, align 2, !tbaa !16   ; 3 uses
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = sext i16 %i.u to i32
  %.not76.1 = icmp sgt i32 %i.g, %i.w
  %spec.select.1 = select i1 %.not76.1, i16 %.sroa.4.2, i16 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = trunc i64 %indvars.iv.next to i8
  %i.y = add i32 %.172, -1
  %i.z = zext i32 %.172 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 %i.x, ptr %i.ab, align 2, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.1 = phi i16 [ 1, %bb.i ], [ %i.u, %bb.h ]
  %.172.1 = phi i32 [ %i.y, %bb.i ], [ %.172, %bb.h ] ; 3 uses
  %.sroa.4.2.1 = phi i16 [ %.sroa.4.2, %bb.i ], [ %spec.select.1, %bb.h ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.ac, align 2, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !0

.unr-lcssa:                                       ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.m, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.c
  %indvars.iv.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 3 uses
  %.sroa.4.079.epil.init = phi i16 [ 1, %bb.c ], [ %.sroa.4.2.1, %.unr-lcssa ] ; 2 uses
  %.07178.epil.init = phi i32 [ %i.d, %bb.c ], [ %.172.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod102 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !16 ; 3 uses
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.ag = sext i16 %i.ae to i32
  %.not76.epil = icmp sgt i32 %i.g, %i.ag
  %spec.select.epil = select i1 %.not76.epil, i16 %.sroa.4.079.epil.init, i16 0
  br label %.epilog-lcssa

bb.l:                                             ; preds = %.epil.preheader
  %i.ah = trunc i64 %indvars.iv.epil.init to i8
  %i.ai = add i32 %.07178.epil.init, -1
  %i.aj = zext i32 %.07178.epil.init to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 %i.ah, ptr %i.al, align 2, !tbaa !22
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %bb.l, %bb.k
  %.sink.epil = phi i16 [ 1, %bb.l ], [ %i.ae, %bb.k ]
  %.172.epil = phi i32 [ %i.ai, %bb.l ], [ %.07178.epil.init, %bb.k ]
  %.sroa.4.2.epil = phi i16 [ %.sroa.4.079.epil.init, %bb.l ], [ %spec.select.epil, %bb.k ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.am, align 2, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %.172.lcssa = phi i32 [ %.172.1, %.unr-lcssa ], [ %.172.epil, %.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.lcssa = phi i16 [ %.sroa.4.2.1, %.unr-lcssa ], [ %.sroa.4.2.epil, %.epilog-lcssa ]
  %i.an = trunc nuw nsw i32 %3 to i16
  store i16 %i.an, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.lcssa, ptr %.sroa.4.0..sroa_idx, align 2
  %i.ao = lshr i32 %i.c, 1
  %i.ap = lshr i32 %i.c, 3
  %i.aq = add nuw nsw i32 %i.ap, 3
  %i.ar = add nuw nsw i32 %i.aq, %i.ao            ; 3 uses
  br label %.preheader77

.preheader77:                                     ; preds = %bb.m, %._crit_edge
  %indvars.iv87 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next88, %._crit_edge ] ; 3 uses
  %.06684 = phi i32 [ 0, %bb.m ], [ %.167.lcssa, %._crit_edge ] ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv87
  %i.at = load i16, ptr %i.as, align 2, !tbaa !16 ; 5 uses
  %i.au = icmp sgt i16 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader77
  %i.av = trunc i64 %indvars.iv87 to i8           ; 3 uses
  %i.aw = icmp eq i16 %i.at, 1
  br i1 %i.aw, label %.epil.preheader103, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.ax = and i16 %i.at, 32766
  %unroll_iter108 = zext nneg i16 %i.ax to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.new
  %.16781 = phi i32 [ %.06684, %.lr.ph.new ], [ %.2.1, %bb.r ] ; 2 uses
  %niter109 = phi i32 [ 0, %.lr.ph.new ], [ %niter109.next.1, %bb.r ]
  %i.ay = zext nneg i32 %.16781 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.av, ptr %i.ba, align 2, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.167.pn = phi i32 [ %.16781, %bb.n ], [ %.2, %bb.o ]
  %.pn = add nuw i32 %i.ar, %.167.pn
  %.2 = and i32 %.pn, %i.d                        ; 4 uses
  %i.bb = icmp ugt i32 %.2, %.172.lcssa
  br i1 %i.bb, label %bb.o, label %bb.p, !llvm.loop !1

bb.p:                                             ; preds = %bb.o
  %i.bc = zext nneg i32 %.2 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i8 %i.av, ptr %i.be, align 2, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.167.pn.1 = phi i32 [ %.2, %bb.p ], [ %.2.1, %bb.q ]
  %.pn.1 = add nuw i32 %i.ar, %.167.pn.1
  %.2.1 = and i32 %.pn.1, %i.d                    ; 5 uses
  %i.bf = icmp ugt i32 %.2.1, %.172.lcssa
  br i1 %i.bf, label %bb.q, label %bb.r, !llvm.loop !1

bb.r:                                             ; preds = %bb.q
  %niter109.next.1 = add i32 %niter109, 2         ; 2 uses
  %niter109.ncmp.1 = icmp eq i32 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !2

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.r
  %i.bg = and i16 %i.at, 1
  %lcmp.mod105.not = icmp eq i16 %i.bg, 0
  br i1 %lcmp.mod105.not, label %._crit_edge, label %.epil.preheader103

.epil.preheader103:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.16781.epil.init = phi i32 [ %.06684, %.lr.ph ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod107 = trunc i16 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.bh = zext nneg i32 %.16781.epil.init to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 %i.av, ptr %i.bj, align 2, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader103
  %.167.pn.epil = phi i32 [ %.16781.epil.init, %.epil.preheader103 ], [ %.2.epil, %bb.s ]
  %.pn.epil = add nuw i32 %i.ar, %.167.pn.epil
  %.2.epil = and i32 %.pn.epil, %i.d              ; 3 uses
  %i.bk = icmp ugt i32 %.2.epil, %.172.lcssa
  br i1 %i.bk, label %bb.s, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.s, %.preheader77
end_hunk_0
begin_hunk_1_@ZSTDv07_decompressBlock_internal:bb.a
  %i.yv = icmp ult i64 %i.us, -119
  br i1 %i.yv, label %bb.bn, label %.thread166.i, !llvm.loop !131

.thread166.i:                                     ; preds = %ZSTDv07_execSequence.exit.i, %bb.cf, %bb.ce, %ZSTDv07_decodeSequence.exit.i, %BITv07_reloadDStream.exit.thread.i, %BITv07_initDStream.exit.i, %bb.az, %bb.ar, %bb.ap
  %.485.ph.i = phi i64 [ -20, %BITv07_reloadDStream.exit.thread.i ], [ -20, %bb.ap ], [ -20, %bb.az ], [ -20, %bb.ar ], [ -20, %BITv07_initDStream.exit.i ], [ %i.us, %ZSTDv07_execSequence.exit.i ], [ -70, %ZSTDv07_decodeSequence.exit.i ], [ -20, %bb.cf ], [ -20, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv07_decompressSequences.exit

.thread.i23:                                      ; preds = %.preheader.i, %bb.ao, %bb.ad
  %.2.i = phi ptr [ %i.fv, %bb.ao ], [ %.0134.i, %.preheader.i ], [ %i.fv, %bb.ad ] ; 3 uses
  %.378.i = phi ptr [ %1, %bb.ao ], [ %.075.i, %.preheader.i ], [ %1, %bb.ad ] ; 3 uses
  %i.yw = ptrtoint ptr %i.ga to i64
  %i.yx = ptrtoint ptr %.2.i to i64
  %i.yy = sub i64 %i.yw, %i.yx                    ; 3 uses
  %i.yz = ptrtoint ptr %i.fz to i64
  %i.za = ptrtoint ptr %.378.i to i64             ; 2 uses
  %i.zb = sub i64 %i.yz, %i.za
  %.not93.i = icmp ugt i64 %i.yy, %i.zb
  br i1 %.not93.i, label %ZSTDv07_decompressSequences.exit, label %bb.cq

bb.cq:                                            ; preds = %.thread.i23
  %.not92.i = icmp eq ptr %i.ga, %.2.i
  br i1 %.not92.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.378.i, ptr align 1 %.2.i, i64 %i.yy, i1 false)
  %i.zc = getelementptr inbounds nuw i8, ptr %.378.i, i64 %i.yy
  %.pre.i = ptrtoint ptr %i.zc to i64
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pre-phi.i = phi i64 [ %i.za, %bb.cq ], [ %.pre.i, %bb.cr ]
  %i.zd = ptrtoint ptr %1 to i64
  %i.ze = sub i64 %.pre-phi.i, %i.zd
  br label %ZSTDv07_decompressSequences.exit

ZSTDv07_decompressSequences.exit:                 ; preds = %.thread.i, %bb.o, %bb.ab, %bb.m, %bb.l, %HUFv07_decompress1X4_usingDTable.exit.i, %bb.g, %bb.f, %bb.d, %bb.n, %bb.j, %bb.b, %bb.v, %bb.cs, %.thread.i23, %.thread166.i, %ZSTDv07_decodeSeqHeaders.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ac, %bb.a
  %.1 = phi i64 [ -20, %bb.am ], [ -72, %bb.a ], [ %i.ze, %bb.cs ], [ -70, %.thread.i23 ], [ %.485.ph.i, %.thread166.i ], [ %i.id, %ZSTDv07_decodeSeqHeaders.exit.i ], [ -20, %bb.al ], [ -72, %bb.ag ], [ -72, %bb.ai ], [ -72, %bb.ak ], [ -20, %bb.an ], [ -72, %bb.ac ], [ -20, %.thread.i ], [ -20, %bb.o ], [ -20, %bb.ab ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %HUFv07_decompress1X4_usingDTable.exit.i ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.d ], [ -20, %bb.n ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @ZSTDv07_insertBlock(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef returned %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %.not.i = icmp eq ptr %1, %i.b
  br i1 %.not.i, label %ZSTDv07_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !63
  store ptr %1, ptr %i.d, align 8, !tbaa !62
  br label %ZSTDv07_checkContinuity.exit

ZSTDv07_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.j, ptr %i.a, align 8, !tbaa !60
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv07_decompress_usingDict(ptr noundef initializes((5132, 5136), (21520, 21572), (21604, 21616), (21712, 21716)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @ZSTDv07_decompressBegin_usingDict(ptr noundef %0, ptr noundef %5, i64 noundef %6) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 3 uses
  %.not.i = icmp eq ptr %1, %i.c
  br i1 %.not.i, label %ZSTDv07_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.c, ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %.neg.i = sub i64 %i.h, %i.g
  %i.i = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.i, ptr %i.j, align 8, !tbaa !63
  store ptr %1, ptr %i.e, align 8, !tbaa !62
  store ptr %1, ptr %i.b, align 8, !tbaa !60
  br label %ZSTDv07_checkContinuity.exit

ZSTDv07_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.k = tail call fastcc i64 @ZSTDv07_decompressFrame(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -30, 1) i64 @ZSTDv07_decompressBegin_usingDict(ptr nofree noundef captures(none) initializes((5132, 5136), (21520, 21572), (21604, 21616), (21712, 21716)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [29 x i16], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [53 x i16], align 16              ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [36 x i16], align 16              ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 21552
  store i64 5, ptr %i.k, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 21604
  store i32 0, ptr %i.l, align 4, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5132 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.n, align 4, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 21612 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 21608 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 21712 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 21560 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !13
  %i.s = icmp ne ptr %1, null
  %i.t = icmp ne i64 %2, 0
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %bb.b, label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.u = icmp ult i64 %2, 8
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %1, ptr %i.w, align 8, !tbaa !63
  store ptr %1, ptr %i.v, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.x, ptr %i.m, align 8, !tbaa !60
  br label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.d:                                             ; preds = %bb.b
  %.val33.i = load i32, ptr %1, align 1
  %.not.not.i = icmp eq i32 %.val33.i, -332356553
  br i1 %.not.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %1, ptr %i.z, align 8, !tbaa !63
  store ptr %1, ptr %i.y, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.aa, ptr %i.m, align 8, !tbaa !60
  br label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.ab, align 1
  store i32 %.val.i, ptr %i.q, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ad = add i64 %2, -8                          ; 5 uses
  %i.ae = getelementptr i8, ptr %1, i64 %2        ; 3 uses
  %i.af = tail call i64 @HUFv07_readDTableX4(ptr noundef nonnull %i.n, ptr noundef nonnull %i.ac, i64 noundef range(i64 0, -8) %i.ad) ; 3 uses
  %i.ag = icmp ult i64 %i.af, -119                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af ; 2 uses
  %.068.i.i = select i1 %i.ag, ptr %i.ah, ptr %i.ac
  br i1 %i.ag, label %bb.g, label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 28, ptr %i.c, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.ai = ptrtoint ptr %i.ae to i64               ; 2 uses
  %gepdiff.i.i = sub nsw i64 %i.ad, %i.af
  %i.aj = call i64 @FSEv07_readNCount(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ah, i64 noundef %gepdiff.i.i) ; 2 uses
  %i.ak = icmp ult i64 %i.aj, -119
  br i1 %i.ak, label %bb.h, label %.critedge.i.i

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.d, align 4, !tbaa !13  ; 5 uses
  %i.am = icmp ugt i32 %i.al, 8
  br i1 %i.am, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2052
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !13  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.aq = shl nuw nsw i32 1, %i.al                ; 5 uses
  %i.ar = add nsw i32 %i.aq, -1                   ; 5 uses
  %i.as = icmp ugt i32 %i.ao, 255
  br i1 %i.as, label %FSEv07_buildDTable.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %sext.i.i.i = shl nuw nsw i32 32768, %i.al
  %i.at = lshr exact i32 %sext.i.i.i, 16          ; 3 uses
  %i.au = add nuw nsw i32 %i.ao, 1                ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.au to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.av = icmp eq i32 %i.ao, 0
  br i1 %i.av, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 510
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.i.1, %bb.q ] ; 5 uses
  %.sroa.4.079.i.i.i = phi i16 [ 1, %.new ], [ %.sroa.4.2.i.i.i.1, %bb.q ] ; 2 uses
  %.07178.i.i.i = phi i32 [ %i.ar, %.new ], [ %.172.i.i.i.1, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.q ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !16 ; 3 uses
  %i.ay = icmp eq i16 %i.ax, -1
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = trunc i64 %indvars.iv.i.i.i to i8
  %i.ba = add i32 %.07178.i.i.i, -1
  %i.bb = zext i32 %.07178.i.i.i to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i8 %i.az, ptr %i.bd, align 2, !tbaa !22
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.be = sext i16 %i.ax to i32
  %.not76.i.i.i = icmp sgt i32 %i.at, %i.be
  %spec.select.i.i.i = select i1 %.not76.i.i.i, i16 %.sroa.4.079.i.i.i, i16 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink.i.i.i = phi i16 [ 1, %bb.l ], [ %i.ax, %bb.m ]
  %.172.i.i.i = phi i32 [ %i.ba, %bb.l ], [ %.07178.i.i.i, %bb.m ] ; 3 uses
  %.sroa.4.2.i.i.i = phi i16 [ %.sroa.4.079.i.i.i, %bb.l ], [ %spec.select.i.i.i, %bb.m ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.i
  store i16 %.sink.i.i.i, ptr %i.bf, align 4, !tbaa !16
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !16 ; 3 uses
  %i.bi = icmp eq i16 %i.bh, -1
  br i1 %i.bi, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = sext i16 %i.bh to i32
  %.not76.i.i.i.1 = icmp sgt i32 %i.at, %i.bj
  %spec.select.i.i.i.1 = select i1 %.not76.i.i.i.1, i16 %.sroa.4.2.i.i.i, i16 0
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bk = trunc i64 %indvars.iv.next.i.i.i to i8
  %i.bl = add i32 %.172.i.i.i, -1
  %i.bm = zext i32 %.172.i.i.i to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 %i.bk, ptr %i.bo, align 2, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.i.i.i.1 = phi i16 [ 1, %bb.p ], [ %i.bh, %bb.o ]
  %.172.i.i.i.1 = phi i32 [ %i.bl, %bb.p ], [ %.172.i.i.i, %bb.o ] ; 3 uses
  %.sroa.4.2.i.i.i.1 = phi i16 [ %.sroa.4.2.i.i.i, %bb.p ], [ %spec.select.i.i.i.1, %bb.o ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i
  store i16 %.sink.i.i.i.1, ptr %i.bp, align 2, !tbaa !16
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.k, !llvm.loop !0

.unr-lcssa:                                       ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.t, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.j
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i.i.i.1, %.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i.i.i.epil.init = phi i16 [ 1, %bb.j ], [ %.sroa.4.2.i.i.i.1, %.unr-lcssa ] ; 2 uses
  %.07178.i.i.i.epil.init = phi i32 [ %i.ar, %bb.j ], [ %.172.i.i.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod36 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod36)
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.i.epil.init
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !16 ; 3 uses
  %i.bs = icmp eq i16 %i.br, -1
  br i1 %i.bs, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.epil.preheader
  %i.bt = sext i16 %i.br to i32
  %.not76.i.i.i.epil = icmp sgt i32 %i.at, %i.bt
  %spec.select.i.i.i.epil = select i1 %.not76.i.i.i.epil, i16 %.sroa.4.079.i.i.i.epil.init, i16 0
  br label %.epilog-lcssa

bb.s:                                             ; preds = %.epil.preheader
  %i.bu = trunc i64 %indvars.iv.i.i.i.epil.init to i8
  %i.bv = add i32 %.07178.i.i.i.epil.init, -1
  %i.bw = zext i32 %.07178.i.i.i.epil.init to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i8 %i.bu, ptr %i.by, align 2, !tbaa !22
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %bb.s, %bb.r
  %.sink.i.i.i.epil = phi i16 [ 1, %bb.s ], [ %i.br, %bb.r ]
  %.172.i.i.i.epil = phi i32 [ %i.bv, %bb.s ], [ %.07178.i.i.i.epil.init, %bb.r ]
  %.sroa.4.2.i.i.i.epil = phi i16 [ %.sroa.4.079.i.i.i.epil.init, %bb.s ], [ %spec.select.i.i.i.epil, %bb.r ]
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.i.epil.init
  store i16 %.sink.i.i.i.epil, ptr %i.bz, align 2, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %.172.i.i.i.lcssa = phi i32 [ %.172.i.i.i.1, %.unr-lcssa ], [ %.172.i.i.i.epil, %.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i.i.i.lcssa = phi i16 [ %.sroa.4.2.i.i.i.1, %.unr-lcssa ], [ %.sroa.4.2.i.i.i.epil, %.epilog-lcssa ]
  %i.ca = trunc nuw nsw i32 %i.al to i16
  store i16 %i.ca, ptr %i.an, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2054
  store i16 %.sroa.4.2.i.i.i.lcssa, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2
  %i.cb = lshr i32 %i.aq, 1
  %i.cc = lshr i32 %i.aq, 3
  %i.cd = add nuw nsw i32 %i.cc, 3
  %i.ce = add nuw nsw i32 %i.cd, %i.cb            ; 3 uses
  br label %.preheader77.i.i.i

.preheader77.i.i.i:                               ; preds = %._crit_edge.i.i.i, %bb.t
  %indvars.iv87.i.i.i = phi i64 [ 0, %bb.t ], [ %indvars.iv.next88.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.06684.i.i.i = phi i32 [ 0, %bb.t ], [ %.167.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv87.i.i.i
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !16 ; 5 uses
  %i.ch = icmp sgt i16 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader77.i.i.i
  %i.ci = trunc i64 %indvars.iv87.i.i.i to i8     ; 3 uses
  %i.cj = icmp eq i16 %i.cg, 1
  br i1 %i.cj, label %.epil.preheader37, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %i.ck = and i16 %i.cg, 32766
  %unroll_iter42 = zext nneg i16 %i.ck to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.i.i.i.new
  %.16781.i.i.i = phi i32 [ %.06684.i.i.i, %.lr.ph.i.i.i.new ], [ %.2.i.i.i.1, %bb.y ] ; 2 uses
  %niter43 = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %niter43.next.1, %bb.y ]
  %i.cl = zext nneg i32 %.16781.i.i.i to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store i8 %i.ci, ptr %i.cn, align 2, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.167.pn.i.i.i = phi i32 [ %.16781.i.i.i, %bb.u ], [ %.2.i.i.i, %bb.v ]
  %.pn.i.i.i = add nuw nsw i32 %i.ce, %.167.pn.i.i.i
  %.2.i.i.i = and i32 %.pn.i.i.i, %i.ar           ; 4 uses
  %i.co = icmp ugt i32 %.2.i.i.i, %.172.i.i.i.lcssa
  br i1 %i.co, label %bb.v, label %bb.w, !llvm.loop !1

bb.w:                                             ; preds = %bb.v
  %i.cp = zext nneg i32 %.2.i.i.i to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i8 %i.ci, ptr %i.cr, align 2, !tbaa !22
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.167.pn.i.i.i.1 = phi i32 [ %.2.i.i.i, %bb.w ], [ %.2.i.i.i.1, %bb.x ]
  %.pn.i.i.i.1 = add nuw nsw i32 %i.ce, %.167.pn.i.i.i.1
  %.2.i.i.i.1 = and i32 %.pn.i.i.i.1, %i.ar       ; 5 uses
  %i.cs = icmp ugt i32 %.2.i.i.i.1, %.172.i.i.i.lcssa
  br i1 %i.cs, label %bb.x, label %bb.y, !llvm.loop !1

bb.y:                                             ; preds = %bb.x
  %niter43.next.1 = add i32 %niter43, 2           ; 2 uses
  %niter43.ncmp.1 = icmp eq i32 %niter43.next.1, %unroll_iter42
  br i1 %niter43.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %bb.u, !llvm.loop !2

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.y
  %i.ct = and i16 %i.cg, 1
  %lcmp.mod39.not = icmp eq i16 %i.ct, 0
  br i1 %lcmp.mod39.not, label %._crit_edge.i.i.i, label %.epil.preheader37

.epil.preheader37:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %.16781.i.i.i.epil.init = phi i32 [ %.06684.i.i.i, %.lr.ph.i.i.i ], [ %.2.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod41 = trunc i16 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.cu = zext nneg i32 %.16781.i.i.i.epil.init to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 %i.ci, ptr %i.cw, align 2, !tbaa !22
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader37
  %.167.pn.i.i.i.epil = phi i32 [ %.16781.i.i.i.epil.init, %.epil.preheader37 ], [ %.2.i.i.i.epil, %bb.z ]
  %.pn.i.i.i.epil = add nuw nsw i32 %i.ce, %.167.pn.i.i.i.epil
  %.2.i.i.i.epil = and i32 %.pn.i.i.i.epil, %i.ar ; 3 uses
  %i.cx = icmp ugt i32 %.2.i.i.i.epil, %.172.i.i.i.lcssa
  br i1 %i.cx, label %bb.z, label %._crit_edge.i.i.i, !llvm.loop !1

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %bb.z, %.preheader77.i.i.i
end_hunk_1
begin_hunk_2_@ZSTDv07_buildSeqTable:bb.a
  br i1 %niter81.ncmp.1, label %.unr-lcssa72, label %bb.e, !llvm.loop !0

.unr-lcssa72:                                     ; preds = %bb.k
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %bb.n, label %.epil.preheader73

.epil.preheader73:                                ; preds = %.unr-lcssa72
  %lcmp.mod79 = trunc i32 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next.i.1
  %i.am = load i16, ptr %i.al, align 2, !tbaa !16 ; 3 uses
  %i.an = icmp eq i16 %i.am, -1
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.epil.preheader73
  %i.ao = sext i16 %i.am to i32
  %.not76.i.epil = icmp sgt i32 %i.p, %i.ao
  %spec.select.i.epil = select i1 %.not76.i.epil, i16 %.sroa.4.2.i.1, i16 0
  br label %.epilog-lcssa76

bb.m:                                             ; preds = %.epil.preheader73
  %i.ap = trunc i64 %indvars.iv.next.i.1 to i8
  %i.aq = add i32 %.172.i.1, -1
  %i.ar = zext i32 %.172.i.1 to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 %i.ap, ptr %i.at, align 2, !tbaa !22
  br label %.epilog-lcssa76

.epilog-lcssa76:                                  ; preds = %bb.m, %bb.l
  %.sink.i.epil = phi i16 [ 1, %bb.m ], [ %i.am, %bb.l ]
  %.172.i.epil = phi i32 [ %i.aq, %bb.m ], [ %.172.i.1, %bb.l ]
  %.sroa.4.2.i.epil = phi i16 [ %.sroa.4.2.i.1, %bb.m ], [ %spec.select.i.epil, %bb.l ]
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  store i16 %.sink.i.epil, ptr %i.au, align 2, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %.unr-lcssa72, %.epilog-lcssa76
  %.172.i.lcssa = phi i32 [ %.172.i.1, %.unr-lcssa72 ], [ %.172.i.epil, %.epilog-lcssa76 ] ; 3 uses
  %.sroa.4.2.i.lcssa = phi i16 [ %.sroa.4.2.i.1, %.unr-lcssa72 ], [ %.sroa.4.2.i.epil, %.epilog-lcssa76 ]
  %i.av = trunc nuw nsw i32 %7 to i16
  store i16 %i.av, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.i.lcssa, ptr %.sroa.4.0..sroa_idx.i, align 2
  %i.aw = lshr exact i32 %i.n, 1
  %i.ax = lshr exact i32 %i.n, 3
  %i.ay = add nuw nsw i32 %i.ax, 3
  %i.az = add nuw nsw i32 %i.ay, %i.aw            ; 3 uses
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %._crit_edge.i, %bb.n
  %indvars.iv87.i = phi i64 [ 0, %bb.n ], [ %indvars.iv.next88.i, %._crit_edge.i ] ; 3 uses
  %.06684.i = phi i32 [ 0, %bb.n ], [ %.167.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv87.i
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !16 ; 5 uses
  %i.bc = icmp sgt i16 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader77.i
  %i.bd = trunc i64 %indvars.iv87.i to i8         ; 3 uses
  %i.be = icmp eq i16 %i.bb, 1
  br i1 %i.be, label %.epil.preheader82, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %i.bf = and i16 %i.bb, 32766
  %unroll_iter87 = zext nneg i16 %i.bf to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i.new
  %.16781.i = phi i32 [ %.06684.i, %.lr.ph.i.new ], [ %.2.i.1, %bb.s ] ; 2 uses
  %niter88 = phi i32 [ 0, %.lr.ph.i.new ], [ %niter88.next.1, %bb.s ]
  %i.bg = zext nneg i32 %.16781.i to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.bd, ptr %i.bi, align 2, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.167.pn.i = phi i32 [ %.16781.i, %bb.o ], [ %.2.i, %bb.p ]
  %.pn.i = add nuw nsw i32 %i.az, %.167.pn.i
  %.2.i = and i32 %.pn.i, %i.o                    ; 4 uses
  %i.bj = icmp ugt i32 %.2.i, %.172.i.lcssa
  br i1 %i.bj, label %bb.p, label %bb.q, !llvm.loop !1

bb.q:                                             ; preds = %bb.p
  %i.bk = zext nneg i32 %.2.i to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 %i.bd, ptr %i.bm, align 2, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.167.pn.i.1 = phi i32 [ %.2.i, %bb.q ], [ %.2.i.1, %bb.r ]
  %.pn.i.1 = add nuw nsw i32 %i.az, %.167.pn.i.1
  %.2.i.1 = and i32 %.pn.i.1, %i.o                ; 5 uses
  %i.bn = icmp ugt i32 %.2.i.1, %.172.i.lcssa
  br i1 %i.bn, label %bb.r, label %bb.s, !llvm.loop !1

bb.s:                                             ; preds = %bb.r
  %niter88.next.1 = add i32 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i32 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.o, !llvm.loop !2

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.s
  %i.bo = and i16 %i.bb, 1
  %lcmp.mod84.not = icmp eq i16 %i.bo, 0
  br i1 %lcmp.mod84.not, label %._crit_edge.i, label %.epil.preheader82

.epil.preheader82:                                ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.16781.i.epil.init = phi i32 [ %.06684.i, %.lr.ph.i ], [ %.2.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i16 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.bp = zext nneg i32 %.16781.i.epil.init to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i8 %i.bd, ptr %i.br, align 2, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader82
  %.167.pn.i.epil = phi i32 [ %.16781.i.epil.init, %.epil.preheader82 ], [ %.2.i.epil, %bb.t ]
  %.pn.i.epil = add nuw nsw i32 %i.az, %.167.pn.i.epil
  %.2.i.epil = and i32 %.pn.i.epil, %i.o          ; 3 uses
  %i.bs = icmp ugt i32 %.2.i.epil, %.172.i.lcssa
  br i1 %i.bs, label %bb.t, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.t, %.preheader77.i
  %.167.lcssa.i = phi i32 [ %.06684.i, %.preheader77.i ], [ %.2.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.2.i.epil, %bb.t ] ; 2 uses
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond91.not.i = icmp eq i64 %indvars.iv.next88.i, %wide.trip.count.i
  br i1 %exitcond91.not.i, label %bb.u, label %.preheader77.i, !llvm.loop !3

bb.u:                                             ; preds = %._crit_edge.i
  %.not.i = icmp eq i32 %.167.lcssa.i, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %FSEv07_buildDTable.exit

.preheader.preheader.i:                           ; preds = %bb.u
  %wide.trip.count95.i = zext nneg i32 %i.n to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv92.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next93.i, %.preheader.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv92.i ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !22
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bw ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !16 ; 2 uses
  %i.bz = add i16 %i.by, 1
  store i16 %i.bz, ptr %i.bx, align 2, !tbaa !16
  %i.ca = zext i16 %i.by to i32                   ; 2 uses
  %i.cb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ca, i1 true)
  %i.cc = xor i32 %i.cb, 31
  %i.cd = sub nsw i32 %7, %i.cc                   ; 2 uses
  %i.ce = trunc nsw i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !23
  %i.cg = and i32 %i.cd, 255
  %i.ch = shl i32 %i.ca, %i.cg
  %i.ci = sub i32 %i.ch, %i.n
  %i.cj = trunc i32 %i.ci to i16
  store i16 %i.cj, ptr %i.bt, align 2, !tbaa !24
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %exitcond96.not.i = icmp eq i64 %indvars.iv.next93.i, %wide.trip.count95.i
  br i1 %exitcond96.not.i, label %FSEv07_buildDTable.exit, label %.preheader.i, !llvm.loop !4

FSEv07_buildDTable.exit:                          ; preds = %.preheader.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.as

bb.v:                                             ; preds = %bb.a
  %.not = icmp eq i32 %8, 0
  %. = select i1 %.not, i64 -20, i64 0
  br label %bb.as

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.ck = call i64 @FSEv07_readNCount(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %4, i64 noundef %5) ; 2 uses
  %i.cl = icmp ult i64 %i.ck, -119
  br i1 %i.cl, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.cm = load i32, ptr %i.d, align 4, !tbaa !13  ; 5 uses
  %i.cn = icmp ugt i32 %i.cm, %3
  br i1 %i.cn, label %bb.ar, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = load i32, ptr %i.c, align 4, !tbaa !13  ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.cq = shl nuw nsw i32 1, %i.cm                ; 5 uses
  %i.cr = add nsw i32 %i.cq, -1                   ; 5 uses
  %i.cs = icmp ugt i32 %i.co, 255
  br i1 %i.cs, label %FSEv07_buildDTable.exit53, label %bb.z

bb.z:                                             ; preds = %bb.y
  %sext.i18 = shl nuw nsw i32 32768, %i.cm
  %i.ct = lshr exact i32 %sext.i18, 16            ; 3 uses
  %i.cu = add nuw nsw i32 %i.co, 1                ; 2 uses
  %wide.trip.count.i19 = zext nneg i32 %i.cu to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i19, 1
  %i.cv = icmp eq i32 %i.co, 0
  br i1 %i.cv, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.z
  %unroll_iter = and i64 %wide.trip.count.i19, 510
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %.new
  %indvars.iv.i20 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i28.1, %bb.ag ] ; 5 uses
  %.sroa.4.079.i21 = phi i16 [ 1, %.new ], [ %.sroa.4.2.i27.1, %bb.ag ] ; 2 uses
  %.07178.i22 = phi i32 [ %i.cr, %.new ], [ %.172.i26.1, %bb.ag ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.ag ]
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i20
  %i.cx = load i16, ptr %i.cw, align 4, !tbaa !16 ; 3 uses
  %i.cy = icmp eq i16 %i.cx, -1
  br i1 %i.cy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cz = trunc i64 %indvars.iv.i20 to i8
  %i.da = add i32 %.07178.i22, -1
  %i.db = zext i32 %.07178.i22 to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 %i.cz, ptr %i.dd, align 2, !tbaa !22
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.de = sext i16 %i.cx to i32
  %.not76.i23 = icmp sgt i32 %i.ct, %i.de
  %spec.select.i24 = select i1 %.not76.i23, i16 %.sroa.4.079.i21, i16 0
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink.i25 = phi i16 [ 1, %bb.ab ], [ %i.cx, %bb.ac ]
  %.172.i26 = phi i32 [ %i.da, %bb.ab ], [ %.07178.i22, %bb.ac ] ; 3 uses
  %.sroa.4.2.i27 = phi i16 [ %.sroa.4.079.i21, %bb.ab ], [ %spec.select.i24, %bb.ac ] ; 2 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i20
  store i16 %.sink.i25, ptr %i.df, align 4, !tbaa !16
  %indvars.iv.next.i28 = or disjoint i64 %indvars.iv.i20, 1 ; 3 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next.i28
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !16 ; 3 uses
  %i.di = icmp eq i16 %i.dh, -1
  br i1 %i.di, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = sext i16 %i.dh to i32
  %.not76.i23.1 = icmp sgt i32 %i.ct, %i.dj
  %spec.select.i24.1 = select i1 %.not76.i23.1, i16 %.sroa.4.2.i27, i16 0
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dk = trunc i64 %indvars.iv.next.i28 to i8
  %i.dl = add i32 %.172.i26, -1
  %i.dm = zext i32 %.172.i26 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i8 %i.dk, ptr %i.do, align 2, !tbaa !22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.i25.1 = phi i16 [ 1, %bb.af ], [ %i.dh, %bb.ae ]
  %.172.i26.1 = phi i32 [ %i.dl, %bb.af ], [ %.172.i26, %bb.ae ] ; 3 uses
  %.sroa.4.2.i27.1 = phi i16 [ %.sroa.4.2.i27, %bb.af ], [ %spec.select.i24.1, %bb.ae ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i28
  store i16 %.sink.i25.1, ptr %i.dp, align 2, !tbaa !16
  %indvars.iv.next.i28.1 = add nuw nsw i64 %indvars.iv.i20, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.aa, !llvm.loop !0

.unr-lcssa:                                       ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.aj, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.z
  %indvars.iv.i20.epil.init = phi i64 [ 0, %bb.z ], [ %indvars.iv.next.i28.1, %.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i21.epil.init = phi i16 [ 1, %bb.z ], [ %.sroa.4.2.i27.1, %.unr-lcssa ] ; 2 uses
  %.07178.i22.epil.init = phi i32 [ %i.cr, %bb.z ], [ %.172.i26.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod63 = trunc i32 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i20.epil.init
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !16 ; 3 uses
  %i.ds = icmp eq i16 %i.dr, -1
  br i1 %i.ds, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.epil.preheader
  %i.dt = sext i16 %i.dr to i32
  %.not76.i23.epil = icmp sgt i32 %i.ct, %i.dt
  %spec.select.i24.epil = select i1 %.not76.i23.epil, i16 %.sroa.4.079.i21.epil.init, i16 0
  br label %.epilog-lcssa

bb.ai:                                            ; preds = %.epil.preheader
  %i.du = trunc i64 %indvars.iv.i20.epil.init to i8
  %i.dv = add i32 %.07178.i22.epil.init, -1
  %i.dw = zext i32 %.07178.i22.epil.init to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i8 %i.du, ptr %i.dy, align 2, !tbaa !22
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %bb.ai, %bb.ah
  %.sink.i25.epil = phi i16 [ 1, %bb.ai ], [ %i.dr, %bb.ah ]
  %.172.i26.epil = phi i32 [ %i.dv, %bb.ai ], [ %.07178.i22.epil.init, %bb.ah ]
  %.sroa.4.2.i27.epil = phi i16 [ %.sroa.4.079.i21.epil.init, %bb.ai ], [ %spec.select.i24.epil, %bb.ah ]
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i20.epil.init
  store i16 %.sink.i25.epil, ptr %i.dz, align 2, !tbaa !16
  br label %bb.aj

bb.aj:                                            ; preds = %.unr-lcssa, %.epilog-lcssa
  %.172.i26.lcssa = phi i32 [ %.172.i26.1, %.unr-lcssa ], [ %.172.i26.epil, %.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i27.lcssa = phi i16 [ %.sroa.4.2.i27.1, %.unr-lcssa ], [ %.sroa.4.2.i27.epil, %.epilog-lcssa ]
  %i.ea = trunc nuw nsw i32 %i.cm to i16
  store i16 %i.ea, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.i27.lcssa, ptr %.sroa.4.0..sroa_idx.i30, align 2
  %i.eb = lshr i32 %i.cq, 1
  %i.ec = lshr i32 %i.cq, 3
  %i.ed = add nuw nsw i32 %i.ec, 3
  %i.ee = add nuw nsw i32 %i.ed, %i.eb            ; 3 uses
  br label %.preheader77.i31

.preheader77.i31:                                 ; preds = %._crit_edge.i34, %bb.aj
  %indvars.iv87.i32 = phi i64 [ 0, %bb.aj ], [ %indvars.iv.next88.i36, %._crit_edge.i34 ] ; 3 uses
  %.06684.i33 = phi i32 [ 0, %bb.aj ], [ %.167.lcssa.i35, %._crit_edge.i34 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv87.i32
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !16 ; 5 uses
  %i.eh = icmp sgt i16 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.i46, label %._crit_edge.i34

.lr.ph.i46:                                       ; preds = %.preheader77.i31
  %i.ei = trunc i64 %indvars.iv87.i32 to i8       ; 3 uses
  %i.ej = icmp eq i16 %i.eg, 1
  br i1 %i.ej, label %.epil.preheader64, label %.lr.ph.i46.new

.lr.ph.i46.new:                                   ; preds = %.lr.ph.i46
  %i.ek = and i16 %i.eg, 32766
  %unroll_iter69 = zext nneg i16 %i.ek to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.lr.ph.i46.new
  %.16781.i48 = phi i32 [ %.06684.i33, %.lr.ph.i46.new ], [ %.2.i51.1, %bb.ao ] ; 2 uses
  %niter70 = phi i32 [ 0, %.lr.ph.i46.new ], [ %niter70.next.1, %bb.ao ]
  %i.el = zext nneg i32 %.16781.i48 to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i8 %i.ei, ptr %i.en, align 2, !tbaa !22
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.167.pn.i49 = phi i32 [ %.16781.i48, %bb.ak ], [ %.2.i51, %bb.al ]
  %.pn.i50 = add nuw nsw i32 %i.ee, %.167.pn.i49
  %.2.i51 = and i32 %.pn.i50, %i.cr               ; 4 uses
  %i.eo = icmp ugt i32 %.2.i51, %.172.i26.lcssa
  br i1 %i.eo, label %bb.al, label %bb.am, !llvm.loop !1

bb.am:                                            ; preds = %bb.al
  %i.ep = zext nneg i32 %.2.i51 to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  store i8 %i.ei, ptr %i.er, align 2, !tbaa !22
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.167.pn.i49.1 = phi i32 [ %.2.i51, %bb.am ], [ %.2.i51.1, %bb.an ]
  %.pn.i50.1 = add nuw nsw i32 %i.ee, %.167.pn.i49.1
  %.2.i51.1 = and i32 %.pn.i50.1, %i.cr           ; 5 uses
  %i.es = icmp ugt i32 %.2.i51.1, %.172.i26.lcssa
  br i1 %i.es, label %bb.an, label %bb.ao, !llvm.loop !1

bb.ao:                                            ; preds = %bb.an
  %niter70.next.1 = add i32 %niter70, 2           ; 2 uses
  %niter70.ncmp.1 = icmp eq i32 %niter70.next.1, %unroll_iter69
  br i1 %niter70.ncmp.1, label %._crit_edge.i34.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !2

._crit_edge.i34.loopexit.unr-lcssa:               ; preds = %bb.ao
  %i.et = and i16 %i.eg, 1
  %lcmp.mod66.not = icmp eq i16 %i.et, 0
  br i1 %lcmp.mod66.not, label %._crit_edge.i34, label %.epil.preheader64

.epil.preheader64:                                ; preds = %._crit_edge.i34.loopexit.unr-lcssa, %.lr.ph.i46
  %.16781.i48.epil.init = phi i32 [ %.06684.i33, %.lr.ph.i46 ], [ %.2.i51.1, %._crit_edge.i34.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i16 %i.eg to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.eu = zext nneg i32 %.16781.i48.epil.init to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  store i8 %i.ei, ptr %i.ew, align 2, !tbaa !22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader64
  %.167.pn.i49.epil = phi i32 [ %.16781.i48.epil.init, %.epil.preheader64 ], [ %.2.i51.epil, %bb.ap ]
  %.pn.i50.epil = add nuw nsw i32 %i.ee, %.167.pn.i49.epil
  %.2.i51.epil = and i32 %.pn.i50.epil, %i.cr     ; 3 uses
  %i.ex = icmp ugt i32 %.2.i51.epil, %.172.i26.lcssa
  br i1 %i.ex, label %bb.ap, label %._crit_edge.i34, !llvm.loop !1

._crit_edge.i34:                                  ; preds = %._crit_edge.i34.loopexit.unr-lcssa, %bb.ap, %.preheader77.i31
end_hunk_2
