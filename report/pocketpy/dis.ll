Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/dis?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.c11_vector = type { ptr, i32, i32, i32 }
%struct.c11_sbuf = type { %struct.c11_vector }
%struct.Bytecode = type { i16, i16 }

@.str = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"expected %d arguments, got %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"dis() expected a code object\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%-8s%-3s%-3d \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%d (to %d)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" (%v)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" (%q)\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" (%n)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@__add__ = external local_unnamed_addr global ptr, align 8
@__sub__ = external local_unnamed_addr global ptr, align 8
@__mul__ = external local_unnamed_addr global ptr, align 8
@__truediv__ = external local_unnamed_addr global ptr, align 8
@__floordiv__ = external local_unnamed_addr global ptr, align 8
@__mod__ = external local_unnamed_addr global ptr, align 8
@__pow__ = external local_unnamed_addr global ptr, align 8
@__lshift__ = external local_unnamed_addr global ptr, align 8
@__rshift__ = external local_unnamed_addr global ptr, align 8
@__and__ = external local_unnamed_addr global ptr, align 8
@__or__ = external local_unnamed_addr global ptr, align 8
@__xor__ = external local_unnamed_addr global ptr, align 8
@__matmul__ = external local_unnamed_addr global ptr, align 8
@__lt__ = external local_unnamed_addr global ptr, align 8
@__le__ = external local_unnamed_addr global ptr, align 8
@__eq__ = external local_unnamed_addr global ptr, align 8
@__ne__ = external local_unnamed_addr global ptr, align 8
@__gt__ = external local_unnamed_addr global ptr, align 8
@__ge__ = external local_unnamed_addr global ptr, align 8
@pk_current_vm = external thread_local local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @pk__add_module_dis() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_newmodule(ptr noundef nonnull @.str) #6
  tail call void @py_bindfunc(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @dis_dis) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @py_newmodule(ptr noundef) local_unnamed_addr #2

declare void @py_bindfunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @dis_dis(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.c11_vector, align 8         ; 12 uses
  %3 = alloca %struct.c11_sbuf, align 8           ; 37 uses
  %4 = alloca %struct.Bytecode, align 4           ; 9 uses
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %0) #6
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @py_istype(ptr noundef %1, i16 noundef signext 16) #6
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @py_touserdata(ptr noundef %1) #6
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 @py_istype(ptr noundef %1, i16 noundef signext 26) #6
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @py_touserdata(ptr noundef %1) #6
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.2) #6
  br label %bb.aw

bb.h:                                             ; preds = %bb.f, %bb.d
  %.08 = phi ptr [ %i.h, %bb.d ], [ %i.j, %bb.f ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @c11_vector__ctor(ptr noundef nonnull %2, i32 noundef 4) #6
  %i.l = getelementptr inbounds nuw i8, ptr %.08, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.08, i64 24 ; 5 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !27
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.m, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @c11_sbuf__ctor(ptr noundef nonnull %3) #6
  %i.r = load i32, ptr %i.m, align 8, !tbaa !27
  %.not6277.i = icmp slt i32 %i.r, 1
  br i1 %.not6277.i, label %.loopexit, label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %.08, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.08, i64 216
  %i.w = getelementptr inbounds nuw i8, ptr %.08, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %.08, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %.08, i64 64 ; 2 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.ab = call zeroext i1 @Bytecode__is_forward_jump(ptr noundef %i.aa) #6
  br i1 %i.ab, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !30
  %i.ae = sext i16 %i.ad to i32
  %i.af = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ag = add nsw i32 %i.ae, %i.af
  %i.ah = load i32, ptr %i.p, align 8, !tbaa !31  ; 2 uses
  %i.ai = load i32, ptr %i.q, align 4, !tbaa !32
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = call i32 @c11_vector__nextcap(ptr noundef nonnull %2) #6
  call void @c11_vector__reserve(ptr noundef nonnull %2, i32 noundef %i.ak) #6
  %.pre.i = load i32, ptr %i.p, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = phi i32 [ %.pre.i, %bb.k ], [ %i.ah, %bb.j ]
  %i.am = load ptr, ptr %2, align 8, !tbaa !33
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  store i32 %i.ag, ptr %i.ao, align 4, !tbaa !34
  %i.ap = load i32, ptr %i.p, align 8, !tbaa !31
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.p, align 8, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = load i32, ptr %i.m, align 8, !tbaa !27
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next.i, %i.as
  br i1 %i.at, label %bb.i, label %._crit_edge.i, !llvm.loop !8

bb.n:                                             ; preds = %.critedge63.i, %.lr.ph83.i
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph83.i ], [ %indvars.iv.next88.i, %.critedge63.i ] ; 6 uses
  %.05380.i = phi i32 [ -1, %.lr.ph83.i ], [ %.154.i, %.critedge63.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv87.i
  %i.aw = load i32, ptr %i.av, align 2, !tbaa !36
  store i32 %i.aw, ptr %4, align 4, !tbaa !36
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv87.i
  %.sroa.017.0.copyload.i = load i32, ptr %i.ay, align 4, !tbaa !34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 0, ptr %i.a, align 8
  %i.az = icmp eq i32 %.sroa.017.0.copyload.i, %.05380.i
  br i1 %i.az, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.3, i32 noundef %.sroa.017.0.copyload.i) #6 ; 0 uses
  %.not.i = icmp eq i32 %.05380.i, -1
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @c11_sbuf__write_char(ptr noundef nonnull %3, i8 noundef signext 10) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.154.i = phi i32 [ %.05380.i, %bb.n ], [ %.sroa.017.0.copyload.i, %bb.p ], [ %.sroa.017.0.copyload.i, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4
  %i.bb = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %i.bc = load i32, ptr %i.t, align 8             ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %.idx.i = shl nsw i64 %i.bd, 2
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %.idx.i
  %i.bf = icmp ne ptr %i.bb, null
  %i.bg = icmp ne i32 %i.bc, 0
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %.lr.ph72.i, label %.loopexit.i

bb.r:                                             ; preds = %.lr.ph72.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.06070.i, i64 4 ; 2 uses
  %.not85.i = icmp eq ptr %i.bi, %i.be
  br i1 %.not85.i, label %.loopexit.i, label %.lr.ph72.i, !llvm.loop !9

.lr.ph72.i:                                       ; preds = %bb.q, %bb.r
  %.06070.i = phi ptr [ %i.bi, %bb.r ], [ %i.bb, %bb.q ] ; 2 uses
  %i.bj = load i32, ptr %.06070.i, align 4, !tbaa !34
  %i.bk = zext i32 %i.bj to i64
  %i.bl = icmp eq i64 %indvars.iv87.i, %i.bk
  br i1 %i.bl, label %bb.s, label %bb.r

bb.s:                                             ; preds = %.lr.ph72.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.r, %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.bm = trunc nuw nsw i64 %indvars.iv87.i to i32 ; 2 uses
  %i.bn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.bm) #6 ; 0 uses
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %3, ptr noundef nonnull %i.c) #6
  %i.bo = load i16, ptr %4, align 4, !tbaa !38
  %i.bp = zext i16 %i.bo to i32
  %i.bq = call ptr @pk_opname(i32 noundef %i.bp) #6
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %3, ptr noundef %i.bq) #6
  call void @c11_sbuf__write_char(ptr noundef nonnull %3, i8 noundef signext 32) #6
  %i.br = load i16, ptr %4, align 4, !tbaa !38
  %i.bs = zext i16 %i.br to i32
  %i.bt = call ptr @pk_opname(i32 noundef %i.bs) #6
  %i.bu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bt) #7
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = sub i32 24, %i.bv                       ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph75.i, label %._crit_edge76.i

._crit_edge76.i:                                  ; preds = %.lr.ph75.i, %.loopexit.i
  %i.by = call zeroext i1 @Bytecode__is_forward_jump(ptr noundef nonnull %4) #6
  %i.bz = load i16, ptr %i.u, align 2, !tbaa !30  ; 2 uses
  br i1 %i.by, label %bb.t, label %bb.u

.lr.ph75.i:                                       ; preds = %.loopexit.i, %.lr.ph75.i
  %.05973.i = phi i32 [ %i.ca, %.lr.ph75.i ], [ 0, %.loopexit.i ]
  call void @c11_sbuf__write_char(ptr noundef nonnull %3, i8 noundef signext 32) #6
  %i.ca = add nuw nsw i32 %.05973.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %i.bw
  br i1 %exitcond.not.i, label %._crit_edge76.i, label %.lr.ph75.i, !llvm.loop !10

bb.t:                                             ; preds = %._crit_edge76.i
  %i.cb = sext i16 %i.bz to i32                   ; 2 uses
  %i.cc = add nsw i32 %i.cb, %i.bm
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, i32 noundef %i.cb, i32 noundef %i.cc) #6
  br label %bb.au

bb.u:                                             ; preds = %._crit_edge76.i
  %i.cd = zext i16 %i.bz to i32
  call void @c11_sbuf__write_int(ptr noundef nonnull %3, i32 noundef %i.cd) #6
  %i.ce = load i16, ptr %4, align 4, !tbaa !38
  switch i16 %i.ce, label %bb.au [
    i16 7, label %bb.v
    i16 106, label %bb.x
    i16 88, label %bb.x
    i16 17, label %bb.y
    i16 12, label %bb.y
    i16 19, label %bb.y
    i16 18, label %bb.y
    i16 27, label %bb.y
    i16 20, label %bb.y
    i16 21, label %bb.y
    i16 23, label %bb.y
    i16 28, label %bb.y
    i16 29, label %bb.y
    i16 34, label %bb.y
    i16 92, label %bb.y
    i16 33, label %bb.y
    i16 94, label %bb.y
    i16 16, label %bb.z
    i16 25, label %bb.z
    i16 31, label %bb.z
    i16 14, label %bb.aa
    i16 44, label %bb.ab
    i16 45, label %bb.ac
    i16 46, label %bb.ad
    i16 47, label %bb.ae
    i16 48, label %bb.af
    i16 49, label %bb.ag
    i16 50, label %bb.ah
    i16 51, label %bb.ai
    i16 52, label %bb.aj
    i16 53, label %bb.ak
    i16 54, label %bb.al
    i16 55, label %bb.am
    i16 56, label %bb.an
    i16 57, label %bb.ao
    i16 58, label %bb.ap
    i16 59, label %bb.aq
    i16 60, label %bb.ar
    i16 61, label %bb.as
    i16 62, label %bb.at
  ]

bb.v:                                             ; preds = %bb.u
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.cg = load i16, ptr %i.u, align 2, !tbaa !30
  %i.ch = zext i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = call zeroext i1 @py_repr(ptr noundef %i.ci) #6
  br i1 %i.cj, label %bb.w, label %disassemble.exit

bb.w:                                             ; preds = %bb.v
  %i.ck = call ptr (...) @py_retval() #6
  %i.cl = call { ptr, i32 } @py_tosv(ptr noundef %i.ck) #6 ; 2 uses
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  %i.cn = extractvalue { ptr, i32 } %i.cl, 1
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr %i.cm, i32 %i.cn) #6
  br label %bb.au

bb.x:                                             ; preds = %bb.u, %bb.u
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.cp = load i16, ptr %i.u, align 2, !tbaa !30
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cq
  %i.cs = call { ptr, i32 } @py_tosv(ptr noundef %i.cr) #6 ; 2 uses
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  %i.cu = extractvalue { ptr, i32 } %i.cs, 1
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, ptr %i.ct, i32 %i.cu) #6
  br label %bb.au

bb.y:                                             ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  %i.cv = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.cw = load i16, ptr %i.u, align 2, !tbaa !30
  %i.cx = zext i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, ptr noundef %i.cz) #6
  br label %bb.au

bb.z:                                             ; preds = %bb.u, %bb.u, %bb.u
  %i.da = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.db = load i16, ptr %i.u, align 2, !tbaa !30
  %i.dc = zext i16 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !42
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, ptr noundef %i.de) #6
  br label %bb.au

bb.aa:                                            ; preds = %bb.u
  %i.df = load ptr, ptr %i.v, align 8, !tbaa !44
  %i.dg = load i16, ptr %i.u, align 2, !tbaa !30
  %i.dh = zext i16 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !45
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !49
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.dm) #6
  br label %bb.au

bb.ab:                                            ; preds = %bb.u
  %i.dn = load ptr, ptr @__add__, align 8, !tbaa !42
  %i.do = call ptr @pk_op2str(ptr noundef %i.dn) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.do) #6
  br label %bb.au

bb.ac:                                            ; preds = %bb.u
  %i.dp = load ptr, ptr @__sub__, align 8, !tbaa !42
  %i.dq = call ptr @pk_op2str(ptr noundef %i.dp) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.dq) #6
  br label %bb.au

bb.ad:                                            ; preds = %bb.u
  %i.dr = load ptr, ptr @__mul__, align 8, !tbaa !42
  %i.ds = call ptr @pk_op2str(ptr noundef %i.dr) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.ds) #6
  br label %bb.au

bb.ae:                                            ; preds = %bb.u
  %i.dt = load ptr, ptr @__truediv__, align 8, !tbaa !42
  %i.du = call ptr @pk_op2str(ptr noundef %i.dt) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.du) #6
  br label %bb.au

bb.af:                                            ; preds = %bb.u
  %i.dv = load ptr, ptr @__floordiv__, align 8, !tbaa !42
  %i.dw = call ptr @pk_op2str(ptr noundef %i.dv) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.dw) #6
  br label %bb.au

bb.ag:                                            ; preds = %bb.u
  %i.dx = load ptr, ptr @__mod__, align 8, !tbaa !42
  %i.dy = call ptr @pk_op2str(ptr noundef %i.dx) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.dy) #6
  br label %bb.au

bb.ah:                                            ; preds = %bb.u
  %i.dz = load ptr, ptr @__pow__, align 8, !tbaa !42
  %i.ea = call ptr @pk_op2str(ptr noundef %i.dz) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.ea) #6
  br label %bb.au

bb.ai:                                            ; preds = %bb.u
  %i.eb = load ptr, ptr @__lshift__, align 8, !tbaa !42
  %i.ec = call ptr @pk_op2str(ptr noundef %i.eb) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.ec) #6
  br label %bb.au

bb.aj:                                            ; preds = %bb.u
  %i.ed = load ptr, ptr @__rshift__, align 8, !tbaa !42
  %i.ee = call ptr @pk_op2str(ptr noundef %i.ed) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.ee) #6
  br label %bb.au

bb.ak:                                            ; preds = %bb.u
  %i.ef = load ptr, ptr @__and__, align 8, !tbaa !42
  %i.eg = call ptr @pk_op2str(ptr noundef %i.ef) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.eg) #6
  br label %bb.au

bb.al:                                            ; preds = %bb.u
  %i.eh = load ptr, ptr @__or__, align 8, !tbaa !42
  %i.ei = call ptr @pk_op2str(ptr noundef %i.eh) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.ei) #6
  br label %bb.au

bb.am:                                            ; preds = %bb.u
  %i.ej = load ptr, ptr @__xor__, align 8, !tbaa !42
  %i.ek = call ptr @pk_op2str(ptr noundef %i.ej) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.ek) #6
  br label %bb.au

bb.an:                                            ; preds = %bb.u
  %i.el = load ptr, ptr @__matmul__, align 8, !tbaa !42
  %i.em = call ptr @pk_op2str(ptr noundef %i.el) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.em) #6
  br label %bb.au

bb.ao:                                            ; preds = %bb.u
  %i.en = load ptr, ptr @__lt__, align 8, !tbaa !42
  %i.eo = call ptr @pk_op2str(ptr noundef %i.en) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.eo) #6
  br label %bb.au

bb.ap:                                            ; preds = %bb.u
  %i.ep = load ptr, ptr @__le__, align 8, !tbaa !42
  %i.eq = call ptr @pk_op2str(ptr noundef %i.ep) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.eq) #6
  br label %bb.au

bb.aq:                                            ; preds = %bb.u
  %i.er = load ptr, ptr @__eq__, align 8, !tbaa !42
  %i.es = call ptr @pk_op2str(ptr noundef %i.er) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.es) #6
  br label %bb.au

bb.ar:                                            ; preds = %bb.u
  %i.et = load ptr, ptr @__ne__, align 8, !tbaa !42
  %i.eu = call ptr @pk_op2str(ptr noundef %i.et) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.eu) #6
  br label %bb.au

bb.as:                                            ; preds = %bb.u
  %i.ev = load ptr, ptr @__gt__, align 8, !tbaa !42
  %i.ew = call ptr @pk_op2str(ptr noundef %i.ev) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.ew) #6
  br label %bb.au

bb.at:                                            ; preds = %bb.u
  %i.ex = load ptr, ptr @__ge__, align 8, !tbaa !42
  %i.ey = call ptr @pk_op2str(ptr noundef %i.ex) #6
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.ey) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t
  %i.ez = load i32, ptr %i.m, align 8, !tbaa !27  ; 2 uses
  %i.fa = add nsw i32 %i.ez, -1
  %i.fb = zext i32 %i.fa to i64
  %.not61.i = icmp eq i64 %indvars.iv87.i, %i.fb
  br i1 %.not61.i, label %.critedge63.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @c11_sbuf__write_char(ptr noundef nonnull %3, i8 noundef signext 10) #6
  %.pre90.i = load i32, ptr %i.m, align 8, !tbaa !27
  br label %.critedge63.i

.critedge63.i:                                    ; preds = %bb.av, %bb.au
  %i.fc = phi i32 [ %.pre90.i, %bb.av ], [ %i.ez, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %.not62.not.i = icmp slt i64 %indvars.iv.next88.i, %i.fd
  br i1 %.not62.not.i, label %bb.n, label %.loopexit, !llvm.loop !11

disassemble.exit:                                 ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.aw

.loopexit:                                        ; preds = %.critedge63.i, %._crit_edge.i
  %i.fe = call ptr @c11_sbuf__submit(ptr noundef nonnull %3) #6 ; 2 uses
  %i.ff = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm) ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !51
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 120
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !71
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  call void %i.fi(ptr noundef nonnull %i.fj) #6, !inline_history !12
  %i.fk = load ptr, ptr %i.ff, align 8, !tbaa !51
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 120
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !71
  call void %i.fm(ptr noundef nonnull @.str.11) #6, !inline_history !12
  call void @c11_string__delete(ptr noundef %i.fe) #6
  call void @c11_vector__dtor(ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %i.fn = call ptr (...) @py_retval() #6
  call void @py_newnone(ptr noundef %i.fn) #6
  br label %bb.aw

bb.aw:                                            ; preds = %disassemble.exit, %bb.g, %.loopexit, %bb.b
  %.1 = phi i1 [ %i.d, %bb.b ], [ true, %.loopexit ], [ %i.k, %bb.g ], [ false, %disassemble.exit ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare zeroext i1 @py_exception(i16 noundef signext, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @py_istype(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @py_touserdata(ptr noundef) local_unnamed_addr #2

declare void @py_newnone(ptr noundef) local_unnamed_addr #2

declare ptr @py_retval(...) local_unnamed_addr #2

declare void @c11_vector__ctor(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Bytecode__is_forward_jump(ptr noundef) local_unnamed_addr #2

declare void @c11_vector__reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @c11_vector__nextcap(ptr noundef) local_unnamed_addr #2

declare void @c11_sbuf__ctor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @c11_sbuf__write_char(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare void @c11_sbuf__write_cstr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pk_opname(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare void @pk_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @c11_sbuf__write_int(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @py_repr(ptr noundef) local_unnamed_addr #2

declare { ptr, i32 } @py_tosv(ptr noundef) local_unnamed_addr #2

declare ptr @pk_op2str(ptr noundef) local_unnamed_addr #2

declare ptr @c11_sbuf__submit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #5

declare void @c11_string__delete(ptr noundef) local_unnamed_addr #2

declare void @c11_vector__dtor(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !35}
!9 = distinct !{!9, !35}
!10 = distinct !{!10, !35}
!11 = distinct !{!11, !35}
!12 = distinct !{null}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS8FuncDecl", !13, i64 0}
!15 = !{!"p1 _ZTS9py_TValue", !13, i64 0}
!16 = !{!"short", !4, i64 0}
!17 = !{!"_Bool", !4, i64 0}
!18 = !{!"py_TValue", !16, i64 0, !17, i64 2, !5, i64 4, !4, i64 8}
!19 = !{!"p1 _ZTS8NameDict", !13, i64 0}
!20 = !{!"p1 _ZTS8PyObject", !13, i64 0}
!21 = !{!"Function", !14, i64 0, !15, i64 8, !18, i64 16, !19, i64 40, !20, i64 48, !13, i64 56}
!22 = !{!21, !14, i64 0}
!23 = !{!"p1 _ZTS10SourceData", !13, i64 0}
!24 = !{!"p1 _ZTS10c11_string", !13, i64 0}
!25 = !{!"c11_vector", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!26 = !{!"CodeObject", !23, i64 0, !24, i64 8, !25, i64 16, !25, i64 40, !25, i64 64, !25, i64 88, !25, i64 112, !5, i64 136, !25, i64 144, !25, i64 168, !25, i64 192, !25, i64 216, !5, i64 240, !5, i64 244}
!27 = !{!26, !5, i64 24}
!28 = !{!26, !13, i64 16}
!29 = !{!"Bytecode", !16, i64 0, !16, i64 2}
!30 = !{!29, !16, i64 2}
!31 = !{!25, !5, i64 8}
!32 = !{!25, !5, i64 12}
!33 = !{!25, !13, i64 0}
!34 = !{!5, !5, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!16, !16, i64 0}
!37 = !{!26, !13, i64 40}
!38 = !{!29, !16, i64 0}
!39 = !{!26, !13, i64 64}
!40 = !{!26, !13, i64 112}
!41 = !{!"p1 _ZTS13py_OpaqueName", !13, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!26, !13, i64 88}
!44 = !{!26, !13, i64 216}
!45 = !{!14, !14, i64 0}
!46 = !{!"RefCounted", !5, i64 0, !13, i64 8}
!47 = !{!"p1 omnipotent char", !13, i64 0}
!48 = !{!"FuncDecl", !46, i64 0, !26, i64 16, !25, i64 264, !25, i64 288, !5, i64 312, !5, i64 316, !17, i64 320, !47, i64 328, !5, i64 336, !25, i64 344}
!49 = !{!48, !24, i64 24}
!50 = !{!"p1 _ZTS2VM", !13, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 _ZTS8py_Frame", !13, i64 0}
!53 = !{!"p1 _ZTS13BinTreeConfig", !13, i64 0}
!54 = !{!"p1 _ZTS7BinTree", !13, i64 0}
!55 = !{!"BinTree", !13, i64 0, !18, i64 8, !53, i64 32, !54, i64 40, !54, i64 48}
!56 = !{!"py_Callbacks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!57 = !{!"c11_chunkedvector", !25, i64 0, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!58 = !{!"", !5, i64 0, !4, i64 4, !57, i64 131080}
!59 = !{!"SourceLocation", !23, i64 0, !5, i64 8}
!60 = !{!"TraceInfo", !59, i64 0, !13, i64 16}
!61 = !{!"long", !4, i64 0}
!62 = !{!"WatchdogInfo", !61, i64 0}
!63 = !{!"LineProfiler", !25, i64 0, !25, i64 24, !17, i64 48}
!64 = !{!"any p2 pointer", !13, i64 0}
!65 = !{!"p2 omnipotent char", !64, i64 0}
!66 = !{!"FixedMemoryPool", !5, i64 0, !5, i64 4, !47, i64 8, !47, i64 16, !5, i64 24, !65, i64 32, !5, i64 40}
!67 = !{!"MultiPool", !4, i64 0}
!68 = !{!"ManagedHeap", !67, i64 0, !25, i64 160, !25, i64 184, !61, i64 208, !4, i64 216, !5, i64 228, !5, i64 232, !17, i64 236, !18, i64 240}
!69 = !{!"ValueStack", !15, i64 0, !15, i64 8, !4, i64 16}
!70 = !{!"VM", !52, i64 0, !55, i64 8, !25, i64 64, !15, i64 88, !15, i64 96, !56, i64 104, !18, i64 160, !18, i64 184, !5, i64 208, !5, i64 212, !4, i64 216, !13, i64 552, !58, i64 560, !15, i64 131680, !15, i64 131688, !60, i64 131696, !62, i64 131720, !63, i64 131728, !4, i64 131784, !66, i64 133320, !68, i64 133368, !69, i64 133632}
!71 = !{!70, !13, i64 120}
end_hunk_0
