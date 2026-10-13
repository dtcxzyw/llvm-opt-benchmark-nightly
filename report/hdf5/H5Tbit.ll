Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Tbit?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@H5T_init_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [39 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5Tbit.c\00", align 1
@__func__.H5T__bit_shift = private unnamed_addr constant [15 x i8] c"H5T__bit_shift\00", align 1
@H5E_DATATYPE_g = external local_unnamed_addr global i64, align 8
@H5E_CANTINIT_g = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"can't wrap buffer\00", align 1
@H5E_NOSPACE_g = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"can't get actual buffer\00", align 1
@H5E_CLOSEERROR_g = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"can't close wrapped buffer\00", align 1
@H5T_native_order_g = external local_unnamed_addr global i32, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @H5T__bit_copy(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i8, ptr @H5T_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i64 %3, 3                           ; 2 uses
  %i.j = lshr i64 %1, 3                           ; 2 uses
  %.0118138 = and i64 %3, 7                       ; 3 uses
  %.0122139 = and i64 %1, 7                       ; 2 uses
  %i.k = icmp ne i64 %.0118138, 0
  %i.l = icmp ne i64 %4, 0
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0122144 = phi i64 [ %.0122, %.lr.ph ], [ %.0122139, %bb.b ] ; 4 uses
  %.0118143 = phi i64 [ %.0118, %.lr.ph ], [ %.0118138, %bb.b ] ; 3 uses
  %.0142 = phi i64 [ %.1, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %.0110141 = phi i64 [ %.1111, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %.0115140 = phi i64 [ %i.am, %.lr.ph ], [ %4, %bb.b ] ; 2 uses
  %i.n = sub nuw nsw i64 8, %.0122144
  %i.o = sub nuw nsw i64 8, %.0118143
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.o)
  %.0115. = tail call i64 @llvm.umin.i64(i64 %.0115140, i64 %i.p) ; 4 uses
  %notmask137 = shl nsw i64 -1, %.0115.
  %i.q = xor i64 %notmask137, -1                  ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, %.0122144
  %i.s = trunc i64 %i.r to i8
  %i.t = xor i8 %i.s, -1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.0142 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = and i8 %i.v, %i.t                        ; 2 uses
  store i8 %i.w, ptr %i.u, align 1, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.0110141
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = trunc nuw nsw i64 %.0118143 to i8
  %i.aa = lshr i8 %i.y, %i.z
  %i.ab = trunc nuw nsw i64 %i.q to i8
  %i.ac = and i8 %i.aa, %i.ab
  %i.ad = trunc nuw nsw i64 %.0122144 to i8
  %i.ae = shl i8 %i.ac, %i.ad
  %i.af = or i8 %i.ae, %i.w
  store i8 %i.af, ptr %i.u, align 1, !tbaa !13
  %i.ag = add nuw nsw i64 %.0115., %.0118143      ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.ag, 7
  %i.ai = zext i1 %i.ah to i64
  %.1111 = add i64 %.0110141, %i.ai               ; 2 uses
  %i.aj = add nuw nsw i64 %.0115., %.0122144      ; 2 uses
  %i.ak = icmp samesign ugt i64 %i.aj, 7
  %i.al = zext i1 %i.ak to i64
  %.1 = add i64 %.0142, %i.al                     ; 2 uses
  %i.am = sub i64 %.0115140, %.0115.              ; 3 uses
  %.0118 = and i64 %i.ag, 7                       ; 3 uses
  %.0122 = and i64 %i.aj, 7                       ; 2 uses
  %i.an = icmp ne i64 %.0118, 0
  %i.ao = icmp ne i64 %i.am, 0
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0115.lcssa = phi i64 [ %4, %bb.b ], [ %i.am, %.lr.ph ] ; 9 uses
  %.0110.lcssa = phi i64 [ %i.i, %bb.b ], [ %.1111, %.lr.ph ] ; 9 uses
  %.0.lcssa = phi i64 [ %i.j, %bb.b ], [ %.1, %.lr.ph ] ; 10 uses
  %.0118.lcssa = phi i64 [ %.0118138, %bb.b ], [ %.0118, %.lr.ph ]
  %.0122.lcssa = phi i64 [ %.0122139, %bb.b ], [ %.0122, %.lr.ph ] ; 6 uses
  %i.aq = sub nuw nsw i64 8, %.0122.lcssa         ; 2 uses
  %i.ar = lshr exact i64 256, %.0122.lcssa        ; 2 uses
  %i.as = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.at = sub nsw i64 0, %i.ar                    ; 2 uses
  %i.au = icmp ugt i64 %.0115.lcssa, 8
  br i1 %i.au, label %.lr.ph153, label %.preheader

.lr.ph153:                                        ; preds = %._crit_edge
  %i.av = and i64 %i.at, 254
  %.not136 = icmp eq i64 %.0122.lcssa, 0
  %i.aw = shl nuw nsw i64 %i.as, %.0122.lcssa
  %i.ax = trunc i64 %i.aw to i8
  %i.ay = xor i8 %i.ax, -1
  %i.az = lshr i64 %i.av, %i.aq
  %i.ba = trunc nuw nsw i64 %i.az to i8
  %i.bb = xor i8 %i.ba, -1
  br i1 %.not136, label %iter.check, label %.lr.ph153.split.preheader

.lr.ph153.split.preheader:                        ; preds = %.lr.ph153
  %scevgep = getelementptr i8, ptr %0, i64 %.0.lcssa
  %load_initial = load i8, ptr %scevgep, align 1
  br label %.lr.ph153.split

iter.check:                                       ; preds = %.lr.ph153
  %i.bc = add i64 %.0115.lcssa, -9                ; 3 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bc, 24
  br i1 %min.iters.check, label %.lr.ph153.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bf = add i64 %.0110.lcssa, %i.b
  %i.bg = add i64 %.0.lcssa, %i.a
  %i.bh = sub i64 %i.bf, %i.bg
  %diff.check = icmp ugt i64 %i.bh, -32
  br i1 %diff.check, label %.lr.ph153.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check203 = icmp ult i64 %i.bc, 248
  br i1 %min.iters.check203, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %i.be, 28
  %n.vec = and i64 %i.be, 4611686018427387872     ; 6 uses
  %i.bj = add i64 %.0.lcssa, %n.vec               ; 2 uses
  %i.bk = add i64 %.0110.lcssa, %n.vec            ; 2 uses
  %i.bl = shl i64 %n.vec, 3
  %i.bm = sub i64 %.0115.lcssa, %i.bl             ; 2 uses
  %i.bn = getelementptr i8, ptr %2, i64 %.0110.lcssa
  %i.bo = getelementptr i8, ptr %0, i64 %.0.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <16 x i8>, ptr %i.bp, align 1, !tbaa !13
  %wide.load204 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !13
  %i.br = getelementptr i8, ptr %i.bo, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <16 x i8> %wide.load, ptr %i.br, align 1, !tbaa !13
  store <16 x i8> %wide.load204, ptr %i.bs, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %.lr.ph165.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph153.split.us.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec207 = and i64 %i.be, 4611686018427387900  ; 5 uses
  %i.bu = add i64 %.0.lcssa, %n.vec207            ; 2 uses
  %i.bv = add i64 %.0110.lcssa, %n.vec207         ; 2 uses
  %i.bw = shl i64 %n.vec207, 3
  %i.bx = sub i64 %.0115.lcssa, %i.bw             ; 2 uses
  %i.by = getelementptr i8, ptr %2, i64 %.0110.lcssa
  %i.bz = getelementptr i8, ptr %0, i64 %.0.lcssa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index208 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next210, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 %index208
  %wide.load209 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !13
  %i.cb = getelementptr i8, ptr %i.bz, i64 %index208
  store <4 x i8> %wide.load209, ptr %i.cb, align 1, !tbaa !13
  %index.next210 = add nuw i64 %index208, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next210, %n.vec207
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n211 = icmp eq i64 %i.be, %n.vec207
  br i1 %cmp.n211, label %.lr.ph165.preheader, label %.lr.ph153.split.us.preheader

.lr.ph153.split.us.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2151.us.ph = phi i64 [ %.0.lcssa, %iter.check ], [ %.0.lcssa, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  %.2112150.us.ph = phi i64 [ %.0110.lcssa, %iter.check ], [ %.0110.lcssa, %vector.memcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  %.1116149.us.ph = phi i64 [ %.0115.lcssa, %iter.check ], [ %.0115.lcssa, %vector.memcheck ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %.lr.ph153.split.us

.lr.ph153.split.us:                               ; preds = %.lr.ph153.split.us.preheader, %.lr.ph153.split.us
  %.2151.us = phi i64 [ %i.ch, %.lr.ph153.split.us ], [ %.2151.us.ph, %.lr.ph153.split.us.preheader ] ; 2 uses
  %.2112150.us = phi i64 [ %i.ci, %.lr.ph153.split.us ], [ %.2112150.us.ph, %.lr.ph153.split.us.preheader ] ; 2 uses
  %.1116149.us = phi i64 [ %i.cg, %.lr.ph153.split.us ], [ %.1116149.us.ph, %.lr.ph153.split.us.preheader ]
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %.2112150.us
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.2151.us
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !13
  %i.cg = add i64 %.1116149.us, -8                ; 3 uses
  %i.ch = add i64 %.2151.us, 1                    ; 2 uses
  %i.ci = add i64 %.2112150.us, 1                 ; 2 uses
  %i.cj = icmp ugt i64 %i.cg, 8
  br i1 %i.cj, label %.lr.ph153.split.us, label %.lr.ph165.preheader, !llvm.loop !24

.preheader:                                       ; preds = %._crit_edge
  %.not159 = icmp eq i64 %.0115.lcssa, 0
  br i1 %.not159, label %.loopexit, label %.lr.ph165.preheader

.lr.ph153.split:                                  ; preds = %.lr.ph153.split.preheader, %.lr.ph153.split
  %store_forwarded = phi i8 [ %load_initial, %.lr.ph153.split.preheader ], [ %i.db, %.lr.ph153.split ]
  %.2151 = phi i64 [ %.0.lcssa, %.lr.ph153.split.preheader ], [ %i.dd, %.lr.ph153.split ] ; 2 uses
  %.2112150 = phi i64 [ %.0110.lcssa, %.lr.ph153.split.preheader ], [ %i.de, %.lr.ph153.split ] ; 2 uses
  %.1116149 = phi i64 [ %.0115.lcssa, %.lr.ph153.split.preheader ], [ %i.dc, %.lr.ph153.split ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %.2151 ; 3 uses
  %i.cl = and i8 %store_forwarded, %i.ay          ; 2 uses
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %.2112150 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = zext i8 %i.cn to i64
  %i.cp = and i64 %i.as, %i.co
  %i.cq = shl nuw nsw i64 %i.cp, %.0122.lcssa
  %i.cr = trunc i64 %i.cq to i8
  %i.cs = or i8 %i.cl, %i.cr
  store i8 %i.cs, ptr %i.ck, align 1, !tbaa !13
  %i.ct = getelementptr i8, ptr %i.ck, i64 1      ; 3 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = and i8 %i.cu, %i.bb                     ; 2 uses
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !13
  %i.cw = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.cx = zext i8 %i.cw to i64
  %i.cy = and i64 %i.cx, %i.at
  %i.cz = lshr i64 %i.cy, %i.aq
  %i.da = trunc nuw nsw i64 %i.cz to i8
  %i.db = or i8 %i.cv, %i.da                      ; 2 uses
  store i8 %i.db, ptr %i.ct, align 1, !tbaa !13
  %i.dc = add i64 %.1116149, -8                   ; 3 uses
  %i.dd = add i64 %.2151, 1                       ; 2 uses
  %i.de = add i64 %.2112150, 1                    ; 2 uses
  %i.df = icmp ugt i64 %i.dc, 8
  br i1 %i.df, label %.lr.ph153.split, label %.lr.ph165.preheader, !llvm.loop !25

.lr.ph165.preheader:                              ; preds = %.lr.ph153.split, %.lr.ph153.split.us, %middle.block, %vec.epilog.middle.block, %.preheader
  %.3164.ph = phi i64 [ %i.ch, %.lr.ph153.split.us ], [ %i.bj, %middle.block ], [ %i.bu, %vec.epilog.middle.block ], [ %.0.lcssa, %.preheader ], [ %i.dd, %.lr.ph153.split ]
  %.3113163.ph = phi i64 [ %i.ci, %.lr.ph153.split.us ], [ %i.bk, %middle.block ], [ %i.bv, %vec.epilog.middle.block ], [ %.0110.lcssa, %.preheader ], [ %i.de, %.lr.ph153.split ]
  %.2117162.ph = phi i64 [ %i.cg, %.lr.ph153.split.us ], [ %i.bm, %middle.block ], [ %i.bx, %vec.epilog.middle.block ], [ %.0115.lcssa, %.preheader ], [ %i.dc, %.lr.ph153.split ]
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %.lr.ph165
  %.3164 = phi i64 [ %.4, %.lr.ph165 ], [ %.3164.ph, %.lr.ph165.preheader ] ; 2 uses
  %.3113163 = phi i64 [ %.4114, %.lr.ph165 ], [ %.3113163.ph, %.lr.ph165.preheader ] ; 2 uses
  %.2117162 = phi i64 [ %i.eh, %.lr.ph165 ], [ %.2117162.ph, %.lr.ph165.preheader ] ; 2 uses
  %.2120161 = phi i64 [ %i.eb, %.lr.ph165 ], [ %.0118.lcssa, %.lr.ph165.preheader ] ; 3 uses
  %.2124160 = phi i64 [ %i.ef, %.lr.ph165 ], [ %.0122.lcssa, %.lr.ph165.preheader ] ; 4 uses
  %i.dg = sub nuw nsw i64 8, %.2124160
  %i.dh = sub nuw nsw i64 8, %.2120161
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.dh)
  %.2117. = tail call i64 @llvm.umin.i64(i64 %.2117162, i64 %i.di) ; 4 uses
  %notmask = shl nsw i64 -1, %.2117.
  %i.dj = xor i64 %notmask, -1                    ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dj, %.2124160
  %i.dl = trunc i64 %i.dk to i8
  %i.dm = xor i8 %i.dl, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %.3164 ; 3 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !13
  %i.dp = and i8 %i.do, %i.dm                     ; 2 uses
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %.3113163
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !13
  %i.ds = trunc nuw nsw i64 %.2120161 to i8
  %i.dt = lshr i8 %i.dr, %i.ds
  %i.du = trunc nuw i64 %i.dj to i8
  %i.dv = and i8 %i.dt, %i.du
  %i.dw = trunc nuw nsw i64 %.2124160 to i8
  %i.dx = shl i8 %i.dv, %i.dw
  %i.dy = or i8 %i.dx, %i.dp
  store i8 %i.dy, ptr %i.dn, align 1, !tbaa !13
  %i.dz = add nuw nsw i64 %.2117., %.2120161      ; 2 uses
  %i.ea = icmp samesign ugt i64 %i.dz, 7
  %i.eb = and i64 %i.dz, 7
  %i.ec = zext i1 %i.ea to i64
  %.4114 = add i64 %.3113163, %i.ec
  %i.ed = add nuw nsw i64 %.2117., %.2124160      ; 2 uses
  %i.ee = icmp samesign ugt i64 %i.ed, 7
  %i.ef = and i64 %i.ed, 7
  %i.eg = zext i1 %i.ee to i64
  %.4 = add i64 %.3164, %i.eg
  %i.eh = sub i64 %.2117162, %.2117.              ; 2 uses
  %.not = icmp eq i64 %i.eh, 0
  br i1 %.not, label %.loopexit, label %.lr.ph165, !llvm.loop !26

.loopexit:                                        ; preds = %.lr.ph165, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5T__bit_shift(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load i8, ptr @H5T_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %not. = xor i1 %i.c, true
  %.not102 = select i1 %not., i1 %i.e, i1 false
  %.not = icmp eq i64 %1, 0
  %or.cond = or i1 %.not, %.not102
  br i1 %or.cond, label %H5T__bit_set.exit, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 12 uses
  %.not63 = icmp ult i64 %i.f, %3
  br i1 %.not63, label %bb.g, label %bb.c
end_hunk_0
