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
    i32 2, label %bb.q
    i32 3, label %bb.s
    i32 4, label %bb.u
    i32 5, label %bb.w
    i32 6, label %bb.ab
    i32 7, label %bb.ah
    i32 8, label %bb.am
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
  %.03033.us.i = phi i64 [ %i.aa, %.lr.ph.split.us.preheader.i.new ], [ %i.bl, %.lr.ph.split.us.i ] ; 4 uses
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
  %3 = sub nuw nsw i64 %i.ay, %indvars.iv.next40.i.1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 %3
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !18
  %indvars.iv.next40.i.2 = add nuw nsw i64 %indvars.iv39.i, 3
  %i.bl = lshr i64 %.03033.us.i, 32               ; 3 uses
  %i.bm = trunc i64 %i.bl to i8
  %4 = sub nuw nsw i64 %i.ay, %indvars.iv.next40.i.2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %4
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !18
  %indvars.iv.next40.i.3 = add nuw nsw i64 %indvars.iv39.i, 4 ; 2 uses
  %niter238.next.3 = add nuw i64 %niter238, 4     ; 2 uses
  %niter238.ncmp.3 = icmp eq i64 %niter238.next.3, %unroll_iter237
  br i1 %niter238.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !24

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.split.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.split.i ] ; 5 uses
  %.03033.i = phi i64 [ %i.aa, %.lr.ph.split.preheader.i.new ], [ %i.bz, %.lr.ph.split.i ] ; 4 uses
  %niter232 = phi i64 [ 0, %.lr.ph.split.preheader.i.new ], [ %niter232.next.3, %.lr.ph.split.i ]
  %i.bo = lshr i64 %.03033.i, 8
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !18
  %i.br = lshr i64 %.03033.i, 16
  %i.bs = trunc i64 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !18
  %i.bv = lshr i64 %.03033.i, 24
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !18
  %i.bz = lshr i64 %.03033.i, 32                  ; 3 uses
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !18
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter232.next.3 = add nuw i64 %niter232, 4     ; 2 uses
  %niter232.ncmp.3 = icmp eq i64 %niter232.next.3, %unroll_iter231
  br i1 %niter232.ncmp.3, label %._crit_edge.thread52.i.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !24

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.split.us.i
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod235.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.split.us.preheader.i
  %indvars.iv39.i.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next40.i.3, %._crit_edge.i.unr-lcssa ]
  %.03033.us.i.epil.init = phi i64 [ %i.aa, %.lr.ph.split.us.preheader.i ], [ %i.bl, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter233, 0
  call void @llvm.assume(i1 %lcmp.mod236)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv39.i.epil = phi i64 [ %indvars.iv39.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %indvars.iv.next40.i.epil, %.lr.ph.split.us.i.epil ] ; 2 uses
  %.03033.us.i.epil = phi i64 [ %.03033.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %i.cd, %.lr.ph.split.us.i.epil ]
  %epil.iter234 = phi i64 [ 0, %.lr.ph.split.us.i.epil.preheader ], [ %epil.iter234.next, %.lr.ph.split.us.i.epil ]
  %i.cd = lshr i64 %.03033.us.i.epil, 8           ; 2 uses
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = sub nuw nsw i64 %i.ay, %indvars.iv39.i.epil
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cf
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !18
  %indvars.iv.next40.i.epil = add nuw nsw i64 %indvars.iv39.i.epil, 1
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil, !llvm.loop !25

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.epil, %._crit_edge.i.unr-lcssa
  %i.ch = icmp slt i64 %i.aa, 0
  %i.ci = icmp samesign ugt i32 %i.n, 8
  %or.cond.i = and i1 %i.ci, %i.ch
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

._crit_edge.thread52.i.unr-lcssa:                 ; preds = %.lr.ph.split.i
  %lcmp.mod229.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod229.not, label %._crit_edge.thread52.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.thread52.i.unr-lcssa, %.lr.ph.split.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.thread52.i.unr-lcssa ]
  %.03033.i.epil.init = phi i64 [ %i.aa, %.lr.ph.split.preheader.i ], [ %i.bz, %._crit_edge.thread52.i.unr-lcssa ]
  %lcmp.mod230 = icmp ne i64 %xtraiter227, 0
  call void @llvm.assume(i1 %lcmp.mod230)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.split.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.split.i.epil ] ; 2 uses
  %.03033.i.epil = phi i64 [ %.03033.i.epil.init, %.lr.ph.split.i.epil.preheader ], [ %i.cj, %.lr.ph.split.i.epil ]
  %epil.iter228 = phi i64 [ 0, %.lr.ph.split.i.epil.preheader ], [ %epil.iter228.next, %.lr.ph.split.i.epil ]
  %i.cj = lshr i64 %.03033.i.epil, 8              ; 2 uses
  %i.ck = trunc i64 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i.epil
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !18
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter228.next = add i64 %epil.iter228, 1   ; 2 uses
  %epil.iter228.cmp.not = icmp eq i64 %epil.iter228.next, %xtraiter227
  br i1 %epil.iter228.cmp.not, label %._crit_edge.thread52.i, label %.lr.ph.split.i.epil, !llvm.loop !26

._crit_edge.thread52.i:                           ; preds = %.lr.ph.split.i.epil, %._crit_edge.thread52.i.unr-lcssa
  %i.cm = icmp slt i64 %i.aa, 0
  %i.cn = icmp samesign ugt i32 %i.n, 8
  %or.cond53.i = and i1 %i.cn, %i.cm
  br i1 %or.cond53.i, label %.loopexit.sink.split.i, label %.loopexit.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.co = add nsw i64 %i.ay, -8
  %i.cp = add nsw i32 %i.n, -9
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = sub nsw i64 %i.co, %i.cq
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %.preheader.i, %._crit_edge.thread52.i
  %.sink.i = phi i64 [ %i.cr, %.preheader.i ], [ 8, %._crit_edge.thread52.i ]
  %scevgep.i = getelementptr i8, ptr %i.ao, i64 %.sink.i
  %i.cs = add nsw i32 %i.n, -8
  %i.ct = zext nneg i32 %i.cs to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 -1, i64 %i.ct, i1 false), !tbaa !18
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.sink.split.i, %._crit_edge.thread52.i, %._crit_edge.i, %bb.j
  %i.cu = load ptr, ptr %1, align 8, !tbaa !34
  %i.cv = sext i32 %i.n to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  store ptr %i.cw, ptr %1, align 8, !tbaa !34
  br label %packint.exit

bb.k:                                             ; preds = %._crit_edge
  %i.cx = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %i.z) #7 ; 6 uses
  %i.cy = icmp slt i32 %i.n, 8
  br i1 %i.cy, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cz = shl nsw i32 %i.n, 3
  %i.da = zext nneg i32 %i.cz to i64
  %.highbits61 = lshr i64 %i.cx, %i.da
  %i.db = icmp eq i64 %.highbits61, 0
  br i1 %i.db, label %.thread133, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.5) #7 ; 0 uses
  br label %.thread133

.thread133:                                       ; preds = %bb.l, %bb.m
  %i.dd = load i32, ptr %i.h, align 8, !tbaa !16
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.de = load i32, ptr %i.h, align 8, !tbaa !16
  %i.df = icmp samesign ugt i32 %i.n, 8192
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.n, i32 noundef 8192) #7 ; 0 uses
  br label %packint.exit

bb.p:                                             ; preds = %.thread133, %bb.n
  %i.dh = phi i32 [ %i.dd, %.thread133 ], [ %i.de, %bb.n ]
  %i.di = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 11 uses
  %i.dj = trunc i64 %i.cx to i8
  %.not.i63 = icmp eq i32 %i.dh, 0                ; 2 uses
  %i.dk = add i32 %i.n, -1                        ; 2 uses
  %i.dl = select i1 %.not.i63, i32 %i.dk, i32 0
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.di, i64 %i.dm
  store i8 %i.dj, ptr %i.dn, align 1, !tbaa !18
  %i.do = icmp sgt i32 %i.n, 1
  br i1 %i.do, label %.lr.ph.i65, label %.loopexit.i64

.lr.ph.i65:                                       ; preds = %bb.p
  br i1 %.not.i63, label %.lr.ph.split.us.preheader.i78, label %.lr.ph.split.preheader.i66

.lr.ph.split.preheader.i66:                       ; preds = %.lr.ph.i65
  %wide.trip.count.i67 = zext nneg i32 %i.n to i64
  %i.dp = add nsw i64 %wide.trip.count.i67, -1    ; 2 uses
  %xtraiter215 = and i64 %i.dp, 3                 ; 3 uses
  %i.dq = add nsw i32 %i.n, -2
  %i.dr = icmp ult i32 %i.dq, 3
  br i1 %i.dr, label %.lr.ph.split.i68.epil.preheader, label %.lr.ph.split.preheader.i66.new

.lr.ph.split.preheader.i66.new:                   ; preds = %.lr.ph.split.preheader.i66
  %unroll_iter219 = and i64 %i.dp, -4
  br label %.lr.ph.split.i68

.lr.ph.split.us.preheader.i78:                    ; preds = %.lr.ph.i65
  %i.ds = zext nneg i32 %i.dk to i64              ; 5 uses
  %wide.trip.count42.i79 = zext nneg i32 %i.n to i64
  %i.dt = add nsw i64 %wide.trip.count42.i79, -1  ; 2 uses
  %xtraiter221 = and i64 %i.dt, 3                 ; 3 uses
  %i.du = add nsw i32 %i.n, -2
  %i.dv = icmp ult i32 %i.du, 3
  br i1 %i.dv, label %.lr.ph.split.us.i80.epil.preheader, label %.lr.ph.split.us.preheader.i78.new

.lr.ph.split.us.preheader.i78.new:                ; preds = %.lr.ph.split.us.preheader.i78
  %unroll_iter225 = and i64 %i.dt, -4
  %invariant.gep244 = getelementptr i8, ptr %i.di, i64 %i.ds
  br label %.lr.ph.split.us.i80

.lr.ph.split.us.i80:                              ; preds = %.lr.ph.split.us.i80, %.lr.ph.split.us.preheader.i78.new
  %indvars.iv39.i81 = phi i64 [ 1, %.lr.ph.split.us.preheader.i78.new ], [ %indvars.iv.next40.i83.3, %.lr.ph.split.us.i80 ] ; 5 uses
  %.03033.us.i82 = phi i64 [ %i.cx, %.lr.ph.split.us.preheader.i78.new ], [ %i.ef, %.lr.ph.split.us.i80 ] ; 4 uses
  %niter226 = phi i64 [ 0, %.lr.ph.split.us.preheader.i78.new ], [ %niter226.next.3, %.lr.ph.split.us.i80 ]
  %i.dw = lshr i64 %.03033.us.i82, 8
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = sub nuw nsw i64 %i.ds, %indvars.iv39.i81
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dy
  store i8 %i.dx, ptr %i.dz, align 1, !tbaa !18
  %indvars.iv.next40.i83.neg = xor i64 %indvars.iv39.i81, -1
  %i.ea = lshr i64 %.03033.us.i82, 16
  %i.eb = trunc i64 %i.ea to i8
  %gep245 = getelementptr i8, ptr %invariant.gep244, i64 %indvars.iv.next40.i83.neg
  store i8 %i.eb, ptr %gep245, align 1, !tbaa !18
  %indvars.iv.next40.i83.1 = add nuw nsw i64 %indvars.iv39.i81, 2
  %i.ec = lshr i64 %.03033.us.i82, 24
  %i.ed = trunc i64 %i.ec to i8
  %5 = sub nuw nsw i64 %i.ds, %indvars.iv.next40.i83.1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 %5
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !18
  %indvars.iv.next40.i83.2 = add nuw nsw i64 %indvars.iv39.i81, 3
  %i.ef = lshr i64 %.03033.us.i82, 32             ; 3 uses
  %i.eg = trunc i64 %i.ef to i8
  %6 = sub nuw nsw i64 %i.ds, %indvars.iv.next40.i83.2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 %6
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !18
  %indvars.iv.next40.i83.3 = add nuw nsw i64 %indvars.iv39.i81, 4 ; 2 uses
  %niter226.next.3 = add nuw i64 %niter226, 4     ; 2 uses
  %niter226.ncmp.3 = icmp eq i64 %niter226.next.3, %unroll_iter225
  br i1 %niter226.ncmp.3, label %.loopexit.i64.loopexit.unr-lcssa, label %.lr.ph.split.us.i80, !llvm.loop !24

.lr.ph.split.i68:                                 ; preds = %.lr.ph.split.i68, %.lr.ph.split.preheader.i66.new
  %indvars.iv.i69 = phi i64 [ 1, %.lr.ph.split.preheader.i66.new ], [ %indvars.iv.next.i71.3, %.lr.ph.split.i68 ] ; 5 uses
  %.03033.i70 = phi i64 [ %i.cx, %.lr.ph.split.preheader.i66.new ], [ %i.et, %.lr.ph.split.i68 ] ; 4 uses
  %niter220 = phi i64 [ 0, %.lr.ph.split.preheader.i66.new ], [ %niter220.next.3, %.lr.ph.split.i68 ]
  %i.ei = lshr i64 %.03033.i70, 8
  %i.ej = trunc i64 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i69
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !18
  %i.el = lshr i64 %.03033.i70, 16
  %i.em = trunc i64 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i69
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store i8 %i.em, ptr %i.eo, align 1, !tbaa !18
  %i.ep = lshr i64 %.03033.i70, 24
  %i.eq = trunc i64 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i69
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  store i8 %i.eq, ptr %i.es, align 1, !tbaa !18
  %i.et = lshr i64 %.03033.i70, 32                ; 3 uses
  %i.eu = trunc i64 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i69
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 3
  store i8 %i.eu, ptr %i.ew, align 1, !tbaa !18
  %indvars.iv.next.i71.3 = add nuw nsw i64 %indvars.iv.i69, 4 ; 2 uses
  %niter220.next.3 = add nuw i64 %niter220, 4     ; 2 uses
  %niter220.ncmp.3 = icmp eq i64 %niter220.next.3, %unroll_iter219
  br i1 %niter220.ncmp.3, label %.loopexit.i64.loopexit206.unr-lcssa, label %.lr.ph.split.i68, !llvm.loop !24

.loopexit.i64.loopexit.unr-lcssa:                 ; preds = %.lr.ph.split.us.i80
  %lcmp.mod223.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod223.not, label %.loopexit.i64, label %.lr.ph.split.us.i80.epil.preheader

.lr.ph.split.us.i80.epil.preheader:               ; preds = %.loopexit.i64.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i78
  %indvars.iv39.i81.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i78 ], [ %indvars.iv.next40.i83.3, %.loopexit.i64.loopexit.unr-lcssa ]
  %.03033.us.i82.epil.init = phi i64 [ %i.cx, %.lr.ph.split.us.preheader.i78 ], [ %i.ef, %.loopexit.i64.loopexit.unr-lcssa ]
  %lcmp.mod224 = icmp ne i64 %xtraiter221, 0
  call void @llvm.assume(i1 %lcmp.mod224)
  br label %.lr.ph.split.us.i80.epil

.lr.ph.split.us.i80.epil:                         ; preds = %.lr.ph.split.us.i80.epil, %.lr.ph.split.us.i80.epil.preheader
  %indvars.iv39.i81.epil = phi i64 [ %indvars.iv39.i81.epil.init, %.lr.ph.split.us.i80.epil.preheader ], [ %indvars.iv.next40.i83.epil, %.lr.ph.split.us.i80.epil ] ; 2 uses
  %.03033.us.i82.epil = phi i64 [ %.03033.us.i82.epil.init, %.lr.ph.split.us.i80.epil.preheader ], [ %i.ex, %.lr.ph.split.us.i80.epil ]
  %epil.iter222 = phi i64 [ 0, %.lr.ph.split.us.i80.epil.preheader ], [ %epil.iter222.next, %.lr.ph.split.us.i80.epil ]
  %i.ex = lshr i64 %.03033.us.i82.epil, 8         ; 2 uses
  %i.ey = trunc i64 %i.ex to i8
  %i.ez = sub nuw nsw i64 %i.ds, %indvars.iv39.i81.epil
  %i.fa = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ez
  store i8 %i.ey, ptr %i.fa, align 1, !tbaa !18
  %indvars.iv.next40.i83.epil = add nuw nsw i64 %indvars.iv39.i81.epil, 1
  %epil.iter222.next = add i64 %epil.iter222, 1   ; 2 uses
  %epil.iter222.cmp.not = icmp eq i64 %epil.iter222.next, %xtraiter221
  br i1 %epil.iter222.cmp.not, label %.loopexit.i64, label %.lr.ph.split.us.i80.epil, !llvm.loop !27

.loopexit.i64.loopexit206.unr-lcssa:              ; preds = %.lr.ph.split.i68
  %lcmp.mod217.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod217.not, label %.loopexit.i64, label %.lr.ph.split.i68.epil.preheader

.lr.ph.split.i68.epil.preheader:                  ; preds = %.loopexit.i64.loopexit206.unr-lcssa, %.lr.ph.split.preheader.i66
  %indvars.iv.i69.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i66 ], [ %indvars.iv.next.i71.3, %.loopexit.i64.loopexit206.unr-lcssa ]
  %.03033.i70.epil.init = phi i64 [ %i.cx, %.lr.ph.split.preheader.i66 ], [ %i.et, %.loopexit.i64.loopexit206.unr-lcssa ]
  %lcmp.mod218 = icmp ne i64 %xtraiter215, 0
  call void @llvm.assume(i1 %lcmp.mod218)
  br label %.lr.ph.split.i68.epil

.lr.ph.split.i68.epil:                            ; preds = %.lr.ph.split.i68.epil, %.lr.ph.split.i68.epil.preheader
  %indvars.iv.i69.epil = phi i64 [ %indvars.iv.i69.epil.init, %.lr.ph.split.i68.epil.preheader ], [ %indvars.iv.next.i71.epil, %.lr.ph.split.i68.epil ] ; 2 uses
  %.03033.i70.epil = phi i64 [ %.03033.i70.epil.init, %.lr.ph.split.i68.epil.preheader ], [ %i.fb, %.lr.ph.split.i68.epil ]
  %epil.iter216 = phi i64 [ 0, %.lr.ph.split.i68.epil.preheader ], [ %epil.iter216.next, %.lr.ph.split.i68.epil ]
  %i.fb = lshr i64 %.03033.i70.epil, 8            ; 2 uses
  %i.fc = trunc i64 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i69.epil
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !18
  %indvars.iv.next.i71.epil = add nuw nsw i64 %indvars.iv.i69.epil, 1
  %epil.iter216.next = add i64 %epil.iter216, 1   ; 2 uses
  %epil.iter216.cmp.not = icmp eq i64 %epil.iter216.next, %xtraiter215
  br i1 %epil.iter216.cmp.not, label %.loopexit.i64, label %.lr.ph.split.i68.epil, !llvm.loop !28

.loopexit.i64:                                    ; preds = %.loopexit.i64.loopexit206.unr-lcssa, %.lr.ph.split.i68.epil, %.loopexit.i64.loopexit.unr-lcssa, %.lr.ph.split.us.i80.epil, %bb.p
  %i.fe = load ptr, ptr %1, align 8, !tbaa !34
  %i.ff = sext i32 %i.n to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ff
  store ptr %i.fg, ptr %1, align 8, !tbaa !34
  br label %packint.exit

bb.q:                                             ; preds = %._crit_edge
  %i.fh = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.z) #7
  %i.fi = fptrunc double %i.fh to float           ; 2 uses
  %i.fj = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 5 uses
  %i.fk = load i32, ptr %i.h, align 8, !tbaa !16
  %i.fl = icmp eq i32 %i.fk, 1
  br i1 %i.fl, label %bb.r, label %copywithendian.exit.loopexit

bb.r:                                             ; preds = %bb.q
  store float %i.fi, ptr %i.fj, align 1
  br label %copywithendian.exit

copywithendian.exit.loopexit:                     ; preds = %bb.q
  %.0.i = getelementptr i8, ptr %i.fj, i64 3
  %i.fm = bitcast float %i.fi to i32              ; 4 uses
  %.0.extract.trunc176 = trunc i32 %i.fm to i8
  store i8 %.0.extract.trunc176, ptr %.0.i, align 1, !tbaa !18
  %.0.i.1 = getelementptr i8, ptr %i.fj, i64 2
  %.1.extract.shift179 = lshr i32 %i.fm, 8
  %.1.extract.trunc180 = trunc i32 %.1.extract.shift179 to i8
  store i8 %.1.extract.trunc180, ptr %.0.i.1, align 1, !tbaa !18
  %.0.i.2 = getelementptr i8, ptr %i.fj, i64 1
  %.2.extract.shift182 = lshr i32 %i.fm, 16
  %.2.extract.trunc183 = trunc i32 %.2.extract.shift182 to i8
  store i8 %.2.extract.trunc183, ptr %.0.i.2, align 1, !tbaa !18
  %.3.extract.shift185 = lshr i32 %i.fm, 24
  %.3.extract.trunc186 = trunc nuw i32 %.3.extract.shift185 to i8
  store i8 %.3.extract.trunc186, ptr %i.fj, align 1, !tbaa !18
  br label %copywithendian.exit

copywithendian.exit:                              ; preds = %copywithendian.exit.loopexit, %bb.r
  %i.fn = load ptr, ptr %1, align 8, !tbaa !34
  %i.fo = sext i32 %i.n to i64
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 %i.fo
  store ptr %i.fp, ptr %1, align 8, !tbaa !34
  br label %packint.exit

bb.s:                                             ; preds = %._crit_edge
  %i.fq = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.z) #7 ; 2 uses
  %i.fr = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7
  %i.fs = load i32, ptr %i.h, align 8, !tbaa !16
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.t, label %copywithendian.exit97.loopexit

bb.t:                                             ; preds = %bb.s
  %i.fu = bitcast double %i.fq to <8 x i8>
  br label %copywithendian.exit97

copywithendian.exit97.loopexit:                   ; preds = %bb.s
  %i.fv = bitcast double %i.fq to <8 x i8>
  %i.fw = shufflevector <8 x i8> %i.fv, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br label %copywithendian.exit97

copywithendian.exit97:                            ; preds = %copywithendian.exit97.loopexit, %bb.t
  %storemerge205 = phi <8 x i8> [ %i.fw, %copywithendian.exit97.loopexit ], [ %i.fu, %bb.t ]
  store <8 x i8> %storemerge205, ptr %i.fr, align 1
  %i.fx = load ptr, ptr %1, align 8, !tbaa !34
  %i.fy = sext i32 %i.n to i64
  %i.fz = getelementptr inbounds i8, ptr %i.fx, i64 %i.fy
  store ptr %i.fz, ptr %1, align 8, !tbaa !34
  br label %packint.exit

bb.u:                                             ; preds = %._crit_edge
  %i.ga = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.z) #7 ; 2 uses
  %i.gb = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7
  %i.gc = load i32, ptr %i.h, align 8, !tbaa !16
  %i.gd = icmp eq i32 %i.gc, 1
  br i1 %i.gd, label %bb.v, label %copywithendian.exit104.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ge = bitcast double %i.ga to <8 x i8>
  br label %copywithendian.exit104

copywithendian.exit104.loopexit:                  ; preds = %bb.u
  %i.gf = bitcast double %i.ga to <8 x i8>
  %i.gg = shufflevector <8 x i8> %i.gf, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br label %copywithendian.exit104

copywithendian.exit104:                           ; preds = %copywithendian.exit104.loopexit, %bb.v
  %storemerge = phi <8 x i8> [ %i.gg, %copywithendian.exit104.loopexit ], [ %i.ge, %bb.v ]
  store <8 x i8> %storemerge, ptr %i.gb, align 1
  %i.gh = load ptr, ptr %1, align 8, !tbaa !34
  %i.gi = sext i32 %i.n to i64
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 %i.gi
  store ptr %i.gj, ptr %1, align 8, !tbaa !34
  br label %packint.exit

bb.w:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.gk = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.d) #7
  %i.gl = load i64, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %i.gm = sext i32 %i.n to i64                    ; 3 uses
  %.not60 = icmp ugt i64 %i.gl, %i.gm
  br i1 %.not60, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gn = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.6) #7 ; 0 uses
  %.pre190 = load i64, ptr %i.d, align 8, !tbaa !22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.go = phi i64 [ %.pre190, %bb.x ], [ %i.gl, %bb.w ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.gk, i64 noundef %i.go) #7
  %i.gp = load i64, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %i.gq = add i64 %i.gp, 1
  store i64 %i.gq, ptr %i.d, align 8, !tbaa !22
  %i.gr = icmp ult i64 %i.gp, %i.gm
  br i1 %i.gr, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %bb.y, %bb.aa
  %i.gs = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.gt = icmp ult ptr %i.gs, %i.k
  br i1 %i.gt, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph139
  %i.gu = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph139
  %i.gv = phi ptr [ %.pre191, %bb.z ], [ %i.gs, %.lr.ph139 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  store ptr %i.gw, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.gv, align 1, !tbaa !18
  %i.gx = load i64, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.d, align 8, !tbaa !22
  %i.gz = icmp ult i64 %i.gx, %i.gm
  br i1 %i.gz, label %.lr.ph139, label %._crit_edge140, !llvm.loop !29

._crit_edge140:                                   ; preds = %bb.aa, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %packint.exit

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.ha = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.e) #7
  %i.hb = icmp sgt i32 %i.n, 7
  br i1 %i.hb, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hc = load i64, ptr %i.e, align 8, !tbaa !22
  %i.hd = shl nsw i32 %i.n, 3
  %i.he = zext nneg i32 %i.hd to i64
  %.highbits = lshr i64 %i.hc, %i.he
  %i.hf = icmp eq i64 %.highbits, 0
  br i1 %i.hf, label %.thread135, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hg = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread135

.thread135:                                       ; preds = %bb.ad, %bb.ac
  %i.hh = load i32, ptr %i.h, align 8, !tbaa !16
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.hi = load i32, ptr %i.h, align 8, !tbaa !16
  %i.hj = icmp samesign ugt i32 %i.n, 8192
  br i1 %i.hj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hk = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.n, i32 noundef 8192) #7 ; 0 uses
  br label %packint.exit130

bb.ag:                                            ; preds = %.thread135, %bb.ae
  %i.hl = phi i32 [ %i.hh, %.thread135 ], [ %i.hi, %bb.ae ]
  %i.hm = load i64, ptr %i.e, align 8, !tbaa !22  ; 5 uses
  %i.hn = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 11 uses
  %i.ho = trunc i64 %i.hm to i8
  %.not.i105 = icmp eq i32 %i.hl, 0               ; 2 uses
  %i.hp = add i32 %i.n, -1                        ; 2 uses
  %i.hq = select i1 %.not.i105, i32 %i.hp, i32 0
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %i.hn, i64 %i.hr
  store i8 %i.ho, ptr %i.hs, align 1, !tbaa !18
  %i.ht = icmp sgt i32 %i.n, 1
  br i1 %i.ht, label %.lr.ph.i107, label %.loopexit.i106

.lr.ph.i107:                                      ; preds = %bb.ag
  br i1 %.not.i105, label %.lr.ph.split.us.preheader.i120, label %.lr.ph.split.preheader.i108

.lr.ph.split.preheader.i108:                      ; preds = %.lr.ph.i107
  %wide.trip.count.i109 = zext nneg i32 %i.n to i64
  %i.hu = add nsw i64 %wide.trip.count.i109, -1   ; 2 uses
  %xtraiter = and i64 %i.hu, 3                    ; 3 uses
  %i.hv = add nsw i32 %i.n, -2
  %i.hw = icmp ult i32 %i.hv, 3
  br i1 %i.hw, label %.lr.ph.split.i110.epil.preheader, label %.lr.ph.split.preheader.i108.new

.lr.ph.split.preheader.i108.new:                  ; preds = %.lr.ph.split.preheader.i108
  %unroll_iter = and i64 %i.hu, -4
  br label %.lr.ph.split.i110

.lr.ph.split.us.preheader.i120:                   ; preds = %.lr.ph.i107
  %i.hx = zext nneg i32 %i.hp to i64              ; 5 uses
  %wide.trip.count42.i121 = zext nneg i32 %i.n to i64
  %i.hy = add nsw i64 %wide.trip.count42.i121, -1 ; 2 uses
  %xtraiter209 = and i64 %i.hy, 3                 ; 3 uses
  %i.hz = add nsw i32 %i.n, -2
  %i.ia = icmp ult i32 %i.hz, 3
  br i1 %i.ia, label %.lr.ph.split.us.i122.epil.preheader, label %.lr.ph.split.us.preheader.i120.new

.lr.ph.split.us.preheader.i120.new:               ; preds = %.lr.ph.split.us.preheader.i120
  %unroll_iter213 = and i64 %i.hy, -4
  %invariant.gep = getelementptr i8, ptr %i.hn, i64 %i.hx
  br label %.lr.ph.split.us.i122

.lr.ph.split.us.i122:                             ; preds = %.lr.ph.split.us.i122, %.lr.ph.split.us.preheader.i120.new
  %indvars.iv39.i123 = phi i64 [ 1, %.lr.ph.split.us.preheader.i120.new ], [ %indvars.iv.next40.i125.3, %.lr.ph.split.us.i122 ] ; 5 uses
  %.03033.us.i124 = phi i64 [ %i.hm, %.lr.ph.split.us.preheader.i120.new ], [ %i.ik, %.lr.ph.split.us.i122 ] ; 4 uses
  %niter214 = phi i64 [ 0, %.lr.ph.split.us.preheader.i120.new ], [ %niter214.next.3, %.lr.ph.split.us.i122 ]
  %i.ib = lshr i64 %.03033.us.i124, 8
  %i.ic = trunc i64 %i.ib to i8
  %i.id = sub nuw nsw i64 %i.hx, %indvars.iv39.i123
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.id
  store i8 %i.ic, ptr %i.ie, align 1, !tbaa !18
  %indvars.iv.next40.i125.neg = xor i64 %indvars.iv39.i123, -1
  %i.if = lshr i64 %.03033.us.i124, 16
  %i.ig = trunc i64 %i.if to i8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next40.i125.neg
  store i8 %i.ig, ptr %gep, align 1, !tbaa !18
  %indvars.iv.next40.i125.1 = add nuw nsw i64 %indvars.iv39.i123, 2
  %i.ih = lshr i64 %.03033.us.i124, 24
  %i.ii = trunc i64 %i.ih to i8
  %7 = sub nuw nsw i64 %i.hx, %indvars.iv.next40.i125.1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hn, i64 %7
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !18
  %indvars.iv.next40.i125.2 = add nuw nsw i64 %indvars.iv39.i123, 3
  %i.ik = lshr i64 %.03033.us.i124, 32            ; 3 uses
  %i.il = trunc i64 %i.ik to i8
  %8 = sub nuw nsw i64 %i.hx, %indvars.iv.next40.i125.2
  %i.im = getelementptr inbounds nuw i8, ptr %i.hn, i64 %8
  store i8 %i.il, ptr %i.im, align 1, !tbaa !18
  %indvars.iv.next40.i125.3 = add nuw nsw i64 %indvars.iv39.i123, 4 ; 2 uses
  %niter214.next.3 = add nuw i64 %niter214, 4     ; 2 uses
  %niter214.ncmp.3 = icmp eq i64 %niter214.next.3, %unroll_iter213
  br i1 %niter214.ncmp.3, label %.loopexit.i106.loopexit.unr-lcssa, label %.lr.ph.split.us.i122, !llvm.loop !24

.lr.ph.split.i110:                                ; preds = %.lr.ph.split.i110, %.lr.ph.split.preheader.i108.new
  %indvars.iv.i111 = phi i64 [ 1, %.lr.ph.split.preheader.i108.new ], [ %indvars.iv.next.i113.3, %.lr.ph.split.i110 ] ; 5 uses
  %.03033.i112 = phi i64 [ %i.hm, %.lr.ph.split.preheader.i108.new ], [ %i.iy, %.lr.ph.split.i110 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.i108.new ], [ %niter.next.3, %.lr.ph.split.i110 ]
  %i.in = lshr i64 %.03033.i112, 8
  %i.io = trunc i64 %i.in to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv.i111
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !18
  %i.iq = lshr i64 %.03033.i112, 16
  %i.ir = trunc i64 %i.iq to i8
  %i.is = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv.i111
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  store i8 %i.ir, ptr %i.it, align 1, !tbaa !18
  %i.iu = lshr i64 %.03033.i112, 24
  %i.iv = trunc i64 %i.iu to i8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv.i111
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  store i8 %i.iv, ptr %i.ix, align 1, !tbaa !18
  %i.iy = lshr i64 %.03033.i112, 32               ; 3 uses
  %i.iz = trunc i64 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv.i111
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 3
  store i8 %i.iz, ptr %i.jb, align 1, !tbaa !18
  %indvars.iv.next.i113.3 = add nuw nsw i64 %indvars.iv.i111, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i106.loopexit207.unr-lcssa, label %.lr.ph.split.i110, !llvm.loop !24

.loopexit.i106.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i122
  %lcmp.mod211.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod211.not, label %.loopexit.i106, label %.lr.ph.split.us.i122.epil.preheader

.lr.ph.split.us.i122.epil.preheader:              ; preds = %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i120
  %indvars.iv39.i123.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i120 ], [ %indvars.iv.next40.i125.3, %.loopexit.i106.loopexit.unr-lcssa ]
  %.03033.us.i124.epil.init = phi i64 [ %i.hm, %.lr.ph.split.us.preheader.i120 ], [ %i.ik, %.loopexit.i106.loopexit.unr-lcssa ]
  %lcmp.mod212 = icmp ne i64 %xtraiter209, 0
  call void @llvm.assume(i1 %lcmp.mod212)
  br label %.lr.ph.split.us.i122.epil

.lr.ph.split.us.i122.epil:                        ; preds = %.lr.ph.split.us.i122.epil, %.lr.ph.split.us.i122.epil.preheader
  %indvars.iv39.i123.epil = phi i64 [ %indvars.iv39.i123.epil.init, %.lr.ph.split.us.i122.epil.preheader ], [ %indvars.iv.next40.i125.epil, %.lr.ph.split.us.i122.epil ] ; 2 uses
  %.03033.us.i124.epil = phi i64 [ %.03033.us.i124.epil.init, %.lr.ph.split.us.i122.epil.preheader ], [ %i.jc, %.lr.ph.split.us.i122.epil ]
  %epil.iter210 = phi i64 [ 0, %.lr.ph.split.us.i122.epil.preheader ], [ %epil.iter210.next, %.lr.ph.split.us.i122.epil ]
  %i.jc = lshr i64 %.03033.us.i124.epil, 8        ; 2 uses
  %i.jd = trunc i64 %i.jc to i8
  %i.je = sub nuw nsw i64 %i.hx, %indvars.iv39.i123.epil
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.je
  store i8 %i.jd, ptr %i.jf, align 1, !tbaa !18
  %indvars.iv.next40.i125.epil = add nuw nsw i64 %indvars.iv39.i123.epil, 1
  %epil.iter210.next = add i64 %epil.iter210, 1   ; 2 uses
  %epil.iter210.cmp.not = icmp eq i64 %epil.iter210.next, %xtraiter209
  br i1 %epil.iter210.cmp.not, label %.loopexit.i106, label %.lr.ph.split.us.i122.epil, !llvm.loop !30

.loopexit.i106.loopexit207.unr-lcssa:             ; preds = %.lr.ph.split.i110
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i106, label %.lr.ph.split.i110.epil.preheader

.lr.ph.split.i110.epil.preheader:                 ; preds = %.loopexit.i106.loopexit207.unr-lcssa, %.lr.ph.split.preheader.i108
  %indvars.iv.i111.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i108 ], [ %indvars.iv.next.i113.3, %.loopexit.i106.loopexit207.unr-lcssa ]
  %.03033.i112.epil.init = phi i64 [ %i.hm, %.lr.ph.split.preheader.i108 ], [ %i.iy, %.loopexit.i106.loopexit207.unr-lcssa ]
  %lcmp.mod208 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod208)
  br label %.lr.ph.split.i110.epil

.lr.ph.split.i110.epil:                           ; preds = %.lr.ph.split.i110.epil, %.lr.ph.split.i110.epil.preheader
  %indvars.iv.i111.epil = phi i64 [ %indvars.iv.i111.epil.init, %.lr.ph.split.i110.epil.preheader ], [ %indvars.iv.next.i113.epil, %.lr.ph.split.i110.epil ] ; 2 uses
  %.03033.i112.epil = phi i64 [ %.03033.i112.epil.init, %.lr.ph.split.i110.epil.preheader ], [ %i.jg, %.lr.ph.split.i110.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.split.i110.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.i110.epil ]
  %i.jg = lshr i64 %.03033.i112.epil, 8           ; 2 uses
  %i.jh = trunc i64 %i.jg to i8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv.i111.epil
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !18
  %indvars.iv.next.i113.epil = add nuw nsw i64 %indvars.iv.i111.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i106, label %.lr.ph.split.i110.epil, !llvm.loop !31

.loopexit.i106:                                   ; preds = %.loopexit.i106.loopexit207.unr-lcssa, %.lr.ph.split.i110.epil, %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.split.us.i122.epil, %bb.ag
  %i.jj = load ptr, ptr %1, align 8, !tbaa !34
  %i.jk = sext i32 %i.n to i64
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 %i.jk
  store ptr %i.jl, ptr %1, align 8, !tbaa !34
  br label %packint.exit130

packint.exit130:                                  ; preds = %bb.af, %.loopexit.i106
  %i.jm = load i64, ptr %i.e, align 8, !tbaa !22
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.ha, i64 noundef %i.jm) #7
  %i.jn = load i64, ptr %i.e, align 8, !tbaa !22
  %i.jo = add i64 %i.jn, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %packint.exit

bb.ah:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.jp = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.jq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jp) #8 ; 2 uses
  %i.jr = load i64, ptr %i.f, align 8, !tbaa !22
  %i.js = icmp eq i64 %i.jq, %i.jr
  br i1 %i.js, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jt = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.8) #7 ; 0 uses
  %.pre188 = load i64, ptr %i.f, align 8, !tbaa !22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ju = phi i64 [ %.pre188, %bb.ai ], [ %i.jq, %bb.ah ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.jp, i64 noundef %i.ju) #7
  %i.jv = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.jw = icmp ult ptr %i.jv, %i.k
  br i1 %i.jw, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jx = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre189 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.jy = phi ptr [ %.pre189, %bb.ak ], [ %i.jv, %bb.aj ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 1
  store ptr %i.jz, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.jy, align 1, !tbaa !18
  %i.ka = load i64, ptr %i.f, align 8, !tbaa !22
  %i.kb = add i64 %i.q, 1
  %i.kc = add i64 %i.kb, %i.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %packint.exit

bb.am:                                            ; preds = %._crit_edge
  %i.kd = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.ke = icmp ult ptr %i.kd, %i.k
  br i1 %i.ke, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kf = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.kg = phi ptr [ %.pre187, %bb.an ], [ %i.kd, %bb.am ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  store ptr %i.kh, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.kg, align 1, !tbaa !18
  br label %packint.exit

default.unreachable200:                           ; preds = %._crit_edge
  unreachable

packint.exit:                                     ; preds = %.loopexit.i64, %bb.o, %.loopexit.i, %bb.i, %._crit_edge, %._crit_edge, %bb.ao, %bb.al, %packint.exit130, %._crit_edge140, %copywithendian.exit104, %copywithendian.exit97, %copywithendian.exit
  %.155 = phi i64 [ %i.kc, %bb.al ], [ %i.q, %._crit_edge ], [ %i.q, %.loopexit.i ], [ %i.q, %copywithendian.exit ], [ %i.q, %copywithendian.exit97 ], [ %i.q, %copywithendian.exit104 ], [ %i.q, %._crit_edge140 ], [ %i.jo, %packint.exit130 ], [ %i.q, %bb.ao ], [ %i.q, %._crit_edge ], [ %i.q, %bb.i ], [ %i.q, %bb.o ], [ %i.q, %.loopexit.i64 ]
  %.1 = phi i32 [ %i.z, %bb.al ], [ %.0143, %._crit_edge ], [ %i.z, %.loopexit.i ], [ %i.z, %copywithendian.exit ], [ %i.z, %copywithendian.exit97 ], [ %i.z, %copywithendian.exit104 ], [ %i.z, %._crit_edge140 ], [ %i.z, %packint.exit130 ], [ %.0143, %bb.ao ], [ %.0143, %._crit_edge ], [ %i.z, %bb.i ], [ %i.z, %bb.o ], [ %i.z, %.loopexit.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.ki = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !18
  %.not = icmp eq i8 %i.kj, 0
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

end_hunk_0
begin_hunk_1_@str_unpack:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !17
  %i.s = load i8, ptr %i.e, align 1, !tbaa !18
  %.not6087 = icmp eq i8 %i.s, 0
  br i1 %.not6087, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.y
  %.089 = phi i32 [ %.1, %bb.y ], [ 0, %bb.e ]    ; 4 uses
  %.05888 = phi i64 [ %i.gy, %bb.y ], [ %i.o, %bb.e ] ; 3 uses
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
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !18
  %.7.insert.ext = zext i8 %i.bp to i64
  %.7.insert.shift = shl nuw i64 %.7.insert.ext, 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !18
  %.6.insert.ext = zext i8 %i.br to i64
  %.6.insert.shift = shl nuw nsw i64 %.6.insert.ext, 48
  %.6.insert.insert = or disjoint i64 %.7.insert.shift, %.6.insert.shift
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !18
  %.5.insert.ext = zext i8 %i.bt to i64
  %.5.insert.shift = shl nuw nsw i64 %.5.insert.ext, 40
  %.5.insert.insert = or disjoint i64 %.6.insert.insert, %.5.insert.shift
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !18
  %.4.insert.ext = zext i8 %i.bv to i64
  %.4.insert.shift = shl nuw nsw i64 %.4.insert.ext, 32
  %.4.insert.insert = or disjoint i64 %.5.insert.insert, %.4.insert.shift
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  %i.bx = load i8, ptr %i.bu, align 1, !tbaa !18
  %.3.insert.ext = zext i8 %i.bx to i64
  %.3.insert.shift = shl nuw nsw i64 %.3.insert.ext, 24
  %.3.insert.insert = or disjoint i64 %.4.insert.insert, %.3.insert.shift
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !18
  %.2.insert.ext = zext i8 %i.bz to i64
  %.2.insert.shift = shl nuw nsw i64 %.2.insert.ext, 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !18
  %.1.insert.ext = zext i8 %i.cb to i64
  %.1.insert.shift = shl nuw nsw i64 %.1.insert.ext, 8
  %.1.insert.mask = or disjoint i64 %.3.insert.insert, %.2.insert.shift
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !18
  %.0.insert.ext = zext i8 %i.cc to i64
  %.0.insert.mask = or i64 %.1.insert.mask, %.1.insert.shift
  %.0.insert.insert = or i64 %.0.insert.mask, %.0.insert.ext
  %i.cd = bitcast i64 %.0.insert.insert to double
  br label %copywithendian.exit75

bb.n:                                             ; preds = %bb.m
  %i.ce = load double, ptr %i.bl, align 1
  br label %copywithendian.exit75

copywithendian.exit75:                            ; preds = %.preheader92, %bb.n
  %.0 = phi double [ %i.ce, %bb.n ], [ %i.cd, %.preheader92 ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.0) #7
  br label %bb.y

bb.o:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.cf, i64 noundef %i.x) #7
  br label %bb.y

bb.p:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 19 uses
  %i.ch = icmp sgt i32 %i.w, 0
  br i1 %i.ch, label %.lr.ph.i, label %unpackint.exit.thread

.lr.ph.i:                                         ; preds = %bb.p
  %i.ci = load i32, ptr %i.q, align 8, !tbaa !16
  %.not41.i = icmp eq i32 %i.ci, 0
  %i.cj = zext nneg i32 %i.w to i64               ; 10 uses
  %i.ck = call i64 @llvm.umin.i64(i64 %i.cj, i64 8) ; 16 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cl = sub nsw i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !18
  %i.co = zext i8 %i.cn to i64                    ; 2 uses
  %.not182 = icmp eq i32 %i.w, 1
  br i1 %.not182, label %._crit_edge.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %indvars.iv.next52.i = add nsw i64 %i.ck, -1
  %i.cp = shl nuw nsw i64 %i.co, 8
  %2 = sub nsw i64 %i.cj, %indvars.iv.next52.i
  %i.cq = getelementptr inbounds i8, ptr %i.cg, i64 %2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !18
  %i.cs = zext i8 %i.cr to i64
  %i.ct = or disjoint i64 %i.cp, %i.cs            ; 2 uses
  %i.cu = icmp ugt i32 %i.w, 2
  br i1 %i.cu, label %.lr.ph.split.us.i.2, label %._crit_edge.i

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %indvars.iv.next52.i.1 = add nsw i64 %i.ck, -2
  %i.cv = shl nuw nsw i64 %i.ct, 8
  %3 = sub nsw i64 %i.cj, %indvars.iv.next52.i.1
  %i.cw = getelementptr inbounds i8, ptr %i.cg, i64 %3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !18
  %i.cy = zext i8 %i.cx to i64
  %i.cz = or disjoint i64 %i.cv, %i.cy            ; 2 uses
  %.not183 = icmp eq i32 %i.w, 3
  br i1 %.not183, label %._crit_edge.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %indvars.iv.next52.i.2 = add nsw i64 %i.ck, -3
  %i.da = shl nuw nsw i64 %i.cz, 8
  %4 = sub nsw i64 %i.cj, %indvars.iv.next52.i.2
  %i.db = getelementptr inbounds i8, ptr %i.cg, i64 %4
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !18
  %i.dd = zext i8 %i.dc to i64
  %i.de = or disjoint i64 %i.da, %i.dd            ; 2 uses
  %i.df = icmp ugt i32 %i.w, 4
  br i1 %i.df, label %.lr.ph.split.us.i.4, label %._crit_edge.i

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %indvars.iv.next52.i.3 = add nsw i64 %i.ck, -4
  %i.dg = shl i64 %i.de, 8
  %5 = sub nsw i64 %i.cj, %indvars.iv.next52.i.3
  %i.dh = getelementptr inbounds i8, ptr %i.cg, i64 %5
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !18
  %i.dj = zext i8 %i.di to i64
  %i.dk = or disjoint i64 %i.dg, %i.dj            ; 2 uses
  %.not184 = icmp eq i32 %i.w, 5
  br i1 %.not184, label %._crit_edge.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %indvars.iv.next52.i.4 = add nsw i64 %i.ck, -5
  %i.dl = shl i64 %i.dk, 8
  %6 = sub nsw i64 %i.cj, %indvars.iv.next52.i.4
  %i.dm = getelementptr inbounds i8, ptr %i.cg, i64 %6
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !18
  %i.do = zext i8 %i.dn to i64
  %i.dp = or disjoint i64 %i.dl, %i.do            ; 2 uses
  %i.dq = icmp ugt i32 %i.w, 6
  br i1 %i.dq, label %.lr.ph.split.us.i.6, label %._crit_edge.i

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %indvars.iv.next52.i.5 = add nsw i64 %i.ck, -6
  %i.dr = shl i64 %i.dp, 8
  %7 = sub nsw i64 %i.cj, %indvars.iv.next52.i.5
  %i.ds = getelementptr inbounds i8, ptr %i.cg, i64 %7
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !18
  %i.du = zext i8 %i.dt to i64
  %i.dv = or disjoint i64 %i.dr, %i.du            ; 2 uses
  %.not185 = icmp eq i32 %i.w, 7
  br i1 %.not185, label %._crit_edge.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %indvars.iv.next52.i.6 = add nsw i64 %i.ck, -7
  %i.dw = shl i64 %i.dv, 8
  %8 = sub nsw i64 %i.cj, %indvars.iv.next52.i.6
  %i.dx = getelementptr inbounds i8, ptr %i.cg, i64 %8
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !18
  %i.dz = zext i8 %i.dy to i64
  %i.ea = or disjoint i64 %i.dw, %i.dz
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.eb = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.ec = getelementptr i8, ptr %i.eb, i64 -1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !18
  %i.ee = zext i8 %i.ed to i64                    ; 2 uses
  %.not178 = icmp eq i32 %i.w, 1
  br i1 %.not178, label %._crit_edge.i.thread, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.ef = shl nuw nsw i64 %i.ee, 8
  %i.eg = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.eh = getelementptr i8, ptr %i.eg, i64 -2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !18
  %i.ej = zext i8 %i.ei to i64
  %i.ek = or disjoint i64 %i.ef, %i.ej            ; 2 uses
  %i.el = icmp ugt i32 %i.w, 2
  br i1 %i.el, label %.lr.ph.split.i.2, label %._crit_edge.i.thread

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.em = shl nuw nsw i64 %i.ek, 8
  %i.en = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.eo = getelementptr i8, ptr %i.en, i64 -3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !18
  %i.eq = zext i8 %i.ep to i64
  %i.er = or disjoint i64 %i.em, %i.eq            ; 2 uses
  %.not179 = icmp eq i32 %i.w, 3
  br i1 %.not179, label %._crit_edge.i.thread, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.es = shl nuw nsw i64 %i.er, 8
  %i.et = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.eu = getelementptr i8, ptr %i.et, i64 -4
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !18
  %i.ew = zext i8 %i.ev to i64
  %i.ex = or disjoint i64 %i.es, %i.ew            ; 2 uses
  %i.ey = icmp ugt i32 %i.w, 4
  br i1 %i.ey, label %.lr.ph.split.i.4, label %._crit_edge.i.thread

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.ez = shl i64 %i.ex, 8
  %i.fa = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fb = getelementptr i8, ptr %i.fa, i64 -5
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !18
  %i.fd = zext i8 %i.fc to i64
  %i.fe = or disjoint i64 %i.ez, %i.fd            ; 2 uses
  %.not180 = icmp eq i32 %i.w, 5
  br i1 %.not180, label %._crit_edge.i.thread, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.ff = shl i64 %i.fe, 8
  %i.fg = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fh = getelementptr i8, ptr %i.fg, i64 -6
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !18
  %i.fj = zext i8 %i.fi to i64
  %i.fk = or disjoint i64 %i.ff, %i.fj            ; 2 uses
  %i.fl = icmp ugt i32 %i.w, 6
  br i1 %i.fl, label %.lr.ph.split.i.6, label %._crit_edge.i.thread

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.fm = shl i64 %i.fk, 8
  %i.fn = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fo = getelementptr i8, ptr %i.fn, i64 -7
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !18
  %i.fq = zext i8 %i.fp to i64
  %i.fr = or disjoint i64 %i.fm, %i.fq            ; 2 uses
  %.not181 = icmp eq i32 %i.w, 7
  br i1 %.not181, label %._crit_edge.i.thread, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.fs = shl i64 %i.fr, 8
  %i.ft = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !18
  %i.fw = zext i8 %i.fv to i64
  %i.fx = or disjoint i64 %i.fs, %i.fw
  br label %._crit_edge.i.thread

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.7, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i
  %.lcssa176 = phi i64 [ %i.co, %.lr.ph.split.us.i ], [ %i.ct, %.lr.ph.split.us.i.1 ], [ %i.cz, %.lr.ph.split.us.i.2 ], [ %i.de, %.lr.ph.split.us.i.3 ], [ %i.dk, %.lr.ph.split.us.i.4 ], [ %i.dp, %.lr.ph.split.us.i.5 ], [ %i.dv, %.lr.ph.split.us.i.6 ], [ %i.ea, %.lr.ph.split.us.i.7 ] ; 2 uses
  %i.fy = icmp samesign ult i32 %i.w, 9
  br i1 %i.fy, label %unpackint.exit, label %.lr.ph46.split.us.i

._crit_edge.i.thread:                             ; preds = %.lr.ph.split.i.7, %.lr.ph.split.i.6, %.lr.ph.split.i.5, %.lr.ph.split.i.4, %.lr.ph.split.i.3, %.lr.ph.split.i.2, %.lr.ph.split.i.1, %.lr.ph.split.i
  %.lcssa = phi i64 [ %i.ee, %.lr.ph.split.i ], [ %i.ek, %.lr.ph.split.i.1 ], [ %i.er, %.lr.ph.split.i.2 ], [ %i.ex, %.lr.ph.split.i.3 ], [ %i.fe, %.lr.ph.split.i.4 ], [ %i.fk, %.lr.ph.split.i.5 ], [ %i.fr, %.lr.ph.split.i.6 ], [ %i.fx, %.lr.ph.split.i.7 ] ; 2 uses
  %i.fz = icmp samesign ult i32 %i.w, 9
  br i1 %i.fz, label %unpackint.exit, label %.lr.ph46.split.i.preheader

.lr.ph46.split.i.preheader:                       ; preds = %._crit_edge.i.thread
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i

.lr.ph46.split.us.i:                              ; preds = %._crit_edge.i, %bb.r
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %bb.r ], [ 8, %._crit_edge.i ] ; 2 uses
  %i.ga = trunc nuw nsw i64 %indvars.iv57.i to i32
  %i.gb = xor i32 %i.ga, -1
  %i.gc = add nsw i32 %i.w, %i.gb
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %i.cg, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !18
  %.not39.us.i = icmp eq i8 %i.gf, 0
  br i1 %.not39.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph46.split.us.i
  %i.gg = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %i.w) #7 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph46.split.us.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next58.i, %i.cj
  br i1 %exitcond97.not, label %unpackint.exit, label %.lr.ph46.split.us.i, !llvm.loop !0

.lr.ph46.split.i:                                 ; preds = %.lr.ph46.split.i.preheader, %bb.t
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %bb.t ], [ 8, %.lr.ph46.split.i.preheader ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv53.i
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !18
  %.not39.i = icmp eq i8 %i.gi, 0
  br i1 %.not39.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph46.split.i
  %i.gj = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %i.w) #7 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph46.split.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count
  br i1 %exitcond.not, label %unpackint.exit, label %.lr.ph46.split.i, !llvm.loop !0

unpackint.exit:                                   ; preds = %bb.t, %bb.r, %._crit_edge.i.thread, %._crit_edge.i
  %.0.lcssa.i166 = phi i64 [ %.lcssa, %._crit_edge.i.thread ], [ %.lcssa176, %bb.r ], [ %.lcssa176, %._crit_edge.i ], [ %.lcssa, %bb.t ] ; 3 uses
  %i.gk = load i64, ptr %i.b, align 8, !tbaa !22
  %i.gl = add i64 %i.ac, %i.x
  %i.gm = sub i64 %i.gk, %i.gl
  %.not62 = icmp ugt i64 %.0.lcssa.i166, %i.gm
  br i1 %.not62, label %bb.u, label %unpackint.exit.thread

bb.u:                                             ; preds = %unpackint.exit
  %i.gn = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.16) #7 ; 0 uses
  br label %unpackint.exit.thread

unpackint.exit.thread:                            ; preds = %bb.p, %bb.u, %unpackint.exit
  %.1.i79 = phi i64 [ %.0.lcssa.i166, %unpackint.exit ], [ %.0.lcssa.i166, %bb.u ], [ 0, %bb.p ] ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.cg, i64 %i.x
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.go, i64 noundef %.1.i79) #7
  %i.gp = add i64 %.1.i79, %i.ac
  br label %bb.y

bb.v:                                             ; preds = %bb.g
  %i.gq = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 2 uses
  %i.gr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gq) #8 ; 3 uses
  %i.gs = add i64 %i.gr, %i.ac
  %i.gt = load i64, ptr %i.b, align 8, !tbaa !22
  %i.gu = icmp ult i64 %i.gs, %i.gt
  br i1 %i.gu, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gv = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.18) #7 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.gq, i64 noundef %i.gr) #7
  %i.gw = add i64 %i.ac, 1
  %i.gx = add i64 %i.gw, %i.gr
  br label %bb.y

default.unreachable163:                           ; preds = %bb.g
  unreachable

bb.y:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.x, %unpackint.exit.thread, %bb.o, %copywithendian.exit75, %copywithendian.exit69, %copywithendian.exit, %bb.h
  %.159 = phi i64 [ %i.gx, %bb.x ], [ %i.ac, %bb.h ], [ %i.ac, %copywithendian.exit ], [ %i.ac, %copywithendian.exit69 ], [ %i.ac, %copywithendian.exit75 ], [ %i.ac, %bb.o ], [ %i.gp, %unpackint.exit.thread ], [ %i.ac, %bb.g ], [ %i.ac, %bb.g ], [ %i.ac, %bb.g ]
  %.1 = phi i32 [ %i.ad, %bb.x ], [ %i.ad, %bb.h ], [ %i.ad, %copywithendian.exit ], [ %i.ad, %copywithendian.exit69 ], [ %i.ad, %copywithendian.exit75 ], [ %i.ad, %bb.o ], [ %i.ad, %unpackint.exit.thread ], [ %.089, %bb.g ], [ %.089, %bb.g ], [ %.089, %bb.g ] ; 2 uses
  %i.gy = add i64 %.159, %i.x                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.gz = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !18
  %.not60 = icmp eq i8 %i.ha, 0
  br i1 %.not60, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %bb.y
  %i.hb = add i64 %i.gy, 1
  %i.hc = add nsw i32 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.058.lcssa = phi i64 [ %.0.i, %bb.e ], [ %i.hb, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 1, %bb.e ], [ %i.hc, %._crit_edge.loopexit ]
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %.058.lcssa) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_packsize(ptr noundef %0) #0 {
end_hunk_1
begin_hunk_2_@getoption:bb.a
  %i.ac = mul nsw i32 %.0.i.i38, 10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 3 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !12
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !18
  %i.af = sext i8 %i.ae to i32
  %i.ag = add i32 %i.ac, -48
  %i.ah = add i32 %i.ag, %i.af                    ; 5 uses
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !18
  %i.aj = sext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48
  %i.al = icmp ult i32 %i.ak, 10
  %i.am = icmp slt i32 %i.ah, 214748364
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.preheader.i.i37, label %getnum.exit.i39, !llvm.loop !38

getnum.exit.i39:                                  ; preds = %.preheader.i.i37
  %i.ao = add i32 %i.ah, -17
  %or.cond.i41 = icmp ult i32 %i.ao, -16
  br i1 %or.cond.i41, label %bb.q, label %getnumlimit.exit43

bb.q:                                             ; preds = %getnum.exit.i39
  %i.ap = load ptr, ptr %0, align 8, !tbaa !15
  %i.aq = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.ap, ptr noundef nonnull @.str.13, i32 noundef %i.ah, i32 noundef 16) #7
  br label %getnumlimit.exit43

getnumlimit.exit43:                               ; preds = %bb.p, %getnum.exit.i39, %bb.q
  %.0.i42 = phi i32 [ %i.aq, %bb.q ], [ %i.ah, %getnum.exit.i39 ], [ 4, %bb.p ]
  store i32 %.0.i42, ptr %2, align 4, !tbaa !19
  br label %bb.ae

bb.r:                                             ; preds = %bb.a
  %i.ar = load i8, ptr %i.b, align 1, !tbaa !18
  %i.as = sext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -58
  %i.au = icmp ult i32 %i.at, -10
  br i1 %i.au, label %getnumlimit.exit50, label %.preheader.i.i44

.preheader.i.i44:                                 ; preds = %bb.r, %.preheader.i.i44
  %i.av = phi ptr [ %i.ax, %.preheader.i.i44 ], [ %i.b, %bb.r ] ; 2 uses
  %.0.i.i45 = phi i32 [ %i.bb, %.preheader.i.i44 ], [ 0, %bb.r ]
  %i.aw = mul nsw i32 %.0.i.i45, 10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 3 uses
  store ptr %i.ax, ptr %1, align 8, !tbaa !12
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !18
  %i.az = sext i8 %i.ay to i32
  %i.ba = add i32 %i.aw, -48
  %i.bb = add i32 %i.ba, %i.az                    ; 5 uses
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.bd = sext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48
  %i.bf = icmp ult i32 %i.be, 10
  %i.bg = icmp slt i32 %i.bb, 214748364
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %.preheader.i.i44, label %getnum.exit.i46, !llvm.loop !38

getnum.exit.i46:                                  ; preds = %.preheader.i.i44
  %i.bi = add i32 %i.bb, -17
  %or.cond.i48 = icmp ult i32 %i.bi, -16
  br i1 %or.cond.i48, label %bb.s, label %getnumlimit.exit50

bb.s:                                             ; preds = %getnum.exit.i46
  %i.bj = load ptr, ptr %0, align 8, !tbaa !15
  %i.bk = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.bj, ptr noundef nonnull @.str.13, i32 noundef %i.bb, i32 noundef 16) #7
  br label %getnumlimit.exit50

getnumlimit.exit50:                               ; preds = %bb.r, %getnum.exit.i46, %bb.s
  %.0.i49 = phi i32 [ %i.bk, %bb.s ], [ %i.bb, %getnum.exit.i46 ], [ 8, %bb.r ]
  store i32 %.0.i49, ptr %2, align 4, !tbaa !19
  br label %bb.ae

bb.t:                                             ; preds = %bb.a
  %i.bl = load i8, ptr %i.b, align 1, !tbaa !18
  %i.bm = sext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -58
  %i.bo = icmp ult i32 %i.bn, -10
  br i1 %i.bo, label %getnum.exit.thread, label %.preheader.i

getnum.exit.thread:                               ; preds = %bb.t
  store i32 -1, ptr %2, align 4, !tbaa !19
  br label %bb.u

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %i.bp = phi ptr [ %i.br, %.preheader.i ], [ %i.b, %bb.t ] ; 2 uses
  %.0.i51 = phi i32 [ %i.bv, %.preheader.i ], [ 0, %bb.t ]
  %i.bq = mul nsw i32 %.0.i51, 10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 3 uses
  store ptr %i.br, ptr %1, align 8, !tbaa !12
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add i32 %i.bq, -48
  %i.bv = add i32 %i.bu, %i.bt                    ; 4 uses
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !18
  %i.bx = sext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bx, -48
  %i.bz = icmp ult i32 %i.by, 10
  %i.ca = icmp slt i32 %i.bv, 214748364
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.preheader.i, label %getnum.exit, !llvm.loop !38

getnum.exit:                                      ; preds = %.preheader.i
  store i32 %i.bv, ptr %2, align 4, !tbaa !19
  %i.cc = icmp eq i32 %i.bv, -1
  br i1 %i.cc, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %getnum.exit.thread, %getnum.exit
  %i.cd = load ptr, ptr %0, align 8, !tbaa !15
  %i.ce = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.cd, ptr noundef nonnull @.str.11) #7 ; 0 uses
  br label %bb.ae

bb.v:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !19
  br label %bb.ae

bb.w:                                             ; preds = %bb.a
  br label %bb.ae

bb.x:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cf, align 8, !tbaa !16
  br label %bb.ad

bb.y:                                             ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cg, align 8, !tbaa !16
  br label %bb.ad

bb.z:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ch, align 8, !tbaa !16
  br label %bb.ad

bb.aa:                                            ; preds = %bb.a
  %i.ci = load i8, ptr %i.b, align 1, !tbaa !18
  %i.cj = sext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -58
  %i.cl = icmp ult i32 %i.ck, -10
  br i1 %i.cl, label %getnumlimit.exit58, label %.preheader.i.i52

.preheader.i.i52:                                 ; preds = %bb.aa, %.preheader.i.i52
  %i.cm = phi ptr [ %i.co, %.preheader.i.i52 ], [ %i.b, %bb.aa ] ; 2 uses
  %.0.i.i53 = phi i32 [ %i.cs, %.preheader.i.i52 ], [ 0, %bb.aa ]
  %i.cn = mul nsw i32 %.0.i.i53, 10
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 3 uses
  store ptr %i.co, ptr %1, align 8, !tbaa !12
  %i.cp = load i8, ptr %i.cm, align 1, !tbaa !18
  %i.cq = sext i8 %i.cp to i32
  %i.cr = add i32 %i.cn, -48
  %i.cs = add i32 %i.cr, %i.cq                    ; 5 uses
  %i.ct = load i8, ptr %i.co, align 1, !tbaa !18
  %i.cu = sext i8 %i.ct to i32
  %i.cv = add nsw i32 %i.cu, -48
  %i.cw = icmp ult i32 %i.cv, 10
  %i.cx = icmp slt i32 %i.cs, 214748364
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %.preheader.i.i52, label %getnum.exit.i54, !llvm.loop !38

getnum.exit.i54:                                  ; preds = %.preheader.i.i52
  %i.cz = add i32 %i.cs, -17
  %or.cond.i56 = icmp ult i32 %i.cz, -16
  br i1 %or.cond.i56, label %bb.ab, label %getnumlimit.exit58

bb.ab:                                            ; preds = %getnum.exit.i54
  %i.da = load ptr, ptr %0, align 8, !tbaa !15
  %i.db = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.da, ptr noundef nonnull @.str.13, i32 noundef %i.cs, i32 noundef 16) #7
  br label %getnumlimit.exit58

getnumlimit.exit58:                               ; preds = %bb.aa, %getnum.exit.i54, %bb.ab
  %.0.i57 = phi i32 [ %i.db, %bb.ab ], [ %i.cs, %getnum.exit.i54 ], [ 8, %bb.aa ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i57, ptr %i.dc, align 4, !tbaa !17
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %i.dd = sext i8 %i.c to i32
  %i.de = load ptr, ptr %0, align 8, !tbaa !15
  %i.df = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.de, ptr noundef nonnull @.str.12, i32 noundef %i.dd) #7 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %getnumlimit.exit58, %bb.z, %bb.y, %bb.x, %bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %getnum.exit, %bb.u, %bb.ad, %bb.w, %bb.v, %getnumlimit.exit50, %getnumlimit.exit43, %getnumlimit.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 10, %bb.ad ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 0, %getnumlimit.exit ], [ 1, %getnumlimit.exit43 ], [ 6, %getnumlimit.exit50 ], [ 9, %bb.w ], [ 5, %getnum.exit ], [ 8, %bb.v ], [ 5, %bb.u ], [ 7, %bb.a ]
  ret i32 %.0
}

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @luaL_optinteger(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @luaL_checkstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @unpackint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %.not41 = icmp eq i32 %2, 0
  %i.b = zext nneg i32 %3 to i64                  ; 9 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.b, i64 8) ; 16 uses
  br i1 %.not41, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.d = sub nsw i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18
  %i.g = zext i8 %i.f to i64                      ; 2 uses
  %.not75 = icmp eq i32 %3, 1
  br i1 %.not75, label %._crit_edge, label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us
  %indvars.iv.next52 = add nsw i64 %i.c, -1
  %i.h = shl nuw nsw i64 %i.g, 8
  %5 = sub nsw i64 %i.b, %indvars.iv.next52
  %i.i = getelementptr inbounds i8, ptr %1, i64 %5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %i.k = zext i8 %i.j to i64
  %i.l = or disjoint i64 %i.h, %i.k               ; 2 uses
  %i.m = icmp ugt i32 %3, 2
  br i1 %i.m, label %.lr.ph.split.us.2, label %._crit_edge

.lr.ph.split.us.2:                                ; preds = %.lr.ph.split.us.1
  %indvars.iv.next52.1 = add nsw i64 %i.c, -2
  %i.n = shl nuw nsw i64 %i.l, 8
  %6 = sub nsw i64 %i.b, %indvars.iv.next52.1
  %i.o = getelementptr inbounds i8, ptr %1, i64 %6
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %i.q = zext i8 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q               ; 2 uses
  %.not76 = icmp eq i32 %3, 3
  br i1 %.not76, label %._crit_edge, label %.lr.ph.split.us.3

.lr.ph.split.us.3:                                ; preds = %.lr.ph.split.us.2
  %indvars.iv.next52.2 = add nsw i64 %i.c, -3
  %i.s = shl nuw nsw i64 %i.r, 8
  %7 = sub nsw i64 %i.b, %indvars.iv.next52.2
  %i.t = getelementptr inbounds i8, ptr %1, i64 %7
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  %i.v = zext i8 %i.u to i64
  %i.w = or disjoint i64 %i.s, %i.v               ; 2 uses
  %i.x = icmp ugt i32 %3, 4
  br i1 %i.x, label %.lr.ph.split.us.4, label %._crit_edge

.lr.ph.split.us.4:                                ; preds = %.lr.ph.split.us.3
  %indvars.iv.next52.3 = add nsw i64 %i.c, -4
  %i.y = shl i64 %i.w, 8
  %8 = sub nsw i64 %i.b, %indvars.iv.next52.3
  %i.z = getelementptr inbounds i8, ptr %1, i64 %8
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = zext i8 %i.aa to i64
  %i.ac = or disjoint i64 %i.y, %i.ab             ; 2 uses
  %.not77 = icmp eq i32 %3, 5
  br i1 %.not77, label %._crit_edge, label %.lr.ph.split.us.5

.lr.ph.split.us.5:                                ; preds = %.lr.ph.split.us.4
  %indvars.iv.next52.4 = add nsw i64 %i.c, -5
  %i.ad = shl i64 %i.ac, 8
  %9 = sub nsw i64 %i.b, %indvars.iv.next52.4
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ag = zext i8 %i.af to i64
  %i.ah = or disjoint i64 %i.ad, %i.ag            ; 2 uses
  %i.ai = icmp ugt i32 %3, 6
  br i1 %i.ai, label %.lr.ph.split.us.6, label %._crit_edge

.lr.ph.split.us.6:                                ; preds = %.lr.ph.split.us.5
  %indvars.iv.next52.5 = add nsw i64 %i.c, -6
  %i.aj = shl i64 %i.ah, 8
  %10 = sub nsw i64 %i.b, %indvars.iv.next52.5
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !18
  %i.am = zext i8 %i.al to i64
  %i.an = or disjoint i64 %i.aj, %i.am            ; 2 uses
  %.not78 = icmp eq i32 %3, 7
  br i1 %.not78, label %._crit_edge, label %.lr.ph.split.us.7

.lr.ph.split.us.7:                                ; preds = %.lr.ph.split.us.6
  %indvars.iv.next52.6 = add nsw i64 %i.c, -7
  %i.ao = shl i64 %i.an, 8
  %11 = sub nsw i64 %i.b, %indvars.iv.next52.6
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %11
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.at = getelementptr i8, ptr %1, i64 %i.c
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !18
  %i.aw = zext i8 %i.av to i64                    ; 2 uses
  %.not71 = icmp eq i32 %3, 1
  br i1 %.not71, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split
  %i.ax = shl nuw nsw i64 %i.aw, 8
  %i.ay = getelementptr i8, ptr %1, i64 %i.c
  %i.az = getelementptr i8, ptr %i.ay, i64 -2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = zext i8 %i.ba to i64
  %i.bc = or disjoint i64 %i.ax, %i.bb            ; 2 uses
  %i.bd = icmp ugt i32 %3, 2
  br i1 %i.bd, label %.lr.ph.split.2, label %._crit_edge

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %i.be = shl nuw nsw i64 %i.bc, 8
  %i.bf = getelementptr i8, ptr %1, i64 %i.c
  %i.bg = getelementptr i8, ptr %i.bf, i64 -3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !18
  %i.bi = zext i8 %i.bh to i64
  %i.bj = or disjoint i64 %i.be, %i.bi            ; 2 uses
  %.not72 = icmp eq i32 %3, 3
  br i1 %.not72, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %.lr.ph.split.2
  %i.bk = shl nuw nsw i64 %i.bj, 8
  %i.bl = getelementptr i8, ptr %1, i64 %i.c
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18
  %i.bo = zext i8 %i.bn to i64
  %i.bp = or disjoint i64 %i.bk, %i.bo            ; 2 uses
  %i.bq = icmp ugt i32 %3, 4
  br i1 %i.bq, label %.lr.ph.split.4, label %._crit_edge

.lr.ph.split.4:                                   ; preds = %.lr.ph.split.3
  %i.br = shl i64 %i.bp, 8
  %i.bs = getelementptr i8, ptr %1, i64 %i.c
  %i.bt = getelementptr i8, ptr %i.bs, i64 -5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18
  %i.bv = zext i8 %i.bu to i64
  %i.bw = or disjoint i64 %i.br, %i.bv            ; 2 uses
  %.not73 = icmp eq i32 %3, 5
  br i1 %.not73, label %._crit_edge, label %.lr.ph.split.5

.lr.ph.split.5:                                   ; preds = %.lr.ph.split.4
  %i.bx = shl i64 %i.bw, 8
  %i.by = getelementptr i8, ptr %1, i64 %i.c
  %i.bz = getelementptr i8, ptr %i.by, i64 -6
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !18
  %i.cb = zext i8 %i.ca to i64
  %i.cc = or disjoint i64 %i.bx, %i.cb            ; 2 uses
  %i.cd = icmp ugt i32 %3, 6
  br i1 %i.cd, label %.lr.ph.split.6, label %._crit_edge

.lr.ph.split.6:                                   ; preds = %.lr.ph.split.5
  %i.ce = shl i64 %i.cc, 8
  %i.cf = getelementptr i8, ptr %1, i64 %i.c
  %i.cg = getelementptr i8, ptr %i.cf, i64 -7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !18
  %i.ci = zext i8 %i.ch to i64
  %i.cj = or disjoint i64 %i.ce, %i.ci            ; 2 uses
  %.not74 = icmp eq i32 %3, 7
  br i1 %.not74, label %._crit_edge, label %.lr.ph.split.7

.lr.ph.split.7:                                   ; preds = %.lr.ph.split.6
  %i.ck = shl i64 %i.cj, 8
  %i.cl = getelementptr i8, ptr %1, i64 %i.c
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !18
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.1, %.lr.ph.split.2, %.lr.ph.split.3, %.lr.ph.split.4, %.lr.ph.split.5, %.lr.ph.split.6, %.lr.ph.split.7, %.lr.ph.split.us, %.lr.ph.split.us.1, %.lr.ph.split.us.2, %.lr.ph.split.us.3, %.lr.ph.split.us.4, %.lr.ph.split.us.5, %.lr.ph.split.us.6, %.lr.ph.split.us.7
  %.0.lcssa = phi i64 [ %i.as, %.lr.ph.split.us.7 ], [ %i.g, %.lr.ph.split.us ], [ %i.l, %.lr.ph.split.us.1 ], [ %i.r, %.lr.ph.split.us.2 ], [ %i.w, %.lr.ph.split.us.3 ], [ %i.ac, %.lr.ph.split.us.4 ], [ %i.ah, %.lr.ph.split.us.5 ], [ %i.an, %.lr.ph.split.us.6 ], [ %i.aw, %.lr.ph.split ], [ %i.bc, %.lr.ph.split.1 ], [ %i.bj, %.lr.ph.split.2 ], [ %i.bp, %.lr.ph.split.3 ], [ %i.bw, %.lr.ph.split.4 ], [ %i.cc, %.lr.ph.split.5 ], [ %i.cj, %.lr.ph.split.6 ], [ %i.cp, %.lr.ph.split.7 ] ; 5 uses
  %i.cq = icmp samesign ult i32 %3, 8
  br i1 %i.cq, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa61 = phi i64 [ %.0.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.not40 = icmp eq i32 %4, 0
  br i1 %.not40, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread
  %i.cr = shl nsw i32 %3, 3
  %i.cs = add nsw i32 %i.cr, -1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw i64 1, %i.ct                    ; 2 uses
  %i.cv = xor i64 %.0.lcssa61, %i.cu
  %i.cw = sub i64 %i.cv, %i.cu
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %3, 8
  br i1 %.not, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.c
  %.not37 = icmp eq i32 %4, 0
  %i.cx = icmp sgt i64 %.0.lcssa, -1
  %i.cy = select i1 %.not37, i1 true, i1 %i.cx
  %i.cz = select i1 %i.cy, i32 0, i32 255         ; 2 uses
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %.lr.ph46.split.us.preheader, label %.lr.ph46.split

.lr.ph46.split.us.preheader:                      ; preds = %.lr.ph46
  %i.da = zext nneg i32 %3 to i64
  br label %.lr.ph46.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46.split.us.preheader, %bb.e
  %indvars.iv57 = phi i64 [ 8, %.lr.ph46.split.us.preheader ], [ %indvars.iv.next58, %bb.e ] ; 2 uses
  %i.db = trunc nsw i64 %indvars.iv57 to i32
  %i.dc = xor i32 %i.db, -1
  %i.dd = add nsw i32 %3, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %1, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !18
  %i.dh = zext i8 %i.dg to i32
  %.not39.us = icmp eq i32 %i.cz, %i.dh
  br i1 %.not39.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph46.split.us
  %i.di = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %3) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph46.split.us, %bb.d
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.dj = icmp samesign ult i64 %indvars.iv.next58, %i.da
  br i1 %i.dj, label %.lr.ph46.split.us, label %.loopexit, !llvm.loop !0

.lr.ph46.split:                                   ; preds = %.lr.ph46, %bb.g
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb.g ], [ 8, %.lr.ph46 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !18
  %i.dm = zext i8 %i.dl to i32
  %.not39 = icmp eq i32 %i.cz, %i.dm
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph46.split
  %i.dn = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %3) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46.split, %bb.f
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.do = trunc nuw i64 %indvars.iv.next54 to i32
  %i.dp = icmp sgt i32 %3, %i.do
  br i1 %i.dp, label %.lr.ph46.split, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.c, %._crit_edge.thread, %bb.b
  %.1 = phi i64 [ %i.cw, %bb.b ], [ %.0.lcssa61, %._crit_edge.thread ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %bb.g ]
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

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
end_hunk_2
