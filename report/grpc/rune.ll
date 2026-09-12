Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/rune?download=true
inline.NumInlined: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i32 1, 5) i32 @_ZN3re210chartoruneEPiPKc(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !8       ; 6 uses
  %i.b = zext i8 %i.a to i32                      ; 4 uses
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = xor i8 %i.e, -128                        ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %.not = icmp ult i8 %i.f, 64
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i8 %i.a, -32
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i8 %i.a, -64
  br i1 %i.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i32 %i.b, 6
  %.masked38 = and i32 %i.j, 1984
  %i.k = or disjoint i32 %.masked38, %i.g         ; 2 uses
  %i.l = icmp samesign ult i32 %i.k, 128
  br i1 %i.l, label %bb.m, label %bb.n

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = xor i8 %i.n, -128                        ; 2 uses
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %.not35 = icmp ult i8 %i.o, 64
  br i1 %.not35, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.q = icmp samesign ult i8 %i.a, -16
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = shl nuw nsw i32 %i.b, 12
  %i.s = shl nuw nsw i32 %i.g, 6
  %.masked37 = and i32 %i.r, 61440
  %.masked36 = or disjoint i32 %i.s, %.masked37   ; 2 uses
  %i.t = icmp samesign ult i32 %.masked36, 2048
  br i1 %i.t, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = or disjoint i32 %.masked36, %i.p
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = xor i8 %i.w, -128                        ; 2 uses
  %i.y = icmp ult i8 %i.x, 64
  %i.z = icmp samesign ult i8 %i.a, -8
  %or.cond = and i1 %i.z, %i.y
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aa = shl nuw nsw i32 %i.b, 12
  %i.ab = shl nuw nsw i32 %i.g, 6
  %i.ac = or disjoint i32 %i.ab, %i.aa
  %i.ad = or disjoint i32 %i.ac, %i.p
  %i.ae = shl nuw nsw i32 %i.ad, 6
  %.masked = and i32 %i.ae, 2097088               ; 2 uses
  %i.af = icmp samesign ult i32 %.masked, 65536
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = zext nneg i8 %i.x to i32
  %i.ah = or disjoint i32 %.masked, %i.ag
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.d, %bb.b
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.a, %bb.m, %bb.l, %bb.i
  %.sink = phi i32 [ 65533, %bb.m ], [ %i.ah, %bb.l ], [ %i.u, %bb.i ], [ %i.b, %bb.a ], [ %i.k, %bb.e ]
  %.0 = phi i32 [ 1, %bb.m ], [ 4, %bb.l ], [ 3, %bb.i ], [ 1, %bb.a ], [ 2, %bb.e ]
  store i32 %.sink, ptr %0, align 4, !tbaa !9
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i32 1, 5) i32 @_ZN3re210runetocharEPcPKi(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9      ; 7 uses
  %i.b = icmp ult i32 %i.a, 128
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %i.a to i8
  store i8 %i.c, ptr %0, align 1, !tbaa !8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %i.a, 2048
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = lshr i32 %i.a, 6
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = or disjoint i8 %i.f, -64
  store i8 %i.g, ptr %0, align 1, !tbaa !8
  %i.h = trunc i32 %i.a to i8
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %i.a, 1114111
  %narrow = select i1 %i.l, i32 65533, i32 %i.a   ; 8 uses
  %i.m = icmp ult i32 %narrow, 65536
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  %2 = lshr i32 %narrow, 12
  %i.o = trunc nuw nsw i32 %2 to i8
  %i.p = or disjoint i8 %i.o, -32
  store i8 %i.p, ptr %0, align 1, !tbaa !8
  %i.q = lshr i32 %narrow, 6
  %i.r = trunc i32 %i.q to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  store i8 %i.t, ptr %i.n, align 1, !tbaa !8
  %i.u = trunc i32 %narrow to i8
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.w, ptr %3, align 1, !tbaa !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = lshr i32 %narrow, 6
  %i.y = lshr i32 %narrow, 12
  %i.z = lshr i32 %narrow, 18
  %i.aa = trunc i32 %narrow to i8
  %i.ab = trunc i32 %i.x to i8
  %i.ac = trunc i32 %i.y to i8
  %i.ad = trunc i32 %i.z to i8
  %i.ae = insertelement <4 x i8> poison, i8 %i.ad, i64 0
  %i.af = insertelement <4 x i8> %i.ae, i8 %i.ac, i64 1
  %i.ag = insertelement <4 x i8> %i.af, i8 %i.ab, i64 2
  %i.ah = insertelement <4 x i8> %i.ag, i8 %i.aa, i64 3
  %i.ai = and <4 x i8> %i.ah, <i8 -1, i8 63, i8 63, i8 63>
  %i.aj = or <4 x i8> %i.ai, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.aj, ptr %0, align 1, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 1, 5) i32 @_ZN3re27runelenEi(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %_ZN3re210runetocharEPcPKi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048
  br i1 %i.b, label %_ZN3re210runetocharEPcPKi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add i32 %0, -1114112
  %i.d = icmp ult i32 %i.c, -1048576
  %. = select i1 %i.d, i32 3, i32 4
  br label %_ZN3re210runetocharEPcPKi.exit

_ZN3re210runetocharEPcPKi.exit:                   ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi i32 [ 2, %bb.b ], [ 1, %bb.a ], [ %., %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_ZN3re28fullruneEPKci(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i8 %i.b, -32
  br i1 %i.d, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ugt i32 %1, 2
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ult i8 %i.b, -16
  %i.g = icmp ne i32 %1, 3
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.b, %bb.d, %bb.f
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.f, %bb.e, %.thread
  %.1 = phi i32 [ 1, %.thread ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN3re26utflenEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %_ZN3re210chartoruneEPiPKc.exit, %bb.a
  %.07 = phi ptr [ %0, %bb.a ], [ %i.aa, %_ZN3re210chartoruneEPiPKc.exit ] ; 5 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.ab, %_ZN3re210chartoruneEPiPKc.exit ] ; 2 uses
  %i.a = load i8, ptr %.07, align 1, !tbaa !8     ; 7 uses
  %i.b = icmp sgt i8 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i8 %i.a, 0
  br i1 %i.c, label %bb.d, label %_ZN3re210chartoruneEPiPKc.exit

bb.d:                                             ; preds = %bb.c
  ret i32 %.0

bb.e:                                             ; preds = %bb.b
  %i.d = zext i8 %i.a to i32                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = xor i8 %i.f, -128                        ; 2 uses
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %.not.i = icmp ult i8 %i.g, 64
  br i1 %.not.i, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ult i8 %i.a, -32
  br i1 %i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = icmp samesign ult i8 %i.a, -64
  br i1 %i.j, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = shl nuw nsw i32 %i.d, 6
  %.masked38.i = and i32 %i.k, 1920
  %i.l = or disjoint i32 %.masked38.i, %i.h
  %i.m = icmp samesign ult i32 %i.l, 128
  br i1 %i.m, label %bb.n, label %_ZN3re210chartoruneEPiPKc.exit

bb.i:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %.not35.i = icmp slt i8 %i.o, -64
  br i1 %.not35.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.p = icmp samesign ult i8 %i.a, -16
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.q = shl nuw nsw i32 %i.d, 12
  %i.r = shl nuw nsw i32 %i.h, 6
  %.masked37.i = and i32 %i.q, 61440
  %.masked36.i = or disjoint i32 %i.r, %.masked37.i
  %i.s = icmp samesign ult i32 %.masked36.i, 2048
  br i1 %i.s, label %bb.n, label %_ZN3re210chartoruneEPiPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.07, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %i.v = icmp slt i8 %i.u, -64
  %i.w = icmp samesign ult i8 %i.a, -8
  %or.cond.i = and i1 %i.w, %i.v
  br i1 %or.cond.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = shl nuw nsw i32 %i.d, 18
  %i.y = shl nuw nsw i32 %i.h, 12
  %.masked = and i32 %i.x, 1835008
  %.masked.i = or disjoint i32 %i.y, %.masked
  %i.z = icmp samesign ult i32 %.masked.i, 65536
  br i1 %i.z, label %bb.n, label %_ZN3re210chartoruneEPiPKc.exit

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e
  br label %_ZN3re210chartoruneEPiPKc.exit

_ZN3re210chartoruneEPiPKc.exit:                   ; preds = %bb.n, %bb.h, %bb.k, %bb.m, %bb.c
  %.0.i.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.n ], [ 3, %bb.k ], [ 2, %bb.h ], [ 4, %bb.m ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.07, i64 %.0.i.sink
  %i.ab = add i32 %.0, 1
  br label %bb.b, !llvm.loop !11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN3re27utfruneEPKci(ptr nofree noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %1, 128
  br i1 %i.a, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef %1) #4
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.backedge
  %.015 = phi ptr [ %i.f, %.backedge ], [ %0, %bb.a ] ; 6 uses
  %i.c = load i8, ptr %.015, align 1, !tbaa !8    ; 7 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  %i.e = icmp eq i8 %i.c, 0
  br i1 %i.e, label %.loopexit, label %.backedge

.backedge:                                        ; preds = %bb.c, %_ZN3re210chartoruneEPiPKc.exit
  %.sink = phi i64 [ %.0.i, %_ZN3re210chartoruneEPiPKc.exit ], [ 1, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %.015, i64 %.sink
  br label %.preheader, !llvm.loop !12

bb.d:                                             ; preds = %.preheader
  %i.g = zext i8 %i.c to i32                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.015, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = xor i8 %i.i, -128                        ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 3 uses
end_hunk_0
