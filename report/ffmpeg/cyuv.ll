Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cyuv?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"aura\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Auravision AURA\00", align 1
@ff_aura_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 123, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr @cyuv_decode_init, %union.anon { ptr @cyuv_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"cyuv\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Creative YUV (CYUV)\00", align 1
@ff_cyuv_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 0, i32 26, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 0, ptr null, ptr null, ptr null, ptr @cyuv_decode_init, %union.anon { ptr @cyuv_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"got a buffer with %d bytes when %d were expected\0A\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal range(i32 -1094995529, 1) i32 @cyuv_decode_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  %. = select i1 %.not, i32 0, i32 -1094995529
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal i32 @cyuv_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !9    ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  %i.k = and i32 %i.j, -2
  %i.l = shl i32 %i.g, 1
  %i.m = mul i32 %i.l, %i.k                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33
  %i.p = icmp eq i32 %i.o, 123                    ; 2 uses
  %spec.select.idx = select i1 %i.p, i64 16, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.idx ; 7 uses
  %spec.select152 = select i1 %i.p, i64 32, i64 16
  %i.q = mul nsw i32 %i.i, 3
  %i.r = sdiv i32 %i.q, 4
  %i.s = mul nsw i32 %i.r, %i.g
  %i.t = add nsw i32 %i.s, 48                     ; 2 uses
  %i.u = icmp eq i32 %i.d, %i.t
  br i1 %i.u, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = icmp eq i32 %i.d, %i.m
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.d, i32 noundef %i.t) #5
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 7, %bb.a ], [ 15, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink, ptr %i.w, align 8, !tbaa !34
  %i.x = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #5 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %1, align 8, !tbaa !35     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 2 uses
  %i.ae = icmp eq i32 %i.d, %i.m
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  br i1 %i.ae, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !32
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !36
  %i.ai = mul nsw i32 %i.ah, %i.ag
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph178, label %.loopexit

.lr.ph178:                                        ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select152
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.an = icmp sgt i32 %i.d, 0
  br i1 %i.an, label %.lr.ph182, label %.loopexit

.lr.ph182:                                        ; preds = %bb.f
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !9
  %i.ap = shl i32 %i.ao, 1
  %i.aq = add i32 %i.ap, 2
  %i.ar = and i32 %i.aq, -4
  %i.as = load i32, ptr %i.f, align 4, !tbaa !32
  %i.at = load i32, ptr %i.af, align 8, !tbaa !36
  %i.au = mul nsw i32 %i.as, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.z, i64 %i.av ; 2 uses
  %i.ax = sext i32 %i.ar to i64                   ; 7 uses
  %i.ay = zext nneg i32 %i.d to i64
  %4 = add nsw i64 %i.ay, -1                      ; 2 uses
  %5 = udiv i64 %4, %i.ax                         ; 2 uses
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %7 = icmp ult i64 %4, %i.ax
  br i1 %7, label %.epil.preheader, label %.lr.ph182.new

.lr.ph182.new:                                    ; preds = %.lr.ph182
  %unroll_iter = and i64 %6, 9223372036854775806
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph182.new
  %indvars.iv194 = phi i64 [ 0, %.lr.ph182.new ], [ %indvars.iv.next195.1, %bb.g ] ; 2 uses
  %.0146179 = phi ptr [ %i.aw, %.lr.ph182.new ], [ %i.bc, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph182.new ], [ %indvars.iv.next195.a, %bb.g ]
  %8 = load i32, ptr %i.af, align 8, !tbaa !36
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %.0146179, i64 %10 ; 2 uses
  %12 = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv194
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %12, i64 %i.ax, i1 false)
  %indvars.iv.next195 = add nsw i64 %indvars.iv194, %i.ax ; 2 uses
  %i.az = load i32, ptr %i.af, align 8, !tbaa !36
  %i.ba = sext i32 %i.az to i64
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %11, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next195
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bd, i64 %i.ax, i1 false)
  %indvars.iv.next195.1 = add nsw i64 %indvars.iv.next195, %i.ax ; 2 uses
  %indvars.iv.next195.a = add i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %indvars.iv.next195.a, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !37

bb.h:                                             ; preds = %.lr.ph178, %._crit_edge
  %.1177 = phi i32 [ 48, %.lr.ph178 ], [ %.2.lcssa, %._crit_edge ] ; 3 uses
  %.0140176 = phi i32 [ 0, %.lr.ph178 ], [ %i.fd, %._crit_edge ] ; 2 uses
  %.0142175 = phi i32 [ 0, %.lr.ph178 ], [ %i.fa, %._crit_edge ] ; 2 uses
  %.0144174 = phi i32 [ 0, %.lr.ph178 ], [ %i.ex, %._crit_edge ] ; 3 uses
  %i.be = sext i32 %.1177 to i64
  %i.bf = getelementptr inbounds i8, ptr %i.b, i64 %i.be ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !39  ; 2 uses
  %i.bh = and i8 %i.bg, -16                       ; 2 uses
  %i.bi = sext i32 %.0142175 to i64
  %i.bj = getelementptr inbounds i8, ptr %i.ab, i64 %i.bi
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !39
  %i.bk = shl i8 %i.bg, 4                         ; 2 uses
  %i.bl = sext i32 %.0144174 to i64
  %i.bm = getelementptr inbounds i8, ptr %i.z, i64 %i.bl ; 4 uses
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !39
  %i.bn = getelementptr i8, ptr %i.bf, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !39  ; 2 uses
  %i.bp = and i8 %i.bo, -16                       ; 2 uses
  %i.bq = sext i32 %.0140176 to i64
  %i.br = getelementptr inbounds i8, ptr %i.ad, i64 %i.bq
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !39
  %i.bs = and i8 %i.bo, 15
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !39
  %i.bw = add i8 %i.bv, %i.bk                     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bm, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !39
  %i.by = getelementptr i8, ptr %i.bf, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !39
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = and i32 %i.ca, 15
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !39
  %i.cf = add i8 %i.ce, %i.bw                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bm, i64 2
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !39
  %i.ch = lshr i32 %i.ca, 4
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !39
  %i.cl = add i8 %i.ck, %i.cf                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bm, i64 3
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !39
  %i.cn = load i32, ptr %i.h, align 8, !tbaa !9   ; 2 uses
  %i.co = sdiv i32 %i.cn, 4
  %.1145155 = add i32 %.0144174, 4                ; 2 uses
  %.2156 = add i32 %.1177, 3                      ; 2 uses
  %.0157 = add nsw i32 %i.co, -1                  ; 2 uses
  %.1141158 = add i32 %.0140176, 1                ; 2 uses
  %.1143159 = add i32 %.0142175, 1                ; 2 uses
  %.not160 = icmp eq i32 %.0157, 0
  br i1 %.not160, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.cp = sext i32 %.1143159 to i64
  %i.cq = sext i32 %.1141158 to i64
  %i.cr = sext i32 %.2156 to i64
  %i.cs = sext i32 %.1145155 to i64
  %i.ct = sext i32 %.1177 to i64
  %i.cu = sext i32 %.0144174 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv192 = phi i64 [ %i.cs, %.lr.ph.preheader ], [ %indvars.iv.next193, %.lr.ph ] ; 3 uses
  %indvars.iv190 = phi i64 [ %i.cr, %.lr.ph.preheader ], [ %indvars.iv.next191, %.lr.ph ] ; 3 uses
  %indvars.iv188 = phi i64 [ %i.cq, %.lr.ph.preheader ], [ %indvars.iv.next189, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.cp, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0168 = phi i32 [ %.0157, %.lr.ph.preheader ], [ %.0, %.lr.ph ]
  %.2.in165 = phi i64 [ %i.ct, %.lr.ph.preheader ], [ %indvars.iv190, %.lr.ph ]
  %.0135164 = phi i8 [ %i.bp, %.lr.ph.preheader ], [ %i.dr, %.lr.ph ]
  %.0136163 = phi i8 [ %i.bh, %.lr.ph.preheader ], [ %i.dc, %.lr.ph ]
  %.0137162 = phi i8 [ %i.cl, %.lr.ph.preheader ], [ %i.en, %.lr.ph ]
  %.1145.in161 = phi i64 [ %i.cu, %.lr.ph.preheader ], [ %indvars.iv192, %.lr.ph ]
  %i.cv = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv190 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !39
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  %i.cy = lshr i32 %i.cx, 4
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !39
  %i.dc = add i8 %i.db, %.0136163                 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.ab, i64 %indvars.iv
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !39
  %i.de = and i32 %i.cx, 15
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !39
  %i.di = add i8 %i.dh, %.0137162                 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.z, i64 %indvars.iv192 ; 3 uses
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !39
  %i.dk = getelementptr i8, ptr %i.cv, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !39
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = lshr i32 %i.dm, 4
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !39
  %i.dr = add i8 %i.dq, %.0135164                 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.ad, i64 %indvars.iv188
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !39
  %i.dt = and i32 %i.dm, 15
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !39
  %i.dx = add i8 %i.dw, %i.di                     ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dj, i64 1
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !39
  %i.dz = getelementptr i8, ptr %i.b, i64 %.2.in165
  %i.ea = getelementptr i8, ptr %i.dz, i64 5
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !39
  %i.ec = zext i8 %i.eb to i32                    ; 2 uses
  %i.ed = and i32 %i.ec, 15
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !39
  %i.eh = add i8 %i.eg, %i.dx                     ; 2 uses
  %i.ei = getelementptr i8, ptr %i.dj, i64 2
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !39
  %i.ej = lshr i32 %i.ec, 4
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !39
  %i.en = add i8 %i.em, %i.eh                     ; 2 uses
  %i.eo = getelementptr i8, ptr %i.z, i64 %.1145.in161
  %i.ep = getelementptr i8, ptr %i.eo, i64 7
  store i8 %i.en, ptr %i.ep, align 1, !tbaa !39
  %indvars.iv.next193 = add nsw i64 %indvars.iv192, 4 ; 2 uses
  %indvars.iv.next191 = add nsw i64 %indvars.iv190, 3 ; 2 uses
  %.0 = add nsw i32 %.0168, -1                    ; 2 uses
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !40

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.eq = trunc nsw i64 %indvars.iv.next193 to i32
  %i.er = trunc nsw i64 %indvars.iv.next191 to i32
  %i.es = trunc nsw i64 %indvars.iv.next189 to i32
  %i.et = trunc nsw i64 %indvars.iv.next to i32
  %.pre = load i32, ptr %i.h, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %i.eu = phi i32 [ %i.cn, %bb.h ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.1145.lcssa = phi i32 [ %.1145155, %bb.h ], [ %i.eq, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.2156, %bb.h ], [ %i.er, %._crit_edge.loopexit ]
  %.1141.lcssa = phi i32 [ %.1141158, %bb.h ], [ %i.es, %._crit_edge.loopexit ]
  %.1143.lcssa = phi i32 [ %.1143159, %bb.h ], [ %i.et, %._crit_edge.loopexit ]
  %i.ev = load i32, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.ew = add i32 %i.ev, %.1145.lcssa
  %i.ex = sub i32 %i.ew, %i.eu                    ; 2 uses
  %i.ey = load i32, ptr %i.al, align 4, !tbaa !36
  %.neg = sdiv i32 %i.eu, -4                      ; 2 uses
  %i.ez = add i32 %.neg, %.1143.lcssa
  %i.fa = add i32 %i.ez, %i.ey
  %i.fb = load i32, ptr %i.am, align 8, !tbaa !36
  %i.fc = add i32 %.neg, %.1141.lcssa
  %i.fd = add i32 %i.fc, %i.fb
  %i.fe = load i32, ptr %i.f, align 4, !tbaa !32
  %i.ff = mul nsw i32 %i.ev, %i.fe
  %i.fg = icmp slt i32 %i.ex, %i.ff
  br i1 %i.fg, label %bb.h, label %.loopexit, !llvm.loop !41

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %13 = and i64 %5, 1
  %lcmp.mod.not.not = icmp eq i64 %13, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph182
  %indvars.iv194.epil.init = phi i64 [ 0, %.lr.ph182 ], [ %indvars.iv.next195.1, %.loopexit.loopexit.unr-lcssa ]
  %.0146179.epil.init = phi ptr [ %i.aw, %.lr.ph182 ], [ %i.bc, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod205 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod205)
  %14 = load i32, ptr %i.af, align 8, !tbaa !36
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 0, %15
  %17 = getelementptr inbounds i8, ptr %.0146179.epil.init, i64 %16
  %18 = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv194.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %18, i64 %i.ax, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.f
  store i32 1, ptr %2, align 4, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %.loopexit, %bb.c
  %.0147 = phi i32 [ -1094995529, %bb.c ], [ %i.d, %.loopexit ], [ %i.x, %bb.d ]
  ret i32 %.0147
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 112}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !16, i64 24}
!30 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!31 = !{!30, !6, i64 32}
!32 = !{!10, !6, i64 116}
!33 = !{!10, !6, i64 24}
!34 = !{!10, !6, i64 136}
!35 = !{!16, !16, i64 0}
!36 = !{!6, !6, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!7, !7, i64 0}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
end_hunk_0
