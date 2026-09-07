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
  %i.dv = icmp sgt i32 %i.gm, 1
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
  %i.er = add nsw i64 %i.eq, -2
  %i.es = lshr exact i64 %i.er, 1
  %scevgep42 = getelementptr i8, ptr %scevgep41, i64 %i.es
  %bound0 = icmp ult ptr %i.ej, %scevgep42
  %bound1 = icmp ult ptr %i.em, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check43 = icmp slt i32 %i.el, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.et = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.eu = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ev = shl nuw i64 %index, 1                   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ev
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %wide.load = load <8 x i8>, ptr %i.ez, align 1, !alias.scope !24, !noalias !23
  %wide.load44 = load <8 x i8>, ptr %i.fa, align 1, !alias.scope !24, !noalias !23
  %interleaved.vec = shufflevector <8 x i8> splat (i8 -1), <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ew, align 1, !alias.scope !25, !noalias !23
  %interleaved.vec45 = shufflevector <8 x i8> splat (i8 -1), <8 x i8> %wide.load44, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec45, ptr %i.ey, align 1, !alias.scope !25, !noalias !23
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.fc = shl nuw nsw i64 %n.vec46, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 3 uses
  %i.fd = shl nuw i64 %index47, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 %index47
  %wide.load48 = load <4 x i8>, ptr %i.ff, align 1, !alias.scope !24, !noalias !23
  %interleaved.vec49 = shufflevector <4 x i8> splat (i8 -1), <4 x i8> %wide.load48, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec49, ptr %i.fe, align 1, !alias.scope !25, !noalias !23
  %index.next50 = add nuw i64 %index47, 4         ; 2 uses
  %i.fg = icmp eq i64 %index.next50, %n.vec46
  br i1 %i.fg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %n.vec46, %wide.trip.count.i
  br i1 %cmp.n51, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv194.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv192.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.eu, %vec.epilog.iter.check ], [ %i.fc, %vec.epilog.middle.block ] ; 2 uses
  %i.fh = zext nneg i32 %smax.i to i64
  %i.fi = add nsw i64 %i.fh, -2
  %i.fj = lshr exact i64 %i.fi, 1                 ; 2 uses
  %11 = add nuw i64 %i.fj, 1
  %i.fk = sub nsw i64 %i.fj, %indvars.iv194.i.ph
  %xtraiter = and i64 %11, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv194.i.prol = phi i64 [ %indvars.iv.next195.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv194.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv192.i.prol = phi i64 [ %indvars.iv.next193.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv192.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv192.i.prol ; 2 uses
  store i8 -1, ptr %i.fl, align 1, !noalias !23
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv194.i.prol
  %i.fn = load i8, ptr %i.fm, align 1, !noalias !23
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store i8 %i.fn, ptr %i.fo, align 1, !noalias !23
  %indvars.iv.next193.i.prol = add nuw nsw i64 %indvars.iv192.i.prol, 2 ; 2 uses
  %indvars.iv.next195.i.prol = add nuw nsw i64 %indvars.iv194.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !20

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv194.i.unr = phi i64 [ %indvars.iv194.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next195.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv192.i.unr = phi i64 [ %indvars.iv192.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next193.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.fp = icmp ult i64 %i.fk, 3
  br i1 %i.fp, label %._crit_edge.i, label %vec.epilog.scalar.ph

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
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv192.i ; 2 uses
  store i8 -1, ptr %i.fq, align 1, !noalias !23
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv194.i
  %i.fs = load i8, ptr %i.fr, align 1, !noalias !23
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  store i8 %i.fs, ptr %i.ft, align 1, !noalias !23
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv192.i ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  store i8 -1, ptr %i.fv, align 1, !noalias !23
  %i.fw = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv194.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !noalias !23
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  store i8 %i.fy, ptr %i.fz, align 1, !noalias !23
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv192.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i8 -1, ptr %i.gb, align 1, !noalias !23
  %i.gc = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv194.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.ge = load i8, ptr %i.gd, align 1, !noalias !23
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 5
  store i8 %i.ge, ptr %i.gf, align 1, !noalias !23
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv192.i ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 6
  store i8 -1, ptr %i.gh, align 1, !noalias !23
  %i.gi = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv194.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 3
  %i.gk = load i8, ptr %i.gj, align 1, !noalias !23
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 7
  store i8 %i.gk, ptr %i.gl, align 1, !noalias !23
  %indvars.iv.next193.i.3 = add nuw nsw i64 %indvars.iv192.i, 8
  %indvars.iv.next195.i.3 = add nuw nsw i64 %indvars.iv194.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next195.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !21

bb.ac:                                            ; preds = %._crit_edge.i, %.lr.ph168.i
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.gm = load i32, ptr %i.f, align 4, !noalias !23 ; 2 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = icmp slt i64 %indvars.iv.next200.i, %i.gn
  br i1 %i.go, label %.lr.ph168.i, label %._crit_edge169.i

._crit_edge174.i:                                 ; preds = %.lr.ph173.i
  %i.gp = icmp sgt i32 %.pr.i, 1
  br i1 %i.gp, label %bb.ad, label %.loopexit.i

.lr.ph173.i:                                      ; preds = %._crit_edge169.i, %.lr.ph173.i
  %indvars.iv202.i = phi i64 [ %indvars.iv.next203.i, %.lr.ph173.i ], [ 1, %._crit_edge169.i ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %indvars.iv202.i
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.gq) #39, !noalias !23
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1 ; 2 uses
  %.pr.i = load i32, ptr %i.f, align 4, !noalias !23 ; 3 uses
  %i.gr = sext i32 %.pr.i to i64
  %i.gs = icmp slt i64 %indvars.iv.next203.i, %i.gr
  br i1 %i.gs, label %.lr.ph173.i, label %._crit_edge174.i

bb.ad:                                            ; preds = %._crit_edge174.i
  %i.gt = load i32, ptr %i.d, align 4, !noalias !23
  %i.gu = load i32, ptr %i.e, align 4, !noalias !23
  %i.gv = mul nsw i32 %i.gu, %.pr.i
  call void @ImageResizeCanvas(ptr noundef nonnull %4, i32 noundef %i.gt, i32 noundef %i.gv, i32 noundef 0, i32 noundef 0, i32 -16777216) #39, !noalias !23
  %i.gw = load i32, ptr %i.f, align 4, !noalias !23
  %i.gx = icmp sgt i32 %i.gw, 1
  br i1 %i.gx, label %.lr.ph178.i, label %.loopexit.i

.lr.ph178.i:                                      ; preds = %bb.ad, %.lr.ph178.i
  %indvars.iv205.i = phi i64 [ %indvars.iv.next206.i, %.lr.ph178.i ], [ 1, %bb.ad ] ; 3 uses
  %i.gy = load i32, ptr %i.d, align 4, !noalias !23
  %i.gz = sitofp i32 %i.gy to float
  %.sroa.525.8.vec.insert.i = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.ha = load i32, ptr %i.e, align 4, !noalias !23
  %i.hb = sitofp i32 %i.ha to float               ; 2 uses
  %.sroa.525.12.vec.insert.i = insertelement <2 x float> %.sroa.525.8.vec.insert.i, float %i.hb, i64 1 ; 2 uses
  %i.hc = trunc nuw nsw i64 %indvars.iv205.i to i32
  %i.hd = uitofp nneg i32 %i.hc to float
  %i.he = fmul nnan float %i.hd, %i.hb
  %.sroa.020.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.he, i64 1
  %i.hf = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %indvars.iv205.i
  call void @ImageDraw(ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.Image) align 8 %i.hf, <2 x float> zeroinitializer, <2 x float> %.sroa.525.12.vec.insert.i, <2 x float> %.sroa.020.4.vec.insert.i, <2 x float> %.sroa.525.12.vec.insert.i, i32 -1) #39, !noalias !23
  %indvars.iv.next206.i = add nuw nsw i64 %indvars.iv205.i, 1 ; 2 uses
  %i.hg = load i32, ptr %i.f, align 4, !noalias !23
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next206.i, %i.hh
  br i1 %i.hi, label %.lr.ph178.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph178.i, %bb.ad, %._crit_edge174.i, %._crit_edge169.i, %._crit_edge169.thread.i
  call void @free(ptr noundef nonnull %i.dt) #39, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !23
  call void @LoadTextureFromImage(ptr dead_on_unwind nonnull writable sret(%struct.Texture) align 4 %5, ptr noundef nonnull byval(%struct.Image) align 8 %4) #39, !noalias !23
  %.sroa.8.12.copyload = load i32, ptr %5, align 4 ; 2 uses
  %.sroa.10.12..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.10.sroa.0.0.copyload60 = load <4 x i32>, ptr %.sroa.10.12..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !23
  %i.hj = load i32, ptr %i.b, align 4, !noalias !23
  %i.hk = load i32, ptr %i.c, align 4, !noalias !23 ; 5 uses
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = mul nsw i64 %i.hl, 40
  %i.hn = call noalias ptr @malloc(i64 noundef %i.hm) #42, !noalias !23 ; 6 uses
  %i.ho = shl nsw i64 %i.hl, 4
  %i.hp = call noalias ptr @malloc(i64 noundef %i.ho) #42, !noalias !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #39, !noalias !23
  store i32 0, ptr %i.i, align 4, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #39, !noalias !23
  store i32 0, ptr %i.j, align 4, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #39, !noalias !23
  store i32 0, ptr %i.k, align 4, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #39, !noalias !23
  store i32 0, ptr %i.l, align 4, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #39, !noalias !23
  store i32 0, ptr %i.m, align 4, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #39, !noalias !23
  store i32 0, ptr %i.n, align 4, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #39, !noalias !23
  store i32 0, ptr %i.o, align 4, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #39, !noalias !23
  store i32 0, ptr %i.p, align 4, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #39, !noalias !23
  store i32 0, ptr %i.q, align 4, !noalias !23
  %i.hq = icmp sgt i32 %i.hk, 0                   ; 2 uses
  br i1 %i.hq, label %.lr.ph182.i, label %._crit_edge183.i

._crit_edge183.i:                                 ; preds = %bb.am, %.loopexit.i
  call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %4) #39, !noalias !23
  call void @UnloadFileText(ptr noundef nonnull %i.y) #39, !noalias !23
  %i.hr = icmp eq i32 %.sroa.8.12.copyload, 0
  br i1 %i.hr, label %bb.an, label %bb.ap

.lr.ph182.i:                                      ; preds = %.loopexit.i, %bb.am
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i, %bb.am ], [ 0, %.loopexit.i ] ; 5 uses
  %.pn180.i = phi ptr [ %i.im, %bb.am ], [ %i.dp, %.loopexit.i ]
  %.2.i = getelementptr i8, ptr %.pn180.i, i64 1  ; 7 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aj, %.lr.ph182.i
  %indvars.iv.i141.i = phi i64 [ 0, %.lr.ph182.i ], [ %indvars.iv.next.i142.i.4, %bb.aj ] ; 7 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i141.i
  %i.ht = load i8, ptr %i.hs, align 1, !noalias !23
  %i.hu = icmp eq i8 %i.ht, 10
  br i1 %i.hu, label %.split.loop.exit.i145.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next.i142.i = add nuw nsw i64 %indvars.iv.i141.i, 1 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.next.i142.i
  %i.hw = load i8, ptr %i.hv, align 1, !noalias !23
  %i.hx = icmp eq i8 %i.hw, 10
  br i1 %i.hx, label %.split.loop.exit.i145.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next.i142.i.1 = add nuw nsw i64 %indvars.iv.i141.i, 2 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.next.i142.i.1
  %i.hz = load i8, ptr %i.hy, align 1, !noalias !23
  %i.ia = icmp eq i8 %i.hz, 10
  br i1 %i.ia, label %.split.loop.exit.i145.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next.i142.i.2 = add nuw nsw i64 %indvars.iv.i141.i, 3 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.next.i142.i.2
  %i.ic = load i8, ptr %i.ib, align 1, !noalias !23
  %i.id = icmp eq i8 %i.ic, 10
  br i1 %i.id, label %.split.loop.exit.i145.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next.i142.i.3 = add nuw nsw i64 %indvars.iv.i141.i, 4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.next.i142.i.3
end_hunk_0
begin_hunk_1_@LoadFontData:bb.a
  %i.bqw = fmul float %i.bqv, 5.000000e-01
  %i.bqx = fsub float 1.000000e+00, %i.bqw
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bqz = load float, ptr %i.bqy, align 4
  %i.bra = call float @llvm.fmuladd.f32(float %i.bqs, float %i.bqx, float %i.bqz)
  store float %i.bra, ptr %i.bqy, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mo:                                            ; preds = %bb.ls
  br i1 %i.alh, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.brb = load float, ptr %i.aqw, align 4        ; 4 uses
  %i.brc = fcmp olt float %i.brb, %i.aiz
  br i1 %i.brc, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.brd = load float, ptr %i.aqv, align 8        ; 4 uses
  %i.bre = fcmp olt float %i.aja, %i.brd
  br i1 %i.bre, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.brf = fcmp ogt float %i.brd, %i.aiz          ; 2 uses
  %i.brg = fsub float %i.brd, %i.aiz
  %i.brh = fmul float %i.avf, %i.brg
  %i.bri = fdiv float %i.brh, %i.ali
  %i.brj = fadd float %i.aln, %i.bri
  %.055.i457.i.i.i.i.i.i.i = select i1 %i.brf, float %i.brj, float %i.aln ; 4 uses
  %.054.i458.i.i.i.i.i.i.i = select i1 %i.brf, float %i.brd, float %i.aiz ; 3 uses
  %i.brk = fcmp ogt float %i.aja, %i.brb
  br i1 %i.brk, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.brl = fsub float %i.aqs, %.055.i457.i.i.i.i.i.i.i
  %i.brm = fsub float %i.brb, %i.aja
  %i.brn = fmul float %i.brm, %i.brl
  %i.bro = fsub float %i.aja, %.054.i458.i.i.i.i.i.i.i
  %i.brp = fdiv float %i.brn, %i.bro
  %i.brq = fadd float %i.aqs, %i.brp
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  %.053.i459.i.i.i.i.i.i.i = phi float [ %i.brq, %bb.ms ], [ %i.aqs, %bb.mr ] ; 3 uses
  %.0.i460.i.i.i.i.i.i.i = phi float [ %i.brb, %bb.ms ], [ %i.aja, %bb.mr ] ; 2 uses
  %i.brr = fcmp ugt float %.055.i457.i.i.i.i.i.i.i, %i.avk
  %i.brs = fcmp ugt float %.053.i459.i.i.i.i.i.i.i, %i.avk
  %or.cond.i461.i.i.i.i.i.i.i = select i1 %i.brr, i1 true, i1 %i.brs
  br i1 %or.cond.i461.i.i.i.i.i.i.i, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.brt = load float, ptr %i.avg, align 4
  %i.bru = fsub float %.0.i460.i.i.i.i.i.i.i, %.054.i458.i.i.i.i.i.i.i
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.brw = load float, ptr %i.brv, align 4
  %i.brx = call float @llvm.fmuladd.f32(float %i.brt, float %i.bru, float %i.brw)
  store float %i.brx, ptr %i.brv, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mv:                                            ; preds = %bb.mt
  %i.bry = fcmp ult float %.055.i457.i.i.i.i.i.i.i, %i.avj
  %i.brz = fcmp ult float %.053.i459.i.i.i.i.i.i.i, %i.avj
  %or.cond62.i462.i.i.i.i.i.i.i = select i1 %i.bry, i1 true, i1 %i.brz
  br i1 %or.cond62.i462.i.i.i.i.i.i.i, label %bb.mw, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mw:                                            ; preds = %bb.mv
  %i.bsa = load float, ptr %i.avg, align 4
  %i.bsb = fsub float %.0.i460.i.i.i.i.i.i.i, %.054.i458.i.i.i.i.i.i.i
  %i.bsc = fmul float %i.bsb, %i.bsa
  %i.bsd = fsub float %.055.i457.i.i.i.i.i.i.i, %i.avk
  %i.bse = fsub float %.053.i459.i.i.i.i.i.i.i, %i.avk
  %i.bsf = fadd float %i.bsd, %i.bse
  %i.bsg = fmul float %i.bsf, 5.000000e-01
  %i.bsh = fsub float 1.000000e+00, %i.bsg
  %i.bsi = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i.i ; 2 uses
  %i.bsj = load float, ptr %i.bsi, align 4
  %i.bsk = call float @llvm.fmuladd.f32(float %i.bsc, float %i.bsh, float %i.bsj)
  store float %i.bsk, ptr %i.bsi, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i: ; preds = %bb.mw, %bb.mv, %bb.mu, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mf, %bb.me, %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i, %bb.lr, %bb.lq, %bb.lp, %bb.lj, %bb.li, %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i, %bb.kv, %bb.ku, %bb.kt, %bb.kn, %bb.km, %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i, %bb.jz, %bb.jy, %bb.jx, %bb.jr, %bb.jq, %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i, %bb.jd, %bb.jc, %bb.jb, %bb.iv, %bb.iu, %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i, %bb.hx, %bb.hw, %bb.hv, %bb.hp, %bb.ho, %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  %exitcond.not.i.i97.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i96.i.i.i.i.i, %wide.trip.count.i.i92.i.i.i.i.i
  br i1 %exitcond.not.i.i97.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gs

stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i: ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %bb.gr, %._crit_edge.i.i.i.i.i.i.i, %bb.gn, %bb.gj, %bb.gi, %bb.gh, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fq, %bb.fp, %bb.fe, %bb.fc
  %i.bsl = load ptr, ptr %.0293468.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i93.i.i.i.i.i = icmp eq ptr %i.bsl, null
  br i1 %.not.i.i93.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fb

stbtt__fill_active_edges_new.exit.i.i.i.i.i.i:    ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  br i1 %i.aix, label %.lr.ph22.i.i.i.preheader.i.i.i, label %.preheader.i.i.i.i.i.i

.lr.ph22.i.i.i.preheader.i.i.i:                   ; preds = %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  %i.bsm = mul nuw nsw i32 %.07630.i.i.i.i.i.i, %i.zy
  br label %.lr.ph22.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph22.i.i.i.i.i.i, %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i.i, label %._crit_edge26.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i

.lr.ph22.i.i.i.i.i.i:                             ; preds = %.lr.ph22.i.i.i.i.i.i, %.lr.ph22.i.i.i.preheader.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph22.i.i.i.i.i.i ], [ 0, %.lr.ph22.i.i.i.preheader.i.i.i ] ; 4 uses
  %.07721.i.i.i.i.i.i = phi float [ %i.bsp, %.lr.ph22.i.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph22.i.i.i.preheader.i.i.i ]
  %i.bsn = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %indvars.iv.i.i.i.i.i.i
  %i.bso = load float, ptr %i.bsn, align 4
  %i.bsp = fadd float %.07721.i.i.i.i.i.i, %i.bso ; 2 uses
  %i.bsq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.bsr = load float, ptr %i.bsq, align 4
  %i.bss = fadd float %i.bsr, %i.bsp
  %i.bst = call float @llvm.fabs.f32(float %i.bss)
  %i.bsu = call float @llvm.fmuladd.f32(float %i.bst, float 2.550000e+02, float 5.000000e-01)
  %i.bsv = fptosi float %i.bsu to i32
  %spec.store.select.i.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.bsv, i32 255)
  %i.bsw = trunc i32 %spec.store.select.i.i.i.i.i.i to i8
  %i.bsx = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.bsy = add nsw i32 %i.bsm, %i.bsx
  %i.bsz = sext i32 %i.bsy to i64
  %i.bta = getelementptr inbounds i8, ptr %i.aag, i64 %i.bsz
  store i8 %i.bsw, ptr %i.bta, align 1
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aii
  br i1 %exitcond.not.i.i.i153, label %.preheader.i.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i

.lr.ph25.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph25.i.i.i.i.i.i
  %i.btb = phi ptr [ %i.bti, %.lr.ph25.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.224.i.i.i.i.i.i = phi ptr [ %i.bth, %.lr.ph25.i.i.i.i.i.i ], [ %i.f, %.preheader.i.i.i.i.i.i ]
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 12
  %i.btd = load float, ptr %i.btc, align 4
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btb, i64 8 ; 2 uses
  %i.btf = load float, ptr %i.bte, align 8
  %i.btg = fadd float %i.btd, %i.btf
  store float %i.btg, ptr %i.bte, align 8
  %i.bth = load ptr, ptr %.224.i.i.i.i.i.i, align 8 ; 2 uses
  %i.bti = load ptr, ptr %i.bth, align 8          ; 2 uses
  %.not92.i.i.i.i.i.i = icmp eq ptr %i.bti, null
  br i1 %.not92.i.i.i.i.i.i, label %._crit_edge26.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i

._crit_edge26.i.i.i.i.i.i:                        ; preds = %.lr.ph25.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.btj = add nsw i32 %.07531.i.i.i.i.i.i, 1
  %i.btk = add nuw nsw i32 %.07630.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i32 %i.btk, %i.aab
  br i1 %exitcond61.not.i.i.i, label %._crit_edge35.i.i.i.i.i.i, label %bb.eo

._crit_edge35.i.i.i.i.i.i:                        ; preds = %._crit_edge26.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i.i:                           ; preds = %._crit_edge35.i.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i = phi ptr [ %i.btl, %.lr.ph.i94.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i ] ; 2 uses
  %i.btl = load ptr, ptr %.02.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @free(ptr noundef nonnull %.02.i.i.i.i.i.i.i) #39
  %.not.i95.i.i.i.i.i.i = icmp eq ptr %i.btl, null
  br i1 %.not.i95.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

stbtt__hheap_cleanup.exit.i.i.i.i.i.i:            ; preds = %.lr.ph.i94.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i, %bb.en
  %.not.i.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, label %bb.mx

bb.mx:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @free(ptr noundef %.080.i.i.i.i.i.i) #39
  br label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i

stbtt__rasterize_sorted_edges.exit.i.i.i.i.i:     ; preds = %bb.mx, %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @free(ptr noundef %i.agn) #39
  br label %stbtt__rasterize.exit.i.i.i.i

stbtt__rasterize.exit.i.i.i.i:                    ; preds = %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, %._crit_edge.i27.i.i.i.i
  call void @free(ptr noundef %i.acf) #39
  call void @free(ptr noundef %i.aec) #39
  br label %stbtt_GetCodepointBitmap.exit

stbtt_GetCodepointBitmap.exit:                    ; preds = %bb.do, %bb.dp, %stbtt_FlattenCurves.exit.thread.i.i.i.i, %stbtt__rasterize.exit.i.i.i.i, %bb.dn
  %.1185 = phi i32 [ 0, %bb.dn ], [ %i.zy, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zy, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zy, %bb.dp ], [ %i.zy, %bb.do ]
  %.1182 = phi i32 [ 0, %bb.dn ], [ %i.aab, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aab, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.aab, %bb.dp ], [ %i.aab, %bb.do ]
  %.0.i.i.i151 = phi ptr [ null, %bb.dn ], [ %i.aag, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aag, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ null, %bb.dp ], [ null, %bb.do ]
  %i.btm = load ptr, ptr %i.m, align 8
  call void @free(ptr noundef %i.btm) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  br label %.sink.split

bb.my:                                            ; preds = %bb.dm
  %.not141 = icmp eq i32 %i.zo, 32
  br i1 %.not141, label %bb.pf, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.btn = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.bto = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  br i1 %i.yt, label %stbtt_GetCodepointSDF.exit, label %bb.na

bb.na:                                            ; preds = %bb.mz
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zp, float noundef %i.yc, float noundef %i.yc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.btp = load i32, ptr %i.a, align 4            ; 4 uses
  %i.btq = load i32, ptr %i.c, align 4            ; 9 uses
  %i.btr = icmp eq i32 %i.btp, %i.btq
  br i1 %i.btr, label %stbtt_GetCodepointSDF.exit, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.bts = load i32, ptr %i.b, align 4            ; 2 uses
  %i.btt = load i32, ptr %i.d, align 4            ; 2 uses
  %i.btu = icmp eq i32 %i.bts, %i.btt
  br i1 %i.btu, label %stbtt_GetCodepointSDF.exit, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.btv = add i32 %i.btp, -4                     ; 4 uses
  %i.btw = add i32 %i.bts, -4                     ; 7 uses
  %i.btx = add i32 %i.btq, 4                      ; 6 uses
  %i.bty = add i32 %i.btt, 4                      ; 4 uses
  %i.btz = sub i32 %i.btx, %i.btv                 ; 4 uses
  %i.bua = sub nsw i32 %i.bty, %i.btw             ; 2 uses
  store i32 %i.btv, ptr %i.btn, align 4
  store i32 %i.btw, ptr %i.bto, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.bub = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %9, i32 noundef %i.zp, ptr noundef %i.e) ; 5 uses
  %i.buc = mul nsw i32 %i.bua, %i.btz
  %i.bud = sext i32 %i.buc to i64
  %i.bue = call noalias ptr @malloc(i64 noundef %i.bud) #42 ; 23 uses
  %i.buf = sext i32 %i.bub to i64
  %i.bug = shl nsw i64 %i.buf, 2
  %i.buh = call noalias ptr @malloc(i64 noundef %i.bug) #42 ; 4 uses
  %i.bui = icmp sgt i32 %i.bub, 0                 ; 2 uses
  %.pre.pre.i.i = load ptr, ptr %i.e, align 8     ; 6 uses
  br i1 %i.bui, label %.lr.ph.i.i157, label %.preheader485.i.i

.lr.ph.i.i157:                                    ; preds = %bb.nc
  %i.buj = add nsw i32 %i.bub, -1
  %wide.trip.count.i.i158 = zext nneg i32 %i.bub to i64
  %i.buk = zext nneg i32 %i.buj to i64
  br label %bb.pa

.preheader485.i.i:                                ; preds = %bb.pe, %bb.nc
  %i.bul = icmp slt i32 %i.btw, %i.bty
  br i1 %i.bul, label %.preheader.lr.ph.i.i, label %._crit_edge495.split.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader485.i.i
  %i.bum = icmp slt i32 %i.btv, %i.btx
  %wide.trip.count.i.i.i156 = zext i32 %i.bub to i64 ; 2 uses
  br i1 %i.bum, label %.preheader.preheader.i.i, label %._crit_edge495.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.bun = zext i32 %i.btv to i64                 ; 10 uses
  %reass.sub.i.i = sub i32 4, %i.btp              ; 2 uses
  br i1 %i.bui, label %.preheader.i.us.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i
  %i.buo = add i32 %i.btq, 7
  %i.bup = sub i32 %i.buo, %i.btp                 ; 8 uses
  %i.buq = zext i32 %i.bup to i64
  %i.bur = add nuw nsw i64 %i.buq, 1              ; 15 uses
  %10 = add i32 %i.btq, 3
  %11 = add i32 %i.btq, 3
  %i.bus = add i32 %i.btq, 3
  %min.iters.check672 = icmp ult i32 %i.bup, 7
  %min.iters.check700 = icmp ult i32 %i.bup, 31
  %i.but = and i64 %i.bur, 24
  %n.vec702 = and i64 %i.bur, 8589934560          ; 4 uses
  %i.buu = add nuw nsw i64 %n.vec702, %i.bun
  %cmp.n707 = icmp eq i64 %i.bur, %n.vec702
  %min.epilog.iters.check713 = icmp eq i64 %i.but, 0
  %n.vec715 = and i64 %i.bur, 8589934584          ; 3 uses
  %i.buv = add nuw nsw i64 %n.vec715, %i.bun
  %cmp.n720 = icmp eq i64 %i.bur, %n.vec715
  %min.iters.check674 = icmp ult i32 %i.bup, 31
  %i.buw = and i64 %i.bur, 24
  %n.vec676 = and i64 %i.bur, 8589934560          ; 4 uses
  %i.bux = add nuw nsw i64 %n.vec676, %i.bun
  %cmp.n681 = icmp eq i64 %i.bur, %n.vec676
  %min.epilog.iters.check687 = icmp eq i64 %i.buw, 0
  %n.vec689 = and i64 %i.bur, 8589934584          ; 3 uses
  %i.buy = add nuw nsw i64 %n.vec689, %i.bun
  %cmp.n694 = icmp eq i64 %i.bur, %n.vec689
  %min.iters.check646 = icmp ult i32 %i.bup, 7
  %min.iters.check648 = icmp ult i32 %i.bup, 31
  %i.buz = and i64 %i.bur, 24
  %n.vec650 = and i64 %i.bur, 8589934560          ; 4 uses
  %i.bva = add nuw nsw i64 %n.vec650, %i.bun
  %cmp.n655 = icmp eq i64 %i.bur, %n.vec650
  %min.epilog.iters.check661 = icmp eq i64 %i.buz, 0
  %n.vec663 = and i64 %i.bur, 8589934584          ; 3 uses
  %i.bvb = add nuw nsw i64 %n.vec663, %i.bun
  %cmp.n668 = icmp eq i64 %i.bur, %n.vec663
  br label %.preheader.i.i

.preheader.i.us.i:                                ; preds = %.preheader.preheader.i.i, %._crit_edge493.i.split.us.us.i
  %.0435494.i.us.i = phi i32 [ %i.cna, %._crit_edge493.i.split.us.us.i ], [ %i.btw, %.preheader.preheader.i.i ] ; 3 uses
  %i.bvc = sitofp i32 %.0435494.i.us.i to float
  %i.bvd = fadd float %i.bvc, 5.000000e-01        ; 8 uses
  %i.bve = fdiv float %i.bvd, %i.yu               ; 4 uses
  %i.bvf = fpext float %i.bve to double
  %i.bvg = fadd float %i.bve, f0xBC23D70A
  %i.bvh = fadd float %i.bve, f0x3C23D70A
  %i.bvi = sub nsw i32 %.0435494.i.us.i, %i.btw
  %i.bvj = mul nuw nsw i32 %i.bvi, %i.btz
  %.reass.i.us.i = add i32 %i.bvj, %reass.sub.i.i
  br label %bb.nd

bb.nd:                                            ; preds = %bb.oz, %.preheader.i.us.i
  %indvars.iv502.i.us.us.i = phi i64 [ %i.bun, %.preheader.i.us.i ], [ %indvars.iv.next503.i.us.us.i, %bb.oz ] ; 2 uses
  %i.bvk = trunc i64 %indvars.iv502.i.us.us.i to i32 ; 2 uses
  %i.bvl = sitofp i32 %i.bvk to float
  %i.bvm = fadd float %i.bvl, 5.000000e-01        ; 8 uses
  %i.bvn = fdiv float %i.bvm, %i.yc               ; 7 uses
  %i.bvo = call double @fmod(double noundef %i.bvf, double noundef 1.000000e+00) #39 ; 2 uses
  %i.bvp = fcmp olt double %i.bvo, f0x3F847AE130000000
  br i1 %i.bvp, label %.lr.ph.i.i.us.us.i, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bvq = fcmp ogt double %i.bvo, f0x3FEFAE1490000000
  br i1 %i.bvq, label %bb.nf, label %.lr.ph.i.i.us.us.i

bb.nf:                                            ; preds = %bb.ne
  br label %.lr.ph.i.i.us.us.i

.lr.ph.i.i.us.us.i:                               ; preds = %bb.nf, %bb.ne, %bb.nd
  %.0150.i.i.us.us.i = phi float [ %i.bve, %bb.ne ], [ %i.bvg, %bb.nf ], [ %i.bvh, %bb.nd ] ; 10 uses
  %i.bvr = fmul float %i.bvn, 0.000000e+00
  %i.bvs = fmul float %.0150.i.i.us.us.i, 0.000000e+00
  %i.bvt = fadd float %i.bvn, %i.bvs
  %i.bvu = fsub float %i.bvr, %.0150.i.i.us.us.i
  br label %bb.ng

bb.ng:                                            ; preds = %.thread.i.i.us.us.i, %.lr.ph.i.i.us.us.i
  %indvars.iv.i.i.us.us.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i ], [ %indvars.iv.next.i.i.us.us.i, %.thread.i.i.us.us.i ] ; 2 uses
  %.0197.i.i.us.us.i = phi i32 [ 0, %.lr.ph.i.i.us.us.i ], [ %.9.i.fr.i.us.us.i, %.thread.i.i.us.us.i ] ; 11 uses
  %i.bvv = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i.us.us.i ; 11 uses
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvv, i64 12
  %i.bvx = load i8, ptr %i.bvw, align 2
  switch i8 %i.bvx, label %.thread.i.i.us.us.i [
    i8 2, label %bb.nv
    i8 3, label %bb.nh
  ]

bb.nh:                                            ; preds = %bb.ng
  %i.bvy = getelementptr i8, ptr %i.bvv, i64 -14  ; 2 uses
  %i.bvz = getelementptr i8, ptr %i.bvv, i64 -12
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvv, i64 4
  %i.bwb = load i16, ptr %i.bwa, align 2          ; 2 uses
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bvv, i64 6
  %i.bwd = load i16, ptr %i.bwc, align 2          ; 3 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bvv, i64 2
  %i.bwf = load i16, ptr %i.bvz, align 2          ; 6 uses
  %i.bwg = load i16, ptr %i.bvy, align 2          ; 2 uses
  %i.bwh = sext i16 %i.bwf to i32
  %i.bwi = load i16, ptr %i.bwe, align 2          ; 6 uses
  %i.bwj = load i16, ptr %i.bvv, align 2          ; 2 uses
  %i.bwk = call i16 @llvm.smin.i16(i16 %i.bwb, i16 %i.bwj)
  %..i.i.us.us.i = call i16 @llvm.smin.i16(i16 %i.bwk, i16 %i.bwg)
  %i.bwl = call i16 @llvm.smin.i16(i16 %i.bwd, i16 %i.bwi)
  %i.bwm = call i16 @llvm.smin.i16(i16 %i.bwf, i16 %i.bwl)
  %i.bwn = call i16 @llvm.smax.i16(i16 %i.bwd, i16 %i.bwi)
  %i.bwo = call i16 @llvm.smax.i16(i16 %i.bwf, i16 %i.bwn)
  %i.bwp = sitofp i16 %i.bwm to float
  %i.bwq = fcmp ogt float %.0150.i.i.us.us.i, %i.bwp
  %i.bwr = sitofp i16 %i.bwo to float
  %i.bws = fcmp olt float %.0150.i.i.us.us.i, %i.bwr
  %or.cond162.i.i.us.us.i = and i1 %i.bwq, %i.bws
  %i.bwt = sitofp i16 %..i.i.us.us.i to float
  %i.bwu = fcmp ogt float %i.bvn, %i.bwt
  %or.cond164.i.i.us.us.i = select i1 %or.cond162.i.i.us.us.i, i1 %i.bwu, i1 false
  br i1 %or.cond164.i.i.us.us.i, label %bb.ni, label %.thread.i.i.us.us.i

bb.ni:                                            ; preds = %bb.nh
  %i.bwv = load <2 x i16>, ptr %i.bvv, align 2    ; 2 uses
  %i.bww = load <2 x i16>, ptr %i.bvy, align 2    ; 2 uses
  %i.bwx = shufflevector <2 x i16> %i.bwv, <2 x i16> %i.bww, <2 x i32> <i32 0, i32 2>
  %i.bwy = sitofp <2 x i16> %i.bwx to <2 x float> ; 3 uses
  %i.bwz = shufflevector <2 x i16> %i.bwv, <2 x i16> %i.bww, <2 x i32> <i32 1, i32 3>
  %i.bxa = sitofp <2 x i16> %i.bwz to <2 x float> ; 3 uses
  %i.bxb = sitofp i16 %i.bwb to float             ; 4 uses
  %i.bxc = sitofp i16 %i.bwd to float             ; 4 uses
  %i.bxd = extractelement <2 x float> %i.bwy, i64 1 ; 3 uses
  %i.bxe = fcmp une float %i.bxd, %i.bxb
  %i.bxf = extractelement <2 x float> %i.bxa, i64 1 ; 3 uses
  %i.bxg = fcmp une float %i.bxf, %i.bxc
  %narrow.i.not.i.i.us.us.i = or i1 %i.bxe, %i.bxg
  br i1 %narrow.i.not.i.i.us.us.i, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.bxh = extractelement <2 x float> %i.bwy, i64 0 ; 2 uses
  %i.bxi = fcmp une float %i.bxh, %i.bxb
  %i.bxj = extractelement <2 x float> %i.bxa, i64 0 ; 2 uses
  %i.bxk = fcmp une float %i.bxj, %i.bxc
  %narrow.i182.not.i.i.us.us.i = or i1 %i.bxi, %i.bxk
  br i1 %narrow.i182.not.i.i.us.us.i, label %bb.no, label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.bxl = sext i16 %i.bwg to i32                 ; 2 uses
  %i.bxm = sext i16 %i.bwj to i32                 ; 2 uses
  %i.bxn = sext i16 %i.bwi to i32
  %i.bxo = icmp slt i16 %i.bwf, %i.bwi
  %i.bxp = call i16 @llvm.smin.i16(i16 %i.bwf, i16 %i.bwi)
  %i.bxq = sitofp i16 %i.bxp to float
  %i.bxr = fcmp ogt float %.0150.i.i.us.us.i, %i.bxq
  br i1 %i.bxr, label %bb.nl, label %.thread.i.i.us.us.i

bb.nl:                                            ; preds = %bb.nk
  %i.bxs = call i16 @llvm.smax.i16(i16 %i.bwf, i16 %i.bwi)
  %i.bxt = sitofp i16 %i.bxs to float
  %i.bxu = fcmp olt float %.0150.i.i.us.us.i, %i.bxt
  br i1 %i.bxu, label %bb.nm, label %.thread.i.i.us.us.i

bb.nm:                                            ; preds = %bb.nl
  %i.bxv = call i32 @llvm.smin.i32(i32 %i.bxl, i32 %i.bxm)
  %i.bxw = sitofp i32 %i.bxv to float
  %i.bxx = fcmp ogt float %i.bvn, %i.bxw
  br i1 %i.bxx, label %bb.nn, label %.thread.i.i.us.us.i

bb.nn:                                            ; preds = %bb.nm
  %i.bxy = fsub float %.0150.i.i.us.us.i, %i.bxf
  %i.bxz = sub nsw i32 %i.bxn, %i.bwh
  %i.bya = sitofp i32 %i.bxz to float
  %i.byb = fdiv float %i.bxy, %i.bya
  %i.byc = sub nsw i32 %i.bxm, %i.bxl
  %i.byd = sitofp i32 %i.byc to float
  %i.bye = call float @llvm.fmuladd.f32(float %i.byb, float %i.byd, float %i.bxd)
  %i.byf = fcmp olt float %i.bye, %i.bvn
  %i.byg = select i1 %i.bxo, i32 1, i32 -1
  %i.byh = select i1 %i.byf, i32 %i.byg, i32 0
  %.4.i.i.us.us.i = add nsw i32 %i.byh, %.0197.i.i.us.us.i
  br label %.thread.i.i.us.us.i

bb.no:                                            ; preds = %bb.nj
  %i.byi = fneg float %i.bxd
  %i.byj = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byi)
  %i.byk = fadd float %i.byj, %i.bxf              ; 3 uses
  %i.byl = fneg float %i.bxb
  %i.bym = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byl)
  %i.byn = fadd float %i.bym, %i.bxc              ; 2 uses
  %i.byo = fneg float %i.bxh
  %i.byp = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byo)
  %i.byq = fadd float %i.byp, %i.bxj
  %i.byr = call float @llvm.fmuladd.f32(float %i.byn, float -2.000000e+00, float %i.byk)
  %i.bys = fadd float %i.byr, %i.byq              ; 5 uses
  %i.byt = fsub float %i.byn, %i.byk              ; 7 uses
  %i.byu = fadd float %i.bvu, %i.byk              ; 2 uses
  %i.byv = fcmp une float %i.bys, 0.000000e+00
  br i1 %i.byv, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.byw = fmul float %i.byt, -2.000000e+00
  %i.byx = fdiv float %i.byu, %i.byw              ; 3 uses
  %i.byy = fcmp ult float %i.byx, 0.000000e+00
  %i.byz = fcmp ugt float %i.byx, 1.000000e+00
  %or.cond119.i.i.i.us.us.i = or i1 %i.byy, %i.byz
  br i1 %or.cond119.i.i.i.us.us.i, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i, label %.thread21.i.i.i.us.us.i

bb.nq:                                            ; preds = %bb.no
  %i.bza = fneg float %i.byu
  %i.bzb = fmul float %i.bys, %i.bza
  %i.bzc = call float @llvm.fmuladd.f32(float %i.byt, float %i.byt, float %i.bzb) ; 2 uses
  %i.bzd = fcmp ogt float %i.bzc, 0.000000e+00
  br i1 %i.bzd, label %bb.nr, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i
end_hunk_1
begin_hunk_2_@LoadFontData:bb.a
  %i.com = fmul float %i.col, %i.yu
  %i.con = extractelement <4 x float> %i.coi, i64 0
  %i.coo = fmul float %i.yc, %i.con
  %i.cop = extractelement <4 x float> %i.coi, i64 1
  %i.coq = fmul float %i.cop, %i.yu
  %i.cor = call float @llvm.fmuladd.f32(float %i.cok, float -2.000000e+00, float %i.coo)
  %i.cos = fadd float %i.cod, %i.cor              ; 2 uses
  %i.cot = call float @llvm.fmuladd.f32(float %i.com, float -2.000000e+00, float %i.coq)
  %i.cou = fmul float %i.yc, %i.cog
  %i.cov = fsub float %i.cot, %i.cou              ; 2 uses
  %i.cow = fmul float %i.cov, %i.cov
  %i.cox = call float @llvm.fmuladd.f32(float %i.cos, float %i.cos, float %i.cow) ; 2 uses
  %i.coy = fcmp ult float %i.cox, f0x35800000
  br i1 %i.coy, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.coz = fdiv float 1.000000e+00, %i.cox
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc, %bb.pb, %bb.pa
  %.sink.i.i160 = phi float [ %i.coz, %bb.pd ], [ 0.000000e+00, %bb.pc ], [ %i.cnz, %bb.pb ], [ 0.000000e+00, %bb.pa ]
  %i.cpa = getelementptr inbounds nuw [4 x i8], ptr %i.buh, i64 %indvars.iv.i.i159
  store float %.sink.i.i160, ptr %i.cpa, align 4
  %indvars.iv.next.i.i161 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 2 uses
  %exitcond.not.i.i162 = icmp eq i64 %indvars.iv.next.i.i161, %wide.trip.count.i.i158
  br i1 %exitcond.not.i.i162, label %.preheader485.i.i, label %bb.pa

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge493.i.split.i
  %.0435494.i.i = phi i32 [ %i.ctg, %._crit_edge493.i.split.i ], [ %i.btw, %.preheader.i.i.preheader ] ; 3 uses
  %i.cpb = sitofp i32 %.0435494.i.i to float
  %i.cpc = fadd float %i.cpb, 5.000000e-01
  %i.cpd = fdiv float %i.cpc, %i.yu
  %i.cpe = fpext float %i.cpd to double
  %i.cpf = sub i32 %.0435494.i.i, %i.btw
  %i.cpg = mul i32 %i.cpf, %i.btz                 ; 11 uses
  %.reass.i.i = add i32 %i.cpg, %reass.sub.i.i    ; 15 uses
  %i.cph = call double @fmod(double noundef %i.cpe, double noundef 1.000000e+00) #39 ; 2 uses
  %i.cpi = fcmp olt double %i.cph, f0x3F847AE130000000
  br i1 %i.cpi, label %iter.check658, label %.preheader.i.split.split.i

iter.check658:                                    ; preds = %.preheader.i.i
  %i.cpj = add i32 %i.cpg, %i.bup
  %i.cpk = icmp slt i32 %i.cpj, %i.cpg
  %or.cond723 = or i1 %min.iters.check646, %i.cpk
  br i1 %or.cond723, label %._crit_edge.thread.i.us12.i.preheader, label %vector.main.loop.iter.check647

vector.main.loop.iter.check647:                   ; preds = %iter.check658
  br i1 %min.iters.check648, label %vec.epilog.ph662, label %vector.body651

vector.body651:                                   ; preds = %vector.main.loop.iter.check647, %vector.body651
  %index652 = phi i64 [ %index.next653, %vector.body651 ], [ 0, %vector.main.loop.iter.check647 ] ; 2 uses
  %i.cpl = trunc i64 %index652 to i32
  %i.cpm = add i32 %i.cpg, %i.cpl
  %i.cpn = sext i32 %i.cpm to i64
  %i.cpo = getelementptr inbounds i8, ptr %i.bue, i64 %i.cpn ; 2 uses
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpo, i64 16
  store <16 x i8> zeroinitializer, ptr %i.cpo, align 1
  store <16 x i8> zeroinitializer, ptr %i.cpp, align 1
  %index.next653 = add nuw i64 %index652, 32      ; 2 uses
  %i.cpq = icmp eq i64 %index.next653, %n.vec650
  br i1 %i.cpq, label %middle.block654, label %vector.body651, !llvm.loop !32

middle.block654:                                  ; preds = %vector.body651
  br i1 %cmp.n655, label %._crit_edge493.i.split.i, label %vec.epilog.iter.check660

vec.epilog.iter.check660:                         ; preds = %middle.block654
  br i1 %min.epilog.iters.check661, label %._crit_edge.thread.i.us12.i.preheader, label %vec.epilog.ph662, !prof !7

vec.epilog.ph662:                                 ; preds = %vector.main.loop.iter.check647, %vec.epilog.iter.check660
  %vec.epilog.resume.val656 = phi i64 [ %n.vec650, %vec.epilog.iter.check660 ], [ 0, %vector.main.loop.iter.check647 ]
  br label %vec.epilog.vector.body664

vec.epilog.vector.body664:                        ; preds = %vec.epilog.vector.body664, %vec.epilog.ph662
  %index665 = phi i64 [ %vec.epilog.resume.val656, %vec.epilog.ph662 ], [ %index.next666, %vec.epilog.vector.body664 ] ; 2 uses
  %i.cpr = trunc i64 %index665 to i32
  %i.cps = add i32 %i.cpg, %i.cpr
  %i.cpt = sext i32 %i.cps to i64
  %i.cpu = getelementptr inbounds i8, ptr %i.bue, i64 %i.cpt
  store <8 x i8> zeroinitializer, ptr %i.cpu, align 1
  %index.next666 = add nuw i64 %index665, 8       ; 2 uses
  %i.cpv = icmp eq i64 %index.next666, %n.vec663
  br i1 %i.cpv, label %vec.epilog.middle.block667, label %vec.epilog.vector.body664, !llvm.loop !33

vec.epilog.middle.block667:                       ; preds = %vec.epilog.vector.body664
  br i1 %cmp.n668, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us12.i.preheader

._crit_edge.thread.i.us12.i.preheader:            ; preds = %iter.check658, %vec.epilog.iter.check660, %vec.epilog.middle.block667
  %indvars.iv502.i.us11.i.ph = phi i64 [ %i.bun, %iter.check658 ], [ %i.bva, %vec.epilog.iter.check660 ], [ %i.bvb, %vec.epilog.middle.block667 ] ; 3 uses
  %i.cpw = trunc i64 %indvars.iv502.i.us11.i.ph to i32 ; 2 uses
  %i.cpx = sub i32 %i.btq, %i.cpw
  %i.cpy = sub i32 %i.bus, %i.cpw
  %xtraiter824 = and i32 %i.cpx, 3                ; 2 uses
  %lcmp.mod825.not = icmp eq i32 %xtraiter824, 0
  br i1 %lcmp.mod825.not, label %._crit_edge.thread.i.us12.i.prol.loopexit, label %._crit_edge.thread.i.us12.i.prol

._crit_edge.thread.i.us12.i.prol:                 ; preds = %._crit_edge.thread.i.us12.i.preheader, %._crit_edge.thread.i.us12.i.prol
  %indvars.iv502.i.us11.i.prol = phi i64 [ %indvars.iv.next503.i.us13.i.prol, %._crit_edge.thread.i.us12.i.prol ], [ %indvars.iv502.i.us11.i.ph, %._crit_edge.thread.i.us12.i.preheader ] ; 2 uses
  %prol.iter826 = phi i32 [ %prol.iter826.next, %._crit_edge.thread.i.us12.i.prol ], [ 0, %._crit_edge.thread.i.us12.i.preheader ]
  %i.cpz = trunc i64 %indvars.iv502.i.us11.i.prol to i32
  %i.cqa = add i32 %.reass.i.i, %i.cpz
  %i.cqb = sext i32 %i.cqa to i64
  %i.cqc = getelementptr inbounds i8, ptr %i.bue, i64 %i.cqb
  store i8 0, ptr %i.cqc, align 1
  %indvars.iv.next503.i.us13.i.prol = add nuw nsw i64 %indvars.iv502.i.us11.i.prol, 1 ; 2 uses
  %prol.iter826.next = add i32 %prol.iter826, 1   ; 2 uses
  %prol.iter826.cmp.not = icmp eq i32 %prol.iter826.next, %xtraiter824
  br i1 %prol.iter826.cmp.not, label %._crit_edge.thread.i.us12.i.prol.loopexit, label %._crit_edge.thread.i.us12.i.prol, !llvm.loop !34

._crit_edge.thread.i.us12.i.prol.loopexit:        ; preds = %._crit_edge.thread.i.us12.i.prol, %._crit_edge.thread.i.us12.i.preheader
  %indvars.iv502.i.us11.i.unr = phi i64 [ %indvars.iv502.i.us11.i.ph, %._crit_edge.thread.i.us12.i.preheader ], [ %indvars.iv.next503.i.us13.i.prol, %._crit_edge.thread.i.us12.i.prol ]
  %i.cqd = icmp ult i32 %i.cpy, 3
  br i1 %i.cqd, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us12.i.preheader.new

._crit_edge.thread.i.us12.i.preheader.new:        ; preds = %._crit_edge.thread.i.us12.i.prol.loopexit
  %invariant.op876 = add i32 1, %.reass.i.i
  %invariant.op878 = add i32 2, %.reass.i.i
  %invariant.op880 = add i32 3, %.reass.i.i
  br label %._crit_edge.thread.i.us12.i

._crit_edge.thread.i.us12.i:                      ; preds = %._crit_edge.thread.i.us12.i, %._crit_edge.thread.i.us12.i.preheader.new
  %indvars.iv502.i.us11.i = phi i64 [ %indvars.iv502.i.us11.i.unr, %._crit_edge.thread.i.us12.i.preheader.new ], [ %indvars.iv.next503.i.us13.i.3, %._crit_edge.thread.i.us12.i ] ; 5 uses
  %i.cqe = trunc i64 %indvars.iv502.i.us11.i to i32
  %i.cqf = add i32 %.reass.i.i, %i.cqe
  %i.cqg = sext i32 %i.cqf to i64
  %i.cqh = getelementptr inbounds i8, ptr %i.bue, i64 %i.cqg
  store i8 0, ptr %i.cqh, align 1
  %i.cqi = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass877 = add i32 %i.cqi, %invariant.op876
  %i.cqj = sext i32 %.reass877 to i64
  %i.cqk = getelementptr inbounds i8, ptr %i.bue, i64 %i.cqj
  store i8 0, ptr %i.cqk, align 1
  %i.cql = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass879 = add i32 %i.cql, %invariant.op878
  %i.cqm = sext i32 %.reass879 to i64
  %i.cqn = getelementptr inbounds i8, ptr %i.bue, i64 %i.cqm
  store i8 0, ptr %i.cqn, align 1
  %i.cqo = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass881 = add i32 %i.cqo, %invariant.op880
  %i.cqp = sext i32 %.reass881 to i64
  %i.cqq = getelementptr inbounds i8, ptr %i.bue, i64 %i.cqp
  store i8 0, ptr %i.cqq, align 1
  %indvars.iv.next503.i.us13.i.3 = add nuw nsw i64 %indvars.iv502.i.us11.i, 4 ; 2 uses
  %lftr.wideiv.i.us14.i.3 = trunc i64 %indvars.iv.next503.i.us13.i.3 to i32
  %exitcond505.not.i.us15.i.3 = icmp eq i32 %i.btx, %lftr.wideiv.i.us14.i.3
  br i1 %exitcond505.not.i.us15.i.3, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us12.i, !llvm.loop !35

.preheader.i.split.split.i:                       ; preds = %.preheader.i.i
  %i.cqr = fcmp ogt double %i.cph, f0x3FEFAE1490000000
  %i.cqs = add i32 %i.cpg, %i.bup
  %i.cqt = icmp slt i32 %i.cqs, %i.cpg
  %or.cond727 = or i1 %min.iters.check672, %i.cqt ; 2 uses
  br i1 %i.cqr, label %iter.check684, label %iter.check710

iter.check710:                                    ; preds = %.preheader.i.split.split.i
  br i1 %or.cond727, label %._crit_edge.thread.i.i.preheader, label %vector.main.loop.iter.check699

vector.main.loop.iter.check699:                   ; preds = %iter.check710
  br i1 %min.iters.check700, label %vec.epilog.ph714, label %vector.body703

vector.body703:                                   ; preds = %vector.main.loop.iter.check699, %vector.body703
  %index704 = phi i64 [ %index.next705, %vector.body703 ], [ 0, %vector.main.loop.iter.check699 ] ; 2 uses
  %i.cqu = trunc i64 %index704 to i32
  %i.cqv = add i32 %i.cpg, %i.cqu
  %i.cqw = sext i32 %i.cqv to i64
  %i.cqx = getelementptr inbounds i8, ptr %i.bue, i64 %i.cqw ; 2 uses
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqx, i64 16
  store <16 x i8> zeroinitializer, ptr %i.cqx, align 1
  store <16 x i8> zeroinitializer, ptr %i.cqy, align 1
  %index.next705 = add nuw i64 %index704, 32      ; 2 uses
  %i.cqz = icmp eq i64 %index.next705, %n.vec702
  br i1 %i.cqz, label %middle.block706, label %vector.body703, !llvm.loop !36

middle.block706:                                  ; preds = %vector.body703
  br i1 %cmp.n707, label %._crit_edge493.i.split.i, label %vec.epilog.iter.check712

vec.epilog.iter.check712:                         ; preds = %middle.block706
  br i1 %min.epilog.iters.check713, label %._crit_edge.thread.i.i.preheader, label %vec.epilog.ph714, !prof !7

vec.epilog.ph714:                                 ; preds = %vector.main.loop.iter.check699, %vec.epilog.iter.check712
  %vec.epilog.resume.val708 = phi i64 [ %n.vec702, %vec.epilog.iter.check712 ], [ 0, %vector.main.loop.iter.check699 ]
  br label %vec.epilog.vector.body716

vec.epilog.vector.body716:                        ; preds = %vec.epilog.vector.body716, %vec.epilog.ph714
  %index717 = phi i64 [ %vec.epilog.resume.val708, %vec.epilog.ph714 ], [ %index.next718, %vec.epilog.vector.body716 ] ; 2 uses
  %i.cra = trunc i64 %index717 to i32
  %i.crb = add i32 %i.cpg, %i.cra
  %i.crc = sext i32 %i.crb to i64
  %i.crd = getelementptr inbounds i8, ptr %i.bue, i64 %i.crc
  store <8 x i8> zeroinitializer, ptr %i.crd, align 1
  %index.next718 = add nuw i64 %index717, 8       ; 2 uses
  %i.cre = icmp eq i64 %index.next718, %n.vec715
  br i1 %i.cre, label %vec.epilog.middle.block719, label %vec.epilog.vector.body716, !llvm.loop !37

vec.epilog.middle.block719:                       ; preds = %vec.epilog.vector.body716
  br i1 %cmp.n720, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.i.preheader

._crit_edge.thread.i.i.preheader:                 ; preds = %iter.check710, %vec.epilog.iter.check712, %vec.epilog.middle.block719
  %indvars.iv502.i.i.ph = phi i64 [ %i.bun, %iter.check710 ], [ %i.buu, %vec.epilog.iter.check712 ], [ %i.buv, %vec.epilog.middle.block719 ] ; 3 uses
  %i.crf = trunc i64 %indvars.iv502.i.i.ph to i32 ; 2 uses
  %i.crg = sub i32 %i.btq, %i.crf
  %i.crh = sub i32 %10, %i.crf
  %xtraiter819 = and i32 %i.crg, 3                ; 2 uses
  %lcmp.mod820.not = icmp eq i32 %xtraiter819, 0
  br i1 %lcmp.mod820.not, label %._crit_edge.thread.i.i.prol.loopexit, label %._crit_edge.thread.i.i.prol

._crit_edge.thread.i.i.prol:                      ; preds = %._crit_edge.thread.i.i.preheader, %._crit_edge.thread.i.i.prol
  %indvars.iv502.i.i.prol = phi i64 [ %indvars.iv.next503.i.i.prol, %._crit_edge.thread.i.i.prol ], [ %indvars.iv502.i.i.ph, %._crit_edge.thread.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %._crit_edge.thread.i.i.prol ], [ 0, %._crit_edge.thread.i.i.preheader ]
  %i.cri = trunc i64 %indvars.iv502.i.i.prol to i32
  %i.crj = add i32 %.reass.i.i, %i.cri
  %i.crk = sext i32 %i.crj to i64
  %i.crl = getelementptr inbounds i8, ptr %i.bue, i64 %i.crk
  store i8 0, ptr %i.crl, align 1
  %indvars.iv.next503.i.i.prol = add nuw nsw i64 %indvars.iv502.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter819
  br i1 %prol.iter.cmp.not, label %._crit_edge.thread.i.i.prol.loopexit, label %._crit_edge.thread.i.i.prol, !llvm.loop !38

._crit_edge.thread.i.i.prol.loopexit:             ; preds = %._crit_edge.thread.i.i.prol, %._crit_edge.thread.i.i.preheader
  %indvars.iv502.i.i.unr = phi i64 [ %indvars.iv502.i.i.ph, %._crit_edge.thread.i.i.preheader ], [ %indvars.iv.next503.i.i.prol, %._crit_edge.thread.i.i.prol ]
  %i.crm = icmp ult i32 %i.crh, 3
  br i1 %i.crm, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.i.preheader.new

._crit_edge.thread.i.i.preheader.new:             ; preds = %._crit_edge.thread.i.i.prol.loopexit
  %invariant.op = add i32 1, %.reass.i.i
  %invariant.op866 = add i32 2, %.reass.i.i
  %invariant.op868 = add i32 3, %.reass.i.i
  br label %._crit_edge.thread.i.i

iter.check684:                                    ; preds = %.preheader.i.split.split.i
  br i1 %or.cond727, label %._crit_edge.thread.i.us17.i.preheader, label %vector.main.loop.iter.check673

vector.main.loop.iter.check673:                   ; preds = %iter.check684
  br i1 %min.iters.check674, label %vec.epilog.ph688, label %vector.body677

vector.body677:                                   ; preds = %vector.main.loop.iter.check673, %vector.body677
  %index678 = phi i64 [ %index.next679, %vector.body677 ], [ 0, %vector.main.loop.iter.check673 ] ; 2 uses
  %i.crn = trunc i64 %index678 to i32
  %i.cro = add i32 %i.cpg, %i.crn
  %i.crp = sext i32 %i.cro to i64
  %i.crq = getelementptr inbounds i8, ptr %i.bue, i64 %i.crp ; 2 uses
  %i.crr = getelementptr inbounds nuw i8, ptr %i.crq, i64 16
  store <16 x i8> zeroinitializer, ptr %i.crq, align 1
  store <16 x i8> zeroinitializer, ptr %i.crr, align 1
  %index.next679 = add nuw i64 %index678, 32      ; 2 uses
  %i.crs = icmp eq i64 %index.next679, %n.vec676
  br i1 %i.crs, label %middle.block680, label %vector.body677, !llvm.loop !39

middle.block680:                                  ; preds = %vector.body677
  br i1 %cmp.n681, label %._crit_edge493.i.split.i, label %vec.epilog.iter.check686

vec.epilog.iter.check686:                         ; preds = %middle.block680
  br i1 %min.epilog.iters.check687, label %._crit_edge.thread.i.us17.i.preheader, label %vec.epilog.ph688, !prof !7

vec.epilog.ph688:                                 ; preds = %vector.main.loop.iter.check673, %vec.epilog.iter.check686
  %vec.epilog.resume.val682 = phi i64 [ %n.vec676, %vec.epilog.iter.check686 ], [ 0, %vector.main.loop.iter.check673 ]
  br label %vec.epilog.vector.body690

vec.epilog.vector.body690:                        ; preds = %vec.epilog.vector.body690, %vec.epilog.ph688
  %index691 = phi i64 [ %vec.epilog.resume.val682, %vec.epilog.ph688 ], [ %index.next692, %vec.epilog.vector.body690 ] ; 2 uses
  %i.crt = trunc i64 %index691 to i32
  %i.cru = add i32 %i.cpg, %i.crt
  %i.crv = sext i32 %i.cru to i64
  %i.crw = getelementptr inbounds i8, ptr %i.bue, i64 %i.crv
  store <8 x i8> zeroinitializer, ptr %i.crw, align 1
  %index.next692 = add nuw i64 %index691, 8       ; 2 uses
  %i.crx = icmp eq i64 %index.next692, %n.vec689
  br i1 %i.crx, label %vec.epilog.middle.block693, label %vec.epilog.vector.body690, !llvm.loop !40

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body690
  br i1 %cmp.n694, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us17.i.preheader

._crit_edge.thread.i.us17.i.preheader:            ; preds = %iter.check684, %vec.epilog.iter.check686, %vec.epilog.middle.block693
  %indvars.iv502.i.us16.i.ph = phi i64 [ %i.bun, %iter.check684 ], [ %i.bux, %vec.epilog.iter.check686 ], [ %i.buy, %vec.epilog.middle.block693 ] ; 3 uses
  %i.cry = trunc i64 %indvars.iv502.i.us16.i.ph to i32 ; 2 uses
  %i.crz = sub i32 %i.btq, %i.cry
  %i.csa = sub i32 %11, %i.cry
  %xtraiter821 = and i32 %i.crz, 3                ; 2 uses
  %lcmp.mod822.not = icmp eq i32 %xtraiter821, 0
  br i1 %lcmp.mod822.not, label %._crit_edge.thread.i.us17.i.prol.loopexit, label %._crit_edge.thread.i.us17.i.prol

._crit_edge.thread.i.us17.i.prol:                 ; preds = %._crit_edge.thread.i.us17.i.preheader, %._crit_edge.thread.i.us17.i.prol
  %indvars.iv502.i.us16.i.prol = phi i64 [ %indvars.iv.next503.i.us18.i.prol, %._crit_edge.thread.i.us17.i.prol ], [ %indvars.iv502.i.us16.i.ph, %._crit_edge.thread.i.us17.i.preheader ] ; 2 uses
  %prol.iter823 = phi i32 [ %prol.iter823.next, %._crit_edge.thread.i.us17.i.prol ], [ 0, %._crit_edge.thread.i.us17.i.preheader ]
  %i.csb = trunc i64 %indvars.iv502.i.us16.i.prol to i32
  %i.csc = add i32 %.reass.i.i, %i.csb
  %i.csd = sext i32 %i.csc to i64
  %i.cse = getelementptr inbounds i8, ptr %i.bue, i64 %i.csd
  store i8 0, ptr %i.cse, align 1
  %indvars.iv.next503.i.us18.i.prol = add nuw nsw i64 %indvars.iv502.i.us16.i.prol, 1 ; 2 uses
  %prol.iter823.next = add i32 %prol.iter823, 1   ; 2 uses
  %prol.iter823.cmp.not = icmp eq i32 %prol.iter823.next, %xtraiter821
  br i1 %prol.iter823.cmp.not, label %._crit_edge.thread.i.us17.i.prol.loopexit, label %._crit_edge.thread.i.us17.i.prol, !llvm.loop !41

._crit_edge.thread.i.us17.i.prol.loopexit:        ; preds = %._crit_edge.thread.i.us17.i.prol, %._crit_edge.thread.i.us17.i.preheader
  %indvars.iv502.i.us16.i.unr = phi i64 [ %indvars.iv502.i.us16.i.ph, %._crit_edge.thread.i.us17.i.preheader ], [ %indvars.iv.next503.i.us18.i.prol, %._crit_edge.thread.i.us17.i.prol ]
  %i.csf = icmp ult i32 %i.csa, 3
  br i1 %i.csf, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us17.i.preheader.new

._crit_edge.thread.i.us17.i.preheader.new:        ; preds = %._crit_edge.thread.i.us17.i.prol.loopexit
  %invariant.op870 = add i32 1, %.reass.i.i
  %invariant.op872 = add i32 2, %.reass.i.i
  %invariant.op874 = add i32 3, %.reass.i.i
  br label %._crit_edge.thread.i.us17.i

._crit_edge.thread.i.us17.i:                      ; preds = %._crit_edge.thread.i.us17.i, %._crit_edge.thread.i.us17.i.preheader.new
  %indvars.iv502.i.us16.i = phi i64 [ %indvars.iv502.i.us16.i.unr, %._crit_edge.thread.i.us17.i.preheader.new ], [ %indvars.iv.next503.i.us18.i.3, %._crit_edge.thread.i.us17.i ] ; 5 uses
  %i.csg = trunc i64 %indvars.iv502.i.us16.i to i32
  %i.csh = add i32 %.reass.i.i, %i.csg
  %i.csi = sext i32 %i.csh to i64
  %i.csj = getelementptr inbounds i8, ptr %i.bue, i64 %i.csi
  store i8 0, ptr %i.csj, align 1
  %i.csk = trunc i64 %indvars.iv502.i.us16.i to i32
  %.reass871 = add i32 %i.csk, %invariant.op870
  %i.csl = sext i32 %.reass871 to i64
  %i.csm = getelementptr inbounds i8, ptr %i.bue, i64 %i.csl
  store i8 0, ptr %i.csm, align 1
  %i.csn = trunc i64 %indvars.iv502.i.us16.i to i32
  %.reass873 = add i32 %i.csn, %invariant.op872
  %i.cso = sext i32 %.reass873 to i64
  %i.csp = getelementptr inbounds i8, ptr %i.bue, i64 %i.cso
  store i8 0, ptr %i.csp, align 1
  %i.csq = trunc i64 %indvars.iv502.i.us16.i to i32
  %.reass875 = add i32 %i.csq, %invariant.op874
  %i.csr = sext i32 %.reass875 to i64
  %i.css = getelementptr inbounds i8, ptr %i.bue, i64 %i.csr
  store i8 0, ptr %i.css, align 1
  %indvars.iv.next503.i.us18.i.3 = add nuw nsw i64 %indvars.iv502.i.us16.i, 4 ; 2 uses
  %lftr.wideiv.i.us19.i.3 = trunc i64 %indvars.iv.next503.i.us18.i.3 to i32
  %exitcond505.not.i.us20.i.3 = icmp eq i32 %i.btx, %lftr.wideiv.i.us19.i.3
  br i1 %exitcond505.not.i.us20.i.3, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us17.i, !llvm.loop !42

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.thread.i.i, %._crit_edge.thread.i.i.preheader.new
  %indvars.iv502.i.i = phi i64 [ %indvars.iv502.i.i.unr, %._crit_edge.thread.i.i.preheader.new ], [ %indvars.iv.next503.i.i.3, %._crit_edge.thread.i.i ] ; 5 uses
  %i.cst = trunc i64 %indvars.iv502.i.i to i32
  %i.csu = add i32 %.reass.i.i, %i.cst
  %i.csv = sext i32 %i.csu to i64
  %i.csw = getelementptr inbounds i8, ptr %i.bue, i64 %i.csv
  store i8 0, ptr %i.csw, align 1
  %i.csx = trunc i64 %indvars.iv502.i.i to i32
  %.reass = add i32 %i.csx, %invariant.op
  %i.csy = sext i32 %.reass to i64
  %i.csz = getelementptr inbounds i8, ptr %i.bue, i64 %i.csy
  store i8 0, ptr %i.csz, align 1
  %i.cta = trunc i64 %indvars.iv502.i.i to i32
  %.reass867 = add i32 %i.cta, %invariant.op866
  %i.ctb = sext i32 %.reass867 to i64
  %i.ctc = getelementptr inbounds i8, ptr %i.bue, i64 %i.ctb
  store i8 0, ptr %i.ctc, align 1
  %i.ctd = trunc i64 %indvars.iv502.i.i to i32
  %.reass869 = add i32 %i.ctd, %invariant.op868
  %i.cte = sext i32 %.reass869 to i64
  %i.ctf = getelementptr inbounds i8, ptr %i.bue, i64 %i.cte
  store i8 0, ptr %i.ctf, align 1
  %indvars.iv.next503.i.i.3 = add nuw nsw i64 %indvars.iv502.i.i, 4 ; 2 uses
  %lftr.wideiv.i.i.3 = trunc i64 %indvars.iv.next503.i.i.3 to i32
  %exitcond505.not.i.i.3 = icmp eq i32 %i.btx, %lftr.wideiv.i.i.3
  br i1 %exitcond505.not.i.i.3, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.i, !llvm.loop !43

._crit_edge493.i.split.i:                         ; preds = %._crit_edge.thread.i.i.prol.loopexit, %._crit_edge.thread.i.i, %._crit_edge.thread.i.us17.i.prol.loopexit, %._crit_edge.thread.i.us17.i, %._crit_edge.thread.i.us12.i.prol.loopexit, %._crit_edge.thread.i.us12.i, %middle.block706, %vec.epilog.middle.block719, %middle.block680, %vec.epilog.middle.block693, %middle.block654, %vec.epilog.middle.block667
  %i.ctg = add nsw i32 %.0435494.i.i, 1           ; 2 uses
  %exitcond506.not.i.i = icmp eq i32 %i.ctg, %i.bty
  br i1 %exitcond506.not.i.i, label %._crit_edge495.split.i.i, label %.preheader.i.i

._crit_edge495.split.i.i:                         ; preds = %._crit_edge493.i.split.i, %._crit_edge493.i.split.us.us.i, %.preheader.lr.ph.i.i, %.preheader485.i.i
  call void @free(ptr noundef %i.buh) #39
  call void @free(ptr noundef %.pre.pre.i.i) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  br label %stbtt_GetCodepointSDF.exit

stbtt_GetCodepointSDF.exit:                       ; preds = %bb.mz, %bb.na, %bb.nb, %._crit_edge495.split.i.i
  %.2186 = phi i32 [ 0, %bb.mz ], [ 0, %bb.na ], [ 0, %bb.nb ], [ %i.btz, %._crit_edge495.split.i.i ]
  %.2183 = phi i32 [ 0, %bb.mz ], [ 0, %bb.na ], [ 0, %bb.nb ], [ %i.bua, %._crit_edge495.split.i.i ]
  %.0.i.i = phi ptr [ null, %bb.mz ], [ null, %bb.na ], [ null, %bb.nb ], [ %i.bue, %._crit_edge495.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %.sink.split

.sink.split:                                      ; preds = %stbtt_GetCodepointBitmap.exit, %stbtt_GetCodepointSDF.exit
  %.0.i.i.sink = phi ptr [ %.0.i.i, %stbtt_GetCodepointSDF.exit ], [ %.0.i.i.i151, %stbtt_GetCodepointBitmap.exit ]
  %.0184.ph = phi i32 [ %.2186, %stbtt_GetCodepointSDF.exit ], [ %.1185, %stbtt_GetCodepointBitmap.exit ]
  %.0181.ph = phi i32 [ %.2183, %stbtt_GetCodepointSDF.exit ], [ %.1182, %stbtt_GetCodepointBitmap.exit ]
  %i.cth = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  store ptr %.0.i.i.sink, ptr %i.cth, align 8
  br label %bb.pf

bb.pf:                                            ; preds = %.sink.split, %bb.dm, %bb.my
  %.0184 = phi i32 [ 0, %bb.dm ], [ 0, %bb.my ], [ %.0184.ph, %.sink.split ] ; 2 uses
  %.0181 = phi i32 [ 0, %bb.dm ], [ 0, %bb.my ], [ %.0181.ph, %.sink.split ] ; 4 uses
  %i.cti = getelementptr inbounds nuw i8, ptr %i.zs, i64 16 ; 2 uses
  %i.ctj = load ptr, ptr %i.cti, align 8          ; 2 uses
  %.not142 = icmp eq ptr %i.ctj, null
  br i1 %.not142, label %bb.pi, label %stbtt_GetCodepointHMetrics.exit

stbtt_GetCodepointHMetrics.exit:                  ; preds = %bb.pf
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.zs, i64 12
  %.val.i163 = load ptr, ptr %i.r, align 8        ; 3 uses
  %.val4.i = load i32, ptr %i.wb, align 8
  %i.ctl = call fastcc i32 @stbtt_FindGlyphIndex(ptr %.val.i163, i32 %.val4.i, i32 noundef %i.zo) ; 2 uses
  %i.ctm = load i32, ptr %i.fp, align 4
  %i.ctn = sext i32 %i.ctm to i64
  %i.cto = getelementptr inbounds i8, ptr %.val.i163, i64 %i.ctn ; 2 uses
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.cto, i64 34
  %.val.i.i164 = load i8, ptr %i.ctp, align 1
  %i.ctq = getelementptr i8, ptr %i.cto, i64 35
  %.val31.i.i = load i8, ptr %i.ctq, align 1
  %i.ctr = zext i8 %.val.i.i164 to i32
  %i.cts = shl nuw nsw i32 %i.ctr, 8
  %i.ctt = zext i8 %.val31.i.i to i32
  %i.ctu = or disjoint i32 %i.cts, %i.ctt         ; 2 uses
  %i.ctv = icmp slt i32 %i.ctl, %i.ctu            ; 2 uses
  %i.ctw = load i32, ptr %i.fr, align 8
  %i.ctx = sext i32 %i.ctw to i64
  %i.cty = getelementptr inbounds i8, ptr %.val.i163, i64 %i.ctx ; 2 uses
  %i.ctz = shl nuw nsw i32 %i.ctu, 2
  %i.cua = zext nneg i32 %i.ctz to i64
  %i.cub = getelementptr i8, ptr %i.cty, i64 %i.cua ; 2 uses
  %i.cuc = getelementptr i8, ptr %i.cub, i64 -4
  %i.cud = getelementptr i8, ptr %i.cub, i64 -3
  %i.cue = shl nsw i32 %i.ctl, 2
  %i.cuf = sext i32 %i.cue to i64
  %i.cug = getelementptr inbounds i8, ptr %i.cty, i64 %i.cuf ; 2 uses
  %i.cuh = getelementptr i8, ptr %i.cug, i64 1
  %.val32.sink.in.i.i = select i1 %i.ctv, ptr %i.cug, ptr %i.cuc
  %.val33.sink.in.i.i = select i1 %i.ctv, ptr %i.cuh, ptr %i.cud
  %.val33.sink.i.i = load i8, ptr %.val33.sink.in.i.i, align 1
  %.val32.sink.i.i = load i8, ptr %.val32.sink.in.i.i, align 1
  %i.cui = zext i8 %.val32.sink.i.i to i16
  %i.cuj = shl nuw i16 %i.cui, 8
  %i.cuk = zext i8 %.val33.sink.i.i to i16
  %i.cul = or disjoint i16 %i.cuj, %i.cuk
  %i.cum = sitofp i16 %i.cul to float
  %i.cun = fmul float %i.yc, %i.cum
  %i.cuo = fptosi float %i.cun to i32
  store i32 %i.cuo, ptr %i.ctk, align 4
  %i.cup = icmp sgt i32 %.0181, %2
  %or.cond = select i1 %.not143, i1 %i.cup, i1 false
  br i1 %or.cond, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %stbtt_GetCodepointHMetrics.exit
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %i.zo, i32 noundef %.0181, i32 noundef %2) #39
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %stbtt_GetCodepointHMetrics.exit
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.zs, i64 24
  store i32 %.0184, ptr %i.cuq, align 8
  %i.cur = getelementptr inbounds nuw i8, ptr %i.zs, i64 28
  store i32 %.0181, ptr %i.cur, align 4
  %i.cus = getelementptr inbounds nuw i8, ptr %i.zs, i64 32
  store i32 1, ptr %i.cus, align 8
  %i.cut = getelementptr inbounds nuw i8, ptr %i.zs, i64 36
  store i32 1, ptr %i.cut, align 4
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.zs, i64 8 ; 2 uses
  %i.cuv = load i32, ptr %i.cuu, align 8
  %i.cuw = add nsw i32 %i.cuv, %i.za
  store i32 %i.cuw, ptr %i.cuu, align 8
  br label %bb.pi

bb.pi:                                            ; preds = %bb.ph, %bb.pf
  switch i32 %i.zo, label %bb.pm [
    i32 12288, label %stbtt_GetCodepointHMetrics.exit175
    i32 32, label %stbtt_GetCodepointHMetrics.exit175
  ]

stbtt_GetCodepointHMetrics.exit175:               ; preds = %bb.pi, %bb.pi
  %i.cux = getelementptr inbounds nuw i8, ptr %i.zs, i64 12 ; 2 uses
  %.val.i166 = load ptr, ptr %i.r, align 8        ; 3 uses
  %.val4.i167 = load i32, ptr %i.wb, align 8
  %i.cuy = call fastcc i32 @stbtt_FindGlyphIndex(ptr %.val.i166, i32 %.val4.i167, i32 noundef %i.zo) ; 2 uses
  %i.cuz = load i32, ptr %i.fp, align 4
  %i.cva = sext i32 %i.cuz to i64
  %i.cvb = getelementptr inbounds i8, ptr %.val.i166, i64 %i.cva ; 2 uses
  %i.cvc = getelementptr inbounds nuw i8, ptr %i.cvb, i64 34
  %.val.i.i168 = load i8, ptr %i.cvc, align 1
  %i.cvd = getelementptr i8, ptr %i.cvb, i64 35
end_hunk_2
begin_hunk_3_@GenImageFontAtlas:bb.a
  %indvars.iv321.prol = phi i64 [ %indvars.iv.next322.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv321.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jx, i64 %indvars.iv321.prol ; 2 uses
  store i8 -1, ptr %i.ko, align 1
  %i.kp = getelementptr inbounds nuw i8, ptr %.pre332, i64 %indvars.iv323.prol
  %i.kq = load i8, ptr %i.kp, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  store i8 %i.kq, ptr %i.kr, align 1
  %indvars.iv.next324.prol = add nuw nsw i64 %indvars.iv323.prol, 1 ; 2 uses
  %indvars.iv.next322.prol = add nuw nsw i64 %indvars.iv321.prol, 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter409
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !56

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv323.unr = phi i64 [ %indvars.iv323.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next324.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv321.unr = phi i64 [ %indvars.iv321.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next322.prol, %vec.epilog.scalar.ph.prol ]
  %i.ks = sub nsw i64 %indvars.iv323.ph, %wide.trip.count328
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %._crit_edge281, label %vec.epilog.scalar.ph

._crit_edge281:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block377, %vec.epilog.middle.block, %.loopexit
  tail call void @free(ptr noundef %.pre332) #39
  store ptr %i.jx, ptr %0, align 8
  store i32 2, ptr %i.bq, align 4
  store ptr %i.f, ptr %2, align 8
  br label %bb.w

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv323 = phi i64 [ %indvars.iv.next324.3, %vec.epilog.scalar.ph ], [ %indvars.iv323.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv321 = phi i64 [ %indvars.iv.next322.3, %vec.epilog.scalar.ph ], [ %indvars.iv321.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jx, i64 %indvars.iv321 ; 2 uses
  store i8 -1, ptr %i.ku, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre332, i64 %indvars.iv323
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  store i8 %i.kw, ptr %i.kx, align 1
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jx, i64 %indvars.iv321 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  store i8 -1, ptr %i.kz, align 1
  %i.la = getelementptr inbounds nuw i8, ptr %.pre332, i64 %indvars.iv323
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 1
  %i.lc = load i8, ptr %i.lb, align 1
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 3
  store i8 %i.lc, ptr %i.ld, align 1
  %i.le = getelementptr inbounds nuw i8, ptr %i.jx, i64 %indvars.iv321 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store i8 -1, ptr %i.lf, align 1
  %i.lg = getelementptr inbounds nuw i8, ptr %.pre332, i64 %indvars.iv323
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = getelementptr inbounds nuw i8, ptr %i.le, i64 5
  store i8 %i.li, ptr %i.lj, align 1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jx, i64 %indvars.iv321 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 6
  store i8 -1, ptr %i.ll, align 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.pre332, i64 %indvars.iv323
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 3
  %i.lo = load i8, ptr %i.ln, align 1
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 7
  store i8 %i.lo, ptr %i.lp, align 1
  %indvars.iv.next324.3 = add nuw nsw i64 %indvars.iv323, 4 ; 2 uses
  %indvars.iv.next322.3 = add nuw nsw i64 %indvars.iv321, 8
  %exitcond329.not.3 = icmp eq i64 %indvars.iv.next324.3, %wide.trip.count328
  br i1 %exitcond329.not.3, label %._crit_edge281, label %vec.epilog.scalar.ph, !llvm.loop !57

bb.w:                                             ; preds = %._crit_edge281, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @IsFontValid(ptr nofree noundef readonly byval(%struct.Font) align 8 captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ne ptr %i.g, null
  %or.cond5 = select i1 %or.cond, i1 %i.h, i1 false
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp ne ptr %i.j, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @stbtt_FindGlyphIndex(ptr nofree readonly %.8.val, i32 %.56.val, i32 noundef %0) unnamed_addr #16 {
bb.a:
  %i.a = zext i32 %.56.val to i64                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.a ; 21 uses
  %.val173 = load i8, ptr %i.b, align 1
  %i.c = getelementptr i8, ptr %i.b, i64 1
  %.val174 = load i8, ptr %i.c, align 1
  %i.d = zext i8 %.val173 to i16
  %i.e = shl nuw i16 %i.d, 8
  %i.f = zext i8 %.val174 to i16
  %i.g = or disjoint i16 %i.e, %i.f               ; 3 uses
  switch i16 %i.g, label %bb.m [
    i16 0, label %bb.b
    i16 6, label %bb.d
    i16 2, label %.loopexit
    i16 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.val171 = load i8, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %i.b, i64 3
  %.val172 = load i8, ptr %i.i, align 1
  %i.j = zext i8 %.val171 to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = zext i8 %.val172 to i32
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = add nsw i32 %i.m, -6
  %i.o = icmp slt i32 %0, %i.n
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.q = sext i32 %0 to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.val169 = load i8, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %i.b, i64 7
  %.val170 = load i8, ptr %i.v, align 1
  %i.w = zext i8 %.val169 to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = zext i8 %.val170 to i32
  %i.z = or disjoint i32 %i.x, %i.y               ; 3 uses
  %.not143 = icmp ult i32 %0, %i.z
  br i1 %.not143, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val167 = load i8, ptr %i.aa, align 1
  %i.ab = zext i8 %.val167 to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = getelementptr i8, ptr %i.b, i64 9
  %.val168 = load i8, ptr %i.ad, align 1
  %i.ae = zext i8 %.val168 to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = add nuw nsw i32 %i.af, %i.z
  %i.ah = icmp ult i32 %0, %i.ag
  br i1 %i.ah, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.aj = sub nuw nsw i32 %0, %i.z
  %i.ak = shl nuw nsw i32 %i.aj, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 2 uses
  %.val165 = load i8, ptr %i.am, align 1
  %i.an = getelementptr i8, ptr %i.am, i64 1
  %.val166 = load i8, ptr %i.an, align 1
  %i.ao = zext i8 %.val165 to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = zext i8 %.val166 to i32
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.val163 = load i8, ptr %i.as, align 1
  %i.at = getelementptr i8, ptr %i.b, i64 7
  %.val164 = load i8, ptr %i.at, align 1
  %i.au = zext i8 %.val163 to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = zext i8 %.val164 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 2 uses
  %i.ay = lshr i32 %i.ax, 1                       ; 2 uses
  %i.az = icmp sgt i32 %0, 65535
  br i1 %i.az, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = add i32 %.56.val, 14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.val157 = load i8, ptr %i.bb, align 1
  %i.bc = zext i8 %.val157 to i16
  %i.bd = shl nuw i16 %i.bc, 8
  %i.be = getelementptr i8, ptr %i.b, i64 13
  %.val158 = load i8, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.val159 = load i8, ptr %i.bf, align 1
  %i.bg = zext i8 %.val159 to i16
  %i.bh = shl nuw i16 %i.bg, 8                    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.b, i64 11
  %.val160 = load i8, ptr %i.bi, align 1
  %i.bj = zext i8 %.val160 to i16                 ; 3 uses
  %i.bk = or disjoint i16 %i.bh, %i.bj            ; 3 uses
  %i.bl = and i8 %.val158, -2
  %.masked = zext i8 %i.bl to i16
  %i.bm = or disjoint i16 %i.bd, %.masked         ; 2 uses
  %i.bn = zext i32 %i.ba to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.bn ; 2 uses
  %i.bp = zext i16 %i.bm to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 2 uses
  %.val155 = load i8, ptr %i.bq, align 1
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  %.val156 = load i8, ptr %i.br, align 1
  %i.bs = zext i8 %.val155 to i32
  %i.bt = shl nuw nsw i32 %i.bs, 8
  %i.bu = zext i8 %.val156 to i32
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %.not = icmp slt i32 %0, %i.bv
  %i.bw = zext i16 %i.bm to i32
  %i.bx = select i1 %.not, i32 0, i32 %i.bw
  %.0123 = add i32 %.56.val, 12
  %i.by = add i32 %.0123, %i.bx                   ; 4 uses
  %.not1427 = icmp eq i16 %i.bk, 0
  br i1 %.not1427, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val161 = load i8, ptr %i.bz, align 1
  %i.ca = zext i8 %.val161 to i16
  %i.cb = shl nuw i16 %i.ca, 8
  %i.cc = getelementptr i8, ptr %i.b, i64 9
  %.val162 = load i8, ptr %i.cc, align 1
  %i.cd = zext i8 %.val162 to i16
  %1 = or disjoint i16 %i.cb, %i.cd               ; 2 uses
  %i.ce = or disjoint i16 %i.bh, %i.bj
  %xtraiter = and i16 %i.bj, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0127.prol = lshr i16 %1, 1                    ; 2 uses
  %i.cf = zext i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cf
  %i.ch = and i16 %.0127.prol, 32766              ; 2 uses
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci ; 2 uses
  %.val153.prol = load i8, ptr %i.cj, align 1
  %i.ck = getelementptr i8, ptr %i.cj, i64 1
  %.val154.prol = load i8, ptr %i.ck, align 1
  %i.cl = zext i8 %.val153.prol to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = zext i8 %.val154.prol to i32
  %i.co = or disjoint i32 %i.cm, %i.cn
  %i.cp = icmp sgt i32 %0, %i.co
  %i.cq = zext nneg i16 %i.ch to i32
  %i.cr = select i1 %i.cp, i32 %i.cq, i32 0
  %.2125.prol = add i32 %i.cr, %i.by              ; 2 uses
  %i.cs = add nsw i16 %i.bk, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2125.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.112410.unr = phi i32 [ %i.by, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.01269.unr = phi i16 [ %i.bk, %.lr.ph.preheader ], [ %i.cs, %.lr.ph.prol ]
  %.0127.in8.unr = phi i16 [ %1, %.lr.ph.preheader ], [ %.0127.prol, %.lr.ph.prol ]
  %i.ct = icmp eq i16 %i.ce, 1
  br i1 %i.ct, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.112410 = phi i32 [ %.2125.1, %.lr.ph ], [ %.112410.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.01269 = phi i16 [ %i.du, %.lr.ph ], [ %.01269.unr, %.lr.ph.prol.loopexit ]
  %.0127.in8 = phi i16 [ %.0127.1, %.lr.ph ], [ %.0127.in8.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0127 = lshr i16 %.0127.in8, 1
  %i.cu = zext i32 %.112410 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cu
  %i.cw = and i16 %.0127, 32766                   ; 2 uses
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx ; 2 uses
  %.val153 = load i8, ptr %i.cy, align 1
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %.val154 = load i8, ptr %i.cz, align 1
  %i.da = zext i8 %.val153 to i32
  %i.db = shl nuw nsw i32 %i.da, 8
  %i.dc = zext i8 %.val154 to i32
  %i.dd = or disjoint i32 %i.db, %i.dc
  %i.de = icmp sgt i32 %0, %i.dd
  %i.df = zext nneg i16 %i.cw to i32
  %i.dg = select i1 %i.de, i32 %i.df, i32 0
  %.2125 = add i32 %i.dg, %.112410                ; 2 uses
  %.0127.1 = lshr i16 %.0127.in8, 2               ; 2 uses
  %i.dh = zext i32 %.2125 to i64
  %i.di = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.dh
  %i.dj = and i16 %.0127.1, 16382                 ; 2 uses
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk ; 2 uses
  %.val153.1 = load i8, ptr %i.dl, align 1
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  %.val154.1 = load i8, ptr %i.dm, align 1
  %i.dn = zext i8 %.val153.1 to i32
  %i.do = shl nuw nsw i32 %i.dn, 8
  %i.dp = zext i8 %.val154.1 to i32
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = icmp sgt i32 %0, %i.dq
  %i.ds = zext nneg i16 %i.dj to i32
  %i.dt = select i1 %i.dr, i32 %i.ds, i32 0
  %.2125.1 = add i32 %i.dt, %.2125                ; 2 uses
  %i.du = add i16 %.01269, -2                     ; 2 uses
  %.not142.1 = icmp eq i16 %i.du, 0
  br i1 %.not142.1, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %.1124.lcssa = phi i32 [ %i.by, %bb.h ], [ %.2125.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2125.1, %.lr.ph ]
  %reass.sub = sub i32 %.1124.lcssa, %.56.val
  %i.dv = add i32 %reass.sub, 131060
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.dx = and i32 %i.ax, 65534
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.eb = and i32 %i.dv, 131070
  %i.ec = zext nneg i32 %i.eb to i64              ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec ; 2 uses
  %.val151 = load i8, ptr %i.ed, align 1
  %i.ee = getelementptr i8, ptr %i.ed, i64 1
  %.val152 = load i8, ptr %i.ee, align 1
  %i.ef = zext i8 %.val151 to i32
  %i.eg = shl nuw nsw i32 %i.ef, 8
  %i.eh = zext i8 %.val152 to i32
  %i.ei = or disjoint i32 %i.eg, %i.eh            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ec ; 2 uses
  %.val149 = load i8, ptr %i.ej, align 1
  %i.ek = getelementptr i8, ptr %i.ej, i64 1
  %.val150 = load i8, ptr %i.ek, align 1
  %i.el = zext i8 %.val149 to i32
  %i.em = shl nuw nsw i32 %i.el, 8
  %i.en = zext i8 %.val150 to i32
  %i.eo = or disjoint i32 %i.em, %i.en
  %i.ep = icmp slt i32 %0, %i.ei
  %i.eq = icmp sgt i32 %0, %i.eo
  %or.cond145 = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond145, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.er = mul nuw nsw i32 %i.ay, 6
  %i.es = zext nneg i32 %i.er to i64              ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ec ; 2 uses
  %.val147 = load i8, ptr %i.ev, align 1
  %i.ew = getelementptr i8, ptr %i.ev, i64 1
  %.val148 = load i8, ptr %i.ew, align 1
  %i.ex = zext i8 %.val147 to i16
  %i.ey = shl nuw i16 %i.ex, 8
  %i.ez = zext i8 %.val148 to i16
  %i.fa = or disjoint i16 %i.ey, %i.ez            ; 2 uses
  %i.fb = icmp eq i16 %i.fa, 0
  br i1 %i.fb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fc = shl nuw nsw i32 %i.ay, 2
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ec ; 2 uses
  %.val175 = load i8, ptr %i.fg, align 1
  %i.fh = getelementptr i8, ptr %i.fg, i64 1
  %.val176 = load i8, ptr %i.fh, align 1
  %i.fi = zext i8 %.val175 to i32
  %i.fj = shl nuw nsw i32 %i.fi, 8
  %i.fk = zext i8 %.val176 to i32
  %i.fl = or disjoint i32 %i.fj, %i.fk
  %i.fm = add nuw nsw i32 %i.fl, %0
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.fn = zext i16 %i.fa to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.fn
  %i.fp = sub nsw i32 %0, %i.ei
  %i.fq = shl nuw nsw i32 %i.fp, 1
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.es
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ec ; 2 uses
  %.val = load i8, ptr %i.fw, align 1
  %i.fx = getelementptr i8, ptr %i.fw, i64 1
  %.val146 = load i8, ptr %i.fx, align 1
  %i.fy = zext i8 %.val to i32
  %i.fz = shl nuw nsw i32 %i.fy, 8
  %i.ga = zext i8 %.val146 to i32
  %i.gb = or disjoint i32 %i.fz, %i.ga
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.j
  %.2132.shrunk = phi i32 [ %i.gb, %bb.k ], [ %i.fm, %bb.j ], [ 0, %._crit_edge ]
  %.2132 = and i32 %.2132.shrunk, 65535
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.gc = icmp eq i16 %i.g, 12
  %i.gd = and i16 %i.g, -2
  %or.cond = icmp eq i16 %i.gd, 12
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.gf = load i32, ptr %i.ge, align 1
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %i.gf) ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %bb.n
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph14, %bb.r
  %.012 = phi i32 [ %i.gg, %.lr.ph14 ], [ %.2, %bb.r ] ; 2 uses
  %.012011 = phi i32 [ 0, %.lr.ph14 ], [ %.2122, %bb.r ] ; 3 uses
  %i.gj = sub nsw i32 %.012, %.012011
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = add nuw nsw i32 %i.gk, %.012011         ; 3 uses
  %i.gm = mul nsw i32 %i.gl, 12
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gn ; 3 uses
  %i.gp = load i32, ptr %i.go, align 1
  %i.gq = tail call i32 @llvm.bswap.i32(i32 %i.gp) ; 2 uses
  %i.gr = icmp ult i32 %0, %i.gq
  br i1 %i.gr, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gt = load i32, ptr %i.gs, align 1
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gv = icmp ugt i32 %0, %i.gu
  br i1 %i.gv, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.gw = add nuw nsw i32 %i.gl, 1
  br label %bb.r

.thread:                                          ; preds = %bb.p
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gy = load i32, ptr %i.gx, align 1
  %i.gz = tail call i32 @llvm.bswap.i32(i32 %i.gy)
  %i.ha = sub i32 %0, %i.gq
  %i.hb = select i1 %i.gc, i32 %i.ha, i32 0
  %.5 = add i32 %i.gz, %i.hb
  br label %.loopexit

bb.r:                                             ; preds = %bb.q, %bb.o
  %.2122 = phi i32 [ %.012011, %bb.o ], [ %i.gw, %bb.q ] ; 2 uses
  %.2 = phi i32 [ %i.gl, %bb.o ], [ %.012, %bb.q ] ; 2 uses
  %i.hc = icmp slt i32 %.2122, %.2
  br i1 %i.hc, label %bb.o, label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.n, %.thread, %bb.m, %bb.l, %bb.g, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.8 = phi i32 [ 0, %bb.m ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.g ], [ %i.t, %bb.c ], [ %i.ar, %bb.f ], [ 0, %bb.e ], [ %.2132, %bb.l ], [ %.5, %.thread ], [ 0, %bb.n ], [ 0, %bb.r ]
  ret i32 %.8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #17
end_hunk_3
begin_hunk_4_@stbtt__cff_int:bb.a
  %i.ai = shl nuw nsw i32 %i.ah, 8
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.k, %bb.j
  %i.aj = phi i32 [ %i.ad, %bb.k ], [ %i.f, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %i.ai, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %i.aj, %i.d
  br i1 %.not.i.i.1, label %bb.l, label %stbtt__buf_get.exit

bb.l:                                             ; preds = %stbtt__buf_get8.exit.i
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.a, align 8
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds i8, ptr %i.e, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = or disjoint i32 %.0.i.i, %i.ao
  br label %stbtt__buf_get.exit

bb.m:                                             ; preds = %bb.i
  %.not.i.i31 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i.i31, label %bb.n, label %stbtt__buf_get8.exit.i32

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.b, 2                     ; 2 uses
  store i32 %i.aq, ptr %i.a, align 8
  %i.ar = sext i32 %i.f to i64
  %i.as = getelementptr inbounds i8, ptr %i.e, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  br label %stbtt__buf_get8.exit.i32

stbtt__buf_get8.exit.i32:                         ; preds = %bb.n, %bb.m
  %i.aw = phi i32 [ %i.aq, %bb.n ], [ %i.f, %bb.m ] ; 4 uses
  %.0.i.i33 = phi i32 [ %i.av, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.not.i.i31.1 = icmp slt i32 %i.aw, %i.d
  br i1 %.not.i.i31.1, label %bb.o, label %stbtt__buf_get8.exit.i32.1

bb.o:                                             ; preds = %stbtt__buf_get8.exit.i32
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  store i32 %i.ax, ptr %i.a, align 8
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds i8, ptr %i.e, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %.0.i.i33, %i.bb
  br label %stbtt__buf_get8.exit.i32.1

stbtt__buf_get8.exit.i32.1:                       ; preds = %bb.o, %stbtt__buf_get8.exit.i32
  %i.bd = phi i32 [ %i.ax, %bb.o ], [ %i.aw, %stbtt__buf_get8.exit.i32 ] ; 4 uses
  %.0.i.i33.1 = phi i32 [ %i.bc, %bb.o ], [ %.0.i.i33, %stbtt__buf_get8.exit.i32 ]
  %i.be = shl nuw nsw i32 %.0.i.i33.1, 8          ; 2 uses
  %.not.i.i31.2 = icmp slt i32 %i.bd, %i.d
  br i1 %.not.i.i31.2, label %bb.p, label %stbtt__buf_get8.exit.i32.2

bb.p:                                             ; preds = %stbtt__buf_get8.exit.i32.1
  %i.bf = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.bf, ptr %i.a, align 8
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds i8, ptr %i.e, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.be, %i.bj
  br label %stbtt__buf_get8.exit.i32.2

stbtt__buf_get8.exit.i32.2:                       ; preds = %bb.p, %stbtt__buf_get8.exit.i32.1
  %i.bl = phi i32 [ %i.bf, %bb.p ], [ %i.bd, %stbtt__buf_get8.exit.i32.1 ] ; 3 uses
  %.0.i.i33.2 = phi i32 [ %i.bk, %bb.p ], [ %i.be, %stbtt__buf_get8.exit.i32.1 ]
  %i.bm = shl nuw i32 %.0.i.i33.2, 8              ; 2 uses
  %.not.i.i31.3 = icmp slt i32 %i.bl, %i.d
  br i1 %.not.i.i31.3, label %bb.q, label %stbtt__buf_get.exit

bb.q:                                             ; preds = %stbtt__buf_get8.exit.i32.2
  %i.bn = add nsw i32 %i.bl, 1
  store i32 %i.bn, ptr %i.a, align 8
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds i8, ptr %i.e, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bm, %i.br
  br label %stbtt__buf_get.exit

stbtt__buf_get.exit:                              ; preds = %stbtt__buf_get8.exit.i32.2, %bb.q, %stbtt__buf_get8.exit.i, %bb.l, %bb.a, %bb.i, %stbtt__buf_get8.exit27, %stbtt__buf_get8.exit24, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.u, %stbtt__buf_get8.exit24 ], [ %i.ac, %stbtt__buf_get8.exit27 ], [ %.0.i.i, %stbtt__buf_get8.exit.i ], [ 0, %bb.a ], [ 0, %bb.i ], [ %i.ap, %bb.l ], [ %i.bs, %bb.q ], [ %i.bm, %stbtt__buf_get8.exit.i32.2 ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @stbtt_GetGlyphShape(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #25 {
bb.a:
  %3 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %4 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.cb

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4
  %.not.i17 = icmp slt i32 %1, %i.g
  br i1 %.not.i17, label %bb.c, label %stbtt__GetGlyfOffset.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %stbtt__GetGlyfOffset.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.i, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i32 %1, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 4 uses
  %.val28.i = load i8, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val29.i = load i8, ptr %i.u, align 1
  %i.v = zext i8 %.val28.i to i32
  %i.w = zext i8 %.val29.i to i32
  %i.x = shl nuw nsw i32 %i.v, 9
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.val.i19 = load i8, ptr %i.aa, align 1
  %i.ab = getelementptr i8, ptr %i.t, i64 3
  %.val27.i = load i8, ptr %i.ab, align 1
  %i.ac = zext i8 %.val.i19 to i32
  %i.ad = zext i8 %.val27.i to i32
  %i.ae = shl nuw nsw i32 %i.ac, 9
  %i.af = shl nuw nsw i32 %i.ad, 1
  %i.ag = or disjoint i32 %i.af, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = shl nsw i32 %1, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i18 = phi i32 [ %i.ao, %bb.f ], [ %i.ag, %bb.e ]
  %.pn.i = phi i32 [ %i.al, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %.023.i = add i32 %.pn.i, %i.m                  ; 2 uses
  %i.ap = icmp eq i32 %.pn.i, %.sink.i18
  br i1 %i.ap, label %stbtt__GetGlyfOffset.exit.thread, label %stbtt__GetGlyfOffset.exit

stbtt__GetGlyfOffset.exit.thread:                 ; preds = %bb.b, %bb.c, %bb.g
  store ptr null, ptr %2, align 8
  br label %stbtt__GetGlyphShapeTT.exit

stbtt__GetGlyfOffset.exit:                        ; preds = %bb.g
  store ptr null, ptr %2, align 8
  %i.aq = icmp slt i32 %.023.i, 0
  br i1 %i.aq, label %stbtt__GetGlyphShapeTT.exit, label %bb.h

bb.h:                                             ; preds = %stbtt__GetGlyfOffset.exit
  %i.ar = zext nneg i32 %.023.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ar ; 4 uses
  %.val394.i = load i8, ptr %i.as, align 1
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %.val395.i = load i8, ptr %i.at, align 1
  %i.au = zext i8 %.val394.i to i16
  %i.av = shl nuw i16 %i.au, 8                    ; 2 uses
  %i.aw = zext i8 %.val395.i to i16
  %i.ax = or disjoint i16 %i.av, %i.aw            ; 2 uses
  %i.ay = icmp sgt i16 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.bf

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 10 ; 2 uses
  %i.ba = shl nuw i16 %i.ax, 1                    ; 3 uses
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = zext i16 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 5 uses
  %.val372.i = load i8, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  %.val373.i = load i8, ptr %i.be, align 1
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -2
  %.val370.i = load i8, ptr %i.bf, align 1
  %i.bg = getelementptr i8, ptr %i.bd, i64 -1
  %.val371.i = load i8, ptr %i.bg, align 1
  %i.bh = zext i8 %.val370.i to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8                ; 3 uses
  %i.bj = zext i8 %.val371.i to i32               ; 3 uses
  %i.bk = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  %i.bl = or disjoint i32 %i.bb, 1
  %i.bm = add nuw nsw i32 %i.bl, %i.bk
  %narrow.i = mul nuw nsw i32 %i.bm, 14
  %i.bn = zext nneg i32 %narrow.i to i64
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bn) #42, !inline_history !76 ; 17 uses
  %.not368.i = icmp eq ptr %i.bo, null
  br i1 %.not368.i, label %stbtt__GetGlyphShapeTT.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = zext i8 %.val372.i to i64
  %i.bq = shl nuw nsw i64 %i.bp, 8
  %i.br = zext i8 %.val373.i to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br ; 2 uses
  %i.bv = zext i16 %i.ba to i64                   ; 3 uses
  %5 = or disjoint i32 %i.bi, %i.bj
  %i.bw = add nuw nsw i32 %5, 1
  %wide.trip.count71 = zext nneg i32 %i.bw to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [14 x i8], ptr %i.bo, i64 %i.bv ; 3 uses
  %6 = or disjoint i32 %i.bi, %i.bj               ; 2 uses
  %7 = add nuw nsw i32 %6, 1                      ; 2 uses
  %8 = zext nneg i32 %7 to i64                    ; 2 uses
  %xtraiter = and i64 %8, 1
  %i.bx = icmp eq i32 %6, 0
  br i1 %i.bx, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %8, 131070
  br label %bb.k

bb.k:                                             ; preds = %bb.s, %.new
  %indvars.iv69 = phi i64 [ 0, %.new ], [ %indvars.iv.next70.1, %bb.s ] ; 3 uses
  %.0283.i42 = phi ptr [ %i.bu, %.new ], [ %.1284.i.1, %bb.s ] ; 4 uses
  %.0322.i40 = phi i8 [ 0, %.new ], [ %.1323.i.1, %bb.s ] ; 2 uses
  %.0324.i39 = phi i8 [ 0, %.new ], [ %.1325.i.1, %bb.s ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.s ]
  %i.by = icmp eq i8 %.0322.i40, 0
  br i1 %i.by, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.0283.i42, i64 1 ; 2 uses
  %i.ca = load i8, ptr %.0283.i42, align 1        ; 3 uses
  %i.cb = and i8 %i.ca, 8
  %.not367.i = icmp eq i8 %i.cb, 0
  br i1 %.not367.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.0283.i42, i64 2
  %i.cd = load i8, ptr %i.bz, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ce = add i8 %.0322.i40, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.1325.i = phi i8 [ %i.ca, %bb.m ], [ %i.ca, %bb.l ], [ %.0324.i39, %bb.n ] ; 2 uses
  %.1323.i = phi i8 [ %i.cd, %bb.m ], [ 0, %bb.l ], [ %i.ce, %bb.n ] ; 2 uses
  %.1284.i = phi ptr [ %i.cc, %bb.m ], [ %i.bz, %bb.l ], [ %.0283.i42, %bb.n ] ; 4 uses
  %gep = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69
  %i.cf = getelementptr inbounds nuw i8, ptr %gep, i64 12
  store i8 %.1325.i, ptr %i.cf, align 2
  %i.cg = icmp eq i8 %.1323.i, 0
  br i1 %i.cg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = add i8 %.1323.i, -1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %.1284.i, i64 1 ; 2 uses
  %i.cj = load i8, ptr %.1284.i, align 1          ; 3 uses
  %i.ck = and i8 %i.cj, 8
  %.not367.i.1 = icmp eq i8 %i.ck, 0
  br i1 %.not367.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %.1284.i, i64 2
  %i.cm = load i8, ptr %i.ci, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.1325.i.1 = phi i8 [ %i.cj, %bb.r ], [ %i.cj, %bb.q ], [ %.1325.i, %bb.p ] ; 3 uses
  %.1323.i.1 = phi i8 [ %i.cm, %bb.r ], [ 0, %bb.q ], [ %i.ch, %bb.p ] ; 2 uses
  %.1284.i.1 = phi ptr [ %i.cl, %bb.r ], [ %i.ci, %bb.q ], [ %.1284.i, %bb.p ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 26
  store i8 %.1325.i.1, ptr %i.co, align 2
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader31.preheader.unr-lcssa, label %bb.k

.preheader31.preheader.unr-lcssa:                 ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader31.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader31.preheader.unr-lcssa, %bb.j
  %indvars.iv69.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next70.1, %.preheader31.preheader.unr-lcssa ]
  %.0283.i42.epil.init = phi ptr [ %i.bu, %bb.j ], [ %.1284.i.1, %.preheader31.preheader.unr-lcssa ] ; 4 uses
  %.0322.i40.epil.init = phi i8 [ 0, %bb.j ], [ %.1323.i.1, %.preheader31.preheader.unr-lcssa ]
  %.0324.i39.epil.init = phi i8 [ 0, %bb.j ], [ %.1325.i.1, %.preheader31.preheader.unr-lcssa ]
  %lcmp.mod111 = trunc i32 %7 to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.cp = icmp eq i8 %.0322.i40.epil.init, 0
  br i1 %i.cp, label %bb.t, label %.preheader31.preheader.epilog-lcssa

bb.t:                                             ; preds = %.epil.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %.0283.i42.epil.init, i64 1
  %i.cr = load i8, ptr %.0283.i42.epil.init, align 1 ; 2 uses
  %i.cs = and i8 %i.cr, 8
  %.not367.i.epil = icmp eq i8 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %.0283.i42.epil.init, i64 2
  %spec.select = select i1 %.not367.i.epil, ptr %i.cq, ptr %i.ct
  br label %.preheader31.preheader.epilog-lcssa

.preheader31.preheader.epilog-lcssa:              ; preds = %bb.t, %.epil.preheader
  %.1325.i.epil = phi i8 [ %.0324.i39.epil.init, %.epil.preheader ], [ %i.cr, %bb.t ]
  %.1284.i.epil = phi ptr [ %.0283.i42.epil.init, %.epil.preheader ], [ %spec.select, %bb.t ]
  %gep.epil = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv69.epil.init
  %i.cu = getelementptr inbounds nuw i8, ptr %gep.epil, i64 12
  store i8 %.1325.i.epil, ptr %i.cu, align 2
  br label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %.preheader31.preheader.unr-lcssa, %.preheader31.preheader.epilog-lcssa
  %.1284.i.lcssa = phi ptr [ %.1284.i.1, %.preheader31.preheader.unr-lcssa ], [ %.1284.i.epil, %.preheader31.preheader.epilog-lcssa ]
  %invariant.gep89 = getelementptr inbounds nuw [14 x i8], ptr %i.bo, i64 %i.bv
  br label %.preheader31

.preheader31:                                     ; preds = %.preheader31.preheader, %bb.x
  %indvars.iv73 = phi i64 [ 0, %.preheader31.preheader ], [ %indvars.iv.next74, %bb.x ] ; 2 uses
  %.2285.i45 = phi ptr [ %.1284.i.lcssa, %.preheader31.preheader ], [ %.3286.i, %bb.x ] ; 6 uses
  %.0306.i44 = phi i16 [ 0, %.preheader31.preheader ], [ %.1307.i, %bb.x ] ; 3 uses
  %gep90 = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep89, i64 %indvars.iv73 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %gep90, i64 12
  %i.cw = load i8, ptr %i.cv, align 2
  %i.cx = zext i8 %i.cw to i32                    ; 3 uses
  %i.cy = and i32 %i.cx, 2
  %.not364.i = icmp eq i32 %i.cy, 0
  br i1 %.not364.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader31
  %i.cz = getelementptr inbounds nuw i8, ptr %.2285.i45, i64 1
  %i.da = load i8, ptr %.2285.i45, align 1
  %i.db = and i32 %i.cx, 16
  %.not366.i = icmp eq i32 %i.db, 0
  %i.dc = zext i8 %i.da to i16                    ; 2 uses
  %i.dd = sub nsw i16 0, %i.dc
  %i.de = select i1 %.not366.i, i16 %i.dd, i16 %i.dc
  %i.df = add i16 %i.de, %.0306.i44
  br label %bb.x

bb.v:                                             ; preds = %.preheader31
  %i.dg = and i32 %i.cx, 16
  %.not365.i = icmp eq i32 %i.dg, 0
  br i1 %.not365.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dh = load i8, ptr %.2285.i45, align 1
  %i.di = zext i8 %i.dh to i16
  %i.dj = shl nuw i16 %i.di, 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.2285.i45, i64 1
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i16
  %i.dn = or disjoint i16 %i.dj, %i.dm
  %i.do = add i16 %i.dn, %.0306.i44
  %i.dp = getelementptr inbounds nuw i8, ptr %.2285.i45, i64 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1307.i = phi i16 [ %i.df, %bb.u ], [ %.0306.i44, %bb.v ], [ %i.do, %bb.w ] ; 2 uses
  %.3286.i = phi ptr [ %i.cz, %bb.u ], [ %.2285.i45, %bb.v ], [ %i.dp, %bb.w ] ; 2 uses
  store i16 %.1307.i, ptr %gep90, align 2
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count71
  br i1 %exitcond76.not, label %.preheader30.preheader, label %.preheader31

.preheader30.preheader:                           ; preds = %bb.x
  %invariant.gep91 = getelementptr inbounds nuw [14 x i8], ptr %i.bo, i64 %i.bv
  br label %.preheader30

.preheader30:                                     ; preds = %.preheader30.preheader, %bb.ab
  %indvars.iv77 = phi i64 [ 0, %.preheader30.preheader ], [ %indvars.iv.next78, %bb.ab ] ; 2 uses
  %.4287.i48 = phi ptr [ %.3286.i, %.preheader30.preheader ], [ %.5.i, %bb.ab ] ; 6 uses
  %.0304.i47 = phi i16 [ 0, %.preheader30.preheader ], [ %.1305.i, %bb.ab ] ; 3 uses
  %gep92 = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep91, i64 %indvars.iv77 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %gep92, i64 12
  %i.dr = load i8, ptr %i.dq, align 2
  %i.ds = zext i8 %i.dr to i32                    ; 3 uses
  %i.dt = and i32 %i.ds, 4
  %.not361.i = icmp eq i32 %i.dt, 0
  br i1 %.not361.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader30
  %i.du = getelementptr inbounds nuw i8, ptr %.4287.i48, i64 1
  %i.dv = load i8, ptr %.4287.i48, align 1
  %i.dw = and i32 %i.ds, 32
  %.not363.i = icmp eq i32 %i.dw, 0
  %i.dx = zext i8 %i.dv to i16                    ; 2 uses
  %i.dy = sub nsw i16 0, %i.dx
  %i.dz = select i1 %.not363.i, i16 %i.dy, i16 %i.dx
  %i.ea = add i16 %i.dz, %.0304.i47
  br label %bb.ab

bb.z:                                             ; preds = %.preheader30
  %i.eb = and i32 %i.ds, 32
  %.not362.i = icmp eq i32 %i.eb, 0
  br i1 %.not362.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ec = load i8, ptr %.4287.i48, align 1
  %i.ed = zext i8 %i.ec to i16
  %i.ee = shl nuw i16 %i.ed, 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.4287.i48, i64 1
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i16
  %i.ei = or disjoint i16 %i.ee, %i.eh
  %i.ej = add i16 %i.ei, %.0304.i47
  %i.ek = getelementptr inbounds nuw i8, ptr %.4287.i48, i64 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1305.i = phi i16 [ %i.ea, %bb.y ], [ %.0304.i47, %bb.z ], [ %i.ej, %bb.aa ] ; 2 uses
  %.5.i = phi ptr [ %i.du, %bb.y ], [ %.4287.i48, %bb.z ], [ %i.ek, %bb.aa ]
  %i.el = getelementptr inbounds nuw i8, ptr %gep92, i64 2
  store i16 %.1305.i, ptr %i.el, align 2
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count71
  br i1 %exitcond80.not, label %.preheader, label %.preheader30

.preheader:                                       ; preds = %bb.ab, %bb.aw
  %.0288.i65 = phi i32 [ %.2290.i, %bb.aw ], [ 0, %bb.ab ] ; 6 uses
  %.0291.i63 = phi i32 [ %.2293.i, %bb.aw ], [ 0, %bb.ab ] ; 6 uses
  %.0294.i62 = phi i32 [ %.2296.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0297.i61 = phi i32 [ %.2299.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0300.i58 = phi i32 [ %.1301.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0302.i55 = phi i32 [ %.1303.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0308.i54 = phi i32 [ %.1309.i, %bb.aw ], [ 0, %bb.ab ] ; 4 uses
  %.0310.i53 = phi i32 [ %.1311.i, %bb.aw ], [ 0, %bb.ab ] ; 2 uses
  %.0312.i52 = phi i32 [ %.1313.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0314.i51 = phi i32 [ %.1315.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.3319.i50 = phi i32 [ %i.iv, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0329.i49 = phi i32 [ %.4333.i, %bb.aw ], [ 0, %bb.ab ] ; 12 uses
  %i.em = add nsw i32 %.3319.i50, %i.bb
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.en ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.eq = load i8, ptr %i.ep, align 2             ; 2 uses
  %i.er = load i16, ptr %i.eo, align 2            ; 3 uses
  %i.es = sext i16 %i.er to i32                   ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eu = load i16, ptr %i.et, align 2            ; 3 uses
  %i.ev = sext i16 %i.eu to i32                   ; 7 uses
  %i.ew = icmp eq i32 %.0312.i52, %.3319.i50
  br i1 %i.ew, label %bb.ac, label %bb.ap

bb.ac:                                            ; preds = %.preheader
  %.not358.i = icmp eq i32 %.0312.i52, 0
  br i1 %.not358.i, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i10 = icmp eq i32 %.0308.i54, 0
  %.not27.i11 = icmp eq i32 %.0310.i53, 0         ; 2 uses
  br i1 %.not.i10, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not27.i11, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ex = add nsw i32 %.0329.i49, 1
  %i.ey = sext i32 %.0329.i49 to i64
  %i.ez = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.ey ; 5 uses
  %i.fa = add nsw i32 %.0291.i63, %.0302.i55
  %i.fb = lshr i32 %i.fa, 1
  %i.fc = add nsw i32 %.0288.i65, %.0300.i58
  %i.fd = lshr i32 %i.fc, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i8 3, ptr %i.fe, align 2
  %i.ff = trunc i32 %i.fb to i16
  store i16 %i.ff, ptr %i.ez, align 2
  %i.fg = trunc i32 %i.fd to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  store i16 %i.fg, ptr %i.fh, align 2
  %i.fi = trunc nsw i32 %.0302.i55 to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i16 %i.fi, ptr %i.fj, align 2
  %i.fk = trunc nsw i32 %.0300.i58 to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 6
  store i16 %i.fk, ptr %i.fl, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.i12 = phi i32 [ %i.ex, %bb.af ], [ %.0329.i49, %bb.ae ] ; 2 uses
  %i.fm = sext i32 %.0.i12 to i64                 ; 2 uses
  %i.fn = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.fm ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  store i8 3, ptr %i.fo, align 2
  %i.fp = trunc i32 %.0297.i61 to i16
  store i16 %i.fp, ptr %i.fn, align 2
  %i.fq = trunc i32 %.0294.i62 to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  store i16 %i.fq, ptr %i.fr, align 2
  %i.fs = trunc nsw i32 %.0291.i63 to i16
end_hunk_4
