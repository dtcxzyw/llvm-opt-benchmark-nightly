Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_lz_kernel?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_Lz_DecodeState = type { %struct.ZL_Lz_InSequences, i64, i64, i64, i64 }
%struct.ZL_Lz_InSequences = type { ptr, i64, ptr, i64, ptr, i64, ptr, i64, i64 }

@ZS_overlapCopy8.dec32table = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], align 16
@ZS_overlapCopy8.dec64table = internal unnamed_addr constant [8 x i32] [i32 8, i32 8, i32 8, i32 7, i32 8, i32 9, i32 10, i32 11], align 16

; Function Attrs: nounwind uwtable
define i32 @ZL_Lz_decode(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  switch i64 %i.d, label %.thread [
    i64 2, label %bb.b
    i64 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = icmp eq i64 %i.i, 2
  %i.k = icmp ult i64 %1, 9223372036854644738
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @ZL_Lz_decode_typed(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @ZL_Lz_decode_u16Loop)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !21
  %i.r = icmp eq i64 %i.q, 2
  %i.s = icmp ult i64 %1, 9223372036854644738
  %or.cond3 = and i1 %i.s, %i.r
  br i1 %or.cond3, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.t = tail call fastcc i32 @ZL_Lz_decode_typed(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @ZL_Lz_decode_u32Loop)
  br label %bb.m

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i64 0, ptr %i.b, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !45   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.x = add nuw nsw i64 %.01418.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.x, %i.v
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !44

.lr.ph.i:                                         ; preds = %.thread, %bb.h
  %.01418.i = phi i64 [ %i.x, %bb.h ], [ 0, %.thread ] ; 2 uses
  %i.y = call fastcc i32 @ZL_Lz_decode_sequence(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %.01418.i, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.h, label %ZL_Lz_decode_generic.exit

._crit_edge.loopexit.i:                           ; preds = %bb.h
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !22
  %.pre20.i = load i64, ptr %i.b, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.thread
  %i.z = phi i64 [ %.pre20.i, %._crit_edge.loopexit.i ], [ 0, %.thread ] ; 4 uses
  %i.aa = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 0, %.thread ] ; 3 uses
  %.val.i = load ptr, ptr %2, align 8, !tbaa !24
  %i.ab = getelementptr i8, ptr %2, i64 8
  %.val17.i = load i64, ptr %i.ab, align 8, !tbaa !25 ; 3 uses
  %i.ac = icmp sgt i64 %i.z, %.val17.i
  br i1 %i.ac, label %ZL_Lz_decode_generic.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ad = icmp slt i64 %i.z, %.val17.i
  br i1 %i.ad, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nsw i64 %.val17.i, %i.z             ; 2 uses
  %i.af = add nsw i64 %i.ae, %i.aa                ; 2 uses
  %.not.i.i = icmp sgt i64 %i.af, %1
  br i1 %.not.i.i, label %ZL_Lz_decode_generic.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ah = getelementptr inbounds i8, ptr %.val.i, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr readonly align 1 %i.ah, i64 %i.ae, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.123.i.i = phi i64 [ %i.af, %bb.k ], [ %i.aa, %bb.i ]
  %.not27.i.i = icmp eq i64 %.123.i.i, %1
  %..i.i = select i1 %.not27.i.i, i32 0, i32 7
  br label %ZL_Lz_decode_generic.exit

ZL_Lz_decode_generic.exit:                        ; preds = %.lr.ph.i, %._crit_edge.i, %bb.j, %bb.l
  %.2.i = phi i32 [ 2, %._crit_edge.i ], [ 6, %bb.j ], [ %..i.i, %bb.l ], [ %i.y, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.m

bb.m:                                             ; preds = %ZL_Lz_decode_generic.exit, %bb.g, %bb.d
  %.0 = phi i32 [ %i.l, %bb.d ], [ %i.t, %bb.g ], [ %.2.i, %ZL_Lz_decode_generic.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ZL_Lz_decode_typed(ptr noundef %0, i64 noundef range(i64 0, 9223372036854644738) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZL_Lz_DecodeState, align 8  ; 14 uses
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !49
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = add nsw i64 %i.g, -32
  store i64 %i.h, ptr %i.e, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = add nsw i64 %1, -64                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.l = icmp sgt i64 %i.j, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %5
  %i.m = phi i64 [ %6, %5 ], [ 0, %bb.a ]         ; 2 uses
  %i.n = load i64, ptr %i.d, align 8, !tbaa !29   ; 4 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !27
  %i.p = icmp sgt i64 %i.n, %i.o
  br i1 %i.p, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !24
  %.not = icmp eq ptr %i.q, %i.r
  br i1 %.not, label %bb.c, label %ZL_Lz_decode_lastLiterals.exit

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.t = sub i64 %i.s, %i.n                       ; 4 uses
  %.not34 = icmp eq i64 %i.s, %i.n
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.u, i64 %i.t, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  store ptr %i.a, ptr %4, align 8, !tbaa !30
  store i64 %i.t, ptr %i.f, align 8, !tbaa !50
  store i64 0, ptr %i.d, align 8, !tbaa !29
  store i64 %i.t, ptr %i.e, align 8, !tbaa !27
  %i.v = icmp slt i64 %i.t, 0
  %i.w = load i64, ptr %i.c, align 8, !tbaa !31
  %.not35 = icmp sgt i64 %i.w, %i.k
  %brmerge = or i1 %.not35, %i.v
  br i1 %brmerge, label %bb.g, label %.thread64

.thread:                                          ; preds = %.lr.ph
  %i.x = load i64, ptr %i.c, align 8, !tbaa !31
  %.not3562 = icmp sgt i64 %i.x, %i.k
  br i1 %.not3562, label %bb.g, label %.thread64

.thread64:                                        ; preds = %bb.e, %.thread
  %i.y = call i32 %3(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4) #8, !callees !51 ; 2 uses
  %.not38 = icmp eq i32 %i.y, 0
  br i1 %.not38, label %bb.f, label %ZL_Lz_decode_lastLiterals.exit

bb.f:                                             ; preds = %.thread64
  %i.z = load i64, ptr %i.d, align 8, !tbaa !29
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !50
  %.not45 = icmp sgt i64 %i.z, %i.aa
  br i1 %.not45, label %ZL_Lz_decode_lastLiterals.exit, label %._crit_edge47

._crit_edge47:                                    ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.thread, %._crit_edge47
  %i.ab = phi i64 [ %.pre, %._crit_edge47 ], [ %i.m, %bb.e ], [ %i.m, %.thread ] ; 3 uses
  %i.ac = icmp slt i64 %i.ab, %i.j
  br i1 %i.ac, label %bb.h, label %5

bb.h:                                             ; preds = %bb.g
  %i.ad = call fastcc i32 @ZL_Lz_decode_sequence(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4, i64 noundef %i.ab, ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not39 = icmp eq i32 %i.ad, 0
  br i1 %.not39, label %.thread43, label %ZL_Lz_decode_lastLiterals.exit

.thread43:                                        ; preds = %bb.h
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !32
  %i.af = add nsw i64 %i.ae, 1                    ; 2 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !32
  br label %5

5:                                                ; preds = %.thread43, %bb.g
  %6 = phi i64 [ %i.af, %.thread43 ], [ %i.ab, %bb.g ] ; 2 uses
  %7 = icmp slt i64 %6, %i.j
  br i1 %7, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %5
  %.pre48 = load i64, ptr %i.c, align 8, !tbaa !31
  %.pre49 = load i64, ptr %i.d, align 8, !tbaa !29
  %.val40.pre = load i64, ptr %i.f, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.val40 = phi i64 [ %.val40.pre, %._crit_edge.loopexit ], [ %i.g, %bb.a ] ; 3 uses
  %i.ag = phi i64 [ %.pre49, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.ah = phi i64 [ %.pre48, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 3 uses
  %.val = load ptr, ptr %4, align 8, !tbaa !24
  %i.ai = icmp sgt i64 %i.ag, %.val40
  br i1 %i.ai, label %ZL_Lz_decode_lastLiterals.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.aj = icmp slt i64 %i.ag, %.val40
  br i1 %i.aj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = sub nsw i64 %.val40, %i.ag              ; 2 uses
  %i.al = add nsw i64 %i.ak, %i.ah                ; 2 uses
  %.not.i = icmp sgt i64 %i.al, %1
  br i1 %.not.i, label %ZL_Lz_decode_lastLiterals.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.an = getelementptr inbounds i8, ptr %.val, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr readonly align 1 %i.an, i64 %i.ak, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.123.i = phi i64 [ %i.al, %bb.k ], [ %i.ah, %bb.i ]
  %.not27.i = icmp eq i64 %.123.i, %1
  %..i = select i1 %.not27.i, i32 0, i32 7
  br label %ZL_Lz_decode_lastLiterals.exit

ZL_Lz_decode_lastLiterals.exit:                   ; preds = %.thread64, %bb.h, %bb.b, %bb.f, %bb.l, %bb.j, %._crit_edge
  %.5 = phi i32 [ %..i, %bb.l ], [ 2, %._crit_edge ], [ 6, %bb.j ], [ %i.y, %.thread64 ], [ 2, %bb.b ], [ 2, %bb.f ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.5
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 5) i32 @ZL_Lz_decode_u16Loop(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = load ptr, ptr %2, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31
  %i.m = add nsw i64 %1, -64                      ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %scevgep = getelementptr i8, ptr %0, i64 16
  %i.t = add i64 %i.a, 24
  %scevgep80 = getelementptr i8, ptr %0, i64 16
  %scevgep82 = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0101.i = phi i64 [ %i.l, %bb.a ], [ %i.ae, %.loopexit ] ; 11 uses
  %.096.i = phi i64 [ %i.o, %bb.a ], [ %i.af, %.loopexit ] ; 5 uses
  %.093.i = phi i64 [ %i.s, %bb.a ], [ %i.fu, %.loopexit ] ; 7 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %i.h, i64 %.093.i
  %i.v = load i16, ptr %i.u, align 2, !tbaa !37   ; 2 uses
  %i.w = zext i16 %i.v to i64                     ; 9 uses
  %i.x = getelementptr inbounds [2 x i8], ptr %i.j, i64 %.093.i
  %i.y = load i16, ptr %i.x, align 2, !tbaa !37   ; 4 uses
  %i.z = zext i16 %i.y to i64                     ; 5 uses
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.f, i64 %.093.i
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !37 ; 4 uses
  %i.ac = zext i16 %i.ab to i64                   ; 3 uses
  %i.ad = add i64 %.0101.i, %i.w                  ; 5 uses
  %i.ae = add nsw i64 %i.ad, %i.z                 ; 6 uses
  %i.af = add nsw i64 %.096.i, %i.w               ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %.0101.i ; 10 uses
  %i.ah = getelementptr inbounds i8, ptr %i.d, i64 %.096.i ; 10 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 1 dereferenceable(32) %i.ah, i64 32, i1 false)
  %i.ai = icmp ugt i16 %i.v, 32
  br i1 %i.ai, label %bb.c, label %.loopexit52, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp sgt i64 %i.af, %i.q
  %i.ak = icmp sgt i64 %i.ae, %i.m
  %i.al = select i1 %i.aj, i1 true, i1 %i.ak, !prof !38
  br i1 %i.al, label %.critedge.i, label %.preheader51.preheader, !prof !38

.preheader51.preheader:                           ; preds = %bb.c
  %i.am = add nsw i64 %i.w, -33                   ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %xtraiter = and i64 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i64 %i.am, 224
  br i1 %i.ap, label %.preheader51.epil.preheader, label %.preheader51.preheader.new

.preheader51.preheader.new:                       ; preds = %.preheader51.preheader
  %unroll_iter = and i64 %i.ao, 1152921504606846968
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51, %.preheader51.preheader.new
  %.090.i = phi i64 [ 32, %.preheader51.preheader.new ], [ %i.bn, %.preheader51 ] ; 10 uses
  %niter = phi i64 [ 0, %.preheader51.preheader.new ], [ %niter.next.7, %.preheader51 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.090.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.090.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aq, ptr noundef nonnull align 1 dereferenceable(32) %i.ar, i64 32, i1 false)
  %i.as = add nuw nsw i64 %.090.i, 32             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.at, ptr noundef nonnull align 1 dereferenceable(32) %i.au, i64 32, i1 false)
  %i.av = add nuw nsw i64 %.090.i, 64             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aw, ptr noundef nonnull align 1 dereferenceable(32) %i.ax, i64 32, i1 false)
  %i.ay = add nuw nsw i64 %.090.i, 96             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.az, ptr noundef nonnull align 1 dereferenceable(32) %i.ba, i64 32, i1 false)
  %i.bb = add nuw nsw i64 %.090.i, 128            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bc, ptr noundef nonnull align 1 dereferenceable(32) %i.bd, i64 32, i1 false)
  %i.be = add nuw nsw i64 %.090.i, 160            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.be
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bf, ptr noundef nonnull align 1 dereferenceable(32) %i.bg, i64 32, i1 false)
  %i.bh = add nuw nsw i64 %.090.i, 192            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bh
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bi, ptr noundef nonnull align 1 dereferenceable(32) %i.bj, i64 32, i1 false)
  %i.bk = add nuw nsw i64 %.090.i, 224            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bl, ptr noundef nonnull align 1 dereferenceable(32) %i.bm, i64 32, i1 false)
  %i.bn = add nuw nsw i64 %.090.i, 256            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.loopexit52.loopexit.unr-lcssa, label %.preheader51, !llvm.loop !0

.loopexit52.loopexit.unr-lcssa:                   ; preds = %.preheader51
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit52, label %.preheader51.epil.preheader

.preheader51.epil.preheader:                      ; preds = %.loopexit52.loopexit.unr-lcssa, %.preheader51.preheader
  %.090.i.epil.init = phi i64 [ 32, %.preheader51.preheader ], [ %i.bn, %.loopexit52.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.preheader51.epil

.preheader51.epil:                                ; preds = %.preheader51.epil, %.preheader51.epil.preheader
  %.090.i.epil = phi i64 [ %i.bq, %.preheader51.epil ], [ %.090.i.epil.init, %.preheader51.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader51.epil ], [ 0, %.preheader51.epil.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.090.i.epil
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.090.i.epil
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bo, ptr noundef nonnull align 1 dereferenceable(32) %i.bp, i64 32, i1 false)
  %i.bq = add nuw nsw i64 %.090.i.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit52, label %.preheader51.epil, !llvm.loop !52

.loopexit52:                                      ; preds = %.loopexit52.loopexit.unr-lcssa, %.preheader51.epil, %bb.b
  %i.br = sub nsw i64 %i.ad, %i.ac                ; 3 uses
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %ZL_Lz_decode_fastLoop.exit, label %bb.d, !prof !38

bb.d:                                             ; preds = %.loopexit52
  %i.bt = icmp ult i16 %i.ab, %i.y
  br i1 %i.bt, label %bb.e, label %bb.k, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.bu = icmp sgt i64 %i.ae, %i.m
  br i1 %i.bu, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = getelementptr i8, ptr %0, i64 %i.ad     ; 10 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.z ; 2 uses
  %i.by = icmp ult i16 %i.ab, 16
  br i1 %i.by, label %bb.g, label %.preheader47

bb.g:                                             ; preds = %bb.f
  %i.bz = icmp samesign ult i16 %i.ab, 8
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %i.ac
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !40
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !41
  store i8 %i.cc, ptr %i.bv, align 1, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
end_hunk_0
