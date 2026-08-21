Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/setopt?download=true
inline.NumInlined: 124
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@Curl_cfree = external local_unnamed_addr global ptr, align 8
@Curl_cstrdup = external local_unnamed_addr global ptr, align 8
@Curl_cmalloc = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"setopt 0x%x got bad argument\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"boolean setopt(%d) got unsupported argument %ld, treated as %d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SESS\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"FLUSH\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"RELOAD\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Set-Cookie:\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"SRP\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"all\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 44) i32 @Curl_setstropt(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  tail call void %i.a(ptr noundef %i.b) #10
  store ptr null, ptr %0, align 8, !tbaa !10
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %i.d = icmp ugt i64 %i.c, 8000000
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !8
  %i.f = tail call ptr %i.e(ptr noundef nonnull %1) #10 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !10
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ 43, %bb.b ], [ 0, %bb.d ], [ 27, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 44) i32 @Curl_setblobopt(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  tail call void %i.a(ptr noundef %i.b) #10
  store ptr null, ptr %0, align 8, !tbaa !12
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !14
  %.not22 = icmp eq ptr %i.c, null
  br i1 %.not22, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = add i64 %i.e, -8000001
  %or.cond = icmp ult i64 %i.f, -8000000
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = and i32 %i.i, 1
  %.not24 = icmp eq i32 %i.j, 0
  %i.k = add nuw nsw i64 %i.e, 24
  %spec.select = select i1 %.not24, i64 24, i64 %i.k
  %i.l = tail call ptr %i.g(i64 noundef %spec.select) #10 ; 5 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !19
  %i.m = load i32, ptr %i.h, align 8, !tbaa !18
  %i.n = and i32 %i.m, 1
  %.not26 = icmp eq i32 %i.n, 0
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !14
  %i.p = load ptr, ptr %1, align 8, !tbaa !14
  %i.q = load i64, ptr %i.d, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.l, ptr %0, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.c, %bb.b, %bb.d
  %.1 = phi i32 [ 27, %bb.d ], [ 43, %bb.b ], [ 0, %bb.g ], [ 43, %bb.c ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 44) i32 @Curl_setopt_SSLVERSION(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = and i64 %2, 65535                        ; 2 uses
  %i.b = and i64 %2, 4294901760                   ; 2 uses
  %i.c = and i64 %2, 65534
  %or.cond3 = icmp ne i64 %i.c, 2
  %i.d = icmp samesign ult i64 %i.a, 8
  %or.cond5.not33 = select i1 %or.cond3, i1 %i.d, i1 false
  %i.e = icmp samesign ult i64 %i.b, 524288
  %or.cond9.not = select i1 %or.cond5.not33, i1 %i.e, i1 false
  br i1 %or.cond9.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 32
  %spec.select.v = select i1 %.not, i64 800, i64 1000
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.v ; 2 uses
  %i.f = icmp eq i64 %i.a, 0
  %i.g = trunc i64 %2 to i8
  %i.h = select i1 %i.f, i8 6, i8 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 165
  store i8 %i.h, ptr %i.i, align 1, !tbaa !22
  %i.j = trunc nuw nsw i64 %i.b to i32
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select, i64 160
  store i32 %i.j, ptr %i.k, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %spec.select30 = phi i32 [ 43, %bb.a ], [ 0, %bb.b ]
  ret i32 %spec.select30
}

; Function Attrs: nounwind uwtable
define i32 @Curl_vsetopt(ptr noundef %0, i32 noundef %1, ptr nofree noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 10000
  br i1 %i.a, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 8                ; 3 uses
  %i.c = icmp ult i32 %i.b, 41
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = add nuw nsw i32 %i.b, 8
  store i32 %i.h, ptr %2, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.d ]
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20   ; 18 uses
  %i.n = tail call fastcc i32 @setopt_long_bool(ptr noundef %0, i32 noundef range(i32 0, 10000) %1, i64 noundef %i.m) #10 ; 2 uses
  %.not.i = icmp eq i32 %i.n, 48
  br i1 %.not.i, label %bb.f, label %setopt_long.exit

bb.f:                                             ; preds = %bb.e
  %i.o = tail call fastcc i32 @setopt_long_net(ptr noundef %0, i32 noundef range(i32 0, 10000) %1, i64 noundef %i.m) #10 ; 2 uses
  %.not.1.i = icmp eq i32 %i.o, 48
  br i1 %.not.1.i, label %bb.g, label %setopt_long.exit

bb.g:                                             ; preds = %bb.f
  %i.p = tail call fastcc i32 @setopt_long_http(ptr noundef %0, i32 noundef range(i32 0, 10000) %1, i64 noundef %i.m) #10 ; 2 uses
  %.not.2.i = icmp eq i32 %i.p, 48
  br i1 %.not.2.i, label %bb.h, label %setopt_long.exit

bb.h:                                             ; preds = %bb.g
  switch i32 %1, label %setopt_long_proxy.exit.i [
    i32 59, label %bb.i
    i32 111, label %bb.m
    i32 101, label %bb.o
    i32 267, label %bb.r
  ]

bb.i:                                             ; preds = %bb.h
  %or.cond.i.i = icmp ugt i64 %i.m, 65535
  br i1 %or.cond.i.i, label %setopt_long.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !25
  %i.s = zext i16 %i.r to i64
  %.not23.i.i = icmp eq i64 %i.m, %i.s
  br i1 %.not23.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call void @Curl_auth_digest_cleanup(ptr noundef nonnull %i.t) #10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3064
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = trunc nuw i64 %i.m to i16
  store i16 %i.v, ptr %i.q, align 8, !tbaa !25
  br label %setopt_long.exit

bb.m:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = lshr i64 %i.m, 3
  %i.x = and i64 %i.w, 2
  %.masked.i.i.i = and i64 %i.m, -29
  %i.y = or i64 %i.x, %.masked.i.i.i              ; 2 uses
  %i.z = and i64 %i.y, 2
  %i.aa = and i64 %i.m, 2147483617
  %i.ab = or disjoint i64 %i.z, %i.aa
  %or.cond53.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %or.cond53.i.i.i, label %setopt_long.exit, label %.thread.loopexit.i.i.i

.thread.loopexit.i.i.i:                           ; preds = %bb.n
  %i.ac = trunc i64 %i.y to i32
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread.loopexit.i.i.i, %bb.m
  %.1.i.i.i = phi i32 [ 0, %bb.m ], [ %i.ac, %.thread.loopexit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %.1.i.i.i, ptr %i.ad, align 4, !tbaa !35
  br label %setopt_long.exit

bb.o:                                             ; preds = %bb.h
  %or.cond3.i.i = icmp ugt i64 %i.m, 8
  br i1 %or.cond3.i.i, label %setopt_long.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = icmp eq i64 %i.m, 8
  br i1 %i.ae, label %setopt_long.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = trunc nuw nsw i64 %i.m to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1210
  store i8 %i.af, ptr %i.ag, align 2, !tbaa !85
  br label %setopt_long.exit

bb.r:                                             ; preds = %bb.h
  %i.ah = and i64 %i.m, -6
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %bb.s, label %setopt_long.exit

bb.s:                                             ; preds = %bb.r
  %i.ai = trunc nuw nsw i64 %i.m to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1211
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !86
  br label %setopt_long.exit

setopt_long_proxy.exit.i:                         ; preds = %bb.h
  %i.ak = tail call fastcc i32 @setopt_long_ssl(ptr noundef %0, i32 noundef range(i32 0, 10000) %1, i64 noundef %i.m) #10 ; 2 uses
  %.not.4.i = icmp eq i32 %i.ak, 48
  br i1 %.not.4.i, label %bb.t, label %setopt_long.exit

bb.t:                                             ; preds = %setopt_long_proxy.exit.i
  %i.al = tail call fastcc i32 @setopt_long_proto(ptr noundef %0, i32 noundef range(i32 0, 10000) %1, i64 noundef %i.m) #10 ; 2 uses
  %.not.5.i = icmp eq i32 %i.al, 48
  br i1 %.not.5.i, label %bb.u, label %setopt_long.exit

bb.u:                                             ; preds = %bb.t
  %i.am = tail call fastcc i32 @setopt_long_misc(ptr noundef %0, i32 noundef range(i32 0, 10000) %1, i64 noundef %i.m) #10
  br label %setopt_long.exit

bb.v:                                             ; preds = %bb.a
  %i.an = icmp ult i32 %1, 20000
  br i1 %i.an, label %bb.w, label %bb.br

bb.w:                                             ; preds = %bb.v
  switch i32 %1, label %bb.bn [
    i32 10023, label %bb.x
    i32 10028, label %bb.x
    i32 10039, label %bb.x
end_hunk_0
begin_hunk_1_@Curl_vsetopt:bb.a
  br i1 %i.qi, label %bb.fh, label %bb.gb

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.qk, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8
  %i.qn = zext nneg i32 %i.qj to i64
  %i.qo = getelementptr i8, ptr %i.qm, i64 %i.qn
  %i.qp = add nuw nsw i32 %i.qj, 8
  store i32 %i.qp, ptr %2, align 8
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %i.qq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.qr = load ptr, ptr %i.qq, align 8            ; 2 uses
  %i.qs = getelementptr i8, ptr %i.qr, i64 8
  store ptr %i.qs, ptr %i.qq, align 8
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.qt = phi ptr [ %i.qo, %bb.fi ], [ %i.qr, %bb.fj ]
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !20 ; 18 uses
  %trunc.i = trunc nuw i32 %1 to i16
  switch i16 %trunc.i, label %setopt_long.exit [
    i16 30270, label %bb.fl
    i16 30120, label %bb.fm
    i16 30115, label %bb.fr
    i16 30145, label %bb.ft
    i16 30146, label %bb.fv
    i16 30116, label %bb.fx
    i16 30117, label %bb.fz
  ]

bb.fl:                                            ; preds = %bb.fk
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i64 %i.qu, ptr %i.qv, align 8, !tbaa !131
  br label %setopt_long.exit

bb.fm:                                            ; preds = %bb.fk
  %i.qw = icmp slt i64 %i.qu, -1
  br i1 %i.qw, label %setopt_long.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !132
  %i.qz = icmp slt i64 %i.qy, %i.qu
  br i1 %i.qz, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !133
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !10 ; 2 uses
  %i.re = icmp eq ptr %i.rb, %i.rd
  br i1 %i.re, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.rf = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  tail call void %i.rf(ptr noundef %i.rd) #10, !inline_history !134
  store ptr null, ptr %i.rc, align 8, !tbaa !10
  store ptr null, ptr %i.ra, align 8, !tbaa !133
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn
  store i64 %i.qu, ptr %i.qx, align 8, !tbaa !132
  br label %setopt_long.exit

bb.fr:                                            ; preds = %bb.fk
  %i.rg = icmp slt i64 %i.qu, -1
  br i1 %i.rg, label %setopt_long.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 %i.qu, ptr %i.rh, align 8, !tbaa !135
  br label %setopt_long.exit

bb.ft:                                            ; preds = %bb.fk
  %i.ri = icmp slt i64 %i.qu, 0
  br i1 %i.ri, label %setopt_long.exit, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i64 %i.qu, ptr %i.rj, align 8, !tbaa !136
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.rl = tail call i64 @llvm.umax.i64(i64 %i.qu, i64 32768)
  %i.rm = tail call ptr @Curl_pgrs_now(ptr noundef %0) #10
  tail call void @Curl_rlimit_init(ptr noundef nonnull %i.rk, i64 noundef %i.qu, i64 noundef %i.rl, ptr noundef %i.rm) #10
  br label %setopt_long.exit

bb.fv:                                            ; preds = %bb.fk
  %i.rn = icmp slt i64 %i.qu, 0
  br i1 %i.rn, label %setopt_long.exit, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 %i.qu, ptr %i.ro, align 8, !tbaa !137
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.rq = tail call i64 @llvm.umax.i64(i64 %i.qu, i64 32768)
  %i.rr = tail call ptr @Curl_pgrs_now(ptr noundef %0) #10
  tail call void @Curl_rlimit_init(ptr noundef nonnull %i.rp, i64 noundef %i.qu, i64 noundef %i.rq, ptr noundef %i.rr) #10
  br label %setopt_long.exit

bb.fx:                                            ; preds = %bb.fk
  %i.rs = icmp slt i64 %i.qu, -1
  br i1 %i.rs, label %setopt_long.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i64 %i.qu, ptr %i.rt, align 8, !tbaa !138
  br label %setopt_long.exit

bb.fz:                                            ; preds = %bb.fk
  %i.ru = icmp slt i64 %i.qu, 0
  br i1 %i.ru, label %setopt_long.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store i64 %i.qu, ptr %i.rv, align 8, !tbaa !139
  br label %setopt_long.exit

bb.gb:                                            ; preds = %bb.fg
  br i1 %i.qk, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.rw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = zext nneg i32 %i.qj to i64
  %i.rz = getelementptr i8, ptr %i.rx, i64 %i.ry
  %i.sa = add nuw nsw i32 %i.qj, 8
  store i32 %i.sa, ptr %2, align 8
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8            ; 2 uses
  %i.sd = getelementptr i8, ptr %i.sc, i64 8
  store ptr %i.sd, ptr %i.sb, align 8
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.se = phi ptr [ %i.rz, %bb.gc ], [ %i.sc, %bb.gd ]
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !12 ; 48 uses
  switch i32 %1, label %setopt_long.exit [
    i32 40291, label %bb.gf
    i32 40293, label %bb.gm
    i32 40294, label %bb.gt
    i32 40310, label %bb.ha
    i32 40297, label %bb.hi
    i32 40292, label %bb.hq
    i32 40309, label %bb.hx
    i32 40295, label %bb.if
  ]

bb.gf:                                            ; preds = %bb.ge
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 3 uses
  %i.sh = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.si = load ptr, ptr %i.sg, align 8, !tbaa !12
  tail call void %i.sh(ptr noundef %i.si) #10, !inline_history !140
  store ptr null, ptr %i.sg, align 8, !tbaa !12
  %.not.i.i39 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i39, label %setopt_long.exit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.sj = load ptr, ptr %i.sf, align 8, !tbaa !14
  %.not22.i.i = icmp eq ptr %i.sj, null
  br i1 %.not22.i.i, label %setopt_long.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !17 ; 2 uses
  %i.sm = add i64 %i.sl, -8000001
  %or.cond.i.i40 = icmp ult i64 %i.sm, -8000000
  br i1 %or.cond.i.i40, label %setopt_long.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.sn = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !18
  %i.sq = and i32 %i.sp, 1
  %.not24.i.i = icmp eq i32 %i.sq, 0
  %i.sr = add nuw nsw i64 %i.sl, 24
  %spec.select.i.i = select i1 %.not24.i.i, i64 24, i64 %i.sr
  %i.ss = tail call ptr %i.sn(i64 noundef %spec.select.i.i) #10, !inline_history !140 ; 5 uses
  %.not25.i.i = icmp eq ptr %i.ss, null
  br i1 %.not25.i.i, label %setopt_long.exit, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ss, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.sf, i64 24, i1 false), !tbaa.struct !19
  %i.st = load i32, ptr %i.so, align 8, !tbaa !18
  %i.su = and i32 %i.st, 1
  %.not26.i.i = icmp eq i32 %i.su, 0
  br i1 %.not26.i.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 24 ; 2 uses
  store ptr %i.sv, ptr %i.ss, align 8, !tbaa !14
  %i.sw = load ptr, ptr %i.sf, align 8, !tbaa !14
  %i.sx = load i64, ptr %i.sk, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sv, ptr align 1 %i.sw, i64 %i.sx, i1 false)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  store ptr %i.ss, ptr %i.sg, align 8, !tbaa !12
  br label %setopt_long.exit

bb.gm:                                            ; preds = %bb.ge
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 3 uses
  %i.sz = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.ta = load ptr, ptr %i.sy, align 8, !tbaa !12
  tail call void %i.sz(ptr noundef %i.ta) #10, !inline_history !140
  store ptr null, ptr %i.sy, align 8, !tbaa !12
  %.not.i29.i = icmp eq ptr %i.sf, null
  br i1 %.not.i29.i, label %setopt_long.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.tb = load ptr, ptr %i.sf, align 8, !tbaa !14
  %.not22.i30.i = icmp eq ptr %i.tb, null
  br i1 %.not22.i30.i, label %setopt_long.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !17 ; 2 uses
  %i.te = add i64 %i.td, -8000001
  %or.cond.i31.i = icmp ult i64 %i.te, -8000000
  br i1 %or.cond.i31.i, label %setopt_long.exit, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.tf = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !18
  %i.ti = and i32 %i.th, 1
  %.not24.i32.i = icmp eq i32 %i.ti, 0
  %i.tj = add nuw nsw i64 %i.td, 24
  %spec.select.i33.i = select i1 %.not24.i32.i, i64 24, i64 %i.tj
  %i.tk = tail call ptr %i.tf(i64 noundef %spec.select.i33.i) #10, !inline_history !140 ; 5 uses
  %.not25.i34.i = icmp eq ptr %i.tk, null
  br i1 %.not25.i34.i, label %setopt_long.exit, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.sf, i64 24, i1 false), !tbaa.struct !19
  %i.tl = load i32, ptr %i.tg, align 8, !tbaa !18
  %i.tm = and i32 %i.tl, 1
  %.not26.i35.i = icmp eq i32 %i.tm, 0
  br i1 %.not26.i35.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 24 ; 2 uses
  store ptr %i.tn, ptr %i.tk, align 8, !tbaa !14
  %i.to = load ptr, ptr %i.sf, align 8, !tbaa !14
  %i.tp = load i64, ptr %i.tc, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tn, ptr align 1 %i.to, i64 %i.tp, i1 false)
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  store ptr %i.tk, ptr %i.sy, align 8, !tbaa !12
  br label %setopt_long.exit

bb.gt:                                            ; preds = %bb.ge
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 3 uses
  %i.tr = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.ts = load ptr, ptr %i.tq, align 8, !tbaa !12
  tail call void %i.tr(ptr noundef %i.ts) #10, !inline_history !140
  store ptr null, ptr %i.tq, align 8, !tbaa !12
  %.not.i38.i = icmp eq ptr %i.sf, null
  br i1 %.not.i38.i, label %setopt_long.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.tt = load ptr, ptr %i.sf, align 8, !tbaa !14
  %.not22.i39.i = icmp eq ptr %i.tt, null
  br i1 %.not22.i39.i, label %setopt_long.exit, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !17 ; 2 uses
  %i.tw = add i64 %i.tv, -8000001
  %or.cond.i40.i = icmp ult i64 %i.tw, -8000000
  br i1 %or.cond.i40.i, label %setopt_long.exit, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.tx = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !8
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !18
  %i.ua = and i32 %i.tz, 1
  %.not24.i41.i = icmp eq i32 %i.ua, 0
  %i.ub = add nuw nsw i64 %i.tv, 24
  %spec.select.i42.i = select i1 %.not24.i41.i, i64 24, i64 %i.ub
  %i.uc = tail call ptr %i.tx(i64 noundef %spec.select.i42.i) #10, !inline_history !140 ; 5 uses
  %.not25.i43.i = icmp eq ptr %i.uc, null
  br i1 %.not25.i43.i, label %setopt_long.exit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uc, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.sf, i64 24, i1 false), !tbaa.struct !19
  %i.ud = load i32, ptr %i.ty, align 8, !tbaa !18
  %i.ue = and i32 %i.ud, 1
  %.not26.i44.i = icmp eq i32 %i.ue, 0
  br i1 %.not26.i44.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 24 ; 2 uses
  store ptr %i.uf, ptr %i.uc, align 8, !tbaa !14
  %i.ug = load ptr, ptr %i.sf, align 8, !tbaa !14
  %i.uh = load i64, ptr %i.tu, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.uf, ptr align 1 %i.ug, i64 %i.uh, i1 false)
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  store ptr %i.uc, ptr %i.tq, align 8, !tbaa !12
  br label %setopt_long.exit

bb.ha:                                            ; preds = %bb.ge
  %i.ui = tail call zeroext i1 @Curl_ssl_supports(ptr noundef %0, i32 noundef 64) #10
  br i1 %i.ui, label %bb.hb, label %setopt_long.exit

bb.hb:                                            ; preds = %bb.ha
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 4 uses
  %i.uk = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.ul = load ptr, ptr %i.uj, align 8, !tbaa !12
  tail call void %i.uk(ptr noundef %i.ul) #10, !inline_history !140
  store ptr null, ptr %i.uj, align 8, !tbaa !12
  %.not.i47.i = icmp eq ptr %i.sf, null
  br i1 %.not.i47.i, label %Curl_setblobopt.exit55.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.um = load ptr, ptr %i.sf, align 8, !tbaa !14
  %.not22.i48.i = icmp eq ptr %i.um, null
  br i1 %.not22.i48.i, label %Curl_setblobopt.exit55.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.un = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !17 ; 2 uses
  %i.up = add i64 %i.uo, -8000001
  %or.cond.i49.i = icmp ult i64 %i.up, -8000000
  br i1 %or.cond.i49.i, label %Curl_setblobopt.exit55.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.uq = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !18
  %i.ut = and i32 %i.us, 1
  %.not24.i50.i = icmp eq i32 %i.ut, 0
  %i.uu = add nuw nsw i64 %i.uo, 24
  %spec.select.i51.i = select i1 %.not24.i50.i, i64 24, i64 %i.uu
  %i.uv = tail call ptr %i.uq(i64 noundef %spec.select.i51.i) #10, !inline_history !140 ; 5 uses
  %.not25.i52.i = icmp eq ptr %i.uv, null
  br i1 %.not25.i52.i, label %.Curl_setblobopt.exit55_crit_edge.i, label %bb.hf

.Curl_setblobopt.exit55_crit_edge.i:              ; preds = %bb.he
  %.pre92.i = load ptr, ptr %i.uj, align 8, !tbaa !12
  %i.uw = icmp eq ptr %.pre92.i, null
  %i.ux = select i1 %i.uw, i16 0, i16 1024
  br label %Curl_setblobopt.exit55.i

bb.hf:                                            ; preds = %bb.he
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.sf, i64 24, i1 false), !tbaa.struct !19
  %i.uy = load i32, ptr %i.ur, align 8, !tbaa !18
  %i.uz = and i32 %i.uy, 1
  %.not26.i53.i = icmp eq i32 %i.uz, 0
  br i1 %.not26.i53.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.va = getelementptr inbounds nuw i8, ptr %i.uv, i64 24 ; 2 uses
  store ptr %i.va, ptr %i.uv, align 8, !tbaa !14
  %i.vb = load ptr, ptr %i.sf, align 8, !tbaa !14
  %i.vc = load i64, ptr %i.un, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.va, ptr align 1 %i.vb, i64 %i.vc, i1 false)
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  store ptr %i.uv, ptr %i.uj, align 8, !tbaa !12
  br label %Curl_setblobopt.exit55.i

Curl_setblobopt.exit55.i:                         ; preds = %bb.hh, %.Curl_setblobopt.exit55_crit_edge.i, %bb.hd, %bb.hc, %bb.hb
  %.not28.i = phi i16 [ %i.ux, %.Curl_setblobopt.exit55_crit_edge.i ], [ 0, %bb.hc ], [ 1024, %bb.hh ], [ 0, %bb.hd ], [ 0, %bb.hb ]
  %.1.i54.i = phi i32 [ 27, %.Curl_setblobopt.exit55_crit_edge.i ], [ 43, %bb.hc ], [ 0, %bb.hh ], [ 43, %bb.hd ], [ 0, %bb.hb ]
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.ve = load i16, ptr %i.vd, align 8
  %i.vf = and i16 %i.ve, -1025
  %i.vg = or disjoint i16 %i.vf, %.not28.i
  store i16 %i.vg, ptr %i.vd, align 8
  br label %setopt_long.exit

bb.hi:                                            ; preds = %bb.ge
  %i.vh = tail call zeroext i1 @Curl_ssl_supports(ptr noundef %0, i32 noundef 16384) #10
  br i1 %i.vh, label %bb.hj, label %setopt_long.exit

bb.hj:                                            ; preds = %bb.hi
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 3 uses
  %i.vj = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.vk = load ptr, ptr %i.vi, align 8, !tbaa !12
  tail call void %i.vj(ptr noundef %i.vk) #10, !inline_history !140
  store ptr null, ptr %i.vi, align 8, !tbaa !12
  %.not.i56.i = icmp eq ptr %i.sf, null
  br i1 %.not.i56.i, label %setopt_long.exit, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.vl = load ptr, ptr %i.sf, align 8, !tbaa !14
  %.not22.i57.i = icmp eq ptr %i.vl, null
  br i1 %.not22.i57.i, label %setopt_long.exit, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !17 ; 2 uses
  %i.vo = add i64 %i.vn, -8000001
  %or.cond.i58.i = icmp ult i64 %i.vo, -8000000
  br i1 %or.cond.i58.i, label %setopt_long.exit, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.vp = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !18
  %i.vs = and i32 %i.vr, 1
  %.not24.i59.i = icmp eq i32 %i.vs, 0
  %i.vt = add nuw nsw i64 %i.vn, 24
  %spec.select.i60.i = select i1 %.not24.i59.i, i64 24, i64 %i.vt
  %i.vu = tail call ptr %i.vp(i64 noundef %spec.select.i60.i) #10, !inline_history !140 ; 5 uses
  %.not25.i61.i = icmp eq ptr %i.vu, null
  br i1 %.not25.i61.i, label %setopt_long.exit, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vu, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.sf, i64 24, i1 false), !tbaa.struct !19
  %i.vv = load i32, ptr %i.vq, align 8, !tbaa !18
  %i.vw = and i32 %i.vv, 1
  %.not26.i62.i = icmp eq i32 %i.vw, 0
  br i1 %.not26.i62.i, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 24 ; 2 uses
  store ptr %i.vx, ptr %i.vu, align 8, !tbaa !14
  %i.vy = load ptr, ptr %i.sf, align 8, !tbaa !14
  %i.vz = load i64, ptr %i.vm, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vx, ptr align 1 %i.vy, i64 %i.vz, i1 false)
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  store ptr %i.vu, ptr %i.vi, align 8, !tbaa !12
  br label %setopt_long.exit

bb.hq:                                            ; preds = %bb.ge
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 1912 ; 3 uses
  %i.wb = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.wc = load ptr, ptr %i.wa, align 8, !tbaa !12
  tail call void %i.wb(ptr noundef %i.wc) #10, !inline_history !140
  store ptr null, ptr %i.wa, align 8, !tbaa !12
  %.not.i65.i = icmp eq ptr %i.sf, null
  br i1 %.not.i65.i, label %setopt_long.exit, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.wd = load ptr, ptr %i.sf, align 8, !tbaa !14
  %.not22.i66.i = icmp eq ptr %i.wd, null
  br i1 %.not22.i66.i, label %setopt_long.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.we = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !17 ; 2 uses
  %i.wg = add i64 %i.wf, -8000001
  %or.cond.i67.i = icmp ult i64 %i.wg, -8000000
  br i1 %or.cond.i67.i, label %setopt_long.exit, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.wh = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !18
  %i.wk = and i32 %i.wj, 1
  %.not24.i68.i = icmp eq i32 %i.wk, 0
  %i.wl = add nuw nsw i64 %i.wf, 24
  %spec.select.i69.i = select i1 %.not24.i68.i, i64 24, i64 %i.wl
  %i.wm = tail call ptr %i.wh(i64 noundef %spec.select.i69.i) #10, !inline_history !140 ; 5 uses
  %.not25.i70.i = icmp eq ptr %i.wm, null
  br i1 %.not25.i70.i, label %setopt_long.exit, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wm, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.sf, i64 24, i1 false), !tbaa.struct !19
  %i.wn = load i32, ptr %i.wi, align 8, !tbaa !18
  %i.wo = and i32 %i.wn, 1
  %.not26.i71.i = icmp eq i32 %i.wo, 0
  br i1 %.not26.i71.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 24 ; 2 uses
  store ptr %i.wp, ptr %i.wm, align 8, !tbaa !14
  %i.wq = load ptr, ptr %i.sf, align 8, !tbaa !14
  %i.wr = load i64, ptr %i.we, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wp, ptr align 1 %i.wq, i64 %i.wr, i1 false)
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  store ptr %i.wm, ptr %i.wa, align 8, !tbaa !12
  br label %setopt_long.exit

bb.hx:                                            ; preds = %bb.ge
  %i.ws = tail call zeroext i1 @Curl_ssl_supports(ptr noundef %0, i32 noundef 64) #10
  br i1 %i.ws, label %bb.hy, label %setopt_long.exit

bb.hy:                                            ; preds = %bb.hx
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 4 uses
  %i.wu = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.wv = load ptr, ptr %i.wt, align 8, !tbaa !12
  tail call void %i.wu(ptr noundef %i.wv) #10, !inline_history !140
  store ptr null, ptr %i.wt, align 8, !tbaa !12
  %.not.i74.i = icmp eq ptr %i.sf, null
  br i1 %.not.i74.i, label %Curl_setblobopt.exit82.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ww = load ptr, ptr %i.sf, align 8, !tbaa !14
  %.not22.i75.i = icmp eq ptr %i.ww, null
  br i1 %.not22.i75.i, label %Curl_setblobopt.exit82.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.wx = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !17 ; 2 uses
  %i.wz = add i64 %i.wy, -8000001
  %or.cond.i76.i = icmp ult i64 %i.wz, -8000000
  br i1 %or.cond.i76.i, label %Curl_setblobopt.exit82.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.xa = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !18
  %i.xd = and i32 %i.xc, 1
  %.not24.i77.i = icmp eq i32 %i.xd, 0
  %i.xe = add nuw nsw i64 %i.wy, 24
  %spec.select.i78.i = select i1 %.not24.i77.i, i64 24, i64 %i.xe
  %i.xf = tail call ptr %i.xa(i64 noundef %spec.select.i78.i) #10, !inline_history !140 ; 5 uses
  %.not25.i79.i = icmp eq ptr %i.xf, null
  br i1 %.not25.i79.i, label %.Curl_setblobopt.exit82_crit_edge.i, label %bb.ic

.Curl_setblobopt.exit82_crit_edge.i:              ; preds = %bb.ib
  %.pre.i = load ptr, ptr %i.wt, align 8, !tbaa !12
  %i.xg = icmp eq ptr %.pre.i, null
  %i.xh = select i1 %i.xg, i16 0, i16 1024
  br label %Curl_setblobopt.exit82.i

bb.ic:                                            ; preds = %bb.ib
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.sf, i64 24, i1 false), !tbaa.struct !19
  %i.xi = load i32, ptr %i.xb, align 8, !tbaa !18
  %i.xj = and i32 %i.xi, 1
  %.not26.i80.i = icmp eq i32 %i.xj, 0
  br i1 %.not26.i80.i, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 24 ; 2 uses
  store ptr %i.xk, ptr %i.xf, align 8, !tbaa !14
  %i.xl = load ptr, ptr %i.sf, align 8, !tbaa !14
  %i.xm = load i64, ptr %i.wx, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xk, ptr align 1 %i.xl, i64 %i.xm, i1 false)
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  store ptr %i.xf, ptr %i.wt, align 8, !tbaa !12
  br label %Curl_setblobopt.exit82.i

Curl_setblobopt.exit82.i:                         ; preds = %bb.ie, %.Curl_setblobopt.exit82_crit_edge.i, %bb.ia, %bb.hz, %bb.hy
  %.not.i38 = phi i16 [ %i.xh, %.Curl_setblobopt.exit82_crit_edge.i ], [ 0, %bb.hz ], [ 1024, %bb.ie ], [ 0, %bb.ia ], [ 0, %bb.hy ]
  %.1.i81.i = phi i32 [ 27, %.Curl_setblobopt.exit82_crit_edge.i ], [ 43, %bb.hz ], [ 0, %bb.ie ], [ 43, %bb.ia ], [ 0, %bb.hy ]
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.xo = load i16, ptr %i.xn, align 8
  %i.xp = and i16 %i.xo, -1025
  %i.xq = or disjoint i16 %i.xp, %.not.i38
  store i16 %i.xq, ptr %i.xn, align 8
  br label %setopt_long.exit

bb.if:                                            ; preds = %bb.ge
  %i.xr = tail call zeroext i1 @Curl_ssl_supports(ptr noundef %0, i32 noundef 16384) #10
  br i1 %i.xr, label %bb.ig, label %setopt_long.exit

bb.ig:                                            ; preds = %bb.if
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 3 uses
  %i.xt = load ptr, ptr @Curl_cfree, align 8, !tbaa !8
  %i.xu = load ptr, ptr %i.xs, align 8, !tbaa !12
  tail call void %i.xt(ptr noundef %i.xu) #10, !inline_history !140
  store ptr null, ptr %i.xs, align 8, !tbaa !12
  %.not.i83.i = icmp eq ptr %i.sf, null
  br i1 %.not.i83.i, label %setopt_long.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.xv = load ptr, ptr %i.sf, align 8, !tbaa !14
  %.not22.i84.i = icmp eq ptr %i.xv, null
  br i1 %.not22.i84.i, label %setopt_long.exit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.xw = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !17 ; 2 uses
  %i.xy = add i64 %i.xx, -8000001
  %or.cond.i85.i = icmp ult i64 %i.xy, -8000000
  br i1 %or.cond.i85.i, label %setopt_long.exit, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.xz = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !18
  %i.yc = and i32 %i.yb, 1
  %.not24.i86.i = icmp eq i32 %i.yc, 0
  %i.yd = add nuw nsw i64 %i.xx, 24
  %spec.select.i87.i = select i1 %.not24.i86.i, i64 24, i64 %i.yd
  %i.ye = tail call ptr %i.xz(i64 noundef %spec.select.i87.i) #10, !inline_history !140 ; 5 uses
  %.not25.i88.i = icmp eq ptr %i.ye, null
  br i1 %.not25.i88.i, label %setopt_long.exit, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ye, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.sf, i64 24, i1 false), !tbaa.struct !19
  %i.yf = load i32, ptr %i.ya, align 8, !tbaa !18
  %i.yg = and i32 %i.yf, 1
  %.not26.i89.i = icmp eq i32 %i.yg, 0
  br i1 %.not26.i89.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 24 ; 2 uses
  store ptr %i.yh, ptr %i.ye, align 8, !tbaa !14
  %i.yi = load ptr, ptr %i.sf, align 8, !tbaa !14
  %i.yj = load i64, ptr %i.xw, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yh, ptr align 1 %i.yi, i64 %i.yj, i1 false)
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  store ptr %i.ye, ptr %i.xs, align 8, !tbaa !12
  br label %setopt_long.exit

setopt_long.exit:                                 ; preds = %bb.im, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %Curl_setblobopt.exit82.i, %bb.hx, %bb.hw, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %Curl_setblobopt.exit55.i, %bb.ha, %bb.gz, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fm, %bb.fl, %bb.fk, %bb.ff, %bb.fb, %bb.ex, %bb.et, %bb.ep, %bb.el, %bb.eh, %bb.ed, %bb.dz, %bb.dv, %bb.dr, %bb.dn, %bb.dj, %bb.df, %bb.de, %bb.da, %bb.cw, %bb.cv, %bb.cq, %bb.cm, %bb.ci, %bb.ce, %bb.cd, %bb.by, %bb.bx, %bb.bs, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bf, %bb.be, %bb.ba, %bb.az, %bb.ax, %bb.as, %bb.ao, %bb.ak, %.sink.split.i, %bb.aa, %bb.u, %bb.t, %setopt_long_proxy.exit.i, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %.thread.i.i.i, %bb.n, %bb.l, %bb.i, %bb.g, %bb.f, %bb.e, %bb.bq
  %.0 = phi i32 [ 0, %bb.fl ], [ %i.fg, %bb.bq ], [ 4, %bb.r ], [ 0, %.sink.split.i ], [ %i.eq, %bb.bj ], [ 0, %bb.cm ], [ %i.n, %bb.e ], [ %i.al, %bb.t ], [ %i.o, %bb.f ], [ %i.am, %bb.u ], [ %i.p, %bb.g ], [ %i.ak, %setopt_long_proxy.exit.i ], [ 4, %bb.n ], [ 0, %.thread.i.i.i ], [ 0, %bb.q ], [ 0, %bb.s ], [ 43, %bb.o ], [ 43, %bb.i ], [ 0, %bb.l ], [ 4, %bb.p ], [ 48, %bb.aa ], [ %i.dh, %bb.az ], [ 48, %bb.ak ], [ 0, %bb.ao ], [ 0, %bb.as ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 27, %bb.ax ], [ 0, %bb.ba ], [ 0, %bb.bk ], [ %i.et, %bb.bm ], [ 0, %bb.bl ], [ 4, %bb.df ], [ 48, %bb.bs ], [ 0, %bb.ci ], [ 0, %bb.cv ], [ 0, %bb.cw ], [ 0, %bb.cq ], [ 0, %bb.cd ], [ 0, %bb.ce ], [ 0, %bb.bx ], [ 0, %bb.by ], [ 0, %bb.ff ], [ 0, %bb.fb ], [ 0, %bb.ex ], [ 0, %bb.et ], [ 0, %bb.ep ], [ 0, %bb.el ], [ 0, %bb.eh ], [ 0, %bb.ed ], [ 0, %bb.dz ], [ 0, %bb.dv ], [ 0, %bb.dr ], [ 0, %bb.dn ], [ 0, %bb.dj ], [ 0, %bb.de ], [ 0, %bb.da ], [ 43, %bb.fz ], [ 48, %bb.fk ], [ 43, %bb.fx ], [ 43, %bb.fm ], [ 43, %bb.fr ], [ 43, %bb.ft ], [ 43, %bb.fv ], [ 0, %bb.ga ], [ 0, %bb.fy ], [ 0, %bb.fw ], [ 0, %bb.fu ], [ 0, %bb.fs ], [ 0, %bb.fq ], [ 4, %bb.if ], [ 48, %bb.ge ], [ 0, %bb.gf ], [ 0, %bb.gm ], [ %.1.i54.i, %Curl_setblobopt.exit55.i ], [ 4, %bb.hx ], [ 0, %bb.gt ], [ 4, %bb.ha ], [ 0, %bb.hj ], [ %.1.i81.i, %Curl_setblobopt.exit82.i ], [ 4, %bb.hi ], [ 0, %bb.hq ], [ 27, %bb.gi ], [ 43, %bb.gg ], [ 0, %bb.gl ], [ 43, %bb.gh ], [ 27, %bb.gp ], [ 43, %bb.gn ], [ 0, %bb.gs ], [ 43, %bb.go ], [ 27, %bb.gw ], [ 43, %bb.gu ], [ 0, %bb.gz ], [ 43, %bb.gv ], [ 27, %bb.hm ], [ 43, %bb.hk ], [ 0, %bb.hp ], [ 43, %bb.hl ], [ 27, %bb.ht ], [ 43, %bb.hr ], [ 0, %bb.hw ], [ 43, %bb.hs ], [ 27, %bb.ij ], [ 43, %bb.ih ], [ 0, %bb.im ], [ 43, %bb.ii ], [ 0, %bb.ig ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @setopt_cptr(ptr noundef %0, i32 noundef range(i32 10000, 20000) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @setopt_cptr_proxy(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10 ; 2 uses
  %.not = icmp eq i32 %i.a, 48
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @setopt_cptr_ssl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10 ; 2 uses
  %.not.1 = icmp eq i32 %i.b, 48
  br i1 %.not.1, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @setopt_cptr_ftp(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10 ; 2 uses
  %.not.2 = icmp eq i32 %i.c, 48
  br i1 %.not.2, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc i32 @setopt_cptr_http_mqtt(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10 ; 2 uses
  %.not.3 = icmp eq i32 %i.d, 48
  br i1 %.not.3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call fastcc i32 @setopt_cptr_net(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10 ; 2 uses
  %.not.4 = icmp eq i32 %i.e, 48
  br i1 %.not.4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = tail call fastcc i32 @setopt_cptr_misc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.2 = phi i32 [ %i.a, %bb.a ], [ %i.d, %bb.d ], [ %i.b, %bb.b ], [ %i.f, %bb.f ], [ %i.c, %bb.c ], [ %i.e, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @curl_easy_setopt(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @Curl_vsetopt(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2) ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = icmp eq i32 %i.a, 43
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %1) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 43, %bb.a ], [ 43, %bb.c ], [ %i.a, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 49) i32 @setopt_long_bool(ptr noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %2, 0                        ; 57 uses
  switch i32 %1, label %.thread [
    i32 75, label %bb.b
    i32 74, label %bb.c
    i32 41, label %bb.d
    i32 42, label %bb.e
    i32 43, label %bb.f
    i32 44, label %bb.g
    i32 45, label %bb.k
    i32 245, label %bb.l
    i32 46, label %bb.m
    i32 54, label %bb.m
    i32 69, label %bb.p
    i32 285, label %bb.q
    i32 96, label %bb.r
    i32 58, label %bb.s
    i32 207, label %bb.t
    i32 105, label %bb.u
    i32 157, label %bb.v
    i32 158, label %bb.w
    i32 80, label %bb.x
    i32 47, label %bb.z
    i32 61, label %bb.ac
    i32 274, label %bb.ad
    i32 248, label %bb.ae
    i32 249, label %bb.af
    i32 166, label %bb.ag
    i32 48, label %bb.ah
    i32 50, label %bb.ai
    i32 106, label %bb.aj
    i32 85, label %bb.ak
    i32 188, label %bb.al
    i32 137, label %bb.am
    i32 197, label %bb.an
    i32 27, label %bb.ao
    i32 242, label %bb.ap
    i32 53, label %bb.aq
    i32 64, label %bb.ar
    i32 306, label %bb.as
    i32 307, label %bb.at
    i32 308, label %bb.au
    i32 81, label %bb.aw
    i32 232, label %bb.ax
    i32 172, label %bb.az
    i32 99, label %bb.bb
    i32 121, label %bb.bc
    i32 136, label %bb.bd
    i32 150, label %bb.be
    i32 290, label %bb.bf
    i32 218, label %bb.bg
    i32 213, label %bb.bh
    i32 244, label %bb.bi
    i32 226, label %bb.bj
    i32 234, label %bb.bk
    i32 237, label %bb.bl
    i32 265, label %bb.bm
    i32 275, label %bb.bn
    i32 278, label %bb.bo
    i32 322, label %bb.bp
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.c = load i64, ptr %i.b, align 1
  %i.d = select i1 %i.a, i64 1073741824, i64 0
  %i.e = and i64 %i.c, -1073741825
  %i.f = or disjoint i64 %i.e, %i.d
  store i64 %i.f, ptr %i.b, align 1
  br label %bb.bq

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.h = load i64, ptr %i.g, align 1
  %i.i = select i1 %i.a, i64 2147483648, i64 0
  %i.j = and i64 %i.h, -2147483649
  %i.k = or disjoint i64 %i.j, %i.i
  store i64 %i.k, ptr %i.g, align 1
  br label %bb.bq

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.m = load i64, ptr %i.l, align 1
  %i.n = select i1 %i.a, i64 536870912, i64 0
  %i.o = and i64 %i.m, -536870913
  %i.p = or disjoint i64 %i.o, %i.n
  store i64 %i.p, ptr %i.l, align 1
  br label %bb.bq

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.r = load i64, ptr %i.q, align 1
  %i.s = select i1 %i.a, i64 33554432, i64 0
  %i.t = and i64 %i.r, -33554433
  %i.u = or disjoint i64 %i.t, %i.s
  store i64 %i.u, ptr %i.q, align 1
  br label %bb.bq

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2780 ; 2 uses
  %i.w = zext i1 %i.a to i8
  %i.x = load i8, ptr %i.v, align 4
  %i.y = and i8 %i.x, -2
  %i.z = or disjoint i8 %i.y, %i.w
  store i8 %i.z, ptr %i.v, align 4
  br label %bb.bq

bb.g:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = select i1 %i.a, i64 268435456, i64 0
  %i.ad = and i64 %i.ab, -268435457
  %i.ae = or disjoint i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %i.aa, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2182 ; 3 uses
  br i1 %i.a, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
end_hunk_1
