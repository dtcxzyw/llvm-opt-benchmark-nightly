Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/x_long?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ASN1_PRIMITIVE_FUNCS_st = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr }

@LONG_it.local_it = internal constant { i8, [7 x i8], i64, ptr, i64, ptr, i64, ptr } { i8 0, [7 x i8] zeroinitializer, i64 2, ptr null, i64 0, ptr @long_pf, i64 2147483647, ptr @.str }, align 8
@long_pf = internal global %struct.ASN1_PRIMITIVE_FUNCS_st { ptr null, i64 0, ptr @long_new, ptr @long_free, ptr @long_free, ptr @long_c2i, ptr @long_i2c, ptr @long_print }, align 8
@.str = private unnamed_addr constant [5 x i8] c"LONG\00", align 1
@ZLONG_it.local_it = internal constant { i8, [7 x i8], i64, ptr, i64, ptr, i64, ptr } { i8 0, [7 x i8] zeroinitializer, i64 2, ptr null, i64 0, ptr @long_pf, i64 0, ptr @.str.1 }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"ZLONG\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"crypto/asn1/x_long.c\00", align 1
@__func__.long_c2i = private unnamed_addr constant [9 x i8] c"long_c2i\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @LONG_it() local_unnamed_addr #0 {
bb.a:
  ret ptr @LONG_it.local_it
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ZLONG_it() local_unnamed_addr #0 {
bb.a:
  ret ptr @ZLONG_it.local_it
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @long_new(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %0, align 8
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @long_free(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @long_c2i(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !8
  switch i8 %i.b, label %.thread [
    i8 -1, label %bb.d
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ 255, %bb.b ]      ; 2 uses
  %i.c = icmp sgt i32 %2, 9
  br i1 %i.c, label %bb.e, label %bb.g

.thread:                                          ; preds = %bb.b
  %i.d = icmp samesign ugt i32 %2, 8
  br i1 %i.d, label %bb.e, label %.thread87

.thread87:                                        ; preds = %.thread
  %i.e = load i8, ptr %1, align 1, !tbaa !8
  %.not3588 = icmp sgt i8 %i.e, -1
  %spec.select5989 = select i1 %.not3588, i64 0, i64 255
  br label %.lr.ph.preheader

bb.e:                                             ; preds = %.thread, %bb.d
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 154, ptr noundef nonnull @__func__.long_c2i) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 128, ptr noundef null) #6
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.f = add nsw i32 %2, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i64
  %i.j = xor i64 %.0, %i.i
  %6 = and i64 %i.j, 128
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %bb.h, label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 165, ptr noundef nonnull @__func__.long_c2i) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 221, ptr noundef null) #6
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.k = load i8, ptr %1, align 1, !tbaa !8
  %.not35 = icmp sgt i8 %i.k, -1
  %spec.select59 = select i1 %.not35, i64 0, i64 255 ; 2 uses
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.g, %.thread87, %bb.i
  %.181 = phi i64 [ %spec.select5989, %.thread87 ], [ %spec.select59, %bb.i ], [ %.0, %bb.g ] ; 6 uses
  %.031414780 = phi ptr [ %1, %.thread87 ], [ %1, %bb.i ], [ %i.g, %bb.g ] ; 5 uses
  %.032404979 = phi i32 [ %2, %.thread87 ], [ 1, %bb.i ], [ %i.f, %bb.g ] ; 2 uses
  %wide.trip.count = zext nneg i32 %.032404979 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.m = add i32 %.032404979, -1
  %i.n = icmp ult i32 %i.m, 3
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.02761 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.o = getelementptr inbounds nuw i8, ptr %.031414780, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = zext i8 %i.p to i64
  %i.r = xor i64 %.181, %i.q
  %i.s = shl i64 %.02761, 16
  %i.t = shl nsw i64 %i.r, 8
  %i.u = or i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.031414780, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = zext i8 %i.x to i64
  %i.z = xor i64 %.181, %i.y
  %i.aa = or i64 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.031414780, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = zext i8 %i.ad to i64
  %i.af = xor i64 %.181, %i.ae
  %i.ag = shl i64 %i.aa, 16
  %i.ah = shl nsw i64 %i.af, 8
  %i.ai = or i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.031414780, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = zext i8 %i.al to i64
  %i.an = xor i64 %.181, %i.am
  %i.ao = or i64 %i.an, %i.ai                     ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !17

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.02761.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.02761.epil = phi i64 [ %.02761.epil.init, %.lr.ph.epil.preheader ], [ %i.au, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ap = shl i64 %.02761.epil, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.031414780, i64 %indvars.iv.epil
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = zext i8 %i.ar to i64
  %i.at = xor i64 %.181, %i.as
  %i.au = or i64 %i.at, %i.ap                     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi i64 [ %i.ao, %._crit_edge.unr-lcssa ], [ %i.au, %.lr.ph.epil ] ; 2 uses
  %i.av = icmp slt i64 %.lcssa, 0
  br i1 %i.av, label %bb.j, label %._crit_edge.thread

bb.j:                                             ; preds = %._crit_edge
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 175, ptr noundef nonnull @__func__.long_c2i) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 128, ptr noundef null) #6
  br label %bb.m

._crit_edge.thread:                               ; preds = %bb.f, %bb.i, %._crit_edge
  %.027.lcssa93 = phi i64 [ %.lcssa, %._crit_edge ], [ 0, %bb.i ], [ 0, %bb.f ]
  %.18292 = phi i64 [ %.181, %._crit_edge ], [ %spec.select59, %bb.i ], [ 0, %bb.f ]
  %.not36 = icmp ne i64 %.18292, 0
  %i.aw = sext i1 %.not36 to i64
  %spec.select = xor i64 %.027.lcssa93, %i.aw     ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.az = icmp eq i64 %spec.select, %i.ay
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.thread
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 181, ptr noundef nonnull @__func__.long_c2i) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 128, ptr noundef null) #6
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.thread
  store i64 %spec.select, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.e
  %.030 = phi i32 [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.k ], [ 1, %bb.l ], [ 0, %bb.h ]
  ret i32 %.030
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 -268435456, 268435457) i32 @long_i2c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %.0.copyload = load i64, ptr %0, align 8        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = icmp eq i64 %.0.copyload, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.copyload.lobit = ashr i64 %.0.copyload, 63
  %.025 = xor i64 %.0.copyload.lobit, %.0.copyload ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.010.i = phi i32 [ 0, %bb.b ], [ %i.o, %bb.c ]
  %.069.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.c ]
  %.078.i = phi i64 [ %.025, %bb.b ], [ %i.p, %bb.c ] ; 5 uses
  %i.d = icmp ne i64 %.078.i, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add i32 %.010.i, %i.e
  %i.g = icmp ugt i64 %.078.i, 1
  %i.h = zext i1 %i.g to i32
  %i.i = add i32 %i.f, %i.h
  %i.j = icmp ugt i64 %.078.i, 3
  %i.k = zext i1 %i.j to i32
  %i.l = add i32 %i.i, %i.k
  %i.m = icmp ugt i64 %.078.i, 7
  %i.n = zext i1 %i.m to i32
  %i.o = add i32 %i.l, %i.n                       ; 3 uses
  %i.p = lshr i64 %.078.i, 4
  %i.q = add nuw nsw i64 %.069.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.q, 64
  br i1 %exitcond.not.i.3, label %num_bits_ulong.exit, label %bb.c, !llvm.loop !19

num_bits_ulong.exit:                              ; preds = %bb.c
  %i.r = icmp slt i64 %.0.copyload, 0
  %.024 = select i1 %i.r, i64 255, i64 0          ; 6 uses
  %i.s = and i32 %i.o, 7
  %.not.not = icmp eq i32 %i.s, 0                 ; 2 uses
  %.023 = zext i1 %.not.not to i32
  %i.t = add nsw i32 %i.o, 7
  %i.u = ashr i32 %i.t, 3                         ; 4 uses
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %num_bits_ulong.exit
  br i1 %.not.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = trunc nuw i64 %.024 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.v, ptr %1, align 1, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.027 = phi ptr [ %i.w, %bb.e ], [ %1, %bb.d ]  ; 5 uses
  %i.x = icmp sgt i32 %i.u, 0
  br i1 %i.x, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.y = zext nneg i32 %i.u to i64                ; 3 uses
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.y, %.lr.ph.preheader ]
  %.131.prol = phi i64 [ %i.ac, %.lr.ph.prol ], [ %.025, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 3 uses
  %i.z = xor i64 %.131.prol, %.024
  %i.aa = trunc i64 %i.z to i8
end_hunk_0
