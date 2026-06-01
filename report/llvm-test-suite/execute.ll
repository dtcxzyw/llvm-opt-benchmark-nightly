inline.NumInlined: 48
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.program_counter = type { i32, i32 }

@had_sigint = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"interrupted execution\00", align 1
@functions = external local_unnamed_addr global ptr, align 8
@pc = external global %struct.program_counter, align 4
@runtime_error = external local_unnamed_addr global i8, align 1
@interactive = external local_unnamed_addr global i8, align 1
@ex_stack = external local_unnamed_addr global ptr, align 8
@c_code = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Function %s not defined.\00", align 1
@f_names = external local_unnamed_addr global ptr, align 8
@i_base = external local_unnamed_addr global i32, align 4
@fn_stack = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Return from main program.\00", align 1
@o_base = external local_unnamed_addr global i32, align 4
@scale = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Square root of a negative number\00", align 1
@_zero_ = external local_unnamed_addr global ptr, align 8
@_one_ = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Divide by zero\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Modulo by zero\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"bad instruction: inst=%c\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [24 x i8] c"Interruption completed.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @stop_execution(i32 %0) #0 {
bb.a:
  store i32 1, ptr @had_sigint, align 4, !tbaa !4
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1) #12
  ret void
}

declare void @rt_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i8 @byte(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 3 uses
  %i.c = ashr i32 %i.b, 10
  %i.d = add nsw i32 %i.b, 1
  store i32 %i.d, ptr %i.a, align 4, !tbaa !8
  %i.e = srem i32 %i.b, 1024
  %i.f = load ptr, ptr @functions, align 8, !tbaa !10
  %i.g = load i32, ptr %0, align 4, !tbaa !12
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [168 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = sext i32 %i.e to i64
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15
  ret i8 %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @execute() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr @pc, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  store i8 0, ptr @runtime_error, align 1, !tbaa !15
  call void @init_num(ptr noundef nonnull %i.a) #12
  %i.b = load i8, ptr @interactive, align 1, !tbaa !15
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @signal(i32 noundef 2, ptr noundef nonnull @stop_execution) #12 ; 0 uses
  store i32 0, ptr @had_sigint, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8 ; 2 uses
  %i.e = load ptr, ptr @functions, align 8, !tbaa !10 ; 2 uses
  %i.f = load i32, ptr @pc, align 4, !tbaa !12    ; 3 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [168 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16
  %i.k = icmp slt i32 %i.d, %i.j
  %i.l = load i8, ptr @runtime_error, align 1
  %.not70158 = icmp eq i8 %i.l, 0
  %or.cond118159 = select i1 %i.k, i1 %.not70158, i1 false
  br i1 %or.cond118159, label %.lr.ph161, label %.critedgethread-pre-split

.lr.ph161:                                        ; preds = %bb.c, %bb.dj
  %i.m = phi ptr [ %i.uq, %bb.dj ], [ %i.h, %bb.c ] ; 2 uses
  %i.n = phi i32 [ %i.uo, %bb.dj ], [ %i.f, %bb.c ] ; 5 uses
  %i.o = phi ptr [ %i.un, %bb.dj ], [ %i.e, %bb.c ] ; 4 uses
  %i.p = phi i32 [ %i.um, %bb.dj ], [ %i.d, %bb.c ] ; 22 uses
  %i.q = ashr i32 %i.p, 10
  %i.r = add nsw i32 %i.p, 1                      ; 24 uses
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.s = srem i32 %i.p, 1024
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 20 uses
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.x = sext i32 %i.s to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !15    ; 6 uses
  switch i8 %i.z, label %bb.di [
    i8 65, label %bb.d
    i8 66, label %bb.g
    i8 90, label %bb.g
    i8 74, label %bb.h
    i8 67, label %bb.k
    i8 68, label %bb.p
    i8 75, label %bb.q
    i8 76, label %bb.t
    i8 77, label %bb.w
    i8 79, label %.preheader147
    i8 82, label %bb.ae
    i8 83, label %bb.ah
    i8 84, label %bb.ak
    i8 87, label %bb.al
    i8 80, label %bb.al
    i8 99, label %bb.ap
    i8 100, label %bb.ay
    i8 104, label %bb.bb
    i8 105, label %bb.bc
    i8 108, label %bb.bf
    i8 110, label %bb.bi
    i8 112, label %bb.bj
    i8 115, label %bb.bk
    i8 119, label %.preheader148
    i8 120, label %bb.bq
    i8 48, label %bb.bs
    i8 49, label %bb.bt
    i8 33, label %bb.bu
    i8 38, label %bb.bv
    i8 124, label %bb.bz
    i8 43, label %bb.cd
    i8 45, label %bb.cf
    i8 42, label %bb.ch
    i8 47, label %bb.cj
    i8 37, label %bb.cn
    i8 94, label %bb.cr
    i8 61, label %bb.cw
    i8 35, label %bb.cy
    i8 60, label %bb.da
    i8 123, label %bb.dc
    i8 62, label %bb.de
    i8 125, label %bb.dg
  ]

bb.d:                                             ; preds = %.lr.ph161
  %i.aa = ashr i32 %i.r, 10
  %i.ab = add nsw i32 %i.p, 2                     ; 3 uses
  store i32 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.ac = srem i32 %i.r, 1024
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15  ; 2 uses
  %.not117 = icmp sgt i8 %i.ai, -1
  br i1 %.not117, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = ashr i32 %i.ab, 10
  %i.ak = add nsw i32 %i.p, 3
  store i32 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.al = srem i32 %i.ab, 1024
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !13
  %i.ap = sext i32 %i.al to i64
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.060.in = phi i8 [ %i.ar, %bb.e ], [ %i.ai, %bb.d ]
  %.060 = zext i8 %.060.in to i32
  call void @incr_array(i32 noundef %.060) #12
  br label %bb.dj

bb.g:                                             ; preds = %.lr.ph161, %.lr.ph161
  %i.as = load ptr, ptr @ex_stack, align 8, !tbaa !20
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22
  %i.au = call signext i8 @is_zero(ptr noundef %i.at) #12
  %.not116 = icmp eq i8 %i.au, 0
  %i.av = zext i1 %.not116 to i8
  store i8 %i.av, ptr @c_code, align 1, !tbaa !15
  call void @pop() #12
  %.pre176 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %.pre177 = load ptr, ptr @functions, align 8, !tbaa !10
  %.pre178 = load i32, ptr @pc, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph161
  %i.aw = phi i32 [ %.pre178, %bb.g ], [ %i.n, %.lr.ph161 ]
  %i.ax = phi ptr [ %.pre177, %bb.g ], [ %i.o, %.lr.ph161 ]
  %i.ay = phi i32 [ %.pre176, %bb.g ], [ %i.r, %.lr.ph161 ] ; 4 uses
  %i.az = ashr i32 %i.ay, 10
  %i.ba = add nsw i32 %i.ay, 1                    ; 3 uses
  store i32 %i.ba, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.bb = srem i32 %i.ay, 1024
  %i.bc = sext i32 %i.aw to i64
  %i.bd = getelementptr inbounds [168 x i8], ptr %i.ax, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = sext i32 %i.az to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !13
  %i.bi = sext i32 %i.bb to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = ashr i32 %i.ba, 10
  %i.bn = add nsw i32 %i.ay, 2
end_hunk_0
begin_hunk_1_@execute:bb.a
._crit_edge157:                                   ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156, %bb.j
  %.063.lcssa = phi ptr [ %.063152, %bb.j ], [ %.063.lcssa199.unr, %.lr.ph156.prol.loopexit ], [ %.063.7, %.lr.ph156 ]
  %i.ct = zext nneg i32 %i.cf to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.063.lcssa, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !29
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  br label %bb.dj

bb.k:                                             ; preds = %.lr.ph161
  %i.cx = ashr i32 %i.r, 10
  %i.cy = add nsw i32 %i.p, 2                     ; 3 uses
  store i32 %i.cy, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.cz = srem i32 %i.r, 1024
  %i.da = sext i32 %i.cx to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !13
  %i.dd = sext i32 %i.cz to i64
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !15  ; 2 uses
  %.not113 = icmp sgt i8 %i.df, -1
  br i1 %.not113, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = ashr i32 %i.cy, 10
  %i.dh = add nsw i32 %i.p, 3
  store i32 %i.dh, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.di = srem i32 %i.cy, 1024
  %i.dj = sext i32 %i.dg to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !13
  %i.dm = sext i32 %i.di to i64
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.061.in = phi i8 [ %i.do, %bb.l ], [ %i.df, %bb.k ] ; 2 uses
  %.061 = zext i8 %.061.in to i32                 ; 2 uses
  %i.dp = zext i8 %.061.in to i64                 ; 3 uses
  %i.dq = getelementptr inbounds nuw [168 x i8], ptr %i.o, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !31
  %.not114 = icmp eq i8 %i.dr, 0
  br i1 %.not114, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ds = load ptr, ptr @f_names, align 8, !tbaa !32
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dp
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !13
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.2, ptr noundef %i.du) #12
  br label %bb.dj

bb.o:                                             ; preds = %bb.m
  call void @process_params(ptr noundef nonnull @pc, i32 noundef %.061) #12
  %i.dv = load ptr, ptr @functions, align 8, !tbaa !10
  %i.dw = getelementptr inbounds nuw [168 x i8], ptr %i.dv, i64 %i.dp
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 160
  %.0149 = load ptr, ptr %i.dx, align 8, !tbaa !35 ; 2 uses
  %.not115150 = icmp eq ptr %.0149, null
  br i1 %.not115150, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.0151 = phi ptr [ %.0, %.lr.ph ], [ %.0149, %bb.o ] ; 2 uses
  %i.dy = load i32, ptr %.0151, align 8, !tbaa !36
  call void @auto_var(i32 noundef %i.dy) #12
  %i.dz = getelementptr inbounds nuw i8, ptr %.0151, i64 8
  %.0 = load ptr, ptr %i.dz, align 8, !tbaa !35   ; 2 uses
  %.not115 = icmp eq ptr %.0, null
  br i1 %.not115, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %i.ea = load i32, ptr @pc, align 4, !tbaa !12
  call void @fpush(i32 noundef %i.ea) #12
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  call void @fpush(i32 noundef %i.eb) #12
  %i.ec = load i32, ptr @i_base, align 4, !tbaa !4
  call void @fpush(i32 noundef %i.ec) #12
  store i32 %.061, ptr @pc, align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  br label %bb.dj

bb.p:                                             ; preds = %.lr.ph161
  %i.ed = load ptr, ptr @ex_stack, align 8, !tbaa !20
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !22
  call void @push_copy(ptr noundef %i.ee) #12
  br label %bb.dj

bb.q:                                             ; preds = %.lr.ph161
  %i.ef = icmp eq i32 %i.n, 0
  %i.eg = load ptr, ptr @fn_stack, align 8
  %.059.in = select i1 %i.ef, ptr @i_base, ptr %i.eg
  %.059 = load i32, ptr %.059.in, align 4, !tbaa !4 ; 2 uses
  %i.eh = icmp eq i32 %.059, 10
  br i1 %i.eh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @push_b10_const(ptr noundef nonnull @pc)
  br label %bb.dj

bb.s:                                             ; preds = %bb.q
  call void @push_constant(ptr noundef nonnull @prog_char, i32 noundef %.059)
  br label %bb.dj

bb.t:                                             ; preds = %.lr.ph161
  %i.ei = ashr i32 %i.r, 10
  %i.ej = add nsw i32 %i.p, 2                     ; 3 uses
  store i32 %i.ej, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.ek = srem i32 %i.r, 1024
  %i.el = sext i32 %i.ei to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !13
  %i.eo = sext i32 %i.ek to i64
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !15  ; 2 uses
  %.not112 = icmp sgt i8 %i.eq, -1
  br i1 %.not112, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.er = ashr i32 %i.ej, 10
  %i.es = add nsw i32 %i.p, 3
  store i32 %i.es, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.et = srem i32 %i.ej, 1024
  %i.eu = sext i32 %i.er to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !13
  %i.ex = sext i32 %i.et to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.in = phi i8 [ %i.ez, %bb.u ], [ %i.eq, %bb.t ]
  %.1 = zext i8 %.1.in to i32
  call void @load_array(i32 noundef %.1) #12
  br label %bb.dj

bb.w:                                             ; preds = %.lr.ph161
  %i.fa = ashr i32 %i.r, 10
  %i.fb = add nsw i32 %i.p, 2                     ; 3 uses
  store i32 %i.fb, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.fc = srem i32 %i.r, 1024
  %i.fd = sext i32 %i.fa to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !13
  %i.fg = sext i32 %i.fc to i64
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !15  ; 2 uses
  %.not111 = icmp sgt i8 %i.fi, -1
  br i1 %.not111, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = ashr i32 %i.fb, 10
  %i.fk = add nsw i32 %i.p, 3
  store i32 %i.fk, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.fl = srem i32 %i.fb, 1024
  %i.fm = sext i32 %i.fj to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !13
  %i.fp = sext i32 %i.fl to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2.in = phi i8 [ %i.fr, %bb.x ], [ %i.fi, %bb.w ]
  call void @decr_array(i8 noundef signext %.2.in) #12
  br label %bb.dj

.preheader147:                                    ; preds = %.lr.ph161, %bb.ab
  %i.fs = phi i32 [ %.pre175, %bb.ab ], [ %i.n, %.lr.ph161 ]
  %i.ft = phi ptr [ %.pre174, %bb.ab ], [ %i.o, %.lr.ph161 ]
  %i.fu = phi i32 [ %.pre173, %bb.ab ], [ %i.r, %.lr.ph161 ] ; 4 uses
  %i.fv = ashr i32 %i.fu, 10
  %i.fw = add nsw i32 %i.fu, 1                    ; 3 uses
  store i32 %i.fw, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.fx = srem i32 %i.fu, 1024
  %i.fy = sext i32 %i.fs to i64
  %i.fz = getelementptr inbounds [168 x i8], ptr %i.ft, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = sext i32 %i.fv to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !13
  %i.ge = sext i32 %i.fx to i64
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.gg, label %.sink.split [
    i8 34, label %bb.ac
    i8 92, label %bb.z
  ]

bb.z:                                             ; preds = %.preheader147
  %i.gh = ashr i32 %i.fw, 10
  %i.gi = add nsw i32 %i.fu, 2
  store i32 %i.gi, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.gj = srem i32 %i.fw, 1024
  %i.gk = sext i32 %i.gh to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !13
  %i.gn = sext i32 %i.gj to i64
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !15
  %0 = add i8 %i.gp, -34                          ; 2 uses
  %1 = call i8 @llvm.fshl.i8(i8 %0, i8 %0, i8 7)
  switch i8 %1, label %bb.ab [
    i8 0, label %bb.ac
    i8 38, label %.sink.split
    i8 41, label %2
    i8 40, label %3
    i8 32, label %4
    i8 34, label %bb.aa
    i8 29, label %switch.lookup
  ]

2:                                                ; preds = %bb.z
  br label %.sink.split

3:                                                ; preds = %bb.z
  br label %.sink.split

4:                                                ; preds = %bb.z
  br label %.sink.split

bb.aa:                                            ; preds = %bb.z
  br label %.sink.split

switch.lookup:                                    ; preds = %bb.z
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %.preheader147, %switch.lookup, %bb.aa, %4, %3, %2
  %.sink = phi i8 [ %i.gg, %.preheader147 ], [ 9, %2 ], [ 13, %3 ], [ 7, %4 ], [ 12, %bb.aa ], [ 92, %switch.lookup ], [ 10, %bb.z ]
  call void @out_char(i8 noundef signext %.sink) #12
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.z
  %.pre173 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %.pre174 = load ptr, ptr @functions, align 8, !tbaa !10
  %.pre175 = load i32, ptr @pc, align 4, !tbaa !12
  br label %.preheader147, !llvm.loop !39

bb.ac:                                            ; preds = %bb.z, %.preheader147
  %i.gq = load i8, ptr @interactive, align 1, !tbaa !15
  %.not110 = icmp eq i8 %i.gq, 0
  br i1 %.not110, label %bb.dj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gr = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.gs = call i32 @fflush(ptr noundef %i.gr)     ; 0 uses
  br label %bb.dj

bb.ae:                                            ; preds = %.lr.ph161
  %.not107 = icmp eq i32 %i.n, 0
  br i1 %.not107, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !42
  call void @pop_vars(ptr noundef %i.gu) #12
  %i.gv = load ptr, ptr @functions, align 8, !tbaa !10
  %i.gw = load i32, ptr @pc, align 4, !tbaa !12
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [168 x i8], ptr %i.gv, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 152
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !43
  call void @pop_vars(ptr noundef %i.ha) #12
  %i.hb = call i32 @fpop() #12                    ; 0 uses
  %i.hc = call i32 @fpop() #12
  store i32 %i.hc, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.hd = call i32 @fpop() #12
  store i32 %i.hd, ptr @pc, align 4, !tbaa !12
  br label %bb.dj

bb.ag:                                            ; preds = %bb.ae
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.3) #12
  br label %bb.dj

bb.ah:                                            ; preds = %.lr.ph161
  %i.he = ashr i32 %i.r, 10
  %i.hf = add nsw i32 %i.p, 2                     ; 3 uses
  store i32 %i.hf, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.hg = srem i32 %i.r, 1024
  %i.hh = sext i32 %i.he to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hh
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !13
  %i.hk = sext i32 %i.hg to i64
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !15  ; 2 uses
  %.not106 = icmp sgt i8 %i.hm, -1
  br i1 %.not106, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hn = ashr i32 %i.hf, 10
  %i.ho = add nsw i32 %i.p, 3
  store i32 %i.ho, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.hp = srem i32 %i.hf, 1024
  %i.hq = sext i32 %i.hn to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !13
  %i.ht = sext i32 %i.hp to i64
  %i.hu = getelementptr inbounds i8, ptr %i.hs, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !15
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3.in = phi i8 [ %i.hv, %bb.ai ], [ %i.hm, %bb.ah ]
  %.3 = zext i8 %.3.in to i32
  call void @store_array(i32 noundef %.3) #12
  br label %bb.dj

bb.ak:                                            ; preds = %.lr.ph161
  %i.hw = load ptr, ptr @ex_stack, align 8, !tbaa !20
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !22
  %i.hy = call signext i8 @is_zero(ptr noundef %i.hx) #12 ; 2 uses
  store i8 %i.hy, ptr @c_code, align 1, !tbaa !15
  %i.hz = load ptr, ptr @ex_stack, align 8, !tbaa !20
  call void @free_num(ptr noundef %i.hz) #12
  %.not.i = icmp eq i8 %i.hy, 0
  %_zero_.val.i = load ptr, ptr @_zero_, align 8
  %_one_.val.i = load ptr, ptr @_one_, align 8
  %i.ia = select i1 %.not.i, ptr %_zero_.val.i, ptr %_one_.val.i
  %i.ib = call ptr @copy_num(ptr noundef %i.ia) #12
  %i.ic = load ptr, ptr @ex_stack, align 8, !tbaa !20
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !22
  br label %bb.dj

bb.al:                                            ; preds = %.lr.ph161, %.lr.ph161
  %i.id = load ptr, ptr @ex_stack, align 8, !tbaa !20
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !22
  %i.if = load i32, ptr @o_base, align 4, !tbaa !4
  call void @out_num(ptr noundef %i.ie, i32 noundef %i.if, ptr noundef nonnull @out_char) #12
  %i.ig = icmp eq i8 %i.z, 87
  br i1 %i.ig, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @out_char(i8 noundef signext 10) #12
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @store_var(i32 noundef 3) #12
  %i.ih = load i8, ptr @interactive, align 1, !tbaa !15
  %.not105 = icmp eq i8 %i.ih, 0
  br i1 %.not105, label %bb.dj, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ii = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.ij = call i32 @fflush(ptr noundef %i.ii)     ; 0 uses
  br label %bb.dj

bb.ap:                                            ; preds = %.lr.ph161
  %i.ik = ashr i32 %i.r, 10
  %i.il = add nsw i32 %i.p, 2
  store i32 %i.il, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.im = srem i32 %i.r, 1024
  %i.in = sext i32 %i.ik to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.in
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !13
  %i.iq = sext i32 %i.im to i64
  %i.ir = getelementptr inbounds i8, ptr %i.ip, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !15
  switch i8 %i.is, label %bb.dj [
    i8 76, label %bb.aq
    i8 83, label %bb.au
    i8 82, label %bb.av
    i8 73, label %bb.ax
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.it = load ptr, ptr @ex_stack, align 8, !tbaa !20 ; 3 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !22 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !44 ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !46 ; 4 uses
  br i1 %i.ix, label %bb.ar, label %._crit_edge171

bb.ar:                                            ; preds = %bb.aq
  %.not104 = icmp eq i32 %i.iz, 0
  br i1 %.not104, label %._crit_edge171, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.jb = load i8, ptr %i.ja, align 4, !tbaa !15
  %i.jc = icmp eq i8 %i.jb, 0
  br i1 %i.jc, label %bb.at, label %._crit_edge171

bb.at:                                            ; preds = %bb.as
  call void @int2num(ptr noundef nonnull %i.it, i32 noundef %i.iz) #12
  br label %bb.dj

._crit_edge171:                                   ; preds = %bb.aq, %bb.as, %bb.ar
  %i.jd = phi i32 [ 0, %bb.ar ], [ %i.iz, %bb.as ], [ %i.iz, %bb.aq ]
  %i.je = add nsw i32 %i.jd, %i.iw
  call void @int2num(ptr noundef nonnull %i.it, i32 noundef %i.je) #12
  br label %bb.dj

bb.au:                                            ; preds = %bb.ap
  %i.jf = load ptr, ptr @ex_stack, align 8, !tbaa !20 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !22
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !46
  call void @int2num(ptr noundef nonnull %i.jf, i32 noundef %i.ji) #12
  br label %bb.dj

bb.av:                                            ; preds = %bb.ap
  %i.jj = load ptr, ptr @ex_stack, align 8, !tbaa !20
  %i.jk = load i32, ptr @scale, align 4, !tbaa !4
  %i.jl = call i32 @bc_sqrt(ptr noundef %i.jj, i32 noundef %i.jk) #12
  %.not103 = icmp eq i32 %i.jl, 0
  br i1 %.not103, label %bb.aw, label %bb.dj

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.4) #12
  br label %bb.dj

bb.ax:                                            ; preds = %bb.ap
  %i.jm = load i32, ptr @i_base, align 4, !tbaa !4
  call void @push_constant(ptr noundef nonnull @input_char, i32 noundef %i.jm)
  br label %bb.dj

bb.ay:                                            ; preds = %.lr.ph161
  %i.jn = ashr i32 %i.r, 10
  %i.jo = add nsw i32 %i.p, 2                     ; 3 uses
  store i32 %i.jo, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.jp = srem i32 %i.r, 1024
  %i.jq = sext i32 %i.jn to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !13
  %i.jt = sext i32 %i.jp to i64
  %i.ju = getelementptr inbounds i8, ptr %i.js, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !15  ; 2 uses
  %.not102 = icmp sgt i8 %i.jv, -1
  br i1 %.not102, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jw = ashr i32 %i.jo, 10
  %i.jx = add nsw i32 %i.p, 3
  store i32 %i.jx, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.jy = srem i32 %i.jo, 1024
  %i.jz = sext i32 %i.jw to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jz
end_hunk_1
begin_hunk_2_@push_constant:bb.a
  %.pre69 = load ptr, ptr %i.a, align 8, !tbaa !10 ; 2 uses
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr @_zero_, align 8, !tbaa !10
  call void @bc_sub(ptr noundef %i.bc, ptr noundef %.pre69, ptr noundef nonnull %i.a) #12
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bd = phi ptr [ %.pre68, %bb.g ], [ %.pre69, %bb.f ]
  call void @push_num(ptr noundef %i.bd) #12
  call void @free_num(ptr noundef nonnull %i.b) #12
  call void @free_num(ptr noundef nonnull %i.c) #12
  call void @free_num(ptr noundef nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local signext i8 @prog_char() #5 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8 ; 3 uses
  %i.b = ashr i32 %i.a, 10
  %i.c = add nsw i32 %i.a, 1
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @pc, i64 4), align 4, !tbaa !8
  %i.d = srem i32 %i.a, 1024
  %i.e = load ptr, ptr @functions, align 8, !tbaa !10
  %i.f = load i32, ptr @pc, align 4, !tbaa !12
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [168 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  %i.m = sext i32 %i.d to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15
  ret i8 %i.o
}

declare void @load_array(i32 noundef) local_unnamed_addr #1

declare void @decr_array(i8 noundef signext) local_unnamed_addr #1

declare void @out_char(i8 noundef signext) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

declare void @pop_vars(ptr noundef) local_unnamed_addr #1

declare i32 @fpop() local_unnamed_addr #1

declare void @store_array(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @assign(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ex_stack, align 8, !tbaa !20
  tail call void @free_num(ptr noundef %i.a) #12
  %.not = icmp eq i8 %0, 0
  %_zero_.val = load ptr, ptr @_zero_, align 8
  %_one_.val = load ptr, ptr @_one_, align 8
  %i.b = select i1 %.not, ptr %_zero_.val, ptr %_one_.val
  %i.c = tail call ptr @copy_num(ptr noundef %i.b) #12
  %i.d = load ptr, ptr @ex_stack, align 8, !tbaa !20
  store ptr %i.c, ptr %i.d, align 8, !tbaa !22
  ret void
}

declare void @out_num(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @store_var(i32 noundef) local_unnamed_addr #1

declare void @int2num(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @bc_sqrt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local signext i8 @input_char() #7 {
bb.a:
  %i.a = load ptr, ptr @stdin, align 8, !tbaa !40
  %i.b = tail call i32 @getc(ptr noundef %i.a), !inline_history !58 ; 2 uses
  %sext.mask = and i32 %i.b, 255
  %i.c = icmp eq i32 %sext.mask, 92
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stdin, align 8, !tbaa !40
  %i.e = tail call i32 @getc(ptr noundef %i.d), !inline_history !58 ; 2 uses
  %sext.mask29 = and i32 %i.e, 255
  %i.f = icmp eq i32 %sext.mask29, 10
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stdin, align 8, !tbaa !40
  %i.h = tail call i32 @getc(ptr noundef %i.g), !inline_history !58
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0.in = phi i32 [ %i.h, %bb.c ], [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.0 = trunc i32 %.0.in to i8                    ; 6 uses
  %i.i = tail call ptr @__ctype_b_loc() #14
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %sext = shl i32 %.0.in, 24                      ; 2 uses
  %i.k = ashr exact i32 %sext, 24                 ; 4 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !61
  %i.o = and i16 %i.n, 2048
  %.not = icmp eq i16 %i.o, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add i8 %.0, -48
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.k, -65
  %or.cond = icmp ult i32 %i.q, 6
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = add i8 %.0, -55
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.k, -97
  %or.cond5 = icmp ult i32 %i.s, 6
  br i1 %or.cond5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = add i8 %.0, -87
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  switch i32 %sext, label %bb.k [
    i32 771751936, label %bb.l
    i32 754974720, label %bb.l
    i32 721420288, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = icmp slt i32 %i.k, 33
  %. = select i1 %i.u, i8 32, i8 58
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.j, %bb.j, %bb.i, %bb.g, %bb.e
  %.027 = phi i8 [ %i.p, %bb.e ], [ %i.r, %bb.g ], [ %i.t, %bb.i ], [ %.0, %bb.j ], [ %., %bb.k ], [ %.0, %bb.j ], [ %.0, %bb.j ]
  ret i8 %.027
}

declare void @decr_var(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare void @incr_var(i32 noundef) local_unnamed_addr #1

declare void @load_var(i32 noundef) local_unnamed_addr #1

declare void @bc_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare signext i8 @check_stack(i32 noundef) local_unnamed_addr #1

declare void @bc_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @push_num(ptr noundef) local_unnamed_addr #1

declare void @bc_multiply(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @bc_divide(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @bc_modulo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @bc_raise(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare signext i8 @is_neg(ptr noundef) local_unnamed_addr #1

declare i32 @bc_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @use_quit(i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

declare ptr @copy_num(ptr noundef) local_unnamed_addr #1

declare void @free_num(ptr noundef) local_unnamed_addr #1

declare ptr @new_num(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 4}
!9 = !{!"", !5, i64 0, !5, i64 4}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!17, !5, i64 136}
!17 = !{!"", !6, i64 0, !6, i64 8, !5, i64 136, !18, i64 144, !19, i64 152, !19, i64 160}
!18 = !{!"p1 _ZTS14bc_label_group", !11, i64 0}
!19 = !{!"p1 _ZTS8arg_list", !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS10estack_rec", !11, i64 0}
!22 = !{!23, !11, i64 0}
!23 = !{!"estack_rec", !11, i64 0, !21, i64 8}
!24 = !{!18, !18, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !6, i64 0}
!31 = !{!17, !6, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p2 omnipotent char", !34, i64 0}
!34 = !{!"any p2 pointer", !11, i64 0}
!35 = !{!19, !19, i64 0}
!36 = !{!37, !5, i64 0}
!37 = !{!"arg_list", !5, i64 0, !19, i64 8}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!42 = !{!17, !19, i64 160}
!43 = !{!17, !19, i64 152}
!44 = !{!45, !5, i64 4}
!45 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !6, i64 16}
!46 = !{!45, !5, i64 8}
!47 = distinct !{!47, !28}
!48 = !{!23, !21, i64 8}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
!53 = distinct !{!53, !28}
!54 = distinct !{!54, !28}
!55 = distinct !{!55, !28}
!56 = distinct !{!56, !28}
!57 = distinct !{!57, !28}
!58 = distinct !{null}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 short", !11, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !6, i64 0}
end_hunk_2
