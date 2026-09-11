Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v07?download=true
inline.NumInlined: 402
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@HUFv07_readStats:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.at = and <8 x i8> %wide.load130.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.ao, <8 x i8> %i.as, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.aq, align 1, !tbaa !17, !alias.scope !91, !noalias !90
  %interleaved.vec131.2 = shufflevector <8 x i8> %i.ap, <8 x i8> %i.at, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec131.2, ptr %i.ar, align 1, !tbaa !17, !alias.scope !91, !noalias !90
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
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

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
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
  br i1 %i.q, label %FSEv07_buildDTable.exit.thread, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.e
  %sext.i = shl nuw nsw i32 32768, %i.l
  %i.r = lshr exact i32 %sext.i, 16               ; 3 uses
  %4 = add nuw nsw i32 %i.k, 1                    ; 2 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.s = icmp eq i32 %i.k, 0
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.new.a

.lr.ph.i.new.a:                                   ; preds = %.lr.ph.i.a
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.i.new.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new.a ], [ %indvars.iv.next.i.1, %bb.l ] ; 5 uses
  %.sroa.4.079.i = phi i16 [ 1, %.lr.ph.i.new.a ], [ %.sroa.4.2.i.1, %bb.l ] ; 2 uses
  %.07178.i = phi i32 [ %i.o, %.lr.ph.i.new.a ], [ %.172.i.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new.a ], [ %niter.next.1, %bb.l ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.u = load i16, ptr %i.t, align 4, !tbaa !16   ; 3 uses
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = trunc i64 %indvars.iv.i to i8
  %i.x = add i32 %.07178.i, -1
  %i.y = zext i32 %.07178.i to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i8 %i.w, ptr %i.aa, align 2, !tbaa !22
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = sext i16 %i.u to i32
  %.not76.i = icmp sgt i32 %i.r, %i.ab
  %spec.select.i = select i1 %.not76.i, i16 %.sroa.4.079.i, i16 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.i = phi i16 [ 1, %bb.g ], [ %i.u, %bb.h ]
  %.172.i = phi i32 [ %i.x, %bb.g ], [ %.07178.i, %bb.h ] ; 3 uses
  %.sroa.4.2.i = phi i16 [ %.sroa.4.079.i, %bb.g ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  store i16 %.sink.i, ptr %i.ac, align 4, !tbaa !16
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !16 ; 3 uses
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = sext i16 %i.ae to i32
  %.not76.i.1 = icmp sgt i32 %i.r, %i.ag
  %spec.select.i.1 = select i1 %.not76.i.1, i16 %.sroa.4.2.i, i16 0
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ah = trunc i64 %indvars.iv.next.i to i8
  %i.ai = add i32 %.172.i, -1
  %i.aj = zext i32 %.172.i to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 %i.ah, ptr %i.al, align 2, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i.1 = phi i16 [ 1, %bb.k ], [ %i.ae, %bb.j ]
  %.172.i.1 = phi i32 [ %i.ai, %bb.k ], [ %.172.i, %bb.j ] ; 3 uses
  %.sroa.4.2.i.1 = phi i16 [ %.sroa.4.2.i, %bb.k ], [ %spec.select.i.1, %bb.j ] ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i16 %.sink.i.1, ptr %i.am, align 2, !tbaa !16
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader77.lr.ph.i.unr-lcssa, label %bb.f, !llvm.loop !0

.preheader77.lr.ph.i.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader77.lr.ph.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader77.lr.ph.i.unr-lcssa, %.lr.ph.i.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.a ], [ %indvars.iv.next.i.1, %.preheader77.lr.ph.i.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i.epil.init = phi i16 [ 1, %.lr.ph.i.a ], [ %.sroa.4.2.i.1, %.preheader77.lr.ph.i.unr-lcssa ] ; 2 uses
  %.07178.i.epil.init = phi i32 [ %i.o, %.lr.ph.i.a ], [ %.172.i.1, %.preheader77.lr.ph.i.unr-lcssa ] ; 3 uses
  %lcmp.mod43 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !16 ; 3 uses
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  %i.aq = sext i16 %i.ao to i32
  %.not76.i.epil = icmp sgt i32 %i.r, %i.aq
  %spec.select.i.epil = select i1 %.not76.i.epil, i16 %.sroa.4.079.i.epil.init, i16 0
  br label %.preheader77.lr.ph.i.epilog-lcssa

bb.n:                                             ; preds = %.epil.preheader
  %i.ar = trunc i64 %indvars.iv.i.epil.init to i8
  %i.as = add i32 %.07178.i.epil.init, -1
  %i.at = zext i32 %.07178.i.epil.init to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i8 %i.ar, ptr %i.av, align 2, !tbaa !22
  br label %.preheader77.lr.ph.i.epilog-lcssa

.preheader77.lr.ph.i.epilog-lcssa:                ; preds = %bb.n, %bb.m
  %.sink.i.epil = phi i16 [ 1, %bb.n ], [ %i.ao, %bb.m ]
  %.172.i.epil = phi i32 [ %i.as, %bb.n ], [ %.07178.i.epil.init, %bb.m ]
  %.sroa.4.2.i.epil = phi i16 [ %.sroa.4.079.i.epil.init, %bb.n ], [ %spec.select.i.epil, %bb.m ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init
  store i16 %.sink.i.epil, ptr %i.aw, align 2, !tbaa !16
  br label %.preheader77.lr.ph.i

.preheader77.lr.ph.i:                             ; preds = %.preheader77.lr.ph.i.unr-lcssa, %.preheader77.lr.ph.i.epilog-lcssa
  %.172.i.lcssa = phi i32 [ %.172.i.1, %.preheader77.lr.ph.i.unr-lcssa ], [ %.172.i.epil, %.preheader77.lr.ph.i.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i.lcssa = phi i16 [ %.sroa.4.2.i.1, %.preheader77.lr.ph.i.unr-lcssa ], [ %.sroa.4.2.i.epil, %.preheader77.lr.ph.i.epilog-lcssa ]
  %i.ax = trunc nuw nsw i32 %i.l to i16
  store i16 %i.ax, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %.sroa.4.2.i.lcssa, ptr %.sroa.4.0..sroa_idx.i, align 2
  %i.ay = lshr i32 %i.n, 1
  %i.az = lshr i32 %i.n, 3
  %i.ba = add nuw nsw i32 %i.az, 3
  %i.bb = add nuw nsw i32 %i.ba, %i.ay            ; 3 uses
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %._crit_edge85.i, %.preheader77.lr.ph.i
  %indvars.iv93.i = phi i64 [ 0, %.preheader77.lr.ph.i ], [ %indvars.iv.next94.i, %._crit_edge85.i ] ; 3 uses
  %.06688.i = phi i32 [ 0, %.preheader77.lr.ph.i ], [ %.167.lcssa.i, %._crit_edge85.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv93.i
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !16 ; 5 uses
  %i.be = icmp sgt i16 %i.bd, 0
  br i1 %i.be, label %.lr.ph84.i, label %._crit_edge85.i

.lr.ph84.i:                                       ; preds = %.preheader77.i
  %i.bf = trunc i64 %indvars.iv93.i to i8         ; 3 uses
  %i.bg = icmp eq i16 %i.bd, 1
  br i1 %i.bg, label %.epil.preheader44, label %.lr.ph84.i.new

.lr.ph84.i.new:                                   ; preds = %.lr.ph84.i
  %i.bh = and i16 %i.bd, 32766
  %unroll_iter49 = zext nneg i16 %i.bh to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph84.i.new
  %.16782.i = phi i32 [ %.06688.i, %.lr.ph84.i.new ], [ %.2.i.1, %bb.s ] ; 2 uses
  %niter50 = phi i32 [ 0, %.lr.ph84.i.new ], [ %niter50.next.1, %bb.s ]
  %i.bi = zext nneg i32 %.16782.i to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 %i.bf, ptr %i.bk, align 2, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.167.pn.i = phi i32 [ %.16782.i, %bb.o ], [ %.2.i, %bb.p ]
  %.pn.i = add nuw i32 %i.bb, %.167.pn.i
  %.2.i = and i32 %.pn.i, %i.o                    ; 4 uses
  %i.bl = icmp ugt i32 %.2.i, %.172.i.lcssa
  br i1 %i.bl, label %bb.p, label %bb.q, !llvm.loop !1

bb.q:                                             ; preds = %bb.p
  %i.bm = zext nneg i32 %.2.i to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 %i.bf, ptr %i.bo, align 2, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.167.pn.i.1 = phi i32 [ %.2.i, %bb.q ], [ %.2.i.1, %bb.r ]
  %.pn.i.1 = add nuw i32 %i.bb, %.167.pn.i.1
  %.2.i.1 = and i32 %.pn.i.1, %i.o                ; 5 uses
  %i.bp = icmp ugt i32 %.2.i.1, %.172.i.lcssa
  br i1 %i.bp, label %bb.r, label %bb.s, !llvm.loop !1

bb.s:                                             ; preds = %bb.r
  %niter50.next.1 = add i32 %niter50, 2           ; 2 uses
  %niter50.ncmp.1 = icmp eq i32 %niter50.next.1, %unroll_iter49
  br i1 %niter50.ncmp.1, label %._crit_edge85.i.loopexit.unr-lcssa, label %bb.o, !llvm.loop !2

._crit_edge85.i.loopexit.unr-lcssa:               ; preds = %bb.s
  %i.bq = and i16 %i.bd, 1
  %lcmp.mod46.not = icmp eq i16 %i.bq, 0
  br i1 %lcmp.mod46.not, label %._crit_edge85.i, label %.epil.preheader44

.epil.preheader44:                                ; preds = %._crit_edge85.i.loopexit.unr-lcssa, %.lr.ph84.i
  %.16782.i.epil.init = phi i32 [ %.06688.i, %.lr.ph84.i ], [ %.2.i.1, %._crit_edge85.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod48 = trunc i16 %i.bd to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.br = zext nneg i32 %.16782.i.epil.init to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i8 %i.bf, ptr %i.bt, align 2, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader44
  %.167.pn.i.epil = phi i32 [ %.16782.i.epil.init, %.epil.preheader44 ], [ %.2.i.epil, %bb.t ]
  %.pn.i.epil = add nuw i32 %i.bb, %.167.pn.i.epil
  %.2.i.epil = and i32 %.pn.i.epil, %i.o          ; 3 uses
  %i.bu = icmp ugt i32 %.2.i.epil, %.172.i.lcssa
  br i1 %i.bu, label %bb.t, label %._crit_edge85.i, !llvm.loop !1

._crit_edge85.i:                                  ; preds = %._crit_edge85.i.loopexit.unr-lcssa, %bb.t, %.preheader77.i
  %.167.lcssa.i = phi i32 [ %.06688.i, %.preheader77.i ], [ %.2.i.1, %._crit_edge85.i.loopexit.unr-lcssa ], [ %.2.i.epil, %bb.t ] ; 2 uses
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next94.i, %wide.trip.count.i
  br i1 %exitcond97.not.i, label %._crit_edge89.i, label %.preheader77.i, !llvm.loop !3

._crit_edge89.i:                                  ; preds = %._crit_edge85.i
  %.not.i = icmp eq i32 %.167.lcssa.i, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %FSEv07_buildDTable.exit.thread

.preheader.preheader.i:                           ; preds = %._crit_edge89.i
  %wide.trip.count101.i = zext nneg i32 %i.n to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv98.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next99.i, %.preheader.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv98.i ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !22
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.by ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !16 ; 2 uses
  %i.cb = add i16 %i.ca, 1
  store i16 %i.cb, ptr %i.bz, align 2, !tbaa !16
  %i.cc = zext i16 %i.ca to i32                   ; 2 uses
  %i.cd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cc, i1 true)
  %i.ce = xor i32 %i.cd, 31
  %i.cf = sub nsw i32 %i.l, %i.ce                 ; 2 uses
  %i.cg = trunc nsw i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !23
  %i.ci = and i32 %i.cf, 255
  %i.cj = shl i32 %i.cc, %i.ci
  %i.ck = sub i32 %i.cj, %i.n
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %i.bv, align 4, !tbaa !24
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond102.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count101.i
  br i1 %exitcond102.not.i, label %bb.u, label %.preheader.i, !llvm.loop !4

FSEv07_buildDTable.exit.thread:                   ; preds = %._crit_edge89.i, %bb.d, %bb.e
  %.1.i.ph = phi i64 [ -44, %bb.e ], [ -46, %bb.d ], [ -1, %._crit_edge89.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.thread

bb.u:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cm = call i64 @FSEv07_decompress_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %i.i, i64 noundef %i.j, ptr noundef nonnull %i.c)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %FSEv07_buildDTable.exit.thread, %bb.a, %bb.u
  %.2 = phi i64 [ -72, %bb.a ], [ %i.cm, %bb.u ], [ %.1.i.ph, %FSEv07_buildDTable.exit.thread ], [ -72, %bb.c ], [ %i.g, %bb.b ]
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
  br i1 %i.f, label %.loopexit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.b
  %sext = shl nuw nsw i32 32768, %3
  %i.g = lshr exact i32 %sext, 16                 ; 3 uses
  %4 = add nuw nsw i32 %2, 1                      ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %2, 0
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new.a

.lr.ph.new.a:                                     ; preds = %.lr.ph.a
  %unroll_iter = and i64 %wide.trip.count, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.new.a
  %indvars.iv = phi i64 [ 0, %.lr.ph.new.a ], [ %indvars.iv.next.1, %bb.i ] ; 5 uses
  %.sroa.4.079 = phi i16 [ 1, %.lr.ph.new.a ], [ %.sroa.4.2.1, %bb.i ] ; 2 uses
  %.07178 = phi i32 [ %i.d, %.lr.ph.new.a ], [ %.172.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new.a ], [ %niter.next.1, %bb.i ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !16   ; 3 uses
  %i.k = icmp eq i16 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = trunc i64 %indvars.iv to i8
  %i.m = add i32 %.07178, -1
  %i.n = zext i32 %.07178 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 %i.l, ptr %i.p, align 2, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = sext i16 %i.j to i32
  %.not76 = icmp sgt i32 %i.g, %i.q
  %spec.select = select i1 %.not76, i16 %.sroa.4.079, i16 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i16 [ 1, %bb.d ], [ %i.j, %bb.e ]
  %.172 = phi i32 [ %i.m, %bb.d ], [ %.07178, %bb.e ] ; 3 uses
  %.sroa.4.2 = phi i16 [ %.sroa.4.079, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %.sink, ptr %i.r, align 4, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.t = load i16, ptr %i.s, align 2, !tbaa !16   ; 3 uses
  %i.u = icmp eq i16 %i.t, -1
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = sext i16 %i.t to i32
  %.not76.1 = icmp sgt i32 %i.g, %i.v
  %spec.select.1 = select i1 %.not76.1, i16 %.sroa.4.2, i16 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = trunc i64 %indvars.iv.next to i8
  %i.x = add i32 %.172, -1
  %i.y = zext i32 %.172 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i8 %i.w, ptr %i.aa, align 2, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.1 = phi i16 [ 1, %bb.h ], [ %i.t, %bb.g ]
  %.172.1 = phi i32 [ %i.x, %bb.h ], [ %.172, %bb.g ] ; 3 uses
  %.sroa.4.2.1 = phi i16 [ %.sroa.4.2, %bb.h ], [ %spec.select.1, %bb.g ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.ab, align 2, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader77.lr.ph.unr-lcssa, label %bb.c, !llvm.loop !0

.preheader77.lr.ph.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader77.lr.ph, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader77.lr.ph.unr-lcssa, %.lr.ph.a
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.a ], [ %indvars.iv.next.1, %.preheader77.lr.ph.unr-lcssa ] ; 3 uses
  %.sroa.4.079.epil.init = phi i16 [ 1, %.lr.ph.a ], [ %.sroa.4.2.1, %.preheader77.lr.ph.unr-lcssa ] ; 2 uses
  %.07178.epil.init = phi i32 [ %i.d, %.lr.ph.a ], [ %.172.1, %.preheader77.lr.ph.unr-lcssa ] ; 3 uses
  %lcmp.mod107.a = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod107.a)
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !16 ; 3 uses
  %i.ae = icmp eq i16 %i.ad, -1
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.epil.preheader
  %i.af = sext i16 %i.ad to i32
  %.not76.epil = icmp sgt i32 %i.g, %i.af
  %spec.select.epil = select i1 %.not76.epil, i16 %.sroa.4.079.epil.init, i16 0
  br label %.preheader77.lr.ph.epilog-lcssa

bb.k:                                             ; preds = %.epil.preheader
  %i.ag = trunc i64 %indvars.iv.epil.init to i8
  %i.ah = add i32 %.07178.epil.init, -1
  %i.ai = zext i32 %.07178.epil.init to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.ag, ptr %i.ak, align 2, !tbaa !22
  br label %.preheader77.lr.ph.epilog-lcssa

.preheader77.lr.ph.epilog-lcssa:                  ; preds = %bb.k, %bb.j
  %.sink.epil = phi i16 [ 1, %bb.k ], [ %i.ad, %bb.j ]
  %.172.epil = phi i32 [ %i.ah, %bb.k ], [ %.07178.epil.init, %bb.j ]
  %.sroa.4.2.epil = phi i16 [ %.sroa.4.079.epil.init, %bb.k ], [ %spec.select.epil, %bb.j ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.al, align 2, !tbaa !16
  br label %.preheader77.lr.ph

.preheader77.lr.ph:                               ; preds = %.preheader77.lr.ph.unr-lcssa, %.preheader77.lr.ph.epilog-lcssa
  %.172.lcssa = phi i32 [ %.172.1, %.preheader77.lr.ph.unr-lcssa ], [ %.172.epil, %.preheader77.lr.ph.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.lcssa = phi i16 [ %.sroa.4.2.1, %.preheader77.lr.ph.unr-lcssa ], [ %.sroa.4.2.epil, %.preheader77.lr.ph.epilog-lcssa ]
  %5 = trunc nuw nsw i32 %3 to i16
  store i16 %5, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.lcssa, ptr %.sroa.4.0..sroa_idx, align 2
  %i.am = lshr i32 %i.c, 1
  %i.an = lshr i32 %i.c, 3
  %i.ao = add nuw nsw i32 %i.an, 3
  %i.ap = add nuw nsw i32 %i.ao, %i.am            ; 3 uses
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader77.lr.ph, %._crit_edge85
  %indvars.iv93 = phi i64 [ 0, %.preheader77.lr.ph ], [ %indvars.iv.next94, %._crit_edge85 ] ; 3 uses
  %.06688 = phi i32 [ 0, %.preheader77.lr.ph ], [ %.167.lcssa, %._crit_edge85 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv93
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !16 ; 5 uses
  %i.as = icmp sgt i16 %i.ar, 0
  br i1 %i.as, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %.preheader77
  %i.at = trunc i64 %indvars.iv93 to i8           ; 3 uses
  %i.au = icmp eq i16 %i.ar, 1
  br i1 %i.au, label %.epil.preheader108, label %.lr.ph84.new

.lr.ph84.new:                                     ; preds = %.lr.ph84
  %i.av = and i16 %i.ar, 32766
  %unroll_iter113 = zext nneg i16 %i.av to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph84.new
  %.16782 = phi i32 [ %.06688, %.lr.ph84.new ], [ %.2.1, %bb.p ] ; 2 uses
  %niter114 = phi i32 [ 0, %.lr.ph84.new ], [ %niter114.next.1, %bb.p ]
  %i.aw = zext nneg i32 %.16782 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 %i.at, ptr %i.ay, align 2, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.167.pn = phi i32 [ %.16782, %bb.l ], [ %.2, %bb.m ]
  %.pn = add nuw i32 %i.ap, %.167.pn
  %.2 = and i32 %.pn, %i.d                        ; 4 uses
  %i.az = icmp ugt i32 %.2, %.172.lcssa
  br i1 %i.az, label %bb.m, label %bb.n, !llvm.loop !1

bb.n:                                             ; preds = %bb.m
  %i.ba = zext nneg i32 %.2 to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i8 %i.at, ptr %i.bc, align 2, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.167.pn.1 = phi i32 [ %.2, %bb.n ], [ %.2.1, %bb.o ]
  %.pn.1 = add nuw i32 %i.ap, %.167.pn.1
  %.2.1 = and i32 %.pn.1, %i.d                    ; 5 uses
  %i.bd = icmp ugt i32 %.2.1, %.172.lcssa
  br i1 %i.bd, label %bb.o, label %bb.p, !llvm.loop !1

bb.p:                                             ; preds = %bb.o
  %niter114.next.1 = add i32 %niter114, 2         ; 2 uses
  %niter114.ncmp.1 = icmp eq i32 %niter114.next.1, %unroll_iter113
  br i1 %niter114.ncmp.1, label %._crit_edge85.loopexit.unr-lcssa, label %bb.l, !llvm.loop !2

._crit_edge85.loopexit.unr-lcssa:                 ; preds = %bb.p
  %i.be = and i16 %i.ar, 1
  %lcmp.mod110.not = icmp eq i16 %i.be, 0
  br i1 %lcmp.mod110.not, label %._crit_edge85, label %.epil.preheader108

.epil.preheader108:                               ; preds = %._crit_edge85.loopexit.unr-lcssa, %.lr.ph84
  %.16782.epil.init = phi i32 [ %.06688, %.lr.ph84 ], [ %.2.1, %._crit_edge85.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod112 = trunc i16 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.bf = zext nneg i32 %.16782.epil.init to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.at, ptr %i.bh, align 2, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader108
  %.167.pn.epil = phi i32 [ %.16782.epil.init, %.epil.preheader108 ], [ %.2.epil, %bb.q ]
  %.pn.epil = add nuw i32 %i.ap, %.167.pn.epil
  %.2.epil = and i32 %.pn.epil, %i.d              ; 3 uses
  %i.bi = icmp ugt i32 %.2.epil, %.172.lcssa
  br i1 %i.bi, label %bb.q, label %._crit_edge85, !llvm.loop !1

._crit_edge85:                                    ; preds = %._crit_edge85.loopexit.unr-lcssa, %bb.q, %.preheader77
  %.167.lcssa = phi i32 [ %.06688, %.preheader77 ], [ %.2.1, %._crit_edge85.loopexit.unr-lcssa ], [ %.2.epil, %bb.q ] ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count
  br i1 %exitcond97.not, label %._crit_edge89, label %.preheader77, !llvm.loop !3

._crit_edge89:                                    ; preds = %._crit_edge85
  %.not = icmp eq i32 %.167.lcssa, 0
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge89
  %wide.trip.count101 = zext nneg i32 %i.c to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv98 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next99, %.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv98 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !22
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !16 ; 2 uses
  %i.bp = add i16 %i.bo, 1
  store i16 %i.bp, ptr %i.bn, align 2, !tbaa !16
  %i.bq = zext i16 %i.bo to i32                   ; 2 uses
  %i.br = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true)
  %i.bs = xor i32 %i.br, 31
  %i.bt = sub nsw i32 %3, %i.bs                   ; 2 uses
  %i.bu = trunc nsw i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !23
  %i.bw = and i32 %i.bt, 255
  %i.bx = shl i32 %i.bq, %i.bw
  %i.by = sub i32 %i.bx, %i.c
  %i.bz = trunc i32 %i.by to i16
  store i16 %i.bz, ptr %i.bj, align 2, !tbaa !24
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit, label %.preheader, !llvm.loop !4

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.a, %._crit_edge89
  %.1 = phi i64 [ -1, %._crit_edge89 ], [ -46, %bb.a ], [ -44, %bb.b ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @FSEv07_buildDTable_rle(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %0, align 2, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.b, align 2, !tbaa !27
  store i16 0, ptr %i.a, align 2, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %1, ptr %i.c, align 2, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.d, align 1, !tbaa !23
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define range(i64 -1, 1) i64 @FSEv07_buildDTable_raw(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i32 %1 to i16
  store i16 %i.c, ptr %0, align 2, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1, ptr %i.d, align 2, !tbaa !27
  %i.e = trunc i32 %1 to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.024 = phi i32 [ 0, %bb.b ], [ %i.k, %bb.c ]   ; 3 uses
  %i.f = zext i32 %.024 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f ; 3 uses
  store i16 0, ptr %i.g, align 2, !tbaa !24
  %i.h = trunc i32 %.024 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %i.h, ptr %i.i, align 2, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 %i.e, ptr %i.j, align 1, !tbaa !23
  %i.k = add i32 %.024, 1                         ; 2 uses
  %.0.highbits = lshr i32 %i.k, %1
  %i.l = icmp eq i32 %.0.highbits, 0
  br i1 %i.l, label %bb.c, label %.loopexit, !llvm.loop !92

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.022 = phi i64 [ -1, %bb.a ], [ 0, %bb.c ]
  ret i64 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @FSEv07_decompress_usingDTable(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !27
  %.not = icmp eq i16 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -3 ; 2 uses
  %i.e = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %FSEv07_decompress_usingDTable_generic.exit19, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %3, 7
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  %i.g = getelementptr i8, ptr %.ptr, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17    ; 2 uses
  %.not51.i = icmp eq i8 %i.h, 0
  br i1 %.not51.i, label %FSEv07_decompress_usingDTable_generic.exit19, label %BITv07_initDStream.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load i8, ptr %2, align 1, !tbaa !17
  %i.j = zext i8 %i.i to i64                      ; 7 uses
  switch i64 %3, label %bb.l [
    i64 7, label %bb.f
    i64 6, label %bb.g
    i64 5, label %bb.h
    i64 4, label %bb.i
    i64 3, label %bb.j
    i64 2, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.l = load i8, ptr %i.k, align 1, !tbaa !17
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 48
  %i.o = or disjoint i64 %i.n, %i.j
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi i64 [ %i.o, %bb.f ], [ %i.j, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 40
  %i.u = add nuw nsw i64 %i.t, %i.p
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.v = phi i64 [ %i.u, %bb.g ], [ %i.j, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 32
  %i.aa = add nuw nsw i64 %i.z, %i.v
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ab = phi i64 [ %i.aa, %bb.h ], [ %i.j, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 24
  %i.ag = add nuw nsw i64 %i.af, %i.ab
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ah = phi i64 [ %i.ag, %bb.i ], [ %i.j, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = add nuw nsw i64 %i.al, %i.ah
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.an = phi i64 [ %i.am, %bb.j ], [ %i.j, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 8
  %i.as = add nuw nsw i64 %i.ar, %i.an
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.sroa.0269.2 = phi i64 [ %i.j, %bb.e ], [ %i.as, %bb.k ]
  %i.at = getelementptr i8, ptr %2, i64 %3
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17  ; 2 uses
  %.not.i20 = icmp eq i8 %i.av, 0
  br i1 %.not.i20, label %FSEv07_decompress_usingDTable_generic.exit19, label %BITv07_initDStream.exit.thread311

BITv07_initDStream.exit.thread311:                ; preds = %bb.l
  %i.aw = zext i8 %i.av to i32
  %i.ax = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aw, i1 true)
  %i.ay = trunc nuw nsw i64 %3 to i32
  %i.az = shl nuw nsw i32 %i.ay, 3
  %reass.sub = sub nsw i32 %i.ax, %i.az
  %i.ba = add nsw i32 %reass.sub, 41
end_hunk_0
begin_hunk_1_@HUFv07_decompress1X2_usingDTable_internal:bb.a
    i64 3, label %bb.i
    i64 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 48
  %i.r = or disjoint i64 %i.q, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi i64 [ %i.r, %bb.e ], [ %i.m, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 40
  %i.x = add nuw nsw i64 %i.w, %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.y = phi i64 [ %i.x, %bb.f ], [ %i.m, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 32
  %i.ad = add nuw nsw i64 %i.ac, %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ae = phi i64 [ %i.ad, %bb.g ], [ %i.m, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 24
  %i.aj = add nuw nsw i64 %i.ai, %i.ae
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.ak = phi i64 [ %i.aj, %bb.h ], [ %i.m, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 16
  %i.ap = add nuw nsw i64 %i.ao, %i.ak
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.aq = phi i64 [ %i.ap, %bb.i ], [ %i.m, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 8
  %i.av = add nuw nsw i64 %i.au, %i.aq
  store i64 %i.av, ptr %5, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %i.aw = getelementptr i8, ptr %2, i64 %3
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i, label %BITv07_initDStream.exit.thread, label %BITv07_initDStream.exit.thread20

BITv07_initDStream.exit.thread20:                 ; preds = %bb.k
  %i.az = zext i8 %i.ay to i32
  %i.ba = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = trunc nuw nsw i64 %3 to i32
  %i.bd = shl nuw nsw i32 %i.bc, 3
  %reass.sub = sub nsw i32 %i.ba, %i.bd
  %i.be = add nsw i32 %reass.sub, 41
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !35
  br label %bb.l

BITv07_initDStream.exit:                          ; preds = %bb.c
  %i.bf = trunc nuw nsw i64 %i.j to i32
  %i.bg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bf, i1 true)
  %i.bh = xor i32 %i.bg, 31
  %i.bi = sub nuw nsw i32 8, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !35
  %i.bk = icmp ult i64 %3, -119
  br i1 %i.bk, label %bb.l, label %BITv07_initDStream.exit.thread

bb.l:                                             ; preds = %BITv07_initDStream.exit.thread20, %BITv07_initDStream.exit
  call fastcc void @HUFv07_decodeStreamX2(ptr noundef %0, ptr noundef %5, ptr noundef %i.a, ptr noundef nonnull %i.b, i32 noundef %i.c)
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bo = icmp eq ptr %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %.fr = freeze i32 %i.bq
  %.not = icmp eq i32 %.fr, 64
  %or.cond = and i1 %i.bo, %.not
  %spec.select = select i1 %or.cond, i64 %1, i64 -20
  br label %BITv07_initDStream.exit.thread

BITv07_initDStream.exit.thread:                   ; preds = %bb.k, %bb.c, %bb.a, %bb.l, %BITv07_initDStream.exit
  %.1 = phi i64 [ %3, %BITv07_initDStream.exit ], [ %spec.select, %bb.l ], [ -1, %bb.c ], [ -72, %bb.a ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress1X2_DCtx(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @HUFv07_readDTableX2(ptr noundef %0, ptr noundef %3, i64 noundef %4) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp ult i64 %i.a, %4
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc i64 @HUFv07_decompress1X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress1X2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [2049 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8196) %i.a, i8 0, i64 8196, i1 false)
  store i32 184549387, ptr %i.a, align 16
  %i.b = call i64 @HUFv07_readDTableX2(ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.b, label %HUFv07_decompress1X2_DCtx.exit

bb.b:                                             ; preds = %bb.a
  %.not19.i = icmp ult i64 %i.b, %3
  br i1 %.not19.i, label %bb.c, label %HUFv07_decompress1X2_DCtx.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.e = sub nuw i64 %3, %i.b
  %i.f = call fastcc i64 @HUFv07_decompress1X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %i.d, i64 noundef %i.e, ptr noundef nonnull %i.a)
  br label %HUFv07_decompress1X2_DCtx.exit

HUFv07_decompress1X2_DCtx.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.c ], [ %i.b, %bb.a ], [ -72, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress4X2_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %.val = load i32, ptr %4, align 4
  %i.a = and i32 %.val, 65280
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @HUFv07_decompress4X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUFv07_decompress4X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.BITv07_DStream_t, align 8   ; 18 uses
  %6 = alloca %struct.BITv07_DStream_t, align 8   ; 18 uses
  %7 = alloca %struct.BITv07_DStream_t, align 8   ; 18 uses
  %8 = alloca %struct.BITv07_DStream_t, align 8   ; 12 uses
  %i.a = icmp ult i64 %3, 10
  br i1 %i.a, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %.val163 = load i16, ptr %2, align 1            ; 5 uses
  %i.d = zext i16 %.val163 to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val162 = load i16, ptr %i.e, align 1          ; 5 uses
  %i.f = zext i16 %.val162 to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val161 = load i16, ptr %i.g, align 1          ; 5 uses
  %i.h = zext i16 %.val161 to i64                 ; 2 uses
  %i.i = add nuw nsw i64 %i.d, 6
  %i.j = add nuw nsw i64 %i.i, %i.f
  %i.k = add nuw nsw i64 %i.j, %i.h               ; 2 uses
  %i.l = sub nuw i64 %3, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %i.d     ; 12 uses
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f     ; 12 uses
  %i.p = getelementptr i8, ptr %i.o, i64 %i.h     ; 3 uses
  %i.q = add i64 %1, 3
  %i.r = lshr i64 %i.q, 2                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 5 uses
  %.val = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift = lshr i32 %.val, 16   ; 2 uses
  %i.v = and i32 %.sroa.3.0.extract.shift, 255    ; 4 uses
  %i.w = icmp ugt i64 %i.k, %3
  br i1 %i.w, label %BITv07_initDStream.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i16 %.val163, 0
  br i1 %i.x, label %BITv07_initDStream.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp ugt i16 %.val163, 7
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.z, align 8, !tbaa !32
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !33
  %.val.i = load i64, ptr %i.aa, align 1          ; 2 uses
  store i64 %.val.i, ptr %5, align 8, !tbaa !34
  %i.ac = lshr i64 %.val.i, 56                    ; 2 uses
  %.not51.i = icmp eq i64 %i.ac, 0
  br i1 %.not51.i, label %BITv07_initDStream.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 true)
  %i.af = xor i32 %i.ae, 31
  %i.ag = sub nuw nsw i32 8, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !35
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.m, ptr %i.ai, align 8, !tbaa !33
  %i.aj = load i8, ptr %i.m, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i64                    ; 7 uses
  store i64 %i.ak, ptr %5, align 8, !tbaa !34
  switch i16 %.val163, label %bb.m [
    i16 7, label %bb.g
    i16 6, label %bb.h
    i16 5, label %bb.i
    i16 4, label %bb.j
    i16 3, label %bb.k
    i16 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 48
  %i.ap = or disjoint i64 %i.ao, %i.ak
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = phi i64 [ %i.ap, %bb.g ], [ %i.ak, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 40
  %i.av = add nuw nsw i64 %i.au, %i.aq
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.aw = phi i64 [ %i.av, %bb.h ], [ %i.ak, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 32
  %i.bb = add nuw nsw i64 %i.ba, %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.bc = phi i64 [ %i.bb, %bb.i ], [ %i.ak, %bb.f ]
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 24
  %i.bh = add nuw nsw i64 %i.bg, %i.bc
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.bi = phi i64 [ %i.bh, %bb.j ], [ %i.ak, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 16
  %i.bn = add nuw nsw i64 %i.bm, %i.bi
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.bo = phi i64 [ %i.bn, %bb.k ], [ %i.ak, %bb.f ]
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 8
  %i.bt = add nuw nsw i64 %i.bs, %i.bo
  store i64 %i.bt, ptr %5, align 8, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %i.bu = getelementptr i8, ptr %i.n, i64 -1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i, label %BITv07_initDStream.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = zext i8 %i.bv to i32
  %i.bx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bz = shl nuw nsw i16 %.val163, 3
  %i.ca = zext nneg i16 %i.bz to i32
  %reass.sub = sub nsw i32 %i.bx, %i.ca
  %i.cb = add nsw i32 %reass.sub, 41
  store i32 %i.cb, ptr %i.by, align 8, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.cc = icmp eq i16 %.val162, 0
  br i1 %i.cc, label %BITv07_initDStream.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp ugt i16 %.val162, 7
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.ce, align 8, !tbaa !32
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !33
  %.val.i166 = load i64, ptr %i.cf, align 1       ; 2 uses
  store i64 %.val.i166, ptr %6, align 8, !tbaa !34
  %i.ch = lshr i64 %.val.i166, 56                 ; 2 uses
  %.not51.i167 = icmp eq i64 %i.ch, 0
  br i1 %.not51.i167, label %BITv07_initDStream.exit.thread, label %.thread.i168

.thread.i168:                                     ; preds = %bb.q
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ci, i1 true)
  %i.ck = xor i32 %i.cj, 31
  %i.cl = sub nuw nsw i32 8, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !35
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.n, ptr %i.cn, align 8, !tbaa !33
  %i.co = load i8, ptr %i.n, align 1, !tbaa !17
  %i.cp = zext i8 %i.co to i64                    ; 7 uses
  store i64 %i.cp, ptr %6, align 8, !tbaa !34
  switch i16 %.val162, label %bb.y [
    i16 7, label %bb.s
    i16 6, label %bb.t
    i16 5, label %bb.u
    i16 4, label %bb.v
    i16 3, label %bb.w
    i16 2, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 48
  %i.cu = or disjoint i64 %i.ct, %i.cp
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cv = phi i64 [ %i.cu, %bb.s ], [ %i.cp, %bb.r ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !17
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 40
  %i.da = add nuw nsw i64 %i.cz, %i.cv
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.db = phi i64 [ %i.da, %bb.t ], [ %i.cp, %bb.r ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !17
  %i.de = zext i8 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 32
  %i.dg = add nuw nsw i64 %i.df, %i.db
  br label %bb.v

end_hunk_1
begin_hunk_2_@HUFv07_decompress1X4_usingDTable_internal:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.l = load i8, ptr %i.k, align 1, !tbaa !17
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 48
  %i.o = or disjoint i64 %i.n, %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = phi i64 [ %i.o, %bb.e ], [ %i.j, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 40
  %i.u = add nuw nsw i64 %i.t, %i.p
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.v = phi i64 [ %i.u, %bb.f ], [ %i.j, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 32
  %i.aa = add nuw nsw i64 %i.z, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ab = phi i64 [ %i.aa, %bb.g ], [ %i.j, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 24
  %i.ag = add nuw nsw i64 %i.af, %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.ah = phi i64 [ %i.ag, %bb.h ], [ %i.j, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = add nuw nsw i64 %i.al, %i.ah
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.an = phi i64 [ %i.am, %bb.i ], [ %i.j, %bb.d ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 8
  %i.as = add nuw nsw i64 %i.ar, %i.an
  store i64 %i.as, ptr %5, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %i.at = getelementptr i8, ptr %2, i64 %3
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %BITv07_initDStream.exit.thread, label %BITv07_initDStream.exit.thread19

BITv07_initDStream.exit.thread19:                 ; preds = %bb.k
  %i.aw = zext i8 %i.av to i32
  %i.ax = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aw, i1 true)
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = trunc nuw nsw i64 %3 to i32
  %i.ba = shl nuw nsw i32 %i.az, 3
  %reass.sub = sub nsw i32 %i.ax, %i.ba
  %i.bb = add nsw i32 %reass.sub, 41
  store i32 %i.bb, ptr %i.ay, align 8, !tbaa !35
  br label %bb.l

BITv07_initDStream.exit:                          ; preds = %bb.c
  %i.bc = trunc nuw nsw i64 %i.g to i32
  %i.bd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bc, i1 true)
  %i.be = xor i32 %i.bd, 31
  %i.bf = sub nuw nsw i32 8, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !35
  %i.bh = icmp ult i64 %3, -119
  br i1 %i.bh, label %bb.l, label %BITv07_initDStream.exit.thread

bb.l:                                             ; preds = %BITv07_initDStream.exit.thread19, %BITv07_initDStream.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.val = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift = lshr i32 %.val, 16
  %i.bk = and i32 %.sroa.3.0.extract.shift, 255
  call fastcc void @HUFv07_decodeStreamX4(ptr noundef %0, ptr noundef %5, ptr noundef %i.bi, ptr noundef nonnull %i.bj, i32 noundef %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bo = icmp eq ptr %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %.fr = freeze i32 %i.bq
  %.not = icmp eq i32 %.fr, 64
  %or.cond = and i1 %i.bo, %.not
  %spec.select = select i1 %or.cond, i64 %1, i64 -20
  br label %BITv07_initDStream.exit.thread

BITv07_initDStream.exit.thread:                   ; preds = %bb.k, %bb.c, %bb.a, %bb.l, %BITv07_initDStream.exit
  %.1 = phi i64 [ %3, %BITv07_initDStream.exit ], [ %spec.select, %bb.l ], [ -1, %bb.c ], [ -72, %bb.a ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress1X4_DCtx(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @HUFv07_readDTableX4(ptr noundef %0, ptr noundef %3, i64 noundef %4) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp ult i64 %i.a, %4
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc i64 @HUFv07_decompress1X4_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress1X4(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [4097 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16388) %i.a, i8 0, i64 16388, i1 false)
  store i32 201326604, ptr %i.a, align 16
  %i.b = call i64 @HUFv07_readDTableX4(ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.b, label %HUFv07_decompress1X4_DCtx.exit

bb.b:                                             ; preds = %bb.a
  %.not19.i = icmp ult i64 %i.b, %3
  br i1 %.not19.i, label %bb.c, label %HUFv07_decompress1X4_DCtx.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.e = sub nuw i64 %3, %i.b
  %i.f = call fastcc i64 @HUFv07_decompress1X4_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %i.d, i64 noundef %i.e, ptr noundef nonnull %i.a)
  br label %HUFv07_decompress1X4_DCtx.exit

HUFv07_decompress1X4_DCtx.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.c ], [ %i.b, %bb.a ], [ -72, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress4X4_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #11 {
bb.a:
  %.val = load i32, ptr %4, align 4
  %i.a = and i32 %.val, 65280
  %.not = icmp eq i32 %i.a, 256
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @HUFv07_decompress4X4_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUFv07_decompress4X4_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly %4) unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.BITv07_DStream_t, align 8   ; 18 uses
  %6 = alloca %struct.BITv07_DStream_t, align 8   ; 18 uses
  %7 = alloca %struct.BITv07_DStream_t, align 8   ; 18 uses
  %8 = alloca %struct.BITv07_DStream_t, align 8   ; 12 uses
  %i.a = icmp ult i64 %3, 10
  br i1 %i.a, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %.val181 = load i16, ptr %2, align 1            ; 5 uses
  %i.d = zext i16 %.val181 to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val180 = load i16, ptr %i.e, align 1          ; 5 uses
  %i.f = zext i16 %.val180 to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val179 = load i16, ptr %i.g, align 1          ; 5 uses
  %i.h = zext i16 %.val179 to i64                 ; 2 uses
  %i.i = add nuw nsw i64 %i.d, 6
  %i.j = add nuw nsw i64 %i.i, %i.f
  %i.k = add nuw nsw i64 %i.j, %i.h               ; 2 uses
  %i.l = sub nuw i64 %3, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %i.d     ; 12 uses
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f     ; 12 uses
  %i.p = getelementptr i8, ptr %i.o, i64 %i.h     ; 3 uses
  %i.q = add i64 %1, 3
  %i.r = lshr i64 %i.q, 2                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 5 uses
  %.val = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift = lshr i32 %.val, 16   ; 2 uses
  %i.v = and i32 %.sroa.3.0.extract.shift, 255    ; 4 uses
  %i.w = icmp ugt i64 %i.k, %3
  br i1 %i.w, label %BITv07_initDStream.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i16 %.val181, 0
  br i1 %i.x, label %BITv07_initDStream.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp ugt i16 %.val181, 7
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.z, align 8, !tbaa !32
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !33
  %.val.i = load i64, ptr %i.aa, align 1          ; 2 uses
  store i64 %.val.i, ptr %5, align 8, !tbaa !34
  %i.ac = lshr i64 %.val.i, 56                    ; 2 uses
  %.not51.i = icmp eq i64 %i.ac, 0
  br i1 %.not51.i, label %BITv07_initDStream.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 true)
  %i.af = xor i32 %i.ae, 31
  %i.ag = sub nuw nsw i32 8, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !35
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.m, ptr %i.ai, align 8, !tbaa !33
  %i.aj = load i8, ptr %i.m, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i64                    ; 7 uses
  store i64 %i.ak, ptr %5, align 8, !tbaa !34
  switch i16 %.val181, label %bb.m [
    i16 7, label %bb.g
    i16 6, label %bb.h
    i16 5, label %bb.i
    i16 4, label %bb.j
    i16 3, label %bb.k
    i16 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 48
  %i.ap = or disjoint i64 %i.ao, %i.ak
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = phi i64 [ %i.ap, %bb.g ], [ %i.ak, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 40
  %i.av = add nuw nsw i64 %i.au, %i.aq
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.aw = phi i64 [ %i.av, %bb.h ], [ %i.ak, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 32
  %i.bb = add nuw nsw i64 %i.ba, %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.bc = phi i64 [ %i.bb, %bb.i ], [ %i.ak, %bb.f ]
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 24
  %i.bh = add nuw nsw i64 %i.bg, %i.bc
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.bi = phi i64 [ %i.bh, %bb.j ], [ %i.ak, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 16
  %i.bn = add nuw nsw i64 %i.bm, %i.bi
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.bo = phi i64 [ %i.bn, %bb.k ], [ %i.ak, %bb.f ]
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 8
  %i.bt = add nuw nsw i64 %i.bs, %i.bo
  store i64 %i.bt, ptr %5, align 8, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %i.bu = getelementptr i8, ptr %i.n, i64 -1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i, label %BITv07_initDStream.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = zext i8 %i.bv to i32
  %i.bx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bz = shl nuw nsw i16 %.val181, 3
  %i.ca = zext nneg i16 %i.bz to i32
  %reass.sub = sub nsw i32 %i.bx, %i.ca
  %i.cb = add nsw i32 %reass.sub, 41
  store i32 %i.cb, ptr %i.by, align 8, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.cc = icmp eq i16 %.val180, 0
  br i1 %i.cc, label %BITv07_initDStream.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp ugt i16 %.val180, 7
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.ce, align 8, !tbaa !32
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !33
  %.val.i184 = load i64, ptr %i.cf, align 1       ; 2 uses
  store i64 %.val.i184, ptr %6, align 8, !tbaa !34
  %i.ch = lshr i64 %.val.i184, 56                 ; 2 uses
  %.not51.i185 = icmp eq i64 %i.ch, 0
  br i1 %.not51.i185, label %BITv07_initDStream.exit.thread, label %.thread.i186

.thread.i186:                                     ; preds = %bb.q
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ci, i1 true)
  %i.ck = xor i32 %i.cj, 31
  %i.cl = sub nuw nsw i32 8, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !35
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.n, ptr %i.cn, align 8, !tbaa !33
  %i.co = load i8, ptr %i.n, align 1, !tbaa !17
  %i.cp = zext i8 %i.co to i64                    ; 7 uses
  store i64 %i.cp, ptr %6, align 8, !tbaa !34
  switch i16 %.val180, label %bb.y [
    i16 7, label %bb.s
    i16 6, label %bb.t
    i16 5, label %bb.u
    i16 4, label %bb.v
    i16 3, label %bb.w
    i16 2, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 48
  %i.cu = or disjoint i64 %i.ct, %i.cp
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cv = phi i64 [ %i.cu, %bb.s ], [ %i.cp, %bb.r ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !17
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 40
  %i.da = add nuw nsw i64 %i.cz, %i.cv
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.db = phi i64 [ %i.da, %bb.t ], [ %i.cp, %bb.r ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !17
  %i.de = zext i8 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 32
  %i.dg = add nuw nsw i64 %i.df, %i.db
  br label %bb.v

end_hunk_2
begin_hunk_3_@ZSTDv07_decompressBlock_internal:bb.a
ZSTDv07_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %bb.cp, %.lr.ph122.i.i, %middle.block168, %vec.epilog.middle.block184, %middle.block, %vec.epilog.middle.block, %bb.cn, %.preheader.i.i, %bb.ch
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
  br i1 %i.as, label %FSEv07_buildDTable.exit.thread.i.i, label %.lr.ph.i.i.i.a

.lr.ph.i.i.i.a:                                   ; preds = %bb.i
  %sext.i.i.i = shl nuw nsw i32 32768, %i.al
  %i.at = lshr exact i32 %sext.i.i.i, 16          ; 3 uses
  %3 = add nuw nsw i32 %i.ao, 1                   ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %3 to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.au = icmp eq i32 %i.ao, 0
  br i1 %i.au, label %.epil.preheader, label %.lr.ph.i.i.i.new.a

.lr.ph.i.i.i.new.a:                               ; preds = %.lr.ph.i.i.i.a
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 510
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.lr.ph.i.i.i.new.a
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new.a ], [ %indvars.iv.next.i.i.i.1, %bb.p ] ; 5 uses
  %.sroa.4.079.i.i.i = phi i16 [ 1, %.lr.ph.i.i.i.new.a ], [ %.sroa.4.2.i.i.i.1, %bb.p ] ; 2 uses
  %.07178.i.i.i = phi i32 [ %i.ar, %.lr.ph.i.i.i.new.a ], [ %.172.i.i.i.1, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new.a ], [ %niter.next.1, %bb.p ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !16 ; 3 uses
  %i.ax = icmp eq i16 %i.aw, -1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = trunc i64 %indvars.iv.i.i.i to i8
  %i.az = add i32 %.07178.i.i.i, -1
  %i.ba = zext i32 %.07178.i.i.i to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i8 %i.ay, ptr %i.bc, align 2, !tbaa !22
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bd = sext i16 %i.aw to i32
  %.not76.i.i.i = icmp sgt i32 %i.at, %i.bd
  %spec.select.i.i.i = select i1 %.not76.i.i.i, i16 %.sroa.4.079.i.i.i, i16 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i.i.i = phi i16 [ 1, %bb.k ], [ %i.aw, %bb.l ]
  %.172.i.i.i = phi i32 [ %i.az, %bb.k ], [ %.07178.i.i.i, %bb.l ] ; 3 uses
  %.sroa.4.2.i.i.i = phi i16 [ %.sroa.4.079.i.i.i, %bb.k ], [ %spec.select.i.i.i, %bb.l ] ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.i
  store i16 %.sink.i.i.i, ptr %i.be, align 4, !tbaa !16
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !16 ; 3 uses
  %i.bh = icmp eq i16 %i.bg, -1
  br i1 %i.bh, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = sext i16 %i.bg to i32
  %.not76.i.i.i.1 = icmp sgt i32 %i.at, %i.bi
  %spec.select.i.i.i.1 = select i1 %.not76.i.i.i.1, i16 %.sroa.4.2.i.i.i, i16 0
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = trunc i64 %indvars.iv.next.i.i.i to i8
  %i.bk = add i32 %.172.i.i.i, -1
  %i.bl = zext i32 %.172.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i8 %i.bj, ptr %i.bn, align 2, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i.i.i.1 = phi i16 [ 1, %bb.o ], [ %i.bg, %bb.n ]
  %.172.i.i.i.1 = phi i32 [ %i.bk, %bb.o ], [ %.172.i.i.i, %bb.n ] ; 3 uses
  %.sroa.4.2.i.i.i.1 = phi i16 [ %.sroa.4.2.i.i.i, %bb.o ], [ %spec.select.i.i.i.1, %bb.n ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i
  store i16 %.sink.i.i.i.1, ptr %i.bo, align 2, !tbaa !16
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader77.lr.ph.i.i.i.unr-lcssa, label %bb.j, !llvm.loop !0

.preheader77.lr.ph.i.i.i.unr-lcssa:               ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader77.lr.ph.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader77.lr.ph.i.i.i.unr-lcssa, %.lr.ph.i.i.i.a
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.a ], [ %indvars.iv.next.i.i.i.1, %.preheader77.lr.ph.i.i.i.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i.i.i.epil.init = phi i16 [ 1, %.lr.ph.i.i.i.a ], [ %.sroa.4.2.i.i.i.1, %.preheader77.lr.ph.i.i.i.unr-lcssa ] ; 2 uses
  %.07178.i.i.i.epil.init = phi i32 [ %i.ar, %.lr.ph.i.i.i.a ], [ %.172.i.i.i.1, %.preheader77.lr.ph.i.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod36 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod36)
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.i.epil.init
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !16 ; 3 uses
  %i.br = icmp eq i16 %i.bq, -1
  br i1 %i.br, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.epil.preheader
  %i.bs = sext i16 %i.bq to i32
  %.not76.i.i.i.epil = icmp sgt i32 %i.at, %i.bs
  %spec.select.i.i.i.epil = select i1 %.not76.i.i.i.epil, i16 %.sroa.4.079.i.i.i.epil.init, i16 0
  br label %.preheader77.lr.ph.i.i.i.epilog-lcssa

bb.r:                                             ; preds = %.epil.preheader
  %i.bt = trunc i64 %indvars.iv.i.i.i.epil.init to i8
  %i.bu = add i32 %.07178.i.i.i.epil.init, -1
  %i.bv = zext i32 %.07178.i.i.i.epil.init to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i8 %i.bt, ptr %i.bx, align 2, !tbaa !22
  br label %.preheader77.lr.ph.i.i.i.epilog-lcssa

.preheader77.lr.ph.i.i.i.epilog-lcssa:            ; preds = %bb.r, %bb.q
  %.sink.i.i.i.epil = phi i16 [ 1, %bb.r ], [ %i.bq, %bb.q ]
  %.172.i.i.i.epil = phi i32 [ %i.bu, %bb.r ], [ %.07178.i.i.i.epil.init, %bb.q ]
  %.sroa.4.2.i.i.i.epil = phi i16 [ %.sroa.4.079.i.i.i.epil.init, %bb.r ], [ %spec.select.i.i.i.epil, %bb.q ]
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.i.epil.init
  store i16 %.sink.i.i.i.epil, ptr %i.by, align 2, !tbaa !16
  br label %.preheader77.lr.ph.i.i.i

.preheader77.lr.ph.i.i.i:                         ; preds = %.preheader77.lr.ph.i.i.i.unr-lcssa, %.preheader77.lr.ph.i.i.i.epilog-lcssa
  %.172.i.i.i.lcssa = phi i32 [ %.172.i.i.i.1, %.preheader77.lr.ph.i.i.i.unr-lcssa ], [ %.172.i.i.i.epil, %.preheader77.lr.ph.i.i.i.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i.i.i.lcssa = phi i16 [ %.sroa.4.2.i.i.i.1, %.preheader77.lr.ph.i.i.i.unr-lcssa ], [ %.sroa.4.2.i.i.i.epil, %.preheader77.lr.ph.i.i.i.epilog-lcssa ]
  %i.bz = trunc nuw nsw i32 %i.al to i16
  store i16 %i.bz, ptr %i.an, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2054
  store i16 %.sroa.4.2.i.i.i.lcssa, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2
  %i.ca = lshr i32 %i.aq, 1
  %i.cb = lshr i32 %i.aq, 3
  %i.cc = add nuw nsw i32 %i.cb, 3
  %i.cd = add nuw nsw i32 %i.cc, %i.ca            ; 3 uses
  br label %.preheader77.i.i.i

.preheader77.i.i.i:                               ; preds = %._crit_edge85.i.i.i, %.preheader77.lr.ph.i.i.i
  %indvars.iv93.i.i.i = phi i64 [ 0, %.preheader77.lr.ph.i.i.i ], [ %indvars.iv.next94.i.i.i, %._crit_edge85.i.i.i ] ; 3 uses
  %.06688.i.i.i = phi i32 [ 0, %.preheader77.lr.ph.i.i.i ], [ %.167.lcssa.i.i.i, %._crit_edge85.i.i.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv93.i.i.i
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !16 ; 5 uses
  %i.cg = icmp sgt i16 %i.cf, 0
  br i1 %i.cg, label %.lr.ph84.i.i.i, label %._crit_edge85.i.i.i

.lr.ph84.i.i.i:                                   ; preds = %.preheader77.i.i.i
  %i.ch = trunc i64 %indvars.iv93.i.i.i to i8     ; 3 uses
  %i.ci = icmp eq i16 %i.cf, 1
  br i1 %i.ci, label %.epil.preheader37, label %.lr.ph84.i.i.i.new

.lr.ph84.i.i.i.new:                               ; preds = %.lr.ph84.i.i.i
  %i.cj = and i16 %i.cf, 32766
  %unroll_iter42 = zext nneg i16 %i.cj to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph84.i.i.i.new
  %.16782.i.i.i = phi i32 [ %.06688.i.i.i, %.lr.ph84.i.i.i.new ], [ %.2.i.i.i.1, %bb.w ] ; 2 uses
  %niter43 = phi i32 [ 0, %.lr.ph84.i.i.i.new ], [ %niter43.next.1, %bb.w ]
  %i.ck = zext nneg i32 %.16782.i.i.i to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i8 %i.ch, ptr %i.cm, align 2, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.167.pn.i.i.i = phi i32 [ %.16782.i.i.i, %bb.s ], [ %.2.i.i.i, %bb.t ]
  %.pn.i.i.i = add nuw nsw i32 %i.cd, %.167.pn.i.i.i
  %.2.i.i.i = and i32 %.pn.i.i.i, %i.ar           ; 4 uses
  %i.cn = icmp ugt i32 %.2.i.i.i, %.172.i.i.i.lcssa
  br i1 %i.cn, label %bb.t, label %bb.u, !llvm.loop !1

bb.u:                                             ; preds = %bb.t
  %i.co = zext nneg i32 %.2.i.i.i to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i8 %i.ch, ptr %i.cq, align 2, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.167.pn.i.i.i.1 = phi i32 [ %.2.i.i.i, %bb.u ], [ %.2.i.i.i.1, %bb.v ]
  %.pn.i.i.i.1 = add nuw nsw i32 %i.cd, %.167.pn.i.i.i.1
  %.2.i.i.i.1 = and i32 %.pn.i.i.i.1, %i.ar       ; 5 uses
  %i.cr = icmp ugt i32 %.2.i.i.i.1, %.172.i.i.i.lcssa
  br i1 %i.cr, label %bb.v, label %bb.w, !llvm.loop !1

bb.w:                                             ; preds = %bb.v
  %niter43.next.1 = add i32 %niter43, 2           ; 2 uses
  %niter43.ncmp.1 = icmp eq i32 %niter43.next.1, %unroll_iter42
  br i1 %niter43.ncmp.1, label %._crit_edge85.i.i.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !2

._crit_edge85.i.i.i.loopexit.unr-lcssa:           ; preds = %bb.w
  %i.cs = and i16 %i.cf, 1
  %lcmp.mod39.not = icmp eq i16 %i.cs, 0
  br i1 %lcmp.mod39.not, label %._crit_edge85.i.i.i, label %.epil.preheader37

.epil.preheader37:                                ; preds = %._crit_edge85.i.i.i.loopexit.unr-lcssa, %.lr.ph84.i.i.i
  %.16782.i.i.i.epil.init = phi i32 [ %.06688.i.i.i, %.lr.ph84.i.i.i ], [ %.2.i.i.i.1, %._crit_edge85.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod41 = trunc i16 %i.cf to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.ct = zext nneg i32 %.16782.i.i.i.epil.init to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  store i8 %i.ch, ptr %i.cv, align 2, !tbaa !22
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader37
  %.167.pn.i.i.i.epil = phi i32 [ %.16782.i.i.i.epil.init, %.epil.preheader37 ], [ %.2.i.i.i.epil, %bb.x ]
  %.pn.i.i.i.epil = add nuw nsw i32 %i.cd, %.167.pn.i.i.i.epil
  %.2.i.i.i.epil = and i32 %.pn.i.i.i.epil, %i.ar ; 3 uses
  %i.cw = icmp ugt i32 %.2.i.i.i.epil, %.172.i.i.i.lcssa
  br i1 %i.cw, label %bb.x, label %._crit_edge85.i.i.i, !llvm.loop !1

._crit_edge85.i.i.i:                              ; preds = %._crit_edge85.i.i.i.loopexit.unr-lcssa, %bb.x, %.preheader77.i.i.i
  %.167.lcssa.i.i.i = phi i32 [ %.06688.i.i.i, %.preheader77.i.i.i ], [ %.2.i.i.i.1, %._crit_edge85.i.i.i.loopexit.unr-lcssa ], [ %.2.i.i.i.epil, %bb.x ] ; 2 uses
  %indvars.iv.next94.i.i.i = add nuw nsw i64 %indvars.iv93.i.i.i, 1 ; 2 uses
  %exitcond97.not.i.i.i = icmp eq i64 %indvars.iv.next94.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond97.not.i.i.i, label %._crit_edge89.i.i.i, label %.preheader77.i.i.i, !llvm.loop !3

._crit_edge89.i.i.i:                              ; preds = %._crit_edge85.i.i.i
  %.not.i.i.i = icmp eq i32 %.167.lcssa.i.i.i, 0
  br i1 %.not.i.i.i, label %.preheader.preheader.i.i.i, label %FSEv07_buildDTable.exit.thread.i.i

.preheader.preheader.i.i.i:                       ; preds = %._crit_edge89.i.i.i
  %wide.trip.count101.i.i.i = zext nneg i32 %i.aq to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %indvars.iv98.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ %indvars.iv.next99.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv98.i.i.i ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !22
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.da ; 2 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !16 ; 2 uses
  %i.dd = add i16 %i.dc, 1
  store i16 %i.dd, ptr %i.db, align 2, !tbaa !16
  %i.de = zext i16 %i.dc to i32                   ; 2 uses
  %i.df = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.de, i1 true)
  %i.dg = xor i32 %i.df, 31
  %i.dh = sub nsw i32 %i.al, %i.dg                ; 2 uses
  %i.di = trunc nsw i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 3
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !23
  %i.dk = and i32 %i.dh, 255
  %i.dl = shl i32 %i.de, %i.dk
  %i.dm = sub i32 %i.dl, %i.aq
  %i.dn = trunc i32 %i.dm to i16
  store i16 %i.dn, ptr %i.cx, align 2, !tbaa !24
  %indvars.iv.next99.i.i.i = add nuw nsw i64 %indvars.iv98.i.i.i, 1 ; 2 uses
  %exitcond102.not.i.i.i = icmp eq i64 %indvars.iv.next99.i.i.i, %wide.trip.count101.i.i.i
  br i1 %exitcond102.not.i.i.i, label %bb.y, label %.preheader.i.i.i, !llvm.loop !4

FSEv07_buildDTable.exit.thread.i.i:               ; preds = %._crit_edge89.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.critedge.i.i

bb.y:                                             ; preds = %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.do = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 %i.aj ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i32 52, ptr %i.f, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.ai, %i.dp
  %i.dr = call i64 @FSEv07_readNCount(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.do, i64 noundef %i.dq) ; 2 uses
  %i.ds = icmp ult i64 %i.dr, -119
  br i1 %i.ds, label %bb.z, label %.critedge97.i.i

bb.z:                                             ; preds = %bb.y
  %i.dt = load i32, ptr %i.g, align 4, !tbaa !13  ; 2 uses
  %i.du = icmp ugt i32 %i.dt, 9
  br i1 %i.du, label %.critedge97.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.dw = load i32, ptr %i.f, align 4, !tbaa !13
  %i.dx = call i64 @FSEv07_buildDTable(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.e, i32 noundef %i.dw, i32 noundef %i.dt)
  %i.dy = icmp ult i64 %i.dx, -119
  br i1 %i.dy, label %bb.ab, label %.critedge97.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dr ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i32 35, ptr %i.i, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ai, %i.ea
  %i.ec = call i64 @FSEv07_readNCount(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.dz, i64 noundef %i.eb) ; 2 uses
  %i.ed = icmp ult i64 %i.ec, -119
  br i1 %i.ed, label %bb.ac, label %.critedge99.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ee = load i32, ptr %i.j, align 4, !tbaa !13  ; 2 uses
  %i.ef = icmp ugt i32 %i.ee, 9
  br i1 %i.ef, label %.critedge99.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = load i32, ptr %i.i, align 4, !tbaa !13
  %i.eh = call i64 @FSEv07_buildDTable(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef %i.eg, i32 noundef %i.ee)
  %i.ei = icmp ult i64 %i.eh, -119
  br i1 %i.ei, label %bb.ae, label %.critedge99.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ec ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12 ; 2 uses
  %i.el = icmp ugt ptr %i.ek, %i.ae
  br i1 %i.el, label %ZSTDv07_decompress_insertDictionary.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val103.i.i = load i32, ptr %i.ej, align 1     ; 3 uses
  store i32 %.val103.i.i, ptr %i.r, align 8, !tbaa !13
  %i.em = icmp ne i32 %.val103.i.i, 0
  %i.en = zext i32 %.val103.i.i to i64
  %.not93.i.i = icmp ugt i64 %i.ad, %i.en
  %or.cond.i.i = and i1 %i.em, %.not93.i.i
  br i1 %or.cond.i.i, label %bb.ag, label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %.val102.i.i = load i32, ptr %i.eo, align 1     ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 21564
  store i32 %.val102.i.i, ptr %i.ep, align 4, !tbaa !13
  %i.eq = icmp ne i32 %.val102.i.i, 0
  %i.er = zext i32 %.val102.i.i to i64
end_hunk_3
begin_hunk_4_@HUFv07_decodeStreamX4:bb.a
bb.f:                                             ; preds = %.lr.ph12
  %i.cx = lshr i32 %i.ct, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cu, i64 %i.cz ; 2 uses
  store ptr %i.da, ptr %i.c, align 8, !tbaa !33
  %i.db = and i32 %i.ct, 7
  br label %BITv07_reloadDStream.exit62

bb.g:                                             ; preds = %.lr.ph12
  %i.dc = icmp eq ptr %i.cu, %i.cv
  br i1 %i.dc, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dd = lshr i32 %i.ct, 3                       ; 2 uses
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = sub nsw i64 0, %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.cu, i64 %i.df
  %i.dh = icmp uge ptr %i.dg, %i.cv               ; 2 uses
  %i.di = ptrtoint ptr %i.cu to i64
  %i.dj = ptrtoint ptr %i.cv to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = trunc i64 %i.dk to i32
  %.024.i57 = select i1 %i.dh, i32 %i.dd, i32 %i.dl ; 2 uses
  %i.dm = zext i32 %.024.i57 to i64
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.cu, i64 %i.dn ; 2 uses
  store ptr %i.do, ptr %i.c, align 8, !tbaa !33
  %i.dp = shl i32 %.024.i57, 3
  %i.dq = sub i32 %i.ct, %i.dp
  br label %BITv07_reloadDStream.exit62

BITv07_reloadDStream.exit62:                      ; preds = %bb.f, %bb.h
  %.val30.i55.sink.in = phi ptr [ %i.da, %bb.f ], [ %i.do, %bb.h ]
  %.val9.i64 = phi i32 [ %i.db, %bb.f ], [ %i.dq, %bb.h ] ; 3 uses
  %.025.i56 = phi i1 [ true, %bb.f ], [ %i.dh, %bb.h ]
  store i32 %.val9.i64, ptr %i.a, align 8, !tbaa !35
  %.val30.i55.sink = load i64, ptr %.val30.i55.sink.in, align 1
  store i64 %.val30.i55.sink, ptr %1, align 8, !tbaa !34
  %i.dr = icmp ule ptr %.311, %i.ai
  %i.ds = select i1 %.025.i56, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.i, label %.preheader

.preheader:                                       ; preds = %BITv07_reloadDStream.exit62, %bb.i, %bb.g, %.preheader68
  %.3.lcssa = phi ptr [ %.0.lcssa, %.preheader68 ], [ %.311, %BITv07_reloadDStream.exit62 ], [ %i.eh, %bb.i ], [ %.311, %bb.g ] ; 3 uses
  %.val9.i6491 = phi i32 [ %.val9.i88, %.preheader68 ], [ %.val9.i64, %BITv07_reloadDStream.exit62 ], [ %i.ed, %bb.i ], [ %i.ct, %bb.g ] ; 2 uses
  %.not70 = icmp ugt ptr %.3.lcssa, %i.ai
  br i1 %.not70, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %BITv07_reloadDStream.exit62
  %.val.i63 = load i64, ptr %1, align 8, !tbaa !34
  %i.dt = and i32 %.val9.i64, 63
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl i64 %.val.i63, %i.du
  %i.dw = lshr i64 %i.dv, %i.g
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dw ; 3 uses
  %i.dy = load i16, ptr %i.dx, align 2
  store i16 %i.dy, ptr %.311, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !22
  %i.eb = zext i8 %i.ea to i32
  %i.ec = load i32, ptr %i.a, align 8, !tbaa !35
  %i.ed = add i32 %i.ec, %i.eb                    ; 4 uses
  store i32 %i.ed, ptr %i.a, align 8, !tbaa !35
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !23
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.311, i64 %i.eg ; 2 uses
  %i.ei = icmp ugt i32 %i.ed, 64
  br i1 %i.ei, label %.preheader, label %.lr.ph12, !llvm.loop !157

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.val9.i66 = phi i32 [ %i.et, %.lr.ph ], [ %.val9.i6491, %.preheader ]
  %.471 = phi ptr [ %i.ex, %.lr.ph ], [ %.3.lcssa, %.preheader ] ; 2 uses
  %.val.i65 = load i64, ptr %1, align 8, !tbaa !34
  %i.ej = and i32 %.val9.i66, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl i64 %.val.i65, %i.ek
  %i.em = lshr i64 %i.el, %i.g
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.em ; 3 uses
  %i.eo = load i16, ptr %i.en, align 2
  store i16 %i.eo, ptr %.471, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !22
  %i.er = zext i8 %i.eq to i32
  %i.es = load i32, ptr %i.a, align 8, !tbaa !35
  %i.et = add i32 %i.es, %i.er                    ; 3 uses
  store i32 %i.et, ptr %i.a, align 8, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !23
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %.471, i64 %i.ew ; 3 uses
  %.not = icmp ugt ptr %i.ex, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.val15.i = phi i32 [ %.val9.i6491, %.preheader ], [ %i.et, %.lr.ph ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader ], [ %i.ex, %.lr.ph ] ; 2 uses
  %i.ey = icmp ult ptr %.4.lcssa, %2
  br i1 %i.ey, label %bb.j, label %HUFv07_decodeLastSymbolX4.exit

bb.j:                                             ; preds = %._crit_edge
  %.val.i67 = load i64, ptr %1, align 8, !tbaa !34
  %i.ez = and i32 %.val15.i, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %.val.i67, %i.fa
  %i.fc = lshr i64 %i.fb, %i.g
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc ; 4 uses
  %i.fe = load i8, ptr %i.fd, align 2
  store i8 %i.fe, ptr %.4.lcssa, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !23
  %i.fh = icmp eq i8 %i.fg, 1
  br i1 %i.fh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !22
  %i.fk = zext i8 %i.fj to i32
  %i.fl = load i32, ptr %i.a, align 8, !tbaa !35
  %i.fm = add i32 %i.fl, %i.fk
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.fn = load i32, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 64
  br i1 %i.fo, label %bb.m, label %HUFv07_decodeLastSymbolX4.exit

bb.m:                                             ; preds = %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !22
  %i.fr = zext i8 %i.fq to i32
  %i.fs = add nuw nsw i32 %i.fn, %i.fr
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.fs, i32 64)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %spec.store.select.sink.i = phi i32 [ %spec.store.select.i, %bb.m ], [ %i.fm, %bb.k ]
  store i32 %spec.store.select.sink.i, ptr %i.a, align 8
  br label %HUFv07_decodeLastSymbolX4.exit

HUFv07_decodeLastSymbolX4.exit:                   ; preds = %.sink.split.i, %bb.l, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ZSTDv07_defaultAllocFunction(ptr nofree readnone captures(none) %0, i64 noundef %1) #5 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %1) #28
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ZSTDv07_defaultFreeFunction(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1) #7 {
bb.a:
  tail call void @free(ptr noundef %1) #27
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -72, -119) i64 @ZSTDv07_buildSeqTable(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 4) %1, i32 noundef range(i32 28, 53) %2, i32 noundef range(i32 8, 10) %3, ptr noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 5, 7) %7, i32 noundef %8) unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 6 uses
  %i.b = alloca [256 x i16], align 16             ; 6 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [53 x i16], align 16              ; 7 uses
  store i32 %2, ptr %i.c, align 4, !tbaa !13
  switch i32 %1, label %default.unreachable [
    i32 1, label %bb.b
    i32 0, label %.new.a
    i32 2, label %bb.t
    i32 3, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %.not16 = icmp eq i64 %5, 0
  br i1 %.not16, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %4, align 1, !tbaa !17      ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = icmp samesign ult i32 %2, %i.g
  br i1 %i.h, label %bb.an, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %0, align 2, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.j, align 2, !tbaa !27
  store i16 0, ptr %i.i, align 2, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.f, ptr %i.k, align 2, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.l, align 1, !tbaa !23
  br label %bb.an

.new.a:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.n = shl nuw nsw i32 1, %7                    ; 5 uses
  %i.o = add nsw i32 %i.n, -1                     ; 4 uses
  %sext.i = shl nuw nsw i32 32768, %7
  %i.p = lshr exact i32 %sext.i, 16               ; 3 uses
  %9 = add nuw nsw i32 %2, 1                      ; 2 uses
  %wide.trip.count.i = zext nneg i32 %9 to i64    ; 3 uses
  %xtraiter75 = and i64 %wide.trip.count.i, 1
  %unroll_iter80 = and i64 %wide.trip.count.i, 126
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %.new.a
  %indvars.iv.i = phi i64 [ 0, %.new.a ], [ %indvars.iv.next.i.1, %bb.k ] ; 5 uses
  %.sroa.4.079.i = phi i16 [ 1, %.new.a ], [ %.sroa.4.2.i.1, %bb.k ] ; 2 uses
  %.07178.i = phi i32 [ %i.o, %.new.a ], [ %.172.i.1, %bb.k ] ; 3 uses
  %niter81 = phi i64 [ 0, %.new.a ], [ %niter81.next.1, %bb.k ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.i
  %i.r = load i16, ptr %i.q, align 2, !tbaa !16   ; 3 uses
  %i.s = icmp eq i16 %i.r, -1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = trunc i64 %indvars.iv.i to i8
  %i.u = add i32 %.07178.i, -1
  %i.v = zext i32 %.07178.i to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.t, ptr %i.x, align 2, !tbaa !22
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = sext i16 %i.r to i32
  %.not76.i = icmp sgt i32 %i.p, %i.y
  %spec.select.i = select i1 %.not76.i, i16 %.sroa.4.079.i, i16 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i16 [ 1, %bb.f ], [ %i.r, %bb.g ]
  %.172.i = phi i32 [ %i.u, %bb.f ], [ %.07178.i, %bb.g ] ; 3 uses
  %.sroa.4.2.i = phi i16 [ %.sroa.4.079.i, %bb.f ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  store i16 %.sink.i, ptr %i.z, align 4, !tbaa !16
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next.i
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !16 ; 3 uses
  %i.ac = icmp eq i16 %i.ab, -1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = sext i16 %i.ab to i32
  %.not76.i.1 = icmp sgt i32 %i.p, %i.ad
  %spec.select.i.1 = select i1 %.not76.i.1, i16 %.sroa.4.2.i, i16 0
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = trunc i64 %indvars.iv.next.i to i8
  %i.af = add i32 %.172.i, -1
  %i.ag = zext i32 %.172.i to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %i.ae, ptr %i.ai, align 2, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i.1 = phi i16 [ 1, %bb.j ], [ %i.ab, %bb.i ]
  %.172.i.1 = phi i32 [ %i.af, %bb.j ], [ %.172.i, %bb.i ] ; 5 uses
  %.sroa.4.2.i.1 = phi i16 [ %.sroa.4.2.i, %bb.j ], [ %spec.select.i.1, %bb.i ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i
  store i16 %.sink.i.1, ptr %i.aj, align 2, !tbaa !16
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 4 uses
  %niter81.next.1 = add nuw nsw i64 %niter81, 2   ; 2 uses
  %niter81.ncmp.1 = icmp eq i64 %niter81.next.1, %unroll_iter80
  br i1 %niter81.ncmp.1, label %.preheader77.lr.ph.i.unr-lcssa, label %bb.e, !llvm.loop !0

.preheader77.lr.ph.i.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.preheader77.lr.ph.i, label %.epil.preheader74

.epil.preheader74:                                ; preds = %.preheader77.lr.ph.i.unr-lcssa
  %lcmp.mod79 = trunc i32 %9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next.i.1
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !16 ; 3 uses
  %i.am = icmp eq i16 %i.al, -1
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.epil.preheader74
  %i.an = sext i16 %i.al to i32
  %.not76.i.epil = icmp sgt i32 %i.p, %i.an
  %spec.select.i.epil = select i1 %.not76.i.epil, i16 %.sroa.4.2.i.1, i16 0
  br label %.preheader77.lr.ph.i.epilog-lcssa

bb.m:                                             ; preds = %.epil.preheader74
  %i.ao = trunc i64 %indvars.iv.next.i.1 to i8
  %i.ap = add i32 %.172.i.1, -1
  %i.aq = zext i32 %.172.i.1 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.ao, ptr %i.as, align 2, !tbaa !22
  br label %.preheader77.lr.ph.i.epilog-lcssa

.preheader77.lr.ph.i.epilog-lcssa:                ; preds = %bb.m, %bb.l
  %.sink.i.epil = phi i16 [ 1, %bb.m ], [ %i.al, %bb.l ]
  %.172.i.epil = phi i32 [ %i.ap, %bb.m ], [ %.172.i.1, %bb.l ]
  %.sroa.4.2.i.epil = phi i16 [ %.sroa.4.2.i.1, %bb.m ], [ %spec.select.i.epil, %bb.l ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  store i16 %.sink.i.epil, ptr %i.at, align 2, !tbaa !16
  br label %.preheader77.lr.ph.i

.preheader77.lr.ph.i:                             ; preds = %.preheader77.lr.ph.i.unr-lcssa, %.preheader77.lr.ph.i.epilog-lcssa
  %.172.i.lcssa = phi i32 [ %.172.i.1, %.preheader77.lr.ph.i.unr-lcssa ], [ %.172.i.epil, %.preheader77.lr.ph.i.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i.lcssa = phi i16 [ %.sroa.4.2.i.1, %.preheader77.lr.ph.i.unr-lcssa ], [ %.sroa.4.2.i.epil, %.preheader77.lr.ph.i.epilog-lcssa ]
  %i.au = trunc nuw nsw i32 %7 to i16
  store i16 %i.au, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.i.lcssa, ptr %.sroa.4.0..sroa_idx.i, align 2
  %i.av = lshr exact i32 %i.n, 1
  %i.aw = lshr exact i32 %i.n, 3
  %i.ax = add nuw nsw i32 %i.aw, 3
  %i.ay = add nuw nsw i32 %i.ax, %i.av            ; 3 uses
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %._crit_edge85.i, %.preheader77.lr.ph.i
  %indvars.iv93.i = phi i64 [ 0, %.preheader77.lr.ph.i ], [ %indvars.iv.next94.i, %._crit_edge85.i ] ; 3 uses
  %.06688.i = phi i32 [ 0, %.preheader77.lr.ph.i ], [ %.167.lcssa.i, %._crit_edge85.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv93.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !16 ; 5 uses
  %i.bb = icmp sgt i16 %i.ba, 0
  br i1 %i.bb, label %.lr.ph84.i, label %._crit_edge85.i

.lr.ph84.i:                                       ; preds = %.preheader77.i
  %i.bc = trunc i64 %indvars.iv93.i to i8         ; 3 uses
  %i.bd = icmp eq i16 %i.ba, 1
  br i1 %i.bd, label %.epil.preheader82, label %.lr.ph84.i.new

.lr.ph84.i.new:                                   ; preds = %.lr.ph84.i
  %i.be = and i16 %i.ba, 32766
  %unroll_iter87 = zext nneg i16 %i.be to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph84.i.new
  %.16782.i = phi i32 [ %.06688.i, %.lr.ph84.i.new ], [ %.2.i.1, %bb.r ] ; 2 uses
  %niter88 = phi i32 [ 0, %.lr.ph84.i.new ], [ %niter88.next.1, %bb.r ]
  %i.bf = zext nneg i32 %.16782.i to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.bc, ptr %i.bh, align 2, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.167.pn.i = phi i32 [ %.16782.i, %bb.n ], [ %.2.i, %bb.o ]
  %.pn.i = add nuw nsw i32 %i.ay, %.167.pn.i
  %.2.i = and i32 %.pn.i, %i.o                    ; 4 uses
  %i.bi = icmp ugt i32 %.2.i, %.172.i.lcssa
  br i1 %i.bi, label %bb.o, label %bb.p, !llvm.loop !1

bb.p:                                             ; preds = %bb.o
  %i.bj = zext nneg i32 %.2.i to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 %i.bc, ptr %i.bl, align 2, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.167.pn.i.1 = phi i32 [ %.2.i, %bb.p ], [ %.2.i.1, %bb.q ]
  %.pn.i.1 = add nuw nsw i32 %i.ay, %.167.pn.i.1
  %.2.i.1 = and i32 %.pn.i.1, %i.o                ; 5 uses
  %i.bm = icmp ugt i32 %.2.i.1, %.172.i.lcssa
  br i1 %i.bm, label %bb.q, label %bb.r, !llvm.loop !1

bb.r:                                             ; preds = %bb.q
  %niter88.next.1 = add i32 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i32 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %._crit_edge85.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !2

._crit_edge85.i.loopexit.unr-lcssa:               ; preds = %bb.r
  %i.bn = and i16 %i.ba, 1
  %lcmp.mod84.not = icmp eq i16 %i.bn, 0
  br i1 %lcmp.mod84.not, label %._crit_edge85.i, label %.epil.preheader82

.epil.preheader82:                                ; preds = %._crit_edge85.i.loopexit.unr-lcssa, %.lr.ph84.i
  %.16782.i.epil.init = phi i32 [ %.06688.i, %.lr.ph84.i ], [ %.2.i.1, %._crit_edge85.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i16 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.bo = zext nneg i32 %.16782.i.epil.init to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i8 %i.bc, ptr %i.bq, align 2, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader82
  %.167.pn.i.epil = phi i32 [ %.16782.i.epil.init, %.epil.preheader82 ], [ %.2.i.epil, %bb.s ]
  %.pn.i.epil = add nuw nsw i32 %i.ay, %.167.pn.i.epil
  %.2.i.epil = and i32 %.pn.i.epil, %i.o          ; 3 uses
  %i.br = icmp ugt i32 %.2.i.epil, %.172.i.lcssa
  br i1 %i.br, label %bb.s, label %._crit_edge85.i, !llvm.loop !1

._crit_edge85.i:                                  ; preds = %._crit_edge85.i.loopexit.unr-lcssa, %bb.s, %.preheader77.i
  %.167.lcssa.i = phi i32 [ %.06688.i, %.preheader77.i ], [ %.2.i.1, %._crit_edge85.i.loopexit.unr-lcssa ], [ %.2.i.epil, %bb.s ] ; 2 uses
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next94.i, %wide.trip.count.i
  br i1 %exitcond97.not.i, label %._crit_edge89.i, label %.preheader77.i, !llvm.loop !3

._crit_edge89.i:                                  ; preds = %._crit_edge85.i
  %.not.i = icmp eq i32 %.167.lcssa.i, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %FSEv07_buildDTable.exit

.preheader.preheader.i:                           ; preds = %._crit_edge89.i
  %wide.trip.count101.i = zext nneg i32 %i.n to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv98.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next99.i, %.preheader.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv98.i ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !22
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bv ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !16 ; 2 uses
  %i.by = add i16 %i.bx, 1
  store i16 %i.by, ptr %i.bw, align 2, !tbaa !16
  %i.bz = zext i16 %i.bx to i32                   ; 2 uses
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true)
  %i.cb = xor i32 %i.ca, 31
  %i.cc = sub nsw i32 %7, %i.cb                   ; 2 uses
  %i.cd = trunc nsw i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !23
  %i.cf = and i32 %i.cc, 255
  %i.cg = shl i32 %i.bz, %i.cf
  %i.ch = sub i32 %i.cg, %i.n
  %i.ci = trunc i32 %i.ch to i16
  store i16 %i.ci, ptr %i.bs, align 2, !tbaa !24
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond102.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count101.i
  br i1 %exitcond102.not.i, label %FSEv07_buildDTable.exit, label %.preheader.i, !llvm.loop !4

FSEv07_buildDTable.exit:                          ; preds = %.preheader.i, %._crit_edge89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.an

bb.t:                                             ; preds = %bb.a
  %.not = icmp eq i32 %8, 0
  %. = select i1 %.not, i64 -20, i64 0
  br label %bb.an

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.cj = call i64 @FSEv07_readNCount(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %4, i64 noundef %5) ; 2 uses
  %i.ck = icmp ult i64 %i.cj, -119
  br i1 %i.ck, label %bb.v, label %bb.am

bb.v:                                             ; preds = %bb.u
  %i.cl = load i32, ptr %i.d, align 4, !tbaa !13  ; 5 uses
  %i.cm = icmp ugt i32 %i.cl, %3
  br i1 %i.cm, label %bb.am, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = load i32, ptr %i.c, align 4, !tbaa !13  ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.cp = shl nuw nsw i32 1, %i.cl                ; 5 uses
  %i.cq = add nsw i32 %i.cp, -1                   ; 5 uses
  %i.cr = icmp ugt i32 %i.cn, 255
  br i1 %i.cr, label %FSEv07_buildDTable.exit56, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %sext.i18 = shl nuw nsw i32 32768, %i.cl
  %i.cs = lshr exact i32 %sext.i18, 16            ; 3 uses
  %10 = add nuw nsw i32 %i.cn, 1                  ; 2 uses
  %wide.trip.count.i19 = zext nneg i32 %10 to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i19, 1
  %i.ct = icmp eq i32 %i.cn, 0
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i19, 510
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i.new
  %indvars.iv.i20 = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i28.1, %bb.ad ] ; 5 uses
  %.sroa.4.079.i21 = phi i16 [ 1, %.lr.ph.i.new ], [ %.sroa.4.2.i27.1, %bb.ad ] ; 2 uses
  %.07178.i22 = phi i32 [ %i.cq, %.lr.ph.i.new ], [ %.172.i26.1, %bb.ad ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.ad ]
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i20
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !16 ; 3 uses
  %i.cw = icmp eq i16 %i.cv, -1
  br i1 %i.cw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = trunc i64 %indvars.iv.i20 to i8
  %i.cy = add i32 %.07178.i22, -1
  %i.cz = zext i32 %.07178.i22 to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 %i.cx, ptr %i.db, align 2, !tbaa !22
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dc = sext i16 %i.cv to i32
  %.not76.i23 = icmp sgt i32 %i.cs, %i.dc
  %spec.select.i24 = select i1 %.not76.i23, i16 %.sroa.4.079.i21, i16 0
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink.i25 = phi i16 [ 1, %bb.y ], [ %i.cv, %bb.z ]
  %.172.i26 = phi i32 [ %i.cy, %bb.y ], [ %.07178.i22, %bb.z ] ; 3 uses
  %.sroa.4.2.i27 = phi i16 [ %.sroa.4.079.i21, %bb.y ], [ %spec.select.i24, %bb.z ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i20
  store i16 %.sink.i25, ptr %i.dd, align 4, !tbaa !16
  %indvars.iv.next.i28 = or disjoint i64 %indvars.iv.i20, 1 ; 3 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next.i28
  %i.df = load i16, ptr %i.de, align 2, !tbaa !16 ; 3 uses
  %i.dg = icmp eq i16 %i.df, -1
  br i1 %i.dg, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = sext i16 %i.df to i32
  %.not76.i23.1 = icmp sgt i32 %i.cs, %i.dh
  %spec.select.i24.1 = select i1 %.not76.i23.1, i16 %.sroa.4.2.i27, i16 0
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.di = trunc i64 %indvars.iv.next.i28 to i8
  %i.dj = add i32 %.172.i26, -1
  %i.dk = zext i32 %.172.i26 to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i8 %i.di, ptr %i.dm, align 2, !tbaa !22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink.i25.1 = phi i16 [ 1, %bb.ac ], [ %i.df, %bb.ab ]
  %.172.i26.1 = phi i32 [ %i.dj, %bb.ac ], [ %.172.i26, %bb.ab ] ; 3 uses
  %.sroa.4.2.i27.1 = phi i16 [ %.sroa.4.2.i27, %bb.ac ], [ %spec.select.i24.1, %bb.ab ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i28
  store i16 %.sink.i25.1, ptr %i.dn, align 2, !tbaa !16
  %indvars.iv.next.i28.1 = add nuw nsw i64 %indvars.iv.i20, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader77.lr.ph.i30.unr-lcssa, label %bb.x, !llvm.loop !0

.preheader77.lr.ph.i30.unr-lcssa:                 ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader77.lr.ph.i30, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader77.lr.ph.i30.unr-lcssa, %.lr.ph.i
  %indvars.iv.i20.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i28.1, %.preheader77.lr.ph.i30.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i21.epil.init = phi i16 [ 1, %.lr.ph.i ], [ %.sroa.4.2.i27.1, %.preheader77.lr.ph.i30.unr-lcssa ] ; 2 uses
  %.07178.i22.epil.init = phi i32 [ %i.cq, %.lr.ph.i ], [ %.172.i26.1, %.preheader77.lr.ph.i30.unr-lcssa ] ; 3 uses
  %lcmp.mod66 = trunc i32 %10 to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i20.epil.init
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !16 ; 3 uses
  %i.dq = icmp eq i16 %i.dp, -1
  br i1 %i.dq, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader
  %i.dr = sext i16 %i.dp to i32
  %.not76.i23.epil = icmp sgt i32 %i.cs, %i.dr
  %spec.select.i24.epil = select i1 %.not76.i23.epil, i16 %.sroa.4.079.i21.epil.init, i16 0
  br label %.preheader77.lr.ph.i30.epilog-lcssa

bb.af:                                            ; preds = %.epil.preheader
  %i.ds = trunc i64 %indvars.iv.i20.epil.init to i8
  %i.dt = add i32 %.07178.i22.epil.init, -1
  %i.du = zext i32 %.07178.i22.epil.init to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store i8 %i.ds, ptr %i.dw, align 2, !tbaa !22
  br label %.preheader77.lr.ph.i30.epilog-lcssa

.preheader77.lr.ph.i30.epilog-lcssa:              ; preds = %bb.af, %bb.ae
  %.sink.i25.epil = phi i16 [ 1, %bb.af ], [ %i.dp, %bb.ae ]
  %.172.i26.epil = phi i32 [ %i.dt, %bb.af ], [ %.07178.i22.epil.init, %bb.ae ]
  %.sroa.4.2.i27.epil = phi i16 [ %.sroa.4.079.i21.epil.init, %bb.af ], [ %spec.select.i24.epil, %bb.ae ]
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i20.epil.init
  store i16 %.sink.i25.epil, ptr %i.dx, align 2, !tbaa !16
  br label %.preheader77.lr.ph.i30

.preheader77.lr.ph.i30:                           ; preds = %.preheader77.lr.ph.i30.unr-lcssa, %.preheader77.lr.ph.i30.epilog-lcssa
  %.172.i26.lcssa = phi i32 [ %.172.i26.1, %.preheader77.lr.ph.i30.unr-lcssa ], [ %.172.i26.epil, %.preheader77.lr.ph.i30.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i27.lcssa = phi i16 [ %.sroa.4.2.i27.1, %.preheader77.lr.ph.i30.unr-lcssa ], [ %.sroa.4.2.i27.epil, %.preheader77.lr.ph.i30.epilog-lcssa ]
  %i.dy = trunc nuw nsw i32 %i.cl to i16
  store i16 %i.dy, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.i27.lcssa, ptr %.sroa.4.0..sroa_idx.i31, align 2
  %i.dz = lshr i32 %i.cp, 1
  %i.ea = lshr i32 %i.cp, 3
  %i.eb = add nuw nsw i32 %i.ea, 3
  %i.ec = add nuw nsw i32 %i.eb, %i.dz            ; 3 uses
  br label %.preheader77.i33

.preheader77.i33:                                 ; preds = %._crit_edge85.i36, %.preheader77.lr.ph.i30
  %indvars.iv93.i34 = phi i64 [ 0, %.preheader77.lr.ph.i30 ], [ %indvars.iv.next94.i38, %._crit_edge85.i36 ] ; 3 uses
  %.06688.i35 = phi i32 [ 0, %.preheader77.lr.ph.i30 ], [ %.167.lcssa.i37, %._crit_edge85.i36 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv93.i34
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !16 ; 5 uses
  %i.ef = icmp sgt i16 %i.ee, 0
  br i1 %i.ef, label %.lr.ph84.i49, label %._crit_edge85.i36

.lr.ph84.i49:                                     ; preds = %.preheader77.i33
  %i.eg = trunc i64 %indvars.iv93.i34 to i8       ; 3 uses
  %i.eh = icmp eq i16 %i.ee, 1
  br i1 %i.eh, label %.epil.preheader67, label %.lr.ph84.i49.new

.lr.ph84.i49.new:                                 ; preds = %.lr.ph84.i49
  %i.ei = and i16 %i.ee, 32766
  %unroll_iter72 = zext nneg i16 %i.ei to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %.lr.ph84.i49.new
  %.16782.i51 = phi i32 [ %.06688.i35, %.lr.ph84.i49.new ], [ %.2.i54.1, %bb.ak ] ; 2 uses
  %niter73 = phi i32 [ 0, %.lr.ph84.i49.new ], [ %niter73.next.1, %bb.ak ]
  %i.ej = zext nneg i32 %.16782.i51 to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  store i8 %i.eg, ptr %i.el, align 2, !tbaa !22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.167.pn.i52 = phi i32 [ %.16782.i51, %bb.ag ], [ %.2.i54, %bb.ah ]
  %.pn.i53 = add nuw nsw i32 %i.ec, %.167.pn.i52
  %.2.i54 = and i32 %.pn.i53, %i.cq               ; 4 uses
  %i.em = icmp ugt i32 %.2.i54, %.172.i26.lcssa
  br i1 %i.em, label %bb.ah, label %bb.ai, !llvm.loop !1

bb.ai:                                            ; preds = %bb.ah
  %i.en = zext nneg i32 %.2.i54 to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  store i8 %i.eg, ptr %i.ep, align 2, !tbaa !22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.167.pn.i52.1 = phi i32 [ %.2.i54, %bb.ai ], [ %.2.i54.1, %bb.aj ]
  %.pn.i53.1 = add nuw nsw i32 %i.ec, %.167.pn.i52.1
  %.2.i54.1 = and i32 %.pn.i53.1, %i.cq           ; 5 uses
  %i.eq = icmp ugt i32 %.2.i54.1, %.172.i26.lcssa
  br i1 %i.eq, label %bb.aj, label %bb.ak, !llvm.loop !1

bb.ak:                                            ; preds = %bb.aj
  %niter73.next.1 = add i32 %niter73, 2           ; 2 uses
  %niter73.ncmp.1 = icmp eq i32 %niter73.next.1, %unroll_iter72
  br i1 %niter73.ncmp.1, label %._crit_edge85.i36.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !2

._crit_edge85.i36.loopexit.unr-lcssa:             ; preds = %bb.ak
  %i.er = and i16 %i.ee, 1
  %lcmp.mod69.not = icmp eq i16 %i.er, 0
  br i1 %lcmp.mod69.not, label %._crit_edge85.i36, label %.epil.preheader67

.epil.preheader67:                                ; preds = %._crit_edge85.i36.loopexit.unr-lcssa, %.lr.ph84.i49
  %.16782.i51.epil.init = phi i32 [ %.06688.i35, %.lr.ph84.i49 ], [ %.2.i54.1, %._crit_edge85.i36.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i16 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.es = zext nneg i32 %.16782.i51.epil.init to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  store i8 %i.eg, ptr %i.eu, align 2, !tbaa !22
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader67
  %.167.pn.i52.epil = phi i32 [ %.16782.i51.epil.init, %.epil.preheader67 ], [ %.2.i54.epil, %bb.al ]
  %.pn.i53.epil = add nuw nsw i32 %i.ec, %.167.pn.i52.epil
  %.2.i54.epil = and i32 %.pn.i53.epil, %i.cq     ; 3 uses
  %i.ev = icmp ugt i32 %.2.i54.epil, %.172.i26.lcssa
  br i1 %i.ev, label %bb.al, label %._crit_edge85.i36, !llvm.loop !1

._crit_edge85.i36:                                ; preds = %._crit_edge85.i36.loopexit.unr-lcssa, %bb.al, %.preheader77.i33
  %.167.lcssa.i37 = phi i32 [ %.06688.i35, %.preheader77.i33 ], [ %.2.i54.1, %._crit_edge85.i36.loopexit.unr-lcssa ], [ %.2.i54.epil, %bb.al ] ; 2 uses
  %indvars.iv.next94.i38 = add nuw nsw i64 %indvars.iv93.i34, 1 ; 2 uses
  %exitcond97.not.i39 = icmp eq i64 %indvars.iv.next94.i38, %wide.trip.count.i19
  br i1 %exitcond97.not.i39, label %._crit_edge89.i40, label %.preheader77.i33, !llvm.loop !3

._crit_edge89.i40:                                ; preds = %._crit_edge85.i36
  %.not.i41 = icmp eq i32 %.167.lcssa.i37, 0
  br i1 %.not.i41, label %.preheader.preheader.i43, label %FSEv07_buildDTable.exit56

.preheader.preheader.i43:                         ; preds = %._crit_edge89.i40
  %wide.trip.count101.i44 = zext nneg i32 %i.cp to i64
  br label %.preheader.i45

.preheader.i45:                                   ; preds = %.preheader.i45, %.preheader.preheader.i43
  %indvars.iv98.i46 = phi i64 [ 0, %.preheader.preheader.i43 ], [ %indvars.iv.next99.i47, %.preheader.i45 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv98.i46 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !22
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ez ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !16 ; 2 uses
  %i.fc = add i16 %i.fb, 1
  store i16 %i.fc, ptr %i.fa, align 2, !tbaa !16
  %i.fd = zext i16 %i.fb to i32                   ; 2 uses
  %i.fe = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fd, i1 true)
  %i.ff = xor i32 %i.fe, 31
  %i.fg = sub nsw i32 %i.cl, %i.ff                ; 2 uses
  %i.fh = trunc nsw i32 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 3
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !23
  %i.fj = and i32 %i.fg, 255
  %i.fk = shl i32 %i.fd, %i.fj
  %i.fl = sub i32 %i.fk, %i.cp
  %i.fm = trunc i32 %i.fl to i16
  store i16 %i.fm, ptr %i.ew, align 2, !tbaa !24
  %indvars.iv.next99.i47 = add nuw nsw i64 %indvars.iv98.i46, 1 ; 2 uses
  %exitcond102.not.i48 = icmp eq i64 %indvars.iv.next99.i47, %wide.trip.count101.i44
  br i1 %exitcond102.not.i48, label %FSEv07_buildDTable.exit56, label %.preheader.i45, !llvm.loop !4

FSEv07_buildDTable.exit56:                        ; preds = %.preheader.i45, %bb.w, %._crit_edge89.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.am

bb.am:                                            ; preds = %bb.v, %bb.u, %FSEv07_buildDTable.exit56
  %.0 = phi i64 [ %i.cj, %FSEv07_buildDTable.exit56 ], [ -20, %bb.u ], [ -20, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.an

bb.an:                                            ; preds = %bb.t, %bb.c, %bb.b, %bb.am, %FSEv07_buildDTable.exit, %bb.d
  %.1 = phi i64 [ %.0, %bb.am ], [ -72, %bb.b ], [ 1, %bb.d ], [ %., %bb.t ], [ 0, %FSEv07_buildDTable.exit ], [ -20, %bb.c ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare i32 @ZSTD_XXH64_reset(ptr noundef captures(address), i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = distinct !{!3, !14}
!4 = distinct !{!4, !14}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"short", !9, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!"branch_weights", i32 4, i32 12}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"", !15, i64 0, !9, i64 2, !9, i64 3}
!22 = !{!21, !9, i64 2}
!23 = !{!21, !9, i64 3}
!24 = !{!21, !15, i64 0}
!25 = !{!"", !15, i64 0, !15, i64 2}
!26 = !{!25, !15, i64 0}
!27 = !{!25, !15, i64 2}
!28 = !{!"long", !9, i64 0}
!29 = !{!"any pointer", !9, i64 0}
!30 = !{!"p1 omnipotent char", !29, i64 0}
!31 = !{!"", !28, i64 0, !10, i64 8, !30, i64 16, !30, i64 24}
!32 = !{!31, !30, i64 24}
!33 = !{!31, !30, i64 16}
!34 = !{!31, !28, i64 0}
!35 = !{!31, !10, i64 8}
!36 = !{!"", !9, i64 0, !9, i64 1}
!37 = !{!36, !9, i64 0}
!38 = !{!36, !9, i64 1}
!39 = !{!30, !30, i64 0}
!40 = !{!"", !10, i64 0, !10, i64 4}
!41 = !{!40, !10, i64 0}
!42 = !{!40, !10, i64 4}
!43 = !{!"long long", !9, i64 0}
!44 = !{!"", !43, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!45 = !{!"XXH64_state_s", !28, i64 0, !9, i64 8, !9, i64 40, !10, i64 72, !10, i64 76, !28, i64 80}
!46 = !{!"", !29, i64 0, !29, i64 8, !29, i64 16}
!47 = !{!"ZSTDv07_DCtx_s", !9, i64 0, !9, i64 2052, !9, i64 3080, !9, i64 5132, !29, i64 21520, !29, i64 21528, !29, i64 21536, !29, i64 21544, !28, i64 21552, !9, i64 21560, !44, i64 21576, !10, i64 21600, !10, i64 21604, !10, i64 21608, !10, i64 21612, !45, i64 21616, !28, i64 21704, !10, i64 21712, !30, i64 21720, !46, i64 21728, !28, i64 21752, !9, i64 21760, !9, i64 152840}
!48 = !{!47, !28, i64 21552}
!49 = !{!47, !10, i64 21604}
!50 = !{!47, !10, i64 21612}
!51 = !{!47, !10, i64 21608}
!52 = !{!47, !10, i64 21712}
!53 = !{!46, !29, i64 0}
!54 = !{!29, !29, i64 0}
!55 = !{i64 0, i64 8, !54, i64 8, i64 8, !54, i64 16, i64 8, !54}
!56 = !{!46, !29, i64 16}
!57 = !{!47, !29, i64 21736}
!58 = !{!47, !29, i64 21744}
!59 = !{!28, !28, i64 0}
!60 = !{!47, !29, i64 21520}
!61 = !{!47, !29, i64 21544}
!62 = !{!47, !29, i64 21528}
!63 = !{!47, !29, i64 21536}
!64 = !{!47, !10, i64 21588}
!65 = !{!47, !10, i64 21592}
!66 = !{ptr @ZSTDv07_freeDCtx}
!67 = !{!"p1 _ZTS14ZSTDv07_DCtx_s", !29, i64 0}
!68 = !{!"ZSTDv07_DDict_s", !29, i64 0, !28, i64 8, !67, i64 16}
!69 = !{!68, !29, i64 0}
!70 = !{!68, !67, i64 16}
!71 = !{!"ZBUFFv07_DCtx_s", !67, i64 0, !44, i64 8, !10, i64 32, !30, i64 40, !28, i64 48, !28, i64 56, !30, i64 64, !28, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !9, i64 104, !28, i64 128, !46, i64 136}
!72 = !{!71, !67, i64 0}
!73 = !{!71, !10, i64 32}
!74 = !{!71, !30, i64 40}
!75 = !{!71, !29, i64 144}
!76 = !{!71, !29, i64 152}
!77 = !{!71, !30, i64 64}
!78 = !{!71, !28, i64 56}
!79 = !{!71, !28, i64 128}
!80 = distinct !{!80, !14}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !14}
!83 = distinct !{!83, !14}
!84 = distinct !{!84, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !14, !19, !20}
!88 = distinct !{!88, !14, !19}
!89 = distinct !{!89, !14}
!90 = !{!85}
!91 = !{!86}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14, !19, !20}
!96 = distinct !{!96, !14, !19, !20}
!97 = distinct !{!97, !14, !20, !19}
!98 = distinct !{!98, !14}
!99 = distinct !{!99, !14}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !117}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = distinct !{!105, !14, !19, !20}
!106 = distinct !{!106, !117}
!107 = distinct !{!107, !14, !19}
!108 = distinct !{!108, !14}
!109 = distinct !{!109, !14, !19, !20}
!110 = distinct !{!110, !14, !20, !19}
!111 = distinct !{!111, !14, !19, !20}
!112 = distinct !{!112, !14, !19}
!113 = distinct !{!113, !14}
!114 = distinct !{!114, !14, !19, !20}
!115 = distinct !{!115, !14, !20, !19}
!116 = distinct !{!116, !14}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = distinct !{!118, !14}
!119 = !{!44, !43, i64 0}
!120 = !{!44, !10, i64 8}
!121 = !{!44, !10, i64 12}
!122 = distinct !{!122, !"ZSTDv07_decodeSequence"}
!123 = distinct !{!123, !122, !"ZSTDv07_decodeSequence: argument 0"}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14, !19, !20}
!126 = distinct !{!126, !14, !19, !20}
!127 = distinct !{!127, !14, !19}
!128 = distinct !{!128, !14, !19, !20}
!129 = distinct !{!129, !14, !19, !20}
!130 = distinct !{!130, !14, !19}
!131 = distinct !{!131, !14}
!132 = !{!47, !30, i64 21720}
!133 = !{!47, !28, i64 21752}
!134 = !{!"", !28, i64 0, !29, i64 8}
!135 = !{!134, !28, i64 0}
!136 = !{!134, !29, i64 8}
!137 = !{!123}
!138 = !{!"branch_weights", i32 8, i32 24}
!139 = !{!43, !43, i64 0}
!140 = !{!47, !28, i64 21704}
!141 = !{!47, !10, i64 21600}
!142 = !{!68, !28, i64 8}
!143 = !{ptr @ZSTDv07_createDCtx_advanced}
!144 = !{ptr @ZBUFFv07_freeDCtx}
!145 = distinct !{!145, !14}
!146 = !{!71, !28, i64 88}
!147 = !{!71, !28, i64 80}
!148 = !{!71, !10, i64 16}
!149 = !{!71, !28, i64 96}
!150 = !{!71, !28, i64 48}
!151 = !{!71, !29, i64 136}
!152 = !{!71, !28, i64 72}
!153 = distinct !{!153, !14}
!154 = distinct !{!154, !14}
!155 = distinct !{!155, !14}
!156 = distinct !{!156, !14}
!157 = distinct !{!157, !14}
end_hunk_4
