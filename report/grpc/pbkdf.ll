Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/pbkdf?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.bssl::internal::StackAllocated" = type { %struct.hmac_ctx_st }
%struct.hmac_ctx_st = type { ptr, %struct.env_md_ctx_st, %struct.env_md_ctx_st, %struct.env_md_ctx_st }
%struct.env_md_ctx_st = type { ptr, ptr, ptr, ptr }

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @PKCS5_PBKDF2_HMAC(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.bssl::internal::StackAllocated", align 8 ; 24 uses
  %i.a = alloca [4 x i8], align 4                 ; 18 uses
  %i.b = alloca [64 x i8], align 16               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @HMAC_CTX_init(ptr noundef nonnull align 8 dereferenceable(104) %8) #4
  %i.c = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef %0, i64 noundef %1, ptr noundef %5, ptr noundef null) #4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i64 @EVP_MD_size(ptr noundef %5) #4
  %.fr87 = freeze i64 %i.d                        ; 4 uses
  %.not4864 = icmp eq i64 %6, 0
  br i1 %.not4864, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 3 uses
  %i.e = icmp eq i64 %.fr87, 0                    ; 2 uses
  %.not5661 = icmp ugt i32 %4, 1
  br i1 %.not5661, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %..critedge_crit_edge.us
  %.03868.us = phi i32 [ %i.al, %..critedge_crit_edge.us ], [ 1, %.lr.ph ] ; 5 uses
  %.04166.us = phi ptr [ %i.ak, %..critedge_crit_edge.us ], [ %7, %.lr.ph ] ; 5 uses
  %.04365.us = phi i64 [ %i.aj, %..critedge_crit_edge.us ], [ %6, %.lr.ph ] ; 2 uses
  %spec.select.us = call i64 @llvm.umin.i64(i64 %.fr87, i64 %.04365.us) ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %12 = lshr i32 %.03868.us, 24
  %13 = trunc nuw i32 %12 to i8
  store i8 %13, ptr %i.a, align 4, !tbaa !16
  %14 = lshr i32 %.03868.us, 16
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %9, align 1, !tbaa !16
  %16 = lshr i32 %.03868.us, 8
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %10, align 2, !tbaa !16
  %18 = trunc i32 %.03868.us to i8
  store i8 %18, ptr %11, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.f = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null) #4
  %.not49.us = icmp eq i32 %i.f, 0
  br i1 %.not49.us, label %.critedge58, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.g = call i32 @HMAC_Update(ptr noundef nonnull %8, ptr noundef %2, i64 noundef %3) #4
  %.not50.us = icmp eq i32 %i.g, 0
  br i1 %.not50.us, label %.critedge58, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @HMAC_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef 4) #4
  %.not51.us = icmp eq i32 %i.h, 0
  br i1 %.not51.us, label %.critedge58, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 @HMAC_Final(ptr noundef nonnull %8, ptr noundef nonnull %i.b, ptr noundef null) #4
  %.not52.us = icmp eq i32 %i.i, 0
  br i1 %.not52.us, label %.critedge58, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %.lr.ph63.split.us69, label %.lr.ph63.split.us.us.preheader

.lr.ph63.split.us.us.preheader:                   ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04166.us, ptr nonnull readonly align 16 %i.b, i64 %spec.select.us, i1 false)
  %min.iters.check = icmp ult i64 %spec.select.us, 4
  %min.iters.check120 = icmp ult i64 %spec.select.us, 32
  %i.j = and i64 %spec.select.us, 28
  %n.vec = and i64 %spec.select.us, -32           ; 4 uses
  %cmp.n = icmp eq i64 %spec.select.us, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  %n.vec124 = and i64 %spec.select.us, -4         ; 3 uses
  %cmp.n129 = icmp eq i64 %spec.select.us, %n.vec124
  br label %.lr.ph63.split.us.us

.lr.ph63.split.us69:                              ; preds = %bb.f, %.preheader.us74
  %.03662.us70 = phi i32 [ %i.n, %.preheader.us74 ], [ 1, %bb.f ]
  %i.k = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null) #4
  %.not53.us71 = icmp eq i32 %i.k, 0
  br i1 %.not53.us71, label %.critedge58, label %bb.g

bb.g:                                             ; preds = %.lr.ph63.split.us69
  %i.l = call i32 @HMAC_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.b, i64 noundef 0) #4
  %.not54.us72 = icmp eq i32 %i.l, 0
  br i1 %.not54.us72, label %.critedge58, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = call i32 @HMAC_Final(ptr noundef nonnull %8, ptr noundef nonnull %i.b, ptr noundef null) #4
  %.not55.us73 = icmp eq i32 %i.m, 0
  br i1 %.not55.us73, label %.critedge58, label %.preheader.us74

.preheader.us74:                                  ; preds = %bb.h
  %i.n = add nuw i32 %.03662.us70, 1              ; 2 uses
  %exitcond97.not = icmp eq i32 %i.n, %4
  br i1 %exitcond97.not, label %..critedge_crit_edge.us, label %.lr.ph63.split.us69, !llvm.loop !11

.lr.ph63.split.us.us:                             ; preds = %.lr.ph63.split.us.us.preheader, %._crit_edge.us.us
  %.03662.us.us = phi i32 [ %i.ai, %._crit_edge.us.us ], [ 1, %.lr.ph63.split.us.us.preheader ]
  %i.o = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null) #4
  %.not53.us.us = icmp eq i32 %i.o, 0
  br i1 %.not53.us.us, label %.critedge58, label %bb.i

bb.i:                                             ; preds = %.lr.ph63.split.us.us
  %i.p = call i32 @HMAC_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.b, i64 noundef %.fr87) #4
  %.not54.us.us = icmp eq i32 %i.p, 0
  br i1 %.not54.us.us, label %.critedge58, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = call i32 @HMAC_Final(ptr noundef nonnull %8, ptr noundef nonnull %i.b, ptr noundef null) #4
  %.not55.us.us = icmp eq i32 %i.q, 0
  br i1 %.not55.us.us, label %.critedge58, label %iter.check

iter.check:                                       ; preds = %bb.j
  br i1 %min.iters.check, label %.preheader.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 16, !tbaa !16
  %wide.load121 = load <16 x i8>, ptr %i.s, align 16, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %.04166.us, i64 %index ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load122 = load <16 x i8>, ptr %i.t, align 1, !tbaa !16
  %wide.load123 = load <16 x i8>, ptr %i.u, align 1, !tbaa !16
  %i.v = xor <16 x i8> %wide.load122, %wide.load
  %i.w = xor <16 x i8> %wide.load123, %wide.load121
  store <16 x i8> %i.v, ptr %i.t, align 1, !tbaa !16
  store <16 x i8> %i.w, ptr %i.u, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader.us.us.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %index125
  %wide.load126 = load <4 x i8>, ptr %i.y, align 4, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %.04166.us, i64 %index125 ; 2 uses
  %wide.load127 = load <4 x i8>, ptr %i.z, align 1, !tbaa !16
  %i.aa = xor <4 x i8> %wide.load127, %wide.load126
  store <4 x i8> %i.aa, ptr %i.z, align 1, !tbaa !16
  %index.next128 = add nuw i64 %index125, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n129, label %._crit_edge.us.us, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.060.us.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec124, %vec.epilog.middle.block ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %.preheader.us.us
  %.060.us.us = phi i64 [ %i.ah, %.preheader.us.us ], [ %.060.us.us.ph, %.preheader.us.us.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %.060.us.us
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %.04166.us, i64 %.060.us.us ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = xor i8 %i.af, %i.ad
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !16
  %i.ah = add nuw nsw i64 %.060.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %spec.select.us
  br i1 %exitcond.not, label %._crit_edge.us.us, label %.preheader.us.us, !llvm.loop !14

._crit_edge.us.us:                                ; preds = %.preheader.us.us, %vec.epilog.middle.block, %middle.block
  %i.ai = add nuw i32 %.03662.us.us, 1            ; 2 uses
  %exitcond96.not = icmp eq i32 %i.ai, %4
  br i1 %exitcond96.not, label %..critedge_crit_edge.us, label %.lr.ph63.split.us.us, !llvm.loop !11

..critedge_crit_edge.us:                          ; preds = %._crit_edge.us.us, %.preheader.us74
  %i.aj = sub i64 %.04365.us, %spec.select.us     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.04166.us, i64 %spec.select.us
  %i.al = add i32 %.03868.us, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not48.us = icmp eq i64 %i.aj, 0
  br i1 %.not48.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !15

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.e, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.am = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null) #4
  %.not49.us81115 = icmp eq i32 %i.am, 0
  br i1 %.not49.us81115, label %.critedge58, label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph.split.split.us.preheader, %_ZL14OPENSSL_memcpyPvPKvm.exit.us85
  %.03868.us77116 = phi i32 [ %i.aq, %_ZL14OPENSSL_memcpyPvPKvm.exit.us85 ], [ 1, %.lr.ph.split.split.us.preheader ]
  %i.an = call i32 @HMAC_Update(ptr noundef nonnull %8, ptr noundef %2, i64 noundef %3) #4
  %.not50.us82 = icmp eq i32 %i.an, 0
  br i1 %.not50.us82, label %.critedge58, label %bb.k

bb.k:                                             ; preds = %.lr.ph117
  %i.ao = call i32 @HMAC_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef 4) #4
  %.not51.us83 = icmp eq i32 %i.ao, 0
  br i1 %.not51.us83, label %.critedge58, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = call i32 @HMAC_Final(ptr noundef nonnull %8, ptr noundef nonnull %i.b, ptr noundef null) #4
  %.not52.us84 = icmp eq i32 %i.ap, 0
  br i1 %.not52.us84, label %.critedge58, label %_ZL14OPENSSL_memcpyPvPKvm.exit.us85

_ZL14OPENSSL_memcpyPvPKvm.exit.us85:              ; preds = %bb.l
  %i.aq = add i32 %.03868.us77116, 1              ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %19 = lshr i32 %i.aq, 24
  %20 = trunc nuw i32 %19 to i8
  store i8 %20, ptr %i.a, align 4, !tbaa !16
  %21 = lshr i32 %i.aq, 16
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %9, align 1, !tbaa !16
  %23 = lshr i32 %i.aq, 8
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %10, align 2, !tbaa !16
  %25 = trunc i32 %i.aq to i8
  store i8 %25, ptr %11, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.ar = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null) #4
  %.not49.us81 = icmp eq i32 %i.ar, 0
  br i1 %.not49.us81, label %.critedge58, label %.lr.ph117

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %.03868 = phi i32 [ %i.ay, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ 1, %.lr.ph.split ] ; 5 uses
  %.04166 = phi ptr [ %i.ax, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %7, %.lr.ph.split ] ; 2 uses
  %.04365 = phi i64 [ %i.aw, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %6, %.lr.ph.split ] ; 2 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %.fr87, i64 %.04365) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %26 = lshr i32 %.03868, 24
  %27 = trunc nuw i32 %26 to i8
  store i8 %27, ptr %i.a, align 4, !tbaa !16
  %28 = lshr i32 %.03868, 16
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr %9, align 1, !tbaa !16
  %30 = lshr i32 %.03868, 8
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %10, align 2, !tbaa !16
  %32 = trunc i32 %.03868 to i8
  store i8 %32, ptr %11, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.as = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null) #4
  %.not49 = icmp eq i32 %i.as, 0
  br i1 %.not49, label %.critedge58, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split
  %i.at = call i32 @HMAC_Update(ptr noundef nonnull %8, ptr noundef %2, i64 noundef %3) #4
  %.not50 = icmp eq i32 %i.at, 0
  br i1 %.not50, label %.critedge58, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = call i32 @HMAC_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef 4) #4
  %.not51 = icmp eq i32 %i.au, 0
  br i1 %.not51, label %.critedge58, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = call i32 @HMAC_Final(ptr noundef nonnull %8, ptr noundef nonnull %i.b, ptr noundef null) #4
  %.not52 = icmp eq i32 %i.av, 0
  br i1 %.not52, label %.critedge58, label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04166, ptr nonnull readonly align 16 %i.b, i64 %spec.select, i1 false)
  %i.aw = sub i64 %.04365, %spec.select           ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04166, i64 %spec.select
  %i.ay = add i32 %.03868, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not48 = icmp eq i64 %i.aw, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !15

._crit_edge:                                      ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %..critedge_crit_edge.us, %bb.b
  %i.az = icmp ne i32 %4, 0
  %. = zext i1 %i.az to i32
  br label %bb.p

.critedge58:                                      ; preds = %.lr.ph.split.split, %bb.m, %bb.n, %bb.o, %bb.l, %bb.k, %.lr.ph117, %_ZL14OPENSSL_memcpyPvPKvm.exit.us85, %bb.e, %bb.d, %bb.c, %.lr.ph.split.us, %.lr.ph63.split.us.us, %bb.i, %bb.j, %.lr.ph63.split.us69, %bb.g, %bb.h, %.lr.ph.split.split.us.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.p

bb.p:                                             ; preds = %.critedge58, %._crit_edge, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %.critedge58 ], [ %., %._crit_edge ]
  call void @HMAC_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(104) %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @HMAC_Init_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @EVP_MD_size(ptr noundef) local_unnamed_addr #2

declare i32 @HMAC_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @HMAC_Final(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @PKCS5_PBKDF2_HMAC_SHA1(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @EVP_sha1() #4
  %i.b = tail call i32 @PKCS5_PBKDF2_HMAC(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %i.a, i64 noundef %5, ptr noundef %6)
  ret i32 %i.b
}

declare ptr @EVP_sha1() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @HMAC_CTX_init(ptr noundef) local_unnamed_addr #2

declare void @HMAC_CTX_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{!11, !17}
!12 = distinct !{!12, !17, !18, !19}
!13 = distinct !{!13, !17, !18, !19}
!14 = distinct !{!14, !17, !19, !18}
!15 = distinct !{!15, !17}
!16 = !{!7, !7, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"branch_weights", i32 4, i32 28}
end_hunk_0
