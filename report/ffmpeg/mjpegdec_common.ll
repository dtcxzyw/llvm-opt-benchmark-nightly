Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mjpegdec_common?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_mjpeg_build_vlc:bb.a
  %i.cc = zext i8 %i.cb to i32                    ; 2 uses
  %i.cd = add nuw nsw i32 %i.bs, %i.cc            ; 4 uses
  %i.ce = icmp samesign ult i32 %.1.lcssa.7.i, %i.cd
  br i1 %i.ce, label %.lr.ph.8.i, label %._crit_edge.8.i

.lr.ph.8.i:                                       ; preds = %._crit_edge.7.i
  %i.cf = zext nneg i32 %.1.lcssa.7.i to i64
  %scevgep.8.i = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.cg = xor i32 %.1.lcssa.7.i, -1
  %i.ch = add nsw i32 %i.bs, %i.cg
  %i.ci = add nsw i32 %i.ch, %i.cc
  %i.cj = zext i32 %i.ci to i64
  %i.ck = add nuw nsw i64 %i.cj, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.8.i, i8 9, i64 %i.ck, i1 false), !tbaa !15
  br label %._crit_edge.8.i

._crit_edge.8.i:                                  ; preds = %.lr.ph.8.i, %._crit_edge.7.i
  %.1.lcssa.8.i = phi i32 [ %.1.lcssa.7.i, %._crit_edge.7.i ], [ %i.cd, %.lr.ph.8.i ] ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = add nuw nsw i32 %i.cd, %i.cn            ; 4 uses
  %i.cp = icmp samesign ult i32 %.1.lcssa.8.i, %i.co
  br i1 %i.cp, label %.lr.ph.9.i, label %._crit_edge.9.i

.lr.ph.9.i:                                       ; preds = %._crit_edge.8.i
  %i.cq = zext nneg i32 %.1.lcssa.8.i to i64
  %scevgep.9.i = getelementptr i8, ptr %i.a, i64 %i.cq
  %i.cr = xor i32 %.1.lcssa.8.i, -1
  %i.cs = add nsw i32 %i.cd, %i.cr
  %i.ct = add nsw i32 %i.cs, %i.cn
  %i.cu = zext i32 %i.ct to i64
  %i.cv = add nuw nsw i64 %i.cu, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.9.i, i8 10, i64 %i.cv, i1 false), !tbaa !15
  br label %._crit_edge.9.i

._crit_edge.9.i:                                  ; preds = %.lr.ph.9.i, %._crit_edge.8.i
  %.1.lcssa.9.i = phi i32 [ %.1.lcssa.8.i, %._crit_edge.8.i ], [ %i.co, %.lr.ph.9.i ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %i.cz = add nuw nsw i32 %i.co, %i.cy            ; 4 uses
  %i.da = icmp samesign ult i32 %.1.lcssa.9.i, %i.cz
  br i1 %i.da, label %.lr.ph.10.i, label %._crit_edge.10.i

.lr.ph.10.i:                                      ; preds = %._crit_edge.9.i
  %i.db = zext nneg i32 %.1.lcssa.9.i to i64
  %scevgep.10.i = getelementptr i8, ptr %i.a, i64 %i.db
  %i.dc = xor i32 %.1.lcssa.9.i, -1
  %i.dd = add nsw i32 %i.co, %i.dc
  %i.de = add nsw i32 %i.dd, %i.cy
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw nsw i64 %i.df, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.10.i, i8 11, i64 %i.dg, i1 false), !tbaa !15
  br label %._crit_edge.10.i

._crit_edge.10.i:                                 ; preds = %.lr.ph.10.i, %._crit_edge.9.i
  %.1.lcssa.10.i = phi i32 [ %.1.lcssa.9.i, %._crit_edge.9.i ], [ %i.cz, %.lr.ph.10.i ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !15
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %i.dk = add nuw nsw i32 %i.cz, %i.dj            ; 4 uses
  %i.dl = icmp samesign ult i32 %.1.lcssa.10.i, %i.dk
  br i1 %i.dl, label %.lr.ph.11.i, label %._crit_edge.11.i

.lr.ph.11.i:                                      ; preds = %._crit_edge.10.i
  %i.dm = zext nneg i32 %.1.lcssa.10.i to i64
  %scevgep.11.i = getelementptr i8, ptr %i.a, i64 %i.dm
  %i.dn = xor i32 %.1.lcssa.10.i, -1
  %i.do = add nsw i32 %i.cz, %i.dn
  %i.dp = add nsw i32 %i.do, %i.dj
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.11.i, i8 12, i64 %i.dr, i1 false), !tbaa !15
  br label %._crit_edge.11.i

._crit_edge.11.i:                                 ; preds = %.lr.ph.11.i, %._crit_edge.10.i
  %.1.lcssa.11.i = phi i32 [ %.1.lcssa.10.i, %._crit_edge.10.i ], [ %i.dk, %.lr.ph.11.i ] ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15
  %i.du = zext i8 %i.dt to i32                    ; 2 uses
  %i.dv = add nuw nsw i32 %i.dk, %i.du            ; 4 uses
  %i.dw = icmp samesign ult i32 %.1.lcssa.11.i, %i.dv
  br i1 %i.dw, label %.lr.ph.12.i, label %._crit_edge.12.i

.lr.ph.12.i:                                      ; preds = %._crit_edge.11.i
  %i.dx = zext nneg i32 %.1.lcssa.11.i to i64
  %scevgep.12.i = getelementptr i8, ptr %i.a, i64 %i.dx
  %i.dy = xor i32 %.1.lcssa.11.i, -1
  %i.dz = add nsw i32 %i.dk, %i.dy
  %i.ea = add nsw i32 %i.dz, %i.du
  %i.eb = zext i32 %i.ea to i64
  %i.ec = add nuw nsw i64 %i.eb, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.12.i, i8 13, i64 %i.ec, i1 false), !tbaa !15
  br label %._crit_edge.12.i

._crit_edge.12.i:                                 ; preds = %.lr.ph.12.i, %._crit_edge.11.i
  %.1.lcssa.12.i = phi i32 [ %.1.lcssa.11.i, %._crit_edge.11.i ], [ %i.dv, %.lr.ph.12.i ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !15
  %i.ef = zext i8 %i.ee to i32                    ; 2 uses
  %i.eg = add nuw nsw i32 %i.dv, %i.ef            ; 4 uses
  %i.eh = icmp samesign ult i32 %.1.lcssa.12.i, %i.eg
  br i1 %i.eh, label %.lr.ph.13.i, label %._crit_edge.13.i

.lr.ph.13.i:                                      ; preds = %._crit_edge.12.i
  %i.ei = zext nneg i32 %.1.lcssa.12.i to i64
  %scevgep.13.i = getelementptr i8, ptr %i.a, i64 %i.ei
  %i.ej = xor i32 %.1.lcssa.12.i, -1
  %i.ek = add nsw i32 %i.dv, %i.ej
  %i.el = add nsw i32 %i.ek, %i.ef
  %i.em = zext i32 %i.el to i64
  %i.en = add nuw nsw i64 %i.em, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.13.i, i8 14, i64 %i.en, i1 false), !tbaa !15
  br label %._crit_edge.13.i

._crit_edge.13.i:                                 ; preds = %.lr.ph.13.i, %._crit_edge.12.i
  %.1.lcssa.13.i = phi i32 [ %.1.lcssa.12.i, %._crit_edge.12.i ], [ %i.eg, %.lr.ph.13.i ] ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !15
  %i.eq = zext i8 %i.ep to i32                    ; 2 uses
  %i.er = add nuw nsw i32 %i.eg, %i.eq            ; 4 uses
  %i.es = icmp samesign ult i32 %.1.lcssa.13.i, %i.er
  br i1 %i.es, label %.lr.ph.14.i, label %._crit_edge.14.i

.lr.ph.14.i:                                      ; preds = %._crit_edge.13.i
  %i.et = zext nneg i32 %.1.lcssa.13.i to i64
  %scevgep.14.i = getelementptr i8, ptr %i.a, i64 %i.et
  %i.eu = xor i32 %.1.lcssa.13.i, -1
  %i.ev = add nsw i32 %i.eg, %i.eu
  %i.ew = add nsw i32 %i.ev, %i.eq
  %i.ex = zext i32 %i.ew to i64
  %i.ey = add nuw nsw i64 %i.ex, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.14.i, i8 15, i64 %i.ey, i1 false), !tbaa !15
  br label %._crit_edge.14.i

._crit_edge.14.i:                                 ; preds = %.lr.ph.14.i, %._crit_edge.13.i
  %.1.lcssa.14.i = phi i32 [ %.1.lcssa.13.i, %._crit_edge.13.i ], [ %i.er, %.lr.ph.14.i ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fb = zext i8 %i.fa to i32                    ; 2 uses
  %i.fc = add nuw nsw i32 %i.er, %i.fb            ; 7 uses
  %i.fd = icmp samesign ult i32 %.1.lcssa.14.i, %i.fc
  br i1 %i.fd, label %build_huffman_codes.exit.thread, label %build_huffman_codes.exit

build_huffman_codes.exit.thread:                  ; preds = %._crit_edge.14.i
  %i.fe = zext nneg i32 %.1.lcssa.14.i to i64
  %scevgep.15.i = getelementptr i8, ptr %i.a, i64 %i.fe
  %i.ff = xor i32 %.1.lcssa.14.i, -1
  %i.fg = add nsw i32 %i.er, %i.ff
  %i.fh = add nsw i32 %i.fg, %i.fb
  %i.fi = zext i32 %i.fh to i64
  %i.fj = add nuw nsw i64 %i.fi, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.15.i, i8 16, i64 %i.fj, i1 false), !tbaa !15
  br label %.lr.ph

build_huffman_codes.exit:                         ; preds = %._crit_edge.14.i
  %.not = icmp eq i32 %i.fc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %build_huffman_codes.exit.thread, %build_huffman_codes.exit
  %i.fk = shl nsw i32 %3, 4                       ; 3 uses
  %.not.not = icmp eq i32 %3, 0
  %i.fl = zext i32 %i.fc to i64                   ; 7 uses
  %umax48 = tail call i64 @llvm.umax.i64(i64 %i.fl, i64 1) ; 6 uses
  %min.iters.check49 = icmp ult i32 %i.fc, 4      ; 2 uses
  br i1 %.not.not, label %iter.check62, label %iter.check

iter.check:                                       ; preds = %.lr.ph
  br i1 %min.iters.check49, label %.lr.ph.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check39 = icmp ult i32 %i.fc, 16
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fm = and i64 %umax48, 12
  %n.vec = and i64 %umax48, 4294967280            ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.fk, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %wide.load = load <8 x i8>, ptr %i.fn, align 1, !tbaa !15 ; 2 uses
  %wide.load40 = load <8 x i8>, ptr %i.fo, align 1, !tbaa !15 ; 2 uses
  %i.fp = zext <8 x i8> %wide.load to <8 x i32>
  %i.fq = zext <8 x i8> %wide.load40 to <8 x i32>
  %i.fr = add nsw <8 x i32> %broadcast.splat, %i.fp
  %i.fs = add nsw <8 x i32> %broadcast.splat, %i.fq
  %i.ft = trunc <8 x i32> %i.fr to <8 x i16>
  %i.fu = trunc <8 x i32> %i.fs to <8 x i16>
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.fw = icmp eq <8 x i8> %wide.load, zeroinitializer
  %i.fx = icmp eq <8 x i8> %wide.load40, zeroinitializer
  %i.fy = select <8 x i1> %i.fw, <8 x i16> splat (i16 4096), <8 x i16> %i.ft
  %i.fz = select <8 x i1> %i.fx, <8 x i16> splat (i16 4096), <8 x i16> %i.fu
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <8 x i16> %i.fy, ptr %i.fv, align 16
  store <8 x i16> %i.fz, ptr %i.ga, align 16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fl
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %umax48, 4294967292          ; 3 uses
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 %index44
  %wide.load45 = load <4 x i8>, ptr %i.gc, align 1, !tbaa !15 ; 2 uses
  %i.gd = zext <4 x i8> %wide.load45 to <4 x i32>
  %i.ge = add nsw <4 x i32> %broadcast.splat43, %i.gd
  %i.gf = trunc <4 x i32> %i.ge to <4 x i16>
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index44
  %i.gh = icmp eq <4 x i8> %wide.load45, zeroinitializer
  %i.gi = select <4 x i1> %i.gh, <4 x i16> splat (i16 4096), <4 x i16> %i.gf
  store <4 x i16> %i.gi, ptr %i.gg, align 8
  %index.next46 = add nuw i64 %index44, 4         ; 2 uses
  %i.gj = icmp eq i64 %index.next46, %n.vec41
  br i1 %i.gj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %n.vec41, %i.fl
  br i1 %cmp.n47, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec41, %vec.epilog.middle.block ]
  br label %.lr.ph.split

iter.check62:                                     ; preds = %.lr.ph
  br i1 %min.iters.check49, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check50

vector.main.loop.iter.check50:                    ; preds = %iter.check62
  %min.iters.check51 = icmp ult i32 %i.fc, 16
  br i1 %min.iters.check51, label %vec.epilog.ph66, label %vector.ph52

vector.ph52:                                      ; preds = %vector.main.loop.iter.check50
  %i.gk = and i64 %umax48, 12
  %n.vec53 = and i64 %umax48, 4294967280          ; 4 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.ph52, %vector.body54
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next58, %vector.body54 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 %index55 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %wide.load56 = load <8 x i8>, ptr %i.gl, align 1, !tbaa !15
  %wide.load57 = load <8 x i8>, ptr %i.gm, align 1, !tbaa !15
  %i.gn = zext <8 x i8> %wide.load56 to <8 x i16>
  %i.go = zext <8 x i8> %wide.load57 to <8 x i16>
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index55 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <8 x i16> %i.gn, ptr %i.gp, align 16
  store <8 x i16> %i.go, ptr %i.gq, align 16
  %index.next58 = add nuw i64 %index55, 16        ; 2 uses
  %i.gr = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.gr, label %middle.block59, label %vector.body54, !llvm.loop !11

middle.block59:                                   ; preds = %vector.body54
  %cmp.n60 = icmp eq i64 %n.vec53, %i.fl
  br i1 %cmp.n60, label %._crit_edge, label %vec.epilog.iter.check64

vec.epilog.iter.check64:                          ; preds = %middle.block59
  %min.epilog.iters.check65 = icmp eq i64 %i.gk, 0
  br i1 %min.epilog.iters.check65, label %.lr.ph.split.us.preheader, label %vec.epilog.ph66, !prof !19

vec.epilog.ph66:                                  ; preds = %vector.main.loop.iter.check50, %vec.epilog.iter.check64
  %vec.epilog.resume.val61 = phi i64 [ %n.vec53, %vec.epilog.iter.check64 ], [ 0, %vector.main.loop.iter.check50 ]
  %n.vec67 = and i64 %umax48, 4294967292          ; 3 uses
  br label %vec.epilog.vector.body68

vec.epilog.vector.body68:                         ; preds = %vec.epilog.vector.body68, %vec.epilog.ph66
  %index69 = phi i64 [ %vec.epilog.resume.val61, %vec.epilog.ph66 ], [ %index.next71, %vec.epilog.vector.body68 ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 %index69
  %wide.load70 = load <4 x i8>, ptr %i.gs, align 1, !tbaa !15
  %i.gt = zext <4 x i8> %wide.load70 to <4 x i16>
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index69
  store <4 x i16> %i.gt, ptr %i.gu, align 8
  %index.next71 = add nuw i64 %index69, 4         ; 2 uses
  %i.gv = icmp eq i64 %index.next71, %n.vec67
  br i1 %i.gv, label %vec.epilog.middle.block72, label %vec.epilog.vector.body68, !llvm.loop !12

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body68
  %cmp.n73 = icmp eq i64 %n.vec67, %i.fl
  br i1 %cmp.n73, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check62, %vec.epilog.iter.check64, %vec.epilog.middle.block72
  %indvars.iv19.ph = phi i64 [ 0, %iter.check62 ], [ %n.vec53, %vec.epilog.iter.check64 ], [ %n.vec67, %vec.epilog.middle.block72 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %.lr.ph.split.us ], [ %indvars.iv19.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv19
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !15
  %i.gy = zext i8 %i.gx to i16
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv19
  store i16 %i.gy, ptr %i.gz, align 2
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %i.ha = icmp samesign ult i64 %indvars.iv.next20, %i.fl
  br i1 %i.ha, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block, %middle.block59, %vec.epilog.middle.block72, %build_huffman_codes.exit
  %i.hb = call i32 @ff_vlc_init_from_lengths(ptr noundef %0, i32 noundef 9, i32 noundef %i.fc, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.hb

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !15  ; 2 uses
  %i.he = zext i8 %i.hd to i32
  %i.hf = add nsw i32 %i.fk, %i.he
  %i.hg = trunc i32 %i.hf to i16
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %.not15 = icmp eq i8 %i.hd, 0
  %spec.select = select i1 %.not15, i16 4096, i16 %i.hg
  store i16 %spec.select, ptr %i.hh, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hi = icmp samesign ult i64 %indvars.iv.next, %i.fl
  br i1 %i.hi, label %.lr.ph.split, label %._crit_edge, !llvm.loop !14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ff_vlc_init_from_lengths(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !16, !17, !18}
!10 = distinct !{!10, !16, !17, !18}
!11 = distinct !{!11, !16, !17, !18}
!12 = distinct !{!12, !16, !17, !18}
!13 = distinct !{!13, !16, !18, !17}
!14 = distinct !{!14, !16, !18, !17}
!15 = !{!5, !5, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
