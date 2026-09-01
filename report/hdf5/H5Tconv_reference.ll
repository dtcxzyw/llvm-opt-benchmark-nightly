Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Tconv_reference?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.H5R_ref_priv_t = type { %union.anon.5, i64, i32, i8, i8, i8 }
%union.anon.5 = type { %struct.H5R_ref_priv_reg_t }
%struct.H5R_ref_priv_reg_t = type { %struct.H5R_ref_priv_obj_t, ptr }
%struct.H5R_ref_priv_obj_t = type { %struct.H5O_token_t, ptr }
%struct.H5O_token_t = type { [16 x i8] }

@H5T_init_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [50 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5Tconv_reference.c\00", align 1
@__func__.H5T__conv_ref = private unnamed_addr constant [14 x i8] c"H5T__conv_ref\00", align 1
@H5E_DATATYPE_g = external local_unnamed_addr global i64, align 8
@H5E_BADTYPE_g = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"not a datatype\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"not a H5T_REFERENCE datatype\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"not an H5T_STD_REF datatype\00", align 1
@H5E_ARGS_g = external local_unnamed_addr global i64, align 8
@H5E_CANTGET_g = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"can't check if reference data is 'nil'\00", align 1
@H5E_WRITEERROR_g = external local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"can't set reference data to 'nil'\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"unable to obtain size of reference\00", align 1
@H5E_RESOURCE_g = external local_unnamed_addr global i64, align 8
@H5E_NOSPACE_g = external local_unnamed_addr global i64, align 8
@.str.7 = private unnamed_addr constant [45 x i8] c"memory allocation failed for type conversion\00", align 1
@H5E_READERROR_g = external local_unnamed_addr global i64, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"can't read reference data\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"can't write reference data\00", align 1
@H5E_UNSUPPORTED_g = external local_unnamed_addr global i64, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"unknown conversion command\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"ref_seq_blk\00", align 1
@H5_ref_seq_blk_free_list = internal global { i8, [3 x i8], i32, i32, [4 x i8], i64, ptr, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @.str.11, ptr null }, align 8

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5T__conv_ref(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 19 uses
  %i.b = alloca i8, align 1                       ; 15 uses
  %9 = alloca %struct.H5R_ref_priv_t, align 8     ; 6 uses
  %i.c = load i8, ptr @H5T_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %.thread263.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %2, align 8, !tbaa !13
  switch i32 %i.i, label %bb.az [
    i32 0, label %bb.c
    i32 2, label %.thread263.thread
    i32 1, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %0, null
  %i.k = icmp eq ptr %1, null
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.m = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !16
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 85, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %.thread263.thread

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27
  %.not245 = icmp eq i32 %i.r, 7
  br i1 %.not245, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.t = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !16
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 87, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %.thread263.thread

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27
  %.not246 = icmp eq i32 %i.y, 7
  br i1 %.not246, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.aa = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !16
  %i.ab = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 89, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %.thread263.thread

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !30, !range !10, !noundef !11
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.ag = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !16
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 92, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread263.thread

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ai, align 4, !tbaa !31
  br label %.thread263.thread

bb.l:                                             ; preds = %bb.b
  %i.aj = icmp eq ptr %0, null
  %i.ak = icmp eq ptr %1, null
  %or.cond3 = or i1 %i.aj, %i.ak
  br i1 %or.cond3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !16
  %i.am = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !16
  %i.an = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 106, i64 noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %.thread263.thread

bb.n:                                             ; preds = %bb.l
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0208 = phi i64 [ %i.ar, %bb.o ], [ %5, %bb.n ] ; 3 uses
  %.0204 = phi i64 [ %i.av, %bb.o ], [ %5, %bb.n ] ; 8 uses
  %.not241 = icmp eq ptr %8, null                 ; 3 uses
  %i.aw = icmp sle i64 %.0204, %.0208             ; 3 uses
  %.not243346 = icmp eq i64 %4, 0
  br i1 %.not243346, label %.thread263.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %.not242 = icmp eq i64 %6, 0
  %.0204. = select i1 %.not242, i64 %.0204, i64 %6
  %.0201 = select i1 %.not241, i64 0, i64 %.0204.
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %.loopexit412
  %.0179354 = phi i1 [ false, %.lr.ph ], [ true, %.loopexit412 ] ; 6 uses
  %.0188353 = phi i64 [ 0, %.lr.ph ], [ %.3191.lcssa, %.loopexit412 ] ; 3 uses
  %.0193352 = phi ptr [ null, %.lr.ph ], [ %.3196.lcssa, %.loopexit412 ] ; 9 uses
  %.1202351 = phi i64 [ %.0201, %.lr.ph ], [ %.2203, %.loopexit412 ] ; 6 uses
  %.1205350 = phi i64 [ %.0204, %.lr.ph ], [ %.2206, %.loopexit412 ] ; 9 uses
  %.1209349 = phi i64 [ %.0208, %.lr.ph ], [ %.2210, %.loopexit412 ] ; 8 uses
  %.0211348 = phi ptr [ null, %.lr.ph ], [ %spec.select.lcssa, %.loopexit412 ] ; 2 uses
  %.0227347 = phi i64 [ %4, %.lr.ph ], [ %i.iy, %.loopexit412 ] ; 10 uses
  %i.az = icmp sgt i64 %.1205350, %.1209349
  br i1 %i.az, label %bb.r, label %.peel.begin

bb.r:                                             ; preds = %bb.q
  %i.ba = mul i64 %.1209349, %.0227347
  %i.bb = add nsw i64 %.1205350, -1
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = udiv i64 %i.bc, %.1205350               ; 4 uses
  %i.be = sub i64 %.0227347, %i.bd                ; 3 uses
  %i.bf = icmp ult i64 %i.be, 2
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = add i64 %.0227347, -1                   ; 3 uses
  %i.bh = mul i64 %.1209349, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 %i.bh
  %i.bj = mul i64 %.1205350, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 %i.bj
  %i.bl = mul i64 %.1202351, %i.bg
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 %i.bl
  %.1212 = select i1 %.not241, ptr %.0211348, ptr %i.bm
  %i.bn = sub nsw i64 0, %.1209349
  %i.bo = sub nsw i64 0, %.1205350
  %i.bp = sub nsw i64 0, %.1202351
  br label %.peel.begin

bb.t:                                             ; preds = %bb.r
  %i.bq = mul i64 %i.bd, %.1209349
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 %i.bq ; 2 uses
  %i.bs = mul nuw i64 %i.bd, %.1205350
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 %i.bs ; 2 uses
  br i1 %.not241, label %.peel.begin, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = mul i64 %i.bd, %.1202351
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 %i.bu
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.q, %bb.s, %bb.u, %bb.t
  %.0223 = phi ptr [ %i.bi, %bb.s ], [ %i.br, %bb.u ], [ %i.br, %bb.t ], [ %7, %bb.q ] ; 5 uses
  %.0217 = phi ptr [ %i.bk, %bb.s ], [ %i.bt, %bb.u ], [ %i.bt, %bb.t ], [ %7, %bb.q ] ; 4 uses
  %.2213 = phi ptr [ %.1212, %bb.s ], [ %i.bv, %bb.u ], [ %.0211348, %bb.t ], [ %8, %bb.q ] ; 4 uses
  %.2210 = phi i64 [ %i.bn, %bb.s ], [ %.1209349, %bb.u ], [ %.1209349, %bb.t ], [ %.1209349, %bb.q ] ; 2 uses
  %.2206 = phi i64 [ %i.bo, %bb.s ], [ %.1205350, %bb.u ], [ %.1205350, %bb.t ], [ %.1205350, %bb.q ] ; 3 uses
  %.2203 = phi i64 [ %i.bp, %bb.s ], [ %.1202351, %bb.u ], [ %.1202351, %bb.t ], [ %.1202351, %bb.q ] ; 3 uses
  %.1199 = phi i64 [ %.0227347, %bb.s ], [ %i.be, %bb.u ], [ %i.be, %bb.t ], [ %.0227347, %bb.q ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i8 0, ptr %i.a, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.bw = load ptr, ptr %i.ax, align 8, !tbaa !18 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30
  %i.cc = call i32 %i.bz(ptr noundef %i.cb, ptr noundef %.0223, ptr noundef nonnull %i.b) #4
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit406, label %bb.v

bb.v:                                             ; preds = %.peel.begin
  %i.ce = load i8, ptr %i.b, align 1, !tbaa !8, !range !10, !noundef !11
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = load ptr, ptr %i.ax, align 8, !tbaa !18 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !32
  %i.cp = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !30
  %i.cs = call i64 %i.ck(ptr noundef %i.cm, ptr noundef %.0223, i64 noundef %i.co, ptr noundef %i.cr, ptr noundef nonnull %i.a) #4 ; 9 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.loopexit407, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = icmp ult i64 %.0188353, %i.cs
  br i1 %i.cu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cv = call ptr @H5FL_blk_realloc(ptr noundef nonnull @H5_ref_seq_blk_free_list, ptr noundef %.0193352, i64 noundef %i.cs) #4 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.loopexit408, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cv, i8 0, i64 %i.cs, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.2195.peel = phi ptr [ %i.cv, %bb.z ], [ %.0193352, %bb.x ] ; 10 uses
  %.2190.peel = phi i64 [ %i.cs, %bb.z ], [ %.0188353, %bb.x ] ; 2 uses
  %i.cx = load i8, ptr %i.a, align 1, !tbaa !8, !range !10, !noundef !11
  %i.cy = trunc nuw i8 %i.cx to i1
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !18 ; 4 uses
  br i1 %i.cy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %.pre, i64 92
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !30
  %i.db = icmp eq i32 %i.da, 2
  br i1 %i.db, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %.pre, i64 104
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !36
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !32
  %i.dk = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !30
  %i.dn = call i32 %i.df(ptr noundef %i.dh, ptr noundef %.0223, i64 noundef %i.dj, ptr noundef %i.dm, ptr noundef %.2195.peel, i64 noundef %i.cs) #4
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %.loopexit409, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2195.peel, ptr align 1 %.0223, i64 %i.cs, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dp = load i8, ptr %i.a, align 1, !tbaa !8, !range !10, !noundef !11
  %i.dq = trunc nuw i8 %i.dp to i1
  %.pre454 = load ptr, ptr %i.ay, align 8, !tbaa !18 ; 4 uses
  br i1 %i.dq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre454, i64 92
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !30
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %.pre454, i64 104
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !37
  %i.dy = load ptr, ptr %i.ax, align 8, !tbaa !18 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 80
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !30
  %i.ec = load i32, ptr %i.dz, align 8, !tbaa !30
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre454, i64 96
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !30
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre454, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.eh = call i32 %i.dx(ptr noundef %i.eb, ptr noundef %.2195.peel, i64 noundef %i.cs, i32 noundef %i.ec, ptr noundef %i.ee, ptr noundef %.0217, i64 noundef %i.eg, ptr noundef %.2213) #4
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.ba, label %bb.aj

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0217, ptr align 1 %.2195.peel, i64 %i.cs, i1 false)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.v
  %i.ej = load ptr, ptr %i.ay, align 8, !tbaa !18 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 104
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !30
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !38
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 96
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !30
  %i.eq = call i32 %i.en(ptr noundef %i.ep, ptr noundef %.0217, ptr noundef %.2213) #4
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %.loopexit411, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.3196.peel = phi ptr [ %.0193352, %bb.ai ], [ %.2195.peel, %bb.ah ], [ %.2195.peel, %bb.ag ] ; 2 uses
  %.3191.peel = phi i64 [ %.0188353, %bb.ai ], [ %.2190.peel, %bb.ah ], [ %.2190.peel, %bb.ag ] ; 2 uses
  %.not244.peel = icmp eq ptr %.2213, null
  %i.es = getelementptr inbounds i8, ptr %.2213, i64 %.2203
  %spec.select.peel = select i1 %.not244.peel, ptr null, ptr %i.es ; 2 uses
end_hunk_0
begin_hunk_1_@H5T__conv_ref:bb.a
  %i.gm = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !16
  %i.gn = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !16
  %i.go = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 202, i64 noundef %i.gm, i64 noundef %i.gn, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.sink.split

.loopexit407:                                     ; preds = %bb.w
  %i.gp = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !16
  %i.gq = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !16
  %i.gr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 202, i64 noundef %i.gp, i64 noundef %i.gq, ptr noundef nonnull @.str.6) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %.0179354, label %bb.bb, label %.thread263

bb.an:                                            ; preds = %bb.am
  %i.gs = icmp ult i64 %.1189343, %i.gk
  br i1 %i.gs, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.gt = call ptr @H5FL_blk_realloc(ptr noundef nonnull @H5_ref_seq_blk_free_list, ptr noundef %.1194342, i64 noundef %i.gk) #4 ; 3 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %.loopexit408.thread, label %bb.ap

.loopexit408.thread:                              ; preds = %bb.ao
  %i.gv = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !16
  %i.gw = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !16
  %i.gx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 209, i64 noundef %i.gv, i64 noundef %i.gw, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %.sink.split

.loopexit408:                                     ; preds = %bb.y
  %i.gy = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !16
  %i.gz = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !16
  %i.ha = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 209, i64 noundef %i.gy, i64 noundef %i.gz, ptr noundef nonnull @.str.7) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %.0179354, label %bb.bb, label %.thread263.thread

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gt, i8 0, i64 %i.gk, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %.2195 = phi ptr [ %i.gt, %bb.ap ], [ %.1194342, %bb.an ] ; 8 uses
  %.2190 = phi i64 [ %i.gk, %bb.ap ], [ %.1189343, %bb.an ] ; 2 uses
  %i.hb = load i8, ptr %i.a, align 1, !tbaa !8, !range !10, !noundef !11
  %i.hc = trunc nuw i8 %i.hb to i1
  %.pre455 = load ptr, ptr %i.ax, align 8, !tbaa !18 ; 4 uses
  br i1 %i.hc, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.hd = getelementptr inbounds nuw i8, ptr %.pre455, i64 92
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !30
  %i.hf = icmp eq i32 %i.he, 2
  br i1 %i.hf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2195, ptr align 1 %.1224338, i64 %i.gk, i1 false)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.hg = getelementptr inbounds nuw i8, ptr %.pre455, i64 104
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !30
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !36
  %i.hk = getelementptr inbounds nuw i8, ptr %.pre455, i64 96
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !30
  %i.hm = getelementptr inbounds nuw i8, ptr %.pre455, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !32
  %i.ho = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 96
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !30
  %i.hr = call i32 %i.hj(ptr noundef %i.hl, ptr noundef %.1224338, i64 noundef %i.hn, ptr noundef %i.hq, ptr noundef %.2195, i64 noundef %i.gk) #4
  %i.hs = icmp slt i32 %i.hr, 0
  br i1 %i.hs, label %.loopexit409.thread, label %bb.au

.loopexit409.thread:                              ; preds = %bb.at
  %i.ht = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.hu = load i64, ptr @H5E_READERROR_g, align 8, !tbaa !16
  %i.hv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 220, i64 noundef %i.ht, i64 noundef %i.hu, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %.sink.split

.loopexit409:                                     ; preds = %bb.ac
  %i.hw = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.hx = load i64, ptr @H5E_READERROR_g, align 8, !tbaa !16
  %i.hy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 220, i64 noundef %i.hw, i64 noundef %i.hx, ptr noundef nonnull @.str.8) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %.0179354, label %bb.bb, label %.thread263

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hz = load i8, ptr %i.a, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ia = trunc nuw i8 %i.hz to i1
  %.pre456 = load ptr, ptr %i.ay, align 8, !tbaa !18 ; 4 uses
  br i1 %i.ia, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ib = getelementptr inbounds nuw i8, ptr %.pre456, i64 92
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !30
  %i.id = icmp eq i32 %i.ic, 2
  br i1 %i.id, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1218340, ptr align 1 %.2195, i64 %i.gk, i1 false)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.ie = getelementptr inbounds nuw i8, ptr %.pre456, i64 104
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !30
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !37
  %i.ii = load ptr, ptr %i.ax, align 8, !tbaa !18 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 80
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !30
  %i.im = load i32, ptr %i.ij, align 8, !tbaa !30
  %i.in = getelementptr inbounds nuw i8, ptr %.pre456, i64 96
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !30
  %i.ip = getelementptr inbounds nuw i8, ptr %.pre456, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !32
  %i.ir = call i32 %i.ih(ptr noundef %i.il, ptr noundef %.2195, i64 noundef %i.gk, i32 noundef %i.im, ptr noundef %i.io, ptr noundef %.1218340, i64 noundef %i.iq, ptr noundef %.3214341) #4
  %i.is = icmp slt i32 %i.ir, 0
  br i1 %i.is, label %.thread, label %bb.ay

.thread:                                          ; preds = %bb.ax
  %i.it = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.iu = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !16
  %i.iv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 231, i64 noundef %i.it, i64 noundef %i.iu, ptr noundef nonnull @.str.9) #4 ; 0 uses
  br label %.sink.split

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.al
  %.3196 = phi ptr [ %.1194342, %bb.al ], [ %.2195, %bb.aw ], [ %.2195, %bb.ax ] ; 2 uses
  %.3191 = phi i64 [ %.1189343, %bb.al ], [ %.2190, %bb.aw ], [ %.2190, %bb.ax ] ; 2 uses
  %.not244 = icmp eq ptr %.3214341, null
  %i.iw = getelementptr inbounds i8, ptr %.3214341, i64 %.2203
  %spec.select = select i1 %.not244, ptr null, ptr %i.iw ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.ix = add nuw i64 %.1186344, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ix, %.1199
  br i1 %exitcond.not, label %.loopexit412, label %.peel.next, !llvm.loop !39

.loopexit412:                                     ; preds = %bb.ay, %bb.aj
  %.3196.lcssa = phi ptr [ %.3196.peel, %bb.aj ], [ %.3196, %bb.ay ] ; 2 uses
  %.3191.lcssa = phi i64 [ %.3191.peel, %bb.aj ], [ %.3191, %bb.ay ]
  %spec.select.lcssa = phi ptr [ %spec.select.peel, %bb.aj ], [ %spec.select, %bb.ay ]
  %i.iy = sub i64 %.0227347, %.1199               ; 2 uses
  %.not243 = icmp eq i64 %i.iy, 0
  br i1 %.not243, label %.thread263, label %bb.q, !llvm.loop !42

bb.az:                                            ; preds = %bb.b
  %i.iz = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.ja = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !16
  %i.jb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 253, i64 noundef %i.iz, i64 noundef %i.ja, ptr noundef nonnull @.str.10) #4 ; 0 uses
  br label %.thread263.thread

bb.ba:                                            ; preds = %bb.ag
  %i.jc = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !16
  %i.jd = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !16
  %i.je = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5T__conv_ref, i32 noundef 231, i64 noundef %i.jc, i64 noundef %i.jd, ptr noundef nonnull @.str.9) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %.0179354, label %bb.bb, label %.thread263

.sink.split:                                      ; preds = %.thread, %.loopexit406.thread, %.loopexit411.thread, %.loopexit407.thread, %.loopexit408.thread, %.loopexit409.thread
  %.4197.ph471.ph = phi ptr [ %.2195, %.loopexit409.thread ], [ null, %.loopexit408.thread ], [ %.1194342, %.loopexit407.thread ], [ %.1194342, %.loopexit411.thread ], [ %.1194342, %.loopexit406.thread ], [ %.2195, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %.loopexit408, %.loopexit407, %.loopexit411, %.loopexit406, %.loopexit409, %bb.ba
  %.4197.ph471 = phi ptr [ %.2195.peel, %.loopexit409 ], [ %.2195.peel, %bb.ba ], [ %.0193352, %.loopexit406 ], [ %.0193352, %.loopexit411 ], [ %.0193352, %.loopexit407 ], [ null, %.loopexit408 ], [ %.4197.ph471.ph, %.sink.split ]
  %.1186344376470 = phi i64 [ 0, %.loopexit409 ], [ 0, %bb.ba ], [ 0, %.loopexit406 ], [ 0, %.loopexit411 ], [ 0, %.loopexit407 ], [ 0, %.loopexit408 ], [ %.1186344, %.sink.split ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  %i.jf = icmp ult i64 %.0227347, %4
  %or.cond253 = select i1 %i.jf, i1 true, i1 %i.aw
  br i1 %or.cond253, label %bb.bc, label %.loopexit279

bb.bc:                                            ; preds = %bb.bb
  %i.jg = sub i64 %4, %.0227347
  %i.jh = select i1 %i.aw, i64 %.1186344376470, i64 0
  %.0 = add i64 %i.jg, %i.jh                      ; 2 uses
  %.not247355 = icmp eq i64 %.0, 0
  br i1 %.not247355, label %.loopexit279, label %.lr.ph358.preheader

.lr.ph358.preheader:                              ; preds = %bb.bc
  %i.ji = mul i64 %.0227347, %.0204
  %.3220.idx = select i1 %i.aw, i64 0, i64 %i.ji
  %.3220 = getelementptr inbounds nuw i8, ptr %7, i64 %.3220.idx
  br label %.lr.ph358

.lr.ph358:                                        ; preds = %.lr.ph358.preheader, %.lr.ph358
  %.1357 = phi i64 [ %i.jl, %.lr.ph358 ], [ %.0, %.lr.ph358.preheader ]
  %.4221356 = phi ptr [ %i.jk, %.lr.ph358 ], [ %.3220, %.lr.ph358.preheader ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 1 dereferenceable(48) %.4221356, i64 48, i1 false)
  %i.jj = call i32 @H5R__destroy(ptr noundef nonnull %9) #4 ; 0 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.4221356, i64 %.0204
  %i.jl = add i64 %.1357, -1                      ; 2 uses
  %.not247 = icmp eq i64 %i.jl, 0
  br i1 %.not247, label %.loopexit279, label %.lr.ph358, !llvm.loop !43

.loopexit279:                                     ; preds = %.lr.ph358, %bb.bc, %bb.bb
  %.0183.shrunk.not = icmp sle i64 %.0204, %.0208
  %.not249359 = icmp eq i64 %.1186344376470, 0
  %or.cond573 = or i1 %.0183.shrunk.not, %.not249359
  br i1 %or.cond573, label %.loopexit, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %.loopexit279
  %i.jm = icmp sgt i64 %.2206, 0
  %.2200..2187 = select i1 %i.jm, i64 %.1199, i64 %.1186344376470
  %.pn248 = sub i64 %.0227347, %.2200..2187
  %.pn = mul i64 %.pn248, %.0204
  %.5222 = getelementptr inbounds nuw i8, ptr %7, i64 %.pn
  br label %.lr.ph362

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %.2361 = phi i64 [ %i.jp, %.lr.ph362 ], [ %.1186344376470, %.lr.ph362.preheader ]
  %.6360 = phi ptr [ %i.jo, %.lr.ph362 ], [ %.5222, %.lr.ph362.preheader ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 1 dereferenceable(48) %.6360, i64 48, i1 false)
  %i.jn = call i32 @H5R__destroy(ptr noundef nonnull %9) #4 ; 0 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.6360, i64 %.0204
  %i.jp = add i64 %.2361, -1                      ; 2 uses
  %.not249 = icmp eq i64 %i.jp, 0
  br i1 %.not249, label %.loopexit, label %.lr.ph362, !llvm.loop !44

.loopexit:                                        ; preds = %.lr.ph362, %.loopexit279
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  br label %.thread263

.thread263:                                       ; preds = %.loopexit412, %.loopexit407, %.loopexit411, %.loopexit406, %.loopexit409, %.loopexit, %bb.ba
  %.3275 = phi i32 [ -1, %bb.ba ], [ -1, %.loopexit ], [ -1, %.loopexit407 ], [ -1, %.loopexit411 ], [ -1, %.loopexit409 ], [ -1, %.loopexit406 ], [ 0, %.loopexit412 ] ; 2 uses
  %.5274 = phi ptr [ %.2195.peel, %bb.ba ], [ %.4197.ph471, %.loopexit ], [ %.0193352, %.loopexit407 ], [ %.0193352, %.loopexit411 ], [ %.2195.peel, %.loopexit409 ], [ %.0193352, %.loopexit406 ], [ %.3196.lcssa, %.loopexit412 ] ; 2 uses
  %.not250 = icmp eq ptr %.5274, null
  br i1 %.not250, label %.thread263.thread, label %bb.bd

bb.bd:                                            ; preds = %.thread263
  %i.jq = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_ref_seq_blk_free_list, ptr noundef nonnull %.5274) #4 ; 0 uses
  br label %.thread263.thread

.thread263.thread:                                ; preds = %.loopexit408, %bb.p, %bb.az, %bb.d, %bb.f, %bb.h, %bb.k, %bb.j, %bb.b, %bb.m, %bb.a, %bb.bd, %.thread263
  %.4 = phi i32 [ %.3275, %bb.bd ], [ %.3275, %.thread263 ], [ 0, %bb.a ], [ -1, %bb.az ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ 0, %bb.k ], [ -1, %bb.j ], [ 0, %bb.b ], [ -1, %bb.m ], [ -1, %.loopexit408 ], [ 0, %bb.p ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @H5FL_blk_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @H5R__destroy(ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_blk_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!14, !5, i64 0}
!14 = !{!"H5T_cdata_t", !5, i64 0, !5, i64 4, !9, i64 8, !15, i64 16}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!19, !22, i64 40}
!19 = !{!"H5T_t", !20, i64 0, !22, i64 40, !23, i64 48, !24, i64 72, !26, i64 96}
!20 = !{!"H5O_shared_t", !5, i64 0, !21, i64 8, !5, i64 16, !6, i64 24}
!21 = !{!"p1 _ZTS5H5F_t", !15, i64 0}
!22 = !{!"p1 _ZTS12H5T_shared_t", !15, i64 0}
!23 = !{!"H5O_loc_t", !21, i64 0, !17, i64 8, !9, i64 16}
!24 = !{!"H5G_name_t", !25, i64 0, !25, i64 8, !5, i64 16}
!25 = !{!"p1 _ZTS10H5RS_str_t", !15, i64 0}
!26 = !{!"p1 _ZTS13H5VL_object_t", !15, i64 0}
!27 = !{!28, !5, i64 12}
!28 = !{!"H5T_shared_t", !17, i64 0, !5, i64 8, !5, i64 12, !17, i64 16, !5, i64 24, !9, i64 28, !29, i64 32, !26, i64 40, !6, i64 48}
!29 = !{!"p1 _ZTS5H5T_t", !15, i64 0}
!30 = !{!6, !6, i64 0}
!31 = !{!14, !5, i64 4}
!32 = !{!28, !17, i64 16}
!33 = !{!34, !15, i64 0}
!34 = !{!"H5T_ref_class_t", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!35 = !{!34, !15, i64 16}
!36 = !{!34, !15, i64 24}
!37 = !{!34, !15, i64 32}
!38 = !{!34, !15, i64 8}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.peeled.count", i32 1}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !40}
!44 = distinct !{!44, !40}
end_hunk_1
