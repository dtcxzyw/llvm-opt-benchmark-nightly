Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/f_int?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/asn1/f_int.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @a2i_ASN1_INTEGER(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((4, 8)) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 2, ptr %i.b, align 4, !tbaa !12
  %i.c = tail call i32 @BIO_gets(ptr noundef %0, ptr noundef %2, i32 noundef %3) #3 ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.loopexit, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph122, %bb.r
  %.not92120 = phi i1 [ false, %.lr.ph122 ], [ true, %bb.r ]
  %.075119 = phi i32 [ 0, %.lr.ph122 ], [ %.176, %bb.r ] ; 2 uses
  %.077118 = phi i32 [ 0, %.lr.ph122 ], [ %i.al, %bb.r ] ; 2 uses
  %.079117 = phi ptr [ null, %.lr.ph122 ], [ %.180, %bb.r ] ; 7 uses
  %.081116 = phi i32 [ %i.c, %.lr.ph122 ], [ %i.bi, %bb.r ] ; 3 uses
  %i.f = zext nneg i32 %.081116 to i64            ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13    ; 2 uses
  %i.j = icmp eq i8 %i.i, 10
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.081116, -1                 ; 3 uses
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.l ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !13
  %i.n = icmp eq i32 %i.k, 0
  br i1 %i.n, label %.loopexit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %i.m, i64 -1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !13
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %.pre-phi = phi i64 [ %i.l, %..thread_crit_edge ], [ %i.f, %bb.b ]
  %i.o = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.i, %bb.b ] ; 2 uses
  %.08696 = phi i32 [ %i.k, %..thread_crit_edge ], [ %.081116, %bb.b ] ; 2 uses
  %i.p = icmp eq i8 %i.o, 13
  br i1 %i.p, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %.thread
  %i.q = add nsw i32 %.08696, -1                  ; 3 uses
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.r ; 2 uses
  store i8 0, ptr %i.s, align 1, !tbaa !13
  %i.t = icmp eq i32 %i.q, 0
  br i1 %i.t, label %.loopexit, label %..thread97_crit_edge

..thread97_crit_edge:                             ; preds = %bb.d
  %.phi.trans.insert152 = getelementptr i8, ptr %i.s, i64 -1
  %.pre153 = load i8, ptr %.phi.trans.insert152, align 1, !tbaa !13
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %..thread97_crit_edge
  %.pre-phi154 = phi i64 [ %i.r, %..thread97_crit_edge ], [ %.pre-phi, %.thread ]
  %i.u = phi i8 [ %.pre153, %..thread97_crit_edge ], [ %i.o, %.thread ]
  %.18799 = phi i32 [ %i.q, %..thread97_crit_edge ], [ %.08696, %.thread ]
  %i.v = icmp eq i8 %i.u, 92
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = sext i8 %i.x to i32
  %i.z = call i32 @OPENSSL_isxdigit(i32 noundef %i.y) #3
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %._crit_edge.split.loop.exit169, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.pre-phi154
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge.split.loop.exit169:                   ; preds = %.lr.ph
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.split.loop.exit169
  %.288.ph = phi i32 [ %i.aa, %._crit_edge.split.loop.exit169 ], [ %.18799, %bb.e ] ; 6 uses
  %i.ab = sext i32 %.288.ph to i64
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !13
  %i.ad = icmp slt i32 %.288.ph, 2
  br i1 %i.ad, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  br i1 %.not92120, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i8, ptr %2, align 1, !tbaa !13
  %i.af = icmp eq i8 %i.ae, 48
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load i8, ptr %i.e, align 1, !tbaa !13
  %i.ah = icmp eq i8 %i.ag, 48                    ; 2 uses
  %i.ai = add nsw i32 %.288.ph, -2
  %spec.select = select i1 %i.ah, i32 %i.ai, i32 %.288.ph
  %spec.select130.idx = select i1 %i.ah, i64 2, i64 0
  %spec.select130 = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select130.idx
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.3 = phi i32 [ %.288.ph, %bb.f ], [ %spec.select, %bb.h ], [ %.288.ph, %bb.g ] ; 3 uses
  %.078 = phi ptr [ %2, %bb.f ], [ %spec.select130, %bb.h ], [ %2, %bb.g ] ; 2 uses
  %i.aj = and i32 %.3, 1
  %.not93 = icmp eq i32 %i.aj, 0
  br i1 %.not93, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 166, ptr noundef nonnull @.str, i32 noundef 59) #3
  call void @OPENSSL_free(ptr noundef %.079117) #3
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.ak = lshr exact i32 %.3, 1                   ; 2 uses
  %i.al = add nuw nsw i32 %i.ak, %.077118         ; 5 uses
  %i.am = icmp sgt i32 %i.al, %.075119
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = call ptr @OPENSSL_realloc(ptr noundef %.079117, i64 noundef %i.an) #3 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 65, ptr noundef nonnull @.str, i32 noundef 67) #3
  call void @OPENSSL_free(ptr noundef %.079117) #3
  br label %bb.t

bb.n:                                             ; preds = %bb.l, %bb.k
  %.180 = phi ptr [ %.079117, %bb.k ], [ %i.ao, %bb.l ] ; 5 uses
  %.176 = phi i32 [ %.075119, %bb.k ], [ %i.al, %bb.l ]
  %.not131 = icmp eq i32 %.3, 0
  br i1 %.not131, label %._crit_edge115, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.n
  %i.aq = zext nneg i32 %.077118 to i64
  %wide.trip.count150 = zext nneg i32 %i.ak to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.180, i64 %i.aq
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.q
  %indvars.iv145 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next146, %bb.q ] ; 2 uses
  %indvars.iv143 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next144, %bb.q ] ; 3 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv145 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i8 0, ptr %i.a, align 1, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv143
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = sext i8 %i.as to i32
  %i.au = call i32 @OPENSSL_fromxdigit(ptr noundef nonnull %i.a, i32 noundef %i.at) #3
  %.not94 = icmp eq i32 %i.au, 0
  br i1 %.not94, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %.preheader
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 160, ptr noundef nonnull @.str, i32 noundef 78) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %.loopexit

bb.p:                                             ; preds = %.preheader
  %i.av = load i8, ptr %gep, align 1, !tbaa !13
  %i.aw = shl i8 %i.av, 4                         ; 2 uses
  store i8 %i.aw, ptr %gep, align 1, !tbaa !13
  %i.ax = load i8, ptr %i.a, align 1, !tbaa !13
  %i.ay = or i8 %i.ax, %i.aw
  store i8 %i.ay, ptr %gep, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i8 0, ptr %i.a, align 1, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.078, i64 %indvars.iv143
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bc = sext i8 %i.bb to i32
  %i.bd = call i32 @OPENSSL_fromxdigit(ptr noundef nonnull %i.a, i32 noundef %i.bc) #3
  %.not94.1 = icmp eq i32 %i.bd, 0
  br i1 %.not94.1, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = load i8, ptr %gep, align 1, !tbaa !13
  %i.bf = shl i8 %i.be, 4                         ; 2 uses
  store i8 %i.bf, ptr %gep, align 1, !tbaa !13
  %i.bg = load i8, ptr %i.a, align 1, !tbaa !13
  %i.bh = or i8 %i.bg, %i.bf
  store i8 %i.bh, ptr %gep, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 2
  %exitcond151.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count150
  br i1 %exitcond151.not, label %._crit_edge115, label %.preheader, !llvm.loop !18

._crit_edge115:                                   ; preds = %bb.q, %bb.n
  br i1 %i.v, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge115
  %i.bi = call i32 @BIO_gets(ptr noundef %0, ptr noundef %2, i32 noundef %3) #3 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %.loopexit, label %bb.b

bb.s:                                             ; preds = %._crit_edge115
  store i32 %i.al, ptr %1, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.180, ptr %i.bk, align 8, !tbaa !16
  br label %bb.t

.loopexit:                                        ; preds = %bb.r, %bb.c, %bb.d, %._crit_edge, %bb.a, %bb.o
  %.2 = phi ptr [ %.180, %bb.o ], [ null, %bb.a ], [ %.180, %bb.r ], [ %.079117, %bb.c ], [ %.079117, %bb.d ], [ %.079117, %._crit_edge ]
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 171, ptr noundef nonnull @.str, i32 noundef 96) #3
  call void @OPENSSL_free(ptr noundef %.2) #3
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.s, %bb.m, %bb.j
  %.089 = phi i32 [ 0, %.loopexit ], [ 0, %bb.j ], [ 0, %bb.m ], [ 1, %bb.s ]
  ret i32 %.089
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @BIO_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_isxdigit(i32 noundef) local_unnamed_addr #2

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_fromxdigit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -2147483646, -2147483648) i32 @i2a_ASN1_INTEGER(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.loopexit, label %bb.b

end_hunk_0
