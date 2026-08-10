inline.NumInlined: 31
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ErrorHandler = type <{ i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8] }>

@ErrHandler = external global %class.ErrorHandler, align 4
@.str = private unnamed_addr constant [44 x i32] [i32 77, i32 97, i32 120, i32 105, i32 109, i32 117, i32 109, i32 32, i32 97, i32 108, i32 108, i32 111, i32 119, i32 101, i32 100, i32 32, i32 97, i32 114, i32 114, i32 97, i32 121, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 40, i32 37, i32 117, i32 41, i32 32, i32 105, i32 115, i32 32, i32 101, i32 120, i32 99, i32 101, i32 101, i32 100, i32 101, i32 100, i32 0], align 4

@_ZN7RawReadC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7RawReadC2Ev
@_ZN7RawReadC1EP4File = unnamed_addr alias void (ptr, ptr), ptr @_ZN7RawReadC2EP4File

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7RawReadC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7RawRead5ResetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((8, 16), (40, 64)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7RawReadC2EP4File(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7RawRead4ReadEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = sub i64 %i.d, %i.f                       ; 2 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %2 = sub nuw i64 %1, %i.g                       ; 2 uses
  %i.i = sub i64 0, %2
  %i.j = and i64 %i.i, 15
  %3 = add i64 %i.j, %2                           ; 3 uses
  %i.k = add i64 %3, %i.d                         ; 4 uses
  store i64 %i.k, ptr %i.c, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %._ZN5ArrayIhE3AddEm.exit_crit_edge

._ZN5ArrayIhE3AddEm.exit_crit_edge:               ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZN5ArrayIhE3AddEm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21   ; 3 uses
  %.not.i = icmp ne i64 %i.p, 0
  %i.q = icmp ugt i64 %i.k, %i.p
  %or.cond.i = and i1 %.not.i, %i.q
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.p)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !19
  %.pre10.i = load i64, ptr %i.c, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi i64 [ %.pre10.i, %bb.e ], [ %i.k, %bb.d ]
  %i.s = phi i64 [ %.pre.i, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %i.t = lshr i64 %i.s, 2
  %i.u = add i64 %i.s, 32
  %i.v = add i64 %i.u, %i.t
  %..i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.v) ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !20
  %i.x = tail call ptr @realloc(ptr noundef %i.w, i64 noundef %..i) #12 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.x, ptr %0, align 8, !tbaa !20
  store i64 %..i, ptr %i.l, align 8, !tbaa !19
  br label %_ZN5ArrayIhE3AddEm.exit

_ZN5ArrayIhE3AddEm.exit:                          ; preds = %._ZN5ArrayIhE3AddEm.exit_crit_edge, %bb.h
  %i.z = phi ptr [ %.pre, %._ZN5ArrayIhE3AddEm.exit_crit_edge ], [ %i.x, %bb.h ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.d
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8256) %i.ab, ptr noundef nonnull %i.ac, i64 noundef %3) ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.aj = load ptr, ptr %0, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.d
  tail call void @_ZN9CryptData12DecryptBlockEPhm(ptr noundef nonnull align 8 dereferenceable(2516) %i.ai, ptr noundef nonnull %i.ak, i64 noundef %3)
  %i.al = icmp eq i32 %i.ag, 0
  %i.am = select i1 %i.al, i64 0, i64 %1
  %i.an = load i64, ptr %i.e, align 8, !tbaa !18
  %i.ao = add i64 %i.an, %i.am
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.ap = add i64 %i.f, %1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5ArrayIhE3AddEm.exit
  %storemerge = phi i64 [ %i.ap, %bb.i ], [ %i.ao, %_ZN5ArrayIhE3AddEm.exit ]
  %.0 = phi i64 [ %1, %bb.i ], [ %i.ah, %_ZN5ArrayIhE3AddEm.exit ]
  store i64 %storemerge, ptr %i.e, align 8, !tbaa !18
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %.not24 = icmp eq i64 %1, 0
  br i1 %.not24, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !8
  %i.as = add i64 %i.ar, %1                       ; 4 uses
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !19 ; 2 uses
  %i.av = icmp ugt i64 %i.as, %i.au
  br i1 %i.av, label %bb.m, label %._ZN5ArrayIhE3AddEm.exit30_crit_edge

._ZN5ArrayIhE3AddEm.exit30_crit_edge:             ; preds = %bb.l
  %.pre31 = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZN5ArrayIhE3AddEm.exit30

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !21 ; 3 uses
  %.not.i25 = icmp ne i64 %i.ax, 0
  %i.ay = icmp ugt i64 %i.as, %i.ax
  %or.cond.i26 = and i1 %.not.i25, %i.ay
  br i1 %or.cond.i26, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.ax)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i28 = load i64, ptr %i.at, align 8, !tbaa !19
  %.pre10.i29 = load i64, ptr %i.aq, align 8, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.az = phi i64 [ %.pre10.i29, %bb.n ], [ %i.as, %bb.m ]
  %i.ba = phi i64 [ %.pre.i28, %bb.n ], [ %i.au, %bb.m ] ; 2 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = add i64 %i.ba, 32
  %i.bd = add i64 %i.bc, %i.bb
  %..i27 = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.bd) ; 2 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !20
  %i.bf = tail call ptr @realloc(ptr noundef %i.be, i64 noundef %..i27) #12 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.bf, ptr %0, align 8, !tbaa !20
  store i64 %..i27, ptr %i.at, align 8, !tbaa !19
  br label %_ZN5ArrayIhE3AddEm.exit30

_ZN5ArrayIhE3AddEm.exit30:                        ; preds = %._ZN5ArrayIhE3AddEm.exit30_crit_edge, %bb.q
  %i.bh = phi ptr [ %.pre31, %._ZN5ArrayIhE3AddEm.exit30_crit_edge ], [ %i.bf, %bb.q ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bl
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(8256) %i.bj, ptr noundef nonnull %i.bm, i64 noundef %1)
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.bt = add i64 %i.bs, %i.br
  store i64 %i.bt, ptr %i.bk, align 8, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %_ZN5ArrayIhE3AddEm.exit30, %bb.j
  %.1 = phi i64 [ %.0, %bb.j ], [ %i.br, %_ZN5ArrayIhE3AddEm.exit30 ], [ 0, %bb.k ]
  ret i64 %.1
}

declare void @_ZN9CryptData12DecryptBlockEPhm(ptr noundef nonnull align 8 dereferenceable(2516), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7RawRead4ReadEPhm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = add i64 %i.b, %2                         ; 4 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN5ArrayIhE3AddEm.exit_crit_edge

._ZN5ArrayIhE3AddEm.exit_crit_edge:               ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZN5ArrayIhE3AddEm.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 3 uses
  %.not.i = icmp ne i64 %i.h, 0
  %i.i = icmp ugt i64 %i.c, %i.h
  %or.cond.i = and i1 %.not.i, %i.i
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str, i64 noundef %i.h)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !19
  %.pre10.i = load i64, ptr %i.a, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i64 [ %.pre10.i, %bb.d ], [ %i.c, %bb.c ]
  %i.k = phi i64 [ %.pre.i, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = lshr i64 %i.k, 2
  %i.m = add i64 %i.k, 32
  %i.n = add i64 %i.m, %i.l
  %..i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.n) ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !20
  %i.p = tail call ptr @realloc(ptr noundef %i.o, i64 noundef %..i) #12 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !20
  store i64 %..i, ptr %i.d, align 8, !tbaa !19
  br label %_ZN5ArrayIhE3AddEm.exit

_ZN5ArrayIhE3AddEm.exit:                          ; preds = %._ZN5ArrayIhE3AddEm.exit_crit_edge, %bb.g
  %i.r = phi ptr [ %.pre, %._ZN5ArrayIhE3AddEm.exit_crit_edge ], [ %i.p, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %1, i64 %2, i1 false)
  %i.v = load i64, ptr %i.s, align 8, !tbaa !18
  %i.w = add i64 %i.v, %2
  store i64 %i.w, ptr %i.s, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %_ZN5ArrayIhE3AddEm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i8 @_ZN7RawRead4Get1Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  store i64 %i.f, ptr %i.a, align 8, !tbaa !24
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = load i8, ptr %i.h, align 1, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i8 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i8 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i16 @_ZN7RawRead4Get2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = icmp ult i64 %i.c, %i.e
end_hunk_0
