Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/match?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i32] [i32 42, i32 63, i32 0], align 4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z7CmpNamePKwS0_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 12 uses
  %i.b = alloca [2048 x i32], align 16            ; 9 uses
  %i.c = icmp slt i32 %2, 0                       ; 5 uses
  %i.d = and i32 %2, 65535                        ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @wcslen(ptr noundef %0) #5 ; 2 uses
  %i.f = add nsw i32 %i.d, -5                     ; 2 uses
  %or.cond4 = icmp ult i32 %i.f, -3
  br i1 %or.cond4, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @wcsncmp(ptr noundef readonly %0, ptr noundef readonly %1, i64 noundef %i.e) #5
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  switch i32 %i.j, label %bb.e [
    i32 92, label %.thread76
    i32 47, label %.thread76
    i32 0, label %.thread76
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = icmp eq i32 %i.d, 1
  br i1 %i.k, label %.thread76, label %.thread

.thread:                                          ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @_Z11GetFilePathPKwPwm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 2048)
  call void @_Z11GetFilePathPKwPwm(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef 2048)
  %trunc = trunc i32 %2 to i16
  switch i16 %trunc, label %bb.j [
    i16 4, label %bb.f
    i16 2, label %bb.f
    i16 3, label %.thread80.sink.split
  ]

bb.f:                                             ; preds = %.thread, %.thread
  br i1 %i.c, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = call i32 @wcscmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  br label %_ZL10mwcsicompcPKwS0_b.exit

bb.h:                                             ; preds = %bb.f
  %i.m = call noundef i32 @_Z9wcsicompcPKwS0_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZL10mwcsicompcPKwS0_b.exit

_ZL10mwcsicompcPKwS0_b.exit:                      ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.l, %bb.g ], [ %i.m, %bb.h ]
  %.not66 = icmp eq i32 %.0.i, 0
  br i1 %.not66, label %bb.i, label %.thread80

bb.i:                                             ; preds = %_ZL10mwcsicompcPKwS0_b.exit
  %i.n = icmp eq i32 %i.d, 3
  br i1 %i.n, label %.thread80.sink.split, label %.thread74

bb.j:                                             ; preds = %.thread
  %i.o = icmp eq i32 %i.d, 5
  %or.cond12 = icmp ult i32 %i.f, 2
  br i1 %or.cond12, label %bb.k, label %.thread74

bb.k:                                             ; preds = %bb.j
  %i.p = call noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef nonnull %i.a)
  br i1 %i.p, label %.thread80.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.o, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = call noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef %0)
  br i1 %i.q, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.r = load i32, ptr %i.a, align 16, !tbaa !9
  %.not68 = icmp eq i32 %i.r, 0
  br i1 %.not68, label %.thread74, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = call i64 @wcslen(ptr noundef nonnull %i.a) #5
  %i.t = call noundef i32 @wcsncmp(ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.b, i64 noundef %i.s) #5
  %.not69 = icmp eq i32 %i.t, 0
  br i1 %.not69, label %.thread74, label %.thread80

bb.p:                                             ; preds = %bb.m
  br i1 %i.c, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.u = call i32 @wcscmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  br label %_ZL10mwcsicompcPKwS0_b.exit71

bb.r:                                             ; preds = %bb.p
  %i.v = call noundef i32 @_Z9wcsicompcPKwS0_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZL10mwcsicompcPKwS0_b.exit71

_ZL10mwcsicompcPKwS0_b.exit71:                    ; preds = %bb.q, %bb.r
  %.0.i70 = phi i32 [ %i.u, %bb.q ], [ %i.v, %bb.r ]
  %.not67 = icmp eq i32 %.0.i70, 0
  br i1 %.not67, label %.thread74, label %.thread80

.thread80.sink.split:                             ; preds = %bb.k, %bb.i, %.thread
  %i.w = call fastcc noundef zeroext i1 @_ZL5matchPKwS0_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %i.c)
  br label %.thread80

.thread80:                                        ; preds = %.thread80.sink.split, %bb.o, %_ZL10mwcsicompcPKwS0_b.exit, %_ZL10mwcsicompcPKwS0_b.exit71
  %.260.ph = phi i1 [ false, %_ZL10mwcsicompcPKwS0_b.exit71 ], [ false, %_ZL10mwcsicompcPKwS0_b.exit ], [ false, %bb.o ], [ %i.w, %.thread80.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread76

.thread74:                                        ; preds = %bb.i, %bb.j, %bb.o, %bb.n, %_ZL10mwcsicompcPKwS0_b.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.s

bb.s:                                             ; preds = %.thread74, %bb.a
  %i.x = call noundef ptr @_Z11PointToNamePKw(ptr noundef %0) ; 3 uses
  %i.y = call noundef ptr @_Z11PointToNamePKw(ptr noundef %1) ; 3 uses
  %i.z = icmp eq i32 %i.d, 2
  br i1 %i.z, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  br i1 %i.c, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aa = call i32 @wcscmp(ptr noundef %i.x, ptr noundef %i.y) #5
  br label %_ZL10mwcsicompcPKwS0_b.exit73

bb.v:                                             ; preds = %bb.t
  %i.ab = call noundef i32 @_Z9wcsicompcPKwS0_(ptr noundef %i.x, ptr noundef %i.y)
  br label %_ZL10mwcsicompcPKwS0_b.exit73

_ZL10mwcsicompcPKwS0_b.exit73:                    ; preds = %bb.u, %bb.v
  %.0.i72 = phi i32 [ %i.aa, %bb.u ], [ %i.ab, %bb.v ]
  %i.ac = icmp eq i32 %.0.i72, 0
  br label %.thread76

bb.w:                                             ; preds = %bb.s
  %i.ad = call fastcc noundef zeroext i1 @_ZL5matchPKwS0_b(ptr noundef %i.x, ptr noundef %i.y, i1 noundef zeroext %i.c)
  br label %.thread76

.thread76:                                        ; preds = %bb.e, %bb.d, %bb.d, %bb.d, %.thread80, %_ZL10mwcsicompcPKwS0_b.exit73, %bb.w
  %.5 = phi i1 [ %.260.ph, %.thread80 ], [ %i.ac, %_ZL10mwcsicompcPKwS0_b.exit73 ], [ %i.ad, %bb.w ], [ true, %bb.d ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.d ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_Z11GetFilePathPKwPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL5matchPKwS0_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %bb.a, %.loopexit147
  %.046.ph = phi ptr [ %0, %bb.a ], [ %i.b, %.loopexit147 ]
  %.043.ph = phi ptr [ %1, %bb.a ], [ %i.ag, %.loopexit147 ] ; 6 uses
  %i.a = load i32, ptr %.043.ph, align 4, !tbaa !9 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer
  %.046 = phi ptr [ %.046.ph, %tailrecurse.outer ], [ %i.b, %tailrecurse.backedge ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.046, i64 4 ; 5 uses
  %i.c = load i32, ptr %.046, align 4, !tbaa !9   ; 3 uses
  switch i32 %i.c, label %bb.q [
    i32 0, label %bb.b
    i32 63, label %bb.c
    i32 42, label %bb.d
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.d = icmp eq i32 %i.a, 0
  br label %.loopexit

bb.c:                                             ; preds = %tailrecurse
  %i.e = icmp eq i32 %i.a, 0
  br i1 %i.e, label %.loopexit, label %.loopexit147

bb.d:                                             ; preds = %tailrecurse
  %i.f = load i32, ptr %i.b, align 4, !tbaa !9
  switch i32 %i.f, label %.thread54.preheader [
    i32 0, label %.loopexit
    i32 46, label %bb.e
  ]

.thread54.preheader:                              ; preds = %bb.j, %bb.l, %bb.k, %bb.d
  %.4.ph = phi ptr [ %i.t, %bb.l ], [ %i.t, %bb.k ], [ %.043.ph, %bb.j ], [ %.043.ph, %bb.d ]
  br label %.thread54

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.046, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9    ; 2 uses
  %i.i = icmp eq i32 %i.h, 42
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.046, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.f
  %i.m = tail call ptr @wcschr(ptr noundef nonnull %.043.ph, i32 noundef signext 46) #5
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.n = tail call ptr @wcschr(ptr noundef nonnull %.043.ph, i32 noundef signext 46) #5 ; 3 uses
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  %i.s = icmp eq i32 %i.r, 0
  br label %.loopexit

bb.j:                                             ; preds = %.thread, %bb.g
  %i.t = phi ptr [ %i.m, %.thread ], [ %i.n, %bb.g ] ; 4 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.thread54.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @wcspbrk(ptr noundef nonnull %i.b, ptr noundef nonnull @.str) #5
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.l, label %.thread54.preheader

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 3 uses
  %i.x = tail call ptr @wcschr(ptr noundef nonnull %i.w, i32 noundef signext 46) #5
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.m, label %.thread54.preheader

bb.m:                                             ; preds = %bb.l
  br i1 %2, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i32 @wcscmp(ptr noundef nonnull %i.g, ptr noundef nonnull %i.w) #5
  br label %_ZL10mwcsicompcPKwS0_b.exit

bb.o:                                             ; preds = %bb.m
  %i.aa = tail call noundef i32 @_Z9wcsicompcPKwS0_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.w)
  br label %_ZL10mwcsicompcPKwS0_b.exit

_ZL10mwcsicompcPKwS0_b.exit:                      ; preds = %bb.n, %bb.o
  %.0.i = phi i32 [ %i.z, %bb.n ], [ %i.aa, %bb.o ]
  %i.ab = icmp eq i32 %.0.i, 0
  br label %.loopexit

.thread54:                                        ; preds = %.thread54.preheader, %bb.p
  %.4 = phi ptr [ %i.ad, %bb.p ], [ %.4.ph, %.thread54.preheader ] ; 3 uses
  %i.ac = load i32, ptr %.4, align 4, !tbaa !9
  %.not52.not.not = icmp ne i32 %i.ac, 0          ; 3 uses
  br i1 %.not52.not.not, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.thread54
  %i.ad = getelementptr inbounds nuw i8, ptr %.4, i64 4
  %i.ae = tail call fastcc noundef zeroext i1 @_ZL5matchPKwS0_b(ptr noundef nonnull %i.b, ptr noundef nonnull %.4, i1 noundef zeroext %2)
  br i1 %i.ae, label %.loopexit, label %.thread54, !llvm.loop !10

bb.q:                                             ; preds = %tailrecurse
  %.not53 = icmp eq i32 %i.c, %i.a
  br i1 %.not53, label %.loopexit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = icmp eq i32 %i.c, 46
  br i1 %i.af, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  switch i32 %i.a, label %.loopexit [
    i32 92, label %tailrecurse.backedge
    i32 46, label %tailrecurse.backedge
    i32 0, label %tailrecurse.backedge
  ]

tailrecurse.backedge:                             ; preds = %bb.s, %bb.s, %bb.s
  br label %tailrecurse

.loopexit147:                                     ; preds = %bb.q, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.043.ph, i64 4
  br label %tailrecurse.outer, !llvm.loop !11

.loopexit:                                        ; preds = %bb.r, %bb.s, %bb.c, %.thread54, %bb.p, %bb.b, %bb.d, %bb.f, %bb.h, %bb.i, %_ZL10mwcsicompcPKwS0_b.exit
  %.2.ph = phi i1 [ true, %bb.h ], [ %i.ab, %_ZL10mwcsicompcPKwS0_b.exit ], [ %i.s, %bb.i ], [ %.not52.not.not, %.thread54 ], [ %i.d, %bb.b ], [ true, %bb.f ], [ true, %bb.d ], [ %.not52.not.not, %bb.p ], [ false, %bb.c ], [ false, %bb.s ], [ false, %bb.r ]
  ret i1 %.2.ph
}

declare noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z11PointToNamePKw(ptr noundef) local_unnamed_addr #3

end_hunk_0
