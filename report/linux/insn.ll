inline.NumInlined: 91
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@insn_get_displacement:bb.a
  %i.w = getelementptr i8, ptr %0, i64 45
  store i8 1, ptr %i.w, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  store i8 1, ptr %i.e, align 4
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.x = phi i8 [ %.pre, %._crit_edge ], [ %i.i, %bb.i ]
  %.not75 = icmp eq i8 %i.x, 0
  br i1 %.not75, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %i.aa = lshr i32 %i.z, 6
  %i.ab = and i32 %i.z, 7                         ; 2 uses
  %i.ac = load i32, ptr %i.d, align 8
  %i.ad = and i32 %i.ac, 7
  %i.ae = and i32 %i.aa, 3                        ; 3 uses
  switch i32 %i.ae, label %bb.n [
    i32 3, label %bb.u
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 1      ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not78 = icmp ugt ptr %i.ah, %i.aj
  br i1 %.not78, label %insn_get_sib.exit, label %bb.m, !prof !10

bb.m:                                             ; preds = %bb.l
  %.0.copyload33 = load i8, ptr %i.ag, align 1
  store ptr %i.ah, ptr %i.af, align 8
  %i.ak = sext i8 %.0.copyload33 to i32
  br label %.sink.split

bb.n:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %0, i64 81
  %i.am = load i8, ptr %i.al, align 1
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
  %i.ar = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 2      ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 96
  %i.av = load ptr, ptr %i.au, align 8
  %.not77 = icmp ugt ptr %i.at, %i.av
  br i1 %.not77, label %insn_get_sib.exit, label %bb.q, !prof !10

bb.q:                                             ; preds = %bb.p
  %.0.copyload25 = load i16, ptr %i.as, align 1
  store ptr %i.at, ptr %i.ar, align 8
  %i.aw = sext i16 %.0.copyload25 to i32
  br label %.sink.split

bb.r:                                             ; preds = %bb.n
  %i.ax = icmp eq i32 %i.ab, 5
  %or.cond8 = and i1 %i.ax, %i.ao
  %or.cond11 = or i1 %i.ap, %or.cond8
  %i.ay = icmp eq i32 %i.ad, 5
  %or.cond14 = select i1 %i.ao, i1 %i.ay, i1 false
  %or.cond79 = select i1 %or.cond11, i1 true, i1 %or.cond14
  br i1 %or.cond79, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 4      ; 2 uses
  %i.bc = getelementptr i8, ptr %0, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8
  %.not76 = icmp ugt ptr %i.bb, %i.bd
  br i1 %.not76, label %insn_get_sib.exit, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  %.0.copyload = load i32, ptr %i.ba, align 1
  store ptr %i.bb, ptr %i.az, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.t, %bb.q
  %.sink88 = phi i32 [ %i.aw, %bb.q ], [ %.0.copyload, %bb.t ], [ %i.ak, %bb.m ]
  %.sink = phi i8 [ 2, %bb.q ], [ 4, %bb.t ], [ 1, %bb.m ]
  store i32 %.sink88, ptr %i.a, align 8
  %i.be = getelementptr i8, ptr %0, i64 53
  store i8 %.sink, ptr %i.be, align 1
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.r, %bb.k, %bb.j, %bb.o
  store i8 1, ptr %i.b, align 4
  br label %insn_get_sib.exit

insn_get_sib.exit:                                ; preds = %bb.g, %bb.c, %bb.l, %bb.p, %bb.s, %bb.a, %bb.u
  %.0 = phi i32 [ -61, %bb.l ], [ 0, %bb.a ], [ 0, %bb.u ], [ -61, %bb.s ], [ -61, %bb.p ], [ %i.g, %bb.c ], [ -61, %bb.g ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -61, 1) i32 @insn_get_immediate(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %i.c = load i8, ptr %i.b, align 4
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %__get_moffset.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @insn_get_displacement(ptr noundef %0) #8 ; 2 uses
  %.not91 = icmp eq i32 %i.d, 0
  br i1 %.not91, label %bb.c, label %__get_moffset.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 76         ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = and i32 %i.f, 262144
  %.not92 = icmp eq i32 %i.g, 0
  br i1 %.not92, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 81
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %__get_moffset.exit.thread [
    i8 2, label %bb.e
    i8 4, label %bb.g
    i8 8, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 2        ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  %.not56.i = icmp ugt ptr %i.l, %i.n
  br i1 %.not56.i, label %__get_moffset.exit.thread, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %.0.copyload27.i = load i16, ptr %i.k, align 1
  store ptr %i.l, ptr %i.j, align 8
  %i.o = sext i16 %.0.copyload27.i to i32
  store i32 %i.o, ptr %i.a, align 8
  br label %__get_moffset.exit

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4        ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8
  %.not55.i = icmp ugt ptr %i.r, %i.t
  br i1 %.not55.i, label %__get_moffset.exit.thread, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %.0.copyload19.i = load i32, ptr %i.q, align 1
  store ptr %i.r, ptr %i.p, align 8
  store i32 %.0.copyload19.i, ptr %i.a, align 8
  br label %__get_moffset.exit

bb.i:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 104        ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4        ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i = icmp ugt ptr %i.w, %i.y
  br i1 %.not.i, label %__get_moffset.exit.thread, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  %.0.copyload11.i = load i32, ptr %i.v, align 1
  store ptr %i.w, ptr %i.u, align 8
  store i32 %.0.copyload11.i, ptr %i.a, align 8
  %i.z = getelementptr i8, ptr %0, i64 61
  store i8 4, ptr %i.z, align 1
  %i.aa = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  %.not54.i = icmp ugt ptr %i.aa, %i.y
  br i1 %.not54.i, label %__get_moffset.exit.thread, label %bb.k, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %0, i64 64
  %.0.copyload.i = load i32, ptr %i.w, align 1
  store ptr %i.aa, ptr %i.u, align 8
  store i32 %.0.copyload.i, ptr %i.ab, align 8
  br label %__get_moffset.exit

__get_moffset.exit:                               ; preds = %bb.f, %bb.h, %bb.k
  %.sink63.i = phi i64 [ 69, %bb.k ], [ 61, %bb.h ], [ 61, %bb.f ]
  %.sink.i = phi i8 [ 4, %bb.k ], [ 4, %bb.h ], [ 2, %bb.f ]
  %i.ac = getelementptr i8, ptr %0, i64 %.sink63.i
  store i8 %.sink.i, ptr %i.ac, align 1
  br label %.sink.split122

bb.l:                                             ; preds = %bb.c
  %i.ad = and i32 %i.f, 28672
  %.not93 = icmp eq i32 %i.ad, 0
  br i1 %.not93, label %bb.ac, label %bb.m

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
  %i.ag = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 1      ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not101 = icmp ugt ptr %i.ai, %i.ak
  br i1 %.not101, label %__get_moffset.exit.thread, label %bb.o, !prof !10

bb.o:                                             ; preds = %bb.n
  %.0.copyload43 = load i8, ptr %i.ah, align 1
  store ptr %i.ai, ptr %i.ag, align 8
  %i.al = sext i8 %.0.copyload43 to i32
  store i32 %i.al, ptr %i.a, align 8
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 2      ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8
  %.not100 = icmp ugt ptr %i.ao, %i.aq
  br i1 %.not100, label %__get_moffset.exit.thread, label %bb.q, !prof !10

bb.q:                                             ; preds = %bb.p
  %.0.copyload35 = load i16, ptr %i.an, align 1
  store ptr %i.ao, ptr %i.am, align 8
  %i.ar = sext i16 %.0.copyload35 to i32
  store i32 %i.ar, ptr %i.a, align 8
  br label %.sink.split

bb.r:                                             ; preds = %bb.m
  %i.as = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 4      ; 2 uses
  %i.av = getelementptr i8, ptr %0, i64 96
  %i.aw = load ptr, ptr %i.av, align 8
  %.not99 = icmp ugt ptr %i.au, %i.aw
  br i1 %.not99, label %__get_moffset.exit.thread, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  %.0.copyload27 = load i32, ptr %i.at, align 1
  store ptr %i.au, ptr %i.as, align 8
  store i32 %.0.copyload27, ptr %i.a, align 8
  br label %.sink.split

bb.t:                                             ; preds = %bb.m
  %i.ax = getelementptr i8, ptr %0, i64 104       ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 4      ; 3 uses
  %i.ba = getelementptr i8, ptr %0, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not97 = icmp ugt ptr %i.az, %i.bb
  br i1 %.not97, label %__get_moffset.exit.thread, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  %.0.copyload19 = load i32, ptr %i.ay, align 1
  store ptr %i.az, ptr %i.ax, align 8
  store i32 %.0.copyload19, ptr %i.a, align 8
  %i.bc = getelementptr i8, ptr %0, i64 61
  store i8 4, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %i.ay, i64 8      ; 2 uses
  %.not98 = icmp ugt ptr %i.bd, %i.bb
  br i1 %.not98, label %__get_moffset.exit.thread, label %bb.v, !prof !10

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr i8, ptr %0, i64 64
  %.0.copyload11 = load i32, ptr %i.az, align 1
  store ptr %i.bd, ptr %i.ax, align 8
  store i32 %.0.copyload11, ptr %i.be, align 8
  br label %.sink.split

bb.w:                                             ; preds = %bb.m
  %i.bf = tail call fastcc i32 @__get_immptr(ptr noundef %0) #8, !srcloc !18
  %.not96 = icmp eq i32 %i.bf, 0
  br i1 %.not96, label %__get_moffset.exit.thread, label %bb.z

bb.x:                                             ; preds = %bb.m
  %i.bg = tail call fastcc i32 @__get_immv32(ptr noundef %0) #8, !srcloc !19
  %.not95 = icmp eq i32 %i.bg, 0
  br i1 %.not95, label %__get_moffset.exit.thread, label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.bh = tail call fastcc i32 @__get_immv(ptr noundef %0) #8, !srcloc !20
  %.not94 = icmp eq i32 %i.bh, 0
  br i1 %.not94, label %__get_moffset.exit.thread, label %bb.z

.sink.split:                                      ; preds = %bb.o, %bb.q, %bb.s, %bb.v
  %.sink121 = phi i64 [ 69, %bb.v ], [ 61, %bb.s ], [ 61, %bb.q ], [ 61, %bb.o ]
  %.sink = phi i8 [ 4, %bb.v ], [ 4, %bb.s ], [ 2, %bb.q ], [ 1, %bb.o ]
  %i.bi = getelementptr i8, ptr %0, i64 %.sink121
  store i8 %.sink, ptr %i.bi, align 1
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.y, %bb.x, %bb.w
  %i.bj = load i32, ptr %i.e, align 4
  %i.bk = and i32 %i.bj, 131072
  %.not102 = icmp eq i32 %i.bk, 0
  br i1 %.not102, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 1      ; 2 uses
  %i.bo = getelementptr i8, ptr %0, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8
  %.not103 = icmp ugt ptr %i.bn, %i.bp
  br i1 %.not103, label %__get_moffset.exit.thread, label %bb.ab, !prof !10

bb.ab:                                            ; preds = %bb.aa
  %i.bq = getelementptr i8, ptr %0, i64 64
  %.0.copyload = load i8, ptr %i.bm, align 1
  store ptr %i.bn, ptr %i.bl, align 8
  %i.br = sext i8 %.0.copyload to i32
  store i32 %i.br, ptr %i.bq, align 8
  br label %.sink.split122

.sink.split122:                                   ; preds = %bb.ab, %__get_moffset.exit
  %.sink124 = phi i64 [ 68, %__get_moffset.exit ], [ 69, %bb.ab ]
  %1 = getelementptr i8, ptr %0, i64 %.sink124
  store i8 1, ptr %1, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split122, %bb.z, %bb.l
  store i8 1, ptr %i.b, align 4
  br label %__get_moffset.exit.thread

default.unreachable:                              ; preds = %bb.m
  unreachable

__get_moffset.exit.thread:                        ; preds = %bb.e, %bb.g, %bb.i, %bb.j, %bb.d, %bb.n, %bb.p, %bb.r, %bb.t, %bb.u, %bb.w, %bb.x, %bb.y, %bb.aa, %bb.m, %bb.b, %bb.a, %bb.ac
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ], [ 0, %bb.ac ], [ -61, %bb.m ], [ -61, %bb.aa ], [ -61, %bb.y ], [ -61, %bb.x ], [ -61, %bb.w ], [ -61, %bb.u ], [ -61, %bb.t ], [ -61, %bb.r ], [ -61, %bb.p ], [ -61, %bb.n ], [ -61, %bb.d ], [ -61, %bb.j ], [ -61, %bb.i ], [ -61, %bb.g ], [ -61, %bb.e ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @__get_immptr(ptr nofree noundef captures(none) %0) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  switch i8 %i.b, label %bb.h [
    i8 2, label %bb.b
    i8 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 2        ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not41 = icmp ugt ptr %i.e, %i.g
  br i1 %.not41, label %bb.h, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 56
  %.0.copyload19 = load i16, ptr %i.d, align 1
  store ptr %i.e, ptr %i.c, align 8
  %i.i = sext i16 %.0.copyload19 to i32
  store i32 %i.i, ptr %i.h, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4        ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not = icmp ugt ptr %i.l, %i.n
  br i1 %.not, label %bb.h, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 56
  %.0.copyload11 = load i32, ptr %i.k, align 1
  store ptr %i.l, ptr %i.j, align 8
  store i32 %.0.copyload11, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.p = phi ptr [ %i.n, %bb.e ], [ %i.g, %bb.c ]
  %i.q = phi ptr [ %i.l, %bb.e ], [ %i.e, %bb.c ] ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 61
  store i8 %i.b, ptr %i.r, align 1
  %i.s = getelementptr i8, ptr %i.q, i64 2        ; 2 uses
  %.not42 = icmp ugt ptr %i.s, %i.p
  br i1 %.not42, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %0, i64 104
  %i.u = getelementptr i8, ptr %0, i64 64
  %.0.copyload = load i16, ptr %i.q, align 1
  store ptr %i.s, ptr %i.t, align 8
  %i.v = zext i16 %.0.copyload to i32
  store i32 %i.v, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %0, i64 69
  store i8 2, ptr %i.w, align 1
  %i.x = getelementptr i8, ptr %0, i64 68
  store i8 1, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %0, i64 60
  store i8 1, ptr %i.y, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.a, %bb.f, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @__get_immv32(ptr nofree noundef captures(none) %0) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8
  switch i8 %i.b, label %bb.f [
    i8 2, label %bb.b
    i8 4, label %bb.d
    i8 8, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 2        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %.not26 = icmp ugt ptr %i.e, %i.g
  br i1 %.not26, label %bb.f, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 56
  %.0.copyload11 = load i16, ptr %i.d, align 1
  store ptr %i.e, ptr %i.c, align 8
  %i.i = sext i16 %.0.copyload11 to i32
  store i32 %i.i, ptr %i.h, align 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4        ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  %.not = icmp ugt ptr %i.l, %i.n
  br i1 %.not, label %bb.f, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 56
  %.0.copyload = load i32, ptr %i.k, align 1
  store ptr %i.l, ptr %i.j, align 8
  store i32 %.0.copyload, ptr %i.o, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.c
  %.sink = phi i8 [ 2, %bb.c ], [ 4, %bb.e ]
  %i.p = getelementptr i8, ptr %0, i64 61
  store i8 %.sink, ptr %i.p, align 1
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @__get_immv(ptr nofree noundef captures(none) %0) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8
  switch i8 %i.b, label %bb.j [
    i8 2, label %bb.b
    i8 4, label %bb.d
    i8 8, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 2        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %.not57 = icmp ugt ptr %i.e, %i.g
  br i1 %.not57, label %bb.j, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 56
  %.0.copyload27 = load i16, ptr %i.d, align 1
  store ptr %i.e, ptr %i.c, align 8
  %i.i = sext i16 %.0.copyload27 to i32
  store i32 %i.i, ptr %i.h, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4        ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  %.not56 = icmp ugt ptr %i.l, %i.n
  br i1 %.not56, label %bb.j, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 56
  %.0.copyload19 = load i32, ptr %i.k, align 1
  store ptr %i.l, ptr %i.j, align 8
  store i32 %.0.copyload19, ptr %i.o, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 104        ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4        ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not = icmp ugt ptr %i.r, %i.t
  br i1 %.not, label %bb.j, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %0, i64 56
  %.0.copyload11 = load i32, ptr %i.q, align 1
  store ptr %i.r, ptr %i.p, align 8
  store i32 %.0.copyload11, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %0, i64 61
  store i8 4, ptr %i.v, align 1
  %i.w = getelementptr i8, ptr %i.q, i64 8        ; 2 uses
  %.not55 = icmp ugt ptr %i.w, %i.t
end_hunk_0
