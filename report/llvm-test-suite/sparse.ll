Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sparse?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@force_irredundant = external local_unnamed_addr global i32, align 4
@cube = external local_unnamed_addr global %struct.cube_struct, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @make_sparse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cost_struct, align 4        ; 7 uses
  %4 = alloca %struct.cost_struct, align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void (ptr, ptr, ...) @cover_cost(ptr noundef %0, ptr noundef nonnull %4) #5
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.i, %bb.d ]
  %i.c = call i64 (...) @util_cpu_time() #5
  %i.d = call ptr @mv_reduce(ptr noundef %.0, ptr noundef %1) ; 3 uses
  call void (i64, i32, ptr, ptr, ...) @totals(i64 noundef %i.c, i32 noundef 12, ptr noundef %i.d, ptr noundef nonnull %3) #5
  %i.e = load i32, ptr %i.a, align 4, !tbaa !9
  %i.f = load i32, ptr %i.b, align 4, !tbaa !9
  %i.g = icmp eq i32 %i.e, %i.f
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @copy_cost(ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %i.h = call i64 (...) @util_cpu_time() #5
  %i.i = call ptr (ptr, ptr, i32, ...) @expand(ptr noundef %i.d, ptr noundef %2, i32 noundef 1) #5 ; 4 uses
  call void (i64, i32, ptr, ptr, ...) @totals(i64 noundef %i.h, i32 noundef 13, ptr noundef %i.i, ptr noundef nonnull %3) #5
  %i.j = load i32, ptr %i.a, align 4, !tbaa !9
  %i.k = load i32, ptr %i.b, align 4, !tbaa !9
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @copy_cost(ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %i.m = load i32, ptr @force_irredundant, align 4, !tbaa !7
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.1 = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cover_cost(...) local_unnamed_addr #2

declare i64 @util_cpu_time(...) local_unnamed_addr #2

declare void @totals(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @copy_cost(...) local_unnamed_addr #2

declare ptr @expand(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @mv_reduce(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !15 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre152 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph133, %.loopexit115
  %i.g = phi i32 [ %i.a, %.lr.ph133 ], [ %i.ek, %.loopexit115 ] ; 2 uses
  %2 = phi ptr [ %.pre152, %.lr.ph133 ], [ %3, %.loopexit115 ] ; 3 uses
  %indvars.iv146 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next147, %.loopexit115 ] ; 9 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv146
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %.not108 = icmp eq i32 %i.i, 0
  br i1 %.not108, label %.loopexit115, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv146
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv146
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %.not109126 = icmp sgt i32 %i.l, %i.o
  br i1 %.not109126, label %.loopexit115, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.c, %bb.q
  %.0102127 = phi i32 [ %i.eg, %bb.q ], [ %i.l, %bb.c ] ; 8 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !21
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #6 ; 4 uses
  %i.t = load i32, ptr %i.c, align 4, !tbaa !21
  %i.u = load i32, ptr @cube, align 8, !tbaa !22
  %i.v = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.t, i32 noundef %i.u) #5 ; 9 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.x = load i32, ptr %i.c, align 4, !tbaa !21
  %i.y = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.x                   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %.idx = shl nsw i64 %i.aa, 2
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 %.idx
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph129
  %i.ad = ashr i32 %.0102127, 5
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = and i32 %.0102127, 31
  %i.ah = shl nuw i32 1, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.ak = phi i32 [ %i.y, %.lr.ph ], [ %i.be, %bb.f ]
  %.099116 = phi ptr [ %i.w, %.lr.ph ], [ %i.bg, %bb.f ] ; 4 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %.099116, i64 %i.af
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %i.an = and i32 %i.am, %i.ah
  %.not114 = icmp eq i32 %i.an, 0
  br i1 %.not114, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %i.ai, align 4, !tbaa !21 ; 3 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ap
  store ptr %.099116, ptr %i.aq, align 8, !tbaa !25
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.as = load i32, ptr %i.v, align 8, !tbaa !24
  %i.at = add nsw i32 %i.ao, 1
  store i32 %i.at, ptr %i.ai, align 4, !tbaa !21
  %i.au = mul nsw i32 %i.as, %i.ao
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv146
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.ba = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.aw, ptr noundef nonnull %.099116, ptr noundef %i.az) #5 ; 0 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.af ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = or i32 %i.bc, %i.ah
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !7
  %.pre.a = load i32, ptr %0, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.be = phi i32 [ %i.ak, %bb.d ], [ %.pre.a, %bb.e ] ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.099116, i64 %i.bf ; 2 uses
  %i.bh = icmp ult ptr %i.bg, %i.ab
  br i1 %i.bh, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %.lr.ph129
  %i.bi = load i32, ptr %i.e, align 4, !tbaa !21
  %i.bj = load i32, ptr @cube, align 8, !tbaa !22
  %i.bk = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.bi, i32 noundef %i.bj) #5 ; 5 uses
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !23  ; 2 uses
  %i.bm = load i32, ptr %i.e, align 4, !tbaa !21
  %i.bn = load i32, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.bo = mul nsw i32 %i.bn, %i.bm                ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %.idx142 = shl nsw i64 %i.bp, 2
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %.idx142
  %i.br = icmp sgt i32 %i.bo, 0
  br i1 %i.br, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %._crit_edge
  %i.bs = ashr i32 %.0102127, 5
  %i.bt = add nsw i32 %i.bs, 1
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = and i32 %.0102127, 31
  %i.bw = shl nuw i32 1, %i.bv                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph119, %bb.i
  %i.bz = phi i32 [ %i.bn, %.lr.ph119 ], [ %i.cr, %bb.i ]
  %.1117 = phi ptr [ %i.bl, %.lr.ph119 ], [ %i.ct, %bb.i ] ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %.1117, i64 %i.bu
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cc = and i32 %i.cb, %i.bw
  %.not113 = icmp eq i32 %i.cc, 0
  br i1 %.not113, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !23
  %i.ce = load i32, ptr %i.bk, align 8, !tbaa !24
  %i.cf = load i32, ptr %i.by, align 4, !tbaa !21 ; 2 uses
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.by, align 4, !tbaa !21
  %i.ch = mul nsw i32 %i.cf, %i.ce
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ci ; 2 uses
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !26
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv146
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !25
  %i.cn = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.cj, ptr noundef nonnull %.1117, ptr noundef %i.cm) #5 ; 0 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.bu ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = or i32 %i.cp, %i.bw
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !7
  %.pre152.a = load i32, ptr %1, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cr = phi i32 [ %i.bz, %bb.g ], [ %.pre152.a, %bb.h ] ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %.1117, i64 %i.cs ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.bq
  br i1 %i.cu, label %bb.g, label %._crit_edge120

._crit_edge120:                                   ; preds = %bb.i, %._crit_edge
  tail call void (ptr, ptr, ...) @mark_irredundant(ptr noundef %i.v, ptr noundef %i.bk) #5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !23 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !21
  %i.cz = load i32, ptr %i.v, align 8, !tbaa !24  ; 2 uses
  %i.da = mul nsw i32 %i.cz, %i.cy                ; 2 uses
  %i.db = sext i32 %i.da to i64
  %.idx143 = shl nsw i64 %i.db, 2
  %i.dc = getelementptr inbounds i8, ptr %i.cw, i64 %.idx143
  %i.dd = icmp sgt i32 %i.da, 0
  br i1 %i.dd, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %._crit_edge120
  %i.de = and i32 %.0102127, 31
  %i.df = shl nuw i32 1, %i.de
  %i.dg = xor i32 %i.df, -1
  %i.dh = ashr i32 %.0102127, 5
  %i.di = sext i32 %i.dh to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph124, %bb.o
  %i.dj = phi i32 [ %i.cz, %.lr.ph124 ], [ %i.ec, %bb.o ]
  %indvars.iv = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.098121 = phi ptr [ %i.cw, %.lr.ph124 ], [ %i.ee, %bb.o ] ; 2 uses
  %i.dk = load i32, ptr %.098121, align 4, !tbaa !7
  %i.dl = and i32 %i.dk, 8192
  %.not111 = icmp eq i32 %i.dl, 0
  br i1 %.not111, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !25 ; 4 uses
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !15
  %i.dp = add nsw i32 %i.do, -1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp eq i64 %indvars.iv146, %i.dq
  br i1 %i.dr, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !26
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv146
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !25
  %i.dv = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.du, ptr noundef %i.dn) #5
  %.not112 = icmp eq i32 %i.dv, 0
  br i1 %.not112, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dw = getelementptr [4 x i8], ptr %i.dn, i64 %i.di
  %i.dx = getelementptr i8, ptr %i.dw, i64 4      ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !7
  %i.dz = and i32 %i.dy, %i.dg
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ea = load i32, ptr %i.dn, align 4, !tbaa !7
  %i.eb = and i32 %i.ea, -32769
  store i32 %i.eb, ptr %i.dn, align 4, !tbaa !7
  %.pre153 = load i32, ptr %i.v, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ec = phi i32 [ %.pre153, %bb.n ], [ %i.dj, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %.098121, i64 %i.ed ; 2 uses
  %i.ef = icmp ult ptr %i.ee, %i.dc
  br i1 %i.ef, label %bb.j, label %._crit_edge125

._crit_edge125:                                   ; preds = %bb.o, %._crit_edge120
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.v) #5
  tail call void (ptr, ...) @sf_free(ptr noundef %i.bk) #5
  %.not110 = icmp eq ptr %i.s, null
  br i1 %.not110, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge125
  tail call void @free(ptr noundef nonnull %i.s) #5
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge125, %bb.p
  %i.eg = add nsw i32 %.0102127, 1
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv146
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !7
  %.not109.not = icmp slt i32 %.0102127, %i.ej
  br i1 %.not109.not, label %.lr.ph129, label %.loopexit115.loopexit

.loopexit115.loopexit:                            ; preds = %bb.q
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !16
  %.pre154 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !15
  br label %.loopexit115

.loopexit115:                                     ; preds = %.loopexit115.loopexit, %bb.c, %bb.b
  %i.ek = phi i32 [ %.pre154, %.loopexit115.loopexit ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %3 = phi ptr [ %.pre, %.loopexit115.loopexit ], [ %2, %bb.c ], [ %2, %bb.b ]
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next147, %i.el
  br i1 %i.em, label %bb.b, label %._crit_edge134

._crit_edge134:                                   ; preds = %.loopexit115, %bb.a
  %i.en = tail call ptr (ptr, ...) @sf_active(ptr noundef %0) #5 ; 0 uses
  %i.eo = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !15 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph140, label %._crit_edge141

.lr.ph140:                                        ; preds = %._crit_edge134
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre158 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph140, %.loopexit
  %i.et = phi i32 [ %i.eo, %.lr.ph140 ], [ %i.fr, %.loopexit ] ; 2 uses
  %4 = phi ptr [ %.pre158, %.lr.ph140 ], [ %5, %.loopexit ] ; 3 uses
  %indvars.iv149 = phi i64 [ 0, %.lr.ph140 ], [ %indvars.iv.next150, %.loopexit ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv149
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !7
  %.not105 = icmp eq i32 %i.ev, 0
  br i1 %.not105, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !23 ; 2 uses
  %i.ex = load i32, ptr %i.er, align 4, !tbaa !21
  %i.ey = load i32, ptr %0, align 8, !tbaa !24
  %i.ez = mul nsw i32 %i.ey, %i.ex                ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %.idx144 = shl nsw i64 %i.fa, 2
  %i.fb = getelementptr inbounds i8, ptr %i.ew, i64 %.idx144
  %i.fc = icmp sgt i32 %i.ez, 0
  br i1 %i.fc, label %.lr.ph137, label %.loopexit

.lr.ph137:                                        ; preds = %bb.s, %bb.v
  %.2135 = phi ptr [ %i.fp, %bb.v ], [ %i.ew, %bb.s ] ; 5 uses
  %i.fd = load i32, ptr %.2135, align 4, !tbaa !7
  %i.fe = and i32 %i.fd, 8192
  %.not106 = icmp eq i32 %i.fe, 0
  br i1 %.not106, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph137
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !26
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv149
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !25
  %i.fi = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef nonnull %.2135, ptr noundef %i.fh) #5
  %.not107 = icmp eq i32 %i.fi, 0
  br i1 %.not107, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fj = load i32, ptr %.2135, align 4, !tbaa !7
  %i.fk = and i32 %i.fj, -8193
  store i32 %i.fk, ptr %.2135, align 4, !tbaa !7
  %i.fl = load i32, ptr %i.es, align 8, !tbaa !27
  %i.fm = add nsw i32 %i.fl, -1
  store i32 %i.fm, ptr %i.es, align 8, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph137, %bb.u, %bb.t
  %i.fn = load i32, ptr %0, align 8, !tbaa !24
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %.2135, i64 %i.fo ; 2 uses
  %i.fq = icmp ult ptr %i.fp, %i.fb
  br i1 %i.fq, label %.lr.ph137, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.v
  %.pre157 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !16
  %.pre155 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.s, %bb.r
  %i.fr = phi i32 [ %.pre155, %.loopexit.loopexit ], [ %i.et, %bb.s ], [ %i.et, %bb.r ] ; 2 uses
  %5 = phi ptr [ %.pre157, %.loopexit.loopexit ], [ %4, %bb.s ], [ %4, %bb.r ]
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = icmp slt i64 %indvars.iv.next150, %i.fs
  br i1 %i.ft, label %bb.r, label %._crit_edge141

._crit_edge141:                                   ; preds = %.loopexit, %._crit_edge134
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !21
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !27
  %.not = icmp eq i32 %i.fv, %i.fx
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge141
  %i.fy = tail call ptr (ptr, ...) @sf_inactive(ptr noundef nonnull %0) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge141
  %.0103 = phi ptr [ %i.fy, %bb.w ], [ %0, %._crit_edge141 ]
  ret ptr %.0103
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @sf_new(...) local_unnamed_addr #2

declare ptr @set_diff(...) local_unnamed_addr #2

declare void @mark_irredundant(...) local_unnamed_addr #2

declare i32 @setp_implies(...) local_unnamed_addr #2

declare void @sf_free(...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @sf_active(...) local_unnamed_addr #2

declare i32 @setp_disjoint(...) local_unnamed_addr #2

declare ptr @sf_inactive(...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"cost_struct", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!9 = !{!8, !6, i64 16}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"any p2 pointer", !10, i64 0}
!13 = !{!"p2 int", !12, i64 0}
!14 = !{!"cube_struct", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !13, i64 72, !13, i64 80, !11, i64 88, !11, i64 96, !6, i64 104, !6, i64 108, !11, i64 112, !6, i64 120, !6, i64 124}
!15 = !{!14, !6, i64 4}
!16 = !{!14, !11, i64 112}
!17 = !{!14, !11, i64 16}
!18 = !{!14, !11, i64 24}
!19 = !{!"p1 _ZTS10set_family", !10, i64 0}
!20 = !{!"set_family", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !11, i64 24, !19, i64 32}
!21 = !{!20, !6, i64 12}
!22 = !{!14, !6, i64 0}
!23 = !{!20, !11, i64 24}
!24 = !{!20, !6, i64 0}
!25 = !{!11, !11, i64 0}
!26 = !{!14, !13, i64 72}
!27 = !{!20, !6, i64 16}
end_hunk_0
