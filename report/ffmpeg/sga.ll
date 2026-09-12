Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sga?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@lzss_decompress:bb.a
  %i.n = phi ptr [ %i.ej, %.loopexit4 ], [ %i.e, %bb.a ] ; 2 uses
  %i.o = phi ptr [ %i.ei, %.loopexit4 ], [ %i.d, %bb.a ]
  %.05364 = phi i32 [ %.4, %.loopexit4 ], [ 0, %bb.a ]
  %i.p = icmp slt i64 %i.m, 2
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph65
  store ptr %i.o, ptr %0, align 8, !tbaa !39
  br label %bytestream2_get_be16.exit64.preheader

bb.c:                                             ; preds = %.lr.ph65
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store ptr %i.q, ptr %0, align 8, !tbaa !40
  %i.r = load i16, ptr %i.n, align 1, !tbaa !29
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32
  br label %bytestream2_get_be16.exit64.preheader

bytestream2_get_be16.exit64.preheader:            ; preds = %bb.b, %bb.c
  %.052.in14.ph = phi i32 [ %i.t, %bb.c ], [ 0, %bb.b ]
  br label %bytestream2_get_be16.exit64

bytestream2_get_be16.exit64:                      ; preds = %bytestream2_get_be16.exit64.preheader, %.loopexit
  %.05115 = phi i32 [ %i.eg, %.loopexit ], [ 0, %bytestream2_get_be16.exit64.preheader ]
  %.052.in14 = phi i32 [ %i.ef, %.loopexit ], [ %.052.in14.ph, %bytestream2_get_be16.exit64.preheader ] ; 2 uses
  %.113 = phi i32 [ %.4, %.loopexit ], [ %.05364, %bytestream2_get_be16.exit64.preheader ] ; 10 uses
  %i.u = and i32 %.052.in14, 32768
  %trunc.not = icmp eq i32 %i.u, 0
  br i1 %trunc.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bytestream2_get_be16.exit64
  %i.v = add nsw i32 %.113, 2                     ; 2 uses
  %i.w = icmp slt i32 %i.v, %2
  br i1 %i.w, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.x, ptr %0, align 8, !tbaa !39
  br label %bytestream2_get_byte.exit61

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.ad, ptr %0, align 8, !tbaa !40
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !29
  br label %bytestream2_get_byte.exit61

bytestream2_get_byte.exit61:                      ; preds = %bb.f, %bb.g
  %.0.i60 = phi i8 [ 0, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = sext i32 %.113 to i64
  %i.ag = getelementptr inbounds i8, ptr %1, i64 %i.af ; 2 uses
  store i8 %.0.i60, ptr %i.ag, align 1, !tbaa !29
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !39    ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp slt i64 %i.al, 1
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bytestream2_get_byte.exit61
  store ptr %i.ah, ptr %0, align 8, !tbaa !39
  br label %bytestream2_get_byte.exit59

bb.i:                                             ; preds = %bytestream2_get_byte.exit61
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.an, ptr %0, align 8, !tbaa !40
  %i.ao = load i8, ptr %i.ai, align 1, !tbaa !29
  br label %bytestream2_get_byte.exit59

bytestream2_get_byte.exit59:                      ; preds = %bb.h, %bb.i
  %.0.i58 = phi i8 [ 0, %bb.h ], [ %i.ao, %bb.i ]
  %i.ap = getelementptr i8, ptr %i.ag, i64 1
  store i8 %.0.i58, ptr %i.ap, align 1, !tbaa !29
  br label %.loopexit

bb.j:                                             ; preds = %bytestream2_get_be16.exit64
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !38  ; 4 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !39    ; 4 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp slt i64 %i.au, 2
  br i1 %i.av, label %bytestream2_get_be16.exit.thread, label %bytestream2_get_be16.exit

bytestream2_get_be16.exit.thread:                 ; preds = %bb.j
  store ptr %i.aq, ptr %0, align 8, !tbaa !39
  br label %.preheader3

bytestream2_get_be16.exit:                        ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store ptr %i.aw, ptr %0, align 8, !tbaa !40
  %i.ax = load i16, ptr %i.ar, align 1, !tbaa !29 ; 2 uses
  %i.ay = tail call i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  %i.ba = icmp eq i16 %i.ax, 0
  br i1 %i.ba, label %.preheader3.loopexit, label %bb.m

.preheader3.loopexit:                             ; preds = %bytestream2_get_be16.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit, %bytestream2_get_be16.exit.thread
  %i.bc = phi ptr [ %i.aq, %bytestream2_get_be16.exit.thread ], [ %i.bb, %.preheader3.loopexit ] ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.as, %i.bd                    ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  %i.bg = icmp sgt i32 %i.bf, 0
  %i.bh = icmp slt i32 %.113, %2
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %.lr.ph17.preheader, label %.thread

.lr.ph17.preheader:                               ; preds = %.preheader3
  %i.bj = sext i32 %.113 to i64
  br label %.lr.ph17

.lr.ph17:                                         ; preds = %.lr.ph17.preheader, %bytestream2_get_byte.exit
  %indvars.iv30 = phi i64 [ %i.bj, %.lr.ph17.preheader ], [ %indvars.iv.next31, %bytestream2_get_byte.exit ] ; 2 uses
  %i.bk = phi i64 [ %i.be, %.lr.ph17.preheader ], [ %i.bv, %bytestream2_get_byte.exit ]
  %i.bl = phi ptr [ %i.bc, %.lr.ph17.preheader ], [ %i.bs, %bytestream2_get_byte.exit ] ; 2 uses
  %i.bm = phi ptr [ %i.aq, %.lr.ph17.preheader ], [ %i.br, %bytestream2_get_byte.exit ]
  %i.bn = icmp slt i64 %i.bk, 1
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph17
  store ptr %i.bm, ptr %0, align 8, !tbaa !39
  br label %bytestream2_get_byte.exit

bb.l:                                             ; preds = %.lr.ph17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bo, ptr %0, align 8, !tbaa !40
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !29
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.k, %bb.l
  %.0.i = phi i8 [ 0, %bb.k ], [ %i.bp, %bb.l ]
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, 1 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %indvars.iv30
  store i8 %.0.i, ptr %i.bq, align 1, !tbaa !29
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = icmp slt i64 %indvars.iv.next31, %i.c
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %.lr.ph17, label %.loopexit4.loopexit, !llvm.loop !76

bb.m:                                             ; preds = %bytestream2_get_be16.exit
  %i.ca = and i32 %i.az, %i.b                     ; 2 uses
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 1) ; 2 uses
  %i.cb = icmp slt i32 %.113, %spec.store.select
  br i1 %i.cb, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = lshr i32 %i.az, %3
  %i.cd = add nsw i32 %i.cc, %4                   ; 2 uses
  %i.ce = shl nsw i32 %i.cd, 1                    ; 5 uses
  %i.cf = add nsw i32 %i.ce, %.113
  %i.cg = icmp sgt i32 %i.cf, %2
  br i1 %i.cg, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.ch = icmp sgt i32 %i.cd, 0
  br i1 %i.ch, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ci = zext nneg i32 %.113 to i64              ; 5 uses
  %i.cj = zext nneg i32 %spec.store.select to i64 ; 7 uses
  %i.ck = add nsw i32 %i.ce, -2                   ; 3 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = add nuw nsw i64 %i.cl, 2                ; 5 uses
  %min.iters.check = icmp eq i32 %i.ck, 0
  %diff.check = icmp samesign ult i32 %i.ca, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check66 = icmp ult i32 %i.ck, 30
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cn = and i64 %i.cm, 28
  %n.vec = and i64 %i.cm, 8589934560              ; 5 uses
  %i.co = add nuw nsw i64 %n.vec, %i.ci           ; 2 uses
  %i.cp = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = add nuw i64 %index, %i.ci               ; 2 uses
  %i.cr = sub nsw i64 %i.cq, %i.cj
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load = load <16 x i8>, ptr %i.cs, align 1, !tbaa !29
  %wide.load67 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <16 x i8> %wide.load, ptr %i.cu, align 1, !tbaa !29
  store <16 x i8> %wide.load67, ptr %i.cv, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec69 = and i64 %i.cm, 8589934588            ; 4 uses
  %i.cx = add nuw nsw i64 %n.vec69, %i.ci         ; 2 uses
  %i.cy = trunc i64 %n.vec69 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index70 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 2 uses
  %i.cz = add nuw i64 %index70, %i.ci             ; 2 uses
  %i.da = sub nsw i64 %i.cz, %i.cj
  %i.db = getelementptr inbounds i8, ptr %1, i64 %i.da
  %wide.load71 = load <4 x i8>, ptr %i.db, align 1, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz
  store <4 x i8> %wide.load71, ptr %i.dc, align 1, !tbaa !29
  %index.next72 = add nuw i64 %index70, 4         ; 2 uses
  %i.dd = icmp eq i64 %index.next72, %n.vec69
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n73 = icmp eq i64 %i.cm, %n.vec69
  br i1 %cmp.n73, label %.loopexit.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.ci, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ] ; 2 uses
  %.012.ph = phi i32 [ 0, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.cy, %vec.epilog.middle.block ] ; 4 uses
  %i.de = sub i32 %i.ce, %.012.ph
  %xtraiter = and i32 %i.de, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %.012.prol = phi i32 [ %i.dj, %.lr.ph.prol ], [ %.012.ph, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.df = sub nsw i64 %indvars.iv.prol, %i.cj
  %i.dg = getelementptr inbounds i8, ptr %1, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !29
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.dj = add nuw nsw i32 %.012.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !79

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.next.lcssa77.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.012.unr = phi i32 [ %.012.ph, %.lr.ph.preheader ], [ %i.dj, %.lr.ph.prol ]
  %i.dk = sub i32 %.012.ph, %i.ce
  %i.dl = icmp ugt i32 %i.dk, -4
  br i1 %i.dl, label %.loopexit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.012 = phi i32 [ %i.ec, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ]
  %i.dm = sub nsw i64 %indvars.iv, %i.cj
  %i.dn = getelementptr inbounds i8, ptr %1, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dq = sub nsw i64 %indvars.iv.next, %i.cj
  %i.dr = getelementptr inbounds i8, ptr %1, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.du = sub nsw i64 %indvars.iv.next.1, %i.cj
  %i.dv = getelementptr inbounds i8, ptr %1, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !29
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !29
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dy = sub nsw i64 %indvars.iv.next.2, %i.cj
  %i.dz = getelementptr inbounds i8, ptr %1, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !29
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !29
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ec = add nuw nsw i32 %.012, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ec, %i.ce
  br i1 %exitcond.not.3, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !80

.loopexit.loopexit:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.cx, %vec.epilog.middle.block ], [ %i.co, %middle.block ], [ %indvars.iv.next.lcssa77.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next.3, %.lr.ph ]
  %i.ed = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.d, %bytestream2_get_byte.exit59
  %.4 = phi i32 [ %i.v, %bytestream2_get_byte.exit59 ], [ %.113, %bb.d ], [ %.113, %.preheader ], [ %i.ed, %.loopexit.loopexit ] ; 3 uses
  %i.ee = shl nuw nsw i32 %.052.in14, 1
  %i.ef = and i32 %i.ee, 131070
  %i.eg = add nuw nsw i32 %.05115, 1              ; 2 uses
  %exitcond26 = icmp eq i32 %i.eg, 16
  br i1 %exitcond26, label %.loopexit4, label %bytestream2_get_be16.exit64, !llvm.loop !81

.loopexit4.loopexit:                              ; preds = %bytestream2_get_byte.exit
  %i.eh = trunc nsw i64 %indvars.iv.next31 to i32
  br label %.thread

.loopexit4:                                       ; preds = %.loopexit
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ej = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el                    ; 2 uses
  %i.en = trunc i64 %i.em to i32
  %i.eo = icmp sgt i32 %i.en, 0
  %i.ep = icmp slt i32 %.4, %2
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph65, label %.thread, !llvm.loop !82

.thread:                                          ; preds = %.loopexit4, %bb.n, %bb.m, %bb.a, %.loopexit4.loopexit, %.preheader3
  %.256 = phi i32 [ %i.eh, %.loopexit4.loopexit ], [ %.113, %.preheader3 ], [ -1094995529, %bb.n ], [ -1094995529, %bb.a ], [ -1094995529, %bb.m ], [ -1094995529, %.loopexit4 ]
  ret i32 %.256
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_tiledata(ptr nofree captures(none) initializes((0, 8)) %.32.val) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.32.val, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.32.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %.32.val, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp slt i32 %i.b, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.j)
  %.0.i = select i1 %i.k, i32 0, i32 %..i
  %i.l = sext i32 %.0.i to i64
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 %i.l ; 10 uses
  store ptr %i.m, ptr %.32.val, align 8, !tbaa !39
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.g, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %.32.val, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !43   ; 3 uses
  %i.s = icmp sgt i32 %i.r, %i.p
  br i1 %i.s, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %i.r, 268435455
  %i.t = shl nuw nsw i32 %i.r, 3
  %i.u = select i1 %or.cond.i, i32 -8, i32 %i.t   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.u, 2147483135
  %i.v = icmp ne ptr %i.f, null
  %or.cond3.i.i = and i1 %i.v, %or.cond.i.i
  %i.w = add nuw nsw i32 %i.u, 8
  %i.x = select i1 %or.cond3.i.i, i32 %i.w, i32 8 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.32.val, i64 68 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !41
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.32.val, i64 1120
  br label %bb.c

.preheader1:                                      ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.eb, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %.32.val, i64 88
  br i1 %i.ac, label %.lr.ph13, label %.critedge

.lr.ph13:                                         ; preds = %.preheader1
  %i.ae = getelementptr inbounds nuw i8, ptr %.32.val, i64 1120
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.sroa.4.08 = phi i32 [ 0, %.lr.ph ], [ %i.dw, %bb.d ]
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ag = shl nuw nsw i64 %indvars.iv, 6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  br label %.preheader2

.preheader2:                                      ; preds = %bb.c, %.preheader2
  %.0477 = phi i32 [ 0, %bb.c ], [ %i.ea, %.preheader2 ]
  %.0486 = phi ptr [ %i.ah, %bb.c ], [ %i.dz, %.preheader2 ] ; 9 uses
  %.sroa.4.15 = phi i32 [ %.sroa.4.08, %bb.c ], [ %i.dw, %.preheader2 ] ; 3 uses
  %i.ai = lshr i32 %.sroa.4.15, 3
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !29
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = and i32 %.sroa.4.15, 7
  %i.ao = shl i32 %i.am, %i.an
  %i.ap = lshr i32 %i.ao, 28
  %i.aq = add i32 %.sroa.4.15, 4
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.aq) ; 3 uses
  %i.as = trunc nuw nsw i32 %i.ap to i8
  store i8 %i.as, ptr %.0486, align 1, !tbaa !29
  %i.at = lshr i32 %i.ar, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !29
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = and i32 %i.ar, 7
  %i.az = shl i32 %i.ax, %i.ay
  %i.ba = lshr i32 %i.az, 28
  %i.bb = add i32 %i.ar, 4
  %i.bc = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.bb) ; 3 uses
  %i.bd = trunc nuw nsw i32 %i.ba to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.0486, i64 1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !29
  %i.bf = lshr i32 %i.bc, 3
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !29
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = and i32 %i.bc, 7
  %i.bl = shl i32 %i.bj, %i.bk
  %i.bm = lshr i32 %i.bl, 28
  %i.bn = add i32 %i.bc, 4
  %i.bo = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.bn) ; 3 uses
  %i.bp = trunc nuw nsw i32 %i.bm to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.0486, i64 2
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !29
  %i.br = lshr i32 %i.bo, 3
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 1, !tbaa !29
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %i.bu)
  %i.bw = and i32 %i.bo, 7
  %i.bx = shl i32 %i.bv, %i.bw
  %i.by = lshr i32 %i.bx, 28
  %i.bz = add i32 %i.bo, 4
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.bz) ; 3 uses
  %i.cb = trunc nuw nsw i32 %i.by to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %.0486, i64 3
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !29
  %i.cd = lshr i32 %i.ca, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !29
  %i.ch = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = and i32 %i.ca, 7
  %i.cj = shl i32 %i.ch, %i.ci
  %i.ck = lshr i32 %i.cj, 28
  %i.cl = add i32 %i.ca, 4
  %i.cm = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.cl) ; 3 uses
  %i.cn = trunc nuw nsw i32 %i.ck to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.0486, i64 4
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !29
  %i.cp = lshr i32 %i.cm, 3
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 1, !tbaa !29
  %i.ct = tail call i32 @llvm.bswap.i32(i32 %i.cs)
  %i.cu = and i32 %i.cm, 7
  %i.cv = shl i32 %i.ct, %i.cu
  %i.cw = lshr i32 %i.cv, 28
  %i.cx = add i32 %i.cm, 4
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.cx) ; 3 uses
  %i.cz = trunc nuw nsw i32 %i.cw to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.0486, i64 5
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !29
  %i.db = lshr i32 %i.cy, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 1, !tbaa !29
  %i.df = tail call i32 @llvm.bswap.i32(i32 %i.de)
  %i.dg = and i32 %i.cy, 7
  %i.dh = shl i32 %i.df, %i.dg
  %i.di = lshr i32 %i.dh, 28
  %i.dj = add i32 %i.cy, 4
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.dj) ; 3 uses
  %i.dl = trunc nuw nsw i32 %i.di to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0486, i64 6
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !29
  %i.dn = lshr i32 %i.dk, 3
  %i.do = zext nneg i32 %i.dn to i64
end_hunk_0
