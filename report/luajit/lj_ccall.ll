Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_ccall?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CCallState = type { ptr, i32, i8, i8, i8, i8, [8 x %union.FPRArg], [6 x i64], [31 x i64], [8 x i8] }
%union.FPRArg = type { [2 x double] }
%union.TValue = type { i64 }

; Function Attrs: nounwind uwtable
define hidden i32 @lj_ccall_ctid_vararg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.b = ashr i64 %i.a, 47                        ; 2 uses
  %i.c = icmp ult i64 %i.b, -13
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i64 %i.b, label %bb.k [
    i64 -11, label %bb.c
    i64 -5, label %bb.l
    i64 -2, label %bb.j
    i64 -3, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %i.a, 140737488355327
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.g = load i16, ptr %i.f, align 2, !tbaa !10   ; 2 uses
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.j = zext i16 %i.g to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !25   ; 4 uses
  %i.m = and i32 %i.l, -67108864
  %i.n = icmp eq i32 %i.m, 805306368
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.l, 65535
  %i.p = or disjoint i32 %i.o, 537067520
  %i.q = tail call i32 @lj_ctype_intern(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef 8) #6
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.r = lshr i32 %i.l, 28
  switch i32 %i.r, label %bb.g [
    i32 1, label %bb.f
    i32 6, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.s = or disjoint i32 %i.h, 537067520
  %i.t = tail call i32 @lj_ctype_intern(ptr noundef nonnull %0, i32 noundef %i.s, i32 noundef 8) #6
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.u = and i32 %i.l, -201326592
  %i.v = icmp eq i32 %i.u, 67108864
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26
  %i.y = icmp eq i32 %i.x, 4
  br i1 %i.y, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.l

bb.j:                                             ; preds = %bb.b, %bb.b
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.i, %bb.h, %bb.a, %bb.k, %bb.j
  %.1 = phi i32 [ 19, %bb.k ], [ 16, %bb.a ], [ 16, %bb.h ], [ 3, %bb.j ], [ %i.q, %bb.d ], [ %i.t, %bb.f ], [ %i.h, %bb.i ], [ 21, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden i32 @lj_ctype_intern(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @lj_ccall_func(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  %i.c = alloca [2 x i64], align 16               ; 9 uses
  %i.d = alloca [2 x i32], align 4                ; 5 uses
  %i.e = alloca [2 x i32], align 4                ; 8 uses
  %2 = alloca %struct.CCallState, align 16        ; 19 uses
  %3 = alloca %union.TValue, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 392
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47
  %i.k = inttoptr i64 %i.j to ptr                 ; 15 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %0, ptr %i.l, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.n = load i16, ptr %i.m, align 2, !tbaa !50
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !20   ; 3 uses
  %i.p = zext i16 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  %.0.i = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.pn ; 3 uses
  %i.q = load i32, ptr %.0.i, align 8, !tbaa !25  ; 5 uses
  %i.r = icmp slt i32 %i.q, -1879048192
  %i.s = and i32 %i.q, 65535
  %i.t = zext nneg i32 %i.s to i64
  br i1 %i.r, label %bb.b, label %ctype_raw.exit, !llvm.loop !30

ctype_raw.exit:                                   ; preds = %bb.b
  %.mask = and i32 %i.q, -268435456
  switch i32 %.mask, label %bb.cb [
    i32 536870912, label %bb.c
    i32 1610612736, label %.thread
  ]

bb.c:                                             ; preds = %ctype_raw.exit, %bb.c
  %i.u = phi i32 [ %i.y, %bb.c ], [ %i.q, %ctype_raw.exit ]
  %i.v = and i32 %i.u, 65535                      ; 3 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.w ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !25   ; 5 uses
  %i.z = icmp slt i32 %i.y, -1879048192
  br i1 %i.z, label %bb.c, label %ctype_rawchild.exit, !llvm.loop !0

ctype_rawchild.exit:                              ; preds = %bb.c
  %.mask32 = and i32 %i.y, -268435456
  %i.aa = icmp eq i32 %.mask32, 1610612736
  br i1 %i.aa, label %bb.d, label %bb.cb

.thread:                                          ; preds = %ctype_raw.exit
  %i.ab = trunc nuw nsw i64 %.pn to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.f

bb.d:                                             ; preds = %ctype_rawchild.exit
  %4 = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = icmp eq i32 %5, 4
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.ag = zext i32 %i.af to i64
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %cdata_getptr.exit

bb.f:                                             ; preds = %.thread, %bb.d
  %i.ai = phi i32 [ %i.q, %.thread ], [ %i.y, %bb.d ]
  %i.aj = phi ptr [ %i.ac, %.thread ], [ %i.ad, %bb.d ]
  %i.ak = phi i32 [ %i.ab, %.thread ], [ %i.v, %bb.d ]
  %.0304550 = phi ptr [ %.0.i, %.thread ], [ %i.x, %bb.d ]
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !51
  br label %cdata_getptr.exit

cdata_getptr.exit:                                ; preds = %bb.e, %bb.f
  %i.am = phi i32 [ %i.y, %bb.e ], [ %i.ai, %bb.f ] ; 2 uses
  %i.an = phi i32 [ %i.v, %bb.e ], [ %i.ak, %bb.f ]
  %.0304549 = phi ptr [ %i.x, %bb.e ], [ %.0304550, %bb.f ] ; 2 uses
  %.0.i35 = phi ptr [ %i.ah, %bb.e ], [ %i.al, %bb.f ]
  store ptr %.0.i35, ptr %2, align 16, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.aq, i8 0, i64 176, i1 false)
  %.pre.i = load i32, ptr %.0304549, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %cdata_getptr.exit
  %i.ar = phi i32 [ %.pre.i, %cdata_getptr.exit ], [ %i.av, %bb.g ]
  %i.as = and i32 %i.ar, 65535
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.at ; 5 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !25 ; 5 uses
  %i.aw = icmp slt i32 %i.av, -1879048192
  br i1 %i.aw, label %bb.g, label %ctype_rawchild.exit.i, !llvm.loop !0

ctype_rawchild.exit.i:                            ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 7 uses
  %i.ay = and i32 %i.av, -134217728
  %i.az = icmp eq i32 %i.ay, 939524096
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %ctype_rawchild.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !26
  switch i32 %i.bb, label %.loopexit.i [
    i32 8, label %bb.o
    i32 16, label %bb.o
  ]

bb.i:                                             ; preds = %ctype_rawchild.exit.i
  %i.bc = and i32 %i.av, -201326592
  %i.bd = icmp eq i32 %i.bc, 872415232
  %.mask.i = and i32 %i.av, -268435456
  %i.be = icmp eq i32 %.mask.i, 268435456
  %or.cond213.i = or i1 %i.bd, %i.be
  br i1 %or.cond213.i, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !26
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add nuw nsw i64 %i.bh, 16
  %i.bj = tail call ptr @lj_mem_newgco(ptr noundef nonnull %0, i64 noundef %i.bi) #6 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  store i8 10, ptr %i.bk, align 1, !tbaa !55
  %i.bl = trunc i32 %i.am to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !54 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.ao, align 8, !tbaa !54
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = or i64 %i.bq, -1548112371908608
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !10
  %i.bs = load i32, ptr %i.au, align 8, !tbaa !25
  %.mask202.i = and i32 %i.bs, -268435456
  %i.bt = icmp eq i32 %.mask202.i, 268435456
  br i1 %i.bt, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.bu, align 4, !tbaa !28
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.bv = call fastcc i32 @ccall_classify_struct(ptr noundef nonnull %i.k, ptr noundef nonnull %i.au, ptr noundef %i.d, i32 noundef 0)
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = ptrtoint ptr %i.bn to i64
  store i64 %i.bw, ptr %i.ax, align 16, !tbaa !56
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i = phi i8 [ 1, %bb.l ], [ 0, %bb.k ]
  %.0185.i = phi i32 [ 1, %bb.l ], [ 0, %bb.k ]
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %.sink.i, ptr %i.bx, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 0, ptr %i.by, align 1, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.i, %bb.h, %bb.h
  %.2187.i = phi i32 [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.i ], [ %.0185.i, %bb.m ], [ 0, %bb.n ]
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.pn246.i = phi ptr [ %.0304549, %bb.o ], [ %i.cb, %bb.q ]
  %.0165.in.in.i = getelementptr inbounds nuw i8, ptr %.pn246.i, i64 8
  %.0165.in.i = load i16, ptr %.0165.in.in.i, align 8, !tbaa !29 ; 3 uses
  %.not203.i = icmp eq i16 %.0165.in.i, 0
  br i1 %.not203.i, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.ca = zext i16 %.0165.in.i to i64
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !25
  %i.cd = icmp slt i32 %i.cc, -1879048192
  br i1 %i.cd, label %bb.p, label %.thread.i

.thread.i:                                        ; preds = %bb.q, %bb.p
  %.0165.le.i = zext i16 %.0165.in.i to i32       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !58
  %.0159259.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.cg = icmp ult ptr %.0159259.i, %i.ap
  br i1 %i.cg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.thread.i
  %i.ch = and i32 %i.am, 8388608
  %.not207.i = icmp eq i32 %i.ch, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 15 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.bi, %.lr.ph.i
  %.0159268.i = phi ptr [ %.0159259.i, %.lr.ph.i ], [ %.0159.i, %bb.bi ] ; 4 uses
  %.3168267.i = phi i32 [ %.0165.le.i, %.lr.ph.i ], [ %.4169.i, %bb.bi ] ; 2 uses
  %.0174266.i = phi i32 [ 0, %.lr.ph.i ], [ %.6.i, %bb.bi ] ; 5 uses
  %.0179262.i = phi i32 [ 1, %.lr.ph.i ], [ %i.hz, %bb.bi ] ; 3 uses
  %.0180261.i = phi i32 [ 0, %.lr.ph.i ], [ %.4184.i, %bb.bi ] ; 4 uses
  %.3188260.i = phi i32 [ %.2187.i, %.lr.ph.i ], [ %.7.i, %bb.bi ] ; 5 uses
  %.not206.i = icmp eq i32 %.3168267.i, 0
  br i1 %.not206.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.k, align 8, !tbaa !20  ; 2 uses
  %i.cp = zext nneg i32 %.3168267.i to i64
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !29
  %i.ct = zext i16 %i.cs to i32
  %i.cu = load i32, ptr %i.cq, align 8, !tbaa !25
  %i.cv = and i32 %i.cu, 65535
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  br i1 %.not207.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @lj_err_caller(ptr noundef %0, i32 noundef 3585) #7
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cw = call i32 @lj_ccall_ctid_vararg(ptr noundef nonnull %i.k, ptr noundef nonnull %.0159268.i)
  %.pre275.i = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cx = phi ptr [ %i.co, %bb.s ], [ %.pre275.i, %bb.v ]
  %.0170.i = phi i32 [ %i.cv, %bb.s ], [ %i.cw, %bb.v ]
  %.4169.i = phi i32 [ %i.ct, %bb.s ], [ 0, %bb.v ] ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.pn247.in.i = phi i32 [ %.0170.i, %bb.w ], [ %i.da, %bb.x ]
  %.pn247.i = zext i32 %.pn247.in.i to i64
  %.0.i.i = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.pn247.i ; 8 uses
  %i.cy = load i32, ptr %.0.i.i, align 8, !tbaa !25 ; 8 uses
  %i.cz = icmp slt i32 %i.cy, -1879048192
  %i.da = and i32 %i.cy, 65535
  br i1 %i.cz, label %bb.x, label %ctype_raw.exit.i, !llvm.loop !30

ctype_raw.exit.i:                                 ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !26 ; 6 uses
  %i.dd = lshr i32 %i.cy, 28                      ; 2 uses
end_hunk_0
