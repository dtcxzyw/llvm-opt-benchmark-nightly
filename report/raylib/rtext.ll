Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFont:bb.a
  %.not161.i = icmp sgt i32 %i.bs, 0
  br i1 %.not161.i, label %.preheader.i.preheader, label %.thread.preheader.i

.preheader.i.preheader:                           ; preds = %bb.p, %.thread215.i
  %.0112163.i.ph = phi ptr [ %.0112160216.i, %.thread215.i ], [ %.0112160.i, %bb.p ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.w
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.w ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %.0112163.i = phi ptr [ %.0112.i, %bb.w ], [ %.0112163.i.ph, %.preheader.i.preheader ] ; 7 uses
  br label %bb.q

.thread.preheader.i:                              ; preds = %bb.w, %bb.p
  %.0112.lcssa.i = phi ptr [ %.0112160.i, %bb.p ], [ %.0112.i, %bb.w ] ; 7 uses
  br label %.thread.i

bb.q:                                             ; preds = %bb.v, %.preheader.i
  %indvars.iv.i129.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i130.i.4, %bb.v ] ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0112163.i, i64 %indvars.iv.i129.i
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !23
  %i.bw = icmp eq i8 %i.bv, 10
  br i1 %i.bw, label %.split.loop.exit.i133.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i130.i = add nuw nsw i64 %indvars.iv.i129.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0112163.i, i64 %indvars.iv.next.i130.i
  %i.by = load i8, ptr %i.bx, align 1, !noalias !23
  %i.bz = icmp eq i8 %i.by, 10
  br i1 %i.bz, label %.split.loop.exit.i133.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i130.i.1 = add nuw nsw i64 %indvars.iv.i129.i, 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0112163.i, i64 %indvars.iv.next.i130.i.1
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !23
  %i.cc = icmp eq i8 %i.cb, 10
  br i1 %i.cc, label %.split.loop.exit.i133.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i130.i.2 = add nuw nsw i64 %indvars.iv.i129.i, 3 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0112163.i, i64 %indvars.iv.next.i130.i.2
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !23
  %i.cf = icmp eq i8 %i.ce, 10
  br i1 %i.cf, label %.split.loop.exit.i133.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i130.i.3 = add nuw nsw i64 %indvars.iv.i129.i, 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0112163.i, i64 %indvars.iv.next.i130.i.3
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !23
  %i.ci = icmp eq i8 %i.ch, 10
  br i1 %i.ci, label %.split.loop.exit.i133.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i130.i.4 = add nuw nsw i64 %indvars.iv.i129.i, 5 ; 2 uses
  %exitcond.not.i131.i.4 = icmp eq i64 %indvars.iv.next.i130.i.4, 255
  br i1 %exitcond.not.i131.i.4, label %GetLine.exit134.i, label %bb.q

.split.loop.exit.i133.i:                          ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %indvars.iv.i129.i.lcssa = phi i64 [ %indvars.iv.i129.i, %bb.q ], [ %indvars.iv.next.i130.i, %bb.r ], [ %indvars.iv.next.i130.i.1, %bb.s ], [ %indvars.iv.next.i130.i.2, %bb.t ], [ %indvars.iv.next.i130.i.3, %bb.u ]
  %i.cj = trunc nuw nsw i64 %indvars.iv.i129.i.lcssa to i32
  br label %GetLine.exit134.i

GetLine.exit134.i:                                ; preds = %bb.v, %.split.loop.exit.i133.i
  %.0.lcssa.i132.i = phi i32 [ %i.cj, %.split.loop.exit.i133.i ], [ 255, %bb.v ] ; 2 uses
  %i.ck = zext nneg i32 %.0.lcssa.i132.i to i64   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %.0112163.i, i64 %i.ck, i1 false), !noalias !23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck
  store i8 0, ptr %i.cl, align 1, !noalias !23
  %i.cm = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.81) #41, !noalias !23
  %i.cn = getelementptr inbounds nuw [129 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.co = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.cm, ptr noundef nonnull @.str.82, ptr noundef nonnull %i.cn) #39, !noalias !23
  %i.cp = icmp slt i32 %i.co, 1
  br i1 %i.cp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %GetLine.exit134.i
  %i.cq = sext i32 %.0.lcssa.i132.i to i64
  %i.cr = getelementptr i8, ptr %.0112163.i, i64 %i.cq
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.0112.i = getelementptr i8, ptr %i.cr, i64 1   ; 2 uses
  %i.cs = load i32, ptr %i.f, align 4, !noalias !23
  %i.ct = sext i32 %i.cs to i64
  %.not.i7 = icmp slt i64 %indvars.iv.next.i, %i.ct
  br i1 %.not.i7, label %.preheader.i, label %.thread.preheader.i

bb.x:                                             ; preds = %GetLine.exit134.i
  call void @UnloadFileText(ptr noundef nonnull %i.y) #39, !noalias !23
  br label %LoadBMFont.exit

.thread.i:                                        ; preds = %bb.y, %.thread.preheader.i
  %indvars.iv.i135.i = phi i64 [ 0, %.thread.preheader.i ], [ %indvars.iv.next.i136.i.4, %bb.y ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0112.lcssa.i, i64 %indvars.iv.i135.i
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !23
  %i.cw = icmp eq i8 %i.cv, 10
  br i1 %i.cw, label %.split.loop.exit.i139.i, label %.thread.i.1

.thread.i.1:                                      ; preds = %.thread.i
  %indvars.iv.next.i136.i = add nuw nsw i64 %indvars.iv.i135.i, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0112.lcssa.i, i64 %indvars.iv.next.i136.i
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !23
  %i.cz = icmp eq i8 %i.cy, 10
  br i1 %i.cz, label %.split.loop.exit.i139.i, label %.thread.i.2

.thread.i.2:                                      ; preds = %.thread.i.1
  %indvars.iv.next.i136.i.1 = add nuw nsw i64 %indvars.iv.i135.i, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0112.lcssa.i, i64 %indvars.iv.next.i136.i.1
  %i.db = load i8, ptr %i.da, align 1, !noalias !23
  %i.dc = icmp eq i8 %i.db, 10
  br i1 %i.dc, label %.split.loop.exit.i139.i, label %.thread.i.3

.thread.i.3:                                      ; preds = %.thread.i.2
  %indvars.iv.next.i136.i.2 = add nuw nsw i64 %indvars.iv.i135.i, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0112.lcssa.i, i64 %indvars.iv.next.i136.i.2
  %i.de = load i8, ptr %i.dd, align 1, !noalias !23
  %i.df = icmp eq i8 %i.de, 10
  br i1 %i.df, label %.split.loop.exit.i139.i, label %.thread.i.4

.thread.i.4:                                      ; preds = %.thread.i.3
  %indvars.iv.next.i136.i.3 = add nuw nsw i64 %indvars.iv.i135.i, 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0112.lcssa.i, i64 %indvars.iv.next.i136.i.3
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !23
  %i.di = icmp eq i8 %i.dh, 10
  br i1 %i.di, label %.split.loop.exit.i139.i, label %bb.y

bb.y:                                             ; preds = %.thread.i.4
  %indvars.iv.next.i136.i.4 = add nuw nsw i64 %indvars.iv.i135.i, 5 ; 2 uses
  %exitcond.not.i137.i.4 = icmp eq i64 %indvars.iv.next.i136.i.4, 255
  br i1 %exitcond.not.i137.i.4, label %GetLine.exit140.i, label %.thread.i

.split.loop.exit.i139.i:                          ; preds = %.thread.i.4, %.thread.i.3, %.thread.i.2, %.thread.i.1, %.thread.i
  %indvars.iv.i135.i.lcssa = phi i64 [ %indvars.iv.i135.i, %.thread.i ], [ %indvars.iv.next.i136.i, %.thread.i.1 ], [ %indvars.iv.next.i136.i.1, %.thread.i.2 ], [ %indvars.iv.next.i136.i.2, %.thread.i.3 ], [ %indvars.iv.next.i136.i.3, %.thread.i.4 ]
  %i.dj = trunc nuw nsw i64 %indvars.iv.i135.i.lcssa to i32
  br label %GetLine.exit140.i

GetLine.exit140.i:                                ; preds = %bb.y, %.split.loop.exit.i139.i
  %.0.lcssa.i138.i = phi i32 [ %i.dj, %.split.loop.exit.i139.i ], [ 255, %bb.y ] ; 2 uses
  %i.dk = zext nneg i32 %.0.lcssa.i138.i to i64   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %.0112.lcssa.i, i64 %i.dk, i1 false), !noalias !23
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dk
  store i8 0, ptr %i.dl, align 1, !noalias !23
  %i.dm = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.83) #41, !noalias !23
  %i.dn = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.dm, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.c) #39, !noalias !23
  %i.do = sext i32 %.0.lcssa.i138.i to i64
  %i.dp = getelementptr i8, ptr %.0112.lcssa.i, i64 %i.do
  %i.dq = icmp slt i32 %i.dn, 1
  br i1 %i.dq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %GetLine.exit140.i
  call void @UnloadFileText(ptr noundef nonnull %i.y) #39, !noalias !23
  br label %LoadBMFont.exit

bb.aa:                                            ; preds = %GetLine.exit140.i
  %i.dr = load i32, ptr %i.f, align 4, !noalias !23 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = call noalias ptr @calloc(i64 noundef %i.ds, i64 noundef 24) #40, !noalias !23 ; 6 uses
  %i.du = icmp sgt i32 %i.dr, 0
  br i1 %i.du, label %.lr.ph168.i, label %._crit_edge169.thread.i

._crit_edge169.thread.i:                          ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false), !noalias !23
  br label %.loopexit.i

._crit_edge169.i:                                 ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false), !noalias !23
  %i.dv = icmp sgt i32 %i.gl, 1
  br i1 %i.dv, label %.lr.ph173.i, label %.loopexit.i

.lr.ph168.i:                                      ; preds = %bb.aa, %bb.ac
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %bb.ac ], [ 0, %bb.aa ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %indvars.iv199.i ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !23
  %i.dx = call ptr @GetDirectoryPath(ptr noundef %1) #39, !noalias !23
  %i.dy = getelementptr inbounds nuw [129 x i8], ptr %i.g, i64 %indvars.iv199.i
  %i.dz = call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.85, ptr noundef %i.dx, ptr noundef nonnull %i.dy), !noalias !23
  call void @LoadImage(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %3, ptr noundef nonnull %i.dz) #39, !noalias !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !23
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 20 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !noalias !23
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph168.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !noalias !23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !noalias !23
  %i.eh = mul nsw i32 %i.eg, %i.ee                ; 3 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = call noalias ptr @calloc(i64 noundef %i.ei, i64 noundef 2) #40, !noalias !23 ; 11 uses
  %i.ek = icmp sgt i32 %i.eh, 0
  br i1 %i.ek, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.ab
  %i.el = shl nuw i32 %i.eh, 1                    ; 3 uses
  %i.em = load ptr, ptr %i.dw, align 8, !noalias !23 ; 9 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.el, i32 2) ; 3 uses
  %i.en = add nsw i32 %smax.i, -2
  %i.eo = lshr exact i32 %i.en, 1
  %i.ep = add nuw nsw i32 %i.eo, 1
  %wide.trip.count.i = zext nneg i32 %i.ep to i64 ; 6 uses
  %min.iters.check = icmp slt i32 %i.el, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eq = zext nneg i32 %smax.i to i64            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ej, i64 %i.eq
  %scevgep41 = getelementptr i8, ptr %i.em, i64 1
  %11 = add nsw i64 %i.eq, -2
  %12 = lshr exact i64 %11, 1
  %scevgep42 = getelementptr i8, ptr %scevgep41, i64 %12
  %bound0 = icmp ult ptr %i.ej, %scevgep42
  %bound1 = icmp ult ptr %i.em, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check43 = icmp slt i32 %i.el, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.er = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.es = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.et = shl nuw i64 %index, 1                   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.et
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %wide.load = load <8 x i8>, ptr %i.ex, align 1, !alias.scope !24, !noalias !23
  %wide.load44 = load <8 x i8>, ptr %i.ey, align 1, !alias.scope !24, !noalias !23
  %interleaved.vec = shufflevector <8 x i8> splat (i8 -1), <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.eu, align 1, !alias.scope !25, !noalias !23
  %interleaved.vec45 = shufflevector <8 x i8> splat (i8 -1), <8 x i8> %wide.load44, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec45, ptr %i.ew, align 1, !alias.scope !25, !noalias !23
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.er, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.fa = shl nuw nsw i64 %n.vec46, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 3 uses
  %i.fb = shl nuw i64 %index47, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.em, i64 %index47
  %wide.load48 = load <4 x i8>, ptr %i.fd, align 1, !alias.scope !24, !noalias !23
  %interleaved.vec49 = shufflevector <4 x i8> splat (i8 -1), <4 x i8> %wide.load48, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec49, ptr %i.fc, align 1, !alias.scope !25, !noalias !23
  %index.next50 = add nuw i64 %index47, 4         ; 2 uses
  %i.fe = icmp eq i64 %index.next50, %n.vec46
  br i1 %i.fe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %n.vec46, %wide.trip.count.i
  br i1 %cmp.n51, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv194.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv192.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.es, %vec.epilog.iter.check ], [ %i.fa, %vec.epilog.middle.block ] ; 2 uses
  %i.ff = zext nneg i32 %smax.i to i64
  %i.fg = add nsw i64 %i.ff, -2
  %i.fh = lshr exact i64 %i.fg, 1                 ; 2 uses
  %i.fi = add nuw i64 %i.fh, 1
  %i.fj = sub nsw i64 %i.fh, %indvars.iv194.i.ph
  %xtraiter = and i64 %i.fi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv194.i.prol = phi i64 [ %indvars.iv.next195.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv194.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv192.i.prol = phi i64 [ %indvars.iv.next193.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv192.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv192.i.prol ; 2 uses
  store i8 -1, ptr %i.fk, align 1, !noalias !23
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv194.i.prol
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !23
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  store i8 %i.fm, ptr %i.fn, align 1, !noalias !23
  %indvars.iv.next193.i.prol = add nuw nsw i64 %indvars.iv192.i.prol, 2 ; 2 uses
  %indvars.iv.next195.i.prol = add nuw nsw i64 %indvars.iv194.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !20

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv194.i.unr = phi i64 [ %indvars.iv194.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next195.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv192.i.unr = phi i64 [ %indvars.iv192.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next193.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.fo = icmp ult i64 %i.fj, 3
  br i1 %i.fo, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ab
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.dw) #39, !noalias !23
  store ptr %i.ej, ptr %i.dw, align 8, !noalias !23
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i32 1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !23
  store i32 2, ptr %i.ea, align 4, !noalias !23
  br label %bb.ac

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv194.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv192.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv192.i ; 2 uses
  store i8 -1, ptr %i.fp, align 1, !noalias !23
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv194.i
  %i.fr = load i8, ptr %i.fq, align 1, !noalias !23
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store i8 %i.fr, ptr %i.fs, align 1, !noalias !23
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv192.i ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  store i8 -1, ptr %i.fu, align 1, !noalias !23
  %i.fv = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv194.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !23
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 3
  store i8 %i.fx, ptr %i.fy, align 1, !noalias !23
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv192.i ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i8 -1, ptr %i.ga, align 1, !noalias !23
  %i.gb = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv194.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  %i.gd = load i8, ptr %i.gc, align 1, !noalias !23
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 5
  store i8 %i.gd, ptr %i.ge, align 1, !noalias !23
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv192.i ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 6
  store i8 -1, ptr %i.gg, align 1, !noalias !23
  %i.gh = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv194.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 3
  %i.gj = load i8, ptr %i.gi, align 1, !noalias !23
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 7
  store i8 %i.gj, ptr %i.gk, align 1, !noalias !23
  %indvars.iv.next193.i.3 = add nuw nsw i64 %indvars.iv192.i, 8
  %indvars.iv.next195.i.3 = add nuw nsw i64 %indvars.iv194.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next195.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !21

bb.ac:                                            ; preds = %._crit_edge.i, %.lr.ph168.i
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.gl = load i32, ptr %i.f, align 4, !noalias !23 ; 2 uses
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %indvars.iv.next200.i, %i.gm
  br i1 %i.gn, label %.lr.ph168.i, label %._crit_edge169.i

._crit_edge174.i:                                 ; preds = %.lr.ph173.i
  %i.go = icmp sgt i32 %.pr.i, 1
  br i1 %i.go, label %bb.ad, label %.loopexit.i

.lr.ph173.i:                                      ; preds = %._crit_edge169.i, %.lr.ph173.i
  %indvars.iv202.i = phi i64 [ %indvars.iv.next203.i, %.lr.ph173.i ], [ 1, %._crit_edge169.i ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %indvars.iv202.i
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.gp) #39, !noalias !23
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1 ; 2 uses
  %.pr.i = load i32, ptr %i.f, align 4, !noalias !23 ; 3 uses
  %i.gq = sext i32 %.pr.i to i64
  %i.gr = icmp slt i64 %indvars.iv.next203.i, %i.gq
  br i1 %i.gr, label %.lr.ph173.i, label %._crit_edge174.i

bb.ad:                                            ; preds = %._crit_edge174.i
  %i.gs = load i32, ptr %i.d, align 4, !noalias !23
  %i.gt = load i32, ptr %i.e, align 4, !noalias !23
  %i.gu = mul nsw i32 %i.gt, %.pr.i
  call void @ImageResizeCanvas(ptr noundef nonnull %4, i32 noundef %i.gs, i32 noundef %i.gu, i32 noundef 0, i32 noundef 0, i32 -16777216) #39, !noalias !23
  %i.gv = load i32, ptr %i.f, align 4, !noalias !23
  %i.gw = icmp sgt i32 %i.gv, 1
  br i1 %i.gw, label %.lr.ph178.i, label %.loopexit.i

.lr.ph178.i:                                      ; preds = %bb.ad, %.lr.ph178.i
  %indvars.iv205.i = phi i64 [ %indvars.iv.next206.i, %.lr.ph178.i ], [ 1, %bb.ad ] ; 3 uses
  %i.gx = load i32, ptr %i.d, align 4, !noalias !23
  %i.gy = sitofp i32 %i.gx to float
  %.sroa.525.8.vec.insert.i = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.gz = load i32, ptr %i.e, align 4, !noalias !23
  %i.ha = sitofp i32 %i.gz to float               ; 2 uses
  %.sroa.525.12.vec.insert.i = insertelement <2 x float> %.sroa.525.8.vec.insert.i, float %i.ha, i64 1 ; 2 uses
  %i.hb = trunc nuw nsw i64 %indvars.iv205.i to i32
  %i.hc = uitofp nneg i32 %i.hb to float
  %i.hd = fmul nnan float %i.hc, %i.ha
  %.sroa.020.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.hd, i64 1
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %indvars.iv205.i
  call void @ImageDraw(ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.Image) align 8 %i.he, <2 x float> zeroinitializer, <2 x float> %.sroa.525.12.vec.insert.i, <2 x float> %.sroa.020.4.vec.insert.i, <2 x float> %.sroa.525.12.vec.insert.i, i32 -1) #39, !noalias !23
  %indvars.iv.next206.i = add nuw nsw i64 %indvars.iv205.i, 1 ; 2 uses
  %i.hf = load i32, ptr %i.f, align 4, !noalias !23
  %i.hg = sext i32 %i.hf to i64
  %i.hh = icmp slt i64 %indvars.iv.next206.i, %i.hg
  br i1 %i.hh, label %.lr.ph178.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph178.i, %bb.ad, %._crit_edge174.i, %._crit_edge169.i, %._crit_edge169.thread.i
  call void @free(ptr noundef nonnull %i.dt) #39, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !23
  call void @LoadTextureFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Texture) align 4 %5, ptr noundef nonnull byval(%struct.Image) align 8 %4) #39, !noalias !23
  %.sroa.8.12.copyload = load i32, ptr %5, align 4 ; 2 uses
  %.sroa.10.12..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.10.sroa.0.0.copyload59 = load <4 x i32>, ptr %.sroa.10.12..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !23
  %i.hi = load i32, ptr %i.b, align 4, !noalias !23
end_hunk_0
