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
  %xtraiter226 = and i64 %i.av, 3                 ; 3 uses
  %i.aw = add nsw i32 %i.n, -2
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.preheader.i.new

.lr.ph.split.preheader.i.new:                     ; preds = %.lr.ph.split.preheader.i
  %unroll_iter230 = and i64 %i.av, -4
  br label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %i.ay = zext nneg i32 %i.aq to i64              ; 6 uses
  %wide.trip.count42.i = zext nneg i32 %i.n to i64
  %i.az = add nsw i64 %wide.trip.count42.i, -1    ; 2 uses
  %xtraiter232 = and i64 %i.az, 3                 ; 3 uses
  %i.ba = add nsw i32 %i.n, -2
  %i.bb = icmp ult i32 %i.ba, 3
  br i1 %i.bb, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.preheader.i.new

.lr.ph.split.us.preheader.i.new:                  ; preds = %.lr.ph.split.us.preheader.i
  %unroll_iter236 = and i64 %i.az, -4
  %invariant.gep245 = getelementptr i8, ptr %i.ao, i64 %i.ay
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i.new
  %indvars.iv39.i = phi i64 [ 1, %.lr.ph.split.us.preheader.i.new ], [ %indvars.iv.next40.i.3, %.lr.ph.split.us.i ] ; 5 uses
  %.03033.us.i = phi i64 [ %i.aa, %.lr.ph.split.us.preheader.i.new ], [ %i.bm, %.lr.ph.split.us.i ] ; 4 uses
  %niter237 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.new ], [ %niter237.next.3, %.lr.ph.split.us.i ]
  %i.bc = lshr i64 %.03033.us.i, 8
  %i.bd = trunc i64 %i.bc to i8
  %i.be = sub nuw nsw i64 %i.ay, %indvars.iv39.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.be
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !18
  %indvars.iv.next40.i.neg = xor i64 %indvars.iv39.i, -1
  %i.bg = lshr i64 %.03033.us.i, 16
  %i.bh = trunc i64 %i.bg to i8
  %gep246 = getelementptr i8, ptr %invariant.gep245, i64 %indvars.iv.next40.i.neg
  store i8 %i.bh, ptr %gep246, align 1, !tbaa !18
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
  %niter237.next.3 = add nuw i64 %niter237, 4     ; 2 uses
  %niter237.ncmp.3 = icmp eq i64 %niter237.next.3, %unroll_iter236
  br i1 %niter237.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !24

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.split.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.split.i ] ; 5 uses
  %.03033.i = phi i64 [ %i.aa, %.lr.ph.split.preheader.i.new ], [ %i.cb, %.lr.ph.split.i ] ; 4 uses
  %niter231 = phi i64 [ 0, %.lr.ph.split.preheader.i.new ], [ %niter231.next.3, %.lr.ph.split.i ]
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
  %niter231.next.3 = add nuw i64 %niter231, 4     ; 2 uses
  %niter231.ncmp.3 = icmp eq i64 %niter231.next.3, %unroll_iter230
  br i1 %niter231.ncmp.3, label %._crit_edge.thread52.i.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !24

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.split.us.i
  %lcmp.mod234.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod234.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.split.us.preheader.i
  %indvars.iv39.i.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next40.i.3, %._crit_edge.i.unr-lcssa ]
  %.03033.us.i.epil.init = phi i64 [ %i.aa, %.lr.ph.split.us.preheader.i ], [ %i.bm, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod235 = icmp ne i64 %xtraiter232, 0
  call void @llvm.assume(i1 %lcmp.mod235)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv39.i.epil = phi i64 [ %indvars.iv39.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %indvars.iv.next40.i.epil, %.lr.ph.split.us.i.epil ] ; 2 uses
  %.03033.us.i.epil = phi i64 [ %.03033.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %i.cf, %.lr.ph.split.us.i.epil ]
  %epil.iter233 = phi i64 [ 0, %.lr.ph.split.us.i.epil.preheader ], [ %epil.iter233.next, %.lr.ph.split.us.i.epil ]
  %i.cf = lshr i64 %.03033.us.i.epil, 8           ; 2 uses
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = sub nuw nsw i64 %i.ay, %indvars.iv39.i.epil
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ch
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !18
  %indvars.iv.next40.i.epil = add nuw nsw i64 %indvars.iv39.i.epil, 1
  %epil.iter233.next = add i64 %epil.iter233, 1   ; 2 uses
  %epil.iter233.cmp.not = icmp eq i64 %epil.iter233.next, %xtraiter232
  br i1 %epil.iter233.cmp.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil, !llvm.loop !25

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.epil, %._crit_edge.i.unr-lcssa
  %i.cj = icmp slt i64 %i.aa, 0
  %i.ck = icmp samesign ugt i32 %i.n, 8
  %or.cond.i = and i1 %i.ck, %i.cj
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

._crit_edge.thread52.i.unr-lcssa:                 ; preds = %.lr.ph.split.i
  %lcmp.mod228.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod228.not, label %._crit_edge.thread52.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.thread52.i.unr-lcssa, %.lr.ph.split.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.thread52.i.unr-lcssa ]
  %.03033.i.epil.init = phi i64 [ %i.aa, %.lr.ph.split.preheader.i ], [ %i.cb, %._crit_edge.thread52.i.unr-lcssa ]
  %lcmp.mod229 = icmp ne i64 %xtraiter226, 0
  call void @llvm.assume(i1 %lcmp.mod229)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.split.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.split.i.epil ] ; 2 uses
  %.03033.i.epil = phi i64 [ %.03033.i.epil.init, %.lr.ph.split.i.epil.preheader ], [ %i.cl, %.lr.ph.split.i.epil ]
  %epil.iter227 = phi i64 [ 0, %.lr.ph.split.i.epil.preheader ], [ %epil.iter227.next, %.lr.ph.split.i.epil ]
  %i.cl = lshr i64 %.03033.i.epil, 8              ; 2 uses
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i.epil
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !18
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter227.next = add i64 %epil.iter227, 1   ; 2 uses
  %epil.iter227.cmp.not = icmp eq i64 %epil.iter227.next, %xtraiter226
  br i1 %epil.iter227.cmp.not, label %._crit_edge.thread52.i, label %.lr.ph.split.i.epil, !llvm.loop !26

._crit_edge.thread52.i:                           ; preds = %.lr.ph.split.i.epil, %._crit_edge.thread52.i.unr-lcssa
  %i.co = icmp slt i64 %i.aa, 0
  %i.cp = icmp samesign ugt i32 %i.n, 8
  %or.cond53.i = and i1 %i.cp, %i.co
  br i1 %or.cond53.i, label %.loopexit.sink.split.i, label %.loopexit.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %3 = add nsw i64 %i.ay, -8
  %4 = add nsw i32 %i.n, -9
  %5 = zext nneg i32 %4 to i64
  %6 = sub nsw i64 %3, %5
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %.preheader.i, %._crit_edge.thread52.i
  %.sink.i = phi i64 [ %6, %.preheader.i ], [ 8, %._crit_edge.thread52.i ]
  %scevgep.i = getelementptr i8, ptr %i.ao, i64 %.sink.i
  %i.cq = add nsw i32 %i.n, -8
  %i.cr = zext nneg i32 %i.cq to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 -1, i64 %i.cr, i1 false), !tbaa !18
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.sink.split.i, %._crit_edge.thread52.i, %._crit_edge.i, %bb.j
  %i.cs = load ptr, ptr %1, align 8, !tbaa !34
  %i.ct = sext i32 %i.n to i64
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  store ptr %i.cu, ptr %1, align 8, !tbaa !34
  br label %packint.exit

bb.k:                                             ; preds = %._crit_edge
  %i.cv = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %i.z) #7 ; 6 uses
  %i.cw = icmp slt i32 %i.n, 8
  br i1 %i.cw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cx = shl nsw i32 %i.n, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %.highbits61 = lshr i64 %i.cv, %i.cy
  %i.cz = icmp eq i64 %.highbits61, 0
  br i1 %i.cz, label %.thread133, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.5) #7 ; 0 uses
  br label %.thread133

.thread133:                                       ; preds = %bb.l, %bb.m
  %i.db = load i32, ptr %i.h, align 8, !tbaa !16
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.dc = load i32, ptr %i.h, align 8, !tbaa !16
  %i.dd = icmp samesign ugt i32 %i.n, 8192
  br i1 %i.dd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.de = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.n, i32 noundef 8192) #7 ; 0 uses
  br label %packint.exit

bb.p:                                             ; preds = %.thread133, %bb.n
  %i.df = phi i32 [ %i.db, %.thread133 ], [ %i.dc, %bb.n ]
  %i.dg = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 11 uses
  %i.dh = trunc i64 %i.cv to i8
  %.not.i63 = icmp eq i32 %i.df, 0                ; 2 uses
  %i.di = add i32 %i.n, -1                        ; 2 uses
  %i.dj = select i1 %.not.i63, i32 %i.di, i32 0
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.dg, i64 %i.dk
  store i8 %i.dh, ptr %i.dl, align 1, !tbaa !18
  %i.dm = icmp sgt i32 %i.n, 1
  br i1 %i.dm, label %.lr.ph.i65, label %.loopexit.i64

.lr.ph.i65:                                       ; preds = %bb.p
  br i1 %.not.i63, label %.lr.ph.split.us.preheader.i78, label %.lr.ph.split.preheader.i66

.lr.ph.split.preheader.i66:                       ; preds = %.lr.ph.i65
  %wide.trip.count.i67 = zext nneg i32 %i.n to i64
  %i.dn = add nsw i64 %wide.trip.count.i67, -1    ; 2 uses
  %xtraiter214 = and i64 %i.dn, 3                 ; 3 uses
  %i.do = add nsw i32 %i.n, -2
  %i.dp = icmp ult i32 %i.do, 3
  br i1 %i.dp, label %.lr.ph.split.i68.epil.preheader, label %.lr.ph.split.preheader.i66.new

.lr.ph.split.preheader.i66.new:                   ; preds = %.lr.ph.split.preheader.i66
  %unroll_iter218 = and i64 %i.dn, -4
  br label %.lr.ph.split.i68

.lr.ph.split.us.preheader.i78:                    ; preds = %.lr.ph.i65
  %i.dq = zext nneg i32 %i.di to i64              ; 5 uses
  %wide.trip.count42.i79 = zext nneg i32 %i.n to i64
  %i.dr = add nsw i64 %wide.trip.count42.i79, -1  ; 2 uses
  %xtraiter220 = and i64 %i.dr, 3                 ; 3 uses
  %i.ds = add nsw i32 %i.n, -2
  %i.dt = icmp ult i32 %i.ds, 3
  br i1 %i.dt, label %.lr.ph.split.us.i80.epil.preheader, label %.lr.ph.split.us.preheader.i78.new

.lr.ph.split.us.preheader.i78.new:                ; preds = %.lr.ph.split.us.preheader.i78
  %unroll_iter224 = and i64 %i.dr, -4
  %invariant.gep243 = getelementptr i8, ptr %i.dg, i64 %i.dq
  br label %.lr.ph.split.us.i80

.lr.ph.split.us.i80:                              ; preds = %.lr.ph.split.us.i80, %.lr.ph.split.us.preheader.i78.new
  %indvars.iv39.i81 = phi i64 [ 1, %.lr.ph.split.us.preheader.i78.new ], [ %indvars.iv.next40.i83.3, %.lr.ph.split.us.i80 ] ; 5 uses
  %.03033.us.i82 = phi i64 [ %i.cv, %.lr.ph.split.us.preheader.i78.new ], [ %i.ee, %.lr.ph.split.us.i80 ] ; 4 uses
  %niter225 = phi i64 [ 0, %.lr.ph.split.us.preheader.i78.new ], [ %niter225.next.3, %.lr.ph.split.us.i80 ]
  %i.du = lshr i64 %.03033.us.i82, 8
  %i.dv = trunc i64 %i.du to i8
  %i.dw = sub nuw nsw i64 %i.dq, %indvars.iv39.i81
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dw
  store i8 %i.dv, ptr %i.dx, align 1, !tbaa !18
  %indvars.iv.next40.i83.neg = xor i64 %indvars.iv39.i81, -1
  %i.dy = lshr i64 %.03033.us.i82, 16
  %i.dz = trunc i64 %i.dy to i8
  %gep244 = getelementptr i8, ptr %invariant.gep243, i64 %indvars.iv.next40.i83.neg
  store i8 %i.dz, ptr %gep244, align 1, !tbaa !18
  %indvars.iv.next40.i83.1 = add nuw nsw i64 %indvars.iv39.i81, 2
  %i.ea = lshr i64 %.03033.us.i82, 24
  %i.eb = trunc i64 %i.ea to i8
  %i.ec = sub nuw nsw i64 %i.dq, %indvars.iv.next40.i83.1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.ec
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !18
  %indvars.iv.next40.i83.2 = add nuw nsw i64 %indvars.iv39.i81, 3
  %i.ee = lshr i64 %.03033.us.i82, 32             ; 3 uses
  %i.ef = trunc i64 %i.ee to i8
  %i.eg = sub nuw nsw i64 %i.dq, %indvars.iv.next40.i83.2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.eg
  store i8 %i.ef, ptr %i.eh, align 1, !tbaa !18
  %indvars.iv.next40.i83.3 = add nuw nsw i64 %indvars.iv39.i81, 4 ; 2 uses
  %niter225.next.3 = add nuw i64 %niter225, 4     ; 2 uses
  %niter225.ncmp.3 = icmp eq i64 %niter225.next.3, %unroll_iter224
  br i1 %niter225.ncmp.3, label %.loopexit.i64.loopexit.unr-lcssa, label %.lr.ph.split.us.i80, !llvm.loop !24

.lr.ph.split.i68:                                 ; preds = %.lr.ph.split.i68, %.lr.ph.split.preheader.i66.new
  %indvars.iv.i69 = phi i64 [ 1, %.lr.ph.split.preheader.i66.new ], [ %indvars.iv.next.i71.3, %.lr.ph.split.i68 ] ; 5 uses
  %.03033.i70 = phi i64 [ %i.cv, %.lr.ph.split.preheader.i66.new ], [ %i.et, %.lr.ph.split.i68 ] ; 4 uses
  %niter219 = phi i64 [ 0, %.lr.ph.split.preheader.i66.new ], [ %niter219.next.3, %.lr.ph.split.i68 ]
  %i.ei = lshr i64 %.03033.i70, 8
  %i.ej = trunc i64 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.i69
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !18
  %i.el = lshr i64 %.03033.i70, 16
  %i.em = trunc i64 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.i69
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store i8 %i.em, ptr %i.eo, align 1, !tbaa !18
  %i.ep = lshr i64 %.03033.i70, 24
  %i.eq = trunc i64 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.i69
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  store i8 %i.eq, ptr %i.es, align 1, !tbaa !18
  %i.et = lshr i64 %.03033.i70, 32                ; 3 uses
  %i.eu = trunc i64 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.i69
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 3
  store i8 %i.eu, ptr %i.ew, align 1, !tbaa !18
  %indvars.iv.next.i71.3 = add nuw nsw i64 %indvars.iv.i69, 4 ; 2 uses
  %niter219.next.3 = add nuw i64 %niter219, 4     ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %.loopexit.i64.loopexit205.unr-lcssa, label %.lr.ph.split.i68, !llvm.loop !24

.loopexit.i64.loopexit.unr-lcssa:                 ; preds = %.lr.ph.split.us.i80
  %lcmp.mod222.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod222.not, label %.loopexit.i64, label %.lr.ph.split.us.i80.epil.preheader

.lr.ph.split.us.i80.epil.preheader:               ; preds = %.loopexit.i64.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i78
  %indvars.iv39.i81.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i78 ], [ %indvars.iv.next40.i83.3, %.loopexit.i64.loopexit.unr-lcssa ]
  %.03033.us.i82.epil.init = phi i64 [ %i.cv, %.lr.ph.split.us.preheader.i78 ], [ %i.ee, %.loopexit.i64.loopexit.unr-lcssa ]
  %lcmp.mod223 = icmp ne i64 %xtraiter220, 0
  call void @llvm.assume(i1 %lcmp.mod223)
  br label %.lr.ph.split.us.i80.epil

.lr.ph.split.us.i80.epil:                         ; preds = %.lr.ph.split.us.i80.epil, %.lr.ph.split.us.i80.epil.preheader
  %indvars.iv39.i81.epil = phi i64 [ %indvars.iv39.i81.epil.init, %.lr.ph.split.us.i80.epil.preheader ], [ %indvars.iv.next40.i83.epil, %.lr.ph.split.us.i80.epil ] ; 2 uses
  %.03033.us.i82.epil = phi i64 [ %.03033.us.i82.epil.init, %.lr.ph.split.us.i80.epil.preheader ], [ %i.ex, %.lr.ph.split.us.i80.epil ]
  %epil.iter221 = phi i64 [ 0, %.lr.ph.split.us.i80.epil.preheader ], [ %epil.iter221.next, %.lr.ph.split.us.i80.epil ]
  %i.ex = lshr i64 %.03033.us.i82.epil, 8         ; 2 uses
  %i.ey = trunc i64 %i.ex to i8
  %i.ez = sub nuw nsw i64 %i.dq, %indvars.iv39.i81.epil
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.ez
  store i8 %i.ey, ptr %i.fa, align 1, !tbaa !18
  %indvars.iv.next40.i83.epil = add nuw nsw i64 %indvars.iv39.i81.epil, 1
  %epil.iter221.next = add i64 %epil.iter221, 1   ; 2 uses
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.next, %xtraiter220
  br i1 %epil.iter221.cmp.not, label %.loopexit.i64, label %.lr.ph.split.us.i80.epil, !llvm.loop !27

.loopexit.i64.loopexit205.unr-lcssa:              ; preds = %.lr.ph.split.i68
  %lcmp.mod216.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod216.not, label %.loopexit.i64, label %.lr.ph.split.i68.epil.preheader

.lr.ph.split.i68.epil.preheader:                  ; preds = %.loopexit.i64.loopexit205.unr-lcssa, %.lr.ph.split.preheader.i66
  %indvars.iv.i69.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i66 ], [ %indvars.iv.next.i71.3, %.loopexit.i64.loopexit205.unr-lcssa ]
  %.03033.i70.epil.init = phi i64 [ %i.cv, %.lr.ph.split.preheader.i66 ], [ %i.et, %.loopexit.i64.loopexit205.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.split.i68.epil

.lr.ph.split.i68.epil:                            ; preds = %.lr.ph.split.i68.epil, %.lr.ph.split.i68.epil.preheader
  %indvars.iv.i69.epil = phi i64 [ %indvars.iv.i69.epil.init, %.lr.ph.split.i68.epil.preheader ], [ %indvars.iv.next.i71.epil, %.lr.ph.split.i68.epil ] ; 2 uses
  %.03033.i70.epil = phi i64 [ %.03033.i70.epil.init, %.lr.ph.split.i68.epil.preheader ], [ %i.fb, %.lr.ph.split.i68.epil ]
  %epil.iter215 = phi i64 [ 0, %.lr.ph.split.i68.epil.preheader ], [ %epil.iter215.next, %.lr.ph.split.i68.epil ]
  %i.fb = lshr i64 %.03033.i70.epil, 8            ; 2 uses
  %i.fc = trunc i64 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.i69.epil
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !18
  %indvars.iv.next.i71.epil = add nuw nsw i64 %indvars.iv.i69.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %.loopexit.i64, label %.lr.ph.split.i68.epil, !llvm.loop !28

.loopexit.i64:                                    ; preds = %.loopexit.i64.loopexit205.unr-lcssa, %.lr.ph.split.i68.epil, %.loopexit.i64.loopexit.unr-lcssa, %.lr.ph.split.us.i80.epil, %bb.p
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
  %i.fr = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 9 uses
  %i.fs = load i32, ptr %i.h, align 8, !tbaa !16
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.t, label %copywithendian.exit97.loopexit

bb.t:                                             ; preds = %bb.s
  store double %i.fq, ptr %i.fr, align 1
  br label %copywithendian.exit97

copywithendian.exit97.loopexit:                   ; preds = %bb.s
  %.0.i94 = getelementptr i8, ptr %i.fr, i64 7
  %i.fu = bitcast double %i.fq to i64             ; 8 uses
  %.0.extract.trunc152 = trunc i64 %i.fu to i8
  store i8 %.0.extract.trunc152, ptr %.0.i94, align 1, !tbaa !18
  %.0.i94.1 = getelementptr i8, ptr %i.fr, i64 6
  %.1.extract.shift155 = lshr i64 %i.fu, 8
  %.1.extract.trunc156 = trunc i64 %.1.extract.shift155 to i8
  store i8 %.1.extract.trunc156, ptr %.0.i94.1, align 1, !tbaa !18
  %.0.i94.2 = getelementptr i8, ptr %i.fr, i64 5
  %.2.extract.shift158 = lshr i64 %i.fu, 16
  %.2.extract.trunc159 = trunc i64 %.2.extract.shift158 to i8
  store i8 %.2.extract.trunc159, ptr %.0.i94.2, align 1, !tbaa !18
  %.0.i94.3 = getelementptr i8, ptr %i.fr, i64 4
  %.3.extract.shift161 = lshr i64 %i.fu, 24
  %.3.extract.trunc162 = trunc i64 %.3.extract.shift161 to i8
  store i8 %.3.extract.trunc162, ptr %.0.i94.3, align 1, !tbaa !18
  %.0.i94.4 = getelementptr i8, ptr %i.fr, i64 3
  %.4.extract.shift164 = lshr i64 %i.fu, 32
  %.4.extract.trunc165 = trunc i64 %.4.extract.shift164 to i8
  store i8 %.4.extract.trunc165, ptr %.0.i94.4, align 1, !tbaa !18
  %.0.i94.5 = getelementptr i8, ptr %i.fr, i64 2
  %.5.extract.shift167 = lshr i64 %i.fu, 40
  %.5.extract.trunc168 = trunc i64 %.5.extract.shift167 to i8
  store i8 %.5.extract.trunc168, ptr %.0.i94.5, align 1, !tbaa !18
  %.0.i94.6 = getelementptr i8, ptr %i.fr, i64 1
  %.6.extract.shift170 = lshr i64 %i.fu, 48
  %.6.extract.trunc171 = trunc i64 %.6.extract.shift170 to i8
  store i8 %.6.extract.trunc171, ptr %.0.i94.6, align 1, !tbaa !18
  %.7.extract.shift173 = lshr i64 %i.fu, 56
  %.7.extract.trunc174 = trunc nuw i64 %.7.extract.shift173 to i8
  store i8 %.7.extract.trunc174, ptr %i.fr, align 1, !tbaa !18
  br label %copywithendian.exit97

copywithendian.exit97:                            ; preds = %copywithendian.exit97.loopexit, %bb.t
  %i.fv = load ptr, ptr %1, align 8, !tbaa !34
  %i.fw = sext i32 %i.n to i64
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 %i.fw
  store ptr %i.fx, ptr %1, align 8, !tbaa !34
  br label %packint.exit

bb.u:                                             ; preds = %._crit_edge
  %i.fy = call double @luaL_checknumber(ptr noundef %0, i32 noundef %i.z) #7 ; 2 uses
  %i.fz = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 9 uses
  %i.ga = load i32, ptr %i.h, align 8, !tbaa !16
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.v, label %copywithendian.exit104.loopexit

bb.v:                                             ; preds = %bb.u
  store double %i.fy, ptr %i.fz, align 1
  br label %copywithendian.exit104

copywithendian.exit104.loopexit:                  ; preds = %bb.u
  %.0.i101 = getelementptr i8, ptr %i.fz, i64 7
  %i.gc = bitcast double %i.fy to i64             ; 8 uses
  %.0.extract.trunc = trunc i64 %i.gc to i8
  store i8 %.0.extract.trunc, ptr %.0.i101, align 1, !tbaa !18
  %.0.i101.1 = getelementptr i8, ptr %i.fz, i64 6
  %.1.extract.shift = lshr i64 %i.gc, 8
  %.1.extract.trunc = trunc i64 %.1.extract.shift to i8
  store i8 %.1.extract.trunc, ptr %.0.i101.1, align 1, !tbaa !18
  %.0.i101.2 = getelementptr i8, ptr %i.fz, i64 5
  %.2.extract.shift = lshr i64 %i.gc, 16
  %.2.extract.trunc = trunc i64 %.2.extract.shift to i8
  store i8 %.2.extract.trunc, ptr %.0.i101.2, align 1, !tbaa !18
  %.0.i101.3 = getelementptr i8, ptr %i.fz, i64 4
  %.3.extract.shift = lshr i64 %i.gc, 24
  %.3.extract.trunc = trunc i64 %.3.extract.shift to i8
  store i8 %.3.extract.trunc, ptr %.0.i101.3, align 1, !tbaa !18
  %.0.i101.4 = getelementptr i8, ptr %i.fz, i64 3
  %.4.extract.shift = lshr i64 %i.gc, 32
  %.4.extract.trunc = trunc i64 %.4.extract.shift to i8
  store i8 %.4.extract.trunc, ptr %.0.i101.4, align 1, !tbaa !18
  %.0.i101.5 = getelementptr i8, ptr %i.fz, i64 2
  %.5.extract.shift = lshr i64 %i.gc, 40
  %.5.extract.trunc = trunc i64 %.5.extract.shift to i8
  store i8 %.5.extract.trunc, ptr %.0.i101.5, align 1, !tbaa !18
  %.0.i101.6 = getelementptr i8, ptr %i.fz, i64 1
  %.6.extract.shift = lshr i64 %i.gc, 48
  %.6.extract.trunc = trunc i64 %.6.extract.shift to i8
  store i8 %.6.extract.trunc, ptr %.0.i101.6, align 1, !tbaa !18
  %.7.extract.shift = lshr i64 %i.gc, 56
  %.7.extract.trunc = trunc nuw i64 %.7.extract.shift to i8
  store i8 %.7.extract.trunc, ptr %i.fz, align 1, !tbaa !18
  br label %copywithendian.exit104

copywithendian.exit104:                           ; preds = %copywithendian.exit104.loopexit, %bb.v
  %i.gd = load ptr, ptr %1, align 8, !tbaa !34
  %i.ge = sext i32 %i.n to i64
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 %i.ge
  store ptr %i.gf, ptr %1, align 8, !tbaa !34
  br label %packint.exit

bb.w:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.gg = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.d) #7
  %i.gh = load i64, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %i.gi = sext i32 %i.n to i64                    ; 3 uses
  %.not60 = icmp ugt i64 %i.gh, %i.gi
  br i1 %.not60, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gj = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.6) #7 ; 0 uses
  %.pre190 = load i64, ptr %i.d, align 8, !tbaa !22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gk = phi i64 [ %.pre190, %bb.x ], [ %i.gh, %bb.w ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.gg, i64 noundef %i.gk) #7
  %i.gl = load i64, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %i.d, align 8, !tbaa !22
  %i.gn = icmp ult i64 %i.gl, %i.gi
  br i1 %i.gn, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %bb.y, %bb.aa
  %i.go = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.gp = icmp ult ptr %i.go, %i.k
  br i1 %i.gp, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph139
  %i.gq = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph139
  %i.gr = phi ptr [ %.pre191, %bb.z ], [ %i.go, %.lr.ph139 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  store ptr %i.gs, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.gr, align 1, !tbaa !18
  %i.gt = load i64, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.d, align 8, !tbaa !22
  %i.gv = icmp ult i64 %i.gt, %i.gi
  br i1 %i.gv, label %.lr.ph139, label %._crit_edge140, !llvm.loop !29

._crit_edge140:                                   ; preds = %bb.aa, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %packint.exit

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.gw = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.e) #7
  %i.gx = icmp sgt i32 %i.n, 7
  br i1 %i.gx, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gy = load i64, ptr %i.e, align 8, !tbaa !22
  %i.gz = shl nsw i32 %i.n, 3
  %i.ha = zext nneg i32 %i.gz to i64
  %.highbits = lshr i64 %i.gy, %i.ha
  %i.hb = icmp eq i64 %.highbits, 0
  br i1 %i.hb, label %.thread135, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hc = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread135

.thread135:                                       ; preds = %bb.ad, %bb.ac
  %i.hd = load i32, ptr %i.h, align 8, !tbaa !16
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.he = load i32, ptr %i.h, align 8, !tbaa !16
  %i.hf = icmp samesign ugt i32 %i.n, 8192
  br i1 %i.hf, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hg = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.n, i32 noundef 8192) #7 ; 0 uses
  br label %packint.exit130

bb.ag:                                            ; preds = %.thread135, %bb.ae
  %i.hh = phi i32 [ %i.hd, %.thread135 ], [ %i.he, %bb.ae ]
  %i.hi = load i64, ptr %i.e, align 8, !tbaa !22  ; 5 uses
  %i.hj = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 11 uses
  %i.hk = trunc i64 %i.hi to i8
  %.not.i105 = icmp eq i32 %i.hh, 0               ; 2 uses
  %i.hl = add i32 %i.n, -1                        ; 2 uses
  %i.hm = select i1 %.not.i105, i32 %i.hl, i32 0
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds i8, ptr %i.hj, i64 %i.hn
  store i8 %i.hk, ptr %i.ho, align 1, !tbaa !18
  %i.hp = icmp sgt i32 %i.n, 1
  br i1 %i.hp, label %.lr.ph.i107, label %.loopexit.i106

.lr.ph.i107:                                      ; preds = %bb.ag
  br i1 %.not.i105, label %.lr.ph.split.us.preheader.i120, label %.lr.ph.split.preheader.i108

.lr.ph.split.preheader.i108:                      ; preds = %.lr.ph.i107
  %wide.trip.count.i109 = zext nneg i32 %i.n to i64
  %i.hq = add nsw i64 %wide.trip.count.i109, -1   ; 2 uses
  %xtraiter = and i64 %i.hq, 3                    ; 3 uses
  %i.hr = add nsw i32 %i.n, -2
  %i.hs = icmp ult i32 %i.hr, 3
  br i1 %i.hs, label %.lr.ph.split.i110.epil.preheader, label %.lr.ph.split.preheader.i108.new

.lr.ph.split.preheader.i108.new:                  ; preds = %.lr.ph.split.preheader.i108
  %unroll_iter = and i64 %i.hq, -4
  br label %.lr.ph.split.i110

.lr.ph.split.us.preheader.i120:                   ; preds = %.lr.ph.i107
  %i.ht = zext nneg i32 %i.hl to i64              ; 5 uses
  %wide.trip.count42.i121 = zext nneg i32 %i.n to i64
  %i.hu = add nsw i64 %wide.trip.count42.i121, -1 ; 2 uses
  %xtraiter208 = and i64 %i.hu, 3                 ; 3 uses
  %i.hv = add nsw i32 %i.n, -2
  %i.hw = icmp ult i32 %i.hv, 3
  br i1 %i.hw, label %.lr.ph.split.us.i122.epil.preheader, label %.lr.ph.split.us.preheader.i120.new

.lr.ph.split.us.preheader.i120.new:               ; preds = %.lr.ph.split.us.preheader.i120
  %unroll_iter212 = and i64 %i.hu, -4
  %invariant.gep = getelementptr i8, ptr %i.hj, i64 %i.ht
  br label %.lr.ph.split.us.i122

.lr.ph.split.us.i122:                             ; preds = %.lr.ph.split.us.i122, %.lr.ph.split.us.preheader.i120.new
  %indvars.iv39.i123 = phi i64 [ 1, %.lr.ph.split.us.preheader.i120.new ], [ %indvars.iv.next40.i125.3, %.lr.ph.split.us.i122 ] ; 5 uses
  %.03033.us.i124 = phi i64 [ %i.hi, %.lr.ph.split.us.preheader.i120.new ], [ %i.ih, %.lr.ph.split.us.i122 ] ; 4 uses
  %niter213 = phi i64 [ 0, %.lr.ph.split.us.preheader.i120.new ], [ %niter213.next.3, %.lr.ph.split.us.i122 ]
  %i.hx = lshr i64 %.03033.us.i124, 8
  %i.hy = trunc i64 %i.hx to i8
  %i.hz = sub nuw nsw i64 %i.ht, %indvars.iv39.i123
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hz
  store i8 %i.hy, ptr %i.ia, align 1, !tbaa !18
  %indvars.iv.next40.i125.neg = xor i64 %indvars.iv39.i123, -1
  %i.ib = lshr i64 %.03033.us.i124, 16
  %i.ic = trunc i64 %i.ib to i8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next40.i125.neg
  store i8 %i.ic, ptr %gep, align 1, !tbaa !18
  %indvars.iv.next40.i125.1 = add nuw nsw i64 %indvars.iv39.i123, 2
  %i.id = lshr i64 %.03033.us.i124, 24
  %i.ie = trunc i64 %i.id to i8
  %i.if = sub nuw nsw i64 %i.ht, %indvars.iv.next40.i125.1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.if
  store i8 %i.ie, ptr %i.ig, align 1, !tbaa !18
  %indvars.iv.next40.i125.2 = add nuw nsw i64 %indvars.iv39.i123, 3
  %i.ih = lshr i64 %.03033.us.i124, 32            ; 3 uses
  %i.ii = trunc i64 %i.ih to i8
  %i.ij = sub nuw nsw i64 %i.ht, %indvars.iv.next40.i125.2
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.ij
  store i8 %i.ii, ptr %i.ik, align 1, !tbaa !18
  %indvars.iv.next40.i125.3 = add nuw nsw i64 %indvars.iv39.i123, 4 ; 2 uses
  %niter213.next.3 = add nuw i64 %niter213, 4     ; 2 uses
  %niter213.ncmp.3 = icmp eq i64 %niter213.next.3, %unroll_iter212
  br i1 %niter213.ncmp.3, label %.loopexit.i106.loopexit.unr-lcssa, label %.lr.ph.split.us.i122, !llvm.loop !24

.lr.ph.split.i110:                                ; preds = %.lr.ph.split.i110, %.lr.ph.split.preheader.i108.new
  %indvars.iv.i111 = phi i64 [ 1, %.lr.ph.split.preheader.i108.new ], [ %indvars.iv.next.i113.3, %.lr.ph.split.i110 ] ; 5 uses
  %.03033.i112 = phi i64 [ %i.hi, %.lr.ph.split.preheader.i108.new ], [ %i.iw, %.lr.ph.split.i110 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.i108.new ], [ %niter.next.3, %.lr.ph.split.i110 ]
  %i.il = lshr i64 %.03033.i112, 8
  %i.im = trunc i64 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv.i111
  store i8 %i.im, ptr %i.in, align 1, !tbaa !18
  %i.io = lshr i64 %.03033.i112, 16
  %i.ip = trunc i64 %i.io to i8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv.i111
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  store i8 %i.ip, ptr %i.ir, align 1, !tbaa !18
  %i.is = lshr i64 %.03033.i112, 24
  %i.it = trunc i64 %i.is to i8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv.i111
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 2
  store i8 %i.it, ptr %i.iv, align 1, !tbaa !18
  %i.iw = lshr i64 %.03033.i112, 32               ; 3 uses
  %i.ix = trunc i64 %i.iw to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv.i111
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 3
  store i8 %i.ix, ptr %i.iz, align 1, !tbaa !18
  %indvars.iv.next.i113.3 = add nuw nsw i64 %indvars.iv.i111, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i106.loopexit206.unr-lcssa, label %.lr.ph.split.i110, !llvm.loop !24

.loopexit.i106.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i122
  %lcmp.mod210.not = icmp eq i64 %xtraiter208, 0
  br i1 %lcmp.mod210.not, label %.loopexit.i106, label %.lr.ph.split.us.i122.epil.preheader

.lr.ph.split.us.i122.epil.preheader:              ; preds = %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i120
  %indvars.iv39.i123.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i120 ], [ %indvars.iv.next40.i125.3, %.loopexit.i106.loopexit.unr-lcssa ]
  %.03033.us.i124.epil.init = phi i64 [ %i.hi, %.lr.ph.split.us.preheader.i120 ], [ %i.ih, %.loopexit.i106.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter208, 0
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph.split.us.i122.epil

.lr.ph.split.us.i122.epil:                        ; preds = %.lr.ph.split.us.i122.epil, %.lr.ph.split.us.i122.epil.preheader
  %indvars.iv39.i123.epil = phi i64 [ %indvars.iv39.i123.epil.init, %.lr.ph.split.us.i122.epil.preheader ], [ %indvars.iv.next40.i125.epil, %.lr.ph.split.us.i122.epil ] ; 2 uses
  %.03033.us.i124.epil = phi i64 [ %.03033.us.i124.epil.init, %.lr.ph.split.us.i122.epil.preheader ], [ %i.ja, %.lr.ph.split.us.i122.epil ]
  %epil.iter209 = phi i64 [ 0, %.lr.ph.split.us.i122.epil.preheader ], [ %epil.iter209.next, %.lr.ph.split.us.i122.epil ]
  %i.ja = lshr i64 %.03033.us.i124.epil, 8        ; 2 uses
  %i.jb = trunc i64 %i.ja to i8
  %i.jc = sub nuw nsw i64 %i.ht, %indvars.iv39.i123.epil
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.jc
  store i8 %i.jb, ptr %i.jd, align 1, !tbaa !18
  %indvars.iv.next40.i125.epil = add nuw nsw i64 %indvars.iv39.i123.epil, 1
  %epil.iter209.next = add i64 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i64 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %.loopexit.i106, label %.lr.ph.split.us.i122.epil, !llvm.loop !30

.loopexit.i106.loopexit206.unr-lcssa:             ; preds = %.lr.ph.split.i110
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i106, label %.lr.ph.split.i110.epil.preheader

.lr.ph.split.i110.epil.preheader:                 ; preds = %.loopexit.i106.loopexit206.unr-lcssa, %.lr.ph.split.preheader.i108
  %indvars.iv.i111.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i108 ], [ %indvars.iv.next.i113.3, %.loopexit.i106.loopexit206.unr-lcssa ]
  %.03033.i112.epil.init = phi i64 [ %i.hi, %.lr.ph.split.preheader.i108 ], [ %i.iw, %.loopexit.i106.loopexit206.unr-lcssa ]
  %lcmp.mod207 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod207)
  br label %.lr.ph.split.i110.epil

.lr.ph.split.i110.epil:                           ; preds = %.lr.ph.split.i110.epil, %.lr.ph.split.i110.epil.preheader
  %indvars.iv.i111.epil = phi i64 [ %indvars.iv.i111.epil.init, %.lr.ph.split.i110.epil.preheader ], [ %indvars.iv.next.i113.epil, %.lr.ph.split.i110.epil ] ; 2 uses
  %.03033.i112.epil = phi i64 [ %.03033.i112.epil.init, %.lr.ph.split.i110.epil.preheader ], [ %i.je, %.lr.ph.split.i110.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.split.i110.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.i110.epil ]
  %i.je = lshr i64 %.03033.i112.epil, 8           ; 2 uses
  %i.jf = trunc i64 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv.i111.epil
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !18
  %indvars.iv.next.i113.epil = add nuw nsw i64 %indvars.iv.i111.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i106, label %.lr.ph.split.i110.epil, !llvm.loop !31

.loopexit.i106:                                   ; preds = %.loopexit.i106.loopexit206.unr-lcssa, %.lr.ph.split.i110.epil, %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.split.us.i122.epil, %bb.ag
  %i.jh = load ptr, ptr %1, align 8, !tbaa !34
  %i.ji = sext i32 %i.n to i64
  %i.jj = getelementptr inbounds i8, ptr %i.jh, i64 %i.ji
  store ptr %i.jj, ptr %1, align 8, !tbaa !34
  br label %packint.exit130

packint.exit130:                                  ; preds = %bb.af, %.loopexit.i106
  %i.jk = load i64, ptr %i.e, align 8, !tbaa !22
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.gw, i64 noundef %i.jk) #7
  %i.jl = load i64, ptr %i.e, align 8, !tbaa !22
  %i.jm = add i64 %i.jl, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %packint.exit

bb.ah:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.jn = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.jo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jn) #8 ; 2 uses
  %i.jp = load i64, ptr %i.f, align 8, !tbaa !22
  %i.jq = icmp eq i64 %i.jo, %i.jp
  br i1 %i.jq, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jr = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.8) #7 ; 0 uses
  %.pre188 = load i64, ptr %i.f, align 8, !tbaa !22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.js = phi i64 [ %.pre188, %bb.ai ], [ %i.jo, %bb.ah ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.jn, i64 noundef %i.js) #7
  %i.jt = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.ju = icmp ult ptr %i.jt, %i.k
  br i1 %i.ju, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jv = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre189 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.jw = phi ptr [ %.pre189, %bb.ak ], [ %i.jt, %bb.aj ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store ptr %i.jx, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.jw, align 1, !tbaa !18
  %i.jy = load i64, ptr %i.f, align 8, !tbaa !22
  %i.jz = add i64 %i.q, 1
  %i.ka = add i64 %i.jz, %i.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %packint.exit

bb.am:                                            ; preds = %._crit_edge
  %i.kb = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.kc = icmp ult ptr %i.kb, %i.k
  br i1 %i.kc, label %bb.ao, label %bb.an

end_hunk_0
