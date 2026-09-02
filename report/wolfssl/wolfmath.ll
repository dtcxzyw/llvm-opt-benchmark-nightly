Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wolfmath?download=true
inline.NumInlined: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@wc_off_on_addr = local_unnamed_addr constant [2 x i64] [i64 0, i64 -1], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mp_reverse(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp sgt i32 %1, 1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = add nsw i64 %i.c, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv19 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next20, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv19 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %i.g = getelementptr inbounds i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  store i8 %i.h, ptr %i.e, align 1, !tbaa !15
  store i8 %i.f, ptr %i.g, align 1, !tbaa !15
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.i = icmp slt i64 %indvars.iv.next20, %indvars.iv.next
  br i1 %i.i, label %.lr.ph, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 65536) i32 @mp_get_digit_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !11
  %i.c = zext i16 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @mp_get_digit(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !11
  %i.d = zext i16 %i.c to i32
  %.not = icmp samesign ult i32 %1, %i.d
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.h, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mp_cond_copy(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = sub nsw i64 0, %i.a                      ; 5 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %2, null
  %or.cond.not = and i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %0, align 8, !tbaa !11
  %i.f = zext i16 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = tail call i32 @sp_grow(ptr noundef nonnull %2, i32 noundef %i.g) #6 ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.preheader45, label %.thread

.preheader45:                                     ; preds = %bb.b
  %i.j = load i16, ptr %0, align 8, !tbaa !11     ; 7 uses
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %.preheader, label %mp_get_digit.exit.lr.ph.split

mp_get_digit.exit.lr.ph.split:                    ; preds = %.preheader45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.m = load i16, ptr %2, align 8, !tbaa !11
  %i.n = zext i16 %i.m to i64                     ; 4 uses
  %wide.trip.count = zext i16 %i.j to i64         ; 5 uses
  %min.iters.check = icmp ult i16 %i.j, 6
  br i1 %min.iters.check, label %mp_get_digit.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %mp_get_digit.exit.lr.ph.split
  %i.o = shl nuw nsw i64 %wide.trip.count, 3
  %i.p = add nuw nsw i64 %i.o, 8                  ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.p
  %scevgep69 = getelementptr i8, ptr %0, i64 %i.p
  %bound0 = icmp ult ptr %i.l, %scevgep69
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %mp_get_digit.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 65532        ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert70 = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat71 = shufflevector <2 x i64> %broadcast.splatinsert70, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8, !tbaa !13, !alias.scope !23
  %wide.load72 = load <2 x i64>, ptr %i.r, align 8, !tbaa !13, !alias.scope !23
  %i.s = icmp ult <2 x i64> %vec.ind, %broadcast.splat
  %i.t = icmp ult <2 x i64> %step.add, %broadcast.splat
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %wide.load73 = load <2 x i64>, ptr %i.u, align 8, !tbaa !13, !alias.scope !24, !noalias !23 ; 2 uses
  %wide.load74 = load <2 x i64>, ptr %i.v, align 8, !tbaa !13, !alias.scope !24, !noalias !23 ; 2 uses
  %i.w = select <2 x i1> %i.s, <2 x i64> %wide.load73, <2 x i64> zeroinitializer
  %i.x = select <2 x i1> %i.t, <2 x i64> %wide.load74, <2 x i64> zeroinitializer
  %i.y = xor <2 x i64> %wide.load, %i.w
  %i.z = xor <2 x i64> %wide.load72, %i.x
  %i.aa = and <2 x i64> %i.y, %broadcast.splat71
  %i.ab = and <2 x i64> %i.z, %broadcast.splat71
  %i.ac = xor <2 x i64> %wide.load73, %i.aa
  %i.ad = xor <2 x i64> %wide.load74, %i.ab
  store <2 x i64> %i.ac, ptr %i.u, align 8, !tbaa !13, !alias.scope !24, !noalias !23
  store <2 x i64> %i.ad, ptr %i.v, align 8, !tbaa !13, !alias.scope !24, !noalias !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %mp_get_digit.exit.preheader

mp_get_digit.exit.preheader:                      ; preds = %vector.memcheck, %mp_get_digit.exit.lr.ph.split, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %mp_get_digit.exit.lr.ph.split ], [ %n.vec, %middle.block ] ; 7 uses
  %3 = trunc i16 %i.j to i1
  br i1 %3, label %mp_get_digit.exit.prol, label %mp_get_digit.exit.prol.loopexit

mp_get_digit.exit.prol:                           ; preds = %mp_get_digit.exit.preheader
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !13
  %.not.i36.prol = icmp samesign ult i64 %indvars.iv.ph, %i.n
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.ph
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.aj = select i1 %.not.i36.prol, i64 %i.ai, i64 0
  %.0.i37.prol = xor i64 %i.ag, %i.aj
  %i.ak = and i64 %.0.i37.prol, %i.b
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.ph
  %i.am = xor i64 %i.ai, %i.ak
  store i64 %i.am, ptr %i.al, align 8, !tbaa !13
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %mp_get_digit.exit.prol.loopexit

mp_get_digit.exit.prol.loopexit:                  ; preds = %mp_get_digit.exit.prol, %mp_get_digit.exit.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %mp_get_digit.exit.preheader ], [ %indvars.iv.next.prol, %mp_get_digit.exit.prol ]
  %i.an = add nsw i64 %wide.trip.count, -1
  %i.ao = icmp eq i64 %indvars.iv.ph, %i.an
  br i1 %i.ao, label %.preheader, label %mp_get_digit.exit

.preheader:                                       ; preds = %mp_get_digit.exit.prol.loopexit, %mp_get_digit.exit, %middle.block, %.preheader45
  %i.ap = load i16, ptr %2, align 8, !tbaa !11    ; 4 uses
  %i.aq = icmp ult i16 %i.j, %i.ap
  br i1 %i.aq, label %mp_get_digit.exit44.lr.ph, label %._crit_edge

mp_get_digit.exit44.lr.ph:                        ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.as = zext i16 %i.j to i64                    ; 4 uses
  %wide.trip.count63 = zext i16 %i.ap to i64      ; 2 uses
  %i.at = add nsw i64 %i.a, -1                    ; 2 uses
  %i.au = sub nsw i64 %wide.trip.count63, %i.as   ; 3 uses
  %min.iters.check76 = icmp ult i64 %i.au, 4
  br i1 %min.iters.check76, label %mp_get_digit.exit44.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %mp_get_digit.exit44.lr.ph
  %n.vec78 = and i64 %i.au, -4                    ; 3 uses
  %i.av = add nsw i64 %n.vec78, %i.as
  %broadcast.splatinsert79 = insertelement <2 x i64> poison, i64 %i.at, i64 0
  %broadcast.splat80 = shufflevector <2 x i64> %broadcast.splatinsert79, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ar, i64 %i.as
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next85, %vector.body81 ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index82 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load83 = load <2 x i64>, ptr %gep, align 8, !tbaa !13
  %wide.load84 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !13
  %i.ax = and <2 x i64> %wide.load83, %broadcast.splat80
  %i.ay = and <2 x i64> %wide.load84, %broadcast.splat80
  store <2 x i64> %i.ax, ptr %gep, align 8, !tbaa !13
  store <2 x i64> %i.ay, ptr %i.aw, align 8, !tbaa !13
  %index.next85 = add nuw i64 %index82, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.az, label %middle.block86, label %vector.body81, !llvm.loop !20

middle.block86:                                   ; preds = %vector.body81
  %cmp.n87 = icmp eq i64 %i.au, %n.vec78
  br i1 %cmp.n87, label %._crit_edge, label %mp_get_digit.exit44.preheader

mp_get_digit.exit44.preheader:                    ; preds = %mp_get_digit.exit44.lr.ph, %middle.block86
  %indvars.iv60.ph = phi i64 [ %i.as, %mp_get_digit.exit44.lr.ph ], [ %i.av, %middle.block86 ]
  br label %mp_get_digit.exit44

mp_get_digit.exit:                                ; preds = %mp_get_digit.exit.prol.loopexit, %mp_get_digit.exit
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %mp_get_digit.exit ], [ %indvars.iv.unr, %mp_get_digit.exit.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !13
  %.not.i36 = icmp samesign ult i64 %indvars.iv, %i.n
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %i.be = select i1 %.not.i36, i64 %i.bd, i64 0
  %.0.i37 = xor i64 %i.bb, %i.be
  %i.bf = and i64 %.0.i37, %i.b
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.bh = xor i64 %i.bd, %i.bf
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !13
  %.not.i36.1 = icmp samesign ult i64 %indvars.iv.next, %i.n
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = select i1 %.not.i36.1, i64 %i.bl, i64 0
  %.0.i37.1 = xor i64 %i.bj, %i.bm
  %i.bn = and i64 %.0.i37.1, %i.b
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.bp = xor i64 %i.bl, %i.bn
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader, label %mp_get_digit.exit, !llvm.loop !21

mp_get_digit.exit44:                              ; preds = %mp_get_digit.exit44.preheader, %mp_get_digit.exit44
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %mp_get_digit.exit44 ], [ %indvars.iv60.ph, %mp_get_digit.exit44.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv60 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !13
  %i.bs = and i64 %i.br, %i.at
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !13
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge, label %mp_get_digit.exit44, !llvm.loop !22

._crit_edge:                                      ; preds = %mp_get_digit.exit44, %middle.block86, %.preheader
  %i.bt = xor i16 %i.ap, %i.j
  %i.bu = trunc i64 %i.b to i16
  %i.bv = and i16 %i.bt, %i.bu
  %i.bw = xor i16 %i.bv, %i.ap
  store i16 %i.bw, ptr %2, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %bb.a, %._crit_edge, %bb.b
  %.13368 = phi i32 [ %i.h, %bb.b ], [ %i.h, %._crit_edge ], [ -173, %bb.a ]
  ret i32 %.13368
}

declare i32 @sp_grow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @mp_get_rand_digit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @wc_RNG_GenerateBlock(ptr noundef %0, ptr noundef %1, i32 noundef 8) #6
  ret i32 %i.a
}

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @mp_rand(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nuw nsw i32 %1, 3
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %0, null
  %i.d = icmp sgt i32 %1, 0
  %or.cond.not = and i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !27
  %i.g = zext i16 %i.f to i32
  %i.h = icmp samesign ugt i32 %1, %i.g
  br i1 %i.h, label %.critedge, label %.critedge30

.critedge30:                                      ; preds = %bb.c
  %i.i = trunc nuw i32 %1 to i16
  store i16 %i.i, ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call i32 @wc_RNG_GenerateBlock(ptr noundef nonnull %2, ptr noundef nonnull %i.j, i32 noundef %i.a) #6 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.preheader, label %.critedge

.preheader:                                       ; preds = %.critedge30, %bb.d
  %i.m = load i16, ptr %0, align 8, !tbaa !11
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader
  %i.r = tail call i32 @wc_RNG_GenerateBlock(ptr noundef nonnull %2, ptr noundef nonnull %i.o, i32 noundef 8) #6 ; 2 uses
  %.old2 = icmp eq i32 %i.r, 0
  br i1 %.old2, label %.preheader, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.d, %bb.b, %bb.c, %bb.a, %.critedge30
  %.4 = phi i32 [ -236, %bb.a ], [ -173, %bb.b ], [ %i.k, %.critedge30 ], [ -173, %bb.c ], [ 0, %.preheader ], [ %i.r, %bb.d ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define i32 @wc_export_int(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp eq ptr %2, null
  %or.cond4 = or i1 %or.cond, %i.d
  br i1 %or.cond4, label %.critedge51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %4, 1
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  %i.f = call i32 @sp_radix_size(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %2, align 4, !tbaa !28
  %i.i = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
end_hunk_0
