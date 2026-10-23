Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/deflate?download=true
inline.NumInlined: 48
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.config_s = type { i16, i16, i16, i16, ptr }

@deflate_copyright = dso_local local_unnamed_addr constant [68 x i8] c" deflate 1.3.1 Copyright 1995-2024 Jean-loup Gailly and Mark Adler \00", align 16
@z_errmsg = external local_unnamed_addr constant [10 x ptr], align 16
@configuration_table = internal unnamed_addr constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 16
@_length_code = external hidden local_unnamed_addr constant [0 x i8], align 1
@_dist_code = external hidden local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit_(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %6, align 1, !tbaa !12
  %i.c = icmp ne i8 %i.b, 49
  %i.d = icmp ne i32 %7, 112
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @zcalloc, ptr %i.g, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.j, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ @zcalloc, %bb.e ], [ %i.h, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @zcfree, ptr %i.l, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = icmp eq i32 %1, -1
  %spec.store.select = select i1 %i.o, i32 6, i32 %1 ; 2 uses
  %i.p = icmp slt i32 %3, 0
  br i1 %i.p, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i32 %3, -15
  br i1 %i.q, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = sub nsw i32 0, %3
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.s = icmp samesign ugt i32 %3, 15
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.t = add nsw i32 %3, -16
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.0126 = phi i32 [ %i.r, %bb.j ], [ %i.t, %bb.l ], [ %3, %bb.k ] ; 3 uses
  %i.u = phi i1 [ true, %bb.j ], [ true, %bb.l ], [ false, %bb.k ]
  %.0 = phi i32 [ 0, %bb.j ], [ 2, %bb.l ], [ 1, %bb.k ]
  %i.v = add i32 %4, -10
  %or.cond4 = icmp ult i32 %i.v, -9
  %i.w = icmp ne i32 %2, 8
  %or.cond6 = or i1 %i.w, %or.cond4
  %i.x = add nsw i32 %.0126, -16
  %i.y = icmp ult i32 %i.x, -8
  %or.cond10 = select i1 %or.cond6, i1 true, i1 %i.y
  %i.z = icmp ugt i32 %spec.store.select, 9
  %or.cond14 = or i1 %i.z, %or.cond10
  %i.aa = icmp ugt i32 %5, 4
  %or.cond18 = or i1 %i.aa, %or.cond14
  br i1 %or.cond18, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = icmp eq i32 %.0126, 8                   ; 2 uses
  %or.cond20 = and i1 %i.ab, %i.u
  br i1 %or.cond20, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ae = tail call ptr %i.k(ptr noundef %i.ad, i32 noundef 1, i32 noundef 6048) #12 ; 27 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %spec.store.select21 = select i1 %i.ab, i32 9, i32 %.0126 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !22
  store ptr %0, ptr %i.ae, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store i32 42, ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i32 %.0, ptr %i.ai, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store ptr null, ptr %i.aj, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 164
  store i32 %spec.store.select21, ptr %i.ak, align 4, !tbaa !35
  %i.al = shl nuw nsw i32 1, %spec.store.select21 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 160 ; 4 uses
  store i32 %i.al, ptr %i.am, align 8, !tbaa !36
  %i.an = add nsw i32 %i.al, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 6040
  store i32 1, ptr %i.ap, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  %i.ar = tail call i32 @llvm.umax.i32(i32 %4, i32 8) ; 3 uses
  %spec.store.select132 = add nuw nsw i32 %i.ar, 7
  store i32 %spec.store.select132, ptr %i.aq, align 8, !tbaa !39
  %i.as = shl nuw nsw i32 128, %i.ar              ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 212 ; 2 uses
  store i32 %i.as, ptr %i.at, align 4, !tbaa !40
  %i.au = add nsw i32 %i.as, -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 220
  store i32 %i.au, ptr %i.av, align 4, !tbaa !41
  %8 = icmp eq i32 %i.ar, 8
  %.finite = select i1 %8, i8 5, i8 6
  %.zext = zext nneg i8 %.finite to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  store i32 %.zext, ptr %i.aw, align 8, !tbaa !42
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.az = or disjoint i32 %i.al, 8
  %i.ba = tail call ptr %i.ax(ptr noundef %i.ay, i32 noundef %i.az, i32 noundef 2) #12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 176 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !43
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bd = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.be = load i32, ptr %i.am, align 8, !tbaa !36
  %i.bf = tail call ptr %i.bc(ptr noundef %i.bd, i32 noundef %i.be, i32 noundef 2) #12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 192 ; 3 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !44
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bi = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.bj = load i32, ptr %i.at, align 4, !tbaa !40
  %i.bk = tail call ptr %i.bh(ptr noundef %i.bi, i32 noundef %i.bj, i32 noundef 2) #12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ae, i64 200 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !45
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 6032
  store i64 0, ptr %i.bm, align 8, !tbaa !46
  %i.bn = shl nuw nsw i32 64, %4                  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 5984 ; 3 uses
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !47
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bq = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.br = tail call ptr %i.bp(ptr noundef %i.bq, i32 noundef %i.bn, i32 noundef 5) #12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !48
  %i.bt = load i32, ptr %i.bo, align 8, !tbaa !47
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !49
  %i.bx = load ptr, ptr %i.bb, align 8, !tbaa !43 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !44
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !45
  %i.cc = icmp eq ptr %i.cb, null
  %i.cd = icmp eq ptr %i.br, null
  %or.cond133 = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond133, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  store i32 666, ptr %i.ah, align 8, !tbaa !32
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !50
  store ptr %i.ce, ptr %i.f, align 8, !tbaa !18
  %i.cf = tail call i32 @deflateEnd(ptr noundef nonnull %0) ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cg = load i32, ptr %i.am, align 8, !tbaa !36
  %i.ch = add i32 %i.cg, 8
  %i.ci = zext i32 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bx, i8 0, i64 %i.cj, i1 false)
  %i.ck = load ptr, ptr %i.bg, align 8, !tbaa !44
  %i.cl = load i32, ptr %i.am, align 8, !tbaa !36
  %i.cm = zext i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ck, i8 0, i64 %i.cn, i1 false)
  %i.co = load ptr, ptr %i.bs, align 8, !tbaa !48 ; 2 uses
  %i.cp = load i32, ptr %i.bo, align 8, !tbaa !47 ; 3 uses
  %i.cq = shl i32 %i.cp, 1
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ae, i64 5968
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !51
  %i.cu = shl i32 %i.cp, 2
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ae, i64 5976
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !52
  %i.cy = add i32 %i.cp, -1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ae, i64 5992
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !53
  %i.da = getelementptr inbounds nuw i8, ptr %i.ae, i64 276
  store i32 %spec.store.select, ptr %i.da, align 4, !tbaa !54
  %i.db = getelementptr inbounds nuw i8, ptr %i.ae, i64 280
  store i32 %5, ptr %i.db, align 8, !tbaa !55
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store i8 8, ptr %i.dc, align 8, !tbaa !99
  %i.dd = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.m, %bb.n, %bb.i, %bb.c, %bb.a, %bb.b, %bb.t, %bb.s
  %.0125 = phi i32 [ %i.dd, %bb.t ], [ -6, %bb.a ], [ -2, %bb.c ], [ -2, %bb.i ], [ -2, %bb.m ], [ -4, %bb.s ], [ -6, %bb.b ], [ -2, %bb.n ], [ -4, %bb.o ]
  ret i32 %.0125
}

declare hidden ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare hidden void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -3, 1) i32 @deflateEnd(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %deflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %deflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %deflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %deflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %bb.f, label %deflateStateCheck.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  switch i32 %i.m, label %deflateStateCheck.exit.thread [
    i32 42, label %deflateStateCheck.exit
    i32 57, label %deflateStateCheck.exit
    i32 69, label %deflateStateCheck.exit
    i32 73, label %deflateStateCheck.exit
    i32 91, label %deflateStateCheck.exit
    i32 103, label %deflateStateCheck.exit
    i32 113, label %deflateStateCheck.exit
    i32 666, label %deflateStateCheck.exit
  ]

deflateStateCheck.exit:                           ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48   ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %deflateStateCheck.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  tail call void %i.f(ptr noundef %i.q, ptr noundef nonnull %i.o) #12
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !22
  %.pre36.pre38.pre40.pre = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %deflateStateCheck.exit
  %.pre36.pre38.pre40 = phi ptr [ %.pre36.pre38.pre40.pre, %bb.g ], [ %i.f, %deflateStateCheck.exit ] ; 2 uses
  %i.r = phi ptr [ %.pre, %bb.g ], [ %i.i, %deflateStateCheck.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45   ; 2 uses
  %.not28 = icmp eq ptr %i.t, null
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  tail call void %.pre36.pre38.pre40(ptr noundef %i.v, ptr noundef nonnull %i.t) #12
  %.pre33 = load ptr, ptr %i.h, align 8, !tbaa !22
  %.pre36.pre38.pre = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre36.pre38 = phi ptr [ %.pre36.pre38.pre, %bb.i ], [ %.pre36.pre38.pre40, %bb.h ] ; 2 uses
  %i.w = phi ptr [ %.pre33, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44   ; 2 uses
  %.not29 = icmp eq ptr %i.y, null
  br i1 %.not29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20
  tail call void %.pre36.pre38(ptr noundef %i.aa, ptr noundef nonnull %i.y) #12
  %.pre34 = load ptr, ptr %i.h, align 8, !tbaa !22
  %.pre36.pre = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre36 = phi ptr [ %.pre36.pre, %bb.k ], [ %.pre36.pre38, %bb.j ] ; 2 uses
  %i.ab = phi ptr [ %.pre34, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %.not30 = icmp eq ptr %i.ad, null
  br i1 %.not30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_0
