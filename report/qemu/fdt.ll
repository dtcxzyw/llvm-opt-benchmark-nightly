Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fdt?download=true
inline.NumInlined: 70
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -19, 2147483647) i32 @fdt_ro_probe_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw i32 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = or disjoint i32 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = or disjoint i32 %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q               ; 2 uses
  %i.s = ptrtoint ptr %0 to i64
  %i.t = and i64 %i.s, 7
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.u = load i32, ptr %0, align 8
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  switch i32 %i.v, label %bb.g [
    i32 -804389139, label %bb.c
    i32 804389138, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load i32, ptr %i.w, align 4
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = icmp ult i32 %i.y, 2
  br i1 %i.z, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = icmp ugt i32 %i.ac, 17
  br i1 %i.ad, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = or i8 %i.ah, %i.af
  %i.an = or i8 %i.am, %i.aj
  %i.ao = or i8 %i.an, %i.al
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aq = icmp ult i32 %i.r, 2147483647
  %. = select i1 %i.aq, i32 %i.r, i32 -8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ -7, %bb.e ], [ -10, %bb.d ], [ %., %bb.f ], [ -9, %bb.b ], [ -19, %bb.a ], [ -10, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 28, 41) i64 @fdt_header_size_(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %0, 2
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 2
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i32 %0, 4
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult i32 %0, 17
  %. = select i1 %i.d, i64 36, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ 36, %bb.c ], [ 28, %bb.a ], [ 32, %bb.b ], [ %., %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 28, 41) i64 @fdt_header_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 1              ; 2 uses
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)  ; 3 uses
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %fdt_header_size_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.b, 33554432
  br i1 %i.e, label %fdt_header_size_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i32 %i.c, 4
  br i1 %i.f, label %fdt_header_size_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i32 %i.c, 17
  %..i = select i1 %i.g, i64 36, i64 40
  br label %fdt_header_size_.exit

fdt_header_size_.exit:                            ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ 36, %bb.c ], [ 28, %bb.a ], [ 32, %bb.b ], [ %..i, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -19, 1) i32 @fdt_check_header(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %check_block_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8
  %.not26 = icmp eq i32 %i.c, -302117424
  br i1 %.not26, label %bb.c, label %check_block_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)  ; 5 uses
  %i.g = icmp ult i32 %i.f, 2
  br i1 %i.g, label %check_block_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)  ; 2 uses
  %i.k = icmp ugt i32 %i.j, 17
  %i.l = icmp ult i32 %i.f, %i.j
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %check_block_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.e, 33554432
  br i1 %i.m, label %fdt_header_size.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp ult i32 %i.f, 4
  br i1 %i.n, label %fdt_header_size.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ult i32 %i.f, 17
  %..i.i = select i1 %i.o, i64 36, i64 40
  br label %fdt_header_size.exit

fdt_header_size.exit:                             ; preds = %bb.e, %bb.f, %bb.g
  %.0.i.i = phi i64 [ 36, %bb.f ], [ %..i.i, %bb.g ], [ 32, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.p, align 4, !tbaa !14
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw i32 %i.r, 24                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.y = load i8, ptr %i.x, align 2, !tbaa !14
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.w, %i.ad
  %i.af = or disjoint i32 %i.ae, %i.aa
  %i.ag = or disjoint i32 %i.af, %i.s             ; 6 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ugt i64 %.0.i.i, %i.ah
  %i.aj = icmp slt i32 %i.s, 0
  %or.cond40 = or i1 %i.aj, %i.ai
  br i1 %or.cond40, label %check_block_.exit.thread, label %bb.h

bb.h:                                             ; preds = %fdt_header_size.exit
  %i.ak = trunc nuw nsw i64 %.0.i.i to i32        ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 8
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am) ; 2 uses
  %i.ao = icmp ult i32 %i.an, %i.ak
  %i.ap = icmp ugt i32 %i.an, %i.ag
  %.not43 = or i1 %i.ao, %i.ap
  br i1 %.not43, label %check_block_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ult i32 %i.f, 17
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as) ; 4 uses
  %i.au = icmp ult i32 %i.at, %i.ak
  %i.av = icmp ugt i32 %i.at, %i.ag
  %.not47 = or i1 %i.au, %i.av                    ; 2 uses
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not47, label %check_block_.exit.thread, label %bb.m

bb.k:                                             ; preds = %bb.i
  br i1 %.not47, label %check_block_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.az = add i32 %i.ay, %i.at                    ; 2 uses
  %i.ba = icmp ult i32 %i.az, %i.at
  %.not44 = icmp ugt i32 %i.az, %i.ag
  %or.cond49 = or i1 %i.ba, %.not44
  br i1 %or.cond49, label %check_block_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc) ; 4 uses
  %i.be = icmp ult i32 %i.bd, %i.ak
  %i.bf = icmp ugt i32 %i.bd, %i.ag
  %.not15.i31 = or i1 %i.be, %i.bf
  br i1 %.not15.i31, label %check_block_.exit34.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = add i32 %i.bi, %i.bd                    ; 2 uses
  %i.bk = icmp ult i32 %i.bj, %i.bd
  br i1 %i.bk, label %check_block_.exit34.thread, label %check_block_.exit34

check_block_.exit34:                              ; preds = %bb.n
  %.not48 = icmp ugt i32 %i.bj, %i.ag
  %cond.fr = freeze i1 %.not48
  br i1 %cond.fr, label %check_block_.exit34.thread, label %check_block_.exit.thread

check_block_.exit34.thread:                       ; preds = %bb.n, %bb.m, %check_block_.exit34
  br label %check_block_.exit.thread

check_block_.exit.thread:                         ; preds = %bb.l, %bb.k, %check_block_.exit34.thread, %check_block_.exit34, %bb.j, %bb.h, %fdt_header_size.exit, %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ -10, %bb.c ], [ -19, %bb.a ], [ -8, %check_block_.exit34.thread ], [ 0, %check_block_.exit34 ], [ -8, %bb.j ], [ -8, %bb.h ], [ -8, %bb.l ], [ -8, %fdt_header_size.exit ], [ -9, %bb.b ], [ -10, %bb.d ], [ -8, %bb.k ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @fdt_offset_ptr(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14    ; 2 uses
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw i32 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = or disjoint i32 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14    ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = or disjoint i32 %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q
  %i.s = add i32 %i.r, %1                         ; 3 uses
  %i.t = icmp slt i32 %1, 0
  %i.u = icmp ult i32 %i.s, %1
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = add i32 %i.s, %2                         ; 2 uses
  %i.w = icmp ult i32 %i.v, %i.s
  br i1 %i.w, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 1
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = icmp ugt i32 %i.v, %i.z
  br i1 %i.aa, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = icmp ugt i32 %i.ad, 16
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.af = add i32 %2, %1                          ; 2 uses
  %i.ag = icmp ult i32 %i.af, %1
  br i1 %i.ag, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = icmp ugt i32 %i.af, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.al = zext i8 %i.b to i64
  %i.am = shl nuw nsw i64 %i.al, 24
  %i.an = zext i8 %i.f to i64
  %i.ao = shl nuw nsw i64 %i.an, 16
  %i.ap = zext i8 %i.k to i64
  %i.aq = shl nuw nsw i64 %i.ap, 8
  %i.ar = zext i8 %i.p to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.am
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  %i.aw = zext nneg i32 %1 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.c, %bb.a, %bb.g
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ %i.ax, %bb.g ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @fdt_next_tag(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #3 {
bb.a:
  store i32 -8, ptr %2, align 4, !tbaa !15
  %i.a = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %1, i32 noundef 4) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge43, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %rev.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.b) ; 2 uses
  %i.c = add i32 %1, 4                            ; 5 uses
  store i32 -11, ptr %2, align 4, !tbaa !15
  switch i32 %rev.i, label %.critedge43 [
    i32 1, label %.preheader
    i32 3, label %bb.d
    i32 9, label %.critedge
    i32 2, label %.critedge
    i32 4, label %.critedge
  ]

.preheader:                                       ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ %i.c, %bb.b ]  ; 2 uses
  %i.d = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %.0, i32 noundef 1) ; 2 uses
  %.not41 = icmp eq ptr %i.d, null
  br i1 %.not41, label %.critedge43, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.e = add nsw i32 %.0, 1                       ; 2 uses
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not40 = icmp eq i8 %i.f, 0
  br i1 %.not40, label %.critedge, label %.preheader, !llvm.loop !0

bb.d:                                             ; preds = %bb.b
  %i.g = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %i.c, i32 noundef 4) ; 2 uses
  %.not38 = icmp eq ptr %i.g, null
  br i1 %.not38, label %.critedge43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15
  %rev.i44 = tail call noundef i32 @llvm.bswap.i32(i32 %i.h) ; 2 uses
  %i.i = add i32 %1, 12                           ; 2 uses
  %i.j = add i32 %i.i, %rev.i44                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 1
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = icmp ult i32 %i.m, 16
  %i.o = icmp ugt i32 %rev.i44, 7
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.p = and i32 %i.i, 7
  %.not39 = icmp eq i32 %i.p, 0
  %i.q = add nsw i32 %i.j, 4
  %spec.select = select i1 %.not39, i32 %i.j, i32 %i.q
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.f, %bb.b, %bb.b, %bb.b, %bb.e
  %.1 = phi i32 [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %spec.select, %bb.f ], [ %i.j, %bb.e ], [ %i.e, %bb.c ] ; 2 uses
  %i.r = sub nsw i32 %.1, %1
  %i.s = tail call ptr @fdt_offset_ptr(ptr noundef %0, i32 noundef %1, i32 noundef %i.r)
  %.not42 = icmp eq ptr %i.s, null
  br i1 %.not42, label %.critedge43, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.t = add i32 %.1, 3
  %i.u = and i32 %i.t, -4
  store i32 %i.u, ptr %2, align 4, !tbaa !15
  br label %.critedge43

.critedge43:                                      ; preds = %.preheader, %.critedge, %bb.b, %bb.d, %bb.a, %bb.g
  %.036 = phi i32 [ 9, %bb.d ], [ %rev.i, %bb.g ], [ 9, %bb.b ], [ 9, %bb.a ], [ 9, %.critedge ], [ 9, %.preheader ]
  ret i32 %.036
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @fdt_check_node_offset_(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = and i32 %1, -2147483645
  %or.cond = icmp eq i32 %i.b, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @fdt_next_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a)
  %.not2 = icmp eq i32 %i.c, 1
  %i.d = load i32, ptr %i.a, align 4
  %spec.select = select i1 %.not2, i32 %i.d, i32 -4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -4, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @fdt_check_prop_offset_(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = and i32 %1, -2147483645
  %or.cond = icmp eq i32 %i.b, 0
  br i1 %or.cond, label %bb.b, label %bb.c
end_hunk_0
