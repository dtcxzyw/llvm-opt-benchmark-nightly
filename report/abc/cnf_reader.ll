Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cnf_reader?download=true
inline.NumInlined: 21
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to add clause: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Couldn't open file: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Parsing error. Unexpected char: %c.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Vector has %u(%u) entries: {\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@str = private unnamed_addr constant [28 x i8] c"There is no parameter line.\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @satoko_parse_dimacs(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.2) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %file_open.exit.thread, label %bb.b

file_open.exit.thread:                            ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %0) ; 0 uses
  br label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.e = tail call i64 @ftell(ptr noundef nonnull %i.a)
  tail call void @rewind(ptr noundef nonnull %i.a)
  %i.f = shl i64 %i.e, 32                         ; 3 uses
  %sext.i = add i64 %i.f, 12884901888
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #10 ; 6 uses
  %i.i = ashr exact i64 %i.f, 32                  ; 2 uses
  %i.j = tail call i64 @fread(ptr noundef %i.h, i64 noundef %i.i, i64 noundef 1, ptr noundef nonnull %i.a) ; 0 uses
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.i
  store i8 10, ptr %i.k, align 1, !tbaa !13
  %sext17.i = add i64 %i.f, 4294967296
  %i.l = ashr exact i64 %sext17.i, 32
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !13
  %i.n = tail call ptr @__ctype_b_loc() #11       ; 2 uses
  br label %skip_line.exit.outer

skip_line.exit.outer:                             ; preds = %vec_uint_alloc.exit, %bb.b
  %.078.ph = phi ptr [ %.8, %vec_uint_alloc.exit ], [ %i.h, %bb.b ]
  %.015.ph = phi ptr [ %i.dl, %vec_uint_alloc.exit ], [ null, %bb.b ] ; 2 uses
  %.0.ph = phi ptr [ %i.dd, %vec_uint_alloc.exit ], [ null, %bb.b ] ; 9 uses
  %i.o = icmp eq ptr %.0.ph, null
  %i.p = getelementptr inbounds nuw i8, ptr %.0.ph, i64 4 ; 7 uses
  %.phi.trans.insert178 = getelementptr i8, ptr %.0.ph, i64 8 ; 5 uses
  br label %skip_line.exit

skip_line.exit:                                   ; preds = %skip_line.exit.backedge, %skip_line.exit.outer
  %.078 = phi ptr [ %.078.ph, %skip_line.exit.outer ], [ %.078.be, %skip_line.exit.backedge ] ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !16   ; 16 uses
  %i.r = load i8, ptr %.078, align 1, !tbaa !13   ; 2 uses
  %i.s = sext i8 %i.r to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !18
  %i.v = and i16 %i.u, 8192
  %.not2.i = icmp eq i16 %i.v, 0
  br i1 %.not2.i, label %skip_spaces.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %skip_line.exit, %.lr.ph.i
  %i.w = phi ptr [ %i.x, %.lr.ph.i ], [ %.078, %skip_line.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13    ; 2 uses
  %i.z = sext i8 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !18
  %i.ac = and i16 %i.ab, 8192
  %.not.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i, label %skip_spaces.exit, label %.lr.ph.i, !llvm.loop !8

skip_spaces.exit:                                 ; preds = %.lr.ph.i, %skip_line.exit
  %i.ad = phi i8 [ %i.r, %skip_line.exit ], [ %i.y, %.lr.ph.i ] ; 2 uses
  %.3 = phi ptr [ %.078, %skip_line.exit ], [ %i.x, %.lr.ph.i ] ; 5 uses
  switch i8 %i.ad, label %bb.m [
    i8 0, label %bb.x
    i8 99, label %.preheader
    i8 112, label %bb.e
  ]

.preheader:                                       ; preds = %skip_spaces.exit, %bb.c
  %i.ae = phi i8 [ %.pr, %bb.c ], [ %i.ad, %skip_spaces.exit ]
  %.4 = phi ptr [ %i.af, %bb.c ], [ %.3, %skip_spaces.exit ] ; 3 uses
  switch i8 %i.ae, label %bb.c [
    i8 -1, label %skip_line.exit.backedge
    i8 10, label %bb.d
    i8 13, label %bb.d
  ]

bb.c:                                             ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.af, align 1, !tbaa !13
  br label %.preheader, !llvm.loop !9

bb.d:                                             ; preds = %.preheader, %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br label %skip_line.exit.backedge

skip_line.exit.backedge:                          ; preds = %.preheader, %bb.d, %read_clause.exit
  %.078.be = phi ptr [ %i.ag, %bb.d ], [ %.10, %read_clause.exit ], [ %.4, %.preheader ]
  br label %skip_line.exit

bb.e:                                             ; preds = %skip_spaces.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !18
  %i.am = and i16 %i.al, 8192
  %.not2.i24 = icmp eq i16 %i.am, 0
  br i1 %.not2.i24, label %skip_spaces.exit27.preheader, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.e, %.lr.ph.i25
  %i.an = phi ptr [ %i.ao, %.lr.ph.i25 ], [ %i.ah, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = sext i8 %i.ap to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !18
  %i.at = and i16 %i.as, 8192
  %.not.i26 = icmp eq i16 %i.at, 0
  br i1 %.not.i26, label %skip_spaces.exit27.preheader, label %.lr.ph.i25, !llvm.loop !8

skip_spaces.exit27.preheader:                     ; preds = %.lr.ph.i25, %bb.e
  %.179.ph = phi ptr [ %i.ah, %bb.e ], [ %i.ao, %.lr.ph.i25 ]
  br label %skip_spaces.exit27

skip_spaces.exit27:                               ; preds = %skip_spaces.exit27.preheader, %skip_spaces.exit27
  %.179 = phi ptr [ %i.az, %skip_spaces.exit27 ], [ %.179.ph, %skip_spaces.exit27.preheader ] ; 3 uses
  %i.au = load i8, ptr %.179, align 1, !tbaa !13
  %i.av = sext i8 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !18
  %i.ay = and i16 %i.ax, 8192
  %.not20 = icmp eq i16 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %.179, i64 1
  br i1 %.not20, label %skip_spaces.exit27, label %.lr.ph.i.i, !llvm.loop !10

.lr.ph.i.i:                                       ; preds = %skip_spaces.exit27, %.lr.ph.i.i
  %i.ba = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.179, %skip_spaces.exit27 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13  ; 4 uses
  %i.bd = sext i8 %i.bc to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !18 ; 2 uses
  %i.bg = and i16 %i.bf, 8192
  %.not.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i.i, label %skip_spaces.exit.i, label %.lr.ph.i.i, !llvm.loop !8

skip_spaces.exit.i:                               ; preds = %.lr.ph.i.i
  switch i8 %i.bc, label %bb.f [
    i8 45, label %.sink.split.i
    i8 43, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %skip_spaces.exit.i, %skip_spaces.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 2 ; 2 uses
  %.pre = load i8, ptr %i.bh, align 1, !tbaa !13  ; 2 uses
  %.phi.trans.insert = sext i8 %.pre to i64
  %.phi.trans.insert171 = getelementptr inbounds [2 x i8], ptr %i.q, i64 %.phi.trans.insert
  %.pre172 = load i16, ptr %.phi.trans.insert171, align 2, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %skip_spaces.exit.i
  %i.bi = phi i16 [ %i.bf, %skip_spaces.exit.i ], [ %.pre172, %.sink.split.i ]
  %i.bj = phi i8 [ %i.bc, %skip_spaces.exit.i ], [ %.pre, %.sink.split.i ] ; 2 uses
  %.promoted.i28 = phi ptr [ %i.bb, %skip_spaces.exit.i ], [ %i.bh, %.sink.split.i ]
  %i.bk = and i16 %i.bi, 2048
  %.not.i29 = icmp eq i16 %i.bk, 0
  br i1 %.not.i29, label %bb.g, label %.lr.ph.i30

bb.g:                                             ; preds = %bb.f
  %i.bl = sext i8 %i.bj to i32
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.bl) ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.lr.ph.i30:                                       ; preds = %bb.f, %.lr.ph.i30
  %i.bn = phi i8 [ %i.bu, %.lr.ph.i30 ], [ %i.bj, %bb.f ]
  %.01319.i = phi i32 [ %i.bs, %.lr.ph.i30 ], [ 0, %bb.f ]
  %i.bo = phi ptr [ %i.bt, %.lr.ph.i30 ], [ %.promoted.i28, %bb.f ]
  %i.bp = sext i8 %i.bn to i32
  %i.bq = mul nsw i32 %.01319.i, 10
  %i.br = add nsw i32 %i.bp, -48
  %i.bs = add i32 %i.br, %i.bq                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 4 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13  ; 3 uses
  %i.bv = sext i8 %i.bu to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !18 ; 2 uses
  %i.by = and i16 %i.bx, 2048
  %.not15.i = icmp eq i16 %i.by, 0
  br i1 %.not15.i, label %read_int.exit, label %.lr.ph.i30, !llvm.loop !11

read_int.exit:                                    ; preds = %.lr.ph.i30
  %.not17.i = icmp eq i8 %i.bc, 45
  %i.bz = sub nsw i32 0, %i.bs
  %i.ca = select i1 %.not17.i, i32 %i.bz, i32 %i.bs ; 2 uses
  %i.cb = and i16 %i.bx, 8192
  %.not2.i.i32 = icmp eq i16 %i.cb, 0
  br i1 %.not2.i.i32, label %skip_spaces.exit.i35, label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %read_int.exit, %.lr.ph.i.i33
  %i.cc = phi ptr [ %i.cd, %.lr.ph.i.i33 ], [ %i.bt, %read_int.exit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13  ; 2 uses
  %i.cf = sext i8 %i.ce to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !18
  %i.ci = and i16 %i.ch, 8192
  %.not.i.i34 = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i34, label %skip_spaces.exit.i35, label %.lr.ph.i.i33, !llvm.loop !8

skip_spaces.exit.i35:                             ; preds = %.lr.ph.i.i33, %read_int.exit
  %i.cj = phi i8 [ %i.bu, %read_int.exit ], [ %i.ce, %.lr.ph.i.i33 ] ; 2 uses
  %i.ck = phi ptr [ %i.bt, %read_int.exit ], [ %i.cd, %.lr.ph.i.i33 ] ; 2 uses
  switch i8 %i.cj, label %bb.h [
    i8 45, label %.sink.split.i36
    i8 43, label %.sink.split.i36
  ]

.sink.split.i36:                                  ; preds = %skip_spaces.exit.i35, %skip_spaces.exit.i35
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 2 uses
  %.pre173 = load i8, ptr %i.cl, align 1, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i36, %skip_spaces.exit.i35
  %i.cm = phi i8 [ %i.cj, %skip_spaces.exit.i35 ], [ %.pre173, %.sink.split.i36 ] ; 2 uses
  %.promoted.i37 = phi ptr [ %i.ck, %skip_spaces.exit.i35 ], [ %i.cl, %.sink.split.i36 ]
  %i.cn = sext i8 %i.cm to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !18
  %i.cq = and i16 %i.cp, 2048
  %.not.i38 = icmp eq i16 %i.cq, 0
  br i1 %.not.i38, label %bb.i, label %.lr.ph.i39

bb.i:                                             ; preds = %bb.h
  %i.cr = sext i8 %i.cm to i32
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.cr) ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.lr.ph.i39:                                       ; preds = %bb.h, %.lr.ph.i39
  %i.ct = phi ptr [ %i.cu, %.lr.ph.i39 ], [ %.promoted.i37, %bb.h ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 3 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13  ; 2 uses
  %i.cw = sext i8 %i.cv to i64
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !18
  %i.cz = and i16 %i.cy, 2048
  %.not15.i41 = icmp eq i16 %i.cz, 0
  br i1 %.not15.i41, label %read_int.exit43, label %.lr.ph.i39, !llvm.loop !11

read_int.exit43:                                  ; preds = %.lr.ph.i39, %bb.j
  %i.da = phi i8 [ %.pre174, %bb.j ], [ %i.cv, %.lr.ph.i39 ]
  %.7 = phi ptr [ %i.db, %bb.j ], [ %i.cu, %.lr.ph.i39 ] ; 3 uses
  switch i8 %i.da, label %bb.j [
    i8 -1, label %skip_line.exit45
    i8 10, label %bb.k
    i8 13, label %bb.k
  ]

bb.j:                                             ; preds = %read_int.exit43
  %i.db = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 2 uses
  %.pre174 = load i8, ptr %i.db, align 1, !tbaa !13
  br label %read_int.exit43, !llvm.loop !9

bb.k:                                             ; preds = %read_int.exit43, %read_int.exit43
  %i.dc = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br label %skip_line.exit45

skip_line.exit45:                                 ; preds = %read_int.exit43, %bb.k
  %.8 = phi ptr [ %i.dc, %bb.k ], [ %.7, %read_int.exit43 ]
  %i.dd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #10 ; 4 uses
  %i.de = add i32 %i.ca, -1
  %or.cond.i = icmp ult i32 %i.de, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.ca ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i32 0, ptr %i.df, align 4, !tbaa !22
  store i32 %spec.store.select.i, ptr %i.dd, align 8, !tbaa !23
  %.not.i46 = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i46, label %vec_uint_alloc.exit, label %bb.l

bb.l:                                             ; preds = %skip_line.exit45
  %i.dg = zext i32 %spec.store.select.i to i64
  %i.dh = shl nuw nsw i64 %i.dg, 2
  %i.di = tail call noalias ptr @malloc(i64 noundef %i.dh) #10
  br label %vec_uint_alloc.exit

vec_uint_alloc.exit:                              ; preds = %skip_line.exit45, %bb.l
  %i.dj = phi ptr [ %i.di, %bb.l ], [ null, %skip_line.exit45 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !24
  %i.dl = tail call ptr @satoko_create() #13
  br label %skip_line.exit.outer

bb.m:                                             ; preds = %skip_spaces.exit
  br i1 %i.o, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @free(ptr noundef %i.h) #13
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  store i32 0, ptr %i.p, align 4, !tbaa !22
  %i.dm = load i8, ptr %.3, align 1, !tbaa !13    ; 2 uses
  %i.dn = sext i8 %i.dm to i64
  %i.do = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !18
  %i.dq = and i16 %i.dp, 8192
  %.not2.i.i65 = icmp eq i16 %i.dq, 0
  br i1 %.not2.i.i65, label %skip_spaces.exit.i68, label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %bb.o, %.lr.ph.i.i66
  %i.dr = phi ptr [ %i.ds, %.lr.ph.i.i66 ], [ %.3, %bb.o ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13  ; 2 uses
  %i.du = sext i8 %i.dt to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !18
  %i.dx = and i16 %i.dw, 8192
  %.not.i.i67 = icmp eq i16 %i.dx, 0
  br i1 %.not.i.i67, label %skip_spaces.exit.i68, label %.lr.ph.i.i66, !llvm.loop !8

skip_spaces.exit.i68:                             ; preds = %.lr.ph.i.i66, %bb.o
  %i.dy = phi i8 [ %i.dm, %bb.o ], [ %i.dt, %.lr.ph.i.i66 ] ; 3 uses
  %i.dz = phi ptr [ %.3, %bb.o ], [ %i.ds, %.lr.ph.i.i66 ] ; 2 uses
  switch i8 %i.dy, label %bb.p [
    i8 45, label %.sink.split.i69
    i8 43, label %.sink.split.i69
  ]

.sink.split.i69:                                  ; preds = %skip_spaces.exit.i68, %skip_spaces.exit.i68
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1 ; 2 uses
  %.pre175 = load i8, ptr %i.ea, align 1, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i69, %skip_spaces.exit.i68
  %i.eb = phi i8 [ %i.dy, %skip_spaces.exit.i68 ], [ %.pre175, %.sink.split.i69 ] ; 3 uses
  %.promoted.i70 = phi ptr [ %i.dz, %skip_spaces.exit.i68 ], [ %i.ea, %.sink.split.i69 ]
  %i.ec = sext i8 %i.eb to i64
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !18
  %i.ef = and i16 %i.ee, 2048
  %.not.i71 = icmp eq i16 %i.ef, 0
  br i1 %.not.i71, label %bb.q, label %.lr.ph.i72

bb.q:                                             ; preds = %bb.p
  %i.eg = sext i8 %i.eb to i32
  %i.eh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.eg) ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.lr.ph.i72:                                       ; preds = %bb.p, %.lr.ph.i72
  %i.ei = phi i8 [ %i.ep, %.lr.ph.i72 ], [ %i.eb, %bb.p ]
  %.01319.i73 = phi i32 [ %i.en, %.lr.ph.i72 ], [ 0, %bb.p ]
  %i.ej = phi ptr [ %i.eo, %.lr.ph.i72 ], [ %.promoted.i70, %bb.p ]
  %i.ek = sext i8 %i.ei to i32
  %i.el = mul nsw i32 %.01319.i73, 10
  %i.em = add nsw i32 %i.ek, -48
  %i.en = add i32 %i.em, %i.el                    ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 4 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !13  ; 2 uses
  %i.eq = sext i8 %i.ep to i64
  %i.er = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !18
  %i.et = and i16 %i.es, 2048
  %.not15.i74 = icmp eq i16 %i.et, 0
  br i1 %.not15.i74, label %read_int.exit76, label %.lr.ph.i72, !llvm.loop !11

read_int.exit76:                                  ; preds = %.lr.ph.i72
  %.not17.i75 = icmp eq i8 %i.dy, 45
  %2 = sub nsw i32 0, %i.en
  %3 = select i1 %.not17.i75, i32 %2, i32 %i.en   ; 2 uses
  %i.eu = icmp eq i32 %3, 0
  br i1 %i.eu, label %read_int.exit76.read_clause.exit_crit_edge, label %.lr.ph.i47.a

read_int.exit76.read_clause.exit_crit_edge:       ; preds = %read_int.exit76
  %.0.val.pre = load ptr, ptr %.phi.trans.insert178, align 8, !tbaa !24
  br label %read_clause.exit

.lr.ph.i47.a:                                     ; preds = %read_int.exit76, %read_int.exit63
  %i.ev = phi ptr [ %i.fo, %read_int.exit63 ], [ %i.q, %read_int.exit76 ] ; 2 uses
  %i.ew = phi i32 [ %i.fu, %read_int.exit63 ], [ 0, %read_int.exit76 ] ; 6 uses
  %.9 = phi ptr [ %i.gx, %read_int.exit63 ], [ %i.eo, %read_int.exit76 ] ; 3 uses
  %i.ex = phi i32 [ %i.he, %read_int.exit63 ], [ %3, %read_int.exit76 ] ; 2 uses
  %i.ey = icmp slt i32 %i.ex, 1
  %i.ez = tail call i32 @llvm.abs.i32(i32 %i.ex, i1 true)
  %i.fa = shl nuw i32 %i.ez, 1
  %i.fb = add i32 %i.fa, -2
  %i.fc = zext i1 %i.ey to i32
  %i.fd = or disjoint i32 %i.fb, %i.fc
  %i.fe = load i32, ptr %.0.ph, align 8, !tbaa !23
  %i.ff = icmp eq i32 %i.ew, %i.fe
  br i1 %i.ff, label %bb.r, label %.vec_uint_push_back.exit_crit_edge.i

.vec_uint_push_back.exit_crit_edge.i:             ; preds = %.lr.ph.i47.a
  %.pre.i = load ptr, ptr %.phi.trans.insert178, align 8, !tbaa !24
  br label %vec_uint_push_back.exit.i

bb.r:                                             ; preds = %.lr.ph.i47.a
  %i.fg = icmp ult i32 %i.ew, 16
  br i1 %i.fg, label %vec_uint_reserve.exit.i.i, label %bb.s

vec_uint_reserve.exit.i.i:                        ; preds = %bb.r
  %i.fh = load ptr, ptr %.phi.trans.insert178, align 8, !tbaa !24
  %i.fi = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.fh, i64 noundef 64) #14
  br label %vec_uint_reserve.exit10.sink.split.i.i

bb.s:                                             ; preds = %bb.r
  %.not.i9.i.i = icmp sgt i32 %i.ew, 0
  %.pre7.i = load ptr, ptr %.phi.trans.insert178, align 8, !tbaa !24 ; 2 uses
  br i1 %.not.i9.i.i, label %bb.t, label %vec_uint_push_back.exit.i

bb.t:                                             ; preds = %bb.s
  %i.fj = shl nuw i32 %i.ew, 1                    ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = shl nuw nsw i64 %i.fk, 2
  %i.fm = tail call ptr @realloc(ptr noundef %.pre7.i, i64 noundef %i.fl) #14
  br label %vec_uint_reserve.exit10.sink.split.i.i

vec_uint_reserve.exit10.sink.split.i.i:           ; preds = %bb.t, %vec_uint_reserve.exit.i.i
  %i.fn = phi ptr [ %i.fm, %bb.t ], [ %i.fi, %vec_uint_reserve.exit.i.i ] ; 2 uses
  %.sink.i.i = phi i32 [ %i.fj, %bb.t ], [ 16, %vec_uint_reserve.exit.i.i ]
  store ptr %i.fn, ptr %.phi.trans.insert178, align 8, !tbaa !24
  store i32 %.sink.i.i, ptr %.0.ph, align 8, !tbaa !23
  %.pre8.i = load i32, ptr %i.p, align 4, !tbaa !22
  %.pre176 = load ptr, ptr %i.n, align 8, !tbaa !16
  br label %vec_uint_push_back.exit.i

vec_uint_push_back.exit.i:                        ; preds = %vec_uint_reserve.exit10.sink.split.i.i, %bb.s, %.vec_uint_push_back.exit_crit_edge.i
  %i.fo = phi ptr [ %i.ev, %.vec_uint_push_back.exit_crit_edge.i ], [ %i.ev, %bb.s ], [ %.pre176, %vec_uint_reserve.exit10.sink.split.i.i ] ; 5 uses
  %i.fp = phi i32 [ %i.ew, %.vec_uint_push_back.exit_crit_edge.i ], [ %i.ew, %bb.s ], [ %.pre8.i, %vec_uint_reserve.exit10.sink.split.i.i ]
  %i.fq = phi ptr [ %.pre.i, %.vec_uint_push_back.exit_crit_edge.i ], [ %.pre7.i, %bb.s ], [ %i.fn, %vec_uint_reserve.exit10.sink.split.i.i ] ; 2 uses
  %i.fr = zext i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fr
  store i32 %i.fd, ptr %i.fs, align 4, !tbaa !25
  %i.ft = load i32, ptr %i.p, align 4, !tbaa !22
  %i.fu = add i32 %i.ft, 1                        ; 3 uses
  store i32 %i.fu, ptr %i.p, align 4, !tbaa !22
  %i.fv = load i8, ptr %.9, align 1, !tbaa !13    ; 2 uses
  %i.fw = sext i8 %i.fv to i64
  %i.fx = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !18
  %i.fz = and i16 %i.fy, 8192
  %.not2.i.i52 = icmp eq i16 %i.fz, 0
  br i1 %.not2.i.i52, label %skip_spaces.exit.i55, label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %vec_uint_push_back.exit.i, %.lr.ph.i.i53
  %i.ga = phi ptr [ %i.gb, %.lr.ph.i.i53 ], [ %.9, %vec_uint_push_back.exit.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 3 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !13  ; 2 uses
  %i.gd = sext i8 %i.gc to i64
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !18
  %i.gg = and i16 %i.gf, 8192
  %.not.i.i54 = icmp eq i16 %i.gg, 0
  br i1 %.not.i.i54, label %skip_spaces.exit.i55, label %.lr.ph.i.i53, !llvm.loop !8

skip_spaces.exit.i55:                             ; preds = %.lr.ph.i.i53, %vec_uint_push_back.exit.i
  %i.gh = phi i8 [ %i.fv, %vec_uint_push_back.exit.i ], [ %i.gc, %.lr.ph.i.i53 ] ; 3 uses
  %i.gi = phi ptr [ %.9, %vec_uint_push_back.exit.i ], [ %i.gb, %.lr.ph.i.i53 ] ; 2 uses
  switch i8 %i.gh, label %bb.u [
    i8 45, label %.sink.split.i56
    i8 43, label %.sink.split.i56
  ]

.sink.split.i56:                                  ; preds = %skip_spaces.exit.i55, %skip_spaces.exit.i55
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1 ; 2 uses
  %.pre177 = load i8, ptr %i.gj, align 1, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i56, %skip_spaces.exit.i55
  %i.gk = phi i8 [ %i.gh, %skip_spaces.exit.i55 ], [ %.pre177, %.sink.split.i56 ] ; 3 uses
  %.promoted.i57 = phi ptr [ %i.gi, %skip_spaces.exit.i55 ], [ %i.gj, %.sink.split.i56 ]
  %i.gl = sext i8 %i.gk to i64
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.gl
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !18
  %i.go = and i16 %i.gn, 2048
  %.not.i58 = icmp eq i16 %i.go, 0
  br i1 %.not.i58, label %bb.v, label %.lr.ph.i59

bb.v:                                             ; preds = %bb.u
  %i.gp = sext i8 %i.gk to i32
  %i.gq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.gp) ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

.lr.ph.i59:                                       ; preds = %bb.u, %.lr.ph.i59
  %i.gr = phi i8 [ %i.gy, %.lr.ph.i59 ], [ %i.gk, %bb.u ]
  %.01319.i60 = phi i32 [ %i.gw, %.lr.ph.i59 ], [ 0, %bb.u ]
  %i.gs = phi ptr [ %i.gx, %.lr.ph.i59 ], [ %.promoted.i57, %bb.u ]
  %i.gt = sext i8 %i.gr to i32
  %i.gu = mul nsw i32 %.01319.i60, 10
  %i.gv = add nsw i32 %i.gt, -48
  %i.gw = add i32 %i.gv, %i.gu                    ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 4 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !13  ; 2 uses
  %i.gz = sext i8 %i.gy to i64
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !18
  %i.hc = and i16 %i.hb, 2048
  %.not15.i61 = icmp eq i16 %i.hc, 0
  br i1 %.not15.i61, label %read_int.exit63, label %.lr.ph.i59, !llvm.loop !11

read_int.exit63:                                  ; preds = %.lr.ph.i59
  %.not17.i62 = icmp eq i8 %i.gh, 45
  %i.hd = sub nsw i32 0, %i.gw
  %i.he = select i1 %.not17.i62, i32 %i.hd, i32 %i.gw ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %read_clause.exit, label %.lr.ph.i47.a

read_clause.exit:                                 ; preds = %read_int.exit63, %read_int.exit76.read_clause.exit_crit_edge
  %.0.val21 = phi i32 [ 0, %read_int.exit76.read_clause.exit_crit_edge ], [ %i.fu, %read_int.exit63 ]
  %.0.val = phi ptr [ %.0.val.pre, %read_int.exit76.read_clause.exit_crit_edge ], [ %i.fq, %read_int.exit63 ]
  %.10 = phi ptr [ %i.eo, %read_int.exit76.read_clause.exit_crit_edge ], [ %i.gx, %read_int.exit63 ]
  %i.hg = tail call i32 @satoko_add_clause(ptr noundef %.015.ph, ptr noundef %.0.val, i32 noundef %.0.val21) #13
  %.not = icmp eq i32 %i.hg, 0
  br i1 %.not, label %bb.w, label %skip_line.exit.backedge

bb.w:                                             ; preds = %read_clause.exit
  %i.hh = getelementptr i8, ptr %.0.ph, i64 8
  %i.hi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  %i.hj = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.hk = load i32, ptr %i.p, align 4, !tbaa !22
  %i.hl = load i32, ptr %.0.ph, align 8, !tbaa !23
  %i.hm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hj, ptr noundef nonnull @.str.5, i32 noundef %i.hk, i32 noundef %i.hl) #13 ; 0 uses
  %i.hn = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i48 = icmp eq i32 %i.hn, 0
  br i1 %.not.i48, label %vec_uint_print.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.w, %.lr.ph.i49
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i49 ], [ 0, %bb.w ] ; 2 uses
  %i.ho = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.hp = load ptr, ptr %i.hh, align 8, !tbaa !24
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !25
  %i.hs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ho, ptr noundef nonnull @.str.6, i32 noundef %i.hr) #13 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ht = load i32, ptr %i.p, align 4, !tbaa !22
  %i.hu = zext i32 %i.ht to i64
  %i.hv = icmp samesign ult i64 %indvars.iv.next.i, %i.hu
  br i1 %i.hv, label %.lr.ph.i49, label %vec_uint_print.exit, !llvm.loop !12

vec_uint_print.exit:                              ; preds = %.lr.ph.i49, %bb.w
  %i.hw = load ptr, ptr @stdout, align 8, !tbaa !27
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %i.hw) ; 0 uses
  br label %bb.z

bb.x:                                             ; preds = %skip_spaces.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.ph, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !24 ; 2 uses
  %.not.i50 = icmp eq ptr %i.hy, null
  br i1 %.not.i50, label %vec_uint_free.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.hy) #13
  br label %vec_uint_free.exit

vec_uint_free.exit:                               ; preds = %bb.x, %bb.y
  tail call void @free(ptr noundef nonnull %.0.ph) #13
  tail call void @free(ptr noundef %i.h) #13
  store ptr %.015.ph, ptr %1, align 8, !tbaa !29
  br label %bb.z

bb.z:                                             ; preds = %file_open.exit.thread, %vec_uint_free.exit, %vec_uint_print.exit, %bb.n
  %.017 = phi i32 [ 0, %vec_uint_print.exit ], [ 1, %vec_uint_free.exit ], [ -1, %bb.n ], [ -1, %file_open.exit.thread ]
  ret i32 %.017
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #1

declare ptr @satoko_create() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @satoko_add_clause(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !19}
!9 = distinct !{!9, !19}
!10 = distinct !{!10, !19}
!11 = distinct !{!11, !19}
!12 = distinct !{!12, !19}
!13 = !{!4, !4, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 short", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"short", !4, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"p1 int", !14, i64 0}
!21 = !{!"vec_uint_t_", !5, i64 0, !5, i64 4, !20, i64 8}
!22 = !{!21, !5, i64 4}
!23 = !{!21, !5, i64 0}
!24 = !{!21, !20, i64 8}
!25 = !{!5, !5, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"p1 _ZTS9solver_t_", !14, i64 0}
!29 = !{!28, !28, i64 0}
end_hunk_0
