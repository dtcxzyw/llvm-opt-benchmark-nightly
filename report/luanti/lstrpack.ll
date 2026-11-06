Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/lstrpack?download=true
inline.NumInlined: 22
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Buffer = type { ptr, i32, ptr, [8192 x i8] }
%struct.Header = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"packsize\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"unsigned overflow\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"string longer than given size\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"string length does not fit in given size\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"string contains zeros\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"invalid next option for option 'X'\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"format asks for alignment not power of 2\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"missing size for format option 'c'\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"invalid format option '%c'\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"integral size (%d) out of limits [1,%d]\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Integer size too large: %d, max is %d\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"data string too short\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"too many results\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"unfinished string for format 'z'\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"%d-byte integer does not fit into Lua Integer\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"variable-length format\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"format result too large\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @setup_lstrpack(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str) #7
  %i.a = tail call i32 @lua_gettop(ptr noundef %0) #7 ; 3 uses
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @str_pack, i32 noundef 0) #7
  tail call void @lua_setfield(ptr noundef %0, i32 noundef %i.a, ptr noundef nonnull @.str.1) #7
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @str_unpack, i32 noundef 0) #7
  tail call void @lua_setfield(ptr noundef %0, i32 noundef %i.a, ptr noundef nonnull @.str.2) #7
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @str_packsize, i32 noundef 0) #7
  tail call void @lua_setfield(ptr noundef %0, i32 noundef %i.a, ptr noundef nonnull @.str.3) #7
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #7
  ret void
}

declare void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #1

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_pack(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.luaL_Buffer, align 8        ; 42 uses
  %2 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.g = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !12
  store ptr %0, ptr %2, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  store i32 1, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.i, align 4, !tbaa !17
  tail call void @lua_pushnil(ptr noundef %0) #7
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %1) #7
  %i.j = load i8, ptr %i.g, align 1, !tbaa !18
  %.not141 = icmp eq i8 %i.j, 0
  br i1 %.not141, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8216 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph145, %packint.exit
  %.0143 = phi i32 [ 1, %.lr.ph145 ], [ %.1, %packint.exit ] ; 4 uses
  %.054142 = phi i64 [ 0, %.lr.ph145 ], [ %.155, %packint.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.l = call fastcc i32 @getdetails(ptr noundef %2, i64 noundef %.054142, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.m = load i32, ptr %i.c, align 4, !tbaa !19   ; 3 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !19   ; 42 uses
  %i.o = add nsw i32 %i.n, %i.m
  %i.p = sext i32 %i.o to i64
  %i.q = add i64 %.054142, %i.p                   ; 13 uses
  %i.r = icmp sgt i32 %i.m, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.in = phi i32 [ %i.s, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %i.s = add nsw i32 %.in, -1
  %i.t = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.k
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.v = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.w = phi ptr [ %.pre, %bb.c ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.w, align 1, !tbaa !18
  %i.y = icmp sgt i32 %.in, 1
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.z = add nsw i32 %.0143, 1                    ; 23 uses
  switch i32 %i.l, label %default.unreachable200 [
    i32 0, label %bb.e
    i32 1, label %bb.k
    i32 2, label %copywithendian.exit.loopexit
    i32 3, label %copywithendian.exit97
    i32 4, label %copywithendian.exit104
    i32 5, label %bb.q
    i32 6, label %bb.v
    i32 7, label %bb.ab
    i32 8, label %bb.ag
    i32 9, label %packint.exit
    i32 10, label %packint.exit
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.aa = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %i.z) #7 ; 9 uses
  %i.ab = icmp slt i32 %i.n, 8
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = shl nsw i32 %i.n, 3
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw i64 1, %i.ae                    ; 2 uses
  %i.ag = sub nsw i64 0, %i.af
  %.not62 = icmp sge i64 %i.aa, %i.ag
  %i.ah = icmp slt i64 %i.aa, %i.af
  %or.cond = and i1 %.not62, %i.ah
  br i1 %or.cond, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.4) #7 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f
  %i.aj = load i32, ptr %i.h, align 8, !tbaa !16
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.h, align 8, !tbaa !16
  %i.al = icmp samesign ugt i32 %i.n, 8192
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.n, i32 noundef 8192) #7 ; 0 uses
  br label %packint.exit

bb.j:                                             ; preds = %.thread, %bb.h
  %i.an = phi i32 [ %i.aj, %.thread ], [ %i.ak, %bb.h ]
  %i.ao = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 12 uses
  %i.ap = trunc i64 %i.aa to i8
  %.not.i = icmp eq i32 %i.an, 0                  ; 2 uses
  %i.aq = add i32 %i.n, -1                        ; 2 uses
  %i.ar = select i1 %.not.i, i32 %i.aq, i32 0
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  store i8 %i.ap, ptr %i.at, align 1, !tbaa !18
  %i.au = icmp sgt i32 %i.n, 1
  br i1 %i.au, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.j
  br i1 %.not.i, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  %i.av = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter227 = and i64 %i.av, 3                 ; 3 uses
  %i.aw = add nsw i32 %i.n, -2
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.preheader.i.new

.lr.ph.split.preheader.i.new:                     ; preds = %.lr.ph.split.preheader.i
  %unroll_iter231 = and i64 %i.av, -4
  br label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %i.ay = zext nneg i32 %i.aq to i64              ; 6 uses
  %wide.trip.count42.i = zext nneg i32 %i.n to i64
  %i.az = add nsw i64 %wide.trip.count42.i, -1    ; 2 uses
  %xtraiter233 = and i64 %i.az, 3                 ; 3 uses
  %i.ba = add nsw i32 %i.n, -2
  %i.bb = icmp ult i32 %i.ba, 3
  br i1 %i.bb, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.preheader.i.new

.lr.ph.split.us.preheader.i.new:                  ; preds = %.lr.ph.split.us.preheader.i
  %unroll_iter237 = and i64 %i.az, -4
  %invariant.gep246 = getelementptr i8, ptr %i.ao, i64 %i.ay
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i.new
  %indvars.iv39.i = phi i64 [ 1, %.lr.ph.split.us.preheader.i.new ], [ %indvars.iv.next40.i.3, %.lr.ph.split.us.i ] ; 5 uses
  %.03033.us.i = phi i64 [ %i.aa, %.lr.ph.split.us.preheader.i.new ], [ %i.bm, %.lr.ph.split.us.i ] ; 4 uses
  %niter238 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.new ], [ %niter238.next.3, %.lr.ph.split.us.i ]
  %i.bc = lshr i64 %.03033.us.i, 8
  %i.bd = trunc i64 %i.bc to i8
  %i.be = sub nuw nsw i64 %i.ay, %indvars.iv39.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.be
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !18
  %indvars.iv.next40.i.neg = xor i64 %indvars.iv39.i, -1
  %i.bg = lshr i64 %.03033.us.i, 16
  %i.bh = trunc i64 %i.bg to i8
  %gep247 = getelementptr i8, ptr %invariant.gep246, i64 %indvars.iv.next40.i.neg
  store i8 %i.bh, ptr %gep247, align 1, !tbaa !18
  %indvars.iv.next40.i.1 = add nuw nsw i64 %indvars.iv39.i, 2
  %i.bi = lshr i64 %.03033.us.i, 24
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = sub nuw nsw i64 %i.ay, %indvars.iv.next40.i.1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !18
  %indvars.iv.next40.i.2 = add nuw nsw i64 %indvars.iv39.i, 3
  %i.bm = lshr i64 %.03033.us.i, 32               ; 3 uses
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = sub nuw nsw i64 %i.ay, %indvars.iv.next40.i.2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !18
  %indvars.iv.next40.i.3 = add nuw nsw i64 %indvars.iv39.i, 4 ; 2 uses
  %niter238.next.3 = add nuw i64 %niter238, 4     ; 2 uses
  %niter238.ncmp.3 = icmp eq i64 %niter238.next.3, %unroll_iter237
  br i1 %niter238.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !24

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.split.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.split.i ] ; 5 uses
  %.03033.i = phi i64 [ %i.aa, %.lr.ph.split.preheader.i.new ], [ %i.cb, %.lr.ph.split.i ] ; 4 uses
  %niter232 = phi i64 [ 0, %.lr.ph.split.preheader.i.new ], [ %niter232.next.3, %.lr.ph.split.i ]
  %i.bq = lshr i64 %.03033.i, 8
  %i.br = trunc i64 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !18
  %i.bt = lshr i64 %.03033.i, 16
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.bu, ptr %i.bw, align 1, !tbaa !18
  %i.bx = lshr i64 %.03033.i, 24
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %i.by, ptr %i.ca, align 1, !tbaa !18
  %i.cb = lshr i64 %.03033.i, 32                  ; 3 uses
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !18
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter232.next.3 = add nuw i64 %niter232, 4     ; 2 uses
  %niter232.ncmp.3 = icmp eq i64 %niter232.next.3, %unroll_iter231
  br i1 %niter232.ncmp.3, label %._crit_edge.thread52.i.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !24

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.split.us.i
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod235.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.split.us.preheader.i
  %indvars.iv39.i.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next40.i.3, %._crit_edge.i.unr-lcssa ]
  %.03033.us.i.epil.init = phi i64 [ %i.aa, %.lr.ph.split.us.preheader.i ], [ %i.bm, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter233, 0
  call void @llvm.assume(i1 %lcmp.mod236)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv39.i.epil = phi i64 [ %indvars.iv39.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %indvars.iv.next40.i.epil, %.lr.ph.split.us.i.epil ] ; 2 uses
  %.03033.us.i.epil = phi i64 [ %.03033.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %i.cf, %.lr.ph.split.us.i.epil ]
  %epil.iter234 = phi i64 [ 0, %.lr.ph.split.us.i.epil.preheader ], [ %epil.iter234.next, %.lr.ph.split.us.i.epil ]
  %i.cf = lshr i64 %.03033.us.i.epil, 8           ; 2 uses
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = sub nuw nsw i64 %i.ay, %indvars.iv39.i.epil
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ch
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !18
  %indvars.iv.next40.i.epil = add nuw nsw i64 %indvars.iv39.i.epil, 1
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil, !llvm.loop !25

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.epil, %._crit_edge.i.unr-lcssa
  %i.cj = icmp slt i64 %i.aa, 0
  %i.ck = icmp samesign ugt i32 %i.n, 8
  %or.cond.i = and i1 %i.ck, %i.cj
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

._crit_edge.thread52.i.unr-lcssa:                 ; preds = %.lr.ph.split.i
  %lcmp.mod229.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod229.not, label %._crit_edge.thread52.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.thread52.i.unr-lcssa, %.lr.ph.split.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.thread52.i.unr-lcssa ]
  %.03033.i.epil.init = phi i64 [ %i.aa, %.lr.ph.split.preheader.i ], [ %i.cb, %._crit_edge.thread52.i.unr-lcssa ]
  %lcmp.mod230 = icmp ne i64 %xtraiter227, 0
  call void @llvm.assume(i1 %lcmp.mod230)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.split.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.split.i.epil ] ; 2 uses
  %.03033.i.epil = phi i64 [ %.03033.i.epil.init, %.lr.ph.split.i.epil.preheader ], [ %i.cl, %.lr.ph.split.i.epil ]
  %epil.iter228 = phi i64 [ 0, %.lr.ph.split.i.epil.preheader ], [ %epil.iter228.next, %.lr.ph.split.i.epil ]
  %i.cl = lshr i64 %.03033.i.epil, 8              ; 2 uses
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i.epil
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !18
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter228.next = add i64 %epil.iter228, 1   ; 2 uses
  %epil.iter228.cmp.not = icmp eq i64 %epil.iter228.next, %xtraiter227
  br i1 %epil.iter228.cmp.not, label %._crit_edge.thread52.i, label %.lr.ph.split.i.epil, !llvm.loop !26

._crit_edge.thread52.i:                           ; preds = %.lr.ph.split.i.epil, %._crit_edge.thread52.i.unr-lcssa
  %i.co = icmp slt i64 %i.aa, 0
  %i.cp = icmp samesign ugt i32 %i.n, 8
end_hunk_0
begin_hunk_1_@str_pack:bb.a
  %.sink.i = phi i64 [ %i.ct, %.preheader.i ], [ 8, %._crit_edge.thread52.i ]
  %scevgep.i = getelementptr i8, ptr %i.ao, i64 %.sink.i
  %i.cu = add nsw i32 %i.n, -8
  %i.cv = zext nneg i32 %i.cu to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 -1, i64 %i.cv, i1 false), !tbaa !18
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.sink.split.i, %._crit_edge.thread52.i, %._crit_edge.i, %bb.j
  %i.cw = load ptr, ptr %1, align 8, !tbaa !34
  %i.cx = sext i32 %i.n to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  store ptr %i.cy, ptr %1, align 8, !tbaa !34
  br label %packint.exit

bb.k:                                             ; preds = %._crit_edge
  %i.cz = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %i.z) #7 ; 6 uses
  %i.da = icmp slt i32 %i.n, 8
  br i1 %i.da, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.db = shl nsw i32 %i.n, 3
  %i.dc = zext nneg i32 %i.db to i64
  %.highbits61 = lshr i64 %i.cz, %i.dc
  %i.dd = icmp eq i64 %.highbits61, 0
  br i1 %i.dd, label %.thread133, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.de = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.5) #7 ; 0 uses
  br label %.thread133

.thread133:                                       ; preds = %bb.l, %bb.m
  %i.df = load i32, ptr %i.h, align 8, !tbaa !16
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.dg = load i32, ptr %i.h, align 8, !tbaa !16
  %i.dh = icmp samesign ugt i32 %i.n, 8192
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.di = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.n, i32 noundef 8192) #7 ; 0 uses
  br label %packint.exit

bb.p:                                             ; preds = %.thread133, %bb.n
  %i.dj = phi i32 [ %i.df, %.thread133 ], [ %i.dg, %bb.n ]
  %i.dk = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 11 uses
  %i.dl = trunc i64 %i.cz to i8
  %.not.i63 = icmp eq i32 %i.dj, 0                ; 2 uses
  %i.dm = add i32 %i.n, -1                        ; 2 uses
  %i.dn = select i1 %.not.i63, i32 %i.dm, i32 0
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 %i.do
  store i8 %i.dl, ptr %i.dp, align 1, !tbaa !18
  %i.dq = icmp sgt i32 %i.n, 1
  br i1 %i.dq, label %.lr.ph.i65, label %.loopexit.i64

.lr.ph.i65:                                       ; preds = %bb.p
  br i1 %.not.i63, label %.lr.ph.split.us.preheader.i78, label %.lr.ph.split.preheader.i66

.lr.ph.split.preheader.i66:                       ; preds = %.lr.ph.i65
  %wide.trip.count.i67 = zext nneg i32 %i.n to i64
  %i.dr = add nsw i64 %wide.trip.count.i67, -1    ; 2 uses
  %xtraiter215 = and i64 %i.dr, 3                 ; 3 uses
  %i.ds = add nsw i32 %i.n, -2
  %i.dt = icmp ult i32 %i.ds, 3
  br i1 %i.dt, label %.lr.ph.split.i68.epil.preheader, label %.lr.ph.split.preheader.i66.new

.lr.ph.split.preheader.i66.new:                   ; preds = %.lr.ph.split.preheader.i66
  %unroll_iter219 = and i64 %i.dr, -4
  br label %.lr.ph.split.i68

.lr.ph.split.us.preheader.i78:                    ; preds = %.lr.ph.i65
  %i.du = zext nneg i32 %i.dm to i64              ; 5 uses
  %wide.trip.count42.i79 = zext nneg i32 %i.n to i64
  %i.dv = add nsw i64 %wide.trip.count42.i79, -1  ; 2 uses
  %xtraiter221 = and i64 %i.dv, 3                 ; 3 uses
  %i.dw = add nsw i32 %i.n, -2
  %i.dx = icmp ult i32 %i.dw, 3
  br i1 %i.dx, label %.lr.ph.split.us.i80.epil.preheader, label %.lr.ph.split.us.preheader.i78.new

.lr.ph.split.us.preheader.i78.new:                ; preds = %.lr.ph.split.us.preheader.i78
  %unroll_iter225 = and i64 %i.dv, -4
  %invariant.gep244 = getelementptr i8, ptr %i.dk, i64 %i.du
  br label %.lr.ph.split.us.i80

.lr.ph.split.us.i80:                              ; preds = %.lr.ph.split.us.i80, %.lr.ph.split.us.preheader.i78.new
  %indvars.iv39.i81 = phi i64 [ 1, %.lr.ph.split.us.preheader.i78.new ], [ %indvars.iv.next40.i83.3, %.lr.ph.split.us.i80 ] ; 5 uses
  %.03033.us.i82 = phi i64 [ %i.cz, %.lr.ph.split.us.preheader.i78.new ], [ %i.ei, %.lr.ph.split.us.i80 ] ; 4 uses
  %niter226 = phi i64 [ 0, %.lr.ph.split.us.preheader.i78.new ], [ %niter226.next.3, %.lr.ph.split.us.i80 ]
  %i.dy = lshr i64 %.03033.us.i82, 8
  %i.dz = trunc i64 %i.dy to i8
  %i.ea = sub nuw nsw i64 %i.du, %indvars.iv39.i81
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ea
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !18
  %indvars.iv.next40.i83.neg = xor i64 %indvars.iv39.i81, -1
  %i.ec = lshr i64 %.03033.us.i82, 16
  %i.ed = trunc i64 %i.ec to i8
  %gep245 = getelementptr i8, ptr %invariant.gep244, i64 %indvars.iv.next40.i83.neg
  store i8 %i.ed, ptr %gep245, align 1, !tbaa !18
  %indvars.iv.next40.i83.1 = add nuw nsw i64 %indvars.iv39.i81, 2
  %i.ee = lshr i64 %.03033.us.i82, 24
  %i.ef = trunc i64 %i.ee to i8
  %i.eg = sub nuw nsw i64 %i.du, %indvars.iv.next40.i83.1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.eg
  store i8 %i.ef, ptr %i.eh, align 1, !tbaa !18
  %indvars.iv.next40.i83.2 = add nuw nsw i64 %indvars.iv39.i81, 3
  %i.ei = lshr i64 %.03033.us.i82, 32             ; 3 uses
  %i.ej = trunc i64 %i.ei to i8
  %i.ek = sub nuw nsw i64 %i.du, %indvars.iv.next40.i83.2
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ek
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !18
  %indvars.iv.next40.i83.3 = add nuw nsw i64 %indvars.iv39.i81, 4 ; 2 uses
  %niter226.next.3 = add nuw i64 %niter226, 4     ; 2 uses
  %niter226.ncmp.3 = icmp eq i64 %niter226.next.3, %unroll_iter225
  br i1 %niter226.ncmp.3, label %.loopexit.i64.loopexit.unr-lcssa, label %.lr.ph.split.us.i80, !llvm.loop !24

.lr.ph.split.i68:                                 ; preds = %.lr.ph.split.i68, %.lr.ph.split.preheader.i66.new
  %indvars.iv.i69 = phi i64 [ 1, %.lr.ph.split.preheader.i66.new ], [ %indvars.iv.next.i71.3, %.lr.ph.split.i68 ] ; 5 uses
  %.03033.i70 = phi i64 [ %i.cz, %.lr.ph.split.preheader.i66.new ], [ %i.ex, %.lr.ph.split.i68 ] ; 4 uses
  %niter220 = phi i64 [ 0, %.lr.ph.split.preheader.i66.new ], [ %niter220.next.3, %.lr.ph.split.i68 ]
  %i.em = lshr i64 %.03033.i70, 8
  %i.en = trunc i64 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i69
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !18
  %i.ep = lshr i64 %.03033.i70, 16
  %i.eq = trunc i64 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i69
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  store i8 %i.eq, ptr %i.es, align 1, !tbaa !18
  %i.et = lshr i64 %.03033.i70, 24
  %i.eu = trunc i64 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i69
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  store i8 %i.eu, ptr %i.ew, align 1, !tbaa !18
  %i.ex = lshr i64 %.03033.i70, 32                ; 3 uses
  %i.ey = trunc i64 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i69
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 3
  store i8 %i.ey, ptr %i.fa, align 1, !tbaa !18
  %indvars.iv.next.i71.3 = add nuw nsw i64 %indvars.iv.i69, 4 ; 2 uses
  %niter220.next.3 = add nuw i64 %niter220, 4     ; 2 uses
  %niter220.ncmp.3 = icmp eq i64 %niter220.next.3, %unroll_iter219
  br i1 %niter220.ncmp.3, label %.loopexit.i64.loopexit206.unr-lcssa, label %.lr.ph.split.i68, !llvm.loop !24

.loopexit.i64.loopexit.unr-lcssa:                 ; preds = %.lr.ph.split.us.i80
  %lcmp.mod223.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod223.not, label %.loopexit.i64, label %.lr.ph.split.us.i80.epil.preheader

.lr.ph.split.us.i80.epil.preheader:               ; preds = %.loopexit.i64.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i78
  %indvars.iv39.i81.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i78 ], [ %indvars.iv.next40.i83.3, %.loopexit.i64.loopexit.unr-lcssa ]
  %.03033.us.i82.epil.init = phi i64 [ %i.cz, %.lr.ph.split.us.preheader.i78 ], [ %i.ei, %.loopexit.i64.loopexit.unr-lcssa ]
  %lcmp.mod224 = icmp ne i64 %xtraiter221, 0
  call void @llvm.assume(i1 %lcmp.mod224)
  br label %.lr.ph.split.us.i80.epil

.lr.ph.split.us.i80.epil:                         ; preds = %.lr.ph.split.us.i80.epil, %.lr.ph.split.us.i80.epil.preheader
  %indvars.iv39.i81.epil = phi i64 [ %indvars.iv39.i81.epil.init, %.lr.ph.split.us.i80.epil.preheader ], [ %indvars.iv.next40.i83.epil, %.lr.ph.split.us.i80.epil ] ; 2 uses
  %.03033.us.i82.epil = phi i64 [ %.03033.us.i82.epil.init, %.lr.ph.split.us.i80.epil.preheader ], [ %i.fb, %.lr.ph.split.us.i80.epil ]
  %epil.iter222 = phi i64 [ 0, %.lr.ph.split.us.i80.epil.preheader ], [ %epil.iter222.next, %.lr.ph.split.us.i80.epil ]
  %i.fb = lshr i64 %.03033.us.i82.epil, 8         ; 2 uses
  %i.fc = trunc i64 %i.fb to i8
  %i.fd = sub nuw nsw i64 %i.du, %indvars.iv39.i81.epil
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fd
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !18
  %indvars.iv.next40.i83.epil = add nuw nsw i64 %indvars.iv39.i81.epil, 1
  %epil.iter222.next = add i64 %epil.iter222, 1   ; 2 uses
  %epil.iter222.cmp.not = icmp eq i64 %epil.iter222.next, %xtraiter221
  br i1 %epil.iter222.cmp.not, label %.loopexit.i64, label %.lr.ph.split.us.i80.epil, !llvm.loop !27

.loopexit.i64.loopexit206.unr-lcssa:              ; preds = %.lr.ph.split.i68
  %lcmp.mod217.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod217.not, label %.loopexit.i64, label %.lr.ph.split.i68.epil.preheader

.lr.ph.split.i68.epil.preheader:                  ; preds = %.loopexit.i64.loopexit206.unr-lcssa, %.lr.ph.split.preheader.i66
  %indvars.iv.i69.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i66 ], [ %indvars.iv.next.i71.3, %.loopexit.i64.loopexit206.unr-lcssa ]
  %.03033.i70.epil.init = phi i64 [ %i.cz, %.lr.ph.split.preheader.i66 ], [ %i.ex, %.loopexit.i64.loopexit206.unr-lcssa ]
  %lcmp.mod218 = icmp ne i64 %xtraiter215, 0
  call void @llvm.assume(i1 %lcmp.mod218)
  br label %.lr.ph.split.i68.epil

.lr.ph.split.i68.epil:                            ; preds = %.lr.ph.split.i68.epil, %.lr.ph.split.i68.epil.preheader
  %indvars.iv.i69.epil = phi i64 [ %indvars.iv.i69.epil.init, %.lr.ph.split.i68.epil.preheader ], [ %indvars.iv.next.i71.epil, %.lr.ph.split.i68.epil ] ; 2 uses
  %.03033.i70.epil = phi i64 [ %.03033.i70.epil.init, %.lr.ph.split.i68.epil.preheader ], [ %i.ff, %.lr.ph.split.i68.epil ]
  %epil.iter216 = phi i64 [ 0, %.lr.ph.split.i68.epil.preheader ], [ %epil.iter216.next, %.lr.ph.split.i68.epil ]
  %i.ff = lshr i64 %.03033.i70.epil, 8            ; 2 uses
  %i.fg = trunc i64 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i69.epil
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !18
  %indvars.iv.next.i71.epil = add nuw nsw i64 %indvars.iv.i69.epil, 1
  %epil.iter216.next = add i64 %epil.iter216, 1   ; 2 uses
  %epil.iter216.cmp.not = icmp eq i64 %epil.iter216.next, %xtraiter215
  br i1 %epil.iter216.cmp.not, label %.loopexit.i64, label %.lr.ph.split.i68.epil, !llvm.loop !28

.loopexit.i64:                                    ; preds = %.loopexit.i64.loopexit206.unr-lcssa, %.lr.ph.split.i68.epil, %.loopexit.i64.loopexit.unr-lcssa, %.lr.ph.split.us.i80.epil, %bb.p
  %i.fi = load ptr, ptr %1, align 8, !tbaa !34
  %i.fj = sext i32 %i.n to i64
  %i.fk = getelementptr inbounds i8, ptr %i.fi, i64 %i.fj
  store ptr %i.fk, ptr %1, align 8, !tbaa !34
  br label %packint.exit

copywithendian.exit.loopexit:                     ; preds = %._crit_edge
  %3 = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.z) #7
  %4 = fptrunc double %3 to float                 ; 2 uses
  %5 = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7
  %6 = load i32, ptr %i.h, align 8, !tbaa !16
  %7 = icmp eq i32 %6, 1
  %8 = bitcast float %4 to i32
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = bitcast float %4 to i32
  %storemerge206 = select i1 %7, i32 %10, i32 %9
  store i32 %storemerge206, ptr %5, align 1
  %11 = load ptr, ptr %1, align 8, !tbaa !34
  %12 = sext i32 %i.n to i64
  %13 = getelementptr inbounds i8, ptr %11, i64 %12
  store ptr %13, ptr %1, align 8, !tbaa !34
  br label %packint.exit

copywithendian.exit97:                            ; preds = %._crit_edge
  %14 = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.z) #7 ; 2 uses
  %15 = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7
  %16 = load i32, ptr %i.h, align 8, !tbaa !16
  %17 = icmp eq i32 %16, 1
  %18 = bitcast double %14 to i64
  %19 = call i64 @llvm.bswap.i64(i64 %18)
  %20 = bitcast double %14 to i64
  %storemerge205 = select i1 %17, i64 %20, i64 %19
  store i64 %storemerge205, ptr %15, align 1
  %i.fl = load ptr, ptr %1, align 8, !tbaa !34
  %i.fm = sext i32 %i.n to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %i.fm
  store ptr %i.fn, ptr %1, align 8, !tbaa !34
  br label %packint.exit

copywithendian.exit104:                           ; preds = %._crit_edge
  %21 = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.z) #7 ; 2 uses
  %22 = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7
  %23 = load i32, ptr %i.h, align 8, !tbaa !16
  %24 = icmp eq i32 %23, 1
  %25 = bitcast double %21 to i64
  %26 = call i64 @llvm.bswap.i64(i64 %25)
  %27 = bitcast double %21 to i64
  %storemerge = select i1 %24, i64 %27, i64 %26
  store i64 %storemerge, ptr %22, align 1
  %i.fo = load ptr, ptr %1, align 8, !tbaa !34
  %i.fp = sext i32 %i.n to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 %i.fp
  store ptr %i.fq, ptr %1, align 8, !tbaa !34
  br label %packint.exit

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.fr = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.d) #7
  %i.fs = load i64, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %i.ft = sext i32 %i.n to i64                    ; 3 uses
  %.not60 = icmp ugt i64 %i.fs, %i.ft
  br i1 %.not60, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fu = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.6) #7 ; 0 uses
  %.pre190 = load i64, ptr %i.d, align 8, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fv = phi i64 [ %.pre190, %bb.r ], [ %i.fs, %bb.q ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.fr, i64 noundef %i.fv) #7
  %i.fw = load i64, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %i.fx = add i64 %i.fw, 1
  store i64 %i.fx, ptr %i.d, align 8, !tbaa !22
  %i.fy = icmp ult i64 %i.fw, %i.ft
  br i1 %i.fy, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %bb.s, %bb.u
  %i.fz = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.ga = icmp ult ptr %i.fz, %i.k
  br i1 %i.ga, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph139
  %i.gb = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph139
  %i.gc = phi ptr [ %.pre191, %bb.t ], [ %i.fz, %.lr.ph139 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  store ptr %i.gd, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.gc, align 1, !tbaa !18
  %i.ge = load i64, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %i.gf = add i64 %i.ge, 1
  store i64 %i.gf, ptr %i.d, align 8, !tbaa !22
  %i.gg = icmp ult i64 %i.ge, %i.ft
  br i1 %i.gg, label %.lr.ph139, label %._crit_edge140, !llvm.loop !29

._crit_edge140:                                   ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %packint.exit

bb.v:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.gh = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.e) #7
  %i.gi = icmp sgt i32 %i.n, 7
  br i1 %i.gi, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gj = load i64, ptr %i.e, align 8, !tbaa !22
  %i.gk = shl nsw i32 %i.n, 3
  %i.gl = zext nneg i32 %i.gk to i64
  %.highbits = lshr i64 %i.gj, %i.gl
  %i.gm = icmp eq i64 %.highbits, 0
  br i1 %i.gm, label %.thread135, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gn = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread135

.thread135:                                       ; preds = %bb.x, %bb.w
  %i.go = load i32, ptr %i.h, align 8, !tbaa !16
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  %i.gp = load i32, ptr %i.h, align 8, !tbaa !16
  %i.gq = icmp samesign ugt i32 %i.n, 8192
  br i1 %i.gq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gr = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.n, i32 noundef 8192) #7 ; 0 uses
  br label %packint.exit130

bb.aa:                                            ; preds = %.thread135, %bb.y
  %i.gs = phi i32 [ %i.go, %.thread135 ], [ %i.gp, %bb.y ]
  %i.gt = load i64, ptr %i.e, align 8, !tbaa !22  ; 5 uses
  %i.gu = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 11 uses
  %i.gv = trunc i64 %i.gt to i8
  %.not.i105 = icmp eq i32 %i.gs, 0               ; 2 uses
  %i.gw = add i32 %i.n, -1                        ; 2 uses
  %i.gx = select i1 %.not.i105, i32 %i.gw, i32 0
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds i8, ptr %i.gu, i64 %i.gy
  store i8 %i.gv, ptr %i.gz, align 1, !tbaa !18
  %i.ha = icmp sgt i32 %i.n, 1
  br i1 %i.ha, label %.lr.ph.i107, label %.loopexit.i106

.lr.ph.i107:                                      ; preds = %bb.aa
  br i1 %.not.i105, label %.lr.ph.split.us.preheader.i120, label %.lr.ph.split.preheader.i108

.lr.ph.split.preheader.i108:                      ; preds = %.lr.ph.i107
  %wide.trip.count.i109 = zext nneg i32 %i.n to i64
  %i.hb = add nsw i64 %wide.trip.count.i109, -1   ; 2 uses
  %xtraiter = and i64 %i.hb, 3                    ; 3 uses
  %i.hc = add nsw i32 %i.n, -2
  %i.hd = icmp ult i32 %i.hc, 3
  br i1 %i.hd, label %.lr.ph.split.i110.epil.preheader, label %.lr.ph.split.preheader.i108.new

.lr.ph.split.preheader.i108.new:                  ; preds = %.lr.ph.split.preheader.i108
  %unroll_iter = and i64 %i.hb, -4
  br label %.lr.ph.split.i110

.lr.ph.split.us.preheader.i120:                   ; preds = %.lr.ph.i107
  %i.he = zext nneg i32 %i.gw to i64              ; 5 uses
  %wide.trip.count42.i121 = zext nneg i32 %i.n to i64
  %i.hf = add nsw i64 %wide.trip.count42.i121, -1 ; 2 uses
  %xtraiter209 = and i64 %i.hf, 3                 ; 3 uses
  %i.hg = add nsw i32 %i.n, -2
  %i.hh = icmp ult i32 %i.hg, 3
  br i1 %i.hh, label %.lr.ph.split.us.i122.epil.preheader, label %.lr.ph.split.us.preheader.i120.new

.lr.ph.split.us.preheader.i120.new:               ; preds = %.lr.ph.split.us.preheader.i120
  %unroll_iter213 = and i64 %i.hf, -4
  %invariant.gep = getelementptr i8, ptr %i.gu, i64 %i.he
  br label %.lr.ph.split.us.i122

.lr.ph.split.us.i122:                             ; preds = %.lr.ph.split.us.i122, %.lr.ph.split.us.preheader.i120.new
  %indvars.iv39.i123 = phi i64 [ 1, %.lr.ph.split.us.preheader.i120.new ], [ %indvars.iv.next40.i125.3, %.lr.ph.split.us.i122 ] ; 5 uses
  %.03033.us.i124 = phi i64 [ %i.gt, %.lr.ph.split.us.preheader.i120.new ], [ %i.hs, %.lr.ph.split.us.i122 ] ; 4 uses
  %niter214 = phi i64 [ 0, %.lr.ph.split.us.preheader.i120.new ], [ %niter214.next.3, %.lr.ph.split.us.i122 ]
  %i.hi = lshr i64 %.03033.us.i124, 8
  %i.hj = trunc i64 %i.hi to i8
  %i.hk = sub nuw nsw i64 %i.he, %indvars.iv39.i123
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hk
  store i8 %i.hj, ptr %i.hl, align 1, !tbaa !18
  %indvars.iv.next40.i125.neg = xor i64 %indvars.iv39.i123, -1
  %i.hm = lshr i64 %.03033.us.i124, 16
  %i.hn = trunc i64 %i.hm to i8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next40.i125.neg
  store i8 %i.hn, ptr %gep, align 1, !tbaa !18
  %indvars.iv.next40.i125.1 = add nuw nsw i64 %indvars.iv39.i123, 2
  %i.ho = lshr i64 %.03033.us.i124, 24
  %i.hp = trunc i64 %i.ho to i8
  %i.hq = sub nuw nsw i64 %i.he, %indvars.iv.next40.i125.1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hq
  store i8 %i.hp, ptr %i.hr, align 1, !tbaa !18
  %indvars.iv.next40.i125.2 = add nuw nsw i64 %indvars.iv39.i123, 3
  %i.hs = lshr i64 %.03033.us.i124, 32            ; 3 uses
  %i.ht = trunc i64 %i.hs to i8
  %i.hu = sub nuw nsw i64 %i.he, %indvars.iv.next40.i125.2
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hu
  store i8 %i.ht, ptr %i.hv, align 1, !tbaa !18
  %indvars.iv.next40.i125.3 = add nuw nsw i64 %indvars.iv39.i123, 4 ; 2 uses
  %niter214.next.3 = add nuw i64 %niter214, 4     ; 2 uses
  %niter214.ncmp.3 = icmp eq i64 %niter214.next.3, %unroll_iter213
  br i1 %niter214.ncmp.3, label %.loopexit.i106.loopexit.unr-lcssa, label %.lr.ph.split.us.i122, !llvm.loop !24

.lr.ph.split.i110:                                ; preds = %.lr.ph.split.i110, %.lr.ph.split.preheader.i108.new
  %indvars.iv.i111 = phi i64 [ 1, %.lr.ph.split.preheader.i108.new ], [ %indvars.iv.next.i113.3, %.lr.ph.split.i110 ] ; 5 uses
  %.03033.i112 = phi i64 [ %i.gt, %.lr.ph.split.preheader.i108.new ], [ %i.ih, %.lr.ph.split.i110 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.i108.new ], [ %niter.next.3, %.lr.ph.split.i110 ]
  %i.hw = lshr i64 %.03033.i112, 8
  %i.hx = trunc i64 %i.hw to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv.i111
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !18
  %i.hz = lshr i64 %.03033.i112, 16
  %i.ia = trunc i64 %i.hz to i8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv.i111
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  store i8 %i.ia, ptr %i.ic, align 1, !tbaa !18
  %i.id = lshr i64 %.03033.i112, 24
  %i.ie = trunc i64 %i.id to i8
  %i.if = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv.i111
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  store i8 %i.ie, ptr %i.ig, align 1, !tbaa !18
  %i.ih = lshr i64 %.03033.i112, 32               ; 3 uses
  %i.ii = trunc i64 %i.ih to i8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv.i111
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 3
  store i8 %i.ii, ptr %i.ik, align 1, !tbaa !18
  %indvars.iv.next.i113.3 = add nuw nsw i64 %indvars.iv.i111, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i106.loopexit207.unr-lcssa, label %.lr.ph.split.i110, !llvm.loop !24

.loopexit.i106.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i122
  %lcmp.mod211.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod211.not, label %.loopexit.i106, label %.lr.ph.split.us.i122.epil.preheader

.lr.ph.split.us.i122.epil.preheader:              ; preds = %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i120
  %indvars.iv39.i123.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i120 ], [ %indvars.iv.next40.i125.3, %.loopexit.i106.loopexit.unr-lcssa ]
  %.03033.us.i124.epil.init = phi i64 [ %i.gt, %.lr.ph.split.us.preheader.i120 ], [ %i.hs, %.loopexit.i106.loopexit.unr-lcssa ]
  %lcmp.mod212 = icmp ne i64 %xtraiter209, 0
  call void @llvm.assume(i1 %lcmp.mod212)
  br label %.lr.ph.split.us.i122.epil

.lr.ph.split.us.i122.epil:                        ; preds = %.lr.ph.split.us.i122.epil, %.lr.ph.split.us.i122.epil.preheader
  %indvars.iv39.i123.epil = phi i64 [ %indvars.iv39.i123.epil.init, %.lr.ph.split.us.i122.epil.preheader ], [ %indvars.iv.next40.i125.epil, %.lr.ph.split.us.i122.epil ] ; 2 uses
  %.03033.us.i124.epil = phi i64 [ %.03033.us.i124.epil.init, %.lr.ph.split.us.i122.epil.preheader ], [ %i.il, %.lr.ph.split.us.i122.epil ]
  %epil.iter210 = phi i64 [ 0, %.lr.ph.split.us.i122.epil.preheader ], [ %epil.iter210.next, %.lr.ph.split.us.i122.epil ]
  %i.il = lshr i64 %.03033.us.i124.epil, 8        ; 2 uses
  %i.im = trunc i64 %i.il to i8
  %i.in = sub nuw nsw i64 %i.he, %indvars.iv39.i123.epil
  %i.io = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.in
  store i8 %i.im, ptr %i.io, align 1, !tbaa !18
  %indvars.iv.next40.i125.epil = add nuw nsw i64 %indvars.iv39.i123.epil, 1
  %epil.iter210.next = add i64 %epil.iter210, 1   ; 2 uses
  %epil.iter210.cmp.not = icmp eq i64 %epil.iter210.next, %xtraiter209
  br i1 %epil.iter210.cmp.not, label %.loopexit.i106, label %.lr.ph.split.us.i122.epil, !llvm.loop !30

.loopexit.i106.loopexit207.unr-lcssa:             ; preds = %.lr.ph.split.i110
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i106, label %.lr.ph.split.i110.epil.preheader

.lr.ph.split.i110.epil.preheader:                 ; preds = %.loopexit.i106.loopexit207.unr-lcssa, %.lr.ph.split.preheader.i108
  %indvars.iv.i111.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i108 ], [ %indvars.iv.next.i113.3, %.loopexit.i106.loopexit207.unr-lcssa ]
  %.03033.i112.epil.init = phi i64 [ %i.gt, %.lr.ph.split.preheader.i108 ], [ %i.ih, %.loopexit.i106.loopexit207.unr-lcssa ]
  %lcmp.mod208 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod208)
  br label %.lr.ph.split.i110.epil

.lr.ph.split.i110.epil:                           ; preds = %.lr.ph.split.i110.epil, %.lr.ph.split.i110.epil.preheader
  %indvars.iv.i111.epil = phi i64 [ %indvars.iv.i111.epil.init, %.lr.ph.split.i110.epil.preheader ], [ %indvars.iv.next.i113.epil, %.lr.ph.split.i110.epil ] ; 2 uses
  %.03033.i112.epil = phi i64 [ %.03033.i112.epil.init, %.lr.ph.split.i110.epil.preheader ], [ %i.ip, %.lr.ph.split.i110.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.split.i110.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.i110.epil ]
  %i.ip = lshr i64 %.03033.i112.epil, 8           ; 2 uses
  %i.iq = trunc i64 %i.ip to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv.i111.epil
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !18
  %indvars.iv.next.i113.epil = add nuw nsw i64 %indvars.iv.i111.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i106, label %.lr.ph.split.i110.epil, !llvm.loop !31

.loopexit.i106:                                   ; preds = %.loopexit.i106.loopexit207.unr-lcssa, %.lr.ph.split.i110.epil, %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.split.us.i122.epil, %bb.aa
  %i.is = load ptr, ptr %1, align 8, !tbaa !34
  %i.it = sext i32 %i.n to i64
  %i.iu = getelementptr inbounds i8, ptr %i.is, i64 %i.it
  store ptr %i.iu, ptr %1, align 8, !tbaa !34
  br label %packint.exit130

packint.exit130:                                  ; preds = %bb.z, %.loopexit.i106
  %i.iv = load i64, ptr %i.e, align 8, !tbaa !22
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.gh, i64 noundef %i.iv) #7
  %i.iw = load i64, ptr %i.e, align 8, !tbaa !22
  %i.ix = add i64 %i.iw, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %packint.exit

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.iy = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.iz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iy) #8 ; 2 uses
  %i.ja = load i64, ptr %i.f, align 8, !tbaa !22
  %i.jb = icmp eq i64 %i.iz, %i.ja
  br i1 %i.jb, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jc = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.8) #7 ; 0 uses
  %.pre188 = load i64, ptr %i.f, align 8, !tbaa !22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jd = phi i64 [ %.pre188, %bb.ac ], [ %i.iz, %bb.ab ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.iy, i64 noundef %i.jd) #7
  %i.je = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.jf = icmp ult ptr %i.je, %i.k
  br i1 %i.jf, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jg = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre189 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jh = phi ptr [ %.pre189, %bb.ae ], [ %i.je, %bb.ad ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store ptr %i.ji, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.jh, align 1, !tbaa !18
  %i.jj = load i64, ptr %i.f, align 8, !tbaa !22
  %i.jk = add i64 %i.q, 1
  %i.jl = add i64 %i.jk, %i.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %packint.exit

bb.ag:                                            ; preds = %._crit_edge
  %i.jm = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.jn = icmp ult ptr %i.jm, %i.k
  br i1 %i.jn, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jo = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.jp = phi ptr [ %.pre187, %bb.ah ], [ %i.jm, %bb.ag ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1
  store ptr %i.jq, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.jp, align 1, !tbaa !18
  br label %packint.exit

default.unreachable200:                           ; preds = %._crit_edge
  unreachable

packint.exit:                                     ; preds = %.loopexit.i64, %bb.o, %.loopexit.i, %bb.i, %._crit_edge, %._crit_edge, %bb.ai, %bb.af, %packint.exit130, %._crit_edge140, %copywithendian.exit104, %copywithendian.exit97, %copywithendian.exit.loopexit
  %.155 = phi i64 [ %i.jl, %bb.af ], [ %i.q, %._crit_edge ], [ %i.q, %.loopexit.i ], [ %i.q, %copywithendian.exit.loopexit ], [ %i.q, %copywithendian.exit97 ], [ %i.q, %copywithendian.exit104 ], [ %i.q, %._crit_edge140 ], [ %i.ix, %packint.exit130 ], [ %i.q, %bb.ai ], [ %i.q, %._crit_edge ], [ %i.q, %bb.i ], [ %i.q, %bb.o ], [ %i.q, %.loopexit.i64 ]
  %.1 = phi i32 [ %i.z, %bb.af ], [ %.0143, %._crit_edge ], [ %i.z, %.loopexit.i ], [ %i.z, %copywithendian.exit.loopexit ], [ %i.z, %copywithendian.exit97 ], [ %i.z, %copywithendian.exit104 ], [ %i.z, %._crit_edge140 ], [ %i.z, %packint.exit130 ], [ %.0143, %bb.ai ], [ %.0143, %._crit_edge ], [ %i.z, %bb.i ], [ %i.z, %bb.o ], [ %i.z, %.loopexit.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.jr = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !18
  %.not = icmp eq i8 %i.js, 0
  br i1 %.not, label %._crit_edge146, label %bb.b, !llvm.loop !32

._crit_edge146:                                   ; preds = %packint.exit, %bb.a
  call void @luaL_pushresult(ptr noundef nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 1
}

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483647, -2147483648) i32 @str_unpack(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.e = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.f = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) #7 ; 7 uses
  %i.g = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 1) #7 ; 5 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %i.i = icmp sgt i64 %i.g, 0
  br i1 %i.i, label %posrelatI.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.g, 0
  %i.k = sub nsw i64 0, %i.h
  %i.l = icmp slt i64 %i.g, %i.k
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond.i, label %posrelatI.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i64 %i.g, 1
  %i.n = add i64 %i.m, %i.h
  br label %posrelatI.exit

posrelatI.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.n, %bb.c ], [ %i.g, %bb.a ], [ 1, %bb.b ] ; 2 uses
  %i.o = add i64 %.0.i, -1                        ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.h
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %posrelatI.exit
  %i.p = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.15) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %posrelatI.exit
  store ptr %0, ptr %1, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i32 1, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !17
  %i.s = load i8, ptr %i.e, align 1, !tbaa !18
  %.not6087 = icmp eq i8 %i.s, 0
  br i1 %.not6087, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.y
  %.089 = phi i32 [ %.1, %bb.y ], [ 0, %bb.e ]    ; 4 uses
  %.05888 = phi i64 [ %i.hf, %bb.y ], [ %i.o, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.t = call fastcc i32 @getdetails(ptr noundef %1, i64 noundef %.05888, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !19
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = load i32, ptr %i.c, align 4, !tbaa !19   ; 24 uses
  %i.x = sext i32 %i.w to i64                     ; 5 uses
  %i.y = add nsw i64 %i.x, %i.v
  %i.z = load i64, ptr %i.b, align 8, !tbaa !22
  %i.aa = sub i64 %i.z, %.05888
  %.not61 = icmp ugt i64 %i.y, %i.aa
  br i1 %.not61, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ab = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.16) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ac = add i64 %.05888, %i.v                   ; 19 uses
  call void @luaL_checkstack(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.17) #7
  %i.ad = add nsw i32 %.089, 1                    ; 7 uses
  switch i32 %i.t, label %default.unreachable163 [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.k
    i32 4, label %bb.m
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.v
    i32 9, label %bb.y
    i32 8, label %bb.y
    i32 10, label %bb.y
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac
  %i.af = load i32, ptr %i.q, align 8, !tbaa !16
  %i.ag = icmp eq i32 %i.t, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = call fastcc i64 @unpackint(ptr noundef %0, ptr noundef %i.ae, i32 noundef %i.af, i32 noundef %i.w, i32 noundef %i.ah)
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ai) #7
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 2 uses
  %i.ak = load i32, ptr %i.q, align 8, !tbaa !16
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.am = load i32, ptr %i.aj, align 1
  %i.an = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = bitcast i32 %i.an to float
  br label %copywithendian.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = load float, ptr %i.aj, align 1
  br label %copywithendian.exit

copywithendian.exit:                              ; preds = %.preheader, %bb.j
  %.0159 = phi float [ %i.ap, %bb.j ], [ %i.ao, %.preheader ]
  %i.aq = fpext float %.0159 to double
  call void @lua_pushnumber(ptr noundef %0, double noundef %i.aq) #7
  br label %bb.y

bb.k:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 9 uses
  %i.as = load i32, ptr %i.q, align 8, !tbaa !16
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.l, label %.preheader91

.preheader91:                                     ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !18
  %.7.insert.ext134 = zext i8 %i.av to i64
  %.7.insert.shift135 = shl nuw i64 %.7.insert.ext134, 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !18
  %.6.insert.ext129 = zext i8 %i.ax to i64
  %.6.insert.shift130 = shl nuw nsw i64 %.6.insert.ext129, 48
  %.6.insert.insert132 = or disjoint i64 %.7.insert.shift135, %.6.insert.shift130
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !18
  %.5.insert.ext124 = zext i8 %i.az to i64
  %.5.insert.shift125 = shl nuw nsw i64 %.5.insert.ext124, 40
  %.5.insert.insert127 = or disjoint i64 %.6.insert.insert132, %.5.insert.shift125
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !18
  %.4.insert.ext119 = zext i8 %i.bb to i64
  %.4.insert.shift120 = shl nuw nsw i64 %.4.insert.ext119, 32
  %.4.insert.insert122 = or disjoint i64 %.5.insert.insert127, %.4.insert.shift120
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !18
  %.3.insert.ext114 = zext i8 %i.bd to i64
  %.3.insert.shift115 = shl nuw nsw i64 %.3.insert.ext114, 24
  %.3.insert.insert117 = or disjoint i64 %.4.insert.insert122, %.3.insert.shift115
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !18
  %.2.insert.ext109 = zext i8 %i.bf to i64
  %.2.insert.shift110 = shl nuw nsw i64 %.2.insert.ext109, 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 7
  %i.bh = load i8, ptr %i.be, align 1, !tbaa !18
  %.1.insert.ext104 = zext i8 %i.bh to i64
  %.1.insert.shift105 = shl nuw nsw i64 %.1.insert.ext104, 8
  %.1.insert.mask106 = or disjoint i64 %.3.insert.insert117, %.2.insert.shift110
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !18
  %.0.insert.ext100 = zext i8 %i.bi to i64
  %.0.insert.mask101 = or i64 %.1.insert.mask106, %.1.insert.shift105
  %.0.insert.insert102 = or i64 %.0.insert.mask101, %.0.insert.ext100
  %i.bj = bitcast i64 %.0.insert.insert102 to double
  br label %copywithendian.exit69

bb.l:                                             ; preds = %bb.k
  %i.bk = load double, ptr %i.ar, align 1
  br label %copywithendian.exit69

copywithendian.exit69:                            ; preds = %.preheader91, %bb.l
  %.0158 = phi double [ %i.bk, %bb.l ], [ %i.bj, %.preheader91 ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.0158) #7
  br label %bb.y

bb.m:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 9 uses
  %i.bm = load i32, ptr %i.q, align 8, !tbaa !16
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %.preheader92

.preheader92:                                     ; preds = %bb.m
end_hunk_1
begin_hunk_2_@unpackint:bb.a
  %i.al = zext i8 %i.ak to i64
  %i.am = or disjoint i64 %i.ah, %i.al            ; 2 uses
  %i.an = icmp ugt i32 %3, 6
  br i1 %i.an, label %.lr.ph.split.us.6, label %._crit_edge

.lr.ph.split.us.6:                                ; preds = %.lr.ph.split.us.5
  %indvars.iv.next52.5 = add nsw i64 %i.c, -6
  %i.ao = shl i64 %i.am, 8
  %i.ap = sub nsw i64 %i.b, %indvars.iv.next52.5
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !18
  %i.as = zext i8 %i.ar to i64
  %i.at = or disjoint i64 %i.ao, %i.as            ; 2 uses
  %.not78 = icmp eq i32 %3, 7
  br i1 %.not78, label %._crit_edge, label %.lr.ph.split.us.7

.lr.ph.split.us.7:                                ; preds = %.lr.ph.split.us.6
  %indvars.iv.next52.6 = add nsw i64 %i.c, -7
  %i.au = shl i64 %i.at, 8
  %i.av = sub nsw i64 %i.b, %indvars.iv.next52.6
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.au, %i.ay
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = getelementptr i8, ptr %1, i64 %i.c
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !18
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %.not71 = icmp eq i32 %3, 1
  br i1 %.not71, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split
  %i.be = shl nuw nsw i64 %i.bd, 8
  %i.bf = getelementptr i8, ptr %1, i64 %i.c
  %i.bg = getelementptr i8, ptr %i.bf, i64 -2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !18
  %i.bi = zext i8 %i.bh to i64
  %i.bj = or disjoint i64 %i.be, %i.bi            ; 2 uses
  %i.bk = icmp ugt i32 %3, 2
  br i1 %i.bk, label %.lr.ph.split.2, label %._crit_edge

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %i.bl = shl nuw nsw i64 %i.bj, 8
  %i.bm = getelementptr i8, ptr %1, i64 %i.c
  %i.bn = getelementptr i8, ptr %i.bm, i64 -3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18
  %i.bp = zext i8 %i.bo to i64
  %i.bq = or disjoint i64 %i.bl, %i.bp            ; 2 uses
  %.not72 = icmp eq i32 %3, 3
  br i1 %.not72, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %.lr.ph.split.2
  %i.br = shl nuw nsw i64 %i.bq, 8
  %i.bs = getelementptr i8, ptr %1, i64 %i.c
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18
  %i.bv = zext i8 %i.bu to i64
  %i.bw = or disjoint i64 %i.br, %i.bv            ; 2 uses
  %i.bx = icmp ugt i32 %3, 4
  br i1 %i.bx, label %.lr.ph.split.4, label %._crit_edge

.lr.ph.split.4:                                   ; preds = %.lr.ph.split.3
  %i.by = shl i64 %i.bw, 8
  %i.bz = getelementptr i8, ptr %1, i64 %i.c
  %i.ca = getelementptr i8, ptr %i.bz, i64 -5
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !18
  %i.cc = zext i8 %i.cb to i64
  %i.cd = or disjoint i64 %i.by, %i.cc            ; 2 uses
  %.not73 = icmp eq i32 %3, 5
  br i1 %.not73, label %._crit_edge, label %.lr.ph.split.5

.lr.ph.split.5:                                   ; preds = %.lr.ph.split.4
  %i.ce = shl i64 %i.cd, 8
  %i.cf = getelementptr i8, ptr %1, i64 %i.c
  %i.cg = getelementptr i8, ptr %i.cf, i64 -6
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !18
  %i.ci = zext i8 %i.ch to i64
  %i.cj = or disjoint i64 %i.ce, %i.ci            ; 2 uses
  %i.ck = icmp ugt i32 %3, 6
  br i1 %i.ck, label %.lr.ph.split.6, label %._crit_edge

.lr.ph.split.6:                                   ; preds = %.lr.ph.split.5
  %i.cl = shl i64 %i.cj, 8
  %i.cm = getelementptr i8, ptr %1, i64 %i.c
  %i.cn = getelementptr i8, ptr %i.cm, i64 -7
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.cp = zext i8 %i.co to i64
  %i.cq = or disjoint i64 %i.cl, %i.cp            ; 2 uses
  %.not74 = icmp eq i32 %3, 7
  br i1 %.not74, label %._crit_edge, label %.lr.ph.split.7

.lr.ph.split.7:                                   ; preds = %.lr.ph.split.6
  %i.cr = shl i64 %i.cq, 8
  %i.cs = getelementptr i8, ptr %1, i64 %i.c
  %i.ct = getelementptr i8, ptr %i.cs, i64 -8
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !18
  %i.cv = zext i8 %i.cu to i64
  %i.cw = or disjoint i64 %i.cr, %i.cv
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.1, %.lr.ph.split.2, %.lr.ph.split.3, %.lr.ph.split.4, %.lr.ph.split.5, %.lr.ph.split.6, %.lr.ph.split.7, %.lr.ph.split.us, %.lr.ph.split.us.1, %.lr.ph.split.us.2, %.lr.ph.split.us.3, %.lr.ph.split.us.4, %.lr.ph.split.us.5, %.lr.ph.split.us.6, %.lr.ph.split.us.7
  %.0.lcssa = phi i64 [ %i.az, %.lr.ph.split.us.7 ], [ %i.g, %.lr.ph.split.us ], [ %i.m, %.lr.ph.split.us.1 ], [ %i.t, %.lr.ph.split.us.2 ], [ %i.z, %.lr.ph.split.us.3 ], [ %i.ag, %.lr.ph.split.us.4 ], [ %i.am, %.lr.ph.split.us.5 ], [ %i.at, %.lr.ph.split.us.6 ], [ %i.bd, %.lr.ph.split ], [ %i.bj, %.lr.ph.split.1 ], [ %i.bq, %.lr.ph.split.2 ], [ %i.bw, %.lr.ph.split.3 ], [ %i.cd, %.lr.ph.split.4 ], [ %i.cj, %.lr.ph.split.5 ], [ %i.cq, %.lr.ph.split.6 ], [ %i.cw, %.lr.ph.split.7 ] ; 5 uses
  %i.cx = icmp samesign ult i32 %3, 8
  br i1 %i.cx, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa61 = phi i64 [ %.0.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.not40 = icmp eq i32 %4, 0
  br i1 %.not40, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread
  %i.cy = shl nsw i32 %3, 3
  %i.cz = add nsw i32 %i.cy, -1
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = shl nuw i64 1, %i.da                    ; 2 uses
  %i.dc = xor i64 %.0.lcssa61, %i.db
  %i.dd = sub i64 %i.dc, %i.db
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %3, 8
  br i1 %.not, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.c
  %.not37 = icmp eq i32 %4, 0
  %i.de = icmp sgt i64 %.0.lcssa, -1
  %i.df = select i1 %.not37, i1 true, i1 %i.de
  %i.dg = select i1 %i.df, i32 0, i32 255         ; 2 uses
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %.lr.ph46.split.us.preheader, label %.lr.ph46.split

.lr.ph46.split.us.preheader:                      ; preds = %.lr.ph46
  %i.dh = zext nneg i32 %3 to i64
  br label %.lr.ph46.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46.split.us.preheader, %bb.e
  %indvars.iv57 = phi i64 [ 8, %.lr.ph46.split.us.preheader ], [ %indvars.iv.next58, %bb.e ] ; 2 uses
  %i.di = trunc nsw i64 %indvars.iv57 to i32
  %i.dj = xor i32 %i.di, -1
  %i.dk = add nsw i32 %3, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %1, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !18
  %i.do = zext i8 %i.dn to i32
  %.not39.us = icmp eq i32 %i.dg, %i.do
  br i1 %.not39.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph46.split.us
  %i.dp = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %3) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph46.split.us, %bb.d
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.dq = icmp samesign ult i64 %indvars.iv.next58, %i.dh
  br i1 %i.dq, label %.lr.ph46.split.us, label %.loopexit, !llvm.loop !0

.lr.ph46.split:                                   ; preds = %.lr.ph46, %bb.g
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb.g ], [ 8, %.lr.ph46 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !18
  %i.dt = zext i8 %i.ds to i32
  %.not39 = icmp eq i32 %i.dg, %i.dt
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph46.split
  %i.du = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %3) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46.split, %bb.f
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.dv = trunc nuw i64 %indvars.iv.next54 to i32
  %i.dw = icmp sgt i32 %3, %i.dv
  br i1 %i.dw, label %.lr.ph46.split, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.c, %._crit_edge.thread, %bb.b
  %.1 = phi i64 [ %i.dd, %bb.b ], [ %.0.lcssa61, %._crit_edge.thread ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %bb.g ]
  ret i64 %.1
}

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #1

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTS9lua_State", !10, i64 0}
!14 = !{!"Header", !13, i64 0, !7, i64 8, !7, i64 12}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !7, i64 8}
!17 = !{!14, !7, i64 12}
!18 = !{!6, !6, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"long", !6, i64 0}
!22 = !{!21, !21, i64 0}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !35}
!26 = distinct !{!26, !35}
!27 = distinct !{!27, !35}
!28 = distinct !{!28, !35}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !35}
!31 = distinct !{!31, !35}
!32 = distinct !{!32, !20}
!33 = !{!"luaL_Buffer", !11, i64 0, !7, i64 8, !13, i64 16, !6, i64 24}
!34 = !{!33, !11, i64 0}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
end_hunk_2
