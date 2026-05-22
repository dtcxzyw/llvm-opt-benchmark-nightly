inline.NumInlined: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"../../deps/openssl/openssl/crypto/bn/bn_mod.c\00", align 1
@__func__.BN_nnmod = private unnamed_addr constant [9 x i8] c"BN_nnmod\00", align 1
@__func__.BN_mod_sub_quick = private unnamed_addr constant [17 x i8] c"BN_mod_sub_quick\00", align 1
@__func__.BN_mod_lshift_quick = private unnamed_addr constant [20 x i8] c"BN_mod_lshift_quick\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_nnmod(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 22, ptr noundef nonnull @__func__.BN_nnmod) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 524550, ptr noundef null) #5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @BN_div(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %.not14 = icmp eq i32 %i.f, 0
  %i.g = select i1 %.not14, ptr @BN_add, ptr @BN_sub
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %2) #5, !callees !13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.h, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ]
  ret i32 %.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @BN_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_mod_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %BN_nnmod.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, %3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 22, ptr noundef nonnull @__func__.BN_nnmod) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 524550, ptr noundef null) #5
  br label %BN_nnmod.exit

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i32 @BN_div(ptr noundef null, ptr noundef %0, ptr noundef %0, ptr noundef %3, ptr noundef %4) #5
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %BN_nnmod.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !9
  %.not13.i = icmp eq i32 %i.e, 0
  br i1 %.not13.i, label %BN_nnmod.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !9
  %.not14.i = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not14.i, ptr @BN_add, ptr @BN_sub
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %3) #5, !callees !13, !inline_history !14
  br label %BN_nnmod.exit

BN_nnmod.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.i, %bb.f ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @bn_mod_add_fixed_top(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i64], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 9 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef %i.c) #5
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %i.c, 16
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = shl nsw i64 %i.d, 3
  %i.i = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.h, ptr noundef nonnull @.str, i32 noundef 66) #5 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.067 = phi ptr [ %i.i, %bb.c ], [ %i.a, %bb.b ] ; 9 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %.067. = select i1 %.not, ptr %.067, ptr %i.k
  %i.l = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %.not76 = icmp eq ptr %i.l, null
  %i.m = select i1 %.not76, ptr %.067, ptr %i.l
  %.not87 = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !15
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !15
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !17
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17
  %i.y = sext i32 %i.x to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.06682 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.e ] ; 4 uses
  %.06881 = phi i64 [ 0, %.lr.ph ], [ %i.as, %bb.e ] ; 2 uses
  %.06980 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.e ] ; 2 uses
  %.07079 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.e ] ; 2 uses
  %i.z = sub i64 %.06682, %i.p
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.067., i64 %.06881
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18
  %isneg = icmp slt i64 %i.z, 0
  %i.ac = select i1 %isneg, i64 %i.ab, i64 0
  %i.ad = add i64 %i.ac, %.07079                  ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %.07079
  %i.af = zext i1 %i.ae to i64
  %i.ag = sub i64 %.06682, %i.s
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.06980
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18
  %isneg78 = icmp slt i64 %i.ag, 0
  %i.aj = select i1 %isneg78, i64 %i.ai, i64 0
  %i.ak = add i64 %i.aj, %i.ad                    ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %.06682
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !18
  %i.am = icmp ult i64 %i.ak, %i.ad
  %i.an = zext i1 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, %i.af            ; 2 uses
  %i.ap = add nuw i64 %.06682, 1                  ; 4 uses
  %i.aq = sub i64 %i.ap, %i.v
  %i.ar = lshr i64 %i.aq, 63
  %i.as = add i64 %i.ar, %.06881
  %i.at = sub i64 %i.ap, %i.y
  %i.au = lshr i64 %i.at, 63
  %i.av = add i64 %i.au, %.06980
  %exitcond.not = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.070.lcssa = phi i64 [ 0, %bb.d ], [ %i.ao, %bb.e ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !16    ; 4 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !16
  %i.ay = call i64 @bn_sub_words(ptr noundef %i.aw, ptr noundef nonnull %.067, ptr noundef %i.ax, i32 noundef %i.c) #5
  %i.az = sub i64 %.070.lcssa, %i.ay              ; 4 uses
  br i1 %.not87, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %._crit_edge
  %4 = xor i64 %i.az, -1                          ; 3 uses
  %5 = icmp eq i32 %i.c, 1
  br i1 %5, label %.epil.preheader, label %.lr.ph85.new

.lr.ph85.new:                                     ; preds = %.lr.ph85
  %unroll_iter = and i64 %i.d, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph85.new
  %.183 = phi i64 [ 0, %.lr.ph85.new ], [ %i.bp, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph85.new ], [ %niter.next.1, %bb.f ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %.183 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !18
  %i.bc = and i64 %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.183 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !18
  %i.bf = and i64 %i.be, %4
  %i.bg = or i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.bd, align 8, !tbaa !18
  store volatile i64 0, ptr %i.ba, align 8, !tbaa !18
  %i.bh = or disjoint i64 %.183, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !18
  %i.bk = and i64 %i.bj, %i.az
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bh ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !18
  %i.bn = and i64 %i.bm, %4
  %i.bo = or i64 %i.bn, %i.bk
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !18
  store volatile i64 0, ptr %i.bi, align 8, !tbaa !18
  %i.bp = add nuw i64 %.183, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge86.loopexit.unr-lcssa, label %bb.f, !llvm.loop !22

._crit_edge86.loopexit.unr-lcssa:                 ; preds = %bb.f
  %i.bq = and i32 %i.c, 1
  %lcmp.mod.not = icmp eq i32 %i.bq, 0
  br i1 %lcmp.mod.not, label %._crit_edge86, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge86.loopexit.unr-lcssa, %.lr.ph85
  %.183.epil.init = phi i64 [ 0, %.lr.ph85 ], [ %i.bp, %._crit_edge86.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod91 = trunc i32 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod91)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %.183.epil.init ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !18
  %i.bt = and i64 %i.bs, %i.az
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.183.epil.init ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !18
  %i.bw = and i64 %i.bv, %4
  %i.bx = or i64 %i.bw, %i.bt
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !18
  store volatile i64 0, ptr %i.br, align 8, !tbaa !18
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %.epil.preheader, %._crit_edge86.loopexit.unr-lcssa, %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.by, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.bz, align 8, !tbaa !9
  %.not77 = icmp eq ptr %.067, %i.a
  br i1 %.not77, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge86
  call void @CRYPTO_free(ptr noundef nonnull %.067, ptr noundef nonnull @.str, i32 noundef 98) #5
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge86, %bb.g, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 1, %bb.g ], [ 1, %._crit_edge86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @bn_wexpand(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @bn_sub_words(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @BN_mod_add_quick(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @bn_mod_add_fixed_top(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @bn_correct_top(ptr noundef %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.a
}

declare void @bn_correct_top(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_mod_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %BN_nnmod.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, %3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 22, ptr noundef nonnull @__func__.BN_nnmod) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 524550, ptr noundef null) #5
  br label %BN_nnmod.exit

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i32 @BN_div(ptr noundef null, ptr noundef %0, ptr noundef %0, ptr noundef %3, ptr noundef %4) #5
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %BN_nnmod.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !9
  %.not13.i = icmp eq i32 %i.e, 0
  br i1 %.not13.i, label %BN_nnmod.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !9
  %.not14.i = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not14.i, ptr @BN_add, ptr @BN_sub
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %3) #5, !callees !13, !inline_history !14
  br label %BN_nnmod.exit

BN_nnmod.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.i, %bb.f ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @bn_mod_sub_fixed_top(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef %i.b) #5
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !16     ; 9 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %.not = icmp eq ptr %i.g, null
  %. = select i1 %.not, ptr %i.f, ptr %i.g
  %i.h = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %.not95 = icmp eq ptr %i.h, null
  %i.i = select i1 %.not95, ptr %i.f, ptr %i.h
  %.not118 = icmp eq i32 %i.b, 0
  br i1 %.not118, label %._crit_edge117, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !15
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !15
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = sext i32 %i.t to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.v = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.c ]
  %.083105 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %bb.c ] ; 4 uses
  %.084104 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.c ] ; 2 uses
  %.087103 = phi i64 [ 0, %.lr.ph ], [ %.188, %bb.c ]
  %.089102 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.c ] ; 2 uses
  %i.w = sub i64 %.083105, %i.l
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %., i64 %.084104
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18
  %isneg = icmp slt i64 %i.w, 0
  %i.z = select i1 %isneg, i64 %i.y, i64 0        ; 3 uses
  %i.aa = sub i64 %.083105, %i.o
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.089102
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18
  %isneg98 = icmp slt i64 %i.aa, 0
  %i.ad = select i1 %isneg98, i64 %i.ac, i64 0    ; 3 uses
  %.neg101 = add i64 %i.z, %i.v
  %i.ae = sub i64 %.neg101, %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.083105
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !18
  %.not99 = icmp eq i64 %i.z, %i.ad
  %i.ag = icmp ult i64 %i.z, %i.ad
  %i.ah = zext i1 %i.ag to i64
  %.188 = select i1 %.not99, i64 %.087103, i64 %i.ah ; 3 uses
  %i.ai = add nuw i64 %.083105, 1                 ; 4 uses
  %i.aj = sub i64 %i.ai, %i.r
  %i.ak = lshr i64 %i.aj, 63
  %i.al = add i64 %i.ak, %.084104
  %i.am = sub i64 %i.ai, %i.u
  %i.an = lshr i64 %i.am, 63
  %i.ao = add i64 %i.an, %.089102
  %i.ap = sub nsw i64 0, %.188                    ; 4 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.c
  br i1 %exitcond.not, label %.lr.ph110.preheader, label %bb.c, !llvm.loop !23

.lr.ph110.preheader:                              ; preds = %bb.c
  %i.aq = load ptr, ptr %3, align 8, !tbaa !16    ; 6 uses
  %i.ar = add nsw i64 %i.c, -1                    ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph110.epil.preheader, label %.lr.ph110.preheader.new

.lr.ph110.preheader.new:                          ; preds = %.lr.ph110.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110, %.lr.ph110.preheader.new
  %.1108 = phi i64 [ 0, %.lr.ph110.preheader.new ], [ %i.bs, %.lr.ph110 ] ; 4 uses
  %.085107 = phi i64 [ 0, %.lr.ph110.preheader.new ], [ %i.br, %.lr.ph110 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph110.preheader.new ], [ %niter.next.1, %.lr.ph110 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.1108
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18
  %i.av = and i64 %i.au, %i.ap
  %i.aw = add i64 %i.av, %.085107                 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %.085107
  %i.ay = zext i1 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.1108 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !18
  %i.bb = add i64 %i.aw, %i.ba                    ; 2 uses
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !18
  %i.bc = icmp ult i64 %i.bb, %i.aw
  %i.bd = zext i1 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, %i.ay            ; 2 uses
  %i.bf = or disjoint i64 %.1108, 1               ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !18
  %i.bi = and i64 %i.bh, %i.ap
  %i.bj = add i64 %i.bi, %i.be                    ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %i.be
  %i.bl = zext i1 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bf ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bo = add i64 %i.bj, %i.bn                    ; 2 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !18
  %i.bp = icmp ult i64 %i.bo, %i.bj
  %i.bq = zext i1 %i.bp to i64
end_hunk_0
