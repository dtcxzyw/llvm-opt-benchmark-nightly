Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/adler32_c?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 0, -983055) i32 @adler32_c(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %0, 16                          ; 6 uses
  %i.b = and i32 %0, 65535                        ; 6 uses
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %.val = load i8, ptr %1, align 1, !tbaa !15
  %.0.val.fr.i = freeze i8 %.val
  %i.d = zext i8 %.0.val.fr.i to i32
  %i.e = add nuw nsw i32 %i.b, %i.d               ; 3 uses
  %.urem.i = add nsw i32 %i.e, -65521
  %.cmp.i = icmp samesign ult i32 %i.e, 65521
  %i.f = select i1 %.cmp.i, i32 %i.e, i32 %.urem.i ; 2 uses
  %i.g = add nuw nsw i32 %i.f, %i.a
  %i.h = urem i32 %i.g, 65521
  %i.i = shl nuw i32 %i.h, 16
  %i.j = add nuw nsw i32 %i.i, %i.f
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %bb.h, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i64 %2, 16
  br i1 %i.l, label %bb.e, label %.preheader, !prof !14

.preheader:                                       ; preds = %bb.d
  %i.m = icmp ugt i64 %2, 5551
  br i1 %i.m, label %.lr.ph, label %.lr.ph.i64.preheader

bb.e:                                             ; preds = %bb.d
  %.not12.i = icmp eq i64 %2, 0
  br i1 %.not12.i, label %adler32_len_16.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %xtraiter144 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.016.i.prol = phi i32 [ %i.s, %.lr.ph.i.prol ], [ %i.a, %.lr.ph.i.preheader ]
  %.0915.i.prol = phi i64 [ %i.n, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ]
  %.01014.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.01113.i.prol = phi i32 [ %i.r, %.lr.ph.i.prol ], [ %i.b, %.lr.ph.i.preheader ]
  %prol.iter146 = phi i64 [ %prol.iter146.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.n = add nsw i64 %.0915.i.prol, -1            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01014.i.prol, i64 1 ; 2 uses
  %i.p = load i8, ptr %.01014.i.prol, align 1, !tbaa !15
  %i.q = zext i8 %i.p to i32
  %i.r = add i32 %.01113.i.prol, %i.q             ; 4 uses
  %i.s = add i32 %i.r, %.016.i.prol               ; 3 uses
  %prol.iter146.next = add i64 %prol.iter146, 1   ; 2 uses
  %prol.iter146.cmp.not = icmp eq i64 %prol.iter146.next, %xtraiter144
  br i1 %prol.iter146.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !8

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa132.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %.016.i.unr = phi i32 [ %i.a, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %.0915.i.unr = phi i64 [ %2, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.01014.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.01113.i.unr = phi i32 [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %i.t = icmp ult i64 %2, 4
  br i1 %i.t, label %adler32_len_16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i32 [ %i.ao, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0915.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.0915.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01014.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.01014.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01113.i = phi i32 [ %i.an, %.lr.ph.i ], [ %.01113.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.u = getelementptr inbounds nuw i8, ptr %.01014.i, i64 1
  %i.v = load i8, ptr %.01014.i, align 1, !tbaa !15
  %i.w = zext i8 %i.v to i32
  %i.x = add i32 %.01113.i, %i.w                  ; 2 uses
  %i.y = add i32 %i.x, %.016.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01014.i, i64 2
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !15
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add i32 %i.x, %i.ab                     ; 2 uses
  %i.ad = add i32 %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %.01014.i, i64 3
  %i.af = load i8, ptr %i.z, align 1, !tbaa !15
  %i.ag = zext i8 %i.af to i32
  %i.ah = add i32 %i.ac, %i.ag                    ; 2 uses
  %i.ai = add i32 %i.ah, %i.ad
  %i.aj = add nsw i64 %.0915.i, -4                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01014.i, i64 4
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !15
  %i.am = zext i8 %i.al to i32
  %i.an = add i32 %i.ah, %i.am                    ; 3 uses
  %i.ao = add i32 %i.an, %i.ai                    ; 2 uses
  %.not.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.3, label %adler32_len_16.exit, label %.lr.ph.i, !llvm.loop !9

adler32_len_16.exit:                              ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.e
  %.011.lcssa.i = phi i32 [ %i.b, %bb.e ], [ %.lcssa132.unr, %.lr.ph.i.prol.loopexit ], [ %i.an, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.a, %bb.e ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ao, %.lr.ph.i ]
  %i.ap = urem i32 %.011.lcssa.i, 65521
  %i.aq = urem i32 %.0.lcssa.i, 65521
  %i.ar = shl nuw i32 %i.aq, 16
  %i.as = or disjoint i32 %i.ar, %i.ap
  br label %bb.h

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.05478 = phi i32 [ %i.ck, %bb.g ], [ %i.a, %.preheader ]
  %.05577 = phi i64 [ %i.ci, %bb.g ], [ %2, %.preheader ]
  %.05676 = phi ptr [ %scevgep, %bb.g ], [ %1, %.preheader ] ; 2 uses
  %.05875 = phi i32 [ %i.cj, %bb.g ], [ %i.b, %.preheader ]
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph
  %.159 = phi i32 [ %.05875, %.lr.ph ], [ %i.ce, %bb.f ]
  %.157 = phi ptr [ %.05676, %.lr.ph ], [ %i.cg, %bb.f ] ; 9 uses
  %.1 = phi i32 [ %.05478, %.lr.ph ], [ %i.cf, %bb.f ]
  %.0 = phi i32 [ 694, %.lr.ph ], [ %i.ch, %bb.f ]
  %i.at = load i8, ptr %.157, align 1, !tbaa !15
  %i.au = zext i8 %i.at to i32
  %i.av = add i32 %.159, %i.au                    ; 2 uses
  %i.aw = add i32 %i.av, %.1
  %i.ax = getelementptr inbounds nuw i8, ptr %.157, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.az = zext i8 %i.ay to i32
  %i.ba = add i32 %i.av, %i.az                    ; 2 uses
  %i.bb = add i32 %i.aw, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.157, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !15
  %i.be = zext i8 %i.bd to i32
  %i.bf = add i32 %i.ba, %i.be                    ; 2 uses
  %i.bg = add i32 %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.157, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !15
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add i32 %i.bf, %i.bj                    ; 2 uses
  %i.bl = add i32 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.157, i64 4
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !15
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %i.bk, %i.bo                    ; 2 uses
  %i.bq = add i32 %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.157, i64 5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !15
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add i32 %i.bp, %i.bt                    ; 2 uses
  %i.bv = add i32 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.157, i64 6
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !15
  %i.by = zext i8 %i.bx to i32
  %i.bz = add i32 %i.bu, %i.by                    ; 2 uses
  %i.ca = add i32 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.157, i64 7
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !15
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add i32 %i.bz, %i.cd                    ; 3 uses
  %i.cf = add i32 %i.ca, %i.ce                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.157, i64 8
  %i.ch = add nsw i32 %.0, -1                     ; 2 uses
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.g, label %bb.f, !llvm.loop !10

bb.g:                                             ; preds = %bb.f
  %i.ci = add i64 %.05577, -5552                  ; 5 uses
  %scevgep = getelementptr i8, ptr %.05676, i64 5552 ; 3 uses
  %i.cj = urem i32 %i.ce, 65521                   ; 3 uses
  %i.ck = urem i32 %i.cf, 65521                   ; 3 uses
  %i.cl = icmp ugt i64 %i.ci, 5551
  br i1 %i.cl, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.g
  %i.cm = icmp samesign ugt i64 %i.ci, 7
  br i1 %i.cm, label %.lr.ph.i64.preheader, label %._crit_edge.i

.lr.ph.i64.preheader:                             ; preds = %.preheader, %._crit_edge
  %.045.i.ph = phi i32 [ %i.a, %.preheader ], [ %i.ck, %._crit_edge ]
  %.03844.i.ph = phi i64 [ %2, %.preheader ], [ %i.ci, %._crit_edge ]
  %.03943.i.ph = phi ptr [ %1, %.preheader ], [ %scevgep, %._crit_edge ]
  %.04042.i.ph = phi i32 [ %i.b, %.preheader ], [ %i.cj, %._crit_edge ]
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %.lr.ph.i64.preheader, %.lr.ph.i64
  %.045.i = phi i32 [ %i.ea, %.lr.ph.i64 ], [ %.045.i.ph, %.lr.ph.i64.preheader ]
  %.03844.i = phi i64 [ %i.cn, %.lr.ph.i64 ], [ %.03844.i.ph, %.lr.ph.i64.preheader ]
  %.03943.i = phi ptr [ %i.eb, %.lr.ph.i64 ], [ %.03943.i.ph, %.lr.ph.i64.preheader ] ; 9 uses
  %.04042.i = phi i32 [ %i.dz, %.lr.ph.i64 ], [ %.04042.i.ph, %.lr.ph.i64.preheader ]
  %i.cn = add nsw i64 %.03844.i, -8               ; 3 uses
  %i.co = load i8, ptr %.03943.i, align 1, !tbaa !15
  %i.cp = zext i8 %i.co to i32
  %i.cq = add i32 %.04042.i, %i.cp                ; 2 uses
  %i.cr = add i32 %i.cq, %.045.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.03943.i, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !15
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add i32 %i.cq, %i.cu                    ; 2 uses
  %i.cw = add i32 %i.cr, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.03943.i, i64 2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !15
  %i.cz = zext i8 %i.cy to i32
  %i.da = add i32 %i.cv, %i.cz                    ; 2 uses
  %i.db = add i32 %i.cw, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.03943.i, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15
  %i.de = zext i8 %i.dd to i32
  %i.df = add i32 %i.da, %i.de                    ; 2 uses
  %i.dg = add i32 %i.db, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.03943.i, i64 4
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !15
  %i.dj = zext i8 %i.di to i32
  %i.dk = add i32 %i.df, %i.dj                    ; 2 uses
  %i.dl = add i32 %i.dg, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.03943.i, i64 5
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !15
  %i.do = zext i8 %i.dn to i32
  %i.dp = add i32 %i.dk, %i.do                    ; 2 uses
  %i.dq = add i32 %i.dl, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.03943.i, i64 6
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15
  %i.dt = zext i8 %i.ds to i32
  %i.du = add i32 %i.dp, %i.dt                    ; 2 uses
  %i.dv = add i32 %i.dq, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.03943.i, i64 7
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !15
  %i.dy = zext i8 %i.dx to i32
  %i.dz = add i32 %i.du, %i.dy                    ; 3 uses
  %i.ea = add i32 %i.dv, %i.dz                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.03943.i, i64 8 ; 2 uses
  %i.ec = icmp ugt i64 %i.cn, 7
  br i1 %i.ec, label %.lr.ph.i64, label %._crit_edge.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %.lr.ph.i64, %._crit_edge
  %.040.lcssa.i = phi i32 [ %i.cj, %._crit_edge ], [ %i.dz, %.lr.ph.i64 ] ; 3 uses
  %.039.lcssa.i = phi ptr [ %scevgep, %._crit_edge ], [ %i.eb, %.lr.ph.i64 ] ; 2 uses
  %.038.lcssa.i = phi i64 [ %i.ci, %._crit_edge ], [ %i.cn, %.lr.ph.i64 ] ; 5 uses
  %.0.lcssa.i63 = phi i32 [ %i.ck, %._crit_edge ], [ %i.ea, %.lr.ph.i64 ] ; 3 uses
  %.not12.i.i = icmp eq i64 %.038.lcssa.i, 0
  br i1 %.not12.i.i, label %adler32_len_64.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge.i
  %xtraiter = and i64 %.038.lcssa.i, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i32 [ %i.eh, %.lr.ph.i.i.prol ], [ %.0.lcssa.i63, %.lr.ph.i.i.preheader ]
  %.0915.i.i.prol = phi i64 [ %3, %.lr.ph.i.i.prol ], [ %.038.lcssa.i, %.lr.ph.i.i.preheader ]
  %.01014.i.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i.prol ], [ %.039.lcssa.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01113.i.i.prol = phi i32 [ %i.eg, %.lr.ph.i.i.prol ], [ %.040.lcssa.i, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %3 = add nsw i64 %.0915.i.i.prol, -1            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.01014.i.i.prol, i64 1 ; 2 uses
  %i.ee = load i8, ptr %.01014.i.i.prol, align 1, !tbaa !15
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add i32 %.01113.i.i.prol, %i.ef         ; 4 uses
  %i.eh = add i32 %i.eg, %.016.i.i.prol           ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !13

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa134.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.eg, %.lr.ph.i.i.prol ]
  %.lcssa133.unr = phi i32 [ poison, %.lr.ph.i.i.preheader ], [ %i.eh, %.lr.ph.i.i.prol ]
  %.016.i.i.unr = phi i32 [ %.0.lcssa.i63, %.lr.ph.i.i.preheader ], [ %i.eh, %.lr.ph.i.i.prol ]
  %.0915.i.i.unr = phi i64 [ %.038.lcssa.i, %.lr.ph.i.i.preheader ], [ %3, %.lr.ph.i.i.prol ]
  %.01014.i.i.unr = phi ptr [ %.039.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.prol ]
  %.01113.i.i.unr = phi i32 [ %.040.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.eg, %.lr.ph.i.i.prol ]
  %4 = icmp ult i64 %.038.lcssa.i, 4
  br i1 %4, label %adler32_len_64.exit, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i.a
  %.016.i.i = phi i32 [ %i.em, %.lr.ph.i.i.a ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0915.i.i = phi i64 [ %20, %.lr.ph.i.i.a ], [ %.0915.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01014.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.a ], [ %.01014.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.01113.i.i = phi i32 [ %i.el, %.lr.ph.i.i.a ], [ %.01113.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %5 = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 1
  %6 = load i8, ptr %.01014.i.i, align 1, !tbaa !15
  %7 = zext i8 %6 to i32
  %8 = add i32 %.01113.i.i, %7                    ; 2 uses
  %9 = add i32 %8, %.016.i.i
  %10 = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 2
  %11 = load i8, ptr %5, align 1, !tbaa !15
  %12 = zext i8 %11 to i32
  %13 = add i32 %8, %12                           ; 2 uses
  %14 = add i32 %13, %9
  %15 = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 3
  %16 = load i8, ptr %10, align 1, !tbaa !15
  %17 = zext i8 %16 to i32
  %18 = add i32 %13, %17                          ; 2 uses
  %19 = add i32 %18, %14
  %20 = add nsw i64 %.0915.i.i, -4                ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 4
  %i.ej = load i8, ptr %15, align 1, !tbaa !15
  %i.ek = zext i8 %i.ej to i32
  %i.el = add i32 %18, %i.ek                      ; 3 uses
  %i.em = add i32 %i.el, %19                      ; 2 uses
  %.not.i.i.3 = icmp eq i64 %20, 0
  br i1 %.not.i.i.3, label %adler32_len_64.exit, label %.lr.ph.i.i.a, !llvm.loop !9

adler32_len_64.exit:                              ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i.a, %._crit_edge.i
  %.011.lcssa.i.i = phi i32 [ %.040.lcssa.i, %._crit_edge.i ], [ %.lcssa134.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.el, %.lr.ph.i.i.a ]
  %.0.lcssa.i.i = phi i32 [ %.0.lcssa.i63, %._crit_edge.i ], [ %.lcssa133.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.em, %.lr.ph.i.i.a ]
  %i.en = urem i32 %.011.lcssa.i.i, 65521
  %i.eo = urem i32 %.0.lcssa.i.i, 65521
  %i.ep = shl nuw i32 %i.eo, 16
  %i.eq = or disjoint i32 %i.ep, %i.en
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %adler32_len_64.exit, %adler32_len_16.exit, %bb.b
  %.060 = phi i32 [ %i.j, %bb.b ], [ %i.eq, %adler32_len_64.exit ], [ %i.as, %adler32_len_16.exit ], [ 1, %bb.c ]
  ret i32 %.060
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !16}
!9 = distinct !{!9, !17}
!10 = distinct !{!10, !17}
!11 = distinct !{!11, !17}
!12 = distinct !{!12, !17}
!13 = distinct !{!13, !16}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!4, !4, i64 0}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!"llvm.loop.mustprogress"}
end_hunk_0
