inline.NumInlined: 77
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisReplyObjectFunctions = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hiredisAllocFuncs = type { ptr, ptr, ptr, ptr, ptr }
%struct.redisContextFuncs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.redisOptions = type { i32, i32, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, i32 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"%\00", align 1
@redisvFormatCommand.intfmts = internal constant [7 x i8] c"diouxX\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"eEfFgGaA\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"*%d\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"$%zu\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"pos == totlen\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"hiredis.c\00", align 1
@__PRETTY_FUNCTION__.redisvFormatCommand = private unnamed_addr constant [71 x i8] c"int redisvFormatCommand(char **, const char *, struct __va_list_tag *)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"*%i\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"$%U\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"hi_sdslen(cmd)==totlen\00", align 1
@__PRETTY_FUNCTION__.redisFormatSdsCommandArgv = private unnamed_addr constant [81 x i8] c"long long redisFormatSdsCommandArgv(hisds *, int, const char **, const size_t *)\00", align 1
@__PRETTY_FUNCTION__.redisFormatCommandArgv = private unnamed_addr constant [78 x i8] c"long long redisFormatCommandArgv(char **, int, const char **, const size_t *)\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"type == REDIS_ERR_IO\00", align 1
@__PRETTY_FUNCTION__.__redisSetError = private unnamed_addr constant [56 x i8] c"void __redisSetError(redisContext *, int, const char *)\00", align 1
@defaultFunctions = internal global %struct.redisReplyObjectFunctions { ptr @createStringObject, ptr @createArrayObject, ptr @createIntegerObject, ptr @createDoubleObject, ptr @createNilObject, ptr @createBoolObject, ptr @freeReplyObject }, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Not enough information to reconnect\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Invalid format string\00", align 1
@hiredisAllocFns = external local_unnamed_addr global %struct.hiredisAllocFuncs, align 8
@.str.14 = private unnamed_addr constant [174 x i8] c"task->type == REDIS_REPLY_ERROR || task->type == REDIS_REPLY_STATUS || task->type == REDIS_REPLY_STRING || task->type == REDIS_REPLY_VERB || task->type == REDIS_REPLY_BIGNUM\00", align 1
@__PRETTY_FUNCTION__.createStringObject = private unnamed_addr constant [64 x i8] c"void *createStringObject(const redisReadTask *, char *, size_t)\00", align 1
@.str.15 = private unnamed_addr constant [140 x i8] c"parent->type == REDIS_REPLY_ARRAY || parent->type == REDIS_REPLY_MAP || parent->type == REDIS_REPLY_SET || parent->type == REDIS_REPLY_PUSH\00", align 1
@__PRETTY_FUNCTION__.createArrayObject = private unnamed_addr constant [55 x i8] c"void *createArrayObject(const redisReadTask *, size_t)\00", align 1
@__PRETTY_FUNCTION__.createIntegerObject = private unnamed_addr constant [60 x i8] c"void *createIntegerObject(const redisReadTask *, long long)\00", align 1
@__PRETTY_FUNCTION__.createDoubleObject = private unnamed_addr constant [72 x i8] c"void *createDoubleObject(const redisReadTask *, double, char *, size_t)\00", align 1
@__PRETTY_FUNCTION__.createNilObject = private unnamed_addr constant [45 x i8] c"void *createNilObject(const redisReadTask *)\00", align 1
@__PRETTY_FUNCTION__.createBoolObject = private unnamed_addr constant [51 x i8] c"void *createBoolObject(const redisReadTask *, int)\00", align 1
@redisContextDefaultFuncs = internal global %struct.redisContextFuncs { ptr @redisNetClose, ptr null, ptr @redisAsyncRead, ptr @redisAsyncWrite, ptr @redisNetRead, ptr @redisNetWrite }, align 8

; Function Attrs: nounwind uwtable
define void @freeReplyObject(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !10
  switch i32 %i.b, label %bb.e [
    i32 13, label %bb.d
    i32 14, label %bb.d
    i32 7, label %bb.d
    i32 2, label %bb.c
    i32 9, label %bb.c
    i32 10, label %bb.c
    i32 12, label %bb.c
    i32 6, label %bb.d
    i32 5, label %bb.d
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %.not13 = icmp eq i64 %i.f, 0
  br i1 %.not13, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.012 = phi i64 [ %i.j, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.012
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void @freeReplyObject(ptr noundef %i.i)
  %i.j = add nuw i64 %.012, 1                     ; 2 uses
  %i.k = load i64, ptr %i.e, align 8, !tbaa !20
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !19
  br label %.sink.split

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  br label %.sink.split

.sink.split:                                      ; preds = %.preheader, %._crit_edge.loopexit, %bb.d
  %.sink = phi ptr [ %i.n, %bb.d ], [ %.pre, %._crit_edge.loopexit ], [ %i.d, %.preheader ]
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !24
  tail call void %i.o(ptr noundef %.sink) #13
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !24
  tail call void %i.p(ptr noundef nonnull %0) #13, !inline_history !26
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @redisvFormatCommand(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 7 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.de, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @hi_sdsempty() #13         ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.de, label %.preheader300

.preheader300:                                    ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader300, %.thread276
  %.0185 = phi ptr [ %i.fk, %.thread276 ], [ %1, %.preheader300 ] ; 14 uses
  %.0176 = phi ptr [ %.2178, %.thread276 ], [ %i.c, %.preheader300 ] ; 21 uses
  %.0169 = phi i32 [ %.2171, %.thread276 ], [ 0, %.preheader300 ] ; 2 uses
  %.0164 = phi ptr [ %.1165, %.thread276 ], [ null, %.preheader300 ] ; 11 uses
  %.0159 = phi i32 [ %.1160, %.thread276 ], [ 0, %.preheader300 ] ; 14 uses
  %.0156 = phi i32 [ %.1157, %.thread276 ], [ 0, %.preheader300 ] ; 6 uses
  %i.h = load i8, ptr %.0185, align 1, !tbaa !27
  switch i8 %i.h, label %.thread [
    i8 0, label %bb.bq
    i8 37, label %bb.d
    i8 32, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.0185, i64 1 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !27
  switch i8 %i.j, label %.lr.ph.preheader [
    i8 0, label %.thread
    i8 115, label %bb.t
    i8 98, label %bb.y
    i8 37, label %bb.ae
  ]

bb.e:                                             ; preds = %bb.c
  %.not251 = icmp eq i32 %.0169, 0
  br i1 %.not251, label %.thread276, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %.0159, 1                    ; 3 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 16), align 8, !tbaa !28
  %i.o = call ptr %i.n(ptr noundef %.0164, i64 noundef range(i64 -17179869176, 17179869177) %i.m) #13, !inline_history !29 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = sext i32 %.0159 to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.q
  store ptr %.0176, ptr %i.r, align 8, !tbaa !30
  %i.s = getelementptr inbounds i8, ptr %.0176, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !27
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = and i32 %i.u, 7
  switch i32 %i.v, label %bulklen.exit [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = lshr i32 %i.u, 3
  %i.x = zext nneg i32 %i.w to i64
  br label %hi_sdslen.exit

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds i8, ptr %.0176, i64 -3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !27
  %i.aa = zext i8 %i.z to i64
  br label %hi_sdslen.exit

bb.j:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %.0176, i64 -5
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !31
  %i.ad = zext i16 %i.ac to i64
  br label %hi_sdslen.exit

bb.k:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %.0176, i64 -9
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !6
  %i.ag = zext i32 %i.af to i64
  br label %hi_sdslen.exit

bb.l:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds i8, ptr %.0176, i64 -17
  %i.ai = load i64, ptr %i.ah, align 1, !tbaa !33
  br label %hi_sdslen.exit

hi_sdslen.exit:                                   ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i64 [ %i.ai, %bb.l ], [ %i.x, %bb.h ], [ %i.aa, %bb.i ], [ %i.ad, %bb.j ], [ %i.ag, %bb.k ] ; 7 uses
  %i.aj = icmp ult i64 %.0.i, 10
  br i1 %i.aj, label %bulklen.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %hi_sdslen.exit, %bb.r
  %.017.i.i = phi i32 [ %i.ar, %bb.r ], [ 1, %hi_sdslen.exit ] ; 4 uses
  %.01116.i.i = phi i64 [ %i.aq, %bb.r ], [ %.0.i, %hi_sdslen.exit ] ; 5 uses
  %i.ak = icmp ult i64 %.01116.i.i, 100
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.al = add i32 %.017.i.i, 1
  br label %bulklen.exit

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.am = icmp ult i64 %.01116.i.i, 1000
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = add i32 %.017.i.i, 2
  br label %bulklen.exit

bb.p:                                             ; preds = %bb.n
  %i.ao = icmp ult i64 %.01116.i.i, 10000
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = add i32 %.017.i.i, 3
  br label %bulklen.exit

bb.r:                                             ; preds = %bb.p
  %i.aq = udiv i64 %.01116.i.i, 10000
  %i.ar = add i32 %.017.i.i, 4                    ; 2 uses
  %i.as = icmp ult i64 %.01116.i.i, 100000
  br i1 %i.as, label %bulklen.exit, label %.lr.ph.i.i

bulklen.exit:                                     ; preds = %bb.r, %bb.g, %hi_sdslen.exit, %bb.m, %bb.o, %bb.q
  %.0.i268 = phi i64 [ %.0.i, %bb.q ], [ %.0.i, %bb.m ], [ %.0.i, %bb.o ], [ %.0.i, %hi_sdslen.exit ], [ 0, %bb.g ], [ %.0.i, %bb.r ]
  %.012.i.i = phi i32 [ %i.ap, %bb.q ], [ %i.al, %bb.m ], [ %i.an, %bb.o ], [ 1, %hi_sdslen.exit ], [ 1, %bb.g ], [ %i.ar, %bb.r ]
  %i.at = call ptr @hi_sdsempty() #13             ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bulklen.exit
  %i.av = trunc i64 %.0.i268 to i32
  %i.aw = add i32 %.0156, 5
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = add i32 %i.ax, %.012.i.i
  br label %.thread276

.thread:                                          ; preds = %bb.c, %bb.d
  %i.az = call ptr @hi_sdscatlen(ptr noundef %.0176, ptr noundef nonnull %.0185, i64 noundef 1) #13 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.loopexit, label %.thread276

bb.t:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %2, align 8               ; 3 uses
  %i.bc = icmp ult i32 %i.bb, 41
  br i1 %i.bc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bd = load ptr, ptr %i.f, align 8
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr i8, ptr %i.bd, i64 %i.be
  %i.bg = add nuw nsw i32 %i.bb, 8
  store i32 %i.bg, ptr %2, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  store ptr %i.bi, ptr %i.e, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bj = phi ptr [ %i.bf, %bb.u ], [ %i.bh, %bb.v ]
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !30 ; 2 uses
  %i.bl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #14 ; 2 uses
  %.not227 = icmp eq i64 %i.bl, 0
  br i1 %.not227, label %bb.bo, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = call ptr @hi_sdscatlen(ptr noundef %.0176, ptr noundef nonnull %i.bk, i64 noundef %i.bl) #13
  br label %bb.bo

bb.y:                                             ; preds = %bb.d
  %i.bn = load i32, ptr %2, align 8               ; 5 uses
  %i.bo = icmp ult i32 %i.bn, 41
  br i1 %i.bo, label %bb.z, label %.thread417

.thread417:                                       ; preds = %bb.y
  %i.bp = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.e, align 8
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !30
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bs = load ptr, ptr %i.f, align 8
  %i.bt = zext nneg i32 %i.bn to i64
  %i.bu = getelementptr i8, ptr %i.bs, i64 %i.bt
  %i.bv = add nuw nsw i32 %i.bn, 8                ; 2 uses
  store i32 %i.bv, ptr %2, align 8
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !30 ; 2 uses
  %i.bx = icmp ult i32 %i.bn, 33
  br i1 %i.bx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.by = load ptr, ptr %i.f, align 8
  %i.bz = zext nneg i32 %i.bv to i64
  %i.ca = getelementptr i8, ptr %i.by, i64 %i.bz
  %i.cb = add nuw nsw i32 %i.bn, 16
  store i32 %i.cb, ptr %2, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %.thread417, %bb.z
  %i.cc = phi ptr [ %i.br, %.thread417 ], [ %i.bw, %bb.z ]
  %i.cd = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  store ptr %i.ce, ptr %i.e, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cf = phi ptr [ %i.bw, %bb.aa ], [ %i.cc, %bb.ab ]
  %i.cg = phi ptr [ %i.ca, %bb.aa ], [ %i.cd, %bb.ab ]
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !33 ; 2 uses
  %.not226 = icmp eq i64 %i.ch, 0
  br i1 %.not226, label %bb.bo, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = call ptr @hi_sdscatlen(ptr noundef %.0176, ptr noundef %i.cf, i64 noundef %i.ch) #13
  br label %bb.bo

bb.ae:                                            ; preds = %bb.d
  %i.cj = call ptr @hi_sdscat(ptr noundef %.0176, ptr noundef nonnull @.str) #13
  br label %bb.bo

.lr.ph.preheader:                                 ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %4 = load i8, ptr %i.i, align 1, !tbaa !27      ; 2 uses
  %.not228333 = icmp eq i8 %4, 0
  br i1 %.not228333, label %.critedge4, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.af
  %i.ck = phi i8 [ %i.cp, %bb.af ], [ %4, %.lr.ph.preheader ] ; 3 uses
  %.0334 = phi ptr [ %i.co, %bb.af ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.cl = zext nneg i8 %i.ck to i64
  %memchr.bounds = icmp ugt i8 %i.ck, 63
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = and i64 %i.cm, 325494096527361
  %memchr.bits = icmp eq i64 %i.cn, 0
  %memchr229.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr229.not, label %.lr.ph339, label %bb.af

bb.af:                                            ; preds = %.lr.ph
  %i.co = getelementptr inbounds nuw i8, ptr %.0334, i64 1 ; 3 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !27  ; 2 uses
  %.not228 = icmp eq i8 %i.cp, 0
  br i1 %.not228, label %.critedge4, label %.lr.ph

.lr.ph339:                                        ; preds = %.lr.ph
  %i.cq = tail call ptr @__ctype_b_loc() #15
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph339, %bb.ah
  %i.cs = phi i8 [ %i.ck, %.lr.ph339 ], [ %i.cy, %bb.ah ] ; 2 uses
  %.1338 = phi ptr [ %.0334, %.lr.ph339 ], [ %i.cx, %bb.ah ] ; 3 uses
  %i.ct = sext i8 %i.cs to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !31
  %i.cw = and i16 %i.cv, 2048
  %.not232 = icmp eq i16 %i.cw, 0
  br i1 %.not232, label %.critedge2, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %.1338, i64 1 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !27  ; 2 uses
  %.not231 = icmp eq i8 %i.cy, 0
  br i1 %.not231, label %.critedge4, label %bb.ag

.critedge2:                                       ; preds = %bb.ag
  %i.cz = icmp eq i8 %i.cs, 46
  br i1 %i.cz, label %.preheader298, label %.critedge4

.preheader298:                                    ; preds = %.critedge2, %bb.ai
  %.1.pn = phi ptr [ %.2, %bb.ai ], [ %.1338, %.critedge2 ]
  %.2 = getelementptr inbounds nuw i8, ptr %.1.pn, i64 1 ; 4 uses
  %i.da = load i8, ptr %.2, align 1, !tbaa !27    ; 2 uses
  %.not233 = icmp eq i8 %i.da, 0
  br i1 %.not233, label %.critedge4, label %bb.ai

bb.ai:                                            ; preds = %.preheader298
  %i.db = sext i8 %i.da to i64
  %i.dc = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !31
  %i.de = and i16 %i.dd, 2048
  %.not234 = icmp eq i16 %i.de, 0
  br i1 %.not234, label %.critedge4, label %.preheader298

.critedge4:                                       ; preds = %bb.af, %bb.ah, %bb.ai, %.preheader298, %.lr.ph.preheader, %.critedge2
  %.3 = phi ptr [ %.1338, %.critedge2 ], [ %i.cx, %bb.ah ], [ %.2, %bb.ai ], [ %i.i, %.lr.ph.preheader ], [ %.2, %.preheader298 ], [ %i.co, %bb.af ] ; 9 uses
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr %2)
  %i.df = load i8, ptr %.3, align 1, !tbaa !27    ; 3 uses
  %i.dg = sext i8 %i.df to i32                    ; 2 uses
  %i.dh = icmp eq i8 %i.df, 0
  br i1 %i.dh, label %.thread286, label %bb.aj

bb.aj:                                            ; preds = %.critedge4
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @redisvFormatCommand.intfmts, i32 %i.dg, i64 7)
  %.not235 = icmp eq ptr %memchr, null
  br i1 %.not235, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = load i32, ptr %2, align 8               ; 2 uses
  %i.dj = icmp ult i32 %i.di, 41
  br i1 %i.dj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dk = add nuw nsw i32 %i.di, 8
  store i32 %i.dk, ptr %2, align 8
  br label %bb.bm

bb.am:                                            ; preds = %bb.ak
  %i.dl = load ptr, ptr %i.e, align 8
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  store ptr %i.dm, ptr %i.e, align 8
  br label %bb.bm

bb.an:                                            ; preds = %bb.aj
  %memchr236 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.1, i32 %i.dg, i64 9)
  %.not237 = icmp eq ptr %memchr236, null
  br i1 %.not237, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dn = load i32, ptr %i.g, align 4             ; 2 uses
  %i.do = icmp ult i32 %i.dn, 161
  br i1 %i.do, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dp = add nuw nsw i32 %i.dn, 16
  store i32 %i.dp, ptr %i.g, align 4
  br label %bb.bm

bb.aq:                                            ; preds = %bb.ao
  %i.dq = load ptr, ptr %i.e, align 8
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  store ptr %i.dr, ptr %i.e, align 8
  br label %bb.bm

bb.ar:                                            ; preds = %bb.an
  switch i8 %i.df, label %.thread286 [
    i8 104, label %bb.as
    i8 108, label %bb.bc
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ds = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !27  ; 2 uses
  switch i8 %i.dt, label %bb.ay [
    i8 104, label %bb.at
    i8 0, label %.thread286
  ]

bb.at:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 3 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !27  ; 2 uses
  %.not247 = icmp eq i8 %i.dv, 0
  br i1 %.not247, label %.thread286, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dw = sext i8 %i.dv to i32
  %memchr248 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @redisvFormatCommand.intfmts, i32 %i.dw, i64 7)
  %.not249 = icmp eq ptr %memchr248, null
  br i1 %.not249, label %.thread286, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dx = load i32, ptr %2, align 8               ; 2 uses
  %i.dy = icmp ult i32 %i.dx, 41
  br i1 %i.dy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dz = add nuw nsw i32 %i.dx, 8
  store i32 %i.dz, ptr %2, align 8
  br label %bb.bm

bb.ax:                                            ; preds = %bb.av
  %i.ea = load ptr, ptr %i.e, align 8
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  store ptr %i.eb, ptr %i.e, align 8
  br label %bb.bm

bb.ay:                                            ; preds = %bb.as
  %i.ec = sext i8 %i.dt to i32
  %memchr245 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @redisvFormatCommand.intfmts, i32 %i.ec, i64 7)
  %.not246 = icmp eq ptr %memchr245, null
  br i1 %.not246, label %.thread286, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ed = load i32, ptr %2, align 8               ; 2 uses
  %i.ee = icmp ult i32 %i.ed, 41
  br i1 %i.ee, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ef = add nuw nsw i32 %i.ed, 8
  store i32 %i.ef, ptr %2, align 8
  br label %bb.bm

bb.bb:                                            ; preds = %bb.az
  %i.eg = load ptr, ptr %i.e, align 8
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  store ptr %i.eh, ptr %i.e, align 8
  br label %bb.bm

bb.bc:                                            ; preds = %bb.ar
  %i.ei = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 3 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !27  ; 2 uses
  switch i8 %i.ej, label %bb.bi [
    i8 108, label %bb.bd
    i8 0, label %.thread286
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.ek = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 3 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !27  ; 2 uses
  %.not241 = icmp eq i8 %i.el, 0
  br i1 %.not241, label %.thread286, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.em = sext i8 %i.el to i32
  %memchr242 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @redisvFormatCommand.intfmts, i32 %i.em, i64 7)
  %.not243 = icmp eq ptr %memchr242, null
  br i1 %.not243, label %.thread286, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.en = load i32, ptr %2, align 8               ; 2 uses
  %i.eo = icmp ult i32 %i.en, 41
  br i1 %i.eo, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ep = add nuw nsw i32 %i.en, 8
  store i32 %i.ep, ptr %2, align 8
  br label %bb.bm

bb.bh:                                            ; preds = %bb.bf
  %i.eq = load ptr, ptr %i.e, align 8
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  store ptr %i.er, ptr %i.e, align 8
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bc
  %i.es = sext i8 %i.ej to i32
  %memchr239 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @redisvFormatCommand.intfmts, i32 %i.es, i64 7)
  %.not240 = icmp eq ptr %memchr239, null
  br i1 %.not240, label %.thread286, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.et = load i32, ptr %2, align 8               ; 2 uses
  %i.eu = icmp ult i32 %i.et, 41
  br i1 %i.eu, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ev = add nuw nsw i32 %i.et, 8
  store i32 %i.ev, ptr %2, align 8
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.ew = load ptr, ptr %i.e, align 8
  %i.ex = getelementptr i8, ptr %i.ew, i64 8
  store ptr %i.ex, ptr %i.e, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.bg, %bb.bh, %bb.ba, %bb.bb, %bb.aw, %bb.ax, %bb.ap, %bb.aq, %bb.al, %bb.am
  %.4 = phi ptr [ %.3, %bb.al ], [ %.3, %bb.am ], [ %.3, %bb.ap ], [ %.3, %bb.aq ], [ %i.du, %bb.aw ], [ %i.du, %bb.ax ], [ %i.ds, %bb.ba ], [ %i.ds, %bb.bb ], [ %i.ek, %bb.bg ], [ %i.ek, %bb.bh ], [ %i.ei, %bb.bk ], [ %i.ei, %bb.bl ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.4, i64 1
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %.0185 to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 3 uses
  %i.fc = icmp ult i64 %i.fb, 14
  br i1 %i.fc, label %bb.bn, label %.thread271

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.0185, i64 %i.fb, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fb
  store i8 0, ptr %i.fd, align 1, !tbaa !27
  %i.fe = call ptr @hi_sdscatvprintf(ptr noundef %.0176, ptr noundef nonnull %i.a, ptr noundef nonnull %3) #13
  %i.ff = getelementptr inbounds i8, ptr %.4, i64 -1
  br label %.thread271

.thread271:                                       ; preds = %bb.bm, %bb.bn
  %.1186 = phi ptr [ %i.ff, %bb.bn ], [ %.0185, %bb.bm ]
  %.0173 = phi ptr [ %i.fe, %bb.bn ], [ %.0176, %bb.bm ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.bo

.thread286:                                       ; preds = %bb.bc, %bb.as, %bb.ar, %bb.bi, %bb.bd, %bb.be, %bb.ay, %bb.at, %bb.au, %.critedge4
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit
end_hunk_0
