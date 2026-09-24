Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/fbtl_posix_ipreadv?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"mca_fbtl_posix_ipreadv: could not allocate memory\0A\00", align 1
@ompi_fbtl_posix_max_aio_active_reqs = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"mca_fbtl_posix: error in mca_fbtl_posix_lock():%s\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"mca_fbtl_posix_ipreadv: error in mca_fbtl_posix_lock() error ret=%d  %s\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"mca_fbtl_posix_ipreadv: error in aio_read(): errno %d %s\00", align 1

; Function Attrs: nounwind uwtable
define range(i64 -1, 1) i64 @mca_fbtl_posix_ipreadv(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #7 ; 20 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str) #8
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 4 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.d, ptr %i.e, align 4, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.f, align 8, !tbaa !39
  %i.g = load i32, ptr @ompi_fbtl_posix_max_aio_active_reqs, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 %i.g, ptr %i.h, align 4, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !42
  %i.j = sext i32 %i.d to i64                     ; 3 uses
  %i.k = mul nsw i64 %i.j, 168
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 16 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !43
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str) #8
  tail call void @free(ptr noundef nonnull %i.a) #8
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.o = shl nsw i64 %i.j, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #7 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !44
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str) #8
  %2 = load ptr, ptr %i.m, align 8, !tbaa !43
  tail call void @free(ptr noundef %2) #8
  tail call void @free(ptr noundef nonnull %i.a) #8
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 5 uses
  store i32 0, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 4 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.v = load i32, ptr %i.u, align 4, !tbaa !47
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %i.y = and i32 %i.x, -769
  store i32 %i.y, ptr %i.w, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49  ; 2 uses
  %i.ab = getelementptr [24 x i8], ptr %i.aa, i64 %i.j ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = getelementptr i8, ptr %i.ab, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !52
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = sub i64 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.an = tail call i32 @mca_fbtl_posix_lock(ptr noundef nonnull %i.am, ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.ak, i64 noundef %i.al, i32 noundef 10, ptr noundef nonnull %i.s) #8
  %.not121 = icmp eq i32 %i.an, -1
  br i1 %.not121, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.ao = tail call ptr @__errno_location() #9
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !40
  %i.aq = tail call ptr @strerror(i32 noundef %i.ap) #8
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %i.aq) #8
  br label %bb.w

bb.i:                                             ; preds = %bb.h
  store i32 %i.x, ptr %i.w, align 8, !tbaa !48
  %.pre = load i32, ptr %i.c, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ar = phi i32 [ %.pre, %bb.i ], [ %i.d, %bb.g ]
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %indvars.iv ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw [168 x i8], ptr %i.av, i64 %indvars.iv ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !55
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !56
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !57
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !52
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !58
  %i.bi = load i32, ptr %0, align 8, !tbaa !59
  store i32 %i.bi, ptr %i.bb, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 0, ptr %i.bj, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 44
  store i32 1, ptr %i.bk, align 4, !tbaa !62
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  store i32 115, ptr %i.bl, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr %i.c, align 8, !tbaa !31
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.k, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.bp, align 8, !tbaa !64
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !37
  %i.br = load i32, ptr %i.h, align 4, !tbaa !41
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.br) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  store i32 %spec.select, ptr %i.bs, align 4, !tbaa !65
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !43  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !55 ; 2 uses
  %i.bw = sext i32 %spec.select to i64
  %i.bx = getelementptr [168 x i8], ptr %i.bt, i64 %i.bw ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -40
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !55
  %i.ca = getelementptr i8, ptr %i.bx, i64 -144
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !58
  %i.cc = sub i64 %i.bz, %i.bv
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.cg = tail call i32 @mca_fbtl_posix_lock(ptr noundef nonnull %i.ce, ptr noundef %i.cf, i32 noundef 0, i64 noundef %i.bv, i64 noundef %i.cd, i32 noundef 10, ptr noundef nonnull %i.s) #8 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.l, label %.preheader127

.preheader127:                                    ; preds = %._crit_edge
  %i.ci = load i32, ptr %i.bs, align 4, !tbaa !65
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.preheader, label %._crit_edge132

bb.l:                                             ; preds = %._crit_edge
  %i.ck = tail call ptr @__errno_location() #9
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !40
  %i.cm = tail call ptr @strerror(i32 noundef %i.cl) #8
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %i.cg, ptr noundef %i.cm) #8
  %i.cn = load ptr, ptr %i.t, align 8, !tbaa !46
  tail call void @mca_fbtl_posix_unlock(ptr noundef nonnull %i.ce, ptr noundef %i.cn, ptr noundef nonnull %i.s) #8
  %i.co = load ptr, ptr %i.m, align 8, !tbaa !43
  tail call void @free(ptr noundef %i.co) #8
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !44
  tail call void @free(ptr noundef %i.cp) #8
  tail call void @free(ptr noundef nonnull %i.a) #8
  br label %bb.w

.preheader:                                       ; preds = %.preheader127, %.critedge
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %.critedge ], [ 0, %.preheader127 ] ; 11 uses
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.cr = getelementptr inbounds nuw [168 x i8], ptr %i.cq, i64 %indvars.iv134
  %i.cs = tail call i32 @aio_read(ptr noundef %i.cr) #8
  %.not122 = icmp eq i32 %i.cs, -1
  br i1 %.not122, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.preheader
  %i.ct = tail call i32 @mca_common_ompio_progress() #8 ; 0 uses
  %i.cu = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.cv = getelementptr inbounds nuw [168 x i8], ptr %i.cu, i64 %indvars.iv134
  %i.cw = tail call i32 @aio_read(ptr noundef %i.cv) #8
  %.not122.1 = icmp eq i32 %i.cw, -1
  br i1 %.not122.1, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cx = tail call i32 @mca_common_ompio_progress() #8 ; 0 uses
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.cz = getelementptr inbounds nuw [168 x i8], ptr %i.cy, i64 %indvars.iv134
  %i.da = tail call i32 @aio_read(ptr noundef %i.cz) #8
  %.not122.2 = icmp eq i32 %i.da, -1
  br i1 %.not122.2, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.db = tail call i32 @mca_common_ompio_progress() #8 ; 0 uses
  %i.dc = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw [168 x i8], ptr %i.dc, i64 %indvars.iv134
  %i.de = tail call i32 @aio_read(ptr noundef %i.dd) #8
  %.not122.3 = icmp eq i32 %i.de, -1
  br i1 %.not122.3, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.df = tail call i32 @mca_common_ompio_progress() #8 ; 0 uses
  %i.dg = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.dh = getelementptr inbounds nuw [168 x i8], ptr %i.dg, i64 %indvars.iv134
  %i.di = tail call i32 @aio_read(ptr noundef %i.dh) #8
  %.not122.4 = icmp eq i32 %i.di, -1
  br i1 %.not122.4, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.dj = tail call i32 @mca_common_ompio_progress() #8 ; 0 uses
  %i.dk = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.dl = getelementptr inbounds nuw [168 x i8], ptr %i.dk, i64 %indvars.iv134
  %i.dm = tail call i32 @aio_read(ptr noundef %i.dl) #8
  %.not122.5 = icmp eq i32 %i.dm, -1
  br i1 %.not122.5, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.dn = tail call i32 @mca_common_ompio_progress() #8 ; 0 uses
  %i.do = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.dp = getelementptr inbounds nuw [168 x i8], ptr %i.do, i64 %indvars.iv134
  %i.dq = tail call i32 @aio_read(ptr noundef %i.dp) #8
  %.not122.6 = icmp eq i32 %i.dq, -1
  br i1 %.not122.6, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.dr = tail call i32 @mca_common_ompio_progress() #8 ; 0 uses
  %i.ds = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.dt = getelementptr inbounds nuw [168 x i8], ptr %i.ds, i64 %indvars.iv134
  %i.du = tail call i32 @aio_read(ptr noundef %i.dt) #8
  %.not122.7 = icmp eq i32 %i.du, -1
  br i1 %.not122.7, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.dv = tail call i32 @mca_common_ompio_progress() #8 ; 0 uses
  %i.dw = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.dx = getelementptr inbounds nuw [168 x i8], ptr %i.dw, i64 %indvars.iv134
  %i.dy = tail call i32 @aio_read(ptr noundef %i.dx) #8
  %.not122.8 = icmp eq i32 %i.dy, -1
  br i1 %.not122.8, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.dz = tail call i32 @mca_common_ompio_progress() #8 ; 0 uses
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.eb = getelementptr inbounds nuw [168 x i8], ptr %i.ea, i64 %indvars.iv134
  %i.ec = tail call i32 @aio_read(ptr noundef %i.eb) #8
  %.not122.9 = icmp eq i32 %i.ec, -1
  br i1 %.not122.9, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.ed = tail call i32 @mca_common_ompio_progress() #8 ; 0 uses
  %i.ee = tail call ptr @__errno_location() #9
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !40 ; 2 uses
  %i.eg = tail call ptr @strerror(i32 noundef %i.ef) #8
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %i.ef, ptr noundef %i.eg) #8
  %i.eh = load ptr, ptr %i.t, align 8, !tbaa !46
  tail call void @mca_fbtl_posix_unlock(ptr noundef nonnull %i.ce, ptr noundef %i.eh, ptr noundef nonnull %i.s) #8
  %i.ei = load ptr, ptr %i.m, align 8, !tbaa !43
  tail call void @free(ptr noundef %i.ei) #8
  %i.ej = load ptr, ptr %i.q, align 8, !tbaa !44
  tail call void @free(ptr noundef %i.ej) #8
  tail call void @free(ptr noundef nonnull %i.a) #8
  br label %bb.w

.critedge:                                        ; preds = %.preheader, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.ek = load i32, ptr %i.bs, align 4, !tbaa !65
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next135, %i.el
  br i1 %i.em, label %.preheader, label %._crit_edge132, !llvm.loop !9

._crit_edge132:                                   ; preds = %.critedge, %.preheader127
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.a, ptr %i.en, align 8, !tbaa !81
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 512
  store ptr @mca_fbtl_posix_progress, ptr %i.eo, align 8, !tbaa !82
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 520
  store ptr @mca_fbtl_posix_request_free, ptr %i.ep, align 8, !tbaa !83
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %._crit_edge132, %bb.l, %bb.f, %bb.d, %bb.b
  %.4 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ -1, %bb.l ], [ -1, %bb.v ], [ 0, %._crit_edge132 ], [ -1, %.thread ]
  ret i64 %.4
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @mca_fbtl_posix_lock(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare void @mca_fbtl_posix_unlock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @aio_read(ptr noundef) local_unnamed_addr #4

declare i32 @mca_common_ompio_progress() local_unnamed_addr #2

declare zeroext i1 @mca_fbtl_posix_progress(ptr noundef) #2

declare void @mca_fbtl_posix_request_free(ptr noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

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
!8 = distinct !{!8, !63}
!9 = distinct !{!9, !63}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS11ompi_file_t", !10, i64 0}
!12 = !{!"long long", !4, i64 0}
!13 = !{!"p1 _ZTS19ompi_communicator_t", !10, i64 0}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!"p1 _ZTS16opal_convertor_t", !10, i64 0}
!16 = !{!"p1 _ZTS11opal_info_t", !10, i64 0}
!17 = !{!"long", !4, i64 0}
!18 = !{!"p1 _ZTS14ompi_request_t", !10, i64 0}
!19 = !{!"_Bool", !4, i64 0}
!20 = !{!"p1 _ZTS5iovec", !10, i64 0}
!21 = !{!"p1 _ZTS15ompi_datatype_t", !10, i64 0}
!22 = !{!"p1 _ZTS27mca_common_ompio_io_array_t", !10, i64 0}
!23 = !{!"p1 _ZTS26mca_base_component_2_1_0_t", !10, i64 0}
!24 = !{!"p1 _ZTS26mca_fs_base_module_1_0_0_t", !10, i64 0}
!25 = !{!"p1 _ZTS29mca_fcoll_base_module_1_0_0_t", !10, i64 0}
!26 = !{!"p1 _ZTS28mca_fbtl_base_module_1_0_0_t", !10, i64 0}
!27 = !{!"p1 _ZTS32mca_sharedfp_base_module_1_0_0_t", !10, i64 0}
!28 = !{!"p1 _ZTS28mca_common_ompio_print_queue", !10, i64 0}
!29 = !{!"p1 int", !10, i64 0}
!30 = !{!"ompio_file_t", !5, i64 0, !11, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !13, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !15, i64 80, !15, i64 88, !16, i64 96, !5, i64 104, !10, i64 112, !5, i64 120, !5, i64 124, !17, i64 128, !5, i64 136, !17, i64 144, !17, i64 152, !5, i64 160, !5, i64 164, !18, i64 168, !19, i64 176, !10, i64 184, !20, i64 192, !5, i64 200, !21, i64 208, !17, i64 216, !17, i64 224, !5, i64 232, !17, i64 240, !17, i64 248, !21, i64 256, !21, i64 264, !21, i64 272, !17, i64 280, !22, i64 288, !5, i64 296, !23, i64 304, !23, i64 312, !23, i64 320, !23, i64 328, !24, i64 336, !25, i64 344, !26, i64 352, !27, i64 360, !28, i64 368, !28, i64 376, !29, i64 384, !5, i64 392, !5, i64 396, !29, i64 400, !29, i64 408, !5, i64 416, !29, i64 424, !5, i64 432, !10, i64 440, !10, i64 448}
!31 = !{!30, !5, i64 296}
!32 = !{!"p1 _ZTS5aiocb", !10, i64 0}
!33 = !{!"short", !4, i64 0}
!34 = !{!"flock", !33, i64 0, !33, i64 2, !17, i64 8, !17, i64 16, !5, i64 24}
!35 = !{!"p1 _ZTS12ompio_file_t", !10, i64 0}
!36 = !{!"mca_fbtl_posix_request_data_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !32, i64 24, !29, i64 32, !17, i64 40, !34, i64 48, !5, i64 80, !35, i64 88}
!37 = !{!36, !5, i64 0}
!38 = !{!36, !5, i64 4}
!39 = !{!36, !5, i64 8}
!40 = !{!5, !5, i64 0}
!41 = !{!36, !5, i64 12}
!42 = !{!36, !17, i64 40}
!43 = !{!36, !32, i64 24}
!44 = !{!36, !29, i64 32}
!45 = !{!36, !5, i64 80}
!46 = !{!36, !35, i64 88}
!47 = !{!30, !5, i64 124}
!48 = !{!30, !5, i64 104}
!49 = !{!30, !22, i64 288}
!50 = !{!"mca_common_ompio_io_array_t", !10, i64 0, !10, i64 8, !17, i64 16}
!51 = !{!50, !10, i64 8}
!52 = !{!50, !17, i64 16}
!53 = !{!"sigevent", !4, i64 0, !5, i64 8, !5, i64 12, !4, i64 16}
!54 = !{!"aiocb", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !17, i64 24, !53, i64 32, !32, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !17, i64 120, !17, i64 128, !4, i64 136, !4, i64 136}
!55 = !{!54, !17, i64 128}
!56 = !{!50, !10, i64 0}
!57 = !{!54, !10, i64 16}
!58 = !{!54, !17, i64 24}
!59 = !{!30, !5, i64 0}
!60 = !{!54, !5, i64 0}
!61 = !{!54, !5, i64 8}
!62 = !{!54, !5, i64 44}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!36, !5, i64 16}
!65 = !{!36, !5, i64 20}
!66 = !{!"p1 _ZTS12opal_class_t", !10, i64 0}
!67 = !{!"opal_object_t", !66, i64 0, !5, i64 8}
!68 = !{!"p1 _ZTS16opal_list_item_t", !10, i64 0}
!69 = !{!"opal_list_item_t", !67, i64 0, !68, i64 16, !68, i64 24, !5, i64 32}
!70 = !{!"p1 _ZTS30mca_rcache_base_registration_t", !10, i64 0}
!71 = !{!"opal_free_list_item_t", !69, i64 0, !70, i64 40, !10, i64 48}
!72 = !{!"ompi_status_public_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !17, i64 16}
!73 = !{!"ompi_request_t", !71, i64 0, !5, i64 56, !72, i64 64, !10, i64 88, !5, i64 96, !19, i64 100, !5, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !4, i64 152}
!74 = !{!"p1 _ZTS15opal_datatype_t", !10, i64 0}
!75 = !{!"p1 _ZTS14dt_type_desc_t", !10, i64 0}
!76 = !{!"p1 _ZTS10dt_stack_t", !10, i64 0}
!77 = !{!"p1 _ZTS23opal_convertor_master_t", !10, i64 0}
!78 = !{!"p1 _ZTS25opal_accelerator_stream_t", !10, i64 0}
!79 = !{!"opal_convertor_t", !67, i64 0, !5, i64 16, !5, i64 20, !17, i64 24, !17, i64 32, !74, i64 40, !75, i64 48, !17, i64 56, !5, i64 64, !14, i64 72, !76, i64 80, !10, i64 88, !77, i64 96, !5, i64 104, !17, i64 112, !17, i64 120, !5, i64 128, !5, i64 132, !17, i64 136, !4, i64 144, !10, i64 264, !78, i64 272}
!80 = !{!"mca_ompio_request_t", !73, i64 0, !5, i64 160, !10, i64 168, !69, i64 176, !10, i64 216, !17, i64 224, !79, i64 232, !10, i64 512, !10, i64 520}
!81 = !{!80, !10, i64 168}
!82 = !{!80, !10, i64 512}
!83 = !{!80, !10, i64 520}
end_hunk_0
