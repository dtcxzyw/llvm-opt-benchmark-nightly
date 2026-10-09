Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ompi_datatype_args?download=true
inline.NumInlined: 30
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.ompi_predefined_datatype_t = type { %struct.ompi_datatype_t, [208 x i8] }
%struct.ompi_datatype_t = type { %struct.opal_datatype_t, i32, i32, ptr, ptr, i64, i64, [64 x i8] }
%struct.opal_datatype_t = type { %struct.opal_object_t, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, [64 x i8], %struct.dt_type_desc_t, %struct.dt_type_desc_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.dt_type_desc_t = type { i64, i64, ptr }

@.str = private unnamed_addr constant [55 x i8] c"type %d count ints %d count disp %d count datatype %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ints:     \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"MPI_Aint: \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"types:    \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%p \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"(%d * %s) \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"(%d * %p) \00", align 1
@__const.ompi_datatype_get_pack_description.interval = private unnamed_addr constant %struct.timespec { i64 0, i64 1000 }, align 8
@ompi_mpi_lb = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_ub = external global %struct.ompi_predefined_datatype_t, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_datatype_basicDatatypes = external local_unnamed_addr global [53 x ptr], align 16

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef i32 @ompi_datatype_set_args(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = sext i32 %3 to i64
  %i.c = shl nsw i64 %i.b, 3                      ; 3 uses
  %i.d = sext i32 %5 to i64
  %i.e = shl nsw i64 %i.d, 3                      ; 2 uses
  %i.f = add nsw i64 %i.e, %i.c                   ; 2 uses
  %i.g = shl i64 %i.a, 34
  %i.h = shl i64 %i.f, 32
  %i.i = add i64 %i.h, 240518168576
  %i.j = add i64 %i.g, %i.i
  %i.k = ashr exact i64 %i.j, 32
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #13 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %1, ptr %i.m, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 10 uses
  store ptr null, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 %3, ptr %i.o, align 4, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 3 uses
  store ptr null, ptr %i.p, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %5, ptr %i.q, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 4 uses
  store ptr null, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %7, ptr %i.s, align 4, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.t, ptr %i.p, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.u, %bb.b ], [ %i.t, %bb.a ]  ; 3 uses
  %.not168 = icmp eq i32 %5, 0
  br i1 %.not168, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %.0, ptr %i.r, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.v, %bb.d ], [ %.0, %bb.c ]   ; 2 uses
  %.not169 = icmp eq i32 %1, 0
  br i1 %.not169, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.1, ptr %i.n, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi ptr [ %.1, %bb.f ], [ null, %bb.e ]  ; 26 uses
  store volatile i32 1, ptr %i.l, align 8, !tbaa !24
  %i.x = add nsw i32 %1, 4
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = add nsw i64 %i.f, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !25
  switch i32 %7, label %bb.u [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 8, label %bb.m
    i32 9, label %bb.n
    i32 10, label %bb.o
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
    i32 15, label %bb.r
    i32 16, label %bb.s
    i32 18, label %bb.t
  ]

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.ab, align 8, !tbaa !25
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %2, align 8, !tbaa !26
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  store i32 %i.ad, ptr %i.w, align 4, !tbaa !27
  br label %bb.u

bb.j:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %2, align 8, !tbaa !26
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  store i32 %i.af, ptr %i.w, align 4, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.am, ptr %i.an, align 4, !tbaa !27
  br label %bb.u

bb.k:                                             ; preds = %bb.g, %bb.g
  %i.ao = load ptr, ptr %2, align 8, !tbaa !26
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27
  store i32 %i.ap, ptr %i.w, align 4, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !27
  br label %bb.u

bb.l:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %2, align 8, !tbaa !26
  %i.av = load i32, ptr %i.au, align 4, !tbaa !27 ; 2 uses
  store i32 %i.av, ptr %i.w, align 4, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !26
  %i.az = sext i32 %i.av to i64
  %i.ba = shl nsw i64 %i.az, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 4 %i.ay, i64 %i.ba, i1 false)
  %i.bb = load ptr, ptr %2, align 8, !tbaa !26
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.be = sext i32 %i.bc to i64                   ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bj = shl nsw i64 %i.be, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bg, ptr align 4 %i.bi, i64 %i.bj, i1 false)
  br label %bb.u

bb.m:                                             ; preds = %bb.g, %bb.g
  %i.bk = load ptr, ptr %2, align 8, !tbaa !26
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !27 ; 2 uses
  store i32 %i.bl, ptr %i.w, align 4, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !26
  %i.bp = sext i32 %i.bl to i64
  %i.bq = shl nsw i64 %i.bp, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %i.bo, i64 %i.bq, i1 false)
  br label %bb.u

bb.n:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !27
  store i32 %i.bs, ptr %i.w, align 4, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !26
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !26
  %i.ca = load i32, ptr %i.br, align 4, !tbaa !27
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %i.bz, i64 %i.cc, i1 false)
  br label %bb.u

bb.o:                                             ; preds = %bb.g, %bb.g
  %i.cd = load ptr, ptr %2, align 8, !tbaa !26
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !27 ; 2 uses
  store i32 %i.ce, ptr %i.w, align 4, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !26
  %i.ci = sext i32 %i.ce to i64
  %i.cj = shl nsw i64 %i.ci, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr align 4 %i.ch, i64 %i.cj, i1 false)
  br label %bb.u

bb.p:                                             ; preds = %bb.g
  %i.ck = load ptr, ptr %2, align 8, !tbaa !26
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !27 ; 2 uses
  store i32 %i.cl, ptr %i.w, align 4, !tbaa !27
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !26
  %i.cp = sext i32 %i.cl to i64
  %i.cq = shl nsw i64 %i.cp, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr align 4 %i.co, i64 %i.cq, i1 false)
  %i.cr = load ptr, ptr %i.n, align 8, !tbaa !18  ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !27 ; 2 uses
  %i.ct = add nsw i32 %i.cs, 1                    ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !26
  %i.cy = sext i32 %i.cs to i64
  %i.cz = shl nsw i64 %i.cy, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cv, ptr align 4 %i.cx, i64 %i.cz, i1 false)
  %i.da = load ptr, ptr %i.n, align 8, !tbaa !18  ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !27 ; 2 uses
  %i.dc = add nsw i32 %i.db, %i.ct                ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !26
  %i.dh = sext i32 %i.db to i64
  %i.di = shl nsw i64 %i.dh, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.de, ptr align 4 %i.dg, i64 %i.di, i1 false)
  %i.dj = load ptr, ptr %i.n, align 8, !tbaa !18  ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !27
  %i.dl = add nsw i32 %i.dk, %i.dc
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !26
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !27
  %i.dp = sext i32 %i.dl to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dp
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !27
  br label %bb.u

bb.q:                                             ; preds = %bb.g
  %i.dr = load ptr, ptr %2, align 8, !tbaa !26
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !27
  store i32 %i.ds, ptr %i.w, align 4, !tbaa !27
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !26
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !27
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !26
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !27 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !27
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !26
  %i.ee = sext i32 %i.dz to i64
  %i.ef = shl nsw i64 %i.ee, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.ed, i64 %i.ef, i1 false)
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !26
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !27 ; 2 uses
  %i.ei = add nsw i32 %i.eh, 3                    ; 2 uses
  %i.ej = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.ek = sext i32 %i.ei to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !26
  %i.eo = sext i32 %i.eh to i64
  %i.ep = shl nsw i64 %i.eo, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.el, ptr align 4 %i.en, i64 %i.ep, i1 false)
  %i.eq = load ptr, ptr %i.dx, align 8, !tbaa !26
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !27 ; 2 uses
  %i.es = add nsw i32 %i.er, %i.ei                ; 2 uses
  %i.et = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.eu = sext i32 %i.es to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !26
  %i.ey = sext i32 %i.er to i64
  %i.ez = shl nsw i64 %i.ey, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ev, ptr align 4 %i.ex, i64 %i.ez, i1 false)
  %i.fa = load ptr, ptr %i.dx, align 8, !tbaa !26
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !27 ; 2 uses
  %i.fc = add nsw i32 %i.fb, %i.es                ; 2 uses
  %i.fd = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.fe = sext i32 %i.fc to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !26
  %i.fi = sext i32 %i.fb to i64
  %i.fj = shl nsw i64 %i.fi, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ff, ptr align 4 %i.fh, i64 %i.fj, i1 false)
  %i.fk = load ptr, ptr %i.dx, align 8, !tbaa !26
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !27
  %i.fm = add nsw i32 %i.fl, %i.fc
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !26
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !27
  %i.fq = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.fr = sext i32 %i.fm to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fr
  store i32 %i.fp, ptr %i.fs, align 4, !tbaa !27
  br label %bb.u

bb.r:                                             ; preds = %bb.g, %bb.g
  %i.ft = load ptr, ptr %2, align 8, !tbaa !26
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !27
  store i32 %i.fu, ptr %i.w, align 4, !tbaa !27
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !26
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !27
  %i.fy = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !27
  br label %bb.u

bb.s:                                             ; preds = %bb.g
  %i.fz = load ptr, ptr %2, align 8, !tbaa !26
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !27
  store i32 %i.ga, ptr %i.w, align 4, !tbaa !27
  br label %bb.u

bb.t:                                             ; preds = %bb.g
  %i.gb = load ptr, ptr %2, align 8, !tbaa !26
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !27
  store i32 %i.gc, ptr %i.w, align 4, !tbaa !27
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !26
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !27
  %i.gg = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %bb.g, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.gh = load ptr, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.not170 = icmp eq ptr %i.gh, null
  br i1 %.not170, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gh, ptr align 8 %4, i64 %i.c, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.gi = icmp sgt i32 %5, 0
  br i1 %i.gi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.gj = load i8, ptr @opal_uses_threads, align 1, !range !28
  %.fr173 = freeze i8 %i.gj
  %i.gk = trunc i8 %.fr173 to i1
  %wide.trip.count179 = zext nneg i32 %5 to i64   ; 2 uses
  br i1 %i.gk, label %.lr.ph.split.us, label %.lr.ph.split.preheader, !prof !29

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !22
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.x
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %bb.x ], [ 0, %.lr.ph ] ; 3 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv176 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !31       ; 3 uses
  %i.gl = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv176
  store ptr %9, ptr %i.gm, align 8, !tbaa !31
  %i.gn = getelementptr i8, ptr %9, i64 16
  %.val.us = load i16, ptr %i.gn, align 8, !tbaa !40
  %i.go = and i16 %.val.us, 512
  %.not171.us = icmp eq i16 %i.go, 0
  br i1 %.not171.us, label %opal_thread_add_fetch_32.exit.us, label %bb.x

opal_thread_add_fetch_32.exit.us:                 ; preds = %.lr.ph.split.us
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gq = atomicrmw volatile add ptr %i.gp, i32 1 monotonic, align 4 ; 0 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !31
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 216
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !41
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !25
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.us, %opal_thread_add_fetch_32.exit.us
  %.sink184 = phi i64 [ %i.gv, %opal_thread_add_fetch_32.exit.us ], [ 4, %.lr.ph.split.us ]
  %10 = load i64, ptr %i.ab, align 8, !tbaa !25
  %11 = add i64 %10, %.sink184
  %i.gw = add i64 %11, 4
  store i64 %i.gw, ptr %i.ab, align 8, !tbaa !25
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !54

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !31 ; 4 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !31
  %i.ha = getelementptr i8, ptr %i.gy, i64 16
  %.val = load i16, ptr %i.ha, align 8, !tbaa !40
  %i.hb = and i16 %.val, 512
  %.not171 = icmp eq i16 %i.hb, 0
  br i1 %.not171, label %opal_thread_add_fetch_32.exit, label %bb.y

opal_thread_add_fetch_32.exit:                    ; preds = %.lr.ph.split
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 3 uses
  %i.hd = load volatile i32, ptr %i.hc, align 8, !tbaa !27
  %i.he = add nsw i32 %i.hd, 1
  store volatile i32 %i.he, ptr %i.hc, align 8, !tbaa !27
  %i.hf = load volatile i32, ptr %i.hc, align 8, !tbaa !27 ; 0 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 216
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !41
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph.split, %opal_thread_add_fetch_32.exit
  %.sink185 = phi i64 [ %i.hj, %opal_thread_add_fetch_32.exit ], [ 4, %.lr.ph.split ]
  %i.hk = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.hl = add i64 %i.hk, %.sink185
  %i.hm = add i64 %i.hl, 4
  store i64 %i.hm, ptr %i.ab, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count179
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.y, %bb.x, %bb.w
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.l, ptr %i.hn, align 8, !tbaa !41
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 224
  store volatile i64 0, ptr %i.ho, align 8, !tbaa !43
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 18) i32 @ompi_datatype_print_args(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val = load i16, ptr %i.c, align 8, !tbaa !40
  %i.d = and i16 %.val, 512
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %.not55 = icmp eq ptr %i.p, null
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  %i.r = load i32, ptr %i.h, align 8, !tbaa !17
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.v) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !17
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %.not56 = icmp eq ptr %i.ab, null
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.ad = load i32, ptr %i.j, align 4, !tbaa !19
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %bb.f, %.lr.ph70
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph70 ], [ 0, %bb.f ] ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv80
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !44
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %i.ah) ; 0 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.aj = load i32, ptr %i.j, align 4, !tbaa !19
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next81, %i.ak
  br i1 %i.al, label %.lr.ph70, label %._crit_edge71, !llvm.loop !56

._crit_edge71:                                    ; preds = %.lr.ph70, %bb.f
  %putchar57 = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge71, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !22
  %.not58 = icmp eq ptr %i.an, null
  br i1 %.not58, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %i.ar = load i32, ptr %i.l, align 8, !tbaa !21
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph76, label %._crit_edge77.thread

.lr.ph76:                                         ; preds = %bb.h, %bb.q
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.q ], [ 1, %bb.h ] ; 2 uses
  %.074 = phi ptr [ %.1, %bb.q ], [ %i.aq, %bb.h ] ; 7 uses
  %.04873 = phi i32 [ %.149, %bb.q ], [ 1, %bb.h ] ; 4 uses
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv83
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31 ; 5 uses
  %i.aw = icmp eq ptr %.074, %i.av
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph76
  %i.ax = add nsw i32 %.04873, 1
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph76
  %i.ay = icmp slt i32 %.04873, 2
  %i.az = getelementptr i8, ptr %.074, i64 16
  %.0.val66 = load i16, ptr %i.az, align 8, !tbaa !40
  %i.ba = and i16 %.0.val66, 512
  %.not63 = icmp eq i16 %i.ba, 0                  ; 2 uses
  br i1 %i.ay, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %.not63, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.074, i64 240
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %i.bb) ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %.074) ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  br i1 %.not63, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %.074, i64 240
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.04873, ptr noundef nonnull %i.be) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.04873, ptr noundef nonnull %.074) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.l, %bb.p, %bb.o, %bb.i
  %.149 = phi i32 [ %i.ax, %bb.i ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.l ], [ 1, %bb.m ] ; 4 uses
  %.1 = phi ptr [ %.074, %bb.i ], [ %i.av, %bb.o ], [ %i.av, %bb.p ], [ %i.av, %bb.l ], [ %i.av, %bb.m ] ; 5 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.bh = load i32, ptr %i.l, align 8, !tbaa !21
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next84, %i.bi
  br i1 %i.bj, label %.lr.ph76, label %._crit_edge77, !llvm.loop !57

._crit_edge77:                                    ; preds = %bb.q
  %i.bk = icmp slt i32 %.149, 2
  br i1 %i.bk, label %._crit_edge77.thread, label %bb.t

._crit_edge77.thread:                             ; preds = %bb.h, %._crit_edge77
  %.0.lcssa89 = phi ptr [ %.1, %._crit_edge77 ], [ %i.aq, %bb.h ] ; 3 uses
  %i.bl = getelementptr i8, ptr %.0.lcssa89, i64 16
  %.0.val64 = load i16, ptr %i.bl, align 8, !tbaa !40
  %i.bm = and i16 %.0.val64, 512
  %.not60 = icmp eq i16 %i.bm, 0
  br i1 %.not60, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge77.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa89, i64 240
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %i.bn) ; 0 uses
  br label %bb.w

bb.s:                                             ; preds = %._crit_edge77.thread
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %.0.lcssa89) ; 0 uses
  br label %bb.w

bb.t:                                             ; preds = %._crit_edge77
  %i.bq = getelementptr i8, ptr %.1, i64 16
  %.0.val = load i16, ptr %i.bq, align 8, !tbaa !40
  %i.br = and i16 %.0.val, 512
  %.not59 = icmp eq i16 %i.br, 0
  br i1 %.not59, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 240
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.149, ptr noundef nonnull %i.bs) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.149, ptr noundef nonnull %.1) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.r, %bb.s
  %putchar61 = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.g, %bb.w, %bb.b, %bb.a
  %.052 = phi i32 [ 17, %bb.b ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %bb.g ]
  ret i32 %.052
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 18) i32 @ompi_datatype_get_args(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 11 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val = load i16, ptr %i.d, align 8, !tbaa !40
  %i.e = and i16 %.val, 512
  %.not51 = icmp ne i16 %i.e, 0
  %cond = icmp eq i32 %1, 0
  %or.cond = and i1 %cond, %.not51
  br i1 %or.cond, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !27
  store i32 0, ptr %4, align 4, !tbaa !27
  store i32 0, ptr %6, align 4, !tbaa !27
  store i32 0, ptr %8, align 4, !tbaa !27
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  switch i32 %1, label %bb.r [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17
  store i32 %i.g, ptr %2, align 4, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  store i32 %i.i, ptr %4, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !21
  store i32 %i.k, ptr %6, align 4, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23
  store i32 %i.m, ptr %8, align 4, !tbaa !27
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.n = load i32, ptr %2, align 4, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %i.q = icmp slt i32 %i.n, %i.p
  br i1 %i.q, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %4, align 4, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19
  %i.u = icmp slt i32 %i.r, %i.t
  br i1 %i.u, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %6, align 4, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %.not46 = icmp eq ptr %i.aa, null
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = sext i32 %i.p to i64
  %i.ac = shl nsw i64 %i.ab, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %3, ptr nonnull align 4 %i.aa, i64 %i.ac, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.not47 = icmp eq ptr %5, null
  br i1 %.not47, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 2 uses
  %.not48 = icmp eq ptr %i.ae, null
  br i1 %.not48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load i32, ptr %i.s, align 4, !tbaa !19
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %i.ae, i64 %i.ah, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.not49 = icmp eq ptr %7, null
  br i1 %.not49, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22 ; 2 uses
  %.not50 = icmp eq ptr %i.aj, null
  br i1 %.not50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !21
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %i.aj, i64 %i.am, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.q, %bb.p, %bb.o, %bb.d, %bb.f, %bb.g, %bb.h, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 17, %bb.b ], [ 0, %bb.e ], [ 13, %bb.f ], [ 17, %bb.d ], [ 13, %bb.h ], [ 13, %bb.g ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ]
  ret i32 %.0
}

; Function Attrs: norecurse nounwind memory(readwrite, target_mem: none) uwtable
define noundef i32 @ompi_datatype_copy_args(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @opal_uses_threads, align 1, !tbaa !46, !range !28, !noundef !47
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw volatile add ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load volatile i32, ptr %i.b, align 4, !tbaa !27
  %i.g = add nsw i32 %i.f, 1
  store volatile i32 %i.g, ptr %i.b, align 4, !tbaa !27
  %i.h = load volatile i32, ptr %i.b, align 4, !tbaa !27 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.b, ptr %i.i, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %opal_thread_add_fetch_32.exit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @ompi_datatype_release_args(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 7 uses
  %i.c = load i8, ptr @opal_uses_threads, align 1, !tbaa !46, !range !28, !noundef !47
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw volatile add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load volatile i32, ptr %i.b, align 4, !tbaa !27
  %i.g = add nsw i32 %i.f, -1
  store volatile i32 %i.g, ptr %i.b, align 4, !tbaa !27
  %i.h = load volatile i32, ptr %i.b, align 4, !tbaa !27 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.b, %bb.c
  %i.i = load volatile i32, ptr %i.b, align 8, !tbaa !24
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.preheader, label %bb.j

.preheader:                                       ; preds = %opal_thread_add_fetch_32.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %1 = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %.val = load i16, ptr %i.q, align 8, !tbaa !40
  %i.r = and i16 %.val, 512
  %.not = icmp eq i16 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.t = load i8, ptr @opal_uses_threads, align 1, !tbaa !46, !range !28, !noundef !47
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.s, i32 -1 monotonic, align 4
  %i.w = add i32 %i.v, -1
  br label %opal_thread_add_fetch_32.exit18

bb.g:                                             ; preds = %bb.e
  %i.x = load volatile i32, ptr %i.s, align 8, !tbaa !27
  %i.y = add nsw i32 %i.x, -1
  store volatile i32 %i.y, ptr %i.s, align 8, !tbaa !27
  %i.z = load volatile i32, ptr %i.s, align 8, !tbaa !27
  br label %opal_thread_add_fetch_32.exit18

opal_thread_add_fetch_32.exit18:                  ; preds = %bb.f, %bb.g
  %.0.i17 = phi i32 [ %i.w, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i17, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %opal_thread_add_fetch_32.exit18
  %2 = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52 ; 2 uses
  %.not6.i = icmp eq ptr %i.ag, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ag, %bb.h ]
  %.07.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.af, %bb.h ]
  tail call void %i.ah(ptr noundef nonnull %i.ac) #14, !inline_history !0
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre.a = load ptr, ptr %i.n, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre.a, i64 %indvars.iv
  %.pre21.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.h
  %i.ak = phi ptr [ %.pre21.a, %opal_obj_run_destructors.exit.loopexit ], [ %i.ac, %bb.h ]
  tail call void @free(ptr noundef %i.ak) #14
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  store ptr null, ptr %i.am, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i32, ptr %i.k, align 8, !tbaa !21
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.d, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.aq) #14
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %opal_thread_add_fetch_32.exit
  store ptr null, ptr %i.a, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ompi_datatype_get_pack_description(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 52, ptr %i.a, align 4, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 7 uses
  %i.f = load volatile i64, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = cmpxchg volatile ptr %i.e, i64 0, i64 1 acquire monotonic, align 8
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val28 = load i16, ptr %i.k, align 8, !tbaa !40
  %i.l = and i16 %.val28, 512
  %.not = icmp eq i16 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %i.d, null
  br i1 %i.m, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sink = phi i64 [ %i.o, %bb.e ], [ 8, %bb.c ]
  %i.p = tail call noalias ptr @malloc(i64 noundef %.sink) #13 ; 4 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !52
  call fastcc void @__ompi_datatype_pack_description(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %i.a)
  %.val = load i16, ptr %i.k, align 8, !tbaa !40
  %i.q = and i16 %.val, 512
  %.not27 = icmp eq i16 %i.q, 0
  br i1 %.not27, label %bb.g, label %._crit_edge29

._crit_edge29:                                    ; preds = %bb.f
  %.pre = ptrtoint ptr %i.p to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge29, %bb.g
  %.pre-phi = phi i64 [ %.pre, %._crit_edge29 ], [ %i.t, %bb.g ]
  fence release
  store volatile i64 %.pre-phi, ptr %i.e, align 8, !tbaa !43
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.w = load volatile i64, ptr %i.e, align 8, !tbaa !43
  %i.x = inttoptr i64 %i.w to ptr
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.a
  %.3 = phi ptr [ %i.g, %bb.a ], [ %i.x, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.y = icmp eq ptr %.3, inttoptr (i64 1 to ptr)
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.ompi_datatype_get_pack_description.interval, i64 16, i1 false)
  %i.z = load volatile i64, ptr %i.e, align 8, !tbaa !43
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.ab = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef null) #14 ; 0 uses
  %i.ac = load volatile i64, ptr %i.e, align 8, !tbaa !43
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %i.ae = load volatile i64, ptr %i.e, align 8, !tbaa !43
  %i.af = inttoptr i64 %i.ae to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %.4 = phi ptr [ %i.af, %._crit_edge ], [ %.3, %bb.j ]
  store ptr %.4, ptr %1, align 8, !tbaa !52
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.l
  %.123 = phi i32 [ 0, %bb.l ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.123
}

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @__ompi_datatype_pack_description(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2) unnamed_addr #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !52     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val49 = load i16, ptr %i.e, align 8, !tbaa !40
  %i.f = and i16 %.val49, 512
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.b, align 4, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load i32, ptr %i.g, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %1, align 8, !tbaa !52
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23   ; 2 uses
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  tail call fastcc void @__ompi_datatype_pack_description(ptr noundef %i.p, ptr noundef %1, ptr noundef %2)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  store i32 %i.l, ptr %i.b, align 4, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.u, ptr %i.v, align 4, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.x, ptr %i.y, align 4, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !19  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 8 %i.ad, i64 %i.af, i1 false)
  %i.ag = load i32, ptr %i.t, align 4, !tbaa !19
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ai
  %.pre = load i32, ptr %i.w, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = phi i32 [ %.pre, %bb.f ], [ %i.x, %bb.e ]
  %i.al = phi ptr [ %i.aj, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %i.am = sext i32 %i.ak to i64
end_hunk_0
begin_hunk_1_@__ompi_datatype_create_from_packed_description:bb.a
  %i.hn = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.ho = call i32 @ompi_datatype_create_hindexed_block(i32 noundef %i.hk, i32 noundef %i.hm, ptr noundef nonnull %i.ac, ptr noundef %i.hn, ptr noundef nonnull %i.c) #14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store ptr %i.ah, ptr %i.l, align 16, !tbaa !26
  %i.hp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.hl, ptr %i.hp, align 8, !tbaa !26
  %i.hq = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.hr = load i32, ptr %i.ah, align 4, !tbaa !27
  %i.hs = call i32 @ompi_datatype_set_args(ptr noundef %i.hq, i32 noundef 2, ptr noundef nonnull %i.l, i32 noundef %i.hr, ptr noundef nonnull %i.ac, i32 noundef 1, ptr noundef nonnull %i.ab, i32 noundef 18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br label %__ompi_datatype_create_from_args.exit

__ompi_datatype_create_from_args.exit:            ; preds = %._crit_edge, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %ompi_datatype_create_resized.exit.i, %bb.s
  %i.ht = load ptr, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hu = load ptr, ptr %i.m, align 8, !tbaa !53
  store ptr %i.hu, ptr %0, align 8, !tbaa !52
  br label %bb.t

bb.t:                                             ; preds = %__ompi_datatype_create_from_args.exit, %bb.f
  %.053 = phi ptr [ null, %bb.f ], [ %i.ht, %__ompi_datatype_create_from_args.exit ]
  %.052 = phi i32 [ %i.ax, %bb.f ], [ %i.y, %__ompi_datatype_create_from_args.exit ] ; 2 uses
  %i.hv = icmp sgt i32 %.052, 0
  br i1 %i.hv, label %.lr.ph6.preheader, label %._crit_edge7

.lr.ph6.preheader:                                ; preds = %bb.t
  %wide.trip.count14 = zext nneg i32 %.052 to i64
  br label %.lr.ph6

.lr.ph6:                                          ; preds = %.lr.ph6.preheader, %bb.y
  %indvars.iv11 = phi i64 [ 0, %.lr.ph6.preheader ], [ %indvars.iv.next12, %bb.y ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv11 ; 4 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !31 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 16
  %.val = load i16, ptr %i.hy, align 8, !tbaa !40
  %i.hz = and i16 %.val, 512
  %.not = icmp eq i16 %i.hz, 0
  br i1 %.not, label %bb.u, label %bb.y

bb.u:                                             ; preds = %.lr.ph6
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  %i.ib = load i8, ptr @opal_uses_threads, align 1, !tbaa !46, !range !28, !noundef !47
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.v, label %bb.w, !prof !29

bb.v:                                             ; preds = %bb.u
  %i.id = atomicrmw volatile add ptr %i.ia, i32 -1 monotonic, align 4
  %i.ie = add i32 %i.id, -1
  br label %opal_thread_add_fetch_32.exit

bb.w:                                             ; preds = %bb.u
  %i.if = load volatile i32, ptr %i.ia, align 8, !tbaa !27
  %i.ig = add nsw i32 %i.if, -1
  store volatile i32 %i.ig, ptr %i.ia, align 8, !tbaa !27
  %i.ih = load volatile i32, ptr %i.ia, align 8, !tbaa !27
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.v, %bb.w
  %.0.i = phi i32 [ %i.ie, %bb.v ], [ %i.ih, %bb.w ]
  %i.ii = icmp eq i32 %.0.i, 0
  br i1 %i.ii, label %bb.x, label %bb.y

bb.x:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.ij = load ptr, ptr %i.hw, align 8, !tbaa !31 ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !48
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !51 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !52 ; 2 uses
  %.not6.i = icmp eq ptr %i.in, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.i
  %i.io = phi ptr [ %i.iq, %.lr.ph.i ], [ %i.in, %bb.x ]
  %.07.i = phi ptr [ %i.ip, %.lr.ph.i ], [ %i.im, %bb.x ]
  call void %i.io(ptr noundef nonnull %i.ij) #14, !inline_history !0
  %i.ip = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !52 ; 2 uses
  %.not.i = icmp eq ptr %i.iq, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.hw, align 8, !tbaa !31
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.x
  %i.ir = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.ij, %bb.x ]
  call void @free(ptr noundef %i.ir) #14
  store ptr null, ptr %i.hw, align 8, !tbaa !31
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph6, %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1 ; 2 uses
  %exitcond15.not = icmp eq i64 %indvars.iv.next12, %wide.trip.count14
  br i1 %exitcond15.not, label %._crit_edge7, label %.lr.ph6, !llvm.loop !63

._crit_edge7:                                     ; preds = %bb.y, %bb.t
  call void @free(ptr noundef %i.ab) #14
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge7, %bb.b
  %.054 = phi ptr [ %i.v, %bb.b ], [ %.053, %._crit_edge7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  ret ptr %.054
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ompi_datatype_get_single_predefined_type_from_args(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val26 = load i16, ptr %i.c, align 8, !tbaa !40
  %i.d = and i16 %.val26, 512
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.02127 = phi ptr [ null, %.lr.ph ], [ %.1, %bb.g ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %.val = load i16, ptr %i.l, align 8, !tbaa !40
  %i.m = and i16 %.val, 512
  %.not24 = icmp eq i16 %i.m, 0
  br i1 %.not24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @ompi_datatype_get_single_predefined_type_from_args(ptr noundef nonnull %i.k) ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.020 = phi ptr [ %i.n, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.p = icmp ne ptr %.020, @ompi_mpi_lb
  %i.q = icmp ne ptr %.020, @ompi_mpi_ub
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq ptr %.02127, null
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not25 = icmp eq ptr %.02127, %.020
  br i1 %.not25, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.1 = phi ptr [ %.02127, %bb.d ], [ %.02127, %bb.f ], [ %.020, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !64

.loopexit:                                        ; preds = %bb.c, %bb.f, %bb.g, %.preheader, %bb.a
  %.022 = phi ptr [ %0, %bb.a ], [ null, %.preheader ], [ null, %bb.f ], [ null, %bb.c ], [ %.1, %bb.g ]
  ret ptr %.022
}

declare i32 @ompi_datatype_create_contiguous(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @ompi_datatype_create_vector(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @ompi_datatype_create_hvector(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @ompi_datatype_create_indexed(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @ompi_datatype_create_hindexed(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @ompi_datatype_create_indexed_block(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @ompi_datatype_create_struct(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @ompi_datatype_create_subarray(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @ompi_datatype_create_darray(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @ompi_datatype_create_hindexed_block(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @ompi_datatype_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @opal_datatype_resize(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

declare i32 @opal_datatype_commit(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { norecurse nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{!1, !42}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"p1 long", !11, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"p2 _ZTS15ompi_datatype_t", !14, i64 0}
!16 = !{!"__dt_args", !7, i64 0, !7, i64 4, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !12, i64 32, !13, i64 40, !15, i64 48}
!17 = !{!16, !7, i64 16}
!18 = !{!16, !12, i64 32}
!19 = !{!16, !7, i64 20}
!20 = !{!16, !13, i64 40}
!21 = !{!16, !7, i64 24}
!22 = !{!16, !15, i64 48}
!23 = !{!16, !7, i64 4}
!24 = !{!16, !7, i64 0}
!25 = !{!16, !10, i64 8}
!26 = !{!12, !12, i64 0}
!27 = !{!7, !7, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!"p1 _ZTS15ompi_datatype_t", !11, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 _ZTS12opal_class_t", !11, i64 0}
!33 = !{!"opal_object_t", !32, i64 0, !7, i64 8}
!34 = !{!"short", !6, i64 0}
!35 = !{!"p1 _ZTS12dt_elem_desc", !11, i64 0}
!36 = !{!"dt_type_desc_t", !10, i64 0, !10, i64 8, !35, i64 16}
!37 = !{!"opal_datatype_t", !33, i64 0, !34, i64 16, !34, i64 18, !7, i64 20, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !7, i64 72, !7, i64 76, !6, i64 80, !36, i64 144, !36, i64 168, !13, i64 192}
!38 = !{!"p1 _ZTS17opal_hash_table_t", !11, i64 0}
!39 = !{!"ompi_datatype_t", !37, i64 0, !7, i64 200, !7, i64 204, !38, i64 208, !11, i64 216, !10, i64 224, !10, i64 232, !6, i64 240}
!40 = !{!39, !34, i64 16}
!41 = !{!39, !11, i64 216}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!39, !10, i64 224}
!44 = !{!10, !10, i64 0}
!45 = !{!"_Bool", !6, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{}
!48 = !{!33, !32, i64 0}
!49 = !{!"p1 omnipotent char", !11, i64 0}
!50 = !{!"opal_class_t", !49, i64 0, !32, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !7, i64 36, !14, i64 40, !14, i64 48, !10, i64 56}
!51 = !{!50, !14, i64 48}
!52 = !{!11, !11, i64 0}
!53 = !{!49, !49, i64 0}
!54 = distinct !{!54, !42}
!55 = distinct !{!55, !42}
!56 = distinct !{!56, !42}
!57 = distinct !{!57, !42}
!58 = distinct !{!58, !42}
!59 = distinct !{!59, !42}
!60 = distinct !{!60, !42}
!61 = !{!39, !7, i64 200}
!62 = distinct !{!62, !42}
!63 = distinct !{!63, !42}
!64 = distinct !{!64, !42}
end_hunk_1
