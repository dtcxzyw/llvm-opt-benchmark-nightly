Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 119
begin_hunk_0_@stbi__do_zlib:bb.a

stbi__zreceive.exit.i.i:                          ; preds = %stbi__zget8.exit.i.i.i.i, %bb.p, %bb.o
  %i.cd = phi i32 [ %i.bp, %bb.o ], [ %i.bs, %bb.p ], [ %i.cb, %stbi__zget8.exit.i.i.i.i ]
  %i.ce = phi i32 [ %i.bo, %bb.o ], [ %i.bt, %bb.p ], [ %i.ca, %stbi__zget8.exit.i.i.i.i ]
  %i.cf = lshr i32 %i.ce, %i.bq                   ; 2 uses
  store i32 %i.cf, ptr %i.y, align 8
  %i.cg = sub nsw i32 %i.cd, %i.bq                ; 2 uses
  store i32 %i.cg, ptr %i.x, align 8
  br label %bb.s

bb.s:                                             ; preds = %stbi__zreceive.exit.i.i, %bb.n
  %.promoted.i.i = phi i32 [ %i.cf, %stbi__zreceive.exit.i.i ], [ %i.bo, %bb.n ] ; 2 uses
  %.pr.i.i = phi i32 [ %i.cg, %stbi__zreceive.exit.i.i ], [ %i.bp, %bb.n ] ; 6 uses
  %i.ch = icmp sgt i32 %.pr.i.i, 0
  br i1 %i.ch, label %.lr.ph.i.i, label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.s
  %i.ci = add nsw i32 %.pr.i.i, -1                ; 3 uses
  %i.cj = lshr i32 %i.ci, 3
  %i.ck = add nuw nsw i32 %i.cj, 1
  %wide.trip.count.i = zext nneg i32 %i.ck to i64 ; 3 uses
  %xtraiter482 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.cl = icmp ult i32 %.pr.i.i, 25
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i, 1073741820
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.t ] ; 5 uses
  %i.cm = phi i32 [ %.promoted.i.i, %.lr.ph.i.i.new ], [ 0, %bb.t ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.t ]
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  store i8 %i.cn, ptr %i.co, align 2
  %i.cp = lshr i32 %i.cm, 8
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 %i.cq, ptr %i.cs, align 1
  %i.ct = lshr i32 %i.cm, 16
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 %i.cu, ptr %i.cw, align 2
  %i.cx = lshr i32 %i.cm, 24
  %i.cy = trunc nuw i32 %i.cx to i8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  store i8 %i.cy, ptr %i.da, align 1
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.t

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod483.not = icmp eq i64 %xtraiter482, 0
  br i1 %lcmp.mod483.not, label %bb.v, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted.i.i, %.lr.ph.i.i ], [ 0, %.unr-lcssa ]
  %lcmp.mod486 = icmp ne i64 %xtraiter482, 0
  tail call void @llvm.assume(i1 %lcmp.mod486)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.u ] ; 3 uses
  %i.db = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.de, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.dc = trunc i32 %i.db to i8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.epil
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = lshr i32 %i.db, 8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter482
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.u, !llvm.loop !20

.epilog-lcssa:                                    ; preds = %bb.u
  %i.df = icmp samesign ult i64 %indvars.iv.i.i.epil, 3
  br label %bb.v

bb.v:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %indvars.iv.i.i.lcssa = phi i1 [ false, %.unr-lcssa ], [ %i.df, %.epilog-lcssa ]
  %.lcssa480 = phi i32 [ 0, %.unr-lcssa ], [ %i.de, %.epilog-lcssa ]
  %i.dg = add nsw i32 %.pr.i.i, -8
  %i.dh = and i32 %i.ci, -8
  %i.di = sub nsw i32 %i.dg, %i.dh
  %i.dj = and i32 %i.ci, -8
  %i.dk = sub nsw i32 %.pr.i.i, %i.dj
  store i32 %.lcssa480, ptr %i.y, align 8
  store i32 %i.di, ptr %i.x, align 8
  %.not90.i.i = icmp eq i32 %i.dk, 8
  br i1 %.not90.i.i, label %.preheader.i.i, label %stbi__parse_uncompressed_block.exit.thread.i

.thread.i.i:                                      ; preds = %bb.s
  %i.dl = icmp slt i32 %.pr.i.i, 0
  br i1 %i.dl, label %stbi__parse_uncompressed_block.exit.thread.i, label %.lr.ph49.i.i

.preheader.i.i:                                   ; preds = %bb.v
  br i1 %indvars.iv.i.i.lcssa, label %.lr.ph49.i.i, label %._crit_edge50.i.i

.lr.ph49.i.i:                                     ; preds = %.preheader.i.i, %.thread.i.i
  %.0.lcssa7981.i.i = phi i64 [ %wide.trip.count.i, %.preheader.i.i ], [ 0, %.thread.i.i ] ; 5 uses
  %.val2.i.i32.i = load ptr, ptr %i.aa, align 8   ; 3 uses
  %.promoted51.i.i = load ptr, ptr %0, align 8    ; 5 uses
  %xtraiter487 = and i64 %.0.lcssa7981.i.i, 1
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod488.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph49.i.i
  %.not3.i.i33.i.prol = icmp ult ptr %.promoted51.i.i, %.val2.i.i32.i
  br i1 %.not3.i.i33.i.prol, label %bb.w, label %stbi__zget8.exit.i34.i.prol

bb.w:                                             ; preds = %.prol.preheader
  %i.dm = getelementptr inbounds nuw i8, ptr %.promoted51.i.i, i64 1 ; 2 uses
  store ptr %i.dm, ptr %0, align 8
  %i.dn = load i8, ptr %.promoted51.i.i, align 1
  br label %stbi__zget8.exit.i34.i.prol

stbi__zget8.exit.i34.i.prol:                      ; preds = %bb.w, %.prol.preheader
  %i.do = phi ptr [ %i.dm, %bb.w ], [ %.promoted51.i.i, %.prol.preheader ]
  %i.dp = phi i8 [ %i.dn, %bb.w ], [ 0, %.prol.preheader ]
  %indvars.iv.next63.i.i.prol = add nuw nsw i64 %.0.lcssa7981.i.i, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa7981.i.i
  store i8 %i.dp, ptr %i.dq, align 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %stbi__zget8.exit.i34.i.prol, %.lr.ph49.i.i
  %indvars.iv62.i.i.unr = phi i64 [ %.0.lcssa7981.i.i, %.lr.ph49.i.i ], [ %indvars.iv.next63.i.i.prol, %stbi__zget8.exit.i34.i.prol ]
  %.unr490 = phi ptr [ %.promoted51.i.i, %.lr.ph49.i.i ], [ %i.do, %stbi__zget8.exit.i34.i.prol ]
  %i.dr = icmp eq i64 %.0.lcssa7981.i.i, 3
  br i1 %i.dr, label %._crit_edge50.i.i, label %.lr.ph49.i.i.new

.lr.ph49.i.i.new:                                 ; preds = %.prol.loopexit, %stbi__zget8.exit.i34.i.1
  %indvars.iv62.i.i = phi i64 [ %indvars.iv.next63.i.i.1, %stbi__zget8.exit.i34.i.1 ], [ %indvars.iv62.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ds = phi ptr [ %i.ea, %stbi__zget8.exit.i34.i.1 ], [ %.unr490, %.prol.loopexit ] ; 4 uses
  %.not3.i.i33.i = icmp ult ptr %i.ds, %.val2.i.i32.i
  br i1 %.not3.i.i33.i, label %bb.x, label %stbi__zget8.exit.i34.i

bb.x:                                             ; preds = %.lr.ph49.i.i.new
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.dt, ptr %0, align 8
  %i.du = load i8, ptr %i.ds, align 1
  br label %stbi__zget8.exit.i34.i

stbi__zget8.exit.i34.i:                           ; preds = %bb.x, %.lr.ph49.i.i.new
  %i.dv = phi ptr [ %i.dt, %bb.x ], [ %i.ds, %.lr.ph49.i.i.new ] ; 4 uses
  %i.dw = phi i8 [ %i.du, %bb.x ], [ 0, %.lr.ph49.i.i.new ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv62.i.i
  store i8 %i.dw, ptr %i.dx, align 1
  %.not3.i.i33.i.1 = icmp ult ptr %i.dv, %.val2.i.i32.i
  br i1 %.not3.i.i33.i.1, label %bb.y, label %stbi__zget8.exit.i34.i.1

bb.y:                                             ; preds = %stbi__zget8.exit.i34.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  store ptr %i.dy, ptr %0, align 8
  %i.dz = load i8, ptr %i.dv, align 1
  br label %stbi__zget8.exit.i34.i.1

stbi__zget8.exit.i34.i.1:                         ; preds = %bb.y, %stbi__zget8.exit.i34.i
  %i.ea = phi ptr [ %i.dy, %bb.y ], [ %i.dv, %stbi__zget8.exit.i34.i ]
  %i.eb = phi i8 [ %i.dz, %bb.y ], [ 0, %stbi__zget8.exit.i34.i ]
  %indvars.iv.next63.i.i.1 = add nuw nsw i64 %indvars.iv62.i.i, 2 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv62.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  store i8 %i.eb, ptr %i.ed, align 1
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next63.i.i.1, 4
  br i1 %exitcond.not.i.i.1, label %._crit_edge50.i.i, label %.lr.ph49.i.i.new

._crit_edge50.i.i:                                ; preds = %.prol.loopexit, %stbi__zget8.exit.i34.i.1, %.preheader.i.i
  %i.ee = load i16, ptr %i.c, align 2             ; 3 uses
  %i.ef = zext i16 %i.ee to i32                   ; 2 uses
  %i.eg = load i16, ptr %i.ad, align 2
  %i.eh = xor i16 %i.eg, %i.ee
  %.not33.i.i = icmp eq i16 %i.eh, -1
  br i1 %.not33.i.i, label %bb.z, label %stbi__parse_uncompressed_block.exit.thread.i

bb.z:                                             ; preds = %._crit_edge50.i.i
  %i.ei = load ptr, ptr %0, align 8               ; 2 uses
  %i.ej = zext i16 %i.ee to i64                   ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  %i.el = load ptr, ptr %i.aa, align 8
  %i.em = icmp ugt ptr %i.ek, %i.el
  br i1 %i.em, label %stbi__parse_uncompressed_block.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ej
  %i.eo = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ep = icmp ugt ptr %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %stbi__parse_uncompressed_block.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load i32, ptr %i.i, align 8
  %.not.i.i35.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i35.i, label %stbi__parse_uncompressed_block.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %6 = ptrtoint ptr %i.ae to i64
  %7 = load ptr, ptr %i.d, align 8                ; 2 uses
  %i.er = ptrtoint ptr %7 to i64                  ; 2 uses
  %i.es = sub i64 %6, %i.er                       ; 2 uses
  %i.et = trunc i64 %i.es to i32                  ; 2 uses
  %i.eu = xor i32 %i.et, -1
  %i.ev = icmp ugt i32 %i.ef, %i.eu
  br i1 %i.ev, label %stbi__parse_uncompressed_block.exit.thread.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ac
  %i.ew = ptrtoint ptr %i.eo to i64
  %i.ex = sub i64 %i.ew, %i.er
  %i.ey = trunc i64 %i.ex to i32                  ; 3 uses
  %i.ez = add i32 %i.et, %i.ef                    ; 2 uses
  %i.fa = icmp ugt i32 %i.ez, %i.ey
  br i1 %i.fa, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ad
  %.028.i.i.i = phi i32 [ %i.fc, %bb.ad ], [ %i.ey, %.preheader.i.i.i ] ; 2 uses
  %i.fb = icmp slt i32 %.028.i.i.i, 0
  br i1 %i.fb, label %stbi__parse_uncompressed_block.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.fc = shl nuw i32 %.028.i.i.i, 1              ; 3 uses
  %i.fd = icmp ugt i32 %i.ez, %i.fc
  br i1 %i.fd, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ad, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.ey, %.preheader.i.i.i ], [ %i.fc, %bb.ad ]
  %i.fe = zext i32 %.0.lcssa.i.i.i to i64         ; 2 uses
  %i.ff = tail call ptr @realloc(ptr noundef %7, i64 noundef %i.fe) #54 ; 4 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %stbi__parse_uncompressed_block.exit.thread.i, label %stbi__zexpand.exit.i.i

stbi__zexpand.exit.i.i:                           ; preds = %._crit_edge.i.i.i
  store ptr %i.ff, ptr %i.d, align 8
  %i.fh = and i64 %i.es, 4294967295
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fh ; 2 uses
  store ptr %i.fi, ptr %i.e, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe
  store ptr %i.fj, ptr %i.h, align 8
  %.pre.i.i = load ptr, ptr %0, align 8
  br label %stbi__parse_uncompressed_block.exit.i

stbi__parse_uncompressed_block.exit.thread.i:     ; preds = %._crit_edge.i.i.i, %bb.ac, %bb.ab, %bb.z, %._crit_edge50.i.i, %.thread.i.i, %bb.v, %.lr.ph.i.i.i
  %.str.131.sink.i = phi ptr [ @.str.104, %.lr.ph.i.i.i ], [ @.str.131, %.thread.i.i ], [ @.str.104, %._crit_edge.i.i.i ], [ @.str.104, %bb.ac ], [ @.str.133, %bb.ab ], [ @.str.131, %._crit_edge50.i.i ], [ @.str.131, %bb.v ], [ @.str.132, %bb.z ]
  store ptr %.str.131.sink.i, ptr @stbi__g_failure_reason, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  br label %stbi__parse_zlib.exit

stbi__parse_uncompressed_block.exit.i:            ; preds = %stbi__zexpand.exit.i.i, %bb.aa
  %i.fk = phi ptr [ %.pre.i.i, %stbi__zexpand.exit.i.i ], [ %i.ei, %bb.aa ]
  %i.fl = phi ptr [ %i.fi, %stbi__zexpand.exit.i.i ], [ %i.ae, %bb.aa ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fl, ptr align 1 %i.fk, i64 %i.ej, i1 false)
  %i.fm = load ptr, ptr %0, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ej
  store ptr %i.fn, ptr %0, align 8
  %i.fo = load ptr, ptr %i.e, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.ej ; 2 uses
  store ptr %i.fp, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  br label %stbi__parse_huffman_block.exit.thread.i

bb.ae:                                            ; preds = %stbi__zreceive.exit31.i
  %i.fq = tail call fastcc i32 @stbi__zbuild_huffman(ptr noundef %i.ab, ptr noundef nonnull @stbi__zdefault_length, i32 noundef 288)
  %.not19.i = icmp eq i32 %i.fq, 0
  br i1 %.not19.i, label %stbi__parse_zlib.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fr = tail call fastcc i32 @stbi__zbuild_huffman(ptr noundef %i.ac, ptr noundef nonnull @stbi__zdefault_distance, i32 noundef 32)
  %.not20.i = icmp eq i32 %i.fr, 0
  br i1 %.not20.i, label %stbi__parse_zlib.exit, label %bb.bq

default.unreachable:                              ; preds = %stbi__zreceive.exit31.i
  unreachable

bb.ag:                                            ; preds = %stbi__zreceive.exit31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  %i.fs = icmp slt i32 %i.bk, 7
  br i1 %i.fs, label %.preheader170.i, label %stbi__zreceive.exit.i37.i

.preheader170.i:                                  ; preds = %bb.ag, %stbi__zget8.exit.i.i.i49.i
  %i.ft = phi i32 [ %i.gc, %stbi__zget8.exit.i.i.i49.i ], [ %i.bp, %bb.ag ] ; 5 uses
  %i.fu = phi i32 [ %i.gb, %stbi__zget8.exit.i.i.i49.i ], [ %i.bo, %bb.ag ] ; 3 uses
  %.highbits.i.i.i44.i = lshr i32 %i.fu, %i.ft
  %.not.i.i.i45.i = icmp eq i32 %.highbits.i.i.i44.i, 0
  br i1 %.not.i.i.i45.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.preheader170.i
  %i.fv = load ptr, ptr %i.aa, align 8
  store ptr %i.fv, ptr %0, align 8
  br label %stbi__zreceive.exit.i37.i

bb.ai:                                            ; preds = %.preheader170.i
  %.val.i.i.i.i46.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i.i47.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i.i48.i = icmp ult ptr %.val.i.i.i.i46.i, %.val2.i.i.i.i47.i
  br i1 %.not3.i.i.i.i48.i, label %bb.aj, label %stbi__zget8.exit.i.i.i49.i

bb.aj:                                            ; preds = %bb.ai
  %i.fw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i46.i, i64 1
  store ptr %i.fw, ptr %0, align 8
  %i.fx = load i8, ptr %.val.i.i.i.i46.i, align 1
  %i.fy = zext i8 %i.fx to i32
  br label %stbi__zget8.exit.i.i.i49.i

stbi__zget8.exit.i.i.i49.i:                       ; preds = %bb.aj, %bb.ai
  %i.fz = phi i32 [ %i.fy, %bb.aj ], [ 0, %bb.ai ]
  %i.ga = shl i32 %i.fz, %i.ft
  %i.gb = or i32 %i.ga, %i.fu                     ; 3 uses
  store i32 %i.gb, ptr %i.y, align 8
  %i.gc = add nsw i32 %i.ft, 8                    ; 3 uses
  store i32 %i.gc, ptr %i.x, align 8
  %i.gd = icmp slt i32 %i.ft, 17
  br i1 %i.gd, label %.preheader170.i, label %stbi__zreceive.exit.i37.i

stbi__zreceive.exit.i37.i:                        ; preds = %stbi__zget8.exit.i.i.i49.i, %bb.ah, %bb.ag
  %i.ge = phi i32 [ %i.bp, %bb.ag ], [ %i.ft, %bb.ah ], [ %i.gc, %stbi__zget8.exit.i.i.i49.i ] ; 2 uses
  %i.gf = phi i32 [ %i.bo, %bb.ag ], [ %i.fu, %bb.ah ], [ %i.gb, %stbi__zget8.exit.i.i.i49.i ] ; 2 uses
  %i.gg = and i32 %i.gf, 31
  %i.gh = lshr i32 %i.gf, 5                       ; 3 uses
  store i32 %i.gh, ptr %i.y, align 8
  %i.gi = add nsw i32 %i.ge, -5                   ; 3 uses
  store i32 %i.gi, ptr %i.x, align 8
  %i.gj = add nuw nsw i32 %i.gg, 257              ; 3 uses
  %i.gk = icmp slt i32 %i.ge, 10
  br i1 %i.gk, label %.preheader169.i, label %stbi__zreceive.exit69.i.i

.preheader169.i:                                  ; preds = %stbi__zreceive.exit.i37.i, %stbi__zget8.exit.i.i68.i.i
  %i.gl = phi i32 [ %i.gu, %stbi__zget8.exit.i.i68.i.i ], [ %i.gi, %stbi__zreceive.exit.i37.i ] ; 5 uses
  %i.gm = phi i32 [ %i.gt, %stbi__zget8.exit.i.i68.i.i ], [ %i.gh, %stbi__zreceive.exit.i37.i ] ; 3 uses
  %.highbits.i.i63.i.i = lshr i32 %i.gm, %i.gl
  %.not.i.i64.i.i = icmp eq i32 %.highbits.i.i63.i.i, 0
  br i1 %.not.i.i64.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader169.i
  %i.gn = load ptr, ptr %i.aa, align 8
  store ptr %i.gn, ptr %0, align 8
  br label %stbi__zreceive.exit69.i.i

bb.al:                                            ; preds = %.preheader169.i
  %.val.i.i.i65.i.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i66.i.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i67.i.i = icmp ult ptr %.val.i.i.i65.i.i, %.val2.i.i.i66.i.i
  br i1 %.not3.i.i.i67.i.i, label %bb.am, label %stbi__zget8.exit.i.i68.i.i

bb.am:                                            ; preds = %bb.al
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i.i.i65.i.i, i64 1
  store ptr %i.go, ptr %0, align 8
  %i.gp = load i8, ptr %.val.i.i.i65.i.i, align 1
  %i.gq = zext i8 %i.gp to i32
  br label %stbi__zget8.exit.i.i68.i.i

stbi__zget8.exit.i.i68.i.i:                       ; preds = %bb.am, %bb.al
  %i.gr = phi i32 [ %i.gq, %bb.am ], [ 0, %bb.al ]
  %i.gs = shl i32 %i.gr, %i.gl
  %i.gt = or i32 %i.gs, %i.gm                     ; 3 uses
  store i32 %i.gt, ptr %i.y, align 8
  %i.gu = add nsw i32 %i.gl, 8                    ; 3 uses
  store i32 %i.gu, ptr %i.x, align 8
  %i.gv = icmp slt i32 %i.gl, 17
  br i1 %i.gv, label %.preheader169.i, label %stbi__zreceive.exit69.i.i

stbi__zreceive.exit69.i.i:                        ; preds = %stbi__zget8.exit.i.i68.i.i, %bb.ak, %stbi__zreceive.exit.i37.i
  %i.gw = phi i32 [ %i.gi, %stbi__zreceive.exit.i37.i ], [ %i.gl, %bb.ak ], [ %i.gu, %stbi__zget8.exit.i.i68.i.i ] ; 2 uses
  %i.gx = phi i32 [ %i.gh, %stbi__zreceive.exit.i37.i ], [ %i.gm, %bb.ak ], [ %i.gt, %stbi__zget8.exit.i.i68.i.i ] ; 2 uses
  %i.gy = and i32 %i.gx, 31
  %i.gz = lshr i32 %i.gx, 5                       ; 3 uses
  store i32 %i.gz, ptr %i.y, align 8
  %i.ha = add nsw i32 %i.gw, -5                   ; 3 uses
  store i32 %i.ha, ptr %i.x, align 8
  %i.hb = add nuw nsw i32 %i.gy, 1                ; 2 uses
  %i.hc = icmp slt i32 %i.gw, 9
  br i1 %i.hc, label %.preheader168.i, label %stbi__zreceive.exit77.i.i

.preheader168.i:                                  ; preds = %stbi__zreceive.exit69.i.i, %stbi__zget8.exit.i.i76.i.i
  %i.hd = phi i32 [ %i.hm, %stbi__zget8.exit.i.i76.i.i ], [ %i.ha, %stbi__zreceive.exit69.i.i ] ; 5 uses
  %i.he = phi i32 [ %i.hl, %stbi__zget8.exit.i.i76.i.i ], [ %i.gz, %stbi__zreceive.exit69.i.i ] ; 3 uses
  %.highbits.i.i71.i.i = lshr i32 %i.he, %i.hd
  %.not.i.i72.i.i = icmp eq i32 %.highbits.i.i71.i.i, 0
  br i1 %.not.i.i72.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.preheader168.i
  %i.hf = load ptr, ptr %i.aa, align 8
  store ptr %i.hf, ptr %0, align 8
  br label %stbi__zreceive.exit77.i.i

bb.ao:                                            ; preds = %.preheader168.i
  %.val.i.i.i73.i.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i74.i.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i75.i.i = icmp ult ptr %.val.i.i.i73.i.i, %.val2.i.i.i74.i.i
  br i1 %.not3.i.i.i75.i.i, label %bb.ap, label %stbi__zget8.exit.i.i76.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hg = getelementptr inbounds nuw i8, ptr %.val.i.i.i73.i.i, i64 1
  store ptr %i.hg, ptr %0, align 8
  %i.hh = load i8, ptr %.val.i.i.i73.i.i, align 1
  %i.hi = zext i8 %i.hh to i32
  br label %stbi__zget8.exit.i.i76.i.i

stbi__zget8.exit.i.i76.i.i:                       ; preds = %bb.ap, %bb.ao
  %i.hj = phi i32 [ %i.hi, %bb.ap ], [ 0, %bb.ao ]
  %i.hk = shl i32 %i.hj, %i.hd
  %i.hl = or i32 %i.hk, %i.he                     ; 3 uses
  store i32 %i.hl, ptr %i.y, align 8
  %i.hm = add nsw i32 %i.hd, 8                    ; 3 uses
  store i32 %i.hm, ptr %i.x, align 8
  %i.hn = icmp slt i32 %i.hd, 17
  br i1 %i.hn, label %.preheader168.i, label %stbi__zreceive.exit77.i.i

stbi__zreceive.exit77.i.i:                        ; preds = %stbi__zget8.exit.i.i76.i.i, %bb.an, %stbi__zreceive.exit69.i.i
  %i.ho = phi i32 [ %i.ha, %stbi__zreceive.exit69.i.i ], [ %i.hd, %bb.an ], [ %i.hm, %stbi__zget8.exit.i.i76.i.i ]
  %i.hp = phi i32 [ %i.gz, %stbi__zreceive.exit69.i.i ], [ %i.he, %bb.an ], [ %i.hl, %stbi__zget8.exit.i.i76.i.i ] ; 2 uses
  %i.hq = and i32 %i.hp, 15
  %i.hr = lshr i32 %i.hp, 4                       ; 2 uses
  store i32 %i.hr, ptr %i.y, align 8
  %i.hs = add nsw i32 %i.ho, -4                   ; 2 uses
  store i32 %i.hs, ptr %i.x, align 8
  %i.ht = add nuw nsw i32 %i.hq, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.b, i8 0, i64 19, i1 false)
  %wide.trip.count.i.i = zext nneg i32 %i.ht to i64
  br label %bb.aq

bb.aq:                                            ; preds = %stbi__zreceive.exit85.i.i, %stbi__zreceive.exit77.i.i
  %indvars.iv.i38.i = phi i64 [ 0, %stbi__zreceive.exit77.i.i ], [ %indvars.iv.next.i39.i, %stbi__zreceive.exit85.i.i ] ; 2 uses
  %i.hu = phi i32 [ %i.hs, %stbi__zreceive.exit77.i.i ], [ %i.il, %stbi__zreceive.exit85.i.i ] ; 3 uses
  %i.hv = phi i32 [ %i.hr, %stbi__zreceive.exit77.i.i ], [ %i.ik, %stbi__zreceive.exit85.i.i ] ; 2 uses
  %i.hw = icmp slt i32 %i.hu, 3
  br i1 %i.hw, label %.preheader160.i.i, label %stbi__zreceive.exit85.i.i
end_hunk_0
begin_hunk_1_@stbi__do_zlib:bb.a
  store i32 %i.jk, ptr %i.y, align 8
  %i.jl = add nsw i32 %i.jc, 8                    ; 3 uses
  store i32 %i.jl, ptr %i.x, align 8
  %i.jm = icmp slt i32 %i.jc, 17
  br i1 %i.jm, label %.preheader158.i.i, label %stbi__zreceive.exit93.i.i

stbi__zreceive.exit93.i.i:                        ; preds = %stbi__zget8.exit.i.i92.i.i, %bb.az, %bb.ay
  %i.jn = phi i32 [ %i.ja, %bb.ay ], [ %i.jc, %bb.az ], [ %i.jl, %stbi__zget8.exit.i.i92.i.i ]
  %i.jo = phi i32 [ %.promoted.i.i102.i.i, %bb.ay ], [ %i.jd, %bb.az ], [ %i.jk, %stbi__zget8.exit.i.i92.i.i ] ; 2 uses
  %i.jp = lshr i32 %i.jo, 2
  store i32 %i.jp, ptr %i.y, align 8
  %i.jq = add nsw i32 %i.jn, -2
  store i32 %i.jq, ptr %i.x, align 8
  %i.jr = icmp eq i32 %.050156.i.i, 0
  br i1 %i.jr, label %stbi__compute_huffman_codes.exit.thread.sink.split.i, label %bb.bc

bb.bc:                                            ; preds = %stbi__zreceive.exit93.i.i
  %i.js = and i32 %i.jo, 3
  %i.jt = add nuw nsw i32 %i.js, 3
  %i.ju = sext i32 %.050156.i.i to i64
  %i.jv = getelementptr i8, ptr %i.a, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.jv, i64 -1
  %i.jx = load i8, ptr %i.jw, align 1
  br label %bb.bl

bb.bd:                                            ; preds = %bb.ax
  %i.jy = icmp slt i32 %i.ja, 3
  br i1 %i.jy, label %.preheader159.i.i, label %stbi__zreceive.exit101.i.i

.preheader159.i.i:                                ; preds = %bb.bd, %stbi__zget8.exit.i.i100.i.i
  %i.jz = phi i32 [ %i.ki, %stbi__zget8.exit.i.i100.i.i ], [ %i.ja, %bb.bd ] ; 5 uses
  %i.ka = phi i32 [ %i.kh, %stbi__zget8.exit.i.i100.i.i ], [ %.promoted.i.i102.i.i, %bb.bd ] ; 3 uses
  %.highbits.i.i95.i.i = lshr i32 %i.ka, %i.jz
  %.not.i.i96.i.i = icmp eq i32 %.highbits.i.i95.i.i, 0
  br i1 %.not.i.i96.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.preheader159.i.i
  %i.kb = load ptr, ptr %i.aa, align 8
  store ptr %i.kb, ptr %0, align 8
  br label %stbi__zreceive.exit101.i.i

bb.bf:                                            ; preds = %.preheader159.i.i
  %.val.i.i.i97.i.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i98.i.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i99.i.i = icmp ult ptr %.val.i.i.i97.i.i, %.val2.i.i.i98.i.i
  br i1 %.not3.i.i.i99.i.i, label %bb.bg, label %stbi__zget8.exit.i.i100.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.kc = getelementptr inbounds nuw i8, ptr %.val.i.i.i97.i.i, i64 1
  store ptr %i.kc, ptr %0, align 8
  %i.kd = load i8, ptr %.val.i.i.i97.i.i, align 1
  %i.ke = zext i8 %i.kd to i32
  br label %stbi__zget8.exit.i.i100.i.i

stbi__zget8.exit.i.i100.i.i:                      ; preds = %bb.bg, %bb.bf
  %i.kf = phi i32 [ %i.ke, %bb.bg ], [ 0, %bb.bf ]
  %i.kg = shl i32 %i.kf, %i.jz
  %i.kh = or i32 %i.kg, %i.ka                     ; 3 uses
  store i32 %i.kh, ptr %i.y, align 8
  %i.ki = add nsw i32 %i.jz, 8                    ; 3 uses
  store i32 %i.ki, ptr %i.x, align 8
  %i.kj = icmp slt i32 %i.jz, 17
  br i1 %i.kj, label %.preheader159.i.i, label %stbi__zreceive.exit101.i.i

stbi__zreceive.exit101.i.i:                       ; preds = %stbi__zget8.exit.i.i100.i.i, %bb.be, %bb.bd
  %i.kk = phi i32 [ %i.ja, %bb.bd ], [ %i.jz, %bb.be ], [ %i.ki, %stbi__zget8.exit.i.i100.i.i ]
  %i.kl = phi i32 [ %.promoted.i.i102.i.i, %bb.bd ], [ %i.ka, %bb.be ], [ %i.kh, %stbi__zget8.exit.i.i100.i.i ] ; 2 uses
  %i.km = and i32 %i.kl, 7
  %i.kn = lshr i32 %i.kl, 3
  store i32 %i.kn, ptr %i.y, align 8
  %i.ko = add nsw i32 %i.kk, -3
  store i32 %i.ko, ptr %i.x, align 8
  %i.kp = add nuw nsw i32 %i.km, 3
  br label %bb.bl

bb.bh:                                            ; preds = %bb.ax
  %i.kq = icmp slt i32 %i.ja, 7
  br i1 %i.kq, label %.preheader157.i.i, label %stbi__zreceive.exit109.i.i

.preheader157.i.i:                                ; preds = %bb.bh, %stbi__zget8.exit.i.i108.i.i
  %i.kr = phi i32 [ %i.la, %stbi__zget8.exit.i.i108.i.i ], [ %i.ja, %bb.bh ] ; 5 uses
  %i.ks = phi i32 [ %i.kz, %stbi__zget8.exit.i.i108.i.i ], [ %.promoted.i.i102.i.i, %bb.bh ] ; 3 uses
  %.highbits.i.i103.i.i = lshr i32 %i.ks, %i.kr
  %.not.i.i104.i.i = icmp eq i32 %.highbits.i.i103.i.i, 0
  br i1 %.not.i.i104.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.preheader157.i.i
  %i.kt = load ptr, ptr %i.aa, align 8
  store ptr %i.kt, ptr %0, align 8
  br label %stbi__zreceive.exit109.i.i

bb.bj:                                            ; preds = %.preheader157.i.i
  %.val.i.i.i105.i.i = load ptr, ptr %0, align 8  ; 3 uses
  %.val2.i.i.i106.i.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i107.i.i = icmp ult ptr %.val.i.i.i105.i.i, %.val2.i.i.i106.i.i
  br i1 %.not3.i.i.i107.i.i, label %bb.bk, label %stbi__zget8.exit.i.i108.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i.i.i105.i.i, i64 1
  store ptr %i.ku, ptr %0, align 8
  %i.kv = load i8, ptr %.val.i.i.i105.i.i, align 1
  %i.kw = zext i8 %i.kv to i32
  br label %stbi__zget8.exit.i.i108.i.i

stbi__zget8.exit.i.i108.i.i:                      ; preds = %bb.bk, %bb.bj
  %i.kx = phi i32 [ %i.kw, %bb.bk ], [ 0, %bb.bj ]
  %i.ky = shl i32 %i.kx, %i.kr
  %i.kz = or i32 %i.ky, %i.ks                     ; 3 uses
  store i32 %i.kz, ptr %i.y, align 8
  %i.la = add nsw i32 %i.kr, 8                    ; 3 uses
  store i32 %i.la, ptr %i.x, align 8
  %i.lb = icmp slt i32 %i.kr, 17
  br i1 %i.lb, label %.preheader157.i.i, label %stbi__zreceive.exit109.i.i

stbi__zreceive.exit109.i.i:                       ; preds = %stbi__zget8.exit.i.i108.i.i, %bb.bi, %bb.bh
  %i.lc = phi i32 [ %i.ja, %bb.bh ], [ %i.kr, %bb.bi ], [ %i.la, %stbi__zget8.exit.i.i108.i.i ]
  %i.ld = phi i32 [ %.promoted.i.i102.i.i, %bb.bh ], [ %i.ks, %bb.bi ], [ %i.kz, %stbi__zget8.exit.i.i108.i.i ] ; 2 uses
  %i.le = and i32 %i.ld, 127
  %i.lf = lshr i32 %i.ld, 7
  store i32 %i.lf, ptr %i.y, align 8
  %i.lg = add nsw i32 %i.lc, -7
  store i32 %i.lg, ptr %i.x, align 8
  %i.lh = add nuw nsw i32 %i.le, 11
  br label %bb.bl

bb.bl:                                            ; preds = %stbi__zreceive.exit109.i.i, %stbi__zreceive.exit101.i.i, %bb.bc
  %.046.i.i = phi i32 [ %i.jt, %bb.bc ], [ %i.kp, %stbi__zreceive.exit101.i.i ], [ %i.lh, %stbi__zreceive.exit109.i.i ] ; 3 uses
  %.0.i43.i = phi i8 [ %i.jx, %bb.bc ], [ 0, %stbi__zreceive.exit101.i.i ], [ 0, %stbi__zreceive.exit109.i.i ]
  %i.li = sub nsw i32 %i.is, %.050156.i.i
  %i.lj = icmp slt i32 %i.li, %.046.i.i
  br i1 %i.lj, label %stbi__compute_huffman_codes.exit.thread.sink.split.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lk = sext i32 %.050156.i.i to i64
  %i.ll = getelementptr inbounds i8, ptr %i.a, i64 %i.lk
  %i.lm = zext nneg i32 %.046.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ll, i8 %.0.i43.i, i64 %i.lm, i1 false)
  %i.ln = add nsw i32 %.046.i.i, %.050156.i.i
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.aw
  %.353.i.i = phi i32 [ %i.ix, %bb.aw ], [ %i.ln, %bb.bm ] ; 3 uses
  %i.lo = icmp slt i32 %.353.i.i, %i.is
  br i1 %i.lo, label %.preheader.i42.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.not58.i.i = icmp eq i32 %.353.i.i, %i.is
  br i1 %.not58.i.i, label %bb.bp, label %stbi__compute_huffman_codes.exit.thread.sink.split.i

bb.bp:                                            ; preds = %bb.bo
  %i.lp = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %i.ab, ptr noundef nonnull %i.a, i32 noundef %i.gj)
  %.not59.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not59.i.i, label %stbi__compute_huffman_codes.exit.thread.i, label %stbi__compute_huffman_codes.exit.i

stbi__compute_huffman_codes.exit.thread.sink.split.i: ; preds = %bb.bo, %bb.bl, %stbi__zreceive.exit93.i.i, %.preheader.i42.i
  store ptr @.str.135, ptr @stbi__g_failure_reason, align 8
  br label %stbi__compute_huffman_codes.exit.thread.i

stbi__compute_huffman_codes.exit.thread.i:        ; preds = %bb.bp, %bb.au, %stbi__compute_huffman_codes.exit.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  br label %stbi__parse_zlib.exit

stbi__compute_huffman_codes.exit.i:               ; preds = %bb.bp
  %i.lq = zext nneg i32 %i.gj to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.lq
  %i.ls = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %i.ac, ptr noundef nonnull %i.lr, i32 noundef %i.hb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  %.not18.i = icmp eq i32 %i.ls, 0
  br i1 %.not18.i, label %stbi__parse_zlib.exit, label %bb.bq

bb.bq:                                            ; preds = %stbi__compute_huffman_codes.exit.i, %bb.af
  %i.lt = load ptr, ptr %i.e, align 8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.backedge, %bb.bq
  %.063.i.i = phi ptr [ %i.lt, %bb.bq ], [ %.063.i.i.be, %.loopexit.i.i.backedge ] ; 10 uses
  %i.lu = tail call fastcc i32 @stbi__zhuffman_decode(ptr noundef nonnull %0, ptr noundef %i.ab) ; 7 uses
  %i.lv = icmp slt i32 %i.lu, 256
  br i1 %i.lv, label %bb.br, label %bb.by

bb.br:                                            ; preds = %.loopexit.i.i
  %i.lw = icmp slt i32 %i.lu, 0
  br i1 %i.lw, label %stbi__parse_huffman_block.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lx = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not83.i.i = icmp ult ptr %.063.i.i, %i.lx
  br i1 %.not83.i.i, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store ptr %.063.i.i, ptr %i.e, align 8
  %i.ly = load i32, ptr %i.i, align 8
  %.not.i.i68.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i68.i, label %stbi__parse_huffman_block.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %8 = ptrtoint ptr %.063.i.i to i64
  %9 = load ptr, ptr %i.d, align 8                ; 2 uses
  %i.lz = ptrtoint ptr %9 to i64                  ; 2 uses
  %i.ma = sub i64 %8, %i.lz                       ; 2 uses
  %i.mb = trunc i64 %i.ma to i32                  ; 3 uses
  %i.mc = icmp eq i32 %i.mb, -1
  br i1 %i.mc, label %stbi__parse_huffman_block.exit.i, label %.preheader.i.i69.i

.preheader.i.i69.i:                               ; preds = %bb.bu
  %i.md = ptrtoint ptr %i.lx to i64
  %i.me = sub i64 %i.md, %i.lz
  %i.mf = trunc i64 %i.me to i32                  ; 3 uses
  %.not192.i.i = icmp ult i32 %i.mb, %i.mf
  br i1 %.not192.i.i, label %._crit_edge.i.i72.i, label %.lr.ph.i.i70.i

.lr.ph.i.i70.i:                                   ; preds = %.preheader.i.i69.i, %bb.bv
  %.028.i.i71.i = phi i32 [ %i.mh, %bb.bv ], [ %i.mf, %.preheader.i.i69.i ] ; 2 uses
  %i.mg = icmp slt i32 %.028.i.i71.i, 0
  br i1 %i.mg, label %stbi__parse_huffman_block.exit.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i70.i
  %i.mh = shl nuw i32 %.028.i.i71.i, 1            ; 3 uses
  %.not193.i.i = icmp ugt i32 %i.mh, %i.mb
  br i1 %.not193.i.i, label %._crit_edge.i.i72.i, label %.lr.ph.i.i70.i

._crit_edge.i.i72.i:                              ; preds = %bb.bv, %.preheader.i.i69.i
  %.0.lcssa.i.i73.i = phi i32 [ %i.mf, %.preheader.i.i69.i ], [ %i.mh, %bb.bv ]
  %i.mi = zext i32 %.0.lcssa.i.i73.i to i64       ; 2 uses
  %i.mj = tail call ptr @realloc(ptr noundef %9, i64 noundef %i.mi) #54 ; 4 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %stbi__parse_huffman_block.exit.i, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.i.i72.i
  store ptr %i.mj, ptr %i.d, align 8
  %i.ml = and i64 %i.ma, 4294967295
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ml ; 2 uses
  store ptr %i.mm, ptr %i.e, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mi
  store ptr %i.mn, ptr %i.h, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bs
  %.164.i.i = phi ptr [ %i.mm, %bb.bw ], [ %.063.i.i, %bb.bs ] ; 2 uses
  %i.mo = trunc nuw i32 %i.lu to i8
  %i.mp = getelementptr inbounds nuw i8, ptr %.164.i.i, i64 1
  store i8 %i.mo, ptr %.164.i.i, align 1
  br label %.loopexit.i.i.backedge

bb.by:                                            ; preds = %.loopexit.i.i
  %i.mq = icmp eq i32 %i.lu, 256
  br i1 %i.mq, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  store ptr %.063.i.i, ptr %i.e, align 8
  %i.mr = load i32, ptr %i.z, align 4
  %.not82.i.i = icmp eq i32 %i.mr, 0
  br i1 %.not82.i.i, label %stbi__parse_huffman_block.exit.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ms = load i32, ptr %i.x, align 8
  %i.mt = icmp slt i32 %i.ms, 16
  br i1 %i.mt, label %stbi__parse_huffman_block.exit.i, label %stbi__parse_huffman_block.exit.thread.i

bb.cb:                                            ; preds = %bb.by
  %i.mu = icmp samesign ugt i32 %i.lu, 285
  br i1 %i.mu, label %stbi__parse_huffman_block.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mv = add nsw i32 %i.lu, -257
  %i.mw = zext nneg i32 %i.mv to i64              ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr @stbi__zlength_base, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4            ; 2 uses
  %i.mz = add nsw i32 %i.lu, -285
  %.not.i50.i = icmp ult i32 %i.mz, -20
  br i1 %.not.i50.i, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.na = getelementptr inbounds nuw [4 x i8], ptr @stbi__zlength_extra, i64 %i.mw
  %i.nb = load i32, ptr %i.na, align 4            ; 4 uses
  %i.nc = load i32, ptr %i.x, align 8             ; 3 uses
  %i.nd = icmp slt i32 %i.nc, %i.nb
  %.promoted.i.i.i51.i = load i32, ptr %i.y, align 8 ; 2 uses
  br i1 %i.nd, label %.preheader141.i.i, label %stbi__zreceive.exit.i52.i

.preheader141.i.i:                                ; preds = %bb.cd, %stbi__zget8.exit.i.i.i67.i
  %i.ne = phi i32 [ %i.nn, %stbi__zget8.exit.i.i.i67.i ], [ %i.nc, %bb.cd ] ; 5 uses
  %i.nf = phi i32 [ %i.nm, %stbi__zget8.exit.i.i.i67.i ], [ %.promoted.i.i.i51.i, %bb.cd ] ; 3 uses
  %.highbits.i.i.i62.i = lshr i32 %i.nf, %i.ne
  %.not.i.i.i63.i = icmp eq i32 %.highbits.i.i.i62.i, 0
  br i1 %.not.i.i.i63.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.preheader141.i.i
  %i.ng = load ptr, ptr %i.aa, align 8
  store ptr %i.ng, ptr %0, align 8
  br label %stbi__zreceive.exit.i52.i

bb.cf:                                            ; preds = %.preheader141.i.i
  %.val.i.i.i.i64.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i.i65.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i.i66.i = icmp ult ptr %.val.i.i.i.i64.i, %.val2.i.i.i.i65.i
  br i1 %.not3.i.i.i.i66.i, label %bb.cg, label %stbi__zget8.exit.i.i.i67.i

bb.cg:                                            ; preds = %bb.cf
  %i.nh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i64.i, i64 1
  store ptr %i.nh, ptr %0, align 8
  %i.ni = load i8, ptr %.val.i.i.i.i64.i, align 1
  %i.nj = zext i8 %i.ni to i32
  br label %stbi__zget8.exit.i.i.i67.i

stbi__zget8.exit.i.i.i67.i:                       ; preds = %bb.cg, %bb.cf
  %i.nk = phi i32 [ %i.nj, %bb.cg ], [ 0, %bb.cf ]
  %i.nl = shl i32 %i.nk, %i.ne
  %i.nm = or i32 %i.nl, %i.nf                     ; 3 uses
  store i32 %i.nm, ptr %i.y, align 8
  %i.nn = add nsw i32 %i.ne, 8                    ; 3 uses
  store i32 %i.nn, ptr %i.x, align 8
  %i.no = icmp slt i32 %i.ne, 17
  br i1 %i.no, label %.preheader141.i.i, label %stbi__zreceive.exit.i52.i

stbi__zreceive.exit.i52.i:                        ; preds = %stbi__zget8.exit.i.i.i67.i, %bb.ce, %bb.cd
  %i.np = phi i32 [ %i.nc, %bb.cd ], [ %i.ne, %bb.ce ], [ %i.nn, %stbi__zget8.exit.i.i.i67.i ]
  %i.nq = phi i32 [ %.promoted.i.i.i51.i, %bb.cd ], [ %i.nf, %bb.ce ], [ %i.nm, %stbi__zget8.exit.i.i.i67.i ] ; 2 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.nb
  %i.nr = xor i32 %notmask.i.i.i, -1
  %i.ns = and i32 %i.nq, %i.nr
  %i.nt = lshr i32 %i.nq, %i.nb
  store i32 %i.nt, ptr %i.y, align 8
  %i.nu = sub nsw i32 %i.np, %i.nb
  store i32 %i.nu, ptr %i.x, align 8
  %i.nv = add i32 %i.ns, %i.my
  br label %bb.ch

bb.ch:                                            ; preds = %stbi__zreceive.exit.i52.i, %bb.cc
  %.059.i.i = phi i32 [ %i.nv, %stbi__zreceive.exit.i52.i ], [ %i.my, %bb.cc ] ; 12 uses
  %i.nw = tail call fastcc i32 @stbi__zhuffman_decode(ptr noundef nonnull %0, ptr noundef %i.ac) ; 3 uses
  %or.cond.i53.i = icmp ugt i32 %i.nw, 29
  br i1 %or.cond.i53.i, label %stbi__parse_huffman_block.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nx = zext nneg i32 %i.nw to i64              ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr @stbi__zdist_base, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4            ; 2 uses
  %.not76.i.i = icmp samesign ult i32 %i.nw, 4
  br i1 %.not76.i.i, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr @stbi__zdist_extra, i64 %i.nx
  %i.ob = load i32, ptr %i.oa, align 4            ; 4 uses
  %i.oc = load i32, ptr %i.x, align 8             ; 3 uses
  %i.od = icmp slt i32 %i.oc, %i.ob
  %.promoted.i.i85.i.i = load i32, ptr %i.y, align 8 ; 2 uses
  br i1 %i.od, label %.preheader140.i.i, label %stbi__zreceive.exit93.i54.i

.preheader140.i.i:                                ; preds = %bb.cj, %stbi__zget8.exit.i.i92.i61.i
  %i.oe = phi i32 [ %i.on, %stbi__zget8.exit.i.i92.i61.i ], [ %i.oc, %bb.cj ] ; 5 uses
  %i.of = phi i32 [ %i.om, %stbi__zget8.exit.i.i92.i61.i ], [ %.promoted.i.i85.i.i, %bb.cj ] ; 3 uses
  %.highbits.i.i87.i56.i = lshr i32 %i.of, %i.oe
  %.not.i.i88.i57.i = icmp eq i32 %.highbits.i.i87.i56.i, 0
  br i1 %.not.i.i88.i57.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.preheader140.i.i
  %i.og = load ptr, ptr %i.aa, align 8
  store ptr %i.og, ptr %0, align 8
  br label %stbi__zreceive.exit93.i54.i

bb.cl:                                            ; preds = %.preheader140.i.i
  %.val.i.i.i89.i58.i = load ptr, ptr %0, align 8 ; 3 uses
  %.val2.i.i.i90.i59.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i91.i60.i = icmp ult ptr %.val.i.i.i89.i58.i, %.val2.i.i.i90.i59.i
  br i1 %.not3.i.i.i91.i60.i, label %bb.cm, label %stbi__zget8.exit.i.i92.i61.i

bb.cm:                                            ; preds = %bb.cl
  %i.oh = getelementptr inbounds nuw i8, ptr %.val.i.i.i89.i58.i, i64 1
  store ptr %i.oh, ptr %0, align 8
  %i.oi = load i8, ptr %.val.i.i.i89.i58.i, align 1
  %i.oj = zext i8 %i.oi to i32
  br label %stbi__zget8.exit.i.i92.i61.i

stbi__zget8.exit.i.i92.i61.i:                     ; preds = %bb.cm, %bb.cl
  %i.ok = phi i32 [ %i.oj, %bb.cm ], [ 0, %bb.cl ]
  %i.ol = shl i32 %i.ok, %i.oe
  %i.om = or i32 %i.ol, %i.of                     ; 3 uses
  store i32 %i.om, ptr %i.y, align 8
  %i.on = add nsw i32 %i.oe, 8                    ; 3 uses
  store i32 %i.on, ptr %i.x, align 8
  %i.oo = icmp slt i32 %i.oe, 17
  br i1 %i.oo, label %.preheader140.i.i, label %stbi__zreceive.exit93.i54.i

stbi__zreceive.exit93.i54.i:                      ; preds = %stbi__zget8.exit.i.i92.i61.i, %bb.ck, %bb.cj
  %i.op = phi i32 [ %i.oc, %bb.cj ], [ %i.oe, %bb.ck ], [ %i.on, %stbi__zget8.exit.i.i92.i61.i ]
  %i.oq = phi i32 [ %.promoted.i.i85.i.i, %bb.cj ], [ %i.of, %bb.ck ], [ %i.om, %stbi__zget8.exit.i.i92.i61.i ] ; 2 uses
  %notmask.i86.i.i = shl nsw i32 -1, %i.ob
  %i.or = xor i32 %notmask.i86.i.i, -1
  %i.os = and i32 %i.oq, %i.or
  %i.ot = lshr i32 %i.oq, %i.ob
  store i32 %i.ot, ptr %i.y, align 8
  %i.ou = sub nsw i32 %i.op, %i.ob
  store i32 %i.ou, ptr %i.x, align 8
  %i.ov = add i32 %i.os, %i.nz
  br label %bb.cn

bb.cn:                                            ; preds = %stbi__zreceive.exit93.i54.i, %bb.ci
  %.0.i55.i = phi i32 [ %i.ov, %stbi__zreceive.exit93.i54.i ], [ %i.nz, %bb.ci ] ; 2 uses
  %i.ow = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ox = ptrtoint ptr %.063.i.i to i64           ; 2 uses
  %i.oy = ptrtoint ptr %i.ow to i64               ; 2 uses
  %i.oz = sub i64 %i.ox, %i.oy                    ; 3 uses
  %i.pa = sext i32 %.0.i55.i to i64               ; 3 uses
  %i.pb = icmp slt i64 %i.oz, %i.pa
  br i1 %i.pb, label %stbi__parse_huffman_block.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pc = sext i32 %.059.i.i to i64
  %i.pd = load ptr, ptr %i.h, align 8
  %i.pe = ptrtoint ptr %i.pd to i64               ; 2 uses
  %i.pf = sub i64 %i.pe, %i.ox
  %i.pg = icmp slt i64 %i.pf, %i.pc
  br i1 %i.pg, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %bb.co
  store ptr %.063.i.i, ptr %i.e, align 8
  %i.ph = load i32, ptr %i.i, align 8
  %.not.i94.i.i = icmp eq i32 %i.ph, 0
  br i1 %.not.i94.i.i, label %stbi__parse_huffman_block.exit.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pi = trunc i64 %i.oz to i32                  ; 2 uses
  %i.pj = xor i32 %i.pi, -1
  %i.pk = icmp ugt i32 %.059.i.i, %i.pj
end_hunk_1
begin_hunk_2_@ImageMipmaps:bb.a
  %switch.tableidx128 = add i32 %i.bc, -1         ; 2 uses
  %i.bd = icmp ult i32 %switch.tableidx128, 24
  br i1 %i.bd, label %switch.lookup129, label %bb.p

switch.lookup129:                                 ; preds = %bb.o
  %i.be = zext nneg i32 %switch.tableidx128 to i64
  %switch.gep130 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.be
  %switch.load131 = load double, ptr %switch.gep130, align 8
  br label %bb.p

bb.p:                                             ; preds = %switch.lookup129, %bb.o
  %.0.i86 = phi double [ 0.000000e+00, %bb.o ], [ %switch.load131, %switch.lookup129 ]
  %i.bf = sitofp i32 %i.ba to double
  %i.bg = fmul nnan double %.0.i86, %i.bf
  %i.bh = sitofp i32 %i.bb to double
  %i.bi = fmul double %i.bg, %i.bh
  %i.bj = fptosi double %i.bi to i32              ; 2 uses
  %i.bk = icmp slt i32 %i.ba, 4
  %i.bl = icmp slt i32 %i.bb, 4
  %or.cond.i87 = and i1 %i.bk, %i.bl
  br i1 %or.cond.i87, label %bb.q, label %GetPixelDataSize.exit92

bb.q:                                             ; preds = %bb.p
  %i.bm = and i32 %i.bc, -2
  %or.cond3.i89 = icmp eq i32 %i.bm, 14
  br i1 %or.cond3.i89, label %GetPixelDataSize.exit92, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = and i32 %i.bc, -8
  %or.cond5.i90 = icmp eq i32 %i.bn, 16
  %spec.select.i91 = select i1 %or.cond5.i90, i32 16, i32 %i.bj
  br label %GetPixelDataSize.exit92

GetPixelDataSize.exit92:                          ; preds = %bb.p, %bb.q, %bb.r
  %.016.i88 = phi i32 [ %i.bj, %bb.p ], [ 8, %bb.q ], [ %spec.select.i91, %bb.r ]
  %i.bo = sext i32 %.016.i88 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.az, i64 %i.bo, i1 false)
  tail call void @free(ptr noundef %i.az) #52
  store ptr %i.ay, ptr %0, align 8
  %i.bp = load i32, ptr %i.c, align 8             ; 3 uses
  %i.bq = load i32, ptr %i.f, align 4             ; 3 uses
  %i.br = load i32, ptr %i.i, align 4             ; 3 uses
  %switch.tableidx132 = add i32 %i.br, -1         ; 2 uses
  %i.bs = icmp ult i32 %switch.tableidx132, 24
  br i1 %i.bs, label %switch.lookup133, label %bb.s

switch.lookup133:                                 ; preds = %GetPixelDataSize.exit92
  %i.bt = zext nneg i32 %switch.tableidx132 to i64
  %switch.gep134 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.bt
  %switch.load135 = load double, ptr %switch.gep134, align 8
  br label %bb.s

bb.s:                                             ; preds = %switch.lookup133, %GetPixelDataSize.exit92
  %.0.i93 = phi double [ 0.000000e+00, %GetPixelDataSize.exit92 ], [ %switch.load135, %switch.lookup133 ]
  %i.bu = sitofp i32 %i.bp to double
  %i.bv = fmul nnan double %.0.i93, %i.bu
  %i.bw = sitofp i32 %i.bq to double
  %i.bx = fmul double %i.bv, %i.bw
  %i.by = fptosi double %i.bx to i32              ; 2 uses
  %i.bz = icmp slt i32 %i.bp, 4
  %i.ca = icmp slt i32 %i.bq, 4
  %or.cond.i94 = and i1 %i.bz, %i.ca
  br i1 %or.cond.i94, label %bb.t, label %GetPixelDataSize.exit99

bb.t:                                             ; preds = %bb.s
  %i.cb = and i32 %i.br, -2
  %or.cond3.i96 = icmp eq i32 %i.cb, 14
  br i1 %or.cond3.i96, label %GetPixelDataSize.exit99, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = and i32 %i.br, -8
  %or.cond5.i97 = icmp eq i32 %i.cc, 16
  %spec.select.i98 = select i1 %or.cond5.i97, i32 16, i32 %i.by
  br label %GetPixelDataSize.exit99

GetPixelDataSize.exit99:                          ; preds = %bb.s, %bb.t, %bb.u
  %.016.i95 = phi i32 [ %i.by, %bb.s ], [ 8, %bb.t ], [ %spec.select.i98, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #52
  call void @ImageCopy(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %1, ptr noundef nonnull byval(%struct.Image) align 8 %0)
  %i.cd = icmp samesign ugt i32 %.076.lcssa, 1
  br i1 %i.cd, label %.lr.ph117, label %._crit_edge118

._crit_edge118:                                   ; preds = %bb.z, %GetPixelDataSize.exit99
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  call void @free(ptr noundef %.sroa.0.0.copyload) #52
  store i32 %.076.lcssa, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #52
  br label %bb.ab

.lr.ph117:                                        ; preds = %GetPixelDataSize.exit99, %bb.z
  %.0116 = phi i32 [ %i.cy, %bb.z ], [ 1, %GetPixelDataSize.exit99 ] ; 3 uses
  %.069115 = phi ptr [ %i.cf, %bb.z ], [ %i.ay, %GetPixelDataSize.exit99 ]
  %.1114 = phi i32 [ %.016.i102, %bb.z ], [ %.016.i95, %GetPixelDataSize.exit99 ]
  %.2113 = phi i32 [ %spec.store.select3, %bb.z ], [ %i.bq, %GetPixelDataSize.exit99 ] ; 2 uses
  %.275112 = phi i32 [ %spec.store.select1, %bb.z ], [ %i.bp, %GetPixelDataSize.exit99 ] ; 2 uses
  %i.ce = sext i32 %.1114 to i64
  %i.cf = getelementptr inbounds i8, ptr %.069115, i64 %i.ce ; 3 uses
  %i.cg = sdiv i32 %.275112, 2
  %i.ch = sdiv i32 %.2113, 2
  %spec.store.select1 = call i32 @llvm.smax.i32(i32 %i.cg, i32 1) ; 4 uses
  %spec.store.select3 = call i32 @llvm.smax.i32(i32 %i.ch, i32 1) ; 4 uses
  %i.ci = load i32, ptr %i.i, align 4             ; 3 uses
  %switch.tableidx136 = add i32 %i.ci, -1         ; 2 uses
  %i.cj = icmp ult i32 %switch.tableidx136, 24
  br i1 %i.cj, label %switch.lookup137, label %bb.v

switch.lookup137:                                 ; preds = %.lr.ph117
  %i.ck = zext nneg i32 %switch.tableidx136 to i64
  %switch.gep138 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.ck
  %switch.load139 = load double, ptr %switch.gep138, align 8
  br label %bb.v

bb.v:                                             ; preds = %switch.lookup137, %.lr.ph117
  %.0.i100 = phi double [ 0.000000e+00, %.lr.ph117 ], [ %switch.load139, %switch.lookup137 ]
  %i.cl = uitofp nneg i32 %spec.store.select1 to double
  %i.cm = fmul nnan double %.0.i100, %i.cl
  %i.cn = uitofp nneg i32 %spec.store.select3 to double
  %i.co = fmul double %i.cm, %i.cn
  %i.cp = fptosi double %i.co to i32              ; 2 uses
  %i.cq = icmp slt i32 %.275112, 8
  %i.cr = icmp slt i32 %.2113, 8
  %or.cond.i101 = and i1 %i.cq, %i.cr
  br i1 %or.cond.i101, label %bb.w, label %GetPixelDataSize.exit106

bb.w:                                             ; preds = %bb.v
  %i.cs = and i32 %i.ci, -2
  %or.cond3.i103 = icmp eq i32 %i.cs, 14
  br i1 %or.cond3.i103, label %GetPixelDataSize.exit106, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = and i32 %i.ci, -8
  %or.cond5.i104 = icmp eq i32 %i.ct, 16
  %spec.select.i105 = select i1 %or.cond5.i104, i32 16, i32 %i.cp
  br label %GetPixelDataSize.exit106

GetPixelDataSize.exit106:                         ; preds = %bb.v, %bb.w, %bb.x
  %.016.i102 = phi i32 [ %i.cp, %bb.v ], [ 8, %bb.w ], [ %spec.select.i105, %bb.x ] ; 3 uses
  %i.cu = load i32, ptr %i.au, align 8
  %i.cv = icmp slt i32 %.0116, %i.cu
  br i1 %i.cv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %GetPixelDataSize.exit106
  call void (i32, ptr, ...) @TraceLog(i32 noundef 2, ptr noundef nonnull @.str.64, i32 noundef %.0116, i32 noundef %spec.store.select1, i32 noundef %spec.store.select3, i32 noundef %.016.i102, ptr noundef %i.cf) #52
  call void @ImageResize(ptr noundef nonnull %1, i32 noundef %spec.store.select1, i32 noundef %spec.store.select3)
  %i.cw = load ptr, ptr %1, align 8
  %i.cx = sext i32 %.016.i102 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.cw, i64 %i.cx, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %GetPixelDataSize.exit106, %bb.y
  %i.cy = add nuw i32 %.0116, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, %.076.lcssa
  br i1 %exitcond.not, label %._crit_edge118, label %.lr.ph117

bb.aa:                                            ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.65) #52
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge118, %bb.aa, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageText(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.Font, align 8               ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %2, i32 10) ; 2 uses
  %i.a = udiv i32 %spec.select, 10
  call void @GetFontDefault(ptr dead_on_unwind nonnull writable sret(%struct.Font) align 8 %4) #52
  %i.b = uitofp nneg i32 %spec.select to float
  %i.c = uitofp nneg i32 %i.a to float
  call void @ImageTextEx(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %0, ptr noundef nonnull byval(%struct.Font) align 8 %4, ptr noundef %1, float noundef %i.b, float noundef %i.c, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageTextEx(ptr dead_on_unwind noalias writable sret(%struct.Image) align 8 initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.Font) align 8 captures(none) %1, ptr noundef %2, float noundef %3, float noundef %4, i32 %5) local_unnamed_addr #34 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.Font, align 8               ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.l, label %GenImageColor.exit

GenImageColor.exit:                               ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #55
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = load i32, ptr %1, align 8                ; 3 uses
  %i.f = sitofp i32 %i.e to float
  %i.g = tail call <2 x float> @MeasureTextEx(ptr noundef nonnull byval(%struct.Font) align 8 %1, ptr noundef nonnull %2, float noundef %i.f, float noundef %4) #52 ; 3 uses
  %i.h = tail call <2 x float> @MeasureTextEx(ptr noundef nonnull byval(%struct.Font) align 8 %1, ptr noundef nonnull %2, float noundef %3, float noundef %4) #52
  %.sroa.032.0.vec.extract = extractelement <2 x float> %i.g, i64 0
  %.sroa.032.4.vec.extract = extractelement <2 x float> %i.g, i64 1 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = fptosi <2 x float> %i.g to <2 x i32>     ; 3 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0
  %i.k = extractelement <2 x i32> %i.i, i64 1
  %i.l = mul nsw i32 %i.k, %i.j
  %i.m = sext i32 %i.l to i64
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #56, !noalias !101
  %7 = ptrtoint ptr %i.n to i64
  store i64 %7, ptr %0, align 8
  store <2 x i32> %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %.sroa.7.0..sroa_idx, align 4
  %i.o = icmp sgt i32 %i.d, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %GenImageColor.exit
  %i.p = sdiv i32 %i.e, 2
  %i.q = add nsw i32 %i.p, %i.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = fptosi float %4 to i32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %GenImageColor.exit
  %.sroa.029.4.vec.extract = extractelement <2 x float> %i.h, i64 1 ; 2 uses
  %i.w = fcmp une float %.sroa.029.4.vec.extract, %.sroa.032.4.vec.extract
  br i1 %i.w, label %bb.i, label %bb.l

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.070 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ]  ; 3 uses
  %.06269 = phi i32 [ 0, %.lr.ph ], [ %i.bh, %bb.h ] ; 2 uses
  %.06368 = phi i32 [ 0, %.lr.ph ], [ %.164, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  store i32 0, ptr %i.a, align 4
  %i.x = sext i32 %.06269 to i64
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  %i.z = call i32 @GetCodepointNext(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a) #52 ; 2 uses
  %i.aa = call i32 @GetGlyphIndex(ptr noundef nonnull byval(%struct.Font) align 8 %1, i32 noundef %i.z) #52 ; 2 uses
  switch i32 %i.z, label %bb.d [
    i32 10, label %bb.c
    i32 32, label %bb.e
    i32 9, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.ab = add nsw i32 %i.q, %.06368
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.ac = sext i32 %i.aa to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [40 x i8], ptr %i.s, i64 %i.ac ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add nsw i32 %i.af, %.070
  %i.ah = sitofp i32 %i.ag to float
  %.sroa.08.0.vec.insert = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = add nsw i32 %i.aj, %.06368
  %i.al = sitofp i32 %i.ak to float
  %.sroa.08.4.vec.insert = insertelement <2 x float> %.sroa.08.0.vec.insert, float %i.al, i64 1
  %i.am = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.ac
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load <2 x float>, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ar = load <2 x i32>, ptr %i.aq, align 8
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>
  call void @ImageDraw(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.Image) align 8 %i.ap, <2 x float> zeroinitializer, <2 x float> %i.as, <2 x float> %.sroa.08.4.vec.insert, <2 x float> %i.ao, i32 %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.d
  %i.at = sext i32 %i.aa to i64                   ; 2 uses
  %i.au = getelementptr inbounds [40 x i8], ptr %i.s, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fadd float %4, %i.ba
  %i.bc = fptosi float %i.bb to i32
  %i.bd = add nsw i32 %.070, %i.bc
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.be = add i32 %.070, %i.v
  %i.bf = add i32 %i.be, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.164 = phi i32 [ %i.ab, %bb.c ], [ %.06368, %bb.f ], [ %.06368, %bb.g ]
  %.1 = phi i32 [ 0, %bb.c ], [ %i.bd, %bb.f ], [ %i.bf, %bb.g ]
  %i.bg = load i32, ptr %i.a, align 4
  %i.bh = add nsw i32 %i.bg, %.06269              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  %i.bi = icmp slt i32 %i.bh, %i.d
  br i1 %i.bi, label %bb.b, label %._crit_edge

bb.i:                                             ; preds = %._crit_edge
  %i.bj = fdiv float %.sroa.029.4.vec.extract, %.sroa.032.4.vec.extract ; 3 uses
  %i.bk = fpext float %i.bj to double
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.53, double noundef %i.bk) #52
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bm = load i32, ptr %i.bl, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  call void @GetFontDefault(ptr dead_on_unwind nonnull writable sret(%struct.Font) align 8 %6) #52
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp eq i32 %i.bm, %i.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  %i.bq = fmul float %.sroa.032.0.vec.extract, %i.bj
  %i.br = fptosi float %i.bq to i32               ; 2 uses
  %i.bs = fmul float %.sroa.032.4.vec.extract, %i.bj
  %i.bt = fptosi float %i.bs to i32               ; 2 uses
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @ImageResizeNN(ptr noundef nonnull %0, i32 noundef %i.br, i32 noundef %i.bt)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @ImageResize(ptr noundef nonnull %0, i32 noundef %i.br, i32 noundef %i.bt)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.j, %bb.a
  ret void
}

declare void @GetFontDefault(ptr dead_on_unwind writable sret(%struct.Font) align 8) local_unnamed_addr #10

declare <2 x float> @MeasureTextEx(ptr noundef byval(%struct.Font) align 8, ptr noundef, float noundef, float noundef) local_unnamed_addr #10

declare i32 @GetCodepointNext(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @GetGlyphIndex(ptr noundef byval(%struct.Font) align 8, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @ImageDraw(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, i32 %6) local_unnamed_addr #34 {
bb.a:
  %7 = alloca %struct.Image, align 8              ; 8 uses
  %8 = alloca %struct.Image, align 8              ; 4 uses
  %9 = alloca %struct.Image, align 8              ; 9 uses
  %10 = alloca %struct.Image, align 8             ; 9 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  %.0.sroa.gep229 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.0.sroa.gep230 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.b, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  %i.i = load ptr, ptr %1, align 8
  %i.j = icmp eq ptr %i.i, null
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  %i.k = load i32, ptr %.0.sroa.gep230, align 8   ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %or.cond8 = select i1 %or.cond5, i1 true, i1 %i.o
  br i1 %or.cond8, label %bb.ao, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp sgt i32 %i.q, 13
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.75) #52
  br label %bb.ao

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.sroa.0136.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.s = fcmp olt float %.sroa.0136.0.vec.extract, 0.000000e+00 ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %.sroa.0136.0.vec.insert = insertelement <2 x float> %2, float 0.000000e+00, i64 0
  %.sroa.0136.0 = select i1 %i.s, <2 x float> %.sroa.0136.0.vec.insert, <2 x float> %2 ; 4 uses
  %sel = select i1 %i.s, <2 x float> %foldExtExtBinop, <2 x float> %3
  %.sroa.21.0 = shufflevector <2 x float> %sel, <2 x float> %3, <2 x i32> <i32 0, i32 3> ; 3 uses
  %.sroa.0136.4.vec.extract = extractelement <2 x float> %.sroa.0136.0, i64 1 ; 2 uses
  %i.t = fcmp olt float %.sroa.0136.4.vec.extract, 0.000000e+00 ; 3 uses
  %foldExtExtBinop367 = fadd <2 x float> %.sroa.0136.0, %.sroa.21.0
  %.sroa.21.12.vec.insert = shufflevector <2 x float> %.sroa.21.0, <2 x float> %foldExtExtBinop367, <2 x i32> <i32 0, i32 3>
  %.sroa.0136.4.vec.insert = insertelement <2 x float> %.sroa.0136.0, float 0.000000e+00, i64 1
  %.sroa.0136.4.vec.extract158.pre-phi = select i1 %i.t, float 0.000000e+00, float %.sroa.0136.4.vec.extract ; 2 uses
  %.sroa.0136.1 = select i1 %i.t, <2 x float> %.sroa.0136.4.vec.insert, <2 x float> %.sroa.0136.0 ; 4 uses
  %.sroa.21.1 = select i1 %i.t, <2 x float> %.sroa.21.12.vec.insert, <2 x float> %.sroa.21.0 ; 3 uses
  %.sroa.0136.0.vec.extract143 = extractelement <2 x float> %.sroa.0136.1, i64 0
  %foldExtExtBinop369 = fadd <2 x float> %.sroa.0136.1, %.sroa.21.1
end_hunk_2
begin_hunk_3_@LoadTextureCubemap:bb.a
  %3 = alloca %struct.Image, align 8              ; 25 uses
  %4 = alloca %struct.Image, align 8              ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  switch i32 %2, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 7 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = sdiv i32 %i.b, 6
  %i.g = icmp eq i32 %i.f, %i.d
  br i1 %i.g, label %.thread168, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %i.b, 4                         ; 2 uses
  %i.i = sdiv i32 %i.d, 3
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %.thread185, label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.k = icmp sgt i32 %i.d, %i.b
  br i1 %i.k, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.l = sdiv i32 %i.d, 6
  %i.m = icmp eq i32 %i.l, %i.b
  br i1 %i.m, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = sdiv i32 %i.b, 3                         ; 2 uses
  %i.o = sdiv i32 %i.d, 4
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %.thread177, label %bb.s

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sdiv i32 %i.r, 6
  br label %.thread

bb.i:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = sdiv i32 %i.u, 6
  br label %.thread168

bb.j:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sdiv i32 %i.x, 3
  br label %.thread177

bb.k:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = sdiv i32 %i.aa, 4
  br label %.thread185

.thread:                                          ; preds = %bb.f, %bb.h
  %.sink = phi i32 [ %i.s, %bb.h ], [ %i.b, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.ad, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @ImageCopy(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %3, ptr noundef nonnull byval(%struct.Image) align 8 %1)
  br label %bb.o

.thread168:                                       ; preds = %bb.c, %bb.i
  %.sink192 = phi i32 [ %i.v, %bb.i ], [ %i.d, %bb.c ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink192, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink192, ptr %i.af, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.ag = sitofp i32 %.sink192 to float           ; 7 uses
  %.sroa.11.8.vec.insert170 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ag, i64 0 ; 2 uses
  %.sroa.11.12.vec.insert171 = shufflevector <2 x float> %.sroa.11.8.vec.insert170, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call nnan float @llvm.copysign.f32(float 0.000000e+00, float %i.ag)
  %.sroa.0.0.vec.insert93 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ah, i64 0
  %i.ai = fmul nnan float %i.ag, 2.000000e+00
  %.sroa.25.32.vec.insert117 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ai, i64 0
  %i.aj = fmul nnan float %i.ag, 3.000000e+00
  %.sroa.36.48.vec.insert129 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  %i.ak = fmul nnan float %i.ag, 4.000000e+00
  %.sroa.47.64.vec.insert141 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  %i.al = fmul nnan float %i.ag, 5.000000e+00
  %.sroa.58.80.vec.insert153 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  br label %.loopexit

.thread177:                                       ; preds = %bb.g, %bb.j
  %.sink194 = phi i32 [ %i.y, %bb.j ], [ %i.n, %bb.g ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink194, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink194, ptr %i.an, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.ao = sitofp i32 %.sink194 to float           ; 6 uses
  %.sroa.11.8.vec.insert179 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ao, i64 0 ; 4 uses
  %.sroa.11.12.vec.insert180 = shufflevector <2 x float> %.sroa.11.8.vec.insert179, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = fmul nnan float %i.ao, 3.000000e+00
  %.sroa.14.20.vec.insert107 = insertelement <2 x float> %.sroa.11.8.vec.insert179, float %i.ap, i64 1
  %.sroa.25.36.vec.insert119 = insertelement <2 x float> %.sroa.11.8.vec.insert179, float 0.000000e+00, i64 1
  %i.aq = fmul nnan float %i.ao, 2.000000e+00     ; 2 uses
  %.sroa.36.52.vec.insert131 = insertelement <2 x float> %.sroa.11.8.vec.insert179, float %i.aq, i64 1
  %.sroa.47.68.vec.insert143 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ao, i64 1
  %.sroa.58.80.vec.insert149 = insertelement <2 x float> poison, float %i.aq, i64 0
  %.sroa.58.84.vec.insert155 = insertelement <2 x float> %.sroa.58.80.vec.insert149, float %i.ao, i64 1
  br label %.loopexit

.thread185:                                       ; preds = %bb.d, %bb.k
  %.sink196 = phi i32 [ %i.ab, %bb.k ], [ %i.h, %bb.d ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink196, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink196, ptr %i.as, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.at = sitofp i32 %.sink196 to float           ; 7 uses
  %.sroa.11.8.vec.insert187 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0 ; 3 uses
  %.sroa.11.12.vec.insert188 = shufflevector <2 x float> %.sroa.11.8.vec.insert187, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = fmul nnan float %i.at, 2.000000e+00     ; 2 uses
  %.sroa.0.0.vec.insert89 = insertelement <2 x float> poison, float %i.au, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert89, float %i.at, i64 1
  %.sroa.14.20.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.at, i64 1
  %.sroa.25.36.vec.insert = insertelement <2 x float> %.sroa.11.8.vec.insert187, float 0.000000e+00, i64 1
  %.sroa.36.52.vec.insert = insertelement <2 x float> %.sroa.11.8.vec.insert187, float %i.au, i64 1
  %i.av = fmul nnan float %i.at, 3.000000e+00
  %.sroa.58.80.vec.insert = insertelement <2 x float> poison, float %i.av, i64 0
  %.sroa.58.84.vec.insert = insertelement <2 x float> %.sroa.58.80.vec.insert, float %i.at, i64 1
  br label %.loopexit

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.thread168, %.thread177, %.thread185
  %.sroa.11.12.vec.insert174 = phi <2 x float> [ zeroinitializer, %bb.l ], [ %.sroa.11.12.vec.insert171, %.thread168 ], [ %.sroa.11.12.vec.insert180, %.thread177 ], [ %.sroa.11.12.vec.insert188, %.thread185 ] ; 6 uses
  %i.aw = phi float [ 0.000000e+00, %bb.l ], [ %i.ag, %.thread168 ], [ %i.ao, %.thread177 ], [ %i.at, %.thread185 ] ; 7 uses
  %i.ax = phi i32 [ 0, %bb.l ], [ %.sink192, %.thread168 ], [ %.sink194, %.thread177 ], [ %.sink196, %.thread185 ] ; 4 uses
  %.sroa.58.0 = phi <2 x float> [ zeroinitializer, %bb.l ], [ %.sroa.58.80.vec.insert153, %.thread168 ], [ %.sroa.58.84.vec.insert155, %.thread177 ], [ %.sroa.58.84.vec.insert, %.thread185 ]
  %.sroa.47.0 = phi <2 x float> [ zeroinitializer, %bb.l ], [ %.sroa.47.64.vec.insert141, %.thread168 ], [ %.sroa.47.68.vec.insert143, %.thread177 ], [ %.sroa.11.12.vec.insert188, %.thread185 ]
  %.sroa.36.0 = phi <2 x float> [ zeroinitializer, %bb.l ], [ %.sroa.36.48.vec.insert129, %.thread168 ], [ %.sroa.36.52.vec.insert131, %.thread177 ], [ %.sroa.36.52.vec.insert, %.thread185 ]
  %.sroa.25.0 = phi <2 x float> [ zeroinitializer, %bb.l ], [ %.sroa.25.32.vec.insert117, %.thread168 ], [ %.sroa.25.36.vec.insert119, %.thread177 ], [ %.sroa.25.36.vec.insert, %.thread185 ]
  %.sroa.14.0 = phi <2 x float> [ zeroinitializer, %bb.l ], [ %.sroa.11.8.vec.insert170, %.thread168 ], [ %.sroa.14.20.vec.insert107, %.thread177 ], [ %.sroa.14.20.vec.insert, %.thread185 ]
  %.sroa.0.0 = phi <2 x float> [ zeroinitializer, %bb.l ], [ %.sroa.0.0.vec.insert93, %.thread168 ], [ %.sroa.11.12.vec.insert180, %.thread177 ], [ %.sroa.0.4.vec.insert, %.thread185 ]
  %i.ay = mul nsw i32 %i.ax, 6                    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.ax                ; 4 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call noalias ptr @calloc(i64 noundef %i.ba, i64 noundef 4) #56, !noalias !135 ; 3 uses
  %i.bc = icmp sgt i32 %i.az, 0
  br i1 %i.bc, label %.lr.ph.preheader.i, label %GenImageColor.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %wide.trip.count.i = zext nneg i32 %i.az to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.az, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x i32> splat (i32 -65281), ptr %i.bd, align 1, !noalias !135
  store <4 x i32> splat (i32 -65281), ptr %i.be, align 1, !noalias !135
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %GenImageColor.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  store i32 -65281, ptr %i.bg, align 1, !noalias !135
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %GenImageColor.exit, label %.lr.ph.i, !llvm.loop !139

GenImageColor.exit:                               ; preds = %.lr.ph.i, %middle.block, %.loopexit
  %5 = ptrtoint ptr %i.bb to i64
  store i64 %5, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ay, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 7, ptr %.sroa.7.0..sroa_idx, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bi = load i32, ptr %i.bh, align 4
  call void @ImageFormat(ptr noundef nonnull %3, i32 noundef %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #52
  call void @ImageCopy(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %4, ptr noundef nonnull byval(%struct.Image) align 8 %1)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %GenImageColor.exit
  call void @ImageMipmaps(ptr noundef nonnull %4)
  call void @ImageMipmaps(ptr noundef nonnull %3)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %GenImageColor.exit
  %.sroa.33.8.vec.insert = insertelement <2 x float> poison, float %i.aw, i64 0
  %.sroa.33.12.vec.insert = shufflevector <2 x float> %.sroa.33.8.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bm = call nnan float @llvm.copysign.f32(float 0.000000e+00, float %i.aw)
  %.sroa.01.4.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bm, i64 1
  call void @ImageDraw(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.Image) align 8 %4, <2 x float> %.sroa.0.0, <2 x float> %.sroa.11.12.vec.insert174, <2 x float> %.sroa.01.4.vec.insert, <2 x float> %.sroa.33.12.vec.insert, i32 -1)
  %.sroa.01.4.vec.insert.1 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.aw, i64 1
  call void @ImageDraw(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.Image) align 8 %4, <2 x float> %.sroa.14.0, <2 x float> %.sroa.11.12.vec.insert174, <2 x float> %.sroa.01.4.vec.insert.1, <2 x float> %.sroa.33.12.vec.insert, i32 -1)
  %i.bn = fmul nnan float %i.aw, 2.000000e+00
  %.sroa.01.4.vec.insert.2 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bn, i64 1
  call void @ImageDraw(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.Image) align 8 %4, <2 x float> %.sroa.25.0, <2 x float> %.sroa.11.12.vec.insert174, <2 x float> %.sroa.01.4.vec.insert.2, <2 x float> %.sroa.33.12.vec.insert, i32 -1)
  %i.bo = fmul nnan float %i.aw, 3.000000e+00
  %.sroa.01.4.vec.insert.3 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bo, i64 1
  call void @ImageDraw(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.Image) align 8 %4, <2 x float> %.sroa.36.0, <2 x float> %.sroa.11.12.vec.insert174, <2 x float> %.sroa.01.4.vec.insert.3, <2 x float> %.sroa.33.12.vec.insert, i32 -1)
  %i.bp = fmul nnan float %i.aw, 4.000000e+00
  %.sroa.01.4.vec.insert.4 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bp, i64 1
  call void @ImageDraw(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.Image) align 8 %4, <2 x float> %.sroa.47.0, <2 x float> %.sroa.11.12.vec.insert174, <2 x float> %.sroa.01.4.vec.insert.4, <2 x float> %.sroa.33.12.vec.insert, i32 -1)
  %i.bq = fmul nnan float %i.aw, 5.000000e+00
  %.sroa.01.4.vec.insert.5 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bq, i64 1
  call void @ImageDraw(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.Image) align 8 %4, <2 x float> %.sroa.58.0, <2 x float> %.sroa.11.12.vec.insert174, <2 x float> %.sroa.01.4.vec.insert.5, <2 x float> %.sroa.33.12.vec.insert, i32 -1)
  %.sroa.074.0.copyload = load ptr, ptr %4, align 8
  call void @free(ptr noundef %.sroa.074.0.copyload) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread
  %i.br = phi i32 [ %i.ax, %bb.n ], [ %.sink, %.thread ]
  %i.bs = load ptr, ptr %3, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = call i32 @rlLoadTextureCubemap(ptr noundef %i.bs, i32 noundef %i.br, i32 noundef %i.bu, i32 noundef %i.bw) #52 ; 2 uses
  store i32 %i.bx, ptr %0, align 4
  %.not73 = icmp eq i32 %i.bx, 0
  br i1 %.not73, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bz = load <2 x i32>, ptr %i.bv, align 8
  store <2 x i32> %i.bz, ptr %i.by, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.77) #52
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.076.0.copyload = load ptr, ptr %3, align 8
  call void @free(ptr noundef %.sroa.076.0.copyload) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  br label %bb.t

bb.s:                                             ; preds = %bb.e, %bb.g, %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.78) #52
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret void
}

declare i32 @rlLoadTextureCubemap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @LoadRenderTexture(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.RenderTexture) align 4 captures(none) initializes((0, 44)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = tail call i32 @rlLoadFramebuffer() #52   ; 7 uses
  store i32 %i.b, ptr %0, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rlEnableFramebuffer(i32 noundef %i.b) #52
  %i.c = tail call i32 @rlLoadTexture(ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef 7, i32 noundef 1) #52 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.h, align 4
  %i.i = tail call i32 @rlLoadTextureDepth(i32 noundef %1, i32 noundef %2, i1 noundef zeroext true) #52 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 19, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.n, align 4
  tail call void @rlFramebufferAttach(i32 noundef %i.b, i32 noundef %i.c, i32 noundef 0, i32 noundef 100, i32 noundef 0) #52
  tail call void @rlFramebufferAttach(i32 noundef %i.b, i32 noundef %i.i, i32 noundef 100, i32 noundef 200, i32 noundef 0) #52
  %i.o = tail call zeroext i1 @rlFramebufferComplete(i32 noundef %i.b) #52
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.79, i32 noundef %i.b) #52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @rlDisableFramebuffer() #52
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.80) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare i32 @rlLoadFramebuffer() local_unnamed_addr #10

declare void @rlEnableFramebuffer(i32 noundef) local_unnamed_addr #10

declare i32 @rlLoadTextureDepth(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #10

declare void @rlFramebufferAttach(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare zeroext i1 @rlFramebufferComplete(i32 noundef) local_unnamed_addr #10

declare void @rlDisableFramebuffer() local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @IsTextureValid(ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %0) local_unnamed_addr #26 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp ne i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load <4 x i32>, ptr %i.c, align 4
  %.fr = freeze <4 x i32> %i.d
  %i.e = icmp slt <4 x i32> %.fr, splat (i32 1)
  %i.f = bitcast <4 x i1> %i.e to i4
  %i.g = icmp eq i4 %i.f, 0
  %op.rdx = select i1 %i.g, i1 %i.b, i1 false
  ret i1 %op.rdx
}

; Function Attrs: nounwind uwtable
define void @UnloadTexture(ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rlUnloadTexture(i32 noundef %i.a) #52
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.81, i32 noundef %i.a) #52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @rlUnloadTexture(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @IsRenderTextureValid(ptr nofree noundef readonly byval(%struct.RenderTexture) align 8 captures(none) %0) local_unnamed_addr #26 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp ne i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load <4 x i32>, ptr %i.e, align 4
  %.fr = freeze <4 x i32> %i.f
end_hunk_3
