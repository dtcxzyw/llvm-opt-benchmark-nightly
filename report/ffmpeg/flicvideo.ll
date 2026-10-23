Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/flicvideo?download=true
inline.NumInlined: 52
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@flic_decode_frame:bb.a
  br label %bytestream2_get_byte.exit242.i

bytestream2_get_byte.exit242.i:                   ; preds = %bb.k, %bb.j
  %.sroa.0.26.i = phi ptr [ %i.ce, %bb.k ], [ %i.l, %bb.j ]
  %.0.i241.i = phi i8 [ %i.cf, %bb.k ], [ 0, %bb.j ]
  %i.cg = zext nneg i32 %i.bz to i64
  %i.ch = add nsw i64 %.0172435.i, %i.cg          ; 2 uses
  br i1 %i.t, label %.critedge.i.i, label %bb.l

bb.l:                                             ; preds = %bytestream2_get_byte.exit242.i
  %i.ci = icmp sgt i64 %i.ch, %i.z
  br i1 %i.ci, label %flic_decode_frame_1BPP.exit, label %.lr.ph431.i.preheader

.critedge.i.i:                                    ; preds = %bytestream2_get_byte.exit242.i
  %i.cj = icmp slt i64 %i.ch, %i.z
  br i1 %i.cj, label %flic_decode_frame_1BPP.exit, label %.lr.ph431.i.preheader

.lr.ph431.i.preheader:                            ; preds = %.critedge.i.i, %bb.l
  br label %.lr.ph431.i

.lr.ph431.i:                                      ; preds = %.lr.ph431.i.preheader, %bb.n
  %.1155430.i = phi i32 [ %i.cm, %bb.n ], [ %.0154436.i, %.lr.ph431.i.preheader ] ; 2 uses
  %.0161429.i = phi i32 [ %i.co, %bb.n ], [ 0, %.lr.ph431.i.preheader ]
  %.1173428.i = phi i64 [ %i.ck, %bb.n ], [ %.0172435.i, %.lr.ph431.i.preheader ] ; 2 uses
  %i.ck = add nsw i64 %.1173428.i, 1              ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.u, i64 %.1173428.i
  store i8 %.0.i241.i, ptr %i.cl, align 1, !tbaa !34
  %i.cm = add nsw i32 %.1155430.i, -1             ; 3 uses
  %i.cn = icmp slt i32 %.1155430.i, 1
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph431.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.cm, i32 noundef %.0160443.i) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph431.i
  %i.co = add nuw nsw i32 %.0161429.i, 1          ; 2 uses
  %exitcond475.not.i = icmp eq i32 %i.co, %i.bz
  br i1 %exitcond475.not.i, label %.thread.i, label %.lr.ph431.i, !llvm.loop !43

bb.o:                                             ; preds = %bb.i
  %i.cp = sub nsw i32 0, %i.bz                    ; 2 uses
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = add nsw i64 %.0172435.i, %i.cq          ; 2 uses
  br i1 %i.t, label %.critedge.i248.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = icmp sgt i64 %i.cr, %i.z
  br i1 %i.cs, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit249.i

.critedge.i248.i:                                 ; preds = %bb.o
  %i.ct = icmp slt i64 %i.cr, %i.z
  br i1 %i.ct, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit249.i

check_pixel_ptr.exit249.i:                        ; preds = %.critedge.i248.i, %bb.p
  %i.cu = ptrtoint ptr %i.bx to i64
  %i.cv = sub i64 %i.cu, %i.ac
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = sub nsw i32 %i.cw, %i.bz
  %i.cy = icmp sgt i32 %i.cx, %i.az
  br i1 %i.cy, label %check_pixel_ptr.exit249._crit_edge.loopexit.i, label %.lr.ph424.i

.lr.ph424.i:                                      ; preds = %check_pixel_ptr.exit249.i, %bb.s
  %.3423.i = phi i32 [ %i.dg, %bb.s ], [ %.0154436.i, %check_pixel_ptr.exit249.i ] ; 2 uses
  %.1162422.i = phi i32 [ %i.di, %bb.s ], [ 0, %check_pixel_ptr.exit249.i ]
  %.3175421.i = phi i64 [ %i.de, %bb.s ], [ %.0172435.i, %check_pixel_ptr.exit249.i ] ; 2 uses
  %.sroa.0.3420.i = phi ptr [ %.sroa.0.25.i, %bb.s ], [ %i.bx, %check_pixel_ptr.exit249.i ] ; 3 uses
  %i.cz = ptrtoint ptr %.sroa.0.3420.i to i64
  %i.da = sub i64 %i.ab, %i.cz
  %i.db = icmp slt i64 %i.da, 1
  br i1 %i.db, label %bytestream2_get_byte.exit240.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph424.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.3420.i, i64 1
  %i.dd = load i8, ptr %.sroa.0.3420.i, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit240.i

bytestream2_get_byte.exit240.i:                   ; preds = %bb.q, %.lr.ph424.i
  %.sroa.0.25.i = phi ptr [ %i.dc, %bb.q ], [ %i.l, %.lr.ph424.i ] ; 2 uses
  %.0.i239.i = phi i8 [ %i.dd, %bb.q ], [ 0, %.lr.ph424.i ]
  %i.de = add nsw i64 %.3175421.i, 1              ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.u, i64 %.3175421.i
  store i8 %.0.i239.i, ptr %i.df, align 1, !tbaa !34
  %i.dg = add nsw i32 %.3423.i, -1                ; 3 uses
  %i.dh = icmp slt i32 %.3423.i, 1
  br i1 %i.dh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bytestream2_get_byte.exit240.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.dg, i32 noundef %.0160443.i) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bytestream2_get_byte.exit240.i
  %i.di = add nuw nsw i32 %.1162422.i, 1          ; 2 uses
  %exitcond473.not.i = icmp eq i32 %i.di, %i.cp
  br i1 %exitcond473.not.i, label %.thread.i, label %.lr.ph424.i, !llvm.loop !44

.thread.i:                                        ; preds = %bb.s, %bb.n
  %.sroa.0.4.i = phi ptr [ %.sroa.0.26.i, %bb.n ], [ %.sroa.0.25.i, %bb.s ] ; 2 uses
  %.4176.i = phi i64 [ %i.ck, %bb.n ], [ %i.de, %bb.s ]
  %.4.i = phi i32 [ %i.cm, %bb.n ], [ %i.dg, %bb.s ] ; 2 uses
  %i.dj = icmp sgt i32 %.4.i, 0
  br i1 %i.dj, label %.lr.ph437.i, label %check_pixel_ptr.exit249._crit_edge.loopexit.i, !llvm.loop !45

check_pixel_ptr.exit249._crit_edge.loopexit.i:    ; preds = %.thread.i, %check_pixel_ptr.exit249.i, %.lr.ph437.i
  %.sroa.0.5.ph.i = phi ptr [ %.sroa.0.4.i, %.thread.i ], [ %.sroa.0.2434.i, %.lr.ph437.i ], [ %i.bx, %check_pixel_ptr.exit249.i ]
  %.pre476.i = load ptr, ptr %i.h, align 8, !tbaa !32
  br label %check_pixel_ptr.exit249._crit_edge.i

check_pixel_ptr.exit249._crit_edge.i:             ; preds = %check_pixel_ptr.exit249._crit_edge.loopexit.i, %.lr.ph445.i
  %i.dk = phi ptr [ %i.bj, %.lr.ph445.i ], [ %.pre476.i, %check_pixel_ptr.exit249._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.0.5.i = phi ptr [ %i.bm, %.lr.ph445.i ], [ %.sroa.0.5.ph.i, %check_pixel_ptr.exit249._crit_edge.loopexit.i ] ; 2 uses
  %i.dl = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !35
  %i.do = sext i32 %i.dn to i64
  %i.dp = add nsw i64 %.0157444.i, %i.do
  %i.dq = add nuw nsw i32 %.0160443.i, 1          ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 116
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !103
  %i.dt = icmp slt i32 %i.dq, %i.ds
  br i1 %i.dt, label %.lr.ph445.i, label %.loopexit.i, !llvm.loop !46

bb.t:                                             ; preds = %bytestream2_get_le16.exit227.i
  %i.du = ptrtoint ptr %i.bc to i64
  %i.dv = sub i64 %i.ab, %i.du
  %i.dw = icmp slt i64 %i.dv, 2
  br i1 %i.dw, label %bytestream2_get_le16.exit225.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.14337.i, i64 4
  %i.dy = load i16, ptr %i.bc, align 1, !tbaa !34
  %i.dz = zext i16 %i.dy to i32
  br label %bytestream2_get_le16.exit225.i

bytestream2_get_le16.exit225.i:                   ; preds = %bb.u, %bb.t
  %.sroa.0.17.i = phi ptr [ %i.dx, %bb.u ], [ %i.l, %bb.t ] ; 3 uses
  %.0.i224.i = phi i32 [ %i.dz, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.ea = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 116
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !103
  %.not.i = icmp slt i32 %.0.i224.i, %i.ec
  br i1 %.not.i, label %bb.v, label %flic_decode_frame_1BPP.exit

bb.v:                                             ; preds = %bytestream2_get_le16.exit225.i
  %i.ed = ptrtoint ptr %.sroa.0.17.i to i64
  %i.ee = sub i64 %i.ab, %i.ed
  %i.ef = icmp slt i64 %i.ee, 2
  br i1 %i.ef, label %.loopexit.i, label %bytestream2_get_le16.exit.i

bytestream2_get_le16.exit.i:                      ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.17.i, i64 2 ; 2 uses
  %i.eh = load i16, ptr %.sroa.0.17.i, align 1, !tbaa !34 ; 2 uses
  %.not456.i = icmp eq i16 %i.eh, 0
  br i1 %.not456.i, label %.loopexit.i, label %.lr.ph417.i.preheader

.lr.ph417.i.preheader:                            ; preds = %bytestream2_get_le16.exit.i
  %i.ei = zext i16 %i.eh to i32
  %i.ej = load ptr, ptr %i.m, align 8, !tbaa !38  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !35
  %i.em = mul nsw i32 %i.el, %.0.i224.i
  %i.en = sext i32 %i.em to i64
  br label %.lr.ph417.i

.lr.ph417.i:                                      ; preds = %.lr.ph417.i.preheader, %bytestream2_get_byte.exit238.thread.i
  %i.eo = phi ptr [ %i.hg, %bytestream2_get_byte.exit238.thread.i ], [ %i.ej, %.lr.ph417.i.preheader ] ; 2 uses
  %.1158416.i = phi i64 [ %i.hk, %bytestream2_get_byte.exit238.thread.i ], [ %i.en, %.lr.ph417.i.preheader ] ; 4 uses
  %.0159415.i = phi i32 [ %i.hl, %bytestream2_get_byte.exit238.thread.i ], [ %i.ei, %.lr.ph417.i.preheader ] ; 2 uses
  %.sroa.0.6414.i = phi ptr [ %.sroa.0.10.i, %bytestream2_get_byte.exit238.thread.i ], [ %i.eg, %.lr.ph417.i.preheader ] ; 4 uses
  br i1 %i.t, label %.critedge.i252.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph417.i
  %i.ep = icmp sgt i64 %.1158416.i, %i.z
  br i1 %i.ep, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit253.i

.critedge.i252.i:                                 ; preds = %.lr.ph417.i
  %i.eq = icmp slt i64 %.1158416.i, %i.z
  br i1 %i.eq, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit253.i

check_pixel_ptr.exit253.i:                        ; preds = %.critedge.i252.i, %bb.w
  %i.er = ptrtoint ptr %.sroa.0.6414.i to i64     ; 2 uses
  %i.es = sub i64 %i.er, %i.ac
  %i.et = trunc i64 %i.es to i32
  %.not212.i = icmp sgt i32 %i.az, %i.et
  br i1 %.not212.i, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %check_pixel_ptr.exit253.i
  %i.eu = sub i64 %i.ab, %i.er
  %i.ev = icmp slt i64 %i.eu, 1
  br i1 %i.ev, label %bytestream2_get_byte.exit238.thread.i, label %bytestream2_get_byte.exit238.i

bytestream2_get_byte.exit238.i:                   ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.6414.i, i64 1 ; 2 uses
  %i.ex = load i8, ptr %.sroa.0.6414.i, align 1, !tbaa !34 ; 2 uses
  %i.ey = zext i8 %i.ex to i32
  %.not213.i = icmp eq i8 %i.ex, 0
  br i1 %.not213.i, label %bytestream2_get_byte.exit238.thread.i, label %.preheader382.i

.preheader382.i:                                  ; preds = %bytestream2_get_byte.exit238.i, %.thread360.i
  %.0165412.i = phi i32 [ %i.hf, %.thread360.i ], [ 0, %bytestream2_get_byte.exit238.i ]
  %.5177411.i = phi i64 [ %.9181.i, %.thread360.i ], [ %.1158416.i, %bytestream2_get_byte.exit238.i ]
  %.sroa.0.7410.i = phi ptr [ %.sroa.0.9.i, %.thread360.i ], [ %i.ew, %bytestream2_get_byte.exit238.i ] ; 4 uses
  %i.ez = ptrtoint ptr %.sroa.0.7410.i to i64     ; 2 uses
  %i.fa = sub i64 %i.ez, %i.ac
  %i.fb = trunc i64 %i.fa to i32
  %.not214.i = icmp sgt i32 %i.az, %i.fb
  br i1 %.not214.i, label %bb.y, label %bytestream2_get_byte.exit238.thread.loopexit.i

bb.y:                                             ; preds = %.preheader382.i
  %i.fc = sub i64 %i.ab, %i.ez
  %i.fd = icmp slt i64 %i.fc, 1
  br i1 %i.fd, label %bytestream2_get_byte.exit236.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.7410.i, i64 1 ; 2 uses
  %i.ff = load i8, ptr %.sroa.0.7410.i, align 1, !tbaa !34
  %.pre478.i = ptrtoint ptr %i.fe to i64
  %i.fg = zext i8 %i.ff to i64
  br label %bytestream2_get_byte.exit236.i

bytestream2_get_byte.exit236.i:                   ; preds = %bb.z, %bb.y
  %.pre-phi479.i = phi i64 [ %i.ab, %bb.y ], [ %.pre478.i, %bb.z ]
  %.sroa.0.23.i = phi ptr [ %i.l, %bb.y ], [ %i.fe, %bb.z ] ; 3 uses
  %.0.i235.i = phi i64 [ 0, %bb.y ], [ %i.fg, %bb.z ]
  %i.fh = add i64 %.0.i235.i, %.5177411.i         ; 7 uses
  %i.fi = sub i64 %i.ab, %.pre-phi479.i
  %i.fj = icmp slt i64 %i.fi, 1
  br i1 %i.fj, label %.thread360.i, label %bytestream2_get_byte.exit234.i

bytestream2_get_byte.exit234.i:                   ; preds = %bytestream2_get_byte.exit236.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.23.i, i64 1 ; 7 uses
  %i.fl = load i8, ptr %.sroa.0.23.i, align 1, !tbaa !34 ; 6 uses
  %i.fm = sext i8 %i.fl to i32                    ; 4 uses
  %i.fn = icmp sgt i8 %i.fl, 0
  br i1 %i.fn, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bytestream2_get_byte.exit234.i
  %i.fo = zext nneg i32 %i.fm to i64
  %i.fp = add nsw i64 %i.fh, %i.fo                ; 2 uses
  br i1 %i.t, label %.critedge.i256.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fq = icmp sgt i64 %i.fp, %i.z
  br i1 %i.fq, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit257.i

.critedge.i256.i:                                 ; preds = %bb.aa
  %i.fr = icmp slt i64 %i.fp, %i.z
  br i1 %i.fr, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit257.i

check_pixel_ptr.exit257.i:                        ; preds = %.critedge.i256.i, %bb.ab
  %i.fs = ptrtoint ptr %i.fk to i64
  %i.ft = sub i64 %i.fs, %i.ac
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = add nsw i32 %i.fm, %i.fu
  %i.fw = icmp sgt i32 %i.fv, %i.az
  br i1 %i.fw, label %bytestream2_get_byte.exit238.thread.loopexit.i, label %.lr.ph406.i.preheader

.lr.ph406.i.preheader:                            ; preds = %check_pixel_ptr.exit257.i
  %i.fx = icmp eq i8 %i.fl, 1
  br i1 %i.fx, label %.lr.ph406.i.epil.preheader, label %.lr.ph406.i.preheader.new

.lr.ph406.i.preheader.new:                        ; preds = %.lr.ph406.i.preheader
  %unroll_iter706 = and i32 %i.fm, 126
  br label %.lr.ph406.i

.lr.ph406.i:                                      ; preds = %bytestream2_get_byte.exit232.i.1, %.lr.ph406.i.preheader.new
  %.6178403.i = phi i64 [ %i.fh, %.lr.ph406.i.preheader.new ], [ %i.gj, %bytestream2_get_byte.exit232.i.1 ] ; 3 uses
  %.sroa.0.8402.i = phi ptr [ %i.fk, %.lr.ph406.i.preheader.new ], [ %.sroa.0.21.i.1, %bytestream2_get_byte.exit232.i.1 ] ; 3 uses
  %niter707 = phi i32 [ 0, %.lr.ph406.i.preheader.new ], [ %niter707.next.1, %bytestream2_get_byte.exit232.i.1 ]
  %i.fy = ptrtoint ptr %.sroa.0.8402.i to i64
  %i.fz = sub i64 %i.ab, %i.fy
  %i.ga = icmp slt i64 %i.fz, 1
  br i1 %i.ga, label %bytestream2_get_byte.exit232.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph406.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.8402.i, i64 1
  %i.gc = load i8, ptr %.sroa.0.8402.i, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit232.i

bytestream2_get_byte.exit232.i:                   ; preds = %bb.ac, %.lr.ph406.i
  %.sroa.0.21.i = phi ptr [ %i.gb, %bb.ac ], [ %i.l, %.lr.ph406.i ] ; 3 uses
  %.0.i231.i = phi i8 [ %i.gc, %bb.ac ], [ 0, %.lr.ph406.i ]
  %i.gd = getelementptr inbounds i8, ptr %i.u, i64 %.6178403.i
  store i8 %.0.i231.i, ptr %i.gd, align 1, !tbaa !34
  %i.ge = ptrtoint ptr %.sroa.0.21.i to i64
  %i.gf = sub i64 %i.ab, %i.ge
  %i.gg = icmp slt i64 %i.gf, 1
  br i1 %i.gg, label %bytestream2_get_byte.exit232.i.1, label %bb.ad

bb.ad:                                            ; preds = %bytestream2_get_byte.exit232.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.21.i, i64 1
  %i.gi = load i8, ptr %.sroa.0.21.i, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit232.i.1

bytestream2_get_byte.exit232.i.1:                 ; preds = %bb.ad, %bytestream2_get_byte.exit232.i
  %.sroa.0.21.i.1 = phi ptr [ %i.gh, %bb.ad ], [ %i.l, %bytestream2_get_byte.exit232.i ] ; 3 uses
  %.0.i231.i.1 = phi i8 [ %i.gi, %bb.ad ], [ 0, %bytestream2_get_byte.exit232.i ]
  %i.gj = add nsw i64 %.6178403.i, 2              ; 3 uses
  %i.gk = getelementptr i8, ptr %i.u, i64 %.6178403.i
  %i.gl = getelementptr i8, ptr %i.gk, i64 1
  store i8 %.0.i231.i.1, ptr %i.gl, align 1, !tbaa !34
  %niter707.next.1 = add i32 %niter707, 2         ; 2 uses
  %niter707.ncmp.1 = icmp eq i32 %niter707.next.1, %unroll_iter706
  br i1 %niter707.ncmp.1, label %.thread360.i.loopexit.unr-lcssa, label %.lr.ph406.i, !llvm.loop !47

bb.ae:                                            ; preds = %bytestream2_get_byte.exit234.i
  %i.gm = icmp slt i8 %i.fl, 0
  br i1 %i.gm, label %bb.af, label %.thread360.i

bb.af:                                            ; preds = %bb.ae
  %i.gn = ptrtoint ptr %i.fk to i64
  %i.go = sub i64 %i.ab, %i.gn
  %i.gp = icmp slt i64 %i.go, 1
  br i1 %i.gp, label %bytestream2_get_byte.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.23.i, i64 2
  %i.gr = load i8, ptr %i.fk, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.ag, %bb.af
  %.sroa.0.20.i = phi ptr [ %i.gq, %bb.ag ], [ %i.l, %bb.af ]
  %.0.i230.i = phi i8 [ %i.gr, %bb.ag ], [ 0, %bb.af ]
  %i.gs = sub nsw i32 0, %i.fm
  %i.gt = zext nneg i32 %i.gs to i64              ; 2 uses
  %i.gu = add i64 %i.fh, %i.gt                    ; 3 uses
  br i1 %i.t, label %.critedge.i260.i, label %bb.ah

bb.ah:                                            ; preds = %bytestream2_get_byte.exit.i
  %i.gv = icmp sgt i64 %i.gu, %i.z
  br i1 %i.gv, label %flic_decode_frame_1BPP.exit, label %.lr.ph.preheader.i

.critedge.i260.i:                                 ; preds = %bytestream2_get_byte.exit.i
  %i.gw = icmp slt i64 %i.gu, %i.z
  br i1 %i.gw, label %flic_decode_frame_1BPP.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i260.i, %bb.ah
  %scevgep.i = getelementptr i8, ptr %i.u, i64 %i.fh
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 %.0.i230.i, i64 %i.gt, i1 false), !tbaa !34
  br label %.thread360.i

.thread360.i.loopexit.unr-lcssa:                  ; preds = %bytestream2_get_byte.exit232.i.1
  %i.gx = and i8 %i.fl, 1
  %lcmp.mod702.not = icmp eq i8 %i.gx, 0
  br i1 %lcmp.mod702.not, label %.thread360.i, label %.lr.ph406.i.epil.preheader

.lr.ph406.i.epil.preheader:                       ; preds = %.thread360.i.loopexit.unr-lcssa, %.lr.ph406.i.preheader
  %.6178403.i.epil.init = phi i64 [ %i.fh, %.lr.ph406.i.preheader ], [ %i.gj, %.thread360.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.8402.i.epil.init = phi ptr [ %i.fk, %.lr.ph406.i.preheader ], [ %.sroa.0.21.i.1, %.thread360.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod705 = trunc i8 %i.fl to i1
  tail call void @llvm.assume(i1 %lcmp.mod705)
  %i.gy = ptrtoint ptr %.sroa.0.8402.i.epil.init to i64
  %i.gz = sub i64 %i.ab, %i.gy
  %i.ha = icmp slt i64 %i.gz, 1
  br i1 %i.ha, label %bytestream2_get_byte.exit232.i.epil, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph406.i.epil.preheader
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.8402.i.epil.init, i64 1
  %i.hc = load i8, ptr %.sroa.0.8402.i.epil.init, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit232.i.epil

bytestream2_get_byte.exit232.i.epil:              ; preds = %bb.ai, %.lr.ph406.i.epil.preheader
  %.sroa.0.21.i.epil = phi ptr [ %i.hb, %bb.ai ], [ %i.l, %.lr.ph406.i.epil.preheader ]
  %.0.i231.i.epil = phi i8 [ %i.hc, %bb.ai ], [ 0, %.lr.ph406.i.epil.preheader ]
  %i.hd = add nsw i64 %.6178403.i.epil.init, 1
  %i.he = getelementptr inbounds i8, ptr %i.u, i64 %.6178403.i.epil.init
  store i8 %.0.i231.i.epil, ptr %i.he, align 1, !tbaa !34
  br label %.thread360.i

.thread360.i:                                     ; preds = %bytestream2_get_byte.exit232.i.epil, %.thread360.i.loopexit.unr-lcssa, %.lr.ph.preheader.i, %bb.ae, %bytestream2_get_byte.exit236.i
  %.sroa.0.9.i = phi ptr [ %.sroa.0.20.i, %.lr.ph.preheader.i ], [ %i.l, %bytestream2_get_byte.exit236.i ], [ %i.fk, %bb.ae ], [ %.sroa.0.21.i.1, %.thread360.i.loopexit.unr-lcssa ], [ %.sroa.0.21.i.epil, %bytestream2_get_byte.exit232.i.epil ] ; 2 uses
  %.9181.i = phi i64 [ %i.gu, %.lr.ph.preheader.i ], [ %i.fh, %bytestream2_get_byte.exit236.i ], [ %i.fh, %bb.ae ], [ %i.gj, %.thread360.i.loopexit.unr-lcssa ], [ %i.hd, %bytestream2_get_byte.exit232.i.epil ]
  %i.hf = add nuw nsw i32 %.0165412.i, 1          ; 2 uses
  %exitcond472.not.i = icmp eq i32 %i.hf, %i.ey
  br i1 %exitcond472.not.i, label %bytestream2_get_byte.exit238.thread.loopexit.i, label %.preheader382.i, !llvm.loop !48

bytestream2_get_byte.exit238.thread.loopexit.i:   ; preds = %.thread360.i, %check_pixel_ptr.exit257.i, %.preheader382.i
  %.sroa.0.10.ph.i = phi ptr [ %i.fk, %check_pixel_ptr.exit257.i ], [ %.sroa.0.7410.i, %.preheader382.i ], [ %.sroa.0.9.i, %.thread360.i ]
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !38
  br label %bytestream2_get_byte.exit238.thread.i

bytestream2_get_byte.exit238.thread.i:            ; preds = %bytestream2_get_byte.exit238.thread.loopexit.i, %bytestream2_get_byte.exit238.i, %bb.x
  %i.hg = phi ptr [ %i.eo, %bytestream2_get_byte.exit238.i ], [ %i.eo, %bb.x ], [ %.pre.i, %bytestream2_get_byte.exit238.thread.loopexit.i ] ; 2 uses
  %.sroa.0.10.i = phi ptr [ %i.ew, %bytestream2_get_byte.exit238.i ], [ %i.l, %bb.x ], [ %.sroa.0.10.ph.i, %bytestream2_get_byte.exit238.thread.loopexit.i ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !35
  %i.hj = sext i32 %i.hi to i64
  %i.hk = add nsw i64 %.1158416.i, %i.hj
  %i.hl = add nsw i32 %.0159415.i, -1
  %i.hm = icmp sgt i32 %.0159415.i, 1
  br i1 %i.hm, label %.lr.ph417.i, label %.loopexit.i, !llvm.loop !49

bytestream2_get_le16.exit227.thread.i:            ; preds = %bytestream2_get_le16.exit227.i, %bytestream2_get_le32.exit.thread.i
  %.0.i226342.i = phi i32 [ %i.be, %bytestream2_get_le16.exit227.i ], [ 0, %bytestream2_get_le32.exit.thread.i ]
  %.sroa.0.18341.i = phi ptr [ %i.bc, %bytestream2_get_le16.exit227.i ], [ %i.l, %bytestream2_get_le32.exit.thread.i ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %.0.i226342.i) #8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bytestream2_get_byte.exit238.thread.i, %check_pixel_ptr.exit253.i, %check_pixel_ptr.exit249._crit_edge.i, %bytestream2_get_le16.exit227.thread.i, %bytestream2_get_le16.exit.i, %bb.v, %.preheader384.i
  %.sroa.0.11.i = phi ptr [ %.sroa.0.18341.i, %bytestream2_get_le16.exit227.thread.i ], [ %.sroa.0.5.i, %check_pixel_ptr.exit249._crit_edge.i ], [ %i.bc, %.preheader384.i ], [ %i.eg, %bytestream2_get_le16.exit.i ], [ %i.l, %bb.v ], [ %.sroa.0.6414.i, %check_pixel_ptr.exit253.i ], [ %.sroa.0.10.i, %bytestream2_get_byte.exit238.thread.i ] ; 3 uses
  %i.hn = ptrtoint ptr %.sroa.0.11.i to i64       ; 2 uses
  %i.ho = sub i64 %i.hn, %i.ac
  %i.hp = trunc i64 %i.ho to i32                  ; 2 uses
  %.not217.i = icmp slt i32 %i.az, %i.hp
  br i1 %.not217.i, label %.thread373.i, label %bb.aj

.thread373.i:                                     ; preds = %.loopexit.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #8
  br label %.critedge.i

bb.aj:                                            ; preds = %.loopexit.i
  %i.hq = sub nsw i32 %i.az, %i.hp
  %i.hr = sub i64 %i.ab, %i.hn
  %i.hs = zext nneg i32 %i.hq to i64
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.hr, i64 %i.hs)
  %i.ht = getelementptr inbounds i8, ptr %.sroa.0.11.i, i64 %..i.i ; 2 uses
  %i.hu = sub i32 %.1170449.i, %.0166.i           ; 2 uses
  %i.hv = add nsw i32 %.0167450.i, -1
  %i.hw = icmp ugt i32 %i.hu, 5
  %i.hx = icmp sgt i32 %.0167450.i, 1
  %or.cond4.i = select i1 %i.hw, i1 %i.hx, i1 false
  br i1 %or.cond4.i, label %.lr.ph452.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aj, %.lr.ph452.i, %.thread373.i, %bb.e
  %.sroa.0.13.i = phi ptr [ %.sroa.0.11.i, %.thread373.i ], [ %i.ai, %bb.e ], [ %i.ht, %bb.aj ], [ %.sroa.0.0448.i, %.lr.ph452.i ]
  %i.hy = ptrtoint ptr %.sroa.0.13.i to i64
  %i.hz = sub i64 %i.ab, %i.hy
  %i.ia = trunc i64 %i.hz to i32                  ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, 2
  br i1 %i.ib, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge.i
  %i.ic = sub nsw i32 %i.d, %i.ia
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %i.d, i32 noundef %i.ic) #8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge.i
  %i.id = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.ie = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.id) #8 ; 2 uses
  %i.if = icmp slt i32 %i.ie, 0
  br i1 %i.if, label %flic_decode_frame_1BPP.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 1, ptr %2, align 4, !tbaa !35
  br label %flic_decode_frame_1BPP.exit

bb.an:                                            ; preds = %bb.a
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !28 ; 15 uses
  %i.ii = icmp ne ptr %i.b, null
  %i.ij = icmp sgt i32 %i.d, -1
  %or.cond.i.i29 = and i1 %i.ii, %i.ij
  br i1 %or.cond.i.i29, label %bytestream2_init.exit.i30, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

bytestream2_init.exit.i30:                        ; preds = %bb.an
  %i.ik = zext nneg i32 %i.d to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ik ; 32 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 12 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !38
  %i.io = tail call i32 @ff_reget_buffer(ptr noundef nonnull %0, ptr noundef %i.in, i32 noundef 0) #8 ; 2 uses
  %i.ip = icmp slt i32 %i.io, 0
  br i1 %i.ip, label %flic_decode_frame_1BPP.exit, label %bb.ap

bb.ap:                                            ; preds = %bytestream2_init.exit.i30
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !38 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !35 ; 2 uses
  %i.it = icmp slt i32 %i.is, 1                   ; 11 uses
  %i.iu = load ptr, ptr %i.iq, align 8, !tbaa !102 ; 15 uses
  %i.iv = load ptr, ptr %i.ih, align 8, !tbaa !32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 116
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !103
  %i.iy = mul nsw i32 %i.ix, %i.is
  %i.iz = sext i32 %i.iy to i64                   ; 22 uses
  %i.ja = add nsw i32 %i.d, -2147482816
  %or.cond.i31 = icmp ult i32 %i.ja, -2147482800
  br i1 %or.cond.i31, label %flic_decode_frame_1BPP.exit, label %bytestream2_get_le32.exit377.i

bytestream2_get_le32.exit377.i:                   ; preds = %bb.ap
  %i.jb = ptrtoint ptr %i.il to i64               ; 45 uses
  %i.jc = ptrtoint ptr %i.b to i64                ; 11 uses
  %i.jd = load i32, ptr %i.b, align 1, !tbaa !34
  %i.je = tail call i32 @llvm.umin.i32(i32 %i.jd, i32 %i.d) ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.jg = load i16, ptr %i.jf, align 1, !tbaa !34 ; 2 uses
  %i.jh = zext i16 %i.jg to i32
  %i.ji = icmp samesign ult i32 %i.je, 16
  br i1 %i.ji, label %flic_decode_frame_1BPP.exit, label %bb.aq

bb.aq:                                            ; preds = %bytestream2_get_le32.exit377.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.jk = icmp samesign ugt i32 %i.je, 21
  %i.jl = icmp ne i16 %i.jg, 0
  %or.cond3787.i = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %or.cond3787.i, label %.lr.ph792.i, label %.critedge.i33

.lr.ph792.i:                                      ; preds = %bb.aq
  %i.jm = add nsw i32 %i.je, -16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ih, i64 1044
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ih, i64 1040 ; 2 uses
  %i.jq = add nuw nsw i32 %i.d, 768
  br label %bb.ar

bb.ar:                                            ; preds = %bb.dh, %.lr.ph792.i
  %.0311790.i = phi i32 [ %i.jh, %.lr.ph792.i ], [ %i.abw, %bb.dh ] ; 2 uses
  %.1314789.i = phi i32 [ %i.jm, %.lr.ph792.i ], [ %i.abv, %bb.dh ] ; 4 uses
  %.sroa.0.0788.i = phi ptr [ %i.jj, %.lr.ph792.i ], [ %i.abu, %bb.dh ] ; 4 uses
  %i.jr = ptrtoint ptr %.sroa.0.0788.i to i64
  %i.js = sub i64 %i.jb, %i.jr                    ; 2 uses
  %i.jt = trunc i64 %i.js to i32
  %i.ju = icmp sgt i32 %i.jt, 3
  br i1 %i.ju, label %bb.as, label %.critedge.i33

bb.as:                                            ; preds = %bb.ar
  %i.jv = icmp slt i64 %i.js, 4
  br i1 %i.jv, label %bytestream2_get_le32.exit.thread.i36, label %bytestream2_get_le32.exit.i35

bytestream2_get_le32.exit.i35:                    ; preds = %bb.as
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.0788.i, i64 4 ; 2 uses
  %i.jx = load i32, ptr %.sroa.0.0788.i, align 1, !tbaa !34 ; 3 uses
  %i.jy = icmp ugt i32 %i.jx, %.1314789.i
  br i1 %i.jy, label %bb.at, label %bytestream2_get_le32.exit.thread.i36

bb.at:                                            ; preds = %bytestream2_get_le32.exit.i35
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.5, i32 noundef %i.jx, i32 noundef %.1314789.i) #8
  br label %bytestream2_get_le32.exit.thread.i36

bytestream2_get_le32.exit.thread.i36:             ; preds = %bb.at, %bytestream2_get_le32.exit.i35, %bb.as
  %.sroa.0.24604.i = phi ptr [ %i.jw, %bb.at ], [ %i.jw, %bytestream2_get_le32.exit.i35 ], [ %i.il, %bb.as ] ; 6 uses
  %.0310.i = phi i32 [ %.1314789.i, %bb.at ], [ %i.jx, %bytestream2_get_le32.exit.i35 ], [ 0, %bb.as ] ; 3 uses
  %i.jz = ptrtoint ptr %.sroa.0.24604.i to i64    ; 2 uses
  %i.ka = sub i64 %i.jz, %i.jc
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = add i32 %.0310.i, -4
  %i.kd = add i32 %i.kc, %i.kb                    ; 12 uses
  %i.ke = sub i64 %i.jb, %i.jz
  %i.kf = icmp slt i64 %i.ke, 2
  br i1 %i.kf, label %bytestream2_get_le16.exit393.thread.i, label %bytestream2_get_le16.exit393.i

bytestream2_get_le16.exit393.i:                   ; preds = %bytestream2_get_le32.exit.thread.i36
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.24604.i, i64 2 ; 15 uses
  %i.kh = load i16, ptr %.sroa.0.24604.i, align 1, !tbaa !34 ; 2 uses
  %i.ki = zext i16 %i.kh to i32
  switch i16 %i.kh, label %bytestream2_get_le16.exit393.thread.i [
    i16 18, label %check_pixel_ptr.exit471.thread.i
    i16 16, label %bb.de
    i16 7, label %bb.bj
    i16 12, label %bb.cc
    i16 13, label %.preheader668.i
    i16 15, label %.preheader670.i
    i16 4, label %bb.au
    i16 11, label %bb.av
  ]

.preheader670.i:                                  ; preds = %bytestream2_get_le16.exit393.i
  %i.kj = load ptr, ptr %i.ih, align 8, !tbaa !32 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 116
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !103
  %i.km = icmp sgt i32 %i.kl, 0
  br i1 %i.km, label %.lr.ph728.i, label %check_pixel_ptr.exit471.thread.i

.preheader668.i:                                  ; preds = %bytestream2_get_le16.exit393.i
  %i.kn = load ptr, ptr %i.ih, align 8, !tbaa !32 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 116
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !103
  %i.kq = icmp sgt i32 %i.kp, 0
end_hunk_0
begin_hunk_1_@flic_decode_frame:bb.a

vec.epilog.vector.body588:                        ; preds = %vec.epilog.vector.body588, %vec.epilog.ph582
  %index589 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph582 ], [ %index.next591, %vec.epilog.vector.body588 ] ; 2 uses
  %i.rx = shl i64 %index589, 1
  %i.ry = getelementptr i8, ptr %i.rw, i64 %i.rx
  store <8 x i8> %interleaved.vec590, ptr %i.ry, align 1, !tbaa !34
  %index.next591 = add nuw i64 %index589, 4       ; 2 uses
  %i.rz = icmp eq i64 %index.next591, %n.vec583
  br i1 %i.rz, label %vec.epilog.middle.block592, label %vec.epilog.vector.body588, !llvm.loop !53

vec.epilog.middle.block592:                       ; preds = %vec.epilog.vector.body588
  %cmp.n593 = icmp eq i64 %n.vec583, %i.ri
  br i1 %cmp.n593, label %.loopexit.i47, label %.lr.ph759.i.preheader

.lr.ph759.i.preheader:                            ; preds = %iter.check578, %vec.epilog.iter.check580, %vec.epilog.middle.block592
  %.1301757.i.ph = phi i32 [ 0, %iter.check578 ], [ %i.rk, %vec.epilog.iter.check580 ], [ %i.rt, %vec.epilog.middle.block592 ]
  %.1319756.i.ph = phi i64 [ %i.qm, %iter.check578 ], [ %i.rm, %vec.epilog.iter.check580 ], [ %i.rv, %vec.epilog.middle.block592 ]
  br label %.lr.ph759.i

.lr.ph759.i:                                      ; preds = %.lr.ph759.i.preheader, %.lr.ph759.i
  %.1301757.i = phi i32 [ %i.sd, %.lr.ph759.i ], [ %.1301757.i.ph, %.lr.ph759.i.preheader ]
  %.1319756.i = phi i64 [ %i.sb, %.lr.ph759.i ], [ %.1319756.i.ph, %.lr.ph759.i.preheader ] ; 2 uses
  %i.sa = getelementptr inbounds i8, ptr %i.iu, i64 %.1319756.i ; 2 uses
  store i8 %.0.i415.i, ptr %i.sa, align 1, !tbaa !34
  %i.sb = add nsw i64 %.1319756.i, 2              ; 2 uses
  %i.sc = getelementptr i8, ptr %i.sa, i64 1
  store i8 %.0.i413.i, ptr %i.sc, align 1, !tbaa !34
  %i.sd = add nuw nsw i32 %.1301757.i, 1          ; 2 uses
  %exitcond840.not.i = icmp eq i32 %i.sd, %i.qt
  br i1 %exitcond840.not.i, label %.loopexit.i47, label %.lr.ph759.i, !llvm.loop !54

bytestream2_get_byte.exit418.thread.i:            ; preds = %bytestream2_get_byte.exit418.i, %bytestream2_get_byte.exit420.i
  %i.se = phi i32 [ %i.qr, %bytestream2_get_byte.exit418.i ], [ 0, %bytestream2_get_byte.exit420.i ] ; 2 uses
  %.sroa.0.44620.i = phi ptr [ %i.qp, %bytestream2_get_byte.exit418.i ], [ %i.il, %bytestream2_get_byte.exit420.i ] ; 4 uses
  %i.sf = shl nuw nsw i32 %i.se, 1                ; 3 uses
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = add nsw i64 %i.qm, %i.sg                ; 2 uses
  br i1 %i.it, label %.critedge.i446.i, label %bb.by

bb.by:                                            ; preds = %bytestream2_get_byte.exit418.thread.i
  %i.si = icmp sgt i64 %i.sh, %i.iz
  br i1 %i.si, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit447.i

.critedge.i446.i:                                 ; preds = %bytestream2_get_byte.exit418.thread.i
  %i.sj = icmp slt i64 %i.sh, %i.iz
  br i1 %i.sj, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit447.i

check_pixel_ptr.exit447.i:                        ; preds = %.critedge.i446.i, %bb.by
  %i.sk = ptrtoint ptr %.sroa.0.44620.i to i64
  %i.sl = sub i64 %i.sk, %i.jc
  %i.sm = trunc i64 %i.sl to i32
  %i.sn = add nsw i32 %i.sf, %i.sm
  %i.so = icmp sgt i32 %i.sn, %i.kd
  br i1 %i.so, label %check_pixel_ptr.exit447._crit_edge.i, label %.preheader.i

.preheader.i:                                     ; preds = %check_pixel_ptr.exit447.i
  %.not800.i = icmp eq i32 %i.se, 0
  br i1 %.not800.i, label %.loopexit.i47, label %.lr.ph766.i

.lr.ph766.i:                                      ; preds = %.preheader.i, %bytestream2_get_byte.exit412.i.1
  %.2302764.i = phi i32 [ %i.td, %bytestream2_get_byte.exit412.i.1 ], [ 0, %.preheader.i ]
  %.2320763.i = phi i64 [ %i.ta, %bytestream2_get_byte.exit412.i.1 ], [ %i.qm, %.preheader.i ] ; 3 uses
  %.sroa.0.5762.i = phi ptr [ %.sroa.0.41.i.1, %bytestream2_get_byte.exit412.i.1 ], [ %.sroa.0.44620.i, %.preheader.i ] ; 3 uses
  %i.sp = ptrtoint ptr %.sroa.0.5762.i to i64
  %i.sq = sub i64 %i.jb, %i.sp
  %i.sr = icmp slt i64 %i.sq, 1
  br i1 %i.sr, label %bytestream2_get_byte.exit412.i, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph766.i
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.0.5762.i, i64 1
  %i.st = load i8, ptr %.sroa.0.5762.i, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit412.i

bytestream2_get_byte.exit412.i:                   ; preds = %bb.bz, %.lr.ph766.i
  %.sroa.0.41.i = phi ptr [ %i.ss, %bb.bz ], [ %i.il, %.lr.ph766.i ] ; 3 uses
  %.0.i411.i = phi i8 [ %i.st, %bb.bz ], [ 0, %.lr.ph766.i ]
  %i.su = getelementptr inbounds i8, ptr %i.iu, i64 %.2320763.i
  store i8 %.0.i411.i, ptr %i.su, align 1, !tbaa !34
  %i.sv = ptrtoint ptr %.sroa.0.41.i to i64
  %i.sw = sub i64 %i.jb, %i.sv
  %i.sx = icmp slt i64 %i.sw, 1
  br i1 %i.sx, label %bytestream2_get_byte.exit412.i.1, label %bb.ca

bb.ca:                                            ; preds = %bytestream2_get_byte.exit412.i
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.0.41.i, i64 1
  %i.sz = load i8, ptr %.sroa.0.41.i, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit412.i.1

bytestream2_get_byte.exit412.i.1:                 ; preds = %bb.ca, %bytestream2_get_byte.exit412.i
  %.sroa.0.41.i.1 = phi ptr [ %i.sy, %bb.ca ], [ %i.il, %bytestream2_get_byte.exit412.i ] ; 2 uses
  %.0.i411.i.1 = phi i8 [ %i.sz, %bb.ca ], [ 0, %bytestream2_get_byte.exit412.i ]
  %i.ta = add nsw i64 %.2320763.i, 2              ; 2 uses
  %i.tb = getelementptr i8, ptr %i.iu, i64 %.2320763.i
  %i.tc = getelementptr i8, ptr %i.tb, i64 1
  store i8 %.0.i411.i.1, ptr %i.tc, align 1, !tbaa !34
  %i.td = add nuw nsw i32 %.2302764.i, 2          ; 2 uses
  %exitcond841.not.i.1 = icmp eq i32 %i.td, %i.sf
  br i1 %exitcond841.not.i.1, label %.loopexit.i47, label %.lr.ph766.i, !llvm.loop !55

.loopexit.i47:                                    ; preds = %.lr.ph759.i, %bytestream2_get_byte.exit412.i.1, %middle.block574, %vec.epilog.middle.block592, %.preheader.i
  %.sroa.0.6.i = phi ptr [ %.sroa.0.42.i, %middle.block574 ], [ %.sroa.0.44620.i, %.preheader.i ], [ %.sroa.0.41.i.1, %bytestream2_get_byte.exit412.i.1 ], [ %.sroa.0.42.i, %vec.epilog.middle.block592 ], [ %.sroa.0.42.i, %.lr.ph759.i ] ; 2 uses
  %.3321.i = phi i64 [ %i.rm, %middle.block574 ], [ %i.qm, %.preheader.i ], [ %i.ta, %bytestream2_get_byte.exit412.i.1 ], [ %i.rv, %vec.epilog.middle.block592 ], [ %i.sb, %.lr.ph759.i ]
  %i.te = add nuw nsw i32 %.1308772.i, 1          ; 2 uses
  %exitcond842.not.i = icmp eq i32 %i.te, %.0.i386906.i
  br i1 %exitcond842.not.i, label %check_pixel_ptr.exit447._crit_edge.i, label %.lr.ph774.i, !llvm.loop !56

check_pixel_ptr.exit447._crit_edge.i:             ; preds = %.loopexit.i47, %check_pixel_ptr.exit447.i, %.lr.ph774.i, %check_pixel_ptr.exit439.i
  %.sroa.0.7.i = phi ptr [ %.sroa.0.28905.i, %check_pixel_ptr.exit439.i ], [ %.sroa.0.6.i, %.loopexit.i47 ], [ %.sroa.0.4770.i, %.lr.ph774.i ], [ %.sroa.0.44620.i, %check_pixel_ptr.exit447.i ]
  %i.tf = load ptr, ptr %i.im, align 8, !tbaa !38
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 64
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !35
  %i.ti = sext i32 %i.th to i64
  %i.tj = add nsw i64 %.0290782.i, %i.ti
  br label %bb.cb

bb.cb:                                            ; preds = %check_pixel_ptr.exit447._crit_edge.i, %check_pixel_ptr.exit435.i, %bb.bo, %bb.bn
  %.sroa.0.8.i = phi ptr [ %i.oz, %bb.bn ], [ %i.oz, %bb.bo ], [ %i.oz, %check_pixel_ptr.exit435.i ], [ %.sroa.0.7.i, %check_pixel_ptr.exit447._crit_edge.i ] ; 2 uses
  %.1296.i = phi i32 [ %.0295781.i, %bb.bn ], [ %.0295781.i, %bb.bo ], [ %.0295781.i, %check_pixel_ptr.exit435.i ], [ %i.py, %check_pixel_ptr.exit447._crit_edge.i ] ; 2 uses
  %.1291.i = phi i64 [ %i.po, %bb.bn ], [ %.0290782.i, %bb.bo ], [ %.0290782.i, %check_pixel_ptr.exit435.i ], [ %i.tj, %check_pixel_ptr.exit447._crit_edge.i ]
  %i.tk = icmp sgt i32 %.1296.i, 0
  br i1 %i.tk, label %.lr.ph783.i, label %check_pixel_ptr.exit471.thread.i, !llvm.loop !57

bb.cc:                                            ; preds = %bytestream2_get_le16.exit393.i
  %i.tl = ptrtoint ptr %i.kg to i64
  %i.tm = sub i64 %i.jb, %i.tl
  %i.tn = icmp slt i64 %i.tm, 2
  br i1 %i.tn, label %bytestream2_get_le16.exit385.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.0.24604.i, i64 4
  %i.tp = load i16, ptr %i.kg, align 1, !tbaa !34
  %i.tq = zext i16 %i.tp to i32
  br label %bytestream2_get_le16.exit385.i

bytestream2_get_le16.exit385.i:                   ; preds = %bb.cd, %bb.cc
  %.sroa.0.27.i = phi ptr [ %i.to, %bb.cd ], [ %i.il, %bb.cc ] ; 3 uses
  %.0.i384.i = phi i32 [ %i.tq, %bb.cd ], [ 0, %bb.cc ] ; 2 uses
  %i.tr = load ptr, ptr %i.ih, align 8, !tbaa !32
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 116
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !103
  %.not368.i = icmp slt i32 %.0.i384.i, %i.tt
  br i1 %.not368.i, label %bb.ce, label %flic_decode_frame_1BPP.exit

bb.ce:                                            ; preds = %bytestream2_get_le16.exit385.i
  %i.tu = ptrtoint ptr %.sroa.0.27.i to i64
  %i.tv = sub i64 %i.jb, %i.tu
  %i.tw = icmp slt i64 %i.tv, 2
  br i1 %i.tw, label %check_pixel_ptr.exit471.thread.i, label %bytestream2_get_le16.exit.i43

bytestream2_get_le16.exit.i43:                    ; preds = %bb.ce
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.0.27.i, i64 2 ; 2 uses
  %i.ty = load i16, ptr %.sroa.0.27.i, align 1, !tbaa !34 ; 2 uses
  %.not798.i = icmp eq i16 %i.ty, 0
  br i1 %.not798.i, label %check_pixel_ptr.exit471.thread.i, label %.lr.ph753.i.preheader

.lr.ph753.i.preheader:                            ; preds = %bytestream2_get_le16.exit.i43
  %i.tz = zext i16 %i.ty to i32
  %i.ua = load ptr, ptr %i.im, align 8, !tbaa !38 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 64
  %i.uc = load i32, ptr %i.ub, align 8, !tbaa !35
  %i.ud = mul nsw i32 %i.uc, %.0.i384.i
  %i.ue = sext i32 %i.ud to i64
  br label %.lr.ph753.i

.lr.ph753.i:                                      ; preds = %.lr.ph753.i.preheader, %bytestream2_get_byte.exit410.thread.i
  %i.uf = phi ptr [ %i.wx, %bytestream2_get_byte.exit410.thread.i ], [ %i.ua, %.lr.ph753.i.preheader ] ; 2 uses
  %.2292752.i = phi i64 [ %i.xb, %bytestream2_get_byte.exit410.thread.i ], [ %i.ue, %.lr.ph753.i.preheader ] ; 4 uses
  %.2297751.i = phi i32 [ %i.xc, %bytestream2_get_byte.exit410.thread.i ], [ %i.tz, %.lr.ph753.i.preheader ] ; 2 uses
  %.sroa.0.9750.i = phi ptr [ %.sroa.0.13.i44, %bytestream2_get_byte.exit410.thread.i ], [ %i.tx, %.lr.ph753.i.preheader ] ; 4 uses
  br i1 %i.it, label %.critedge.i450.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph753.i
  %i.ug = icmp sgt i64 %.2292752.i, %i.iz
  br i1 %i.ug, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit451.i

.critedge.i450.i:                                 ; preds = %.lr.ph753.i
  %i.uh = icmp slt i64 %.2292752.i, %i.iz
  br i1 %i.uh, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit451.i

check_pixel_ptr.exit451.i:                        ; preds = %.critedge.i450.i, %bb.cf
  %i.ui = ptrtoint ptr %.sroa.0.9750.i to i64     ; 2 uses
  %i.uj = sub i64 %i.ui, %i.jc
  %i.uk = trunc i64 %i.uj to i32
  %.not369.i = icmp sgt i32 %i.kd, %i.uk
  br i1 %.not369.i, label %bb.cg, label %check_pixel_ptr.exit471.thread.i

bb.cg:                                            ; preds = %check_pixel_ptr.exit451.i
  %i.ul = sub i64 %i.jb, %i.ui
  %i.um = icmp slt i64 %i.ul, 1
  br i1 %i.um, label %bytestream2_get_byte.exit410.thread.i, label %bytestream2_get_byte.exit410.i

bytestream2_get_byte.exit410.i:                   ; preds = %bb.cg
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.0.9750.i, i64 1 ; 2 uses
  %i.uo = load i8, ptr %.sroa.0.9750.i, align 1, !tbaa !34 ; 2 uses
  %i.up = zext i8 %i.uo to i32
  %.not370.i = icmp eq i8 %i.uo, 0
  br i1 %.not370.i, label %bytestream2_get_byte.exit410.thread.i, label %.preheader660.i

.preheader660.i:                                  ; preds = %bytestream2_get_byte.exit410.i, %.thread.i45
  %.2309748.i = phi i32 [ %i.ww, %.thread.i45 ], [ 0, %bytestream2_get_byte.exit410.i ]
  %.4322747.i = phi i64 [ %.7325.i, %.thread.i45 ], [ %.2292752.i, %bytestream2_get_byte.exit410.i ]
  %.sroa.0.10746.i = phi ptr [ %.sroa.0.12.i, %.thread.i45 ], [ %i.un, %bytestream2_get_byte.exit410.i ] ; 4 uses
  %i.uq = ptrtoint ptr %.sroa.0.10746.i to i64    ; 2 uses
  %i.ur = sub i64 %i.uq, %i.jc
  %i.us = trunc i64 %i.ur to i32
  %.not371.i = icmp sgt i32 %i.kd, %i.us
  br i1 %.not371.i, label %bb.ch, label %bytestream2_get_byte.exit410.thread.loopexit.i

bb.ch:                                            ; preds = %.preheader660.i
  %i.ut = sub i64 %i.jb, %i.uq
  %i.uu = icmp slt i64 %i.ut, 1
  br i1 %i.uu, label %bytestream2_get_byte.exit408.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0.10746.i, i64 1 ; 2 uses
  %i.uw = load i8, ptr %.sroa.0.10746.i, align 1, !tbaa !34
  %.pre849.i = ptrtoint ptr %i.uv to i64
  %i.ux = zext i8 %i.uw to i64
  br label %bytestream2_get_byte.exit408.i

bytestream2_get_byte.exit408.i:                   ; preds = %bb.ci, %bb.ch
  %.pre-phi850.i = phi i64 [ %i.jb, %bb.ch ], [ %.pre849.i, %bb.ci ]
  %.sroa.0.39.i = phi ptr [ %i.il, %bb.ch ], [ %i.uv, %bb.ci ] ; 3 uses
  %.0.i407.i = phi i64 [ 0, %bb.ch ], [ %i.ux, %bb.ci ]
  %i.uy = add i64 %.0.i407.i, %.4322747.i         ; 7 uses
  %i.uz = sub i64 %i.jb, %.pre-phi850.i
  %i.va = icmp slt i64 %i.uz, 1
  br i1 %i.va, label %.thread.i45, label %bytestream2_get_byte.exit406.i

bytestream2_get_byte.exit406.i:                   ; preds = %bytestream2_get_byte.exit408.i
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.39.i, i64 1 ; 7 uses
  %i.vc = load i8, ptr %.sroa.0.39.i, align 1, !tbaa !34 ; 6 uses
  %i.vd = sext i8 %i.vc to i32                    ; 4 uses
  %i.ve = icmp sgt i8 %i.vc, 0
  br i1 %i.ve, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %bytestream2_get_byte.exit406.i
  %i.vf = zext nneg i32 %i.vd to i64
  %i.vg = add nsw i64 %i.uy, %i.vf                ; 2 uses
  br i1 %i.it, label %.critedge.i454.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vh = icmp sgt i64 %i.vg, %i.iz
  br i1 %i.vh, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit455.i

.critedge.i454.i:                                 ; preds = %bb.cj
  %i.vi = icmp slt i64 %i.vg, %i.iz
  br i1 %i.vi, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit455.i

check_pixel_ptr.exit455.i:                        ; preds = %.critedge.i454.i, %bb.ck
  %i.vj = ptrtoint ptr %i.vb to i64
  %i.vk = sub i64 %i.vj, %i.jc
  %i.vl = trunc i64 %i.vk to i32
  %i.vm = add nsw i32 %i.vd, %i.vl
  %i.vn = icmp sgt i32 %i.vm, %i.kd
  br i1 %i.vn, label %bytestream2_get_byte.exit410.thread.loopexit.i, label %.lr.ph742.i.preheader

.lr.ph742.i.preheader:                            ; preds = %check_pixel_ptr.exit455.i
  %i.vo = icmp eq i8 %i.vc, 1
  br i1 %i.vo, label %.lr.ph742.i.epil.preheader, label %.lr.ph742.i.preheader.new

.lr.ph742.i.preheader.new:                        ; preds = %.lr.ph742.i.preheader
  %unroll_iter698 = and i32 %i.vd, 126
  br label %.lr.ph742.i

.lr.ph742.i:                                      ; preds = %bytestream2_get_byte.exit404.i.1, %.lr.ph742.i.preheader.new
  %.5323739.i = phi i64 [ %i.uy, %.lr.ph742.i.preheader.new ], [ %i.wa, %bytestream2_get_byte.exit404.i.1 ] ; 3 uses
  %.sroa.0.11738.i = phi ptr [ %i.vb, %.lr.ph742.i.preheader.new ], [ %.sroa.0.37.i.1, %bytestream2_get_byte.exit404.i.1 ] ; 3 uses
  %niter699 = phi i32 [ 0, %.lr.ph742.i.preheader.new ], [ %niter699.next.1, %bytestream2_get_byte.exit404.i.1 ]
  %i.vp = ptrtoint ptr %.sroa.0.11738.i to i64
  %i.vq = sub i64 %i.jb, %i.vp
  %i.vr = icmp slt i64 %i.vq, 1
  br i1 %i.vr, label %bytestream2_get_byte.exit404.i, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph742.i
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.0.11738.i, i64 1
  %i.vt = load i8, ptr %.sroa.0.11738.i, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit404.i

bytestream2_get_byte.exit404.i:                   ; preds = %bb.cl, %.lr.ph742.i
  %.sroa.0.37.i = phi ptr [ %i.vs, %bb.cl ], [ %i.il, %.lr.ph742.i ] ; 3 uses
  %.0.i403.i = phi i8 [ %i.vt, %bb.cl ], [ 0, %.lr.ph742.i ]
  %i.vu = getelementptr inbounds i8, ptr %i.iu, i64 %.5323739.i
  store i8 %.0.i403.i, ptr %i.vu, align 1, !tbaa !34
  %i.vv = ptrtoint ptr %.sroa.0.37.i to i64
  %i.vw = sub i64 %i.jb, %i.vv
  %i.vx = icmp slt i64 %i.vw, 1
  br i1 %i.vx, label %bytestream2_get_byte.exit404.i.1, label %bb.cm

bb.cm:                                            ; preds = %bytestream2_get_byte.exit404.i
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.0.37.i, i64 1
  %i.vz = load i8, ptr %.sroa.0.37.i, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit404.i.1

bytestream2_get_byte.exit404.i.1:                 ; preds = %bb.cm, %bytestream2_get_byte.exit404.i
  %.sroa.0.37.i.1 = phi ptr [ %i.vy, %bb.cm ], [ %i.il, %bytestream2_get_byte.exit404.i ] ; 3 uses
  %.0.i403.i.1 = phi i8 [ %i.vz, %bb.cm ], [ 0, %bytestream2_get_byte.exit404.i ]
  %i.wa = add nsw i64 %.5323739.i, 2              ; 3 uses
  %i.wb = getelementptr i8, ptr %i.iu, i64 %.5323739.i
  %i.wc = getelementptr i8, ptr %i.wb, i64 1
  store i8 %.0.i403.i.1, ptr %i.wc, align 1, !tbaa !34
  %niter699.next.1 = add i32 %niter699, 2         ; 2 uses
  %niter699.ncmp.1 = icmp eq i32 %niter699.next.1, %unroll_iter698
  br i1 %niter699.ncmp.1, label %.thread.i45.loopexit.unr-lcssa, label %.lr.ph742.i, !llvm.loop !58

bb.cn:                                            ; preds = %bytestream2_get_byte.exit406.i
  %i.wd = icmp slt i8 %i.vc, 0
  br i1 %i.wd, label %bb.co, label %.thread.i45

bb.co:                                            ; preds = %bb.cn
  %i.we = sub nsw i32 0, %i.vd
  %i.wf = ptrtoint ptr %i.vb to i64
  %i.wg = sub i64 %i.jb, %i.wf
  %i.wh = icmp slt i64 %i.wg, 1
  br i1 %i.wh, label %bytestream2_get_byte.exit402.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.0.39.i, i64 2
  %i.wj = load i8, ptr %i.vb, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit402.i

bytestream2_get_byte.exit402.i:                   ; preds = %bb.cp, %bb.co
  %.sroa.0.36.i = phi ptr [ %i.wi, %bb.cp ], [ %i.il, %bb.co ]
  %.0.i401.i = phi i8 [ %i.wj, %bb.cp ], [ 0, %bb.co ]
  %i.wk = zext nneg i32 %i.we to i64              ; 2 uses
  %i.wl = add i64 %i.uy, %i.wk                    ; 3 uses
  br i1 %i.it, label %.critedge.i458.i, label %bb.cq

bb.cq:                                            ; preds = %bytestream2_get_byte.exit402.i
  %i.wm = icmp sgt i64 %i.wl, %i.iz
  br i1 %i.wm, label %flic_decode_frame_1BPP.exit, label %.lr.ph735.preheader.i

.critedge.i458.i:                                 ; preds = %bytestream2_get_byte.exit402.i
  %i.wn = icmp slt i64 %i.wl, %i.iz
  br i1 %i.wn, label %flic_decode_frame_1BPP.exit, label %.lr.ph735.preheader.i

.lr.ph735.preheader.i:                            ; preds = %.critedge.i458.i, %bb.cq
  %scevgep.i46 = getelementptr i8, ptr %i.iu, i64 %i.uy
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i46, i8 %.0.i401.i, i64 %i.wk, i1 false), !tbaa !34
  br label %.thread.i45

.thread.i45.loopexit.unr-lcssa:                   ; preds = %bytestream2_get_byte.exit404.i.1
  %i.wo = and i8 %i.vc, 1
  %lcmp.mod694.not = icmp eq i8 %i.wo, 0
  br i1 %lcmp.mod694.not, label %.thread.i45, label %.lr.ph742.i.epil.preheader

.lr.ph742.i.epil.preheader:                       ; preds = %.thread.i45.loopexit.unr-lcssa, %.lr.ph742.i.preheader
  %.5323739.i.epil.init = phi i64 [ %i.uy, %.lr.ph742.i.preheader ], [ %i.wa, %.thread.i45.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.11738.i.epil.init = phi ptr [ %i.vb, %.lr.ph742.i.preheader ], [ %.sroa.0.37.i.1, %.thread.i45.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod697 = trunc i8 %i.vc to i1
  tail call void @llvm.assume(i1 %lcmp.mod697)
  %i.wp = ptrtoint ptr %.sroa.0.11738.i.epil.init to i64
  %i.wq = sub i64 %i.jb, %i.wp
  %i.wr = icmp slt i64 %i.wq, 1
  br i1 %i.wr, label %bytestream2_get_byte.exit404.i.epil, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph742.i.epil.preheader
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.0.11738.i.epil.init, i64 1
  %i.wt = load i8, ptr %.sroa.0.11738.i.epil.init, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit404.i.epil

bytestream2_get_byte.exit404.i.epil:              ; preds = %bb.cr, %.lr.ph742.i.epil.preheader
  %.sroa.0.37.i.epil = phi ptr [ %i.ws, %bb.cr ], [ %i.il, %.lr.ph742.i.epil.preheader ]
  %.0.i403.i.epil = phi i8 [ %i.wt, %bb.cr ], [ 0, %.lr.ph742.i.epil.preheader ]
  %i.wu = add nsw i64 %.5323739.i.epil.init, 1
  %i.wv = getelementptr inbounds i8, ptr %i.iu, i64 %.5323739.i.epil.init
  store i8 %.0.i403.i.epil, ptr %i.wv, align 1, !tbaa !34
  br label %.thread.i45

.thread.i45:                                      ; preds = %bytestream2_get_byte.exit404.i.epil, %.thread.i45.loopexit.unr-lcssa, %.lr.ph735.preheader.i, %bb.cn, %bytestream2_get_byte.exit408.i
  %.sroa.0.12.i = phi ptr [ %i.il, %bytestream2_get_byte.exit408.i ], [ %.sroa.0.36.i, %.lr.ph735.preheader.i ], [ %i.vb, %bb.cn ], [ %.sroa.0.37.i.1, %.thread.i45.loopexit.unr-lcssa ], [ %.sroa.0.37.i.epil, %bytestream2_get_byte.exit404.i.epil ] ; 2 uses
  %.7325.i = phi i64 [ %i.uy, %bytestream2_get_byte.exit408.i ], [ %i.wl, %.lr.ph735.preheader.i ], [ %i.uy, %bb.cn ], [ %i.wa, %.thread.i45.loopexit.unr-lcssa ], [ %i.wu, %bytestream2_get_byte.exit404.i.epil ]
  %i.ww = add nuw nsw i32 %.2309748.i, 1          ; 2 uses
  %exitcond838.not.i = icmp eq i32 %i.ww, %i.up
  br i1 %exitcond838.not.i, label %bytestream2_get_byte.exit410.thread.loopexit.i, label %.preheader660.i, !llvm.loop !59

bytestream2_get_byte.exit410.thread.loopexit.i:   ; preds = %.thread.i45, %check_pixel_ptr.exit455.i, %.preheader660.i
  %.sroa.0.13.ph.i = phi ptr [ %i.vb, %check_pixel_ptr.exit455.i ], [ %.sroa.0.10746.i, %.preheader660.i ], [ %.sroa.0.12.i, %.thread.i45 ]
  %.pre843.i = load ptr, ptr %i.im, align 8, !tbaa !38
  br label %bytestream2_get_byte.exit410.thread.i

bytestream2_get_byte.exit410.thread.i:            ; preds = %bytestream2_get_byte.exit410.thread.loopexit.i, %bytestream2_get_byte.exit410.i, %bb.cg
  %i.wx = phi ptr [ %i.uf, %bytestream2_get_byte.exit410.i ], [ %i.uf, %bb.cg ], [ %.pre843.i, %bytestream2_get_byte.exit410.thread.loopexit.i ] ; 2 uses
  %.sroa.0.13.i44 = phi ptr [ %i.un, %bytestream2_get_byte.exit410.i ], [ %i.il, %bb.cg ], [ %.sroa.0.13.ph.i, %bytestream2_get_byte.exit410.thread.loopexit.i ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 64
  %i.wz = load i32, ptr %i.wy, align 8, !tbaa !35
  %i.xa = sext i32 %i.wz to i64
  %i.xb = add nsw i64 %.2292752.i, %i.xa
  %i.xc = add nsw i32 %.2297751.i, -1
  %i.xd = icmp sgt i32 %.2297751.i, 1
  br i1 %i.xd, label %.lr.ph753.i, label %check_pixel_ptr.exit471.thread.i, !llvm.loop !60

.lr.ph731.i:                                      ; preds = %.preheader668.i, %.lr.ph731.i
  %i.xe = phi ptr [ %i.xp, %.lr.ph731.i ], [ %i.kn, %.preheader668.i ]
  %.0730.i = phi i32 [ %i.xo, %.lr.ph731.i ], [ 0, %.preheader668.i ] ; 2 uses
  %i.xf = load ptr, ptr %i.im, align 8, !tbaa !38
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 64
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !35
  %i.xi = mul nsw i32 %i.xh, %.0730.i
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %i.iu, i64 %i.xj
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xe, i64 112
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !104
  %i.xn = sext i32 %i.xm to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.xk, i8 0, i64 %i.xn, i1 false)
  %i.xo = add nuw nsw i32 %.0730.i, 1             ; 2 uses
  %i.xp = load ptr, ptr %i.ih, align 8, !tbaa !32 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 116
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !103
  %i.xs = icmp slt i32 %i.xo, %i.xr
  br i1 %i.xs, label %.lr.ph731.i, label %check_pixel_ptr.exit471.thread.i, !llvm.loop !61

.lr.ph728.i:                                      ; preds = %.preheader670.i, %check_pixel_ptr.exit467._crit_edge.i
  %i.xt = phi ptr [ %i.zs, %check_pixel_ptr.exit467._crit_edge.i ], [ %i.kj, %.preheader670.i ] ; 2 uses
  %.3293727.i = phi i64 [ %i.zx, %check_pixel_ptr.exit467._crit_edge.i ], [ 0, %.preheader670.i ] ; 2 uses
  %.0298726.i = phi i32 [ %i.zy, %check_pixel_ptr.exit467._crit_edge.i ], [ 0, %.preheader670.i ] ; 3 uses
  %.sroa.0.14725.i = phi ptr [ %.sroa.0.18.i, %check_pixel_ptr.exit467._crit_edge.i ], [ %i.kg, %.preheader670.i ] ; 2 uses
  %i.xu = ptrtoint ptr %.sroa.0.14725.i to i64
  %i.xv = sub i64 %i.jb, %i.xu
  %..i380.i = tail call i64 @llvm.smin.i64(i64 %i.xv, i64 1)
  %i.xw = getelementptr inbounds i8, ptr %.sroa.0.14725.i, i64 %..i380.i ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 112
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !104 ; 2 uses
  %i.xz = icmp sgt i32 %i.xy, 0
  br i1 %i.xz, label %.lr.ph719.i, label %check_pixel_ptr.exit467._crit_edge.i

.lr.ph719.i:                                      ; preds = %.lr.ph728.i, %.loopexit657.i
  %.8717.i = phi i32 [ %.11.i, %.loopexit657.i ], [ %i.xy, %.lr.ph728.i ] ; 2 uses
  %.8326716.i = phi i64 [ %.11329.i, %.loopexit657.i ], [ %.3293727.i, %.lr.ph728.i ] ; 4 uses
  %.sroa.0.15715.i = phi ptr [ %.sroa.0.17.i42, %.loopexit657.i ], [ %i.xw, %.lr.ph728.i ] ; 5 uses
  %i.ya = ptrtoint ptr %.sroa.0.15715.i to i64    ; 2 uses
  %i.yb = sub i64 %i.ya, %i.jc
  %i.yc = trunc i64 %i.yb to i32
  %.not366.i = icmp sgt i32 %i.kd, %i.yc
  br i1 %.not366.i, label %bb.cs, label %check_pixel_ptr.exit467._crit_edge.loopexit.i

bb.cs:                                            ; preds = %.lr.ph719.i
  %i.yd = sub i64 %i.jb, %i.ya
  %i.ye = icmp slt i64 %i.yd, 1
  br i1 %i.ye, label %bytestream2_get_byte.exit400.thread.i, label %bytestream2_get_byte.exit400.i

bytestream2_get_byte.exit400.i:                   ; preds = %bb.cs
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.0.15715.i, i64 1 ; 5 uses
  %i.yg = load i8, ptr %.sroa.0.15715.i, align 1, !tbaa !34 ; 3 uses
  %i.yh = sext i8 %i.yg to i32                    ; 4 uses
  %.not367.i = icmp eq i8 %i.yg, 0
  br i1 %.not367.i, label %bytestream2_get_byte.exit400.thread.i, label %bb.ct

bytestream2_get_byte.exit400.thread.i:            ; preds = %bytestream2_get_byte.exit400.i, %bb.cs
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #8
  br label %flic_decode_frame_1BPP.exit

bb.ct:                                            ; preds = %bytestream2_get_byte.exit400.i
  %i.yi = icmp sgt i8 %i.yg, 0
  br i1 %i.yi, label %bb.cu, label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  %i.yj = ptrtoint ptr %i.yf to i64
  %i.yk = sub i64 %i.jb, %i.yj
  %i.yl = icmp slt i64 %i.yk, 1
  br i1 %i.yl, label %bytestream2_get_byte.exit398.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.0.15715.i, i64 2
  %i.yn = load i8, ptr %i.yf, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit398.i

bytestream2_get_byte.exit398.i:                   ; preds = %bb.cv, %bb.cu
  %.sroa.0.34.i = phi ptr [ %i.ym, %bb.cv ], [ %i.il, %bb.cu ]
  %.0.i397.i = phi i8 [ %i.yn, %bb.cv ], [ 0, %bb.cu ]
  %i.yo = zext nneg i32 %i.yh to i64
  %i.yp = add nsw i64 %.8326716.i, %i.yo          ; 2 uses
  br i1 %i.it, label %.critedge.i462.i, label %bb.cw

bb.cw:                                            ; preds = %bytestream2_get_byte.exit398.i
  %i.yq = icmp sgt i64 %i.yp, %i.iz
  br i1 %i.yq, label %flic_decode_frame_1BPP.exit, label %.lr.ph712.i.preheader

.critedge.i462.i:                                 ; preds = %bytestream2_get_byte.exit398.i
  %i.yr = icmp slt i64 %i.yp, %i.iz
  br i1 %i.yr, label %flic_decode_frame_1BPP.exit, label %.lr.ph712.i.preheader

.lr.ph712.i.preheader:                            ; preds = %.critedge.i462.i, %bb.cw
  br label %.lr.ph712.i

.lr.ph712.i:                                      ; preds = %.lr.ph712.i.preheader, %bb.cy
  %.9711.i = phi i32 [ %i.yu, %bb.cy ], [ %.8717.i, %.lr.ph712.i.preheader ] ; 2 uses
  %.5305710.i = phi i32 [ %i.yw, %bb.cy ], [ 0, %.lr.ph712.i.preheader ]
  %.9327709.i = phi i64 [ %i.ys, %bb.cy ], [ %.8326716.i, %.lr.ph712.i.preheader ] ; 2 uses
  %i.ys = add nsw i64 %.9327709.i, 1              ; 2 uses
  %i.yt = getelementptr inbounds i8, ptr %i.iu, i64 %.9327709.i
  store i8 %.0.i397.i, ptr %i.yt, align 1, !tbaa !34
  %i.yu = add nsw i32 %.9711.i, -1                ; 3 uses
  %i.yv = icmp slt i32 %.9711.i, 1
  br i1 %i.yv, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph712.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.yu, i32 noundef %.0298726.i) #8
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph712.i
  %i.yw = add nuw nsw i32 %.5305710.i, 1          ; 2 uses
  %exitcond833.not.i = icmp eq i32 %i.yw, %i.yh
  br i1 %exitcond833.not.i, label %.loopexit657.i, label %.lr.ph712.i, !llvm.loop !62

bb.cz:                                            ; preds = %bb.ct
  %i.yx = sub nsw i32 0, %i.yh                    ; 2 uses
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = add nsw i64 %.8326716.i, %i.yy          ; 2 uses
  br i1 %i.it, label %.critedge.i466.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.za = icmp sgt i64 %i.yz, %i.iz
  br i1 %i.za, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit467.i

.critedge.i466.i:                                 ; preds = %bb.cz
  %i.zb = icmp slt i64 %i.yz, %i.iz
  br i1 %i.zb, label %flic_decode_frame_1BPP.exit, label %check_pixel_ptr.exit467.i

check_pixel_ptr.exit467.i:                        ; preds = %.critedge.i466.i, %bb.da
  %i.zc = ptrtoint ptr %i.yf to i64
  %i.zd = sub i64 %i.zc, %i.jc
  %i.ze = trunc i64 %i.zd to i32
  %i.zf = sub nsw i32 %i.ze, %i.yh
  %i.zg = icmp sgt i32 %i.zf, %i.kd
  br i1 %i.zg, label %check_pixel_ptr.exit467._crit_edge.loopexit.i, label %.lr.ph705.i

.lr.ph705.i:                                      ; preds = %check_pixel_ptr.exit467.i, %bb.dd
  %.10704.i = phi i32 [ %i.zo, %bb.dd ], [ %.8717.i, %check_pixel_ptr.exit467.i ] ; 2 uses
  %.6306703.i = phi i32 [ %i.zq, %bb.dd ], [ 0, %check_pixel_ptr.exit467.i ]
  %.10328702.i = phi i64 [ %i.zm, %bb.dd ], [ %.8326716.i, %check_pixel_ptr.exit467.i ] ; 2 uses
  %.sroa.0.16701.i = phi ptr [ %.sroa.0.33.i, %bb.dd ], [ %i.yf, %check_pixel_ptr.exit467.i ] ; 3 uses
  %i.zh = ptrtoint ptr %.sroa.0.16701.i to i64
  %i.zi = sub i64 %i.jb, %i.zh
  %i.zj = icmp slt i64 %i.zi, 1
  br i1 %i.zj, label %bytestream2_get_byte.exit.i41, label %bb.db

bb.db:                                            ; preds = %.lr.ph705.i
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.0.16701.i, i64 1
  %i.zl = load i8, ptr %.sroa.0.16701.i, align 1, !tbaa !34
  br label %bytestream2_get_byte.exit.i41

bytestream2_get_byte.exit.i41:                    ; preds = %bb.db, %.lr.ph705.i
  %.sroa.0.33.i = phi ptr [ %i.zk, %bb.db ], [ %i.il, %.lr.ph705.i ] ; 2 uses
  %.0.i396.i = phi i8 [ %i.zl, %bb.db ], [ 0, %.lr.ph705.i ]
  %i.zm = add nsw i64 %.10328702.i, 1             ; 2 uses
  %i.zn = getelementptr inbounds i8, ptr %i.iu, i64 %.10328702.i
  store i8 %.0.i396.i, ptr %i.zn, align 1, !tbaa !34
  %i.zo = add nsw i32 %.10704.i, -1               ; 3 uses
  %i.zp = icmp slt i32 %.10704.i, 1
  br i1 %i.zp, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bytestream2_get_byte.exit.i41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.zo, i32 noundef %.0298726.i) #8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bytestream2_get_byte.exit.i41
  %i.zq = add nuw nsw i32 %.6306703.i, 1          ; 2 uses
  %exitcond832.not.i = icmp eq i32 %i.zq, %i.yx
  br i1 %exitcond832.not.i, label %.loopexit657.i, label %.lr.ph705.i, !llvm.loop !63

.loopexit657.i:                                   ; preds = %bb.dd, %bb.cy
  %.sroa.0.17.i42 = phi ptr [ %.sroa.0.34.i, %bb.cy ], [ %.sroa.0.33.i, %bb.dd ] ; 2 uses
  %.11329.i = phi i64 [ %i.ys, %bb.cy ], [ %i.zm, %bb.dd ]
  %.11.i = phi i32 [ %i.yu, %bb.cy ], [ %i.zo, %bb.dd ] ; 2 uses
  %i.zr = icmp sgt i32 %.11.i, 0
  br i1 %i.zr, label %.lr.ph719.i, label %check_pixel_ptr.exit467._crit_edge.loopexit.i, !llvm.loop !64

check_pixel_ptr.exit467._crit_edge.loopexit.i:    ; preds = %.loopexit657.i, %check_pixel_ptr.exit467.i, %.lr.ph719.i
  %.sroa.0.18.ph.i = phi ptr [ %.sroa.0.17.i42, %.loopexit657.i ], [ %.sroa.0.15715.i, %.lr.ph719.i ], [ %i.yf, %check_pixel_ptr.exit467.i ]
  %.pre.i40 = load ptr, ptr %i.ih, align 8, !tbaa !32
  br label %check_pixel_ptr.exit467._crit_edge.i
end_hunk_1
