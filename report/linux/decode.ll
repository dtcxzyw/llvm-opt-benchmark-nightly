inline.NumInlined: 144
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@insn_get_displacement:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 1, ptr %i.w, align 1, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  store i8 1, ptr %i.e, align 4, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.x = phi i8 [ %.pre, %._crit_edge ], [ %i.i, %bb.i ]
  %.not78 = icmp eq i8 %i.x, 0
  br i1 %.not78, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !30   ; 2 uses
  %i.aa = lshr i32 %i.z, 6
  %i.ab = and i32 %i.z, 7                         ; 2 uses
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !30
  %i.ad = and i32 %i.ac, 7
  %i.ae = and i32 %i.aa, 3                        ; 3 uses
  switch i32 %i.ae, label %bb.n [
    i32 3, label %bb.u
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %.not81 = icmp ugt ptr %i.ah, %i.aj
  br i1 %.not81, label %insn_get_sib.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0.copyload33 = load i8, ptr %i.ag, align 1
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !21
  %i.ak = sext i8 %.0.copyload33 to i32
  br label %.sink.split

bb.n:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24
  %i.an = icmp eq i8 %i.am, 2
  %i.ao = icmp eq i32 %i.ae, 0                    ; 3 uses
  %i.ap = icmp eq i32 %i.ae, 2                    ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = icmp eq i32 %i.ab, 6
  %or.cond = and i1 %i.aq, %i.ao
  %or.cond5 = or i1 %i.ap, %or.cond
  br i1 %or.cond5, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  %.not80 = icmp ugt ptr %i.at, %i.av
  br i1 %.not80, label %insn_get_sib.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.0.copyload25 = load i16, ptr %i.as, align 1
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !21
  %i.aw = sext i16 %.0.copyload25 to i32
  br label %.sink.split

bb.r:                                             ; preds = %bb.n
  %i.ax = icmp eq i32 %i.ab, 5
  %or.cond8 = and i1 %i.ax, %i.ao
  %or.cond11 = or i1 %i.ap, %or.cond8
  %i.ay = icmp eq i32 %i.ad, 5
  %or.cond14 = select i1 %i.ao, i1 %i.ay, i1 false
  %or.cond82 = select i1 %or.cond11, i1 true, i1 %or.cond14
  br i1 %or.cond82, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !20
  %.not79 = icmp ugt ptr %i.bb, %i.bd
  br i1 %.not79, label %insn_get_sib.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.0.copyload = load i32, ptr %i.ba, align 1
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !21
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.t, %bb.q
  %.sink91 = phi i32 [ %i.aw, %bb.q ], [ %.0.copyload, %bb.t ], [ %i.ak, %bb.m ]
  %.sink = phi i8 [ 2, %bb.q ], [ 4, %bb.t ], [ 1, %bb.m ]
  store i32 %.sink91, ptr %i.a, align 8, !tbaa !30
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 %.sink, ptr %i.be, align 1, !tbaa !31
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.r, %bb.k, %bb.j, %bb.o
  store i8 1, ptr %i.b, align 4, !tbaa !45
  br label %insn_get_sib.exit

insn_get_sib.exit:                                ; preds = %bb.g, %bb.c, %bb.l, %bb.p, %bb.s, %bb.a, %bb.u
  %.0 = phi i32 [ -61, %bb.l ], [ 0, %bb.a ], [ 0, %bb.u ], [ -61, %bb.s ], [ -61, %bb.p ], [ %i.g, %bb.c ], [ -61, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -61, 1) i32 @insn_get_immediate(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !30
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %__get_moffset.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @insn_get_displacement(ptr noundef nonnull %0) ; 2 uses
  %.not97 = icmp eq i32 %i.d, 0
  br i1 %.not97, label %bb.c, label %__get_moffset.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41   ; 3 uses
  %i.g = and i32 %i.f, 262144
  %.not98 = icmp eq i32 %i.g, 0
  br i1 %.not98, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  switch i8 %i.i, label %__get_moffset.exit.thread [
    i8 2, label %bb.e
    i8 4, label %bb.g
    i8 8, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %.not60.i = icmp ugt ptr %i.l, %i.n
  br i1 %.not60.i, label %__get_moffset.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.0.copyload27.i = load i16, ptr %i.k, align 1
  store ptr %i.l, ptr %i.j, align 8, !tbaa !21
  %i.o = sext i16 %.0.copyload27.i to i32
  store i32 %i.o, ptr %i.a, align 8, !tbaa !30
  br label %__get_moffset.exit

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %.not59.i = icmp ugt ptr %i.r, %i.t
  br i1 %.not59.i, label %__get_moffset.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0.copyload19.i = load i32, ptr %i.q, align 1
  store ptr %i.r, ptr %i.p, align 8, !tbaa !21
  store i32 %.0.copyload19.i, ptr %i.a, align 8, !tbaa !30
  br label %__get_moffset.exit

bb.i:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp ugt ptr %i.w, %i.y
  br i1 %.not.i, label %__get_moffset.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.0.copyload11.i = load i32, ptr %i.v, align 1
  store ptr %i.w, ptr %i.u, align 8, !tbaa !21
  store i32 %.0.copyload11.i, ptr %i.a, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 4, ptr %i.z, align 1, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.not58.i = icmp ugt ptr %i.aa, %i.y
  br i1 %.not58.i, label %__get_moffset.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.0.copyload.i = load i32, ptr %i.w, align 1
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !21
  store i32 %.0.copyload.i, ptr %i.ab, align 8, !tbaa !30
  br label %__get_moffset.exit

__get_moffset.exit:                               ; preds = %bb.f, %bb.h, %bb.k
  %.sink67.i = phi i64 [ 69, %bb.k ], [ 61, %bb.h ], [ 61, %bb.f ]
  %.sink.i = phi i8 [ 4, %bb.k ], [ 4, %bb.h ], [ 2, %bb.f ]
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink67.i
  store i8 %.sink.i, ptr %1, align 1, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.ac, align 4, !tbaa !30
  br label %bb.ac

bb.l:                                             ; preds = %bb.c
  %i.ad = and i32 %i.f, 28672
  %.not99 = icmp eq i32 %i.ad, 0
  br i1 %.not99, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = lshr i32 %i.f, 12
  %i.af = and i32 %i.ae, 7
  switch i32 %i.af, label %default.unreachable [
    i32 1, label %bb.n
    i32 2, label %bb.p
    i32 3, label %bb.r
    i32 4, label %bb.t
    i32 5, label %bb.w
    i32 6, label %bb.x
    i32 7, label %bb.y
    i32 0, label %__get_moffset.exit.thread
  ]

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %.not107 = icmp ugt ptr %i.ai, %i.ak
  br i1 %.not107, label %__get_moffset.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0.copyload43 = load i8, ptr %i.ah, align 1
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !21
  %i.al = sext i8 %.0.copyload43 to i32
  store i32 %i.al, ptr %i.a, align 8, !tbaa !30
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %.not106 = icmp ugt ptr %i.ao, %i.aq
  br i1 %.not106, label %__get_moffset.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.0.copyload35 = load i16, ptr %i.an, align 1
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !21
  %i.ar = sext i16 %.0.copyload35 to i32
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !30
  br label %.sink.split

bb.r:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20
  %.not105 = icmp ugt ptr %i.au, %i.aw
  br i1 %.not105, label %__get_moffset.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.0.copyload27 = load i32, ptr %i.at, align 1
  store ptr %i.au, ptr %i.as, align 8, !tbaa !21
  store i32 %.0.copyload27, ptr %i.a, align 8, !tbaa !30
  br label %.sink.split

bb.t:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20 ; 2 uses
  %.not103 = icmp ugt ptr %i.az, %i.bb
  br i1 %.not103, label %__get_moffset.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.0.copyload19 = load i32, ptr %i.ay, align 1
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !21
  store i32 %.0.copyload19, ptr %i.a, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 4, ptr %i.bc, align 1, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not104 = icmp ugt ptr %i.bd, %i.bb
  br i1 %.not104, label %__get_moffset.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.0.copyload11 = load i32, ptr %i.az, align 1
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !21
  store i32 %.0.copyload11, ptr %i.be, align 8, !tbaa !30
  br label %.sink.split

bb.w:                                             ; preds = %bb.m
  %i.bf = tail call fastcc i32 @__get_immptr(ptr noundef nonnull %0)
  %.not102 = icmp eq i32 %i.bf, 0
  br i1 %.not102, label %__get_moffset.exit.thread, label %bb.z

bb.x:                                             ; preds = %bb.m
  %i.bg = tail call fastcc i32 @__get_immv32(ptr noundef nonnull %0)
  %.not101 = icmp eq i32 %i.bg, 0
  br i1 %.not101, label %__get_moffset.exit.thread, label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.bh = tail call fastcc i32 @__get_immv(ptr noundef nonnull %0)
  %.not100 = icmp eq i32 %i.bh, 0
  br i1 %.not100, label %__get_moffset.exit.thread, label %bb.z

.sink.split:                                      ; preds = %bb.o, %bb.q, %bb.s, %bb.v
  %.sink127 = phi i64 [ 69, %bb.v ], [ 61, %bb.s ], [ 61, %bb.q ], [ 61, %bb.o ]
  %.sink = phi i8 [ 4, %bb.v ], [ 4, %bb.s ], [ 2, %bb.q ], [ 1, %bb.o ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.sink127
  store i8 %.sink, ptr %i.bi, align 1, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.y, %bb.x, %bb.w
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !41
  %i.bk = and i32 %i.bj, 131072
  %.not108 = icmp eq i32 %i.bk, 0
  br i1 %.not108, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !21 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20
  %.not109 = icmp ugt ptr %i.bn, %i.bp
  br i1 %.not109, label %__get_moffset.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.0.copyload = load i8, ptr %i.bm, align 1
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !21
  %i.br = sext i8 %.0.copyload to i32
  store i32 %i.br, ptr %i.bq, align 8, !tbaa !30
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 1, ptr %2, align 1, !tbaa !31
  br label %bb.ac

bb.ac:                                            ; preds = %__get_moffset.exit, %bb.z, %bb.ab, %bb.l
  store i8 1, ptr %i.b, align 4, !tbaa !30
  br label %__get_moffset.exit.thread

default.unreachable:                              ; preds = %bb.m
  unreachable

__get_moffset.exit.thread:                        ; preds = %bb.e, %bb.g, %bb.i, %bb.j, %bb.d, %bb.n, %bb.p, %bb.r, %bb.t, %bb.u, %bb.w, %bb.x, %bb.y, %bb.aa, %bb.m, %bb.b, %bb.a, %bb.ac
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ], [ 0, %bb.ac ], [ -61, %bb.m ], [ -61, %bb.aa ], [ -61, %bb.y ], [ -61, %bb.x ], [ -61, %bb.w ], [ -61, %bb.u ], [ -61, %bb.t ], [ -61, %bb.r ], [ -61, %bb.p ], [ -61, %bb.n ], [ -61, %bb.d ], [ -61, %bb.j ], [ -61, %bb.i ], [ -61, %bb.g ], [ -61, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @__get_immptr(ptr nofree noundef captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23    ; 2 uses
  switch i8 %i.b, label %bb.h [
    i8 2, label %bb.b
    i8 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not44 = icmp ugt ptr %i.e, %i.g
  br i1 %.not44, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload19 = load i16, ptr %i.d, align 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !21
  %i.i = sext i16 %.0.copyload19 to i32
  store i32 %i.i, ptr %i.h, align 8, !tbaa !30
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %.not = icmp ugt ptr %i.l, %i.n
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload11 = load i32, ptr %i.k, align 1
  store ptr %i.l, ptr %i.j, align 8, !tbaa !21
  store i32 %.0.copyload11, ptr %i.o, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.p = phi ptr [ %i.n, %bb.e ], [ %i.g, %bb.c ]
  %i.q = phi ptr [ %i.l, %bb.e ], [ %i.e, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.b, ptr %i.r, align 1, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  %.not45 = icmp ugt ptr %i.s, %i.p
  br i1 %.not45, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.0.copyload = load i16, ptr %i.q, align 1
  store ptr %i.s, ptr %i.t, align 8, !tbaa !21
  %i.v = zext i16 %.0.copyload to i32
  store i32 %i.v, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 2, ptr %i.w, align 1, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.x, align 4, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.y, align 4, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.a, %bb.f, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @__get_immv32(ptr nofree noundef captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23
  switch i8 %i.b, label %bb.f [
    i8 2, label %bb.b
    i8 4, label %bb.d
    i8 8, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %.not28 = icmp ugt ptr %i.e, %i.g
  br i1 %.not28, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload11 = load i16, ptr %i.d, align 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !21
  %i.i = sext i16 %.0.copyload11 to i32
  store i32 %i.i, ptr %i.h, align 8, !tbaa !30
  br label %.sink.split

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %.not = icmp ugt ptr %i.l, %i.n
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload = load i32, ptr %i.k, align 1
  store ptr %i.l, ptr %i.j, align 8, !tbaa !21
  store i32 %.0.copyload, ptr %i.o, align 8, !tbaa !30
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.c
  %.sink = phi i8 [ 2, %bb.c ], [ 4, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %.sink, ptr %i.p, align 1, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @__get_immv(ptr nofree noundef captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23
  switch i8 %i.b, label %bb.j [
    i8 2, label %bb.b
    i8 4, label %bb.d
    i8 8, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %.not61 = icmp ugt ptr %i.e, %i.g
  br i1 %.not61, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload27 = load i16, ptr %i.d, align 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !21
  %i.i = sext i16 %.0.copyload27 to i32
  store i32 %i.i, ptr %i.h, align 8, !tbaa !30
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %.not60 = icmp ugt ptr %i.l, %i.n
  br i1 %.not60, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload19 = load i32, ptr %i.k, align 1
  store ptr %i.l, ptr %i.j, align 8, !tbaa !21
  store i32 %.0.copyload19, ptr %i.o, align 8, !tbaa !30
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %.not = icmp ugt ptr %i.r, %i.t
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload11 = load i32, ptr %i.q, align 1
  store ptr %i.r, ptr %i.p, align 8, !tbaa !21
  store i32 %.0.copyload11, ptr %i.u, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 4, ptr %i.v, align 1, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.not59 = icmp ugt ptr %i.w, %i.t
end_hunk_0
