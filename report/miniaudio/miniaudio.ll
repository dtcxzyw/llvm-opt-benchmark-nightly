Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_dr_flac__read_uint16:bb.a
  %i.ah = shl i32 %i.aa, %i.t
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !740 ; 2 uses
  %i.aj = lshr i64 -1, %i.ac
  %i.ak = xor i64 %i.aj, -1
  %i.al = and i64 %i.ai, %i.ak
  %i.am = sub nuw nsw i64 64, %i.ac
  %i.an = lshr i64 %i.al, %i.am
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = or i32 %i.ah, %i.ao
  %i.aq = add i32 %i.ad, %i.t
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !739
  %i.ar = shl i64 %i.ai, %i.ac
  store i64 %i.ar, ptr %i.u, align 8, !tbaa !740
  br label %ma_dr_flac__read_uint32.exit

ma_dr_flac__read_uint32.exit:                     ; preds = %bb.g, %bb.d
  %.03 = phi i32 [ %i.p, %bb.d ], [ %i.ap, %bb.g ]
  %i.as = trunc i32 %.03 to i16
  store i16 %i.as, ptr %2, align 2, !tbaa !122
  br label %ma_dr_flac__read_uint32.exit.thread

ma_dr_flac__read_uint32.exit.thread:              ; preds = %bb.f, %bb.e, %bb.b, %ma_dr_flac__read_uint32.exit
  %.0 = phi i32 [ 1, %ma_dr_flac__read_uint32.exit ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_flac__read_subframe_header(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 9 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !739  ; 2 uses
  %i.c = icmp eq i32 %i.b, 64
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %.critedge, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !739
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.a
  %i.e = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = sub nsw i64 64, %i.f                     ; 3 uses
  %.not34.i.i = icmp ult i64 %i.g, 8
  br i1 %.not34.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !740  ; 2 uses
  %i.j = lshr i64 %i.i, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add i32 %i.e, 8
  store i32 %i.l, ptr %i.a, align 4, !tbaa !739
  %i.m = shl i64 %i.i, 8
  store i64 %i.m, ptr %i.h, align 8, !tbaa !740
  br label %ma_dr_flac__read_uint8.exit

bb.e:                                             ; preds = %bb.c
  %i.n = trunc nuw nsw i64 %i.g to i32
  %i.o = sub nuw nsw i32 8, %i.n                  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !740
  %i.r = lshr i64 -1, %i.g
  %i.s = xor i64 %i.r, -1
  %i.t = and i64 %i.q, %i.s
  %i.u = lshr i64 %i.t, %i.f
  %i.v = trunc i64 %i.u to i32
  %i.w = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not35.i.i = icmp eq i32 %i.w, 0
  br i1 %.not35.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = zext nneg i32 %i.o to i64                ; 4 uses
  %i.y = load i32, ptr %i.a, align 4, !tbaa !739  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = sub nsw i64 64, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.x
  br i1 %i.ab, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = shl i32 %i.v, %i.o
  %i.ad = load i64, ptr %i.p, align 8, !tbaa !740 ; 2 uses
  %i.ae = lshr i64 -1, %i.x
  %i.af = xor i64 %i.ae, -1
  %i.ag = and i64 %i.ad, %i.af
  %i.ah = sub nuw nsw i64 64, %i.x
  %i.ai = lshr i64 %i.ag, %i.ah
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = or i32 %i.ac, %i.aj
  %i.al = add i32 %i.y, %i.o
  store i32 %i.al, ptr %i.a, align 4, !tbaa !739
  %i.am = shl i64 %i.ad, %i.x
  store i64 %i.am, ptr %i.p, align 8, !tbaa !740
  br label %ma_dr_flac__read_uint8.exit

ma_dr_flac__read_uint8.exit:                      ; preds = %bb.d, %bb.g
  %.03.i = phi i32 [ %i.k, %bb.d ], [ %i.ak, %bb.g ]
  %i.an = trunc i32 %.03.i to i8                  ; 5 uses
  %.not25 = icmp sgt i8 %i.an, -1
  br i1 %.not25, label %bb.h, label %.critedge

bb.h:                                             ; preds = %ma_dr_flac__read_uint8.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  store i8 0, ptr %i.ao, align 2, !tbaa !1195
  %i.ap = lshr i8 %i.an, 1                        ; 3 uses
  switch i8 %i.ap, label %bb.k [
    i8 0, label %bb.i
    i8 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %1, align 8, !tbaa !1196
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  store i8 1, ptr %1, align 8, !tbaa !1196
  br label %bb.q

bb.k:                                             ; preds = %bb.h
  %.not26 = icmp samesign ult i8 %i.an, 64
  br i1 %.not26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 32, ptr %1, align 8, !tbaa !1196
  %i.aq = and i8 %i.ap, 31
  %narrow = add nuw nsw i8 %i.aq, 1
  store i8 %narrow, ptr %i.ao, align 2, !tbaa !1195
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ar = and i8 %i.an, 16
  %.not27 = icmp eq i8 %i.ar, 0
  br i1 %.not27, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 8, ptr %1, align 8, !tbaa !1196
  %i.as = and i8 %i.ap, 7                         ; 2 uses
  store i8 %i.as, ptr %i.ao, align 2, !tbaa !1195
  %i.at = icmp samesign ugt i8 %i.as, 4
  br i1 %i.at, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store i8 -1, ptr %1, align 8, !tbaa !1196
  store i8 0, ptr %i.ao, align 2, !tbaa !1195
  br label %.critedge

bb.p:                                             ; preds = %bb.m
  store i8 -1, ptr %1, align 8, !tbaa !1196
  br label %.critedge

bb.q:                                             ; preds = %bb.j, %bb.n, %bb.l, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 0, ptr %i.au, align 1, !tbaa !734
  %i.av = and i8 %i.an, 1
  %.not28 = icmp eq i8 %i.av, 0
  br i1 %.not28, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.s
  %.0.i = phi i32 [ %i.az, %bb.s ], [ 0, %.preheader ] ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !740 ; 6 uses
  switch i64 %i.ax, label %bb.u [
    i64 0, label %bb.s
    i64 1, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !739
  %reass.sub23.i = add i32 %.0.i, 64
  %i.az = sub i32 %reass.sub23.i, %i.ay
  %i.ba = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not24.i = icmp eq i32 %i.ba, 0
  br i1 %.not24.i, label %.critedge, label %bb.r, !llvm.loop !3262

bb.t:                                             ; preds = %bb.r
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !739
  %reass.sub.i = add i32 %.0.i, 63
  %i.bc = sub i32 %reass.sub.i, %i.bb
  %i.bd = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %.critedge, label %ma_dr_flac__seek_past_next_set_bit.exit

bb.u:                                             ; preds = %bb.r
  %i.be = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i30 = icmp eq i32 %i.be, 0
  br i1 %.not.i30, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.ax) #55, !srcloc !1207
  %i.bg = trunc i64 %i.bf to i32
  br label %ma_dr_flac__clz.exit

bb.w:                                             ; preds = %bb.u
  %i.bh = lshr i64 %i.ax, 60                      ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !118
  %i.bk = icmp eq i64 %i.bh, 0
  br i1 %i.bk, label %bb.x, label %ma_dr_flac__clz_software.exit

bb.x:                                             ; preds = %bb.w
  %i.bl = icmp ult i64 %i.ax, 4294967296          ; 2 uses
  %i.bm = shl nuw i64 %i.ax, 32
  %spec.select.i = select i1 %i.bl, i64 %i.bm, i64 %i.ax ; 3 uses
  %spec.select26.i = select i1 %i.bl, i32 32, i32 0 ; 2 uses
  %i.bn = icmp ult i64 %spec.select.i, 281474976710656 ; 2 uses
  %i.bo = or disjoint i32 %spec.select26.i, 16
  %i.bp = shl nuw i64 %spec.select.i, 16
  %.119.i = select i1 %i.bn, i64 %i.bp, i64 %spec.select.i ; 3 uses
  %.1.i = select i1 %i.bn, i32 %i.bo, i32 %spec.select26.i ; 2 uses
  %i.bq = icmp ult i64 %.119.i, 72057594037927936 ; 2 uses
  %i.br = or disjoint i32 %.1.i, 8
  %i.bs = shl nuw i64 %.119.i, 8
  %.220.i = select i1 %i.bq, i64 %i.bs, i64 %.119.i ; 3 uses
  %.2.i = select i1 %i.bq, i32 %i.br, i32 %.1.i   ; 2 uses
  %i.bt = icmp ult i64 %.220.i, 1152921504606846976 ; 2 uses
  %i.bu = or disjoint i32 %.2.i, 4
  %i.bv = shl nuw i64 %.220.i, 4
  %.321.i = select i1 %i.bt, i64 %i.bv, i64 %.220.i
  %.3.i = select i1 %i.bt, i32 %i.bu, i32 %.2.i
  %i.bw = lshr i64 %.321.i, 60
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !118
  %i.bz = add i32 %i.by, %.3.i
  br label %ma_dr_flac__clz_software.exit

ma_dr_flac__clz_software.exit:                    ; preds = %bb.w, %bb.x
  %.4.i = phi i32 [ %i.bz, %bb.x ], [ %i.bj, %bb.w ]
  %i.ca = add i32 %.4.i, -1
  br label %ma_dr_flac__clz.exit

ma_dr_flac__clz.exit:                             ; preds = %bb.v, %ma_dr_flac__clz_software.exit
  %.0.i31 = phi i32 [ %i.bg, %bb.v ], [ %i.ca, %ma_dr_flac__clz_software.exit ] ; 2 uses
  %i.cb = add i32 %.0.i31, 1                      ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !739 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = sub nsw i64 64, %i.ce
  %i.cg = icmp ult i64 %i.cf, %i.cc
  br i1 %i.cg, label %.critedge, label %bb.y

bb.y:                                             ; preds = %ma_dr_flac__clz.exit
  %i.ch = add i32 %i.cd, %i.cb
  store i32 %i.ch, ptr %i.a, align 4, !tbaa !739
  %i.ci = load i64, ptr %i.aw, align 8, !tbaa !740
  %i.cj = shl i64 %i.ci, %i.cc
  store i64 %i.cj, ptr %i.aw, align 8, !tbaa !740
  %i.ck = add i32 %.0.i31, %.0.i
  br label %ma_dr_flac__seek_past_next_set_bit.exit

ma_dr_flac__seek_past_next_set_bit.exit:          ; preds = %bb.y, %bb.t
  %.0 = phi i32 [ %i.bc, %bb.t ], [ %i.ck, %bb.y ]
  %i.cl = trunc i32 %.0 to i8
  %i.cm = add i8 %i.cl, 1
  store i8 %i.cm, ptr %i.au, align 1, !tbaa !734
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %bb.t, %bb.f, %bb.e, %bb.b, %ma_dr_flac__clz.exit, %bb.o, %bb.p, %bb.q, %ma_dr_flac__seek_past_next_set_bit.exit, %ma_dr_flac__read_uint8.exit
  %.1 = phi i32 [ 0, %ma_dr_flac__read_uint8.exit ], [ 0, %bb.o ], [ 0, %bb.f ], [ 1, %ma_dr_flac__seek_past_next_set_bit.exit ], [ 1, %bb.q ], [ 0, %bb.p ], [ 0, %bb.t ], [ 0, %ma_dr_flac__clz.exit ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.s ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !742
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !1198 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4168
  %i.f = load i64, ptr %i.e, align 8, !tbaa !741  ; 14 uses
  switch i32 %i.b, label %ma_dr_flac_crc16_bytes.exit [
    i32 0, label %bb.b
    i32 7, label %._crit_edge
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.f, 56
  %i.h = shl i16 %i.d, 8
  %i.i = lshr i16 %i.d, 8
  %i.j = zext nneg i16 %i.i to i64
  %i.k = xor i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !122  ; 2 uses
  %i.n = xor i16 %i.m, %i.h
  %i.o = lshr i64 %i.f, 48
  %i.p = trunc nuw i64 %i.o to i16
  %i.q = shl i16 %i.m, 8
  %i.r = lshr i16 %i.n, 8
  %i.s = and i16 %i.p, 255
  %i.t = xor i16 %i.r, %i.s
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !122  ; 2 uses
  %i.x = xor i16 %i.q, %i.w
  %i.y = lshr i64 %i.f, 40
  %i.z = trunc i64 %i.y to i16
  %i.aa = shl i16 %i.w, 8
  %i.ab = lshr i16 %i.x, 8
  %i.ac = and i16 %i.z, 255
  %i.ad = xor i16 %i.ab, %i.ac
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !122 ; 2 uses
  %i.ah = xor i16 %i.aa, %i.ag
  %i.ai = lshr i64 %i.f, 32
  %i.aj = trunc i64 %i.ai to i16
  %i.ak = shl i16 %i.ag, 8
  %i.al = lshr i16 %i.ah, 8
  %i.am = and i16 %i.aj, 255
  %i.an = xor i16 %i.al, %i.am
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !122 ; 2 uses
  %i.ar = xor i16 %i.ak, %i.aq
  %i.as = lshr i64 %i.f, 24
  %i.at = trunc i64 %i.as to i16
  %i.au = shl i16 %i.aq, 8
  %i.av = lshr i16 %i.ar, 8
  %i.aw = and i16 %i.at, 255
  %i.ax = xor i16 %i.av, %i.aw
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !122 ; 2 uses
  %i.bb = xor i16 %i.au, %i.ba
  %i.bc = lshr i64 %i.f, 16
  %i.bd = trunc i64 %i.bc to i16
  %i.be = shl i16 %i.ba, 8
  %i.bf = lshr i16 %i.bb, 8
  %i.bg = and i16 %i.bd, 255
  %i.bh = xor i16 %i.bf, %i.bg
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !122 ; 2 uses
  %i.bl = trunc i64 %i.f to i16                   ; 2 uses
  %i.bm = shl i16 %i.bk, 8
  %i.bn = xor i16 %i.be, %i.bl
  %i.bo = xor i16 %i.bn, %i.bk
  %i.bp = lshr i16 %i.bo, 8
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !122 ; 2 uses
  %i.bt = xor i16 %i.bm, %i.bs
  %i.bu = shl i16 %i.bs, 8
  %i.bv = lshr i16 %i.bt, 8
  %i.bw = and i16 %i.bl, 255
  %i.bx = xor i16 %i.bv, %i.bw
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !122
  %i.cb = xor i16 %i.bu, %i.ca
  store i16 %i.cb, ptr %i.c, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit

._crit_edge:                                      ; preds = %bb.a
  %.pre = trunc i64 %i.f to i16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.cc = lshr i64 %i.f, 48
  %i.cd = trunc nuw i64 %i.cc to i16
  %i.ce = shl i16 %i.d, 8
  %i.cf = lshr i16 %i.d, 8
  %i.cg = and i16 %i.cd, 255
  %i.ch = xor i16 %i.cg, %i.cf
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !122
  %i.cl = xor i16 %i.ck, %i.ce
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.1.i = phi i16 [ %i.cl, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.cm = lshr i64 %i.f, 40
  %i.cn = trunc i64 %i.cm to i16
  %i.co = shl i16 %.1.i, 8
  %i.cp = lshr i16 %.1.i, 8
  %i.cq = and i16 %i.cn, 255
  %i.cr = xor i16 %i.cp, %i.cq
  %i.cs = zext nneg i16 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !122
  %i.cv = xor i16 %i.co, %i.cu
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.2.i = phi i16 [ %i.cv, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.cw = lshr i64 %i.f, 32
  %i.cx = trunc i64 %i.cw to i16
  %i.cy = shl i16 %.2.i, 8
  %i.cz = lshr i16 %.2.i, 8
  %i.da = and i16 %i.cx, 255
end_hunk_0
begin_hunk_1_@ma_dr_flac__decode_samples_with_residual:bb.a
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !118
  %i.un = mul nsw i32 %i.um, %i.uk
  %i.uo = add nsw i32 %i.un, %.17.i46.i
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.ca
  %.18.i45.i = phi i32 [ %i.uo, %bb.ct ], [ 0, %bb.ca ]
  %i.up = load i32, ptr %i.dd, align 4, !tbaa !118
  %i.uq = getelementptr inbounds i8, ptr %i.ig, i64 -52
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !118
  %i.us = mul nsw i32 %i.ur, %i.up
  %i.ut = add nsw i32 %i.us, %.18.i45.i
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ca
  %.19.i44.i = phi i32 [ %i.ut, %bb.cu ], [ 0, %bb.ca ]
  %i.uu = load i32, ptr %i.de, align 4, !tbaa !118
  %i.uv = getelementptr inbounds i8, ptr %i.ig, i64 -48
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !118
  %i.ux = mul nsw i32 %i.uw, %i.uu
  %i.uy = add nsw i32 %i.ux, %.19.i44.i
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.ca
  %.20.i43.i = phi i32 [ %i.uy, %bb.cv ], [ 0, %bb.ca ]
  %i.uz = load i32, ptr %i.df, align 4, !tbaa !118
  %i.va = getelementptr inbounds i8, ptr %i.ig, i64 -44
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !118
  %i.vc = mul nsw i32 %i.vb, %i.uz
  %i.vd = add nsw i32 %i.vc, %.20.i43.i
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.ca
  %.21.i42.i = phi i32 [ %i.vd, %bb.cw ], [ 0, %bb.ca ]
  %i.ve = load i32, ptr %i.dg, align 4, !tbaa !118
  %i.vf = getelementptr inbounds i8, ptr %i.ig, i64 -40
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !118
  %i.vh = mul nsw i32 %i.vg, %i.ve
  %i.vi = add nsw i32 %i.vh, %.21.i42.i
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.ca
  %.22.i41.i = phi i32 [ %i.vi, %bb.cx ], [ 0, %bb.ca ]
  %i.vj = load i32, ptr %i.dh, align 4, !tbaa !118
  %i.vk = getelementptr inbounds i8, ptr %i.ig, i64 -36
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !118
  %i.vm = mul nsw i32 %i.vl, %i.vj
  %i.vn = add nsw i32 %i.vm, %.22.i41.i
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.ca
  %.23.i40.i = phi i32 [ %i.vn, %bb.cy ], [ 0, %bb.ca ]
  %i.vo = load i32, ptr %i.di, align 4, !tbaa !118
  %i.vp = getelementptr inbounds i8, ptr %i.ig, i64 -32
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !118
  %i.vr = mul nsw i32 %i.vq, %i.vo
  %i.vs = add nsw i32 %i.vr, %.23.i40.i
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.ca
  %.24.i39.i = phi i32 [ %i.vs, %bb.cz ], [ 0, %bb.ca ]
  %i.vt = load i32, ptr %i.dj, align 4, !tbaa !118
  %i.vu = getelementptr inbounds i8, ptr %i.ig, i64 -28
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !118
  %i.vw = mul nsw i32 %i.vv, %i.vt
  %i.vx = add nsw i32 %i.vw, %.24.i39.i
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.ca
  %.25.i38.i = phi i32 [ %i.vx, %bb.da ], [ 0, %bb.ca ]
  %i.vy = load i32, ptr %i.dk, align 4, !tbaa !118
  %i.vz = getelementptr inbounds i8, ptr %i.ig, i64 -24
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !118
  %i.wb = mul nsw i32 %i.wa, %i.vy
  %i.wc = add nsw i32 %i.wb, %.25.i38.i
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.ca
  %.26.i37.i = phi i32 [ %i.wc, %bb.db ], [ 0, %bb.ca ]
  %i.wd = load i32, ptr %i.dl, align 4, !tbaa !118
  %i.we = getelementptr inbounds i8, ptr %i.ig, i64 -20
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !118
  %i.wg = mul nsw i32 %i.wf, %i.wd
  %i.wh = add nsw i32 %i.wg, %.26.i37.i
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.ca
  %.27.i36.i = phi i32 [ %i.wh, %bb.dc ], [ 0, %bb.ca ]
  %i.wi = load i32, ptr %i.dm, align 4, !tbaa !118
  %i.wj = getelementptr inbounds i8, ptr %i.ig, i64 -16
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !118
  %i.wl = mul nsw i32 %i.wk, %i.wi
  %i.wm = add nsw i32 %i.wl, %.27.i36.i
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.ca
  %.28.i35.i = phi i32 [ %i.wm, %bb.dd ], [ 0, %bb.ca ]
  %i.wn = load i32, ptr %i.dn, align 4, !tbaa !118
  %i.wo = getelementptr inbounds i8, ptr %i.ig, i64 -12
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !118
  %i.wq = mul nsw i32 %i.wp, %i.wn
  %i.wr = add nsw i32 %i.wq, %.28.i35.i
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.ca
  %.29.i34.i = phi i32 [ %i.wr, %bb.de ], [ 0, %bb.ca ]
  %i.ws = load i32, ptr %i.do, align 4, !tbaa !118
  %i.wt = getelementptr inbounds i8, ptr %i.ig, i64 -8
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !118
  %i.wv = mul nsw i32 %i.wu, %i.ws
  %i.ww = add nsw i32 %i.wv, %.29.i34.i
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.ca
  %.30.i32.i = phi i32 [ %i.ww, %bb.df ], [ 0, %bb.ca ]
  %i.wx = load i32, ptr %6, align 4, !tbaa !118
  %i.wy = getelementptr inbounds i8, ptr %i.ig, i64 -4
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !118
  %i.xa = mul nsw i32 %i.wz, %i.wx
  %i.xb = add nsw i32 %i.xa, %.30.i32.i
  br label %ma_dr_flac__calculate_prediction_32.exit.i

ma_dr_flac__calculate_prediction_32.exit.i:       ; preds = %bb.dg, %bb.ca
  %.31.i33.i = phi i32 [ 0, %bb.ca ], [ %i.xb, %bb.dg ]
  %i.xc = ashr i32 %.31.i33.i, %4
  br label %bb.dh

bb.dh:                                            ; preds = %ma_dr_flac__calculate_prediction_32.exit.i, %ma_dr_flac__calculate_prediction_64.exit.i
  %.sink77.i = phi i32 [ %i.qy, %ma_dr_flac__calculate_prediction_64.exit.i ], [ %i.xc, %ma_dr_flac__calculate_prediction_32.exit.i ]
  %i.xd = load i32, ptr %i.ig, align 4, !tbaa !118
  %i.xe = add nsw i32 %i.xd, %.sink77.i
  store i32 %i.xe, ptr %i.ig, align 4, !tbaa !118
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ma_dr_flac__decode_samples_with_residual__unencoded.exit.thread133, label %bb.aq, !llvm.loop !3270

ma_dr_flac__decode_samples_with_residual__unencoded.exit.thread133: ; preds = %bb.dh, %bb.ap
  %.old = icmp eq i32 %.036, 1
  br i1 %.old, label %ma_dr_flac__read_uint8.exit.thread, label %ma_dr_flac__decode_samples_with_residual__unencoded.exit

ma_dr_flac__decode_samples_with_residual__unencoded.exit: ; preds = %.thread124, %ma_dr_flac__decode_samples_with_residual__unencoded.exit.thread133
  %i.xf = zext nneg i32 %.038 to i64
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.040, i64 %i.xf
  %i.xh = add nsw i32 %.036, -1
  %.139 = select i1 %.not57, i32 %.038, i32 %i.cf
  br label %bb.r

ma_dr_flac__read_uint8.exit.thread:               ; preds = %bb.af, %bb.ae, %bb.ab, %bb.x, %bb.w, %bb.t, %bb.an, %bb.am, %bb.aj, %.thread124, %ma_dr_flac__decode_samples_with_residual__unencoded.exit.thread133, %bb.ar, %bb.m, %bb.l, %bb.i, %bb.f, %bb.e, %bb.b, %bb.p, %bb.o, %ma_dr_flac__read_uint8.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_flac__decode_samples_with_residual__rice__scalar(ptr noundef nonnull %0, i32 noundef range(i32 -30, 33) %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef range(i32 0, 256) %4, i32 noundef range(i32 -128, 128) %5, i32 noundef range(i32 0, 256) %6, ptr nofree noundef readonly %7, ptr nofree noundef %8) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  br i1 %i.a, label %bb.b, label %ma_dr_flac__ilog2_u32.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %3 to i32                        ; 3 uses
  %i.c = zext nneg i8 %3 to i64
  %i.d = shl nsw i64 -1, %i.c
  %i.e = trunc i64 %i.d to i32
  %i.f = xor i32 %i.e, -1
  %.not.i972 = icmp eq i32 %2, 0
  br i1 %.not.i972, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = add nuw nsw i32 %i.b, 1                  ; 2 uses
  %i.h = zext nneg i32 %i.g to i64
  %i.i = sub nsw i32 63, %i.b                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4168 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = zext nneg i32 %i.i to i64
  %wide.trip.count.i = zext i32 %2 to i64
  %.pre.i = load i64, ptr %i.j, align 8, !tbaa !740
  br label %bb.c

bb.c:                                             ; preds = %bb.ap, %.lr.ph.i
  %i.r = phi i64 [ %.pre.i, %.lr.ph.i ], [ %.681.i.i, %bb.ap ] ; 7 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ap ] ; 2 uses
  %i.s = load i32, ptr %i.k, align 4, !tbaa !739  ; 2 uses
  %i.t = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i94.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.r) #55, !srcloc !1207
  %i.v = trunc i64 %i.u to i32
  br label %ma_dr_flac__clz.exit96.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.r, 0
  br i1 %i.w, label %ma_dr_flac__clz.exit96.i.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = lshr i64 %i.r, 60                        ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !118
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp ult i64 %i.r, 4294967296           ; 2 uses
  %i.ac = shl nuw i64 %i.r, 32
  %spec.select.i.i.i = select i1 %i.ab, i64 %i.ac, i64 %i.r ; 3 uses
  %spec.select26.i.i.i = select i1 %i.ab, i32 32, i32 0 ; 2 uses
  %i.ad = icmp ult i64 %spec.select.i.i.i, 281474976710656 ; 2 uses
  %i.ae = or disjoint i32 %spec.select26.i.i.i, 16
  %i.af = shl nuw i64 %spec.select.i.i.i, 16
  %.119.i.i.i = select i1 %i.ad, i64 %i.af, i64 %spec.select.i.i.i ; 3 uses
  %.1.i109.i.i = select i1 %i.ad, i32 %i.ae, i32 %spec.select26.i.i.i ; 2 uses
  %i.ag = icmp ult i64 %.119.i.i.i, 72057594037927936 ; 2 uses
  %i.ah = or disjoint i32 %.1.i109.i.i, 8
  %i.ai = shl nuw i64 %.119.i.i.i, 8
  %.220.i.i.i = select i1 %i.ag, i64 %i.ai, i64 %.119.i.i.i ; 3 uses
  %.2.i110.i.i = select i1 %i.ag, i32 %i.ah, i32 %.1.i109.i.i ; 2 uses
  %i.aj = icmp ult i64 %.220.i.i.i, 1152921504606846976 ; 2 uses
  %i.ak = or disjoint i32 %.2.i110.i.i, 4
  %i.al = shl nuw i64 %.220.i.i.i, 4
  %.321.i.i.i = select i1 %i.aj, i64 %i.al, i64 %.220.i.i.i
  %.3.i111.i.i = select i1 %i.aj, i32 %i.ak, i32 %.2.i110.i.i
  %i.am = lshr i64 %.321.i.i.i, 60
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !118
  %i.ap = add i32 %i.ao, %.3.i111.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4.i108.i.i = phi i32 [ %i.ap, %bb.g ], [ %i.z, %bb.f ]
  %i.aq = add i32 %.4.i108.i.i, -1
  br label %ma_dr_flac__clz.exit96.i.i

ma_dr_flac__clz.exit96.i.i:                       ; preds = %bb.h, %bb.d
  %.0.i95.i.i = phi i32 [ %i.v, %bb.d ], [ %i.aq, %bb.h ] ; 3 uses
  %i.ar = icmp ult i32 %.0.i95.i.i, 64
  br i1 %i.ar, label %.loopexit.i, label %ma_dr_flac__clz.exit96.i.thread.i

.loopexit.i:                                      ; preds = %ma_dr_flac__clz.exit.i.i, %ma_dr_flac__clz.exit96.i.i
  %.14.i976 = phi i32 [ %.0.i95.i.i, %ma_dr_flac__clz.exit96.i.i ], [ %i.ob, %ma_dr_flac__clz.exit.i.i ]
  %.075.i.i = phi i64 [ %i.r, %ma_dr_flac__clz.exit96.i.i ], [ %.479.i.i, %ma_dr_flac__clz.exit.i.i ]
  %.072.i.i = phi i32 [ %i.s, %ma_dr_flac__clz.exit96.i.i ], [ %.4.i.i975, %ma_dr_flac__clz.exit.i.i ]
  %.070.i.i = phi i32 [ %.0.i95.i.i, %ma_dr_flac__clz.exit96.i.i ], [ %.0.i.i.i, %ma_dr_flac__clz.exit.i.i ] ; 2 uses
  %i.as = zext nneg i32 %.070.i.i to i64
  %i.at = shl i64 %.075.i.i, %i.as                ; 2 uses
  %i.au = add i32 %.070.i.i, %.072.i.i            ; 3 uses
  %.not90.i.i = icmp ugt i32 %i.au, %i.i
  %i.av = lshr i64 %i.at, %i.q                    ; 2 uses
  br i1 %.not90.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  %i.aw = shl i64 %i.at, %i.h
  %i.ax = add i32 %i.au, %i.g
  br label %bb.ap

bb.j:                                             ; preds = %.loopexit.i
  %i.ay = sub nuw i32 %i.au, %i.i                 ; 4 uses
  %i.az = load i32, ptr %i.l, align 8, !tbaa !738 ; 3 uses
  %i.ba = icmp ult i32 %i.az, 512
  br i1 %i.ba, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr %i.m, align 8, !tbaa !742
  %i.bc = load i16, ptr %i.n, align 8, !tbaa !1198 ; 11 uses
  %i.bd = load i64, ptr %i.o, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.bb, label %ma_dr_flac_crc16_bytes.exit.i.i [
    i32 0, label %bb.l
    i32 7, label %._crit_edge20.i
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.be = lshr i64 %i.bd, 56
  %i.bf = shl i16 %i.bc, 8
  %i.bg = lshr i16 %i.bc, 8
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = xor i64 %i.be, %i.bh
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !122 ; 2 uses
  %i.bl = xor i16 %i.bk, %i.bf
  %i.bm = lshr i64 %i.bd, 48
  %i.bn = trunc nuw i64 %i.bm to i16
  %i.bo = shl i16 %i.bk, 8
  %i.bp = lshr i16 %i.bl, 8
  %i.bq = and i16 %i.bn, 255
  %i.br = xor i16 %i.bp, %i.bq
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !122 ; 2 uses
  %i.bv = xor i16 %i.bo, %i.bu
  %i.bw = lshr i64 %i.bd, 40
  %i.bx = trunc i64 %i.bw to i16
  %i.by = shl i16 %i.bu, 8
  %i.bz = lshr i16 %i.bv, 8
  %i.ca = and i16 %i.bx, 255
  %i.cb = xor i16 %i.bz, %i.ca
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !122 ; 2 uses
  %i.cf = xor i16 %i.by, %i.ce
  %i.cg = lshr i64 %i.bd, 32
  %i.ch = trunc i64 %i.cg to i16
  %i.ci = shl i16 %i.ce, 8
  %i.cj = lshr i16 %i.cf, 8
  %i.ck = and i16 %i.ch, 255
  %i.cl = xor i16 %i.cj, %i.ck
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !122 ; 2 uses
  %i.cp = xor i16 %i.ci, %i.co
  %i.cq = lshr i64 %i.bd, 24
  %i.cr = trunc i64 %i.cq to i16
  %i.cs = shl i16 %i.co, 8
  %i.ct = lshr i16 %i.cp, 8
  %i.cu = and i16 %i.cr, 255
  %i.cv = xor i16 %i.ct, %i.cu
  %i.cw = zext nneg i16 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !122 ; 2 uses
  %i.cz = xor i16 %i.cs, %i.cy
  %i.da = lshr i64 %i.bd, 16
  %i.db = trunc i64 %i.da to i16
  %i.dc = shl i16 %i.cy, 8
  %i.dd = lshr i16 %i.cz, 8
  %i.de = and i16 %i.db, 255
  %i.df = xor i16 %i.dd, %i.de
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !122 ; 2 uses
  %i.dj = trunc i64 %i.bd to i16                  ; 2 uses
  %i.dk = shl i16 %i.di, 8
  %i.dl = xor i16 %i.dc, %i.dj
  %i.dm = xor i16 %i.dl, %i.di
  %i.dn = lshr i16 %i.dm, 8
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !122 ; 2 uses
  %i.dr = xor i16 %i.dk, %i.dq
  %i.ds = shl i16 %i.dq, 8
  %i.dt = lshr i16 %i.dr, 8
  %i.du = and i16 %i.dj, 255
  %i.dv = xor i16 %i.dt, %i.du
  %i.dw = zext nneg i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !122
  %i.dz = xor i16 %i.ds, %i.dy
  store i16 %i.dz, ptr %i.n, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit97.i.i

._crit_edge20.i:                                  ; preds = %bb.k
  %.pre21.i = trunc i64 %i.bd to i16
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.ea = lshr i64 %i.bd, 48
  %i.eb = trunc nuw i64 %i.ea to i16
  %i.ec = shl i16 %i.bc, 8
  %i.ed = lshr i16 %i.bc, 8
  %i.ee = and i16 %i.eb, 255
  %i.ef = xor i16 %i.ee, %i.ed
  %i.eg = zext nneg i16 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !122
  %i.ej = xor i16 %i.ei, %i.ec
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.1.i.i.i = phi i16 [ %i.ej, %bb.m ], [ %i.bc, %bb.k ] ; 2 uses
  %i.ek = lshr i64 %i.bd, 40
  %i.el = trunc i64 %i.ek to i16
  %i.em = shl i16 %.1.i.i.i, 8
  %i.en = lshr i16 %.1.i.i.i, 8
  %i.eo = and i16 %i.el, 255
  %i.ep = xor i16 %i.en, %i.eo
  %i.eq = zext nneg i16 %i.ep to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !122
  %i.et = xor i16 %i.em, %i.es
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.2.i.i.i = phi i16 [ %i.et, %bb.n ], [ %i.bc, %bb.k ] ; 2 uses
  %i.eu = lshr i64 %i.bd, 32
  %i.ev = trunc i64 %i.eu to i16
  %i.ew = shl i16 %.2.i.i.i, 8
  %i.ex = lshr i16 %.2.i.i.i, 8
  %i.ey = and i16 %i.ev, 255
  %i.ez = xor i16 %i.ex, %i.ey
  %i.fa = zext nneg i16 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fa
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !122
  %i.fd = xor i16 %i.ew, %i.fc
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
end_hunk_1
begin_hunk_2_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.id = lshr i64 %i.hk, 40
  %i.ie = trunc i64 %i.id to i16
  %i.if = shl i16 %i.ib, 8
  %i.ig = lshr i16 %i.ic, 8
  %i.ih = and i16 %i.ie, 255
  %i.ii = xor i16 %i.ig, %i.ih
  %i.ij = zext nneg i16 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ij
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !122 ; 2 uses
  %i.im = xor i16 %i.if, %i.il
  %i.in = lshr i64 %i.hk, 32
  %i.io = trunc i64 %i.in to i16
  %i.ip = shl i16 %i.il, 8
  %i.iq = lshr i16 %i.im, 8
  %i.ir = and i16 %i.io, 255
  %i.is = xor i16 %i.iq, %i.ir
  %i.it = zext nneg i16 %i.is to i64
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !122 ; 2 uses
  %i.iw = xor i16 %i.ip, %i.iv
  %i.ix = lshr i64 %i.hk, 24
  %i.iy = trunc i64 %i.ix to i16
  %i.iz = shl i16 %i.iv, 8
  %i.ja = lshr i16 %i.iw, 8
  %i.jb = and i16 %i.iy, 255
  %i.jc = xor i16 %i.ja, %i.jb
  %i.jd = zext nneg i16 %i.jc to i64
  %i.je = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !122 ; 2 uses
  %i.jg = xor i16 %i.iz, %i.jf
  %i.jh = lshr i64 %i.hk, 16
  %i.ji = trunc i64 %i.jh to i16
  %i.jj = shl i16 %i.jf, 8
  %i.jk = lshr i16 %i.jg, 8
  %i.jl = and i16 %i.ji, 255
  %i.jm = xor i16 %i.jk, %i.jl
  %i.jn = zext nneg i16 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !122 ; 2 uses
  %i.jq = trunc i64 %i.hk to i16                  ; 2 uses
  %i.jr = shl i16 %i.jp, 8
  %i.js = xor i16 %i.jj, %i.jq
  %i.jt = xor i16 %i.js, %i.jp
  %i.ju = lshr i16 %i.jt, 8
  %i.jv = zext nneg i16 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.jv
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !122 ; 2 uses
  %i.jy = xor i16 %i.jr, %i.jx
  %i.jz = shl i16 %i.jx, 8
  %i.ka = lshr i16 %i.jy, 8
  %i.kb = and i16 %i.jq, 255
  %i.kc = xor i16 %i.ka, %i.kb
  %i.kd = zext nneg i16 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.kd
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !122
  %i.kg = xor i16 %i.jz, %i.kf
  store i16 %i.kg, ptr %i.n, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i.i

._crit_edge.i:                                    ; preds = %bb.y
  %.pre23.i = trunc i64 %i.hk to i16
  br label %bb.ag

bb.aa:                                            ; preds = %bb.y
  %i.kh = lshr i64 %i.hk, 48
  %i.ki = trunc nuw i64 %i.kh to i16
  %i.kj = shl i16 %i.hj, 8
  %i.kk = lshr i16 %i.hj, 8
  %i.kl = and i16 %i.ki, 255
  %i.km = xor i16 %i.kl, %i.kk
  %i.kn = zext nneg i16 %i.km to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.kn
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !122
  %i.kq = xor i16 %i.kp, %i.kj
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.1.i105.i.i = phi i16 [ %i.kq, %bb.aa ], [ %i.hj, %bb.y ] ; 2 uses
  %i.kr = lshr i64 %i.hk, 40
  %i.ks = trunc i64 %i.kr to i16
  %i.kt = shl i16 %.1.i105.i.i, 8
  %i.ku = lshr i16 %.1.i105.i.i, 8
  %i.kv = and i16 %i.ks, 255
  %i.kw = xor i16 %i.ku, %i.kv
  %i.kx = zext nneg i16 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.kx
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !122
  %i.la = xor i16 %i.kt, %i.kz
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.2.i104.i.i = phi i16 [ %i.la, %bb.ab ], [ %i.hj, %bb.y ] ; 2 uses
  %i.lb = lshr i64 %i.hk, 32
  %i.lc = trunc i64 %i.lb to i16
  %i.ld = shl i16 %.2.i104.i.i, 8
  %i.le = lshr i16 %.2.i104.i.i, 8
  %i.lf = and i16 %i.lc, 255
  %i.lg = xor i16 %i.le, %i.lf
  %i.lh = zext nneg i16 %i.lg to i64
  %i.li = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !122
  %i.lk = xor i16 %i.ld, %i.lj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.3.i103.i.i = phi i16 [ %i.lk, %bb.ac ], [ %i.hj, %bb.y ] ; 2 uses
  %i.ll = lshr i64 %i.hk, 24
  %i.lm = trunc i64 %i.ll to i16
  %i.ln = shl i16 %.3.i103.i.i, 8
  %i.lo = lshr i16 %.3.i103.i.i, 8
  %i.lp = and i16 %i.lm, 255
  %i.lq = xor i16 %i.lo, %i.lp
  %i.lr = zext nneg i16 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !122
  %i.lu = xor i16 %i.ln, %i.lt
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %.4.i102.i.i = phi i16 [ %i.lu, %bb.ad ], [ %i.hj, %bb.y ] ; 2 uses
  %i.lv = lshr i64 %i.hk, 16
  %i.lw = trunc i64 %i.lv to i16
  %i.lx = shl i16 %.4.i102.i.i, 8
  %i.ly = lshr i16 %.4.i102.i.i, 8
  %i.lz = and i16 %i.lw, 255
  %i.ma = xor i16 %i.ly, %i.lz
  %i.mb = zext nneg i16 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.mb
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !122
  %i.me = xor i16 %i.lx, %i.md
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %.5.i101.i.i = phi i16 [ %i.me, %bb.ae ], [ %i.hj, %bb.y ] ; 2 uses
  %i.mf = trunc i64 %i.hk to i16                  ; 2 uses
  %i.mg = shl i16 %.5.i101.i.i, 8
  %i.mh = xor i16 %.5.i101.i.i, %i.mf
  %i.mi = lshr i16 %i.mh, 8
  %i.mj = zext nneg i16 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.mj
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !122
  %i.mm = xor i16 %i.mg, %i.ml
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i
  %.pre-phi24.i = phi i16 [ %.pre23.i, %._crit_edge.i ], [ %i.mf, %bb.af ]
  %.6.i99.i.i = phi i16 [ %i.hj, %._crit_edge.i ], [ %i.mm, %bb.af ] ; 2 uses
  %i.mn = shl i16 %.6.i99.i.i, 8
  %i.mo = lshr i16 %.6.i99.i.i, 8
  %i.mp = and i16 %.pre-phi24.i, 255
  %i.mq = xor i16 %i.mo, %i.mp
  %i.mr = zext nneg i16 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.mr
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !122
  %i.mu = xor i16 %i.mn, %i.mt
  br label %ma_dr_flac_crc16_bytes.exit107.i.i

ma_dr_flac_crc16_bytes.exit107.i.i:               ; preds = %bb.ag, %bb.y
  %.7.i100.i.i = phi i16 [ %i.hj, %bb.y ], [ %i.mu, %bb.ag ]
  store i16 %.7.i100.i.i, ptr %i.n, align 8, !tbaa !1198
  store i32 0, ptr %i.m, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i.i

ma_dr_flac__update_crc16.exit.i.i:                ; preds = %ma_dr_flac_crc16_bytes.exit107.i.i, %bb.z
  %i.mv = add nuw nsw i32 %i.hg, 1
  store i32 %i.mv, ptr %i.l, align 8, !tbaa !738
  %i.mw = zext nneg i32 %i.hg to i64
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !164
  %i.mz = tail call i64 @llvm.bswap.i64(i64 %i.my) ; 2 uses
  store i64 %i.mz, ptr %i.o, align 8, !tbaa !741
  br label %bb.aj

bb.ah:                                            ; preds = %bb.x
  %i.na = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i974 = icmp eq i32 %i.na, 0
  br i1 %.not.i.i974, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nb = load i64, ptr %i.j, align 8, !tbaa !740
  %i.nc = load i32, ptr %i.k, align 4, !tbaa !739
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %ma_dr_flac__update_crc16.exit.i.i
  %.479.i.i = phi i64 [ %i.mz, %ma_dr_flac__update_crc16.exit.i.i ], [ %i.nb, %bb.ai ] ; 7 uses
  %.4.i.i975 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i.i ], [ %i.nc, %bb.ai ]
  %i.nd = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i.i = icmp eq i32 %i.nd, 0
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ne = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i.i) #55, !srcloc !1207
  %i.nf = trunc i64 %i.ne to i32
  br label %ma_dr_flac__clz.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ng = icmp eq i64 %.479.i.i, 0
  br i1 %i.ng, label %ma_dr_flac__clz.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.nh = lshr i64 %.479.i.i, 60                  ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !118
  %i.nk = icmp eq i64 %i.nh, 0
  br i1 %i.nk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.nl = icmp ult i64 %.479.i.i, 4294967296      ; 2 uses
  %i.nm = shl nuw i64 %.479.i.i, 32
  %spec.select.i114.i.i = select i1 %i.nl, i64 %i.nm, i64 %.479.i.i ; 3 uses
  %spec.select26.i115.i.i = select i1 %i.nl, i32 32, i32 0 ; 2 uses
  %i.nn = icmp ult i64 %spec.select.i114.i.i, 281474976710656 ; 2 uses
  %i.no = or disjoint i32 %spec.select26.i115.i.i, 16
  %i.np = shl nuw i64 %spec.select.i114.i.i, 16
  %.119.i116.i.i = select i1 %i.nn, i64 %i.np, i64 %spec.select.i114.i.i ; 3 uses
  %.1.i117.i.i = select i1 %i.nn, i32 %i.no, i32 %spec.select26.i115.i.i ; 2 uses
  %i.nq = icmp ult i64 %.119.i116.i.i, 72057594037927936 ; 2 uses
  %i.nr = or disjoint i32 %.1.i117.i.i, 8
  %i.ns = shl nuw i64 %.119.i116.i.i, 8
  %.220.i118.i.i = select i1 %i.nq, i64 %i.ns, i64 %.119.i116.i.i ; 3 uses
  %.2.i119.i.i = select i1 %i.nq, i32 %i.nr, i32 %.1.i117.i.i ; 2 uses
  %i.nt = icmp ult i64 %.220.i118.i.i, 1152921504606846976 ; 2 uses
  %i.nu = or disjoint i32 %.2.i119.i.i, 4
  %i.nv = shl nuw i64 %.220.i118.i.i, 4
  %.321.i120.i.i = select i1 %i.nt, i64 %i.nv, i64 %.220.i118.i.i
  %.3.i121.i.i = select i1 %i.nt, i32 %i.nu, i32 %.2.i119.i.i
  %i.nw = lshr i64 %.321.i120.i.i, 60
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !118
  %i.nz = add i32 %i.ny, %.3.i121.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.4.i112.i.i = phi i32 [ %i.nz, %bb.an ], [ %i.nj, %bb.am ]
  %i.oa = add i32 %.4.i112.i.i, -1
  br label %ma_dr_flac__clz.exit.i.i

ma_dr_flac__clz.exit.i.i:                         ; preds = %bb.ao, %bb.al, %bb.ak
  %.0.i.i.i = phi i32 [ %i.nf, %bb.ak ], [ %i.oa, %bb.ao ], [ 64, %bb.al ] ; 3 uses
  %i.ob = add i32 %.0.i.i.i, %.0.i.i973           ; 2 uses
  %i.oc = icmp ult i32 %.0.i.i.i, 64
  br i1 %i.oc, label %.loopexit.i, label %bb.x

bb.ap:                                            ; preds = %bb.w, %bb.i
  %.1.in.i = phi i64 [ %i.hd, %bb.w ], [ %i.av, %bb.i ]
  %.681.i.i = phi i64 [ %i.he, %bb.w ], [ %i.aw, %bb.i ] ; 2 uses
  %.6.i.i977 = phi i32 [ %.173.i.i, %bb.w ], [ %i.ax, %bb.i ]
  %.1.i978 = trunc i64 %.1.in.i to i32
  store i64 %.681.i.i, ptr %i.j, align 8, !tbaa !740
  store i32 %.6.i.i977, ptr %i.k, align 4, !tbaa !739
  %i.od = and i32 %.1.i978, %i.f
  %i.oe = shl i32 %.14.i976, %i.b
  %i.of = or i32 %i.od, %i.oe                     ; 2 uses
  %i.og = lshr i32 %i.of, 1
  %i.oh = and i32 %i.of, 1
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !118
  %i.ol = xor i32 %i.ok, %i.og
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i
  store i32 %i.ol, ptr %i.om, align 4, !tbaa !118
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.c, !llvm.loop !3271

ma_dr_flac__ilog2_u32.exit:                       ; preds = %bb.a
  %i.on = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %i.oo = zext i8 %3 to i32                       ; 15 uses
  %i.op = zext nneg i8 %3 to i64
  %i.oq = shl nsw i64 -1, %i.op
  %i.or = trunc i64 %i.oq to i32
  %i.os = xor i32 %i.or, -1                       ; 9 uses
  %i.ot = and i32 %2, -4                          ; 4 uses
  %i.ou = zext i32 %i.ot to i64
  %.idx = shl nuw nsw i64 %i.ou, 2
  %i.ov = getelementptr inbounds nuw i8, ptr %8, i64 %.idx ; 2 uses
  %i.ow = add nsw i32 %6, %1
  %reass.sub = sub nsw i32 %i.ow, %i.on
  %i.ox = add nsw i32 %reass.sub, 32
  %i.oy = icmp ult i32 %i.ox, 33                  ; 2 uses
  %.not1178 = icmp eq i32 %i.ot, 0                ; 2 uses
  br i1 %i.oy, label %.preheader, label %.preheader1139

.preheader1139:                                   ; preds = %ma_dr_flac__ilog2_u32.exit
  br i1 %.not1178, label %.loopexit1129, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1139
  %i.oz = add nuw nsw i32 %i.oo, 1                ; 5 uses
  %i.pa = zext nneg i32 %i.oz to i64              ; 4 uses
  %i.pb = sub nsw i32 63, %i.oo                   ; 9 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 13 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 13 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 16 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 24 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 4168 ; 16 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.pj = zext nneg i32 %i.pb to i64              ; 4 uses
  %trunc.i763 = trunc nuw i32 %4 to i8            ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %7, i64 124 ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %7, i64 116 ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %7, i64 108 ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %7, i64 100 ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 4 uses
  %i.px = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.qp = zext nneg i32 %5 to i64                 ; 4 uses
  %.pre = load i64, ptr %i.pc, align 8, !tbaa !740
  br label %bb.aq

.preheader:                                       ; preds = %ma_dr_flac__ilog2_u32.exit
  br i1 %.not1178, label %.loopexit1129, label %.lr.ph1165

.lr.ph1165:                                       ; preds = %.preheader
  %i.qq = add nuw nsw i32 %i.oo, 1                ; 5 uses
  %i.qr = zext nneg i32 %i.qq to i64              ; 4 uses
  %i.qs = sub nsw i32 63, %i.oo                   ; 9 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 13 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 13 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 16 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 24 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 4168 ; 16 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.ra = zext nneg i32 %i.qs to i64              ; 4 uses
  %trunc.i932 = trunc nuw i32 %4 to i8            ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %7, i64 124 ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %7, i64 116 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %7, i64 108 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %7, i64 100 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %.pre1208 = load i64, ptr %i.qt, align 8, !tbaa !740
  br label %bb.lp

bb.aq:                                            ; preds = %.lr.ph, %ma_dr_flac__calculate_prediction_64.exit694
  %i.sg = phi i64 [ %.pre, %.lr.ph ], [ %.681.i410, %ma_dr_flac__calculate_prediction_64.exit694 ] ; 7 uses
  %.01151163 = phi ptr [ %8, %.lr.ph ], [ %i.dhr, %ma_dr_flac__calculate_prediction_64.exit694 ] ; 127 uses
  %i.sh = load i32, ptr %i.pd, align 4, !tbaa !739 ; 2 uses
  %i.si = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i591 = icmp eq i32 %i.si, 0
  br i1 %.not.i94.i591, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.sj = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.sg) #55, !srcloc !1207
  %i.sk = trunc i64 %i.sj to i32
  br label %ma_dr_flac__clz.exit96.i592

bb.as:                                            ; preds = %bb.aq
  %i.sl = icmp eq i64 %i.sg, 0
  br i1 %i.sl, label %ma_dr_flac__clz.exit96.i592.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.sm = lshr i64 %i.sg, 60                      ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !118
  %i.sp = icmp eq i64 %i.sm, 0
  br i1 %i.sp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.sq = icmp ult i64 %i.sg, 4294967296          ; 2 uses
  %i.sr = shl nuw i64 %i.sg, 32
  %spec.select.i.i648 = select i1 %i.sq, i64 %i.sr, i64 %i.sg ; 3 uses
  %spec.select26.i.i649 = select i1 %i.sq, i32 32, i32 0 ; 2 uses
  %i.ss = icmp ult i64 %spec.select.i.i648, 281474976710656 ; 2 uses
  %i.st = or disjoint i32 %spec.select26.i.i649, 16
  %i.su = shl nuw i64 %spec.select.i.i648, 16
  %.119.i.i650 = select i1 %i.ss, i64 %i.su, i64 %spec.select.i.i648 ; 3 uses
  %.1.i109.i651 = select i1 %i.ss, i32 %i.st, i32 %spec.select26.i.i649 ; 2 uses
  %i.sv = icmp ult i64 %.119.i.i650, 72057594037927936 ; 2 uses
  %i.sw = or disjoint i32 %.1.i109.i651, 8
  %i.sx = shl nuw i64 %.119.i.i650, 8
  %.220.i.i652 = select i1 %i.sv, i64 %i.sx, i64 %.119.i.i650 ; 3 uses
  %.2.i110.i653 = select i1 %i.sv, i32 %i.sw, i32 %.1.i109.i651 ; 2 uses
  %i.sy = icmp ult i64 %.220.i.i652, 1152921504606846976 ; 2 uses
  %i.sz = or disjoint i32 %.2.i110.i653, 4
  %i.ta = shl nuw i64 %.220.i.i652, 4
  %.321.i.i654 = select i1 %i.sy, i64 %i.ta, i64 %.220.i.i652
  %.3.i111.i655 = select i1 %i.sy, i32 %i.sz, i32 %.2.i110.i653
  %i.tb = lshr i64 %.321.i.i654, 60
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !118
  %i.te = add i32 %i.td, %.3.i111.i655
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.4.i108.i645 = phi i32 [ %i.te, %bb.au ], [ %i.so, %bb.at ]
  %i.tf = add i32 %.4.i108.i645, -1
  br label %ma_dr_flac__clz.exit96.i592

ma_dr_flac__clz.exit96.i592:                      ; preds = %bb.av, %bb.ar
  %.0.i95.i593 = phi i32 [ %i.sk, %bb.ar ], [ %i.tf, %bb.av ] ; 3 uses
  %i.tg = icmp ult i32 %.0.i95.i593, 64
  br i1 %i.tg, label %.loopexit1138, label %ma_dr_flac__clz.exit96.i592.thread

.loopexit1138:                                    ; preds = %ma_dr_flac__clz.exit.i602, %ma_dr_flac__clz.exit96.i592
  %.81070 = phi i32 [ %.0.i95.i593, %ma_dr_flac__clz.exit96.i592 ], [ %i.agq, %ma_dr_flac__clz.exit.i602 ]
  %.075.i604 = phi i64 [ %i.sg, %ma_dr_flac__clz.exit96.i592 ], [ %.479.i599, %ma_dr_flac__clz.exit.i602 ]
  %.072.i605 = phi i32 [ %i.sh, %ma_dr_flac__clz.exit96.i592 ], [ %.4.i600, %ma_dr_flac__clz.exit.i602 ]
  %.070.i606 = phi i32 [ %.0.i95.i593, %ma_dr_flac__clz.exit96.i592 ], [ %.0.i.i603, %ma_dr_flac__clz.exit.i602 ] ; 2 uses
  %i.th = zext nneg i32 %.070.i606 to i64
  %i.ti = shl i64 %.075.i604, %i.th               ; 2 uses
  %i.tj = add i32 %.070.i606, %.072.i605          ; 3 uses
  %.not90.i607 = icmp ugt i32 %i.tj, %i.pb
  %i.tk = lshr i64 %i.ti, %i.pj                   ; 2 uses
  br i1 %.not90.i607, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit1138
  %i.tl = shl i64 %i.ti, %i.pa
  %i.tm = add i32 %i.tj, %i.oz
  br label %bb.cd

bb.ax:                                            ; preds = %.loopexit1138
  %i.tn = sub nuw i32 %i.tj, %i.pb                ; 4 uses
  %i.to = load i32, ptr %i.pe, align 8, !tbaa !738 ; 3 uses
  %i.tp = icmp ult i32 %i.to, 512
  br i1 %i.tp, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.tq = load i32, ptr %i.pf, align 8, !tbaa !742
  %i.tr = load i16, ptr %i.pg, align 8, !tbaa !1198 ; 11 uses
  %i.ts = load i64, ptr %i.ph, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.tq, label %ma_dr_flac_crc16_bytes.exit.i615 [
    i32 0, label %bb.az
    i32 7, label %._crit_edge1227
    i32 1, label %bb.ba
    i32 2, label %bb.bb
    i32 3, label %bb.bc
    i32 4, label %bb.bd
    i32 5, label %bb.be
    i32 6, label %bb.bf
  ]

bb.az:                                            ; preds = %bb.ay
  %i.tt = lshr i64 %i.ts, 56
  %i.tu = shl i16 %i.tr, 8
  %i.tv = lshr i16 %i.tr, 8
  %i.tw = zext nneg i16 %i.tv to i64
  %i.tx = xor i64 %i.tt, %i.tw
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.tx
  %i.tz = load i16, ptr %i.ty, align 2, !tbaa !122 ; 2 uses
  %i.ua = xor i16 %i.tz, %i.tu
  %i.ub = lshr i64 %i.ts, 48
  %i.uc = trunc nuw i64 %i.ub to i16
  %i.ud = shl i16 %i.tz, 8
  %i.ue = lshr i16 %i.ua, 8
  %i.uf = and i16 %i.uc, 255
  %i.ug = xor i16 %i.ue, %i.uf
  %i.uh = zext nneg i16 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.uh
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !122 ; 2 uses
  %i.uk = xor i16 %i.ud, %i.uj
  %i.ul = lshr i64 %i.ts, 40
  %i.um = trunc i64 %i.ul to i16
  %i.un = shl i16 %i.uj, 8
  %i.uo = lshr i16 %i.uk, 8
  %i.up = and i16 %i.um, 255
  %i.uq = xor i16 %i.uo, %i.up
  %i.ur = zext nneg i16 %i.uq to i64
  %i.us = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ur
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !122 ; 2 uses
  %i.uu = xor i16 %i.un, %i.ut
  %i.uv = lshr i64 %i.ts, 32
  %i.uw = trunc i64 %i.uv to i16
  %i.ux = shl i16 %i.ut, 8
  %i.uy = lshr i16 %i.uu, 8
  %i.uz = and i16 %i.uw, 255
  %i.va = xor i16 %i.uy, %i.uz
  %i.vb = zext nneg i16 %i.va to i64
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.vb
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !122 ; 2 uses
  %i.ve = xor i16 %i.ux, %i.vd
  %i.vf = lshr i64 %i.ts, 24
  %i.vg = trunc i64 %i.vf to i16
  %i.vh = shl i16 %i.vd, 8
  %i.vi = lshr i16 %i.ve, 8
  %i.vj = and i16 %i.vg, 255
  %i.vk = xor i16 %i.vi, %i.vj
  %i.vl = zext nneg i16 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.vl
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !122 ; 2 uses
  %i.vo = xor i16 %i.vh, %i.vn
  %i.vp = lshr i64 %i.ts, 16
  %i.vq = trunc i64 %i.vp to i16
  %i.vr = shl i16 %i.vn, 8
  %i.vs = lshr i16 %i.vo, 8
  %i.vt = and i16 %i.vq, 255
  %i.vu = xor i16 %i.vs, %i.vt
  %i.vv = zext nneg i16 %i.vu to i64
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.vv
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !122 ; 2 uses
  %i.vy = trunc i64 %i.ts to i16                  ; 2 uses
  %i.vz = shl i16 %i.vx, 8
  %i.wa = xor i16 %i.vr, %i.vy
  %i.wb = xor i16 %i.wa, %i.vx
  %i.wc = lshr i16 %i.wb, 8
  %i.wd = zext nneg i16 %i.wc to i64
  %i.we = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.wd
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !122 ; 2 uses
  %i.wg = xor i16 %i.vz, %i.wf
  %i.wh = shl i16 %i.wf, 8
  %i.wi = lshr i16 %i.wg, 8
  %i.wj = and i16 %i.vy, 255
  %i.wk = xor i16 %i.wi, %i.wj
  %i.wl = zext nneg i16 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.wl
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !122
  %i.wo = xor i16 %i.wh, %i.wn
  store i16 %i.wo, ptr %i.pg, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit97.i617

._crit_edge1227:                                  ; preds = %bb.ay
  %.pre1276 = trunc i64 %i.ts to i16
  br label %bb.bg

bb.ba:                                            ; preds = %bb.ay
  %i.wp = lshr i64 %i.ts, 48
  %i.wq = trunc nuw i64 %i.wp to i16
  %i.wr = shl i16 %i.tr, 8
  %i.ws = lshr i16 %i.tr, 8
  %i.wt = and i16 %i.wq, 255
  %i.wu = xor i16 %i.wt, %i.ws
  %i.wv = zext nneg i16 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.wv
  %i.wx = load i16, ptr %i.ww, align 2, !tbaa !122
  %i.wy = xor i16 %i.wx, %i.wr
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.ba
  %.1.i.i622 = phi i16 [ %i.wy, %bb.ba ], [ %i.tr, %bb.ay ] ; 2 uses
  %i.wz = lshr i64 %i.ts, 40
  %i.xa = trunc i64 %i.wz to i16
  %i.xb = shl i16 %.1.i.i622, 8
  %i.xc = lshr i16 %.1.i.i622, 8
  %i.xd = and i16 %i.xa, 255
  %i.xe = xor i16 %i.xc, %i.xd
  %i.xf = zext nneg i16 %i.xe to i64
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.xf
  %i.xh = load i16, ptr %i.xg, align 2, !tbaa !122
  %i.xi = xor i16 %i.xb, %i.xh
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ay, %bb.bb
  %.2.i.i621 = phi i16 [ %i.xi, %bb.bb ], [ %i.tr, %bb.ay ] ; 2 uses
  %i.xj = lshr i64 %i.ts, 32
  %i.xk = trunc i64 %i.xj to i16
  %i.xl = shl i16 %.2.i.i621, 8
  %i.xm = lshr i16 %.2.i.i621, 8
  %i.xn = and i16 %i.xk, 255
  %i.xo = xor i16 %i.xm, %i.xn
  %i.xp = zext nneg i16 %i.xo to i64
  %i.xq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.xp
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !122
  %i.xs = xor i16 %i.xl, %i.xr
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ay, %bb.bc
end_hunk_2
begin_hunk_3_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.aas = lshr i64 %i.zz, 40
  %i.aat = trunc i64 %i.aas to i16
  %i.aau = shl i16 %i.aaq, 8
  %i.aav = lshr i16 %i.aar, 8
  %i.aaw = and i16 %i.aat, 255
  %i.aax = xor i16 %i.aav, %i.aaw
  %i.aay = zext nneg i16 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.aay
  %i.aba = load i16, ptr %i.aaz, align 2, !tbaa !122 ; 2 uses
  %i.abb = xor i16 %i.aau, %i.aba
  %i.abc = lshr i64 %i.zz, 32
  %i.abd = trunc i64 %i.abc to i16
  %i.abe = shl i16 %i.aba, 8
  %i.abf = lshr i16 %i.abb, 8
  %i.abg = and i16 %i.abd, 255
  %i.abh = xor i16 %i.abf, %i.abg
  %i.abi = zext nneg i16 %i.abh to i64
  %i.abj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.abi
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !122 ; 2 uses
  %i.abl = xor i16 %i.abe, %i.abk
  %i.abm = lshr i64 %i.zz, 24
  %i.abn = trunc i64 %i.abm to i16
  %i.abo = shl i16 %i.abk, 8
  %i.abp = lshr i16 %i.abl, 8
  %i.abq = and i16 %i.abn, 255
  %i.abr = xor i16 %i.abp, %i.abq
  %i.abs = zext nneg i16 %i.abr to i64
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.abs
  %i.abu = load i16, ptr %i.abt, align 2, !tbaa !122 ; 2 uses
  %i.abv = xor i16 %i.abo, %i.abu
  %i.abw = lshr i64 %i.zz, 16
  %i.abx = trunc i64 %i.abw to i16
  %i.aby = shl i16 %i.abu, 8
  %i.abz = lshr i16 %i.abv, 8
  %i.aca = and i16 %i.abx, 255
  %i.acb = xor i16 %i.abz, %i.aca
  %i.acc = zext nneg i16 %i.acb to i64
  %i.acd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.acc
  %i.ace = load i16, ptr %i.acd, align 2, !tbaa !122 ; 2 uses
  %i.acf = trunc i64 %i.zz to i16                 ; 2 uses
  %i.acg = shl i16 %i.ace, 8
  %i.ach = xor i16 %i.aby, %i.acf
  %i.aci = xor i16 %i.ach, %i.ace
  %i.acj = lshr i16 %i.aci, 8
  %i.ack = zext nneg i16 %i.acj to i64
  %i.acl = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ack
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !122 ; 2 uses
  %i.acn = xor i16 %i.acg, %i.acm
  %i.aco = shl i16 %i.acm, 8
  %i.acp = lshr i16 %i.acn, 8
  %i.acq = and i16 %i.acf, 255
  %i.acr = xor i16 %i.acp, %i.acq
  %i.acs = zext nneg i16 %i.acr to i64
  %i.act = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.acs
  %i.acu = load i16, ptr %i.act, align 2, !tbaa !122
  %i.acv = xor i16 %i.aco, %i.acu
  store i16 %i.acv, ptr %i.pg, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i638

._crit_edge:                                      ; preds = %bb.bm
  %.pre1278 = trunc i64 %i.zz to i16
  br label %bb.bu

bb.bo:                                            ; preds = %bb.bm
  %i.acw = lshr i64 %i.zz, 48
  %i.acx = trunc nuw i64 %i.acw to i16
  %i.acy = shl i16 %i.zy, 8
  %i.acz = lshr i16 %i.zy, 8
  %i.ada = and i16 %i.acx, 255
  %i.adb = xor i16 %i.ada, %i.acz
  %i.adc = zext nneg i16 %i.adb to i64
  %i.add = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.adc
  %i.ade = load i16, ptr %i.add, align 2, !tbaa !122
  %i.adf = xor i16 %i.ade, %i.acy
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bm, %bb.bo
  %.1.i105.i643 = phi i16 [ %i.adf, %bb.bo ], [ %i.zy, %bb.bm ] ; 2 uses
  %i.adg = lshr i64 %i.zz, 40
  %i.adh = trunc i64 %i.adg to i16
  %i.adi = shl i16 %.1.i105.i643, 8
  %i.adj = lshr i16 %.1.i105.i643, 8
  %i.adk = and i16 %i.adh, 255
  %i.adl = xor i16 %i.adj, %i.adk
  %i.adm = zext nneg i16 %i.adl to i64
  %i.adn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.adm
  %i.ado = load i16, ptr %i.adn, align 2, !tbaa !122
  %i.adp = xor i16 %i.adi, %i.ado
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bm, %bb.bp
  %.2.i104.i642 = phi i16 [ %i.adp, %bb.bp ], [ %i.zy, %bb.bm ] ; 2 uses
  %i.adq = lshr i64 %i.zz, 32
  %i.adr = trunc i64 %i.adq to i16
  %i.ads = shl i16 %.2.i104.i642, 8
  %i.adt = lshr i16 %.2.i104.i642, 8
  %i.adu = and i16 %i.adr, 255
  %i.adv = xor i16 %i.adt, %i.adu
  %i.adw = zext nneg i16 %i.adv to i64
  %i.adx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.adw
  %i.ady = load i16, ptr %i.adx, align 2, !tbaa !122
  %i.adz = xor i16 %i.ads, %i.ady
  br label %bb.br

bb.br:                                            ; preds = %bb.bm, %bb.bq
  %.3.i103.i641 = phi i16 [ %i.adz, %bb.bq ], [ %i.zy, %bb.bm ] ; 2 uses
  %i.aea = lshr i64 %i.zz, 24
  %i.aeb = trunc i64 %i.aea to i16
  %i.aec = shl i16 %.3.i103.i641, 8
  %i.aed = lshr i16 %.3.i103.i641, 8
  %i.aee = and i16 %i.aeb, 255
  %i.aef = xor i16 %i.aed, %i.aee
  %i.aeg = zext nneg i16 %i.aef to i64
  %i.aeh = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.aeg
  %i.aei = load i16, ptr %i.aeh, align 2, !tbaa !122
  %i.aej = xor i16 %i.aec, %i.aei
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bm, %bb.br
  %.4.i102.i640 = phi i16 [ %i.aej, %bb.br ], [ %i.zy, %bb.bm ] ; 2 uses
  %i.aek = lshr i64 %i.zz, 16
  %i.ael = trunc i64 %i.aek to i16
  %i.aem = shl i16 %.4.i102.i640, 8
  %i.aen = lshr i16 %.4.i102.i640, 8
  %i.aeo = and i16 %i.ael, 255
  %i.aep = xor i16 %i.aen, %i.aeo
  %i.aeq = zext nneg i16 %i.aep to i64
  %i.aer = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.aeq
  %i.aes = load i16, ptr %i.aer, align 2, !tbaa !122
  %i.aet = xor i16 %i.aem, %i.aes
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bm, %bb.bs
  %.5.i101.i639 = phi i16 [ %i.aet, %bb.bs ], [ %i.zy, %bb.bm ] ; 2 uses
  %i.aeu = trunc i64 %i.zz to i16                 ; 2 uses
  %i.aev = shl i16 %.5.i101.i639, 8
  %i.aew = xor i16 %.5.i101.i639, %i.aeu
  %i.aex = lshr i16 %i.aew, 8
  %i.aey = zext nneg i16 %i.aex to i64
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.aey
  %i.afa = load i16, ptr %i.aez, align 2, !tbaa !122
  %i.afb = xor i16 %i.aev, %i.afa
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge, %bb.bt
  %.pre-phi1279 = phi i16 [ %.pre1278, %._crit_edge ], [ %i.aeu, %bb.bt ]
  %.6.i99.i635 = phi i16 [ %i.zy, %._crit_edge ], [ %i.afb, %bb.bt ] ; 2 uses
  %i.afc = shl i16 %.6.i99.i635, 8
  %i.afd = lshr i16 %.6.i99.i635, 8
  %i.afe = and i16 %.pre-phi1279, 255
  %i.aff = xor i16 %i.afd, %i.afe
  %i.afg = zext nneg i16 %i.aff to i64
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.afg
  %i.afi = load i16, ptr %i.afh, align 2, !tbaa !122
  %i.afj = xor i16 %i.afc, %i.afi
  br label %ma_dr_flac_crc16_bytes.exit107.i636

ma_dr_flac_crc16_bytes.exit107.i636:              ; preds = %bb.bm, %bb.bu
  %.7.i100.i637 = phi i16 [ %i.zy, %bb.bm ], [ %i.afj, %bb.bu ]
  store i16 %.7.i100.i637, ptr %i.pg, align 8, !tbaa !1198
  store i32 0, ptr %i.pf, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i638

ma_dr_flac__update_crc16.exit.i638:               ; preds = %ma_dr_flac_crc16_bytes.exit107.i636, %bb.bn
  %i.afk = add nuw nsw i32 %i.zv, 1
  store i32 %i.afk, ptr %i.pe, align 8, !tbaa !738
  %i.afl = zext nneg i32 %i.zv to i64
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.afl
  %i.afn = load i64, ptr %i.afm, align 8, !tbaa !164
  %i.afo = tail call i64 @llvm.bswap.i64(i64 %i.afn) ; 2 uses
  store i64 %i.afo, ptr %i.ph, align 8, !tbaa !741
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bl
  %i.afp = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i598 = icmp eq i32 %i.afp, 0
  br i1 %.not.i598, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.afq = load i64, ptr %i.pc, align 8, !tbaa !740
  %i.afr = load i32, ptr %i.pd, align 4, !tbaa !739
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %ma_dr_flac__update_crc16.exit.i638
  %.479.i599 = phi i64 [ %i.afo, %ma_dr_flac__update_crc16.exit.i638 ], [ %i.afq, %bb.bw ] ; 7 uses
  %.4.i600 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i638 ], [ %i.afr, %bb.bw ]
  %i.afs = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i601 = icmp eq i32 %i.afs, 0
  br i1 %.not.i.i601, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aft = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i599) #55, !srcloc !1207
  %i.afu = trunc i64 %i.aft to i32
  br label %ma_dr_flac__clz.exit.i602

bb.bz:                                            ; preds = %bb.bx
  %i.afv = icmp eq i64 %.479.i599, 0
  br i1 %i.afv, label %ma_dr_flac__clz.exit.i602, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.afw = lshr i64 %.479.i599, 60                ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.afw
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !118
  %i.afz = icmp eq i64 %i.afw, 0
  br i1 %i.afz, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.aga = icmp ult i64 %.479.i599, 4294967296    ; 2 uses
  %i.agb = shl nuw i64 %.479.i599, 32
  %spec.select.i114.i627 = select i1 %i.aga, i64 %i.agb, i64 %.479.i599 ; 3 uses
  %spec.select26.i115.i628 = select i1 %i.aga, i32 32, i32 0 ; 2 uses
  %i.agc = icmp ult i64 %spec.select.i114.i627, 281474976710656 ; 2 uses
  %i.agd = or disjoint i32 %spec.select26.i115.i628, 16
  %i.age = shl nuw i64 %spec.select.i114.i627, 16
  %.119.i116.i629 = select i1 %i.agc, i64 %i.age, i64 %spec.select.i114.i627 ; 3 uses
  %.1.i117.i630 = select i1 %i.agc, i32 %i.agd, i32 %spec.select26.i115.i628 ; 2 uses
  %i.agf = icmp ult i64 %.119.i116.i629, 72057594037927936 ; 2 uses
  %i.agg = or disjoint i32 %.1.i117.i630, 8
  %i.agh = shl nuw i64 %.119.i116.i629, 8
  %.220.i118.i631 = select i1 %i.agf, i64 %i.agh, i64 %.119.i116.i629 ; 3 uses
  %.2.i119.i632 = select i1 %i.agf, i32 %i.agg, i32 %.1.i117.i630 ; 2 uses
  %i.agi = icmp ult i64 %.220.i118.i631, 1152921504606846976 ; 2 uses
  %i.agj = or disjoint i32 %.2.i119.i632, 4
  %i.agk = shl nuw i64 %.220.i118.i631, 4
  %.321.i120.i633 = select i1 %i.agi, i64 %i.agk, i64 %.220.i118.i631
  %.3.i121.i634 = select i1 %i.agi, i32 %i.agj, i32 %.2.i119.i632
  %i.agl = lshr i64 %.321.i120.i633, 60
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.agl
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !118
  %i.ago = add i32 %i.agn, %.3.i121.i634
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.4.i112.i624 = phi i32 [ %i.ago, %bb.cb ], [ %i.afy, %bb.ca ]
  %i.agp = add i32 %.4.i112.i624, -1
  br label %ma_dr_flac__clz.exit.i602

ma_dr_flac__clz.exit.i602:                        ; preds = %bb.bz, %bb.cc, %bb.by
  %.0.i.i603 = phi i32 [ %i.afu, %bb.by ], [ %i.agp, %bb.cc ], [ 64, %bb.bz ] ; 3 uses
  %i.agq = add i32 %.0.i.i603, %.0.i597           ; 2 uses
  %i.agr = icmp ult i32 %.0.i.i603, 64
  br i1 %i.agr, label %.loopexit1138, label %bb.bl

bb.cd:                                            ; preds = %bb.bk, %bb.aw
  %.8.in = phi i64 [ %i.zs, %bb.bk ], [ %i.tk, %bb.aw ]
  %.681.i608 = phi i64 [ %i.zt, %bb.bk ], [ %i.tl, %bb.aw ] ; 8 uses
  %.6.i609 = phi i32 [ %.173.i613, %bb.bk ], [ %i.tm, %bb.aw ] ; 3 uses
  %.8 = trunc i64 %.8.in to i32
  store i64 %.681.i608, ptr %i.pc, align 8, !tbaa !740
  store i32 %.6.i609, ptr %i.pd, align 4, !tbaa !739
  %i.ags = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i525 = icmp eq i32 %i.ags, 0
  br i1 %.not.i94.i525, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.agt = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.681.i608) #55, !srcloc !1207
  %i.agu = trunc i64 %i.agt to i32
  br label %ma_dr_flac__clz.exit96.i526

bb.cf:                                            ; preds = %bb.cd
  %i.agv = icmp eq i64 %.681.i608, 0
  br i1 %i.agv, label %ma_dr_flac__clz.exit96.i526.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.agw = lshr i64 %.681.i608, 60                ; 2 uses
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.agw
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !118
  %i.agz = icmp eq i64 %i.agw, 0
  br i1 %i.agz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.aha = icmp ult i64 %.681.i608, 4294967296    ; 2 uses
  %i.ahb = shl nuw i64 %.681.i608, 32
  %spec.select.i.i582 = select i1 %i.aha, i64 %i.ahb, i64 %.681.i608 ; 3 uses
  %spec.select26.i.i583 = select i1 %i.aha, i32 32, i32 0 ; 2 uses
  %i.ahc = icmp ult i64 %spec.select.i.i582, 281474976710656 ; 2 uses
  %i.ahd = or disjoint i32 %spec.select26.i.i583, 16
  %i.ahe = shl nuw i64 %spec.select.i.i582, 16
  %.119.i.i584 = select i1 %i.ahc, i64 %i.ahe, i64 %spec.select.i.i582 ; 3 uses
  %.1.i109.i585 = select i1 %i.ahc, i32 %i.ahd, i32 %spec.select26.i.i583 ; 2 uses
  %i.ahf = icmp ult i64 %.119.i.i584, 72057594037927936 ; 2 uses
  %i.ahg = or disjoint i32 %.1.i109.i585, 8
  %i.ahh = shl nuw i64 %.119.i.i584, 8
  %.220.i.i586 = select i1 %i.ahf, i64 %i.ahh, i64 %.119.i.i584 ; 3 uses
  %.2.i110.i587 = select i1 %i.ahf, i32 %i.ahg, i32 %.1.i109.i585 ; 2 uses
  %i.ahi = icmp ult i64 %.220.i.i586, 1152921504606846976 ; 2 uses
  %i.ahj = or disjoint i32 %.2.i110.i587, 4
  %i.ahk = shl nuw i64 %.220.i.i586, 4
  %.321.i.i588 = select i1 %i.ahi, i64 %i.ahk, i64 %.220.i.i586
  %.3.i111.i589 = select i1 %i.ahi, i32 %i.ahj, i32 %.2.i110.i587
  %i.ahl = lshr i64 %.321.i.i588, 60
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.ahl
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !118
  %i.aho = add i32 %i.ahn, %.3.i111.i589
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.4.i108.i579 = phi i32 [ %i.aho, %bb.ch ], [ %i.agy, %bb.cg ]
  %i.ahp = add i32 %.4.i108.i579, -1
  br label %ma_dr_flac__clz.exit96.i526

ma_dr_flac__clz.exit96.i526:                      ; preds = %bb.ci, %bb.ce
  %.0.i95.i527 = phi i32 [ %i.agu, %bb.ce ], [ %i.ahp, %bb.ci ] ; 3 uses
  %i.ahq = icmp ult i32 %.0.i95.i527, 64
  br i1 %i.ahq, label %.loopexit1136, label %ma_dr_flac__clz.exit96.i526.thread

.loopexit1136:                                    ; preds = %ma_dr_flac__clz.exit.i536, %ma_dr_flac__clz.exit96.i526
  %.41060 = phi i32 [ %.0.i95.i527, %ma_dr_flac__clz.exit96.i526 ], [ %i.ava, %ma_dr_flac__clz.exit.i536 ]
  %.075.i538 = phi i64 [ %.681.i608, %ma_dr_flac__clz.exit96.i526 ], [ %.479.i533, %ma_dr_flac__clz.exit.i536 ]
  %.072.i539 = phi i32 [ %.6.i609, %ma_dr_flac__clz.exit96.i526 ], [ %.4.i534, %ma_dr_flac__clz.exit.i536 ]
  %.070.i540 = phi i32 [ %.0.i95.i527, %ma_dr_flac__clz.exit96.i526 ], [ %.0.i.i537, %ma_dr_flac__clz.exit.i536 ] ; 2 uses
  %i.ahr = zext nneg i32 %.070.i540 to i64
  %i.ahs = shl i64 %.075.i538, %i.ahr             ; 2 uses
  %i.aht = add i32 %.070.i540, %.072.i539         ; 3 uses
  %.not90.i541 = icmp ugt i32 %i.aht, %i.pb
  %i.ahu = lshr i64 %i.ahs, %i.pj                 ; 2 uses
  br i1 %.not90.i541, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.loopexit1136
  %i.ahv = shl i64 %i.ahs, %i.pa
  %i.ahw = add i32 %i.aht, %i.oz
  br label %bb.dq

bb.ck:                                            ; preds = %.loopexit1136
  %i.ahx = sub nuw i32 %i.aht, %i.pb              ; 4 uses
  %i.ahy = load i32, ptr %i.pe, align 8, !tbaa !738 ; 3 uses
  %i.ahz = icmp ult i32 %i.ahy, 512
  br i1 %i.ahz, label %bb.cl, label %bb.cu

bb.cl:                                            ; preds = %bb.ck
  %i.aia = load i32, ptr %i.pf, align 8, !tbaa !742
  %i.aib = load i16, ptr %i.pg, align 8, !tbaa !1198 ; 11 uses
  %i.aic = load i64, ptr %i.ph, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.aia, label %ma_dr_flac_crc16_bytes.exit.i549 [
    i32 0, label %bb.cm
    i32 7, label %._crit_edge1229
    i32 1, label %bb.cn
    i32 2, label %bb.co
    i32 3, label %bb.cp
    i32 4, label %bb.cq
    i32 5, label %bb.cr
    i32 6, label %bb.cs
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.aid = lshr i64 %i.aic, 56
  %i.aie = shl i16 %i.aib, 8
  %i.aif = lshr i16 %i.aib, 8
  %i.aig = zext nneg i16 %i.aif to i64
  %i.aih = xor i64 %i.aid, %i.aig
  %i.aii = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.aih
  %i.aij = load i16, ptr %i.aii, align 2, !tbaa !122 ; 2 uses
  %i.aik = xor i16 %i.aij, %i.aie
  %i.ail = lshr i64 %i.aic, 48
  %i.aim = trunc nuw i64 %i.ail to i16
  %i.ain = shl i16 %i.aij, 8
  %i.aio = lshr i16 %i.aik, 8
  %i.aip = and i16 %i.aim, 255
  %i.aiq = xor i16 %i.aio, %i.aip
  %i.air = zext nneg i16 %i.aiq to i64
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.air
  %i.ait = load i16, ptr %i.ais, align 2, !tbaa !122 ; 2 uses
  %i.aiu = xor i16 %i.ain, %i.ait
  %i.aiv = lshr i64 %i.aic, 40
  %i.aiw = trunc i64 %i.aiv to i16
  %i.aix = shl i16 %i.ait, 8
  %i.aiy = lshr i16 %i.aiu, 8
  %i.aiz = and i16 %i.aiw, 255
  %i.aja = xor i16 %i.aiy, %i.aiz
  %i.ajb = zext nneg i16 %i.aja to i64
  %i.ajc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ajb
  %i.ajd = load i16, ptr %i.ajc, align 2, !tbaa !122 ; 2 uses
  %i.aje = xor i16 %i.aix, %i.ajd
  %i.ajf = lshr i64 %i.aic, 32
  %i.ajg = trunc i64 %i.ajf to i16
  %i.ajh = shl i16 %i.ajd, 8
  %i.aji = lshr i16 %i.aje, 8
  %i.ajj = and i16 %i.ajg, 255
  %i.ajk = xor i16 %i.aji, %i.ajj
  %i.ajl = zext nneg i16 %i.ajk to i64
  %i.ajm = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ajl
  %i.ajn = load i16, ptr %i.ajm, align 2, !tbaa !122 ; 2 uses
  %i.ajo = xor i16 %i.ajh, %i.ajn
  %i.ajp = lshr i64 %i.aic, 24
  %i.ajq = trunc i64 %i.ajp to i16
  %i.ajr = shl i16 %i.ajn, 8
  %i.ajs = lshr i16 %i.ajo, 8
  %i.ajt = and i16 %i.ajq, 255
  %i.aju = xor i16 %i.ajs, %i.ajt
  %i.ajv = zext nneg i16 %i.aju to i64
  %i.ajw = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ajv
  %i.ajx = load i16, ptr %i.ajw, align 2, !tbaa !122 ; 2 uses
  %i.ajy = xor i16 %i.ajr, %i.ajx
  %i.ajz = lshr i64 %i.aic, 16
  %i.aka = trunc i64 %i.ajz to i16
  %i.akb = shl i16 %i.ajx, 8
  %i.akc = lshr i16 %i.ajy, 8
  %i.akd = and i16 %i.aka, 255
  %i.ake = xor i16 %i.akc, %i.akd
  %i.akf = zext nneg i16 %i.ake to i64
  %i.akg = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.akf
  %i.akh = load i16, ptr %i.akg, align 2, !tbaa !122 ; 2 uses
  %i.aki = trunc i64 %i.aic to i16                ; 2 uses
  %i.akj = shl i16 %i.akh, 8
  %i.akk = xor i16 %i.akb, %i.aki
  %i.akl = xor i16 %i.akk, %i.akh
  %i.akm = lshr i16 %i.akl, 8
  %i.akn = zext nneg i16 %i.akm to i64
  %i.ako = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.akn
  %i.akp = load i16, ptr %i.ako, align 2, !tbaa !122 ; 2 uses
  %i.akq = xor i16 %i.akj, %i.akp
  %i.akr = shl i16 %i.akp, 8
  %i.aks = lshr i16 %i.akq, 8
  %i.akt = and i16 %i.aki, 255
  %i.aku = xor i16 %i.aks, %i.akt
  %i.akv = zext nneg i16 %i.aku to i64
  %i.akw = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.akv
  %i.akx = load i16, ptr %i.akw, align 2, !tbaa !122
  %i.aky = xor i16 %i.akr, %i.akx
  store i16 %i.aky, ptr %i.pg, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit97.i551

._crit_edge1229:                                  ; preds = %bb.cl
  %.pre1272 = trunc i64 %i.aic to i16
  br label %bb.ct

bb.cn:                                            ; preds = %bb.cl
  %i.akz = lshr i64 %i.aic, 48
  %i.ala = trunc nuw i64 %i.akz to i16
  %i.alb = shl i16 %i.aib, 8
  %i.alc = lshr i16 %i.aib, 8
  %i.ald = and i16 %i.ala, 255
  %i.ale = xor i16 %i.ald, %i.alc
  %i.alf = zext nneg i16 %i.ale to i64
  %i.alg = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.alf
  %i.alh = load i16, ptr %i.alg, align 2, !tbaa !122
  %i.ali = xor i16 %i.alh, %i.alb
  br label %bb.co

bb.co:                                            ; preds = %bb.cl, %bb.cn
  %.1.i.i556 = phi i16 [ %i.ali, %bb.cn ], [ %i.aib, %bb.cl ] ; 2 uses
  %i.alj = lshr i64 %i.aic, 40
  %i.alk = trunc i64 %i.alj to i16
  %i.all = shl i16 %.1.i.i556, 8
  %i.alm = lshr i16 %.1.i.i556, 8
  %i.aln = and i16 %i.alk, 255
  %i.alo = xor i16 %i.alm, %i.aln
  %i.alp = zext nneg i16 %i.alo to i64
  %i.alq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.alp
  %i.alr = load i16, ptr %i.alq, align 2, !tbaa !122
  %i.als = xor i16 %i.all, %i.alr
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cl, %bb.co
  %.2.i.i555 = phi i16 [ %i.als, %bb.co ], [ %i.aib, %bb.cl ] ; 2 uses
  %i.alt = lshr i64 %i.aic, 32
  %i.alu = trunc i64 %i.alt to i16
  %i.alv = shl i16 %.2.i.i555, 8
  %i.alw = lshr i16 %.2.i.i555, 8
  %i.alx = and i16 %i.alu, 255
  %i.aly = xor i16 %i.alw, %i.alx
  %i.alz = zext nneg i16 %i.aly to i64
  %i.ama = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.alz
  %i.amb = load i16, ptr %i.ama, align 2, !tbaa !122
  %i.amc = xor i16 %i.alv, %i.amb
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cl, %bb.cp
end_hunk_3
begin_hunk_4_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.apc = lshr i64 %i.aoj, 40
  %i.apd = trunc i64 %i.apc to i16
  %i.ape = shl i16 %i.apa, 8
  %i.apf = lshr i16 %i.apb, 8
  %i.apg = and i16 %i.apd, 255
  %i.aph = xor i16 %i.apf, %i.apg
  %i.api = zext nneg i16 %i.aph to i64
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.api
  %i.apk = load i16, ptr %i.apj, align 2, !tbaa !122 ; 2 uses
  %i.apl = xor i16 %i.ape, %i.apk
  %i.apm = lshr i64 %i.aoj, 32
  %i.apn = trunc i64 %i.apm to i16
  %i.apo = shl i16 %i.apk, 8
  %i.app = lshr i16 %i.apl, 8
  %i.apq = and i16 %i.apn, 255
  %i.apr = xor i16 %i.app, %i.apq
  %i.aps = zext nneg i16 %i.apr to i64
  %i.apt = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.aps
  %i.apu = load i16, ptr %i.apt, align 2, !tbaa !122 ; 2 uses
  %i.apv = xor i16 %i.apo, %i.apu
  %i.apw = lshr i64 %i.aoj, 24
  %i.apx = trunc i64 %i.apw to i16
  %i.apy = shl i16 %i.apu, 8
  %i.apz = lshr i16 %i.apv, 8
  %i.aqa = and i16 %i.apx, 255
  %i.aqb = xor i16 %i.apz, %i.aqa
  %i.aqc = zext nneg i16 %i.aqb to i64
  %i.aqd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.aqc
  %i.aqe = load i16, ptr %i.aqd, align 2, !tbaa !122 ; 2 uses
  %i.aqf = xor i16 %i.apy, %i.aqe
  %i.aqg = lshr i64 %i.aoj, 16
  %i.aqh = trunc i64 %i.aqg to i16
  %i.aqi = shl i16 %i.aqe, 8
  %i.aqj = lshr i16 %i.aqf, 8
  %i.aqk = and i16 %i.aqh, 255
  %i.aql = xor i16 %i.aqj, %i.aqk
  %i.aqm = zext nneg i16 %i.aql to i64
  %i.aqn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.aqm
  %i.aqo = load i16, ptr %i.aqn, align 2, !tbaa !122 ; 2 uses
  %i.aqp = trunc i64 %i.aoj to i16                ; 2 uses
  %i.aqq = shl i16 %i.aqo, 8
  %i.aqr = xor i16 %i.aqi, %i.aqp
  %i.aqs = xor i16 %i.aqr, %i.aqo
  %i.aqt = lshr i16 %i.aqs, 8
  %i.aqu = zext nneg i16 %i.aqt to i64
  %i.aqv = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.aqu
  %i.aqw = load i16, ptr %i.aqv, align 2, !tbaa !122 ; 2 uses
  %i.aqx = xor i16 %i.aqq, %i.aqw
  %i.aqy = shl i16 %i.aqw, 8
  %i.aqz = lshr i16 %i.aqx, 8
  %i.ara = and i16 %i.aqp, 255
  %i.arb = xor i16 %i.aqz, %i.ara
  %i.arc = zext nneg i16 %i.arb to i64
  %i.ard = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.arc
  %i.are = load i16, ptr %i.ard, align 2, !tbaa !122
  %i.arf = xor i16 %i.aqy, %i.are
  store i16 %i.arf, ptr %i.pg, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i572

._crit_edge1228:                                  ; preds = %bb.cz
  %.pre1274 = trunc i64 %i.aoj to i16
  br label %bb.dh

bb.db:                                            ; preds = %bb.cz
  %i.arg = lshr i64 %i.aoj, 48
  %i.arh = trunc nuw i64 %i.arg to i16
  %i.ari = shl i16 %i.aoi, 8
  %i.arj = lshr i16 %i.aoi, 8
  %i.ark = and i16 %i.arh, 255
  %i.arl = xor i16 %i.ark, %i.arj
  %i.arm = zext nneg i16 %i.arl to i64
  %i.arn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.arm
  %i.aro = load i16, ptr %i.arn, align 2, !tbaa !122
  %i.arp = xor i16 %i.aro, %i.ari
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cz, %bb.db
  %.1.i105.i577 = phi i16 [ %i.arp, %bb.db ], [ %i.aoi, %bb.cz ] ; 2 uses
  %i.arq = lshr i64 %i.aoj, 40
  %i.arr = trunc i64 %i.arq to i16
  %i.ars = shl i16 %.1.i105.i577, 8
  %i.art = lshr i16 %.1.i105.i577, 8
  %i.aru = and i16 %i.arr, 255
  %i.arv = xor i16 %i.art, %i.aru
  %i.arw = zext nneg i16 %i.arv to i64
  %i.arx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.arw
  %i.ary = load i16, ptr %i.arx, align 2, !tbaa !122
  %i.arz = xor i16 %i.ars, %i.ary
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cz, %bb.dc
  %.2.i104.i576 = phi i16 [ %i.arz, %bb.dc ], [ %i.aoi, %bb.cz ] ; 2 uses
  %i.asa = lshr i64 %i.aoj, 32
  %i.asb = trunc i64 %i.asa to i16
  %i.asc = shl i16 %.2.i104.i576, 8
  %i.asd = lshr i16 %.2.i104.i576, 8
  %i.ase = and i16 %i.asb, 255
  %i.asf = xor i16 %i.asd, %i.ase
  %i.asg = zext nneg i16 %i.asf to i64
  %i.ash = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.asg
  %i.asi = load i16, ptr %i.ash, align 2, !tbaa !122
  %i.asj = xor i16 %i.asc, %i.asi
  br label %bb.de

bb.de:                                            ; preds = %bb.cz, %bb.dd
  %.3.i103.i575 = phi i16 [ %i.asj, %bb.dd ], [ %i.aoi, %bb.cz ] ; 2 uses
  %i.ask = lshr i64 %i.aoj, 24
  %i.asl = trunc i64 %i.ask to i16
  %i.asm = shl i16 %.3.i103.i575, 8
  %i.asn = lshr i16 %.3.i103.i575, 8
  %i.aso = and i16 %i.asl, 255
  %i.asp = xor i16 %i.asn, %i.aso
  %i.asq = zext nneg i16 %i.asp to i64
  %i.asr = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.asq
  %i.ass = load i16, ptr %i.asr, align 2, !tbaa !122
  %i.ast = xor i16 %i.asm, %i.ass
  br label %bb.df

bb.df:                                            ; preds = %bb.cz, %bb.de
  %.4.i102.i574 = phi i16 [ %i.ast, %bb.de ], [ %i.aoi, %bb.cz ] ; 2 uses
  %i.asu = lshr i64 %i.aoj, 16
  %i.asv = trunc i64 %i.asu to i16
  %i.asw = shl i16 %.4.i102.i574, 8
  %i.asx = lshr i16 %.4.i102.i574, 8
  %i.asy = and i16 %i.asv, 255
  %i.asz = xor i16 %i.asx, %i.asy
  %i.ata = zext nneg i16 %i.asz to i64
  %i.atb = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ata
  %i.atc = load i16, ptr %i.atb, align 2, !tbaa !122
  %i.atd = xor i16 %i.asw, %i.atc
  br label %bb.dg

bb.dg:                                            ; preds = %bb.cz, %bb.df
  %.5.i101.i573 = phi i16 [ %i.atd, %bb.df ], [ %i.aoi, %bb.cz ] ; 2 uses
  %i.ate = trunc i64 %i.aoj to i16                ; 2 uses
  %i.atf = shl i16 %.5.i101.i573, 8
  %i.atg = xor i16 %.5.i101.i573, %i.ate
  %i.ath = lshr i16 %i.atg, 8
  %i.ati = zext nneg i16 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ati
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !122
  %i.atl = xor i16 %i.atf, %i.atk
  br label %bb.dh

bb.dh:                                            ; preds = %._crit_edge1228, %bb.dg
  %.pre-phi1275 = phi i16 [ %.pre1274, %._crit_edge1228 ], [ %i.ate, %bb.dg ]
  %.6.i99.i569 = phi i16 [ %i.aoi, %._crit_edge1228 ], [ %i.atl, %bb.dg ] ; 2 uses
  %i.atm = shl i16 %.6.i99.i569, 8
  %i.atn = lshr i16 %.6.i99.i569, 8
  %i.ato = and i16 %.pre-phi1275, 255
  %i.atp = xor i16 %i.atn, %i.ato
  %i.atq = zext nneg i16 %i.atp to i64
  %i.atr = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.atq
  %i.ats = load i16, ptr %i.atr, align 2, !tbaa !122
  %i.att = xor i16 %i.atm, %i.ats
  br label %ma_dr_flac_crc16_bytes.exit107.i570

ma_dr_flac_crc16_bytes.exit107.i570:              ; preds = %bb.cz, %bb.dh
  %.7.i100.i571 = phi i16 [ %i.aoi, %bb.cz ], [ %i.att, %bb.dh ]
  store i16 %.7.i100.i571, ptr %i.pg, align 8, !tbaa !1198
  store i32 0, ptr %i.pf, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i572

ma_dr_flac__update_crc16.exit.i572:               ; preds = %ma_dr_flac_crc16_bytes.exit107.i570, %bb.da
  %i.atu = add nuw nsw i32 %i.aof, 1
  store i32 %i.atu, ptr %i.pe, align 8, !tbaa !738
  %i.atv = zext nneg i32 %i.aof to i64
  %i.atw = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.atv
  %i.atx = load i64, ptr %i.atw, align 8, !tbaa !164
  %i.aty = tail call i64 @llvm.bswap.i64(i64 %i.atx) ; 2 uses
  store i64 %i.aty, ptr %i.ph, align 8, !tbaa !741
  br label %bb.dk

bb.di:                                            ; preds = %bb.cy
  %i.atz = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i532 = icmp eq i32 %i.atz, 0
  br i1 %.not.i532, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aua = load i64, ptr %i.pc, align 8, !tbaa !740
  %i.aub = load i32, ptr %i.pd, align 4, !tbaa !739
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %ma_dr_flac__update_crc16.exit.i572
  %.479.i533 = phi i64 [ %i.aty, %ma_dr_flac__update_crc16.exit.i572 ], [ %i.aua, %bb.dj ] ; 7 uses
  %.4.i534 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i572 ], [ %i.aub, %bb.dj ]
  %i.auc = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i535 = icmp eq i32 %i.auc, 0
  br i1 %.not.i.i535, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aud = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i533) #55, !srcloc !1207
  %i.aue = trunc i64 %i.aud to i32
  br label %ma_dr_flac__clz.exit.i536

bb.dm:                                            ; preds = %bb.dk
  %i.auf = icmp eq i64 %.479.i533, 0
  br i1 %i.auf, label %ma_dr_flac__clz.exit.i536, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aug = lshr i64 %.479.i533, 60                ; 2 uses
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.aug
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !118
  %i.auj = icmp eq i64 %i.aug, 0
  br i1 %i.auj, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.auk = icmp ult i64 %.479.i533, 4294967296    ; 2 uses
  %i.aul = shl nuw i64 %.479.i533, 32
  %spec.select.i114.i561 = select i1 %i.auk, i64 %i.aul, i64 %.479.i533 ; 3 uses
  %spec.select26.i115.i562 = select i1 %i.auk, i32 32, i32 0 ; 2 uses
  %i.aum = icmp ult i64 %spec.select.i114.i561, 281474976710656 ; 2 uses
  %i.aun = or disjoint i32 %spec.select26.i115.i562, 16
  %i.auo = shl nuw i64 %spec.select.i114.i561, 16
  %.119.i116.i563 = select i1 %i.aum, i64 %i.auo, i64 %spec.select.i114.i561 ; 3 uses
  %.1.i117.i564 = select i1 %i.aum, i32 %i.aun, i32 %spec.select26.i115.i562 ; 2 uses
  %i.aup = icmp ult i64 %.119.i116.i563, 72057594037927936 ; 2 uses
  %i.auq = or disjoint i32 %.1.i117.i564, 8
  %i.aur = shl nuw i64 %.119.i116.i563, 8
  %.220.i118.i565 = select i1 %i.aup, i64 %i.aur, i64 %.119.i116.i563 ; 3 uses
  %.2.i119.i566 = select i1 %i.aup, i32 %i.auq, i32 %.1.i117.i564 ; 2 uses
  %i.aus = icmp ult i64 %.220.i118.i565, 1152921504606846976 ; 2 uses
  %i.aut = or disjoint i32 %.2.i119.i566, 4
  %i.auu = shl nuw i64 %.220.i118.i565, 4
  %.321.i120.i567 = select i1 %i.aus, i64 %i.auu, i64 %.220.i118.i565
  %.3.i121.i568 = select i1 %i.aus, i32 %i.aut, i32 %.2.i119.i566
  %i.auv = lshr i64 %.321.i120.i567, 60
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.auv
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !118
  %i.auy = add i32 %i.aux, %.3.i121.i568
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.4.i112.i558 = phi i32 [ %i.auy, %bb.do ], [ %i.aui, %bb.dn ]
  %i.auz = add i32 %.4.i112.i558, -1
  br label %ma_dr_flac__clz.exit.i536

ma_dr_flac__clz.exit.i536:                        ; preds = %bb.dm, %bb.dp, %bb.dl
  %.0.i.i537 = phi i32 [ %i.aue, %bb.dl ], [ %i.auz, %bb.dp ], [ 64, %bb.dm ] ; 3 uses
  %i.ava = add i32 %.0.i.i537, %.0.i531           ; 2 uses
  %i.avb = icmp ult i32 %.0.i.i537, 64
  br i1 %i.avb, label %.loopexit1136, label %bb.cy

bb.dq:                                            ; preds = %bb.cx, %bb.cj
  %.41036.in = phi i64 [ %i.aoc, %bb.cx ], [ %i.ahu, %bb.cj ]
  %.681.i542 = phi i64 [ %i.aod, %bb.cx ], [ %i.ahv, %bb.cj ] ; 8 uses
  %.6.i543 = phi i32 [ %.173.i547, %bb.cx ], [ %i.ahw, %bb.cj ] ; 3 uses
  %.41036 = trunc i64 %.41036.in to i32
  store i64 %.681.i542, ptr %i.pc, align 8, !tbaa !740
  store i32 %.6.i543, ptr %i.pd, align 4, !tbaa !739
  %i.avc = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i459 = icmp eq i32 %i.avc, 0
  br i1 %.not.i94.i459, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.avd = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.681.i542) #55, !srcloc !1207
  %i.ave = trunc i64 %i.avd to i32
  br label %ma_dr_flac__clz.exit96.i460

bb.ds:                                            ; preds = %bb.dq
  %i.avf = icmp eq i64 %.681.i542, 0
  br i1 %i.avf, label %ma_dr_flac__clz.exit96.i460.thread, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.avg = lshr i64 %.681.i542, 60                ; 2 uses
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.avg
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !118
  %i.avj = icmp eq i64 %i.avg, 0
  br i1 %i.avj, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.avk = icmp ult i64 %.681.i542, 4294967296    ; 2 uses
  %i.avl = shl nuw i64 %.681.i542, 32
  %spec.select.i.i516 = select i1 %i.avk, i64 %i.avl, i64 %.681.i542 ; 3 uses
  %spec.select26.i.i517 = select i1 %i.avk, i32 32, i32 0 ; 2 uses
  %i.avm = icmp ult i64 %spec.select.i.i516, 281474976710656 ; 2 uses
  %i.avn = or disjoint i32 %spec.select26.i.i517, 16
  %i.avo = shl nuw i64 %spec.select.i.i516, 16
  %.119.i.i518 = select i1 %i.avm, i64 %i.avo, i64 %spec.select.i.i516 ; 3 uses
  %.1.i109.i519 = select i1 %i.avm, i32 %i.avn, i32 %spec.select26.i.i517 ; 2 uses
  %i.avp = icmp ult i64 %.119.i.i518, 72057594037927936 ; 2 uses
  %i.avq = or disjoint i32 %.1.i109.i519, 8
  %i.avr = shl nuw i64 %.119.i.i518, 8
  %.220.i.i520 = select i1 %i.avp, i64 %i.avr, i64 %.119.i.i518 ; 3 uses
  %.2.i110.i521 = select i1 %i.avp, i32 %i.avq, i32 %.1.i109.i519 ; 2 uses
  %i.avs = icmp ult i64 %.220.i.i520, 1152921504606846976 ; 2 uses
  %i.avt = or disjoint i32 %.2.i110.i521, 4
  %i.avu = shl nuw i64 %.220.i.i520, 4
  %.321.i.i522 = select i1 %i.avs, i64 %i.avu, i64 %.220.i.i520
  %.3.i111.i523 = select i1 %i.avs, i32 %i.avt, i32 %.2.i110.i521
  %i.avv = lshr i64 %.321.i.i522, 60
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.avv
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !118
  %i.avy = add i32 %i.avx, %.3.i111.i523
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.4.i108.i513 = phi i32 [ %i.avy, %bb.du ], [ %i.avi, %bb.dt ]
  %i.avz = add i32 %.4.i108.i513, -1
  br label %ma_dr_flac__clz.exit96.i460

ma_dr_flac__clz.exit96.i460:                      ; preds = %bb.dv, %bb.dr
  %.0.i95.i461 = phi i32 [ %i.ave, %bb.dr ], [ %i.avz, %bb.dv ] ; 3 uses
  %i.awa = icmp ult i32 %.0.i95.i461, 64
  br i1 %i.awa, label %.loopexit1134, label %ma_dr_flac__clz.exit96.i460.thread

.loopexit1134:                                    ; preds = %ma_dr_flac__clz.exit.i470, %ma_dr_flac__clz.exit96.i460
  %.41054 = phi i32 [ %.0.i95.i461, %ma_dr_flac__clz.exit96.i460 ], [ %i.bjk, %ma_dr_flac__clz.exit.i470 ]
  %.075.i472 = phi i64 [ %.681.i542, %ma_dr_flac__clz.exit96.i460 ], [ %.479.i467, %ma_dr_flac__clz.exit.i470 ]
  %.072.i473 = phi i32 [ %.6.i543, %ma_dr_flac__clz.exit96.i460 ], [ %.4.i468, %ma_dr_flac__clz.exit.i470 ]
  %.070.i474 = phi i32 [ %.0.i95.i461, %ma_dr_flac__clz.exit96.i460 ], [ %.0.i.i471, %ma_dr_flac__clz.exit.i470 ] ; 2 uses
  %i.awb = zext nneg i32 %.070.i474 to i64
  %i.awc = shl i64 %.075.i472, %i.awb             ; 2 uses
  %i.awd = add i32 %.070.i474, %.072.i473         ; 3 uses
  %.not90.i475 = icmp ugt i32 %i.awd, %i.pb
  %i.awe = lshr i64 %i.awc, %i.pj                 ; 2 uses
  br i1 %.not90.i475, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.loopexit1134
  %i.awf = shl i64 %i.awc, %i.pa
  %i.awg = add i32 %i.awd, %i.oz
  br label %bb.fd

bb.dx:                                            ; preds = %.loopexit1134
  %i.awh = sub nuw i32 %i.awd, %i.pb              ; 4 uses
  %i.awi = load i32, ptr %i.pe, align 8, !tbaa !738 ; 3 uses
  %i.awj = icmp ult i32 %i.awi, 512
  br i1 %i.awj, label %bb.dy, label %bb.eh

bb.dy:                                            ; preds = %bb.dx
  %i.awk = load i32, ptr %i.pf, align 8, !tbaa !742
  %i.awl = load i16, ptr %i.pg, align 8, !tbaa !1198 ; 11 uses
  %i.awm = load i64, ptr %i.ph, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.awk, label %ma_dr_flac_crc16_bytes.exit.i483 [
    i32 0, label %bb.dz
    i32 7, label %._crit_edge1231
    i32 1, label %bb.ea
    i32 2, label %bb.eb
    i32 3, label %bb.ec
    i32 4, label %bb.ed
    i32 5, label %bb.ee
    i32 6, label %bb.ef
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.awn = lshr i64 %i.awm, 56
  %i.awo = shl i16 %i.awl, 8
  %i.awp = lshr i16 %i.awl, 8
  %i.awq = zext nneg i16 %i.awp to i64
  %i.awr = xor i64 %i.awn, %i.awq
  %i.aws = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.awr
  %i.awt = load i16, ptr %i.aws, align 2, !tbaa !122 ; 2 uses
  %i.awu = xor i16 %i.awt, %i.awo
  %i.awv = lshr i64 %i.awm, 48
  %i.aww = trunc nuw i64 %i.awv to i16
  %i.awx = shl i16 %i.awt, 8
  %i.awy = lshr i16 %i.awu, 8
  %i.awz = and i16 %i.aww, 255
  %i.axa = xor i16 %i.awy, %i.awz
  %i.axb = zext nneg i16 %i.axa to i64
  %i.axc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.axb
  %i.axd = load i16, ptr %i.axc, align 2, !tbaa !122 ; 2 uses
  %i.axe = xor i16 %i.awx, %i.axd
  %i.axf = lshr i64 %i.awm, 40
  %i.axg = trunc i64 %i.axf to i16
  %i.axh = shl i16 %i.axd, 8
  %i.axi = lshr i16 %i.axe, 8
  %i.axj = and i16 %i.axg, 255
  %i.axk = xor i16 %i.axi, %i.axj
  %i.axl = zext nneg i16 %i.axk to i64
  %i.axm = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.axl
  %i.axn = load i16, ptr %i.axm, align 2, !tbaa !122 ; 2 uses
  %i.axo = xor i16 %i.axh, %i.axn
  %i.axp = lshr i64 %i.awm, 32
  %i.axq = trunc i64 %i.axp to i16
  %i.axr = shl i16 %i.axn, 8
  %i.axs = lshr i16 %i.axo, 8
  %i.axt = and i16 %i.axq, 255
  %i.axu = xor i16 %i.axs, %i.axt
  %i.axv = zext nneg i16 %i.axu to i64
  %i.axw = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.axv
  %i.axx = load i16, ptr %i.axw, align 2, !tbaa !122 ; 2 uses
  %i.axy = xor i16 %i.axr, %i.axx
  %i.axz = lshr i64 %i.awm, 24
  %i.aya = trunc i64 %i.axz to i16
  %i.ayb = shl i16 %i.axx, 8
  %i.ayc = lshr i16 %i.axy, 8
  %i.ayd = and i16 %i.aya, 255
  %i.aye = xor i16 %i.ayc, %i.ayd
  %i.ayf = zext nneg i16 %i.aye to i64
  %i.ayg = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ayf
  %i.ayh = load i16, ptr %i.ayg, align 2, !tbaa !122 ; 2 uses
  %i.ayi = xor i16 %i.ayb, %i.ayh
  %i.ayj = lshr i64 %i.awm, 16
  %i.ayk = trunc i64 %i.ayj to i16
  %i.ayl = shl i16 %i.ayh, 8
  %i.aym = lshr i16 %i.ayi, 8
  %i.ayn = and i16 %i.ayk, 255
  %i.ayo = xor i16 %i.aym, %i.ayn
  %i.ayp = zext nneg i16 %i.ayo to i64
  %i.ayq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ayp
  %i.ayr = load i16, ptr %i.ayq, align 2, !tbaa !122 ; 2 uses
  %i.ays = trunc i64 %i.awm to i16                ; 2 uses
  %i.ayt = shl i16 %i.ayr, 8
  %i.ayu = xor i16 %i.ayl, %i.ays
  %i.ayv = xor i16 %i.ayu, %i.ayr
  %i.ayw = lshr i16 %i.ayv, 8
  %i.ayx = zext nneg i16 %i.ayw to i64
  %i.ayy = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ayx
  %i.ayz = load i16, ptr %i.ayy, align 2, !tbaa !122 ; 2 uses
  %i.aza = xor i16 %i.ayt, %i.ayz
  %i.azb = shl i16 %i.ayz, 8
  %i.azc = lshr i16 %i.aza, 8
  %i.azd = and i16 %i.ays, 255
  %i.aze = xor i16 %i.azc, %i.azd
  %i.azf = zext nneg i16 %i.aze to i64
  %i.azg = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.azf
  %i.azh = load i16, ptr %i.azg, align 2, !tbaa !122
  %i.azi = xor i16 %i.azb, %i.azh
  store i16 %i.azi, ptr %i.pg, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit97.i485

._crit_edge1231:                                  ; preds = %bb.dy
  %.pre1268 = trunc i64 %i.awm to i16
  br label %bb.eg

bb.ea:                                            ; preds = %bb.dy
  %i.azj = lshr i64 %i.awm, 48
  %i.azk = trunc nuw i64 %i.azj to i16
  %i.azl = shl i16 %i.awl, 8
  %i.azm = lshr i16 %i.awl, 8
  %i.azn = and i16 %i.azk, 255
  %i.azo = xor i16 %i.azn, %i.azm
  %i.azp = zext nneg i16 %i.azo to i64
  %i.azq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.azp
  %i.azr = load i16, ptr %i.azq, align 2, !tbaa !122
  %i.azs = xor i16 %i.azr, %i.azl
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dy, %bb.ea
  %.1.i.i490 = phi i16 [ %i.azs, %bb.ea ], [ %i.awl, %bb.dy ] ; 2 uses
  %i.azt = lshr i64 %i.awm, 40
  %i.azu = trunc i64 %i.azt to i16
  %i.azv = shl i16 %.1.i.i490, 8
  %i.azw = lshr i16 %.1.i.i490, 8
  %i.azx = and i16 %i.azu, 255
  %i.azy = xor i16 %i.azw, %i.azx
  %i.azz = zext nneg i16 %i.azy to i64
  %i.baa = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.azz
  %i.bab = load i16, ptr %i.baa, align 2, !tbaa !122
  %i.bac = xor i16 %i.azv, %i.bab
  br label %bb.ec

bb.ec:                                            ; preds = %bb.dy, %bb.eb
  %.2.i.i489 = phi i16 [ %i.bac, %bb.eb ], [ %i.awl, %bb.dy ] ; 2 uses
  %i.bad = lshr i64 %i.awm, 32
  %i.bae = trunc i64 %i.bad to i16
  %i.baf = shl i16 %.2.i.i489, 8
  %i.bag = lshr i16 %.2.i.i489, 8
  %i.bah = and i16 %i.bae, 255
  %i.bai = xor i16 %i.bag, %i.bah
  %i.baj = zext nneg i16 %i.bai to i64
  %i.bak = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.baj
  %i.bal = load i16, ptr %i.bak, align 2, !tbaa !122
  %i.bam = xor i16 %i.baf, %i.bal
  br label %bb.ed

bb.ed:                                            ; preds = %bb.dy, %bb.ec
end_hunk_4
begin_hunk_5_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.bdm = lshr i64 %i.bct, 40
  %i.bdn = trunc i64 %i.bdm to i16
  %i.bdo = shl i16 %i.bdk, 8
  %i.bdp = lshr i16 %i.bdl, 8
  %i.bdq = and i16 %i.bdn, 255
  %i.bdr = xor i16 %i.bdp, %i.bdq
  %i.bds = zext nneg i16 %i.bdr to i64
  %i.bdt = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bds
  %i.bdu = load i16, ptr %i.bdt, align 2, !tbaa !122 ; 2 uses
  %i.bdv = xor i16 %i.bdo, %i.bdu
  %i.bdw = lshr i64 %i.bct, 32
  %i.bdx = trunc i64 %i.bdw to i16
  %i.bdy = shl i16 %i.bdu, 8
  %i.bdz = lshr i16 %i.bdv, 8
  %i.bea = and i16 %i.bdx, 255
  %i.beb = xor i16 %i.bdz, %i.bea
  %i.bec = zext nneg i16 %i.beb to i64
  %i.bed = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bec
  %i.bee = load i16, ptr %i.bed, align 2, !tbaa !122 ; 2 uses
  %i.bef = xor i16 %i.bdy, %i.bee
  %i.beg = lshr i64 %i.bct, 24
  %i.beh = trunc i64 %i.beg to i16
  %i.bei = shl i16 %i.bee, 8
  %i.bej = lshr i16 %i.bef, 8
  %i.bek = and i16 %i.beh, 255
  %i.bel = xor i16 %i.bej, %i.bek
  %i.bem = zext nneg i16 %i.bel to i64
  %i.ben = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bem
  %i.beo = load i16, ptr %i.ben, align 2, !tbaa !122 ; 2 uses
  %i.bep = xor i16 %i.bei, %i.beo
  %i.beq = lshr i64 %i.bct, 16
  %i.ber = trunc i64 %i.beq to i16
  %i.bes = shl i16 %i.beo, 8
  %i.bet = lshr i16 %i.bep, 8
  %i.beu = and i16 %i.ber, 255
  %i.bev = xor i16 %i.bet, %i.beu
  %i.bew = zext nneg i16 %i.bev to i64
  %i.bex = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bew
  %i.bey = load i16, ptr %i.bex, align 2, !tbaa !122 ; 2 uses
  %i.bez = trunc i64 %i.bct to i16                ; 2 uses
  %i.bfa = shl i16 %i.bey, 8
  %i.bfb = xor i16 %i.bes, %i.bez
  %i.bfc = xor i16 %i.bfb, %i.bey
  %i.bfd = lshr i16 %i.bfc, 8
  %i.bfe = zext nneg i16 %i.bfd to i64
  %i.bff = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bfe
  %i.bfg = load i16, ptr %i.bff, align 2, !tbaa !122 ; 2 uses
  %i.bfh = xor i16 %i.bfa, %i.bfg
  %i.bfi = shl i16 %i.bfg, 8
  %i.bfj = lshr i16 %i.bfh, 8
  %i.bfk = and i16 %i.bez, 255
  %i.bfl = xor i16 %i.bfj, %i.bfk
  %i.bfm = zext nneg i16 %i.bfl to i64
  %i.bfn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bfm
  %i.bfo = load i16, ptr %i.bfn, align 2, !tbaa !122
  %i.bfp = xor i16 %i.bfi, %i.bfo
  store i16 %i.bfp, ptr %i.pg, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i506

._crit_edge1230:                                  ; preds = %bb.em
  %.pre1270 = trunc i64 %i.bct to i16
  br label %bb.eu

bb.eo:                                            ; preds = %bb.em
  %i.bfq = lshr i64 %i.bct, 48
  %i.bfr = trunc nuw i64 %i.bfq to i16
  %i.bfs = shl i16 %i.bcs, 8
  %i.bft = lshr i16 %i.bcs, 8
  %i.bfu = and i16 %i.bfr, 255
  %i.bfv = xor i16 %i.bfu, %i.bft
  %i.bfw = zext nneg i16 %i.bfv to i64
  %i.bfx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bfw
  %i.bfy = load i16, ptr %i.bfx, align 2, !tbaa !122
  %i.bfz = xor i16 %i.bfy, %i.bfs
  br label %bb.ep

bb.ep:                                            ; preds = %bb.em, %bb.eo
  %.1.i105.i511 = phi i16 [ %i.bfz, %bb.eo ], [ %i.bcs, %bb.em ] ; 2 uses
  %i.bga = lshr i64 %i.bct, 40
  %i.bgb = trunc i64 %i.bga to i16
  %i.bgc = shl i16 %.1.i105.i511, 8
  %i.bgd = lshr i16 %.1.i105.i511, 8
  %i.bge = and i16 %i.bgb, 255
  %i.bgf = xor i16 %i.bgd, %i.bge
  %i.bgg = zext nneg i16 %i.bgf to i64
  %i.bgh = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bgg
  %i.bgi = load i16, ptr %i.bgh, align 2, !tbaa !122
  %i.bgj = xor i16 %i.bgc, %i.bgi
  br label %bb.eq

bb.eq:                                            ; preds = %bb.em, %bb.ep
  %.2.i104.i510 = phi i16 [ %i.bgj, %bb.ep ], [ %i.bcs, %bb.em ] ; 2 uses
  %i.bgk = lshr i64 %i.bct, 32
  %i.bgl = trunc i64 %i.bgk to i16
  %i.bgm = shl i16 %.2.i104.i510, 8
  %i.bgn = lshr i16 %.2.i104.i510, 8
  %i.bgo = and i16 %i.bgl, 255
  %i.bgp = xor i16 %i.bgn, %i.bgo
  %i.bgq = zext nneg i16 %i.bgp to i64
  %i.bgr = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bgq
  %i.bgs = load i16, ptr %i.bgr, align 2, !tbaa !122
  %i.bgt = xor i16 %i.bgm, %i.bgs
  br label %bb.er

bb.er:                                            ; preds = %bb.em, %bb.eq
  %.3.i103.i509 = phi i16 [ %i.bgt, %bb.eq ], [ %i.bcs, %bb.em ] ; 2 uses
  %i.bgu = lshr i64 %i.bct, 24
  %i.bgv = trunc i64 %i.bgu to i16
  %i.bgw = shl i16 %.3.i103.i509, 8
  %i.bgx = lshr i16 %.3.i103.i509, 8
  %i.bgy = and i16 %i.bgv, 255
  %i.bgz = xor i16 %i.bgx, %i.bgy
  %i.bha = zext nneg i16 %i.bgz to i64
  %i.bhb = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bha
  %i.bhc = load i16, ptr %i.bhb, align 2, !tbaa !122
  %i.bhd = xor i16 %i.bgw, %i.bhc
  br label %bb.es

bb.es:                                            ; preds = %bb.em, %bb.er
  %.4.i102.i508 = phi i16 [ %i.bhd, %bb.er ], [ %i.bcs, %bb.em ] ; 2 uses
  %i.bhe = lshr i64 %i.bct, 16
  %i.bhf = trunc i64 %i.bhe to i16
  %i.bhg = shl i16 %.4.i102.i508, 8
  %i.bhh = lshr i16 %.4.i102.i508, 8
  %i.bhi = and i16 %i.bhf, 255
  %i.bhj = xor i16 %i.bhh, %i.bhi
  %i.bhk = zext nneg i16 %i.bhj to i64
  %i.bhl = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bhk
  %i.bhm = load i16, ptr %i.bhl, align 2, !tbaa !122
  %i.bhn = xor i16 %i.bhg, %i.bhm
  br label %bb.et

bb.et:                                            ; preds = %bb.em, %bb.es
  %.5.i101.i507 = phi i16 [ %i.bhn, %bb.es ], [ %i.bcs, %bb.em ] ; 2 uses
  %i.bho = trunc i64 %i.bct to i16                ; 2 uses
  %i.bhp = shl i16 %.5.i101.i507, 8
  %i.bhq = xor i16 %.5.i101.i507, %i.bho
  %i.bhr = lshr i16 %i.bhq, 8
  %i.bhs = zext nneg i16 %i.bhr to i64
  %i.bht = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bhs
  %i.bhu = load i16, ptr %i.bht, align 2, !tbaa !122
  %i.bhv = xor i16 %i.bhp, %i.bhu
  br label %bb.eu

bb.eu:                                            ; preds = %._crit_edge1230, %bb.et
  %.pre-phi1271 = phi i16 [ %.pre1270, %._crit_edge1230 ], [ %i.bho, %bb.et ]
  %.6.i99.i503 = phi i16 [ %i.bcs, %._crit_edge1230 ], [ %i.bhv, %bb.et ] ; 2 uses
  %i.bhw = shl i16 %.6.i99.i503, 8
  %i.bhx = lshr i16 %.6.i99.i503, 8
  %i.bhy = and i16 %.pre-phi1271, 255
  %i.bhz = xor i16 %i.bhx, %i.bhy
  %i.bia = zext nneg i16 %i.bhz to i64
  %i.bib = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bia
  %i.bic = load i16, ptr %i.bib, align 2, !tbaa !122
  %i.bid = xor i16 %i.bhw, %i.bic
  br label %ma_dr_flac_crc16_bytes.exit107.i504

ma_dr_flac_crc16_bytes.exit107.i504:              ; preds = %bb.em, %bb.eu
  %.7.i100.i505 = phi i16 [ %i.bcs, %bb.em ], [ %i.bid, %bb.eu ]
  store i16 %.7.i100.i505, ptr %i.pg, align 8, !tbaa !1198
  store i32 0, ptr %i.pf, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i506

ma_dr_flac__update_crc16.exit.i506:               ; preds = %ma_dr_flac_crc16_bytes.exit107.i504, %bb.en
  %i.bie = add nuw nsw i32 %i.bcp, 1
  store i32 %i.bie, ptr %i.pe, align 8, !tbaa !738
  %i.bif = zext nneg i32 %i.bcp to i64
  %i.big = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.bif
  %i.bih = load i64, ptr %i.big, align 8, !tbaa !164
  %i.bii = tail call i64 @llvm.bswap.i64(i64 %i.bih) ; 2 uses
  store i64 %i.bii, ptr %i.ph, align 8, !tbaa !741
  br label %bb.ex

bb.ev:                                            ; preds = %bb.el
  %i.bij = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i466 = icmp eq i32 %i.bij, 0
  br i1 %.not.i466, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.bik = load i64, ptr %i.pc, align 8, !tbaa !740
  %i.bil = load i32, ptr %i.pd, align 4, !tbaa !739
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %ma_dr_flac__update_crc16.exit.i506
  %.479.i467 = phi i64 [ %i.bii, %ma_dr_flac__update_crc16.exit.i506 ], [ %i.bik, %bb.ew ] ; 7 uses
  %.4.i468 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i506 ], [ %i.bil, %bb.ew ]
  %i.bim = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i469 = icmp eq i32 %i.bim, 0
  br i1 %.not.i.i469, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bin = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i467) #55, !srcloc !1207
  %i.bio = trunc i64 %i.bin to i32
  br label %ma_dr_flac__clz.exit.i470

bb.ez:                                            ; preds = %bb.ex
  %i.bip = icmp eq i64 %.479.i467, 0
  br i1 %i.bip, label %ma_dr_flac__clz.exit.i470, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.biq = lshr i64 %.479.i467, 60                ; 2 uses
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.biq
  %i.bis = load i32, ptr %i.bir, align 4, !tbaa !118
  %i.bit = icmp eq i64 %i.biq, 0
  br i1 %i.bit, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.biu = icmp ult i64 %.479.i467, 4294967296    ; 2 uses
  %i.biv = shl nuw i64 %.479.i467, 32
  %spec.select.i114.i495 = select i1 %i.biu, i64 %i.biv, i64 %.479.i467 ; 3 uses
  %spec.select26.i115.i496 = select i1 %i.biu, i32 32, i32 0 ; 2 uses
  %i.biw = icmp ult i64 %spec.select.i114.i495, 281474976710656 ; 2 uses
  %i.bix = or disjoint i32 %spec.select26.i115.i496, 16
  %i.biy = shl nuw i64 %spec.select.i114.i495, 16
  %.119.i116.i497 = select i1 %i.biw, i64 %i.biy, i64 %spec.select.i114.i495 ; 3 uses
  %.1.i117.i498 = select i1 %i.biw, i32 %i.bix, i32 %spec.select26.i115.i496 ; 2 uses
  %i.biz = icmp ult i64 %.119.i116.i497, 72057594037927936 ; 2 uses
  %i.bja = or disjoint i32 %.1.i117.i498, 8
  %i.bjb = shl nuw i64 %.119.i116.i497, 8
  %.220.i118.i499 = select i1 %i.biz, i64 %i.bjb, i64 %.119.i116.i497 ; 3 uses
  %.2.i119.i500 = select i1 %i.biz, i32 %i.bja, i32 %.1.i117.i498 ; 2 uses
  %i.bjc = icmp ult i64 %.220.i118.i499, 1152921504606846976 ; 2 uses
  %i.bjd = or disjoint i32 %.2.i119.i500, 4
  %i.bje = shl nuw i64 %.220.i118.i499, 4
  %.321.i120.i501 = select i1 %i.bjc, i64 %i.bje, i64 %.220.i118.i499
  %.3.i121.i502 = select i1 %i.bjc, i32 %i.bjd, i32 %.2.i119.i500
  %i.bjf = lshr i64 %.321.i120.i501, 60
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.bjf
  %i.bjh = load i32, ptr %i.bjg, align 4, !tbaa !118
  %i.bji = add i32 %i.bjh, %.3.i121.i502
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.4.i112.i492 = phi i32 [ %i.bji, %bb.fb ], [ %i.bis, %bb.fa ]
  %i.bjj = add i32 %.4.i112.i492, -1
  br label %ma_dr_flac__clz.exit.i470

ma_dr_flac__clz.exit.i470:                        ; preds = %bb.ez, %bb.fc, %bb.ey
  %.0.i.i471 = phi i32 [ %i.bio, %bb.ey ], [ %i.bjj, %bb.fc ], [ 64, %bb.ez ] ; 3 uses
  %i.bjk = add i32 %.0.i.i471, %.0.i465           ; 2 uses
  %i.bjl = icmp ult i32 %.0.i.i471, 64
  br i1 %i.bjl, label %.loopexit1134, label %bb.el

bb.fd:                                            ; preds = %bb.ek, %bb.dw
  %.41030.in = phi i64 [ %i.bcm, %bb.ek ], [ %i.awe, %bb.dw ]
  %.681.i476 = phi i64 [ %i.bcn, %bb.ek ], [ %i.awf, %bb.dw ] ; 8 uses
  %.6.i477 = phi i32 [ %.173.i481, %bb.ek ], [ %i.awg, %bb.dw ] ; 3 uses
  %.41030 = trunc i64 %.41030.in to i32
  store i64 %.681.i476, ptr %i.pc, align 8, !tbaa !740
  store i32 %.6.i477, ptr %i.pd, align 4, !tbaa !739
  %i.bjm = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i393 = icmp eq i32 %i.bjm, 0
  br i1 %.not.i94.i393, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.bjn = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.681.i476) #55, !srcloc !1207
  %i.bjo = trunc i64 %i.bjn to i32
  br label %ma_dr_flac__clz.exit96.i394

bb.ff:                                            ; preds = %bb.fd
  %i.bjp = icmp eq i64 %.681.i476, 0
  br i1 %i.bjp, label %ma_dr_flac__clz.exit96.i394.thread, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.bjq = lshr i64 %.681.i476, 60                ; 2 uses
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.bjq
  %i.bjs = load i32, ptr %i.bjr, align 4, !tbaa !118
  %i.bjt = icmp eq i64 %i.bjq, 0
  br i1 %i.bjt, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.bju = icmp ult i64 %.681.i476, 4294967296    ; 2 uses
  %i.bjv = shl nuw i64 %.681.i476, 32
  %spec.select.i.i450 = select i1 %i.bju, i64 %i.bjv, i64 %.681.i476 ; 3 uses
  %spec.select26.i.i451 = select i1 %i.bju, i32 32, i32 0 ; 2 uses
  %i.bjw = icmp ult i64 %spec.select.i.i450, 281474976710656 ; 2 uses
  %i.bjx = or disjoint i32 %spec.select26.i.i451, 16
  %i.bjy = shl nuw i64 %spec.select.i.i450, 16
  %.119.i.i452 = select i1 %i.bjw, i64 %i.bjy, i64 %spec.select.i.i450 ; 3 uses
  %.1.i109.i453 = select i1 %i.bjw, i32 %i.bjx, i32 %spec.select26.i.i451 ; 2 uses
  %i.bjz = icmp ult i64 %.119.i.i452, 72057594037927936 ; 2 uses
  %i.bka = or disjoint i32 %.1.i109.i453, 8
  %i.bkb = shl nuw i64 %.119.i.i452, 8
  %.220.i.i454 = select i1 %i.bjz, i64 %i.bkb, i64 %.119.i.i452 ; 3 uses
  %.2.i110.i455 = select i1 %i.bjz, i32 %i.bka, i32 %.1.i109.i453 ; 2 uses
  %i.bkc = icmp ult i64 %.220.i.i454, 1152921504606846976 ; 2 uses
  %i.bkd = or disjoint i32 %.2.i110.i455, 4
  %i.bke = shl nuw i64 %.220.i.i454, 4
  %.321.i.i456 = select i1 %i.bkc, i64 %i.bke, i64 %.220.i.i454
  %.3.i111.i457 = select i1 %i.bkc, i32 %i.bkd, i32 %.2.i110.i455
  %i.bkf = lshr i64 %.321.i.i456, 60
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.bkf
  %i.bkh = load i32, ptr %i.bkg, align 4, !tbaa !118
  %i.bki = add i32 %i.bkh, %.3.i111.i457
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.4.i108.i447 = phi i32 [ %i.bki, %bb.fh ], [ %i.bjs, %bb.fg ]
  %i.bkj = add i32 %.4.i108.i447, -1
  br label %ma_dr_flac__clz.exit96.i394

ma_dr_flac__clz.exit96.i394:                      ; preds = %bb.fi, %bb.fe
  %.0.i95.i395 = phi i32 [ %i.bjo, %bb.fe ], [ %i.bkj, %bb.fi ] ; 3 uses
  %i.bkk = icmp ult i32 %.0.i95.i395, 64
  br i1 %i.bkk, label %.loopexit1132, label %ma_dr_flac__clz.exit96.i394.thread

.loopexit1132:                                    ; preds = %ma_dr_flac__clz.exit.i404, %ma_dr_flac__clz.exit96.i394
  %.41048 = phi i32 [ %.0.i95.i395, %ma_dr_flac__clz.exit96.i394 ], [ %i.bxu, %ma_dr_flac__clz.exit.i404 ]
  %.075.i406 = phi i64 [ %.681.i476, %ma_dr_flac__clz.exit96.i394 ], [ %.479.i401, %ma_dr_flac__clz.exit.i404 ]
  %.072.i407 = phi i32 [ %.6.i477, %ma_dr_flac__clz.exit96.i394 ], [ %.4.i402, %ma_dr_flac__clz.exit.i404 ]
  %.070.i408 = phi i32 [ %.0.i95.i395, %ma_dr_flac__clz.exit96.i394 ], [ %.0.i.i405, %ma_dr_flac__clz.exit.i404 ] ; 2 uses
  %i.bkl = zext nneg i32 %.070.i408 to i64
  %i.bkm = shl i64 %.075.i406, %i.bkl             ; 2 uses
  %i.bkn = add i32 %.070.i408, %.072.i407         ; 3 uses
  %.not90.i409 = icmp ugt i32 %i.bkn, %i.pb
  %i.bko = lshr i64 %i.bkm, %i.pj                 ; 2 uses
  br i1 %.not90.i409, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %.loopexit1132
  %i.bkp = shl i64 %i.bkm, %i.pa
  %i.bkq = add i32 %i.bkn, %i.oz
  br label %bb.gq

bb.fk:                                            ; preds = %.loopexit1132
  %i.bkr = sub nuw i32 %i.bkn, %i.pb              ; 4 uses
  %i.bks = load i32, ptr %i.pe, align 8, !tbaa !738 ; 3 uses
  %i.bkt = icmp ult i32 %i.bks, 512
  br i1 %i.bkt, label %bb.fl, label %bb.fu

bb.fl:                                            ; preds = %bb.fk
  %i.bku = load i32, ptr %i.pf, align 8, !tbaa !742
  %i.bkv = load i16, ptr %i.pg, align 8, !tbaa !1198 ; 11 uses
  %i.bkw = load i64, ptr %i.ph, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.bku, label %ma_dr_flac_crc16_bytes.exit.i417 [
    i32 0, label %bb.fm
    i32 7, label %._crit_edge1233
    i32 1, label %bb.fn
    i32 2, label %bb.fo
    i32 3, label %bb.fp
    i32 4, label %bb.fq
    i32 5, label %bb.fr
    i32 6, label %bb.fs
  ]

bb.fm:                                            ; preds = %bb.fl
  %i.bkx = lshr i64 %i.bkw, 56
  %i.bky = shl i16 %i.bkv, 8
  %i.bkz = lshr i16 %i.bkv, 8
  %i.bla = zext nneg i16 %i.bkz to i64
  %i.blb = xor i64 %i.bkx, %i.bla
  %i.blc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.blb
  %i.bld = load i16, ptr %i.blc, align 2, !tbaa !122 ; 2 uses
  %i.ble = xor i16 %i.bld, %i.bky
  %i.blf = lshr i64 %i.bkw, 48
  %i.blg = trunc nuw i64 %i.blf to i16
  %i.blh = shl i16 %i.bld, 8
  %i.bli = lshr i16 %i.ble, 8
  %i.blj = and i16 %i.blg, 255
  %i.blk = xor i16 %i.bli, %i.blj
  %i.bll = zext nneg i16 %i.blk to i64
  %i.blm = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bll
  %i.bln = load i16, ptr %i.blm, align 2, !tbaa !122 ; 2 uses
  %i.blo = xor i16 %i.blh, %i.bln
  %i.blp = lshr i64 %i.bkw, 40
  %i.blq = trunc i64 %i.blp to i16
  %i.blr = shl i16 %i.bln, 8
  %i.bls = lshr i16 %i.blo, 8
  %i.blt = and i16 %i.blq, 255
  %i.blu = xor i16 %i.bls, %i.blt
  %i.blv = zext nneg i16 %i.blu to i64
  %i.blw = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.blv
  %i.blx = load i16, ptr %i.blw, align 2, !tbaa !122 ; 2 uses
  %i.bly = xor i16 %i.blr, %i.blx
  %i.blz = lshr i64 %i.bkw, 32
  %i.bma = trunc i64 %i.blz to i16
  %i.bmb = shl i16 %i.blx, 8
  %i.bmc = lshr i16 %i.bly, 8
  %i.bmd = and i16 %i.bma, 255
  %i.bme = xor i16 %i.bmc, %i.bmd
  %i.bmf = zext nneg i16 %i.bme to i64
  %i.bmg = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bmf
  %i.bmh = load i16, ptr %i.bmg, align 2, !tbaa !122 ; 2 uses
  %i.bmi = xor i16 %i.bmb, %i.bmh
  %i.bmj = lshr i64 %i.bkw, 24
  %i.bmk = trunc i64 %i.bmj to i16
  %i.bml = shl i16 %i.bmh, 8
  %i.bmm = lshr i16 %i.bmi, 8
  %i.bmn = and i16 %i.bmk, 255
  %i.bmo = xor i16 %i.bmm, %i.bmn
  %i.bmp = zext nneg i16 %i.bmo to i64
  %i.bmq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bmp
  %i.bmr = load i16, ptr %i.bmq, align 2, !tbaa !122 ; 2 uses
  %i.bms = xor i16 %i.bml, %i.bmr
  %i.bmt = lshr i64 %i.bkw, 16
  %i.bmu = trunc i64 %i.bmt to i16
  %i.bmv = shl i16 %i.bmr, 8
  %i.bmw = lshr i16 %i.bms, 8
  %i.bmx = and i16 %i.bmu, 255
  %i.bmy = xor i16 %i.bmw, %i.bmx
  %i.bmz = zext nneg i16 %i.bmy to i64
  %i.bna = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bmz
  %i.bnb = load i16, ptr %i.bna, align 2, !tbaa !122 ; 2 uses
  %i.bnc = trunc i64 %i.bkw to i16                ; 2 uses
  %i.bnd = shl i16 %i.bnb, 8
  %i.bne = xor i16 %i.bmv, %i.bnc
  %i.bnf = xor i16 %i.bne, %i.bnb
  %i.bng = lshr i16 %i.bnf, 8
  %i.bnh = zext nneg i16 %i.bng to i64
  %i.bni = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bnh
  %i.bnj = load i16, ptr %i.bni, align 2, !tbaa !122 ; 2 uses
  %i.bnk = xor i16 %i.bnd, %i.bnj
  %i.bnl = shl i16 %i.bnj, 8
  %i.bnm = lshr i16 %i.bnk, 8
  %i.bnn = and i16 %i.bnc, 255
  %i.bno = xor i16 %i.bnm, %i.bnn
  %i.bnp = zext nneg i16 %i.bno to i64
  %i.bnq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bnp
  %i.bnr = load i16, ptr %i.bnq, align 2, !tbaa !122
  %i.bns = xor i16 %i.bnl, %i.bnr
  store i16 %i.bns, ptr %i.pg, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit97.i419

._crit_edge1233:                                  ; preds = %bb.fl
  %.pre1264 = trunc i64 %i.bkw to i16
  br label %bb.ft

bb.fn:                                            ; preds = %bb.fl
  %i.bnt = lshr i64 %i.bkw, 48
  %i.bnu = trunc nuw i64 %i.bnt to i16
  %i.bnv = shl i16 %i.bkv, 8
  %i.bnw = lshr i16 %i.bkv, 8
  %i.bnx = and i16 %i.bnu, 255
  %i.bny = xor i16 %i.bnx, %i.bnw
  %i.bnz = zext nneg i16 %i.bny to i64
  %i.boa = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bnz
  %i.bob = load i16, ptr %i.boa, align 2, !tbaa !122
  %i.boc = xor i16 %i.bob, %i.bnv
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fl, %bb.fn
  %.1.i.i424 = phi i16 [ %i.boc, %bb.fn ], [ %i.bkv, %bb.fl ] ; 2 uses
  %i.bod = lshr i64 %i.bkw, 40
  %i.boe = trunc i64 %i.bod to i16
  %i.bof = shl i16 %.1.i.i424, 8
  %i.bog = lshr i16 %.1.i.i424, 8
  %i.boh = and i16 %i.boe, 255
  %i.boi = xor i16 %i.bog, %i.boh
  %i.boj = zext nneg i16 %i.boi to i64
  %i.bok = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.boj
  %i.bol = load i16, ptr %i.bok, align 2, !tbaa !122
  %i.bom = xor i16 %i.bof, %i.bol
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fl, %bb.fo
  %.2.i.i423 = phi i16 [ %i.bom, %bb.fo ], [ %i.bkv, %bb.fl ] ; 2 uses
  %i.bon = lshr i64 %i.bkw, 32
  %i.boo = trunc i64 %i.bon to i16
  %i.bop = shl i16 %.2.i.i423, 8
  %i.boq = lshr i16 %.2.i.i423, 8
  %i.bor = and i16 %i.boo, 255
  %i.bos = xor i16 %i.boq, %i.bor
  %i.bot = zext nneg i16 %i.bos to i64
  %i.bou = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bot
  %i.bov = load i16, ptr %i.bou, align 2, !tbaa !122
  %i.bow = xor i16 %i.bop, %i.bov
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fl, %bb.fp
end_hunk_5
begin_hunk_6_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.brw = lshr i64 %i.brd, 40
  %i.brx = trunc i64 %i.brw to i16
  %i.bry = shl i16 %i.bru, 8
  %i.brz = lshr i16 %i.brv, 8
  %i.bsa = and i16 %i.brx, 255
  %i.bsb = xor i16 %i.brz, %i.bsa
  %i.bsc = zext nneg i16 %i.bsb to i64
  %i.bsd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bsc
  %i.bse = load i16, ptr %i.bsd, align 2, !tbaa !122 ; 2 uses
  %i.bsf = xor i16 %i.bry, %i.bse
  %i.bsg = lshr i64 %i.brd, 32
  %i.bsh = trunc i64 %i.bsg to i16
  %i.bsi = shl i16 %i.bse, 8
  %i.bsj = lshr i16 %i.bsf, 8
  %i.bsk = and i16 %i.bsh, 255
  %i.bsl = xor i16 %i.bsj, %i.bsk
  %i.bsm = zext nneg i16 %i.bsl to i64
  %i.bsn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bsm
  %i.bso = load i16, ptr %i.bsn, align 2, !tbaa !122 ; 2 uses
  %i.bsp = xor i16 %i.bsi, %i.bso
  %i.bsq = lshr i64 %i.brd, 24
  %i.bsr = trunc i64 %i.bsq to i16
  %i.bss = shl i16 %i.bso, 8
  %i.bst = lshr i16 %i.bsp, 8
  %i.bsu = and i16 %i.bsr, 255
  %i.bsv = xor i16 %i.bst, %i.bsu
  %i.bsw = zext nneg i16 %i.bsv to i64
  %i.bsx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bsw
  %i.bsy = load i16, ptr %i.bsx, align 2, !tbaa !122 ; 2 uses
  %i.bsz = xor i16 %i.bss, %i.bsy
  %i.bta = lshr i64 %i.brd, 16
  %i.btb = trunc i64 %i.bta to i16
  %i.btc = shl i16 %i.bsy, 8
  %i.btd = lshr i16 %i.bsz, 8
  %i.bte = and i16 %i.btb, 255
  %i.btf = xor i16 %i.btd, %i.bte
  %i.btg = zext nneg i16 %i.btf to i64
  %i.bth = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.btg
  %i.bti = load i16, ptr %i.bth, align 2, !tbaa !122 ; 2 uses
  %i.btj = trunc i64 %i.brd to i16                ; 2 uses
  %i.btk = shl i16 %i.bti, 8
  %i.btl = xor i16 %i.btc, %i.btj
  %i.btm = xor i16 %i.btl, %i.bti
  %i.btn = lshr i16 %i.btm, 8
  %i.bto = zext nneg i16 %i.btn to i64
  %i.btp = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bto
  %i.btq = load i16, ptr %i.btp, align 2, !tbaa !122 ; 2 uses
  %i.btr = xor i16 %i.btk, %i.btq
  %i.bts = shl i16 %i.btq, 8
  %i.btt = lshr i16 %i.btr, 8
  %i.btu = and i16 %i.btj, 255
  %i.btv = xor i16 %i.btt, %i.btu
  %i.btw = zext nneg i16 %i.btv to i64
  %i.btx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.btw
  %i.bty = load i16, ptr %i.btx, align 2, !tbaa !122
  %i.btz = xor i16 %i.bts, %i.bty
  store i16 %i.btz, ptr %i.pg, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i440

._crit_edge1232:                                  ; preds = %bb.fz
  %.pre1266 = trunc i64 %i.brd to i16
  br label %bb.gh

bb.gb:                                            ; preds = %bb.fz
  %i.bua = lshr i64 %i.brd, 48
  %i.bub = trunc nuw i64 %i.bua to i16
  %i.buc = shl i16 %i.brc, 8
  %i.bud = lshr i16 %i.brc, 8
  %i.bue = and i16 %i.bub, 255
  %i.buf = xor i16 %i.bue, %i.bud
  %i.bug = zext nneg i16 %i.buf to i64
  %i.buh = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bug
  %i.bui = load i16, ptr %i.buh, align 2, !tbaa !122
  %i.buj = xor i16 %i.bui, %i.buc
  br label %bb.gc

bb.gc:                                            ; preds = %bb.fz, %bb.gb
  %.1.i105.i445 = phi i16 [ %i.buj, %bb.gb ], [ %i.brc, %bb.fz ] ; 2 uses
  %i.buk = lshr i64 %i.brd, 40
  %i.bul = trunc i64 %i.buk to i16
  %i.bum = shl i16 %.1.i105.i445, 8
  %i.bun = lshr i16 %.1.i105.i445, 8
  %i.buo = and i16 %i.bul, 255
  %i.bup = xor i16 %i.bun, %i.buo
  %i.buq = zext nneg i16 %i.bup to i64
  %i.bur = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.buq
  %i.bus = load i16, ptr %i.bur, align 2, !tbaa !122
  %i.but = xor i16 %i.bum, %i.bus
  br label %bb.gd

bb.gd:                                            ; preds = %bb.fz, %bb.gc
  %.2.i104.i444 = phi i16 [ %i.but, %bb.gc ], [ %i.brc, %bb.fz ] ; 2 uses
  %i.buu = lshr i64 %i.brd, 32
  %i.buv = trunc i64 %i.buu to i16
  %i.buw = shl i16 %.2.i104.i444, 8
  %i.bux = lshr i16 %.2.i104.i444, 8
  %i.buy = and i16 %i.buv, 255
  %i.buz = xor i16 %i.bux, %i.buy
  %i.bva = zext nneg i16 %i.buz to i64
  %i.bvb = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bva
  %i.bvc = load i16, ptr %i.bvb, align 2, !tbaa !122
  %i.bvd = xor i16 %i.buw, %i.bvc
  br label %bb.ge

bb.ge:                                            ; preds = %bb.fz, %bb.gd
  %.3.i103.i443 = phi i16 [ %i.bvd, %bb.gd ], [ %i.brc, %bb.fz ] ; 2 uses
  %i.bve = lshr i64 %i.brd, 24
  %i.bvf = trunc i64 %i.bve to i16
  %i.bvg = shl i16 %.3.i103.i443, 8
  %i.bvh = lshr i16 %.3.i103.i443, 8
  %i.bvi = and i16 %i.bvf, 255
  %i.bvj = xor i16 %i.bvh, %i.bvi
  %i.bvk = zext nneg i16 %i.bvj to i64
  %i.bvl = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bvk
  %i.bvm = load i16, ptr %i.bvl, align 2, !tbaa !122
  %i.bvn = xor i16 %i.bvg, %i.bvm
  br label %bb.gf

bb.gf:                                            ; preds = %bb.fz, %bb.ge
  %.4.i102.i442 = phi i16 [ %i.bvn, %bb.ge ], [ %i.brc, %bb.fz ] ; 2 uses
  %i.bvo = lshr i64 %i.brd, 16
  %i.bvp = trunc i64 %i.bvo to i16
  %i.bvq = shl i16 %.4.i102.i442, 8
  %i.bvr = lshr i16 %.4.i102.i442, 8
  %i.bvs = and i16 %i.bvp, 255
  %i.bvt = xor i16 %i.bvr, %i.bvs
  %i.bvu = zext nneg i16 %i.bvt to i64
  %i.bvv = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bvu
  %i.bvw = load i16, ptr %i.bvv, align 2, !tbaa !122
  %i.bvx = xor i16 %i.bvq, %i.bvw
  br label %bb.gg

bb.gg:                                            ; preds = %bb.fz, %bb.gf
  %.5.i101.i441 = phi i16 [ %i.bvx, %bb.gf ], [ %i.brc, %bb.fz ] ; 2 uses
  %i.bvy = trunc i64 %i.brd to i16                ; 2 uses
  %i.bvz = shl i16 %.5.i101.i441, 8
  %i.bwa = xor i16 %.5.i101.i441, %i.bvy
  %i.bwb = lshr i16 %i.bwa, 8
  %i.bwc = zext nneg i16 %i.bwb to i64
  %i.bwd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bwc
  %i.bwe = load i16, ptr %i.bwd, align 2, !tbaa !122
  %i.bwf = xor i16 %i.bvz, %i.bwe
  br label %bb.gh

bb.gh:                                            ; preds = %._crit_edge1232, %bb.gg
  %.pre-phi1267 = phi i16 [ %.pre1266, %._crit_edge1232 ], [ %i.bvy, %bb.gg ]
  %.6.i99.i437 = phi i16 [ %i.brc, %._crit_edge1232 ], [ %i.bwf, %bb.gg ] ; 2 uses
  %i.bwg = shl i16 %.6.i99.i437, 8
  %i.bwh = lshr i16 %.6.i99.i437, 8
  %i.bwi = and i16 %.pre-phi1267, 255
  %i.bwj = xor i16 %i.bwh, %i.bwi
  %i.bwk = zext nneg i16 %i.bwj to i64
  %i.bwl = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bwk
  %i.bwm = load i16, ptr %i.bwl, align 2, !tbaa !122
  %i.bwn = xor i16 %i.bwg, %i.bwm
  br label %ma_dr_flac_crc16_bytes.exit107.i438

ma_dr_flac_crc16_bytes.exit107.i438:              ; preds = %bb.fz, %bb.gh
  %.7.i100.i439 = phi i16 [ %i.brc, %bb.fz ], [ %i.bwn, %bb.gh ]
  store i16 %.7.i100.i439, ptr %i.pg, align 8, !tbaa !1198
  store i32 0, ptr %i.pf, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i440

ma_dr_flac__update_crc16.exit.i440:               ; preds = %ma_dr_flac_crc16_bytes.exit107.i438, %bb.ga
  %i.bwo = add nuw nsw i32 %i.bqz, 1
  store i32 %i.bwo, ptr %i.pe, align 8, !tbaa !738
  %i.bwp = zext nneg i32 %i.bqz to i64
  %i.bwq = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.bwp
  %i.bwr = load i64, ptr %i.bwq, align 8, !tbaa !164
  %i.bws = tail call i64 @llvm.bswap.i64(i64 %i.bwr) ; 2 uses
  store i64 %i.bws, ptr %i.ph, align 8, !tbaa !741
  br label %bb.gk

bb.gi:                                            ; preds = %bb.fy
  %i.bwt = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i400 = icmp eq i32 %i.bwt, 0
  br i1 %.not.i400, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.bwu = load i64, ptr %i.pc, align 8, !tbaa !740
  %i.bwv = load i32, ptr %i.pd, align 4, !tbaa !739
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %ma_dr_flac__update_crc16.exit.i440
  %.479.i401 = phi i64 [ %i.bws, %ma_dr_flac__update_crc16.exit.i440 ], [ %i.bwu, %bb.gj ] ; 7 uses
  %.4.i402 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i440 ], [ %i.bwv, %bb.gj ]
  %i.bww = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i403 = icmp eq i32 %i.bww, 0
  br i1 %.not.i.i403, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.bwx = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i401) #55, !srcloc !1207
  %i.bwy = trunc i64 %i.bwx to i32
  br label %ma_dr_flac__clz.exit.i404

bb.gm:                                            ; preds = %bb.gk
  %i.bwz = icmp eq i64 %.479.i401, 0
  br i1 %i.bwz, label %ma_dr_flac__clz.exit.i404, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bxa = lshr i64 %.479.i401, 60                ; 2 uses
  %i.bxb = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.bxa
  %i.bxc = load i32, ptr %i.bxb, align 4, !tbaa !118
  %i.bxd = icmp eq i64 %i.bxa, 0
  br i1 %i.bxd, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.bxe = icmp ult i64 %.479.i401, 4294967296    ; 2 uses
  %i.bxf = shl nuw i64 %.479.i401, 32
  %spec.select.i114.i429 = select i1 %i.bxe, i64 %i.bxf, i64 %.479.i401 ; 3 uses
  %spec.select26.i115.i430 = select i1 %i.bxe, i32 32, i32 0 ; 2 uses
  %i.bxg = icmp ult i64 %spec.select.i114.i429, 281474976710656 ; 2 uses
  %i.bxh = or disjoint i32 %spec.select26.i115.i430, 16
  %i.bxi = shl nuw i64 %spec.select.i114.i429, 16
  %.119.i116.i431 = select i1 %i.bxg, i64 %i.bxi, i64 %spec.select.i114.i429 ; 3 uses
  %.1.i117.i432 = select i1 %i.bxg, i32 %i.bxh, i32 %spec.select26.i115.i430 ; 2 uses
  %i.bxj = icmp ult i64 %.119.i116.i431, 72057594037927936 ; 2 uses
  %i.bxk = or disjoint i32 %.1.i117.i432, 8
  %i.bxl = shl nuw i64 %.119.i116.i431, 8
  %.220.i118.i433 = select i1 %i.bxj, i64 %i.bxl, i64 %.119.i116.i431 ; 3 uses
  %.2.i119.i434 = select i1 %i.bxj, i32 %i.bxk, i32 %.1.i117.i432 ; 2 uses
  %i.bxm = icmp ult i64 %.220.i118.i433, 1152921504606846976 ; 2 uses
  %i.bxn = or disjoint i32 %.2.i119.i434, 4
  %i.bxo = shl nuw i64 %.220.i118.i433, 4
  %.321.i120.i435 = select i1 %i.bxm, i64 %i.bxo, i64 %.220.i118.i433
  %.3.i121.i436 = select i1 %i.bxm, i32 %i.bxn, i32 %.2.i119.i434
  %i.bxp = lshr i64 %.321.i120.i435, 60
  %i.bxq = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.bxp
  %i.bxr = load i32, ptr %i.bxq, align 4, !tbaa !118
  %i.bxs = add i32 %i.bxr, %.3.i121.i436
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.4.i112.i426 = phi i32 [ %i.bxs, %bb.go ], [ %i.bxc, %bb.gn ]
  %i.bxt = add i32 %.4.i112.i426, -1
  br label %ma_dr_flac__clz.exit.i404

ma_dr_flac__clz.exit.i404:                        ; preds = %bb.gm, %bb.gp, %bb.gl
  %.0.i.i405 = phi i32 [ %i.bwy, %bb.gl ], [ %i.bxt, %bb.gp ], [ 64, %bb.gm ] ; 3 uses
  %i.bxu = add i32 %.0.i.i405, %.0.i399           ; 2 uses
  %i.bxv = icmp ult i32 %.0.i.i405, 64
  br i1 %i.bxv, label %.loopexit1132, label %bb.fy

bb.gq:                                            ; preds = %bb.fx, %bb.fj
  %.4.in = phi i64 [ %i.bqw, %bb.fx ], [ %i.bko, %bb.fj ]
  %.681.i410 = phi i64 [ %i.bqx, %bb.fx ], [ %i.bkp, %bb.fj ] ; 2 uses
  %.6.i411 = phi i32 [ %.173.i415, %bb.fx ], [ %i.bkq, %bb.fj ]
  %.4 = trunc i64 %.4.in to i32
  store i64 %.681.i410, ptr %i.pc, align 8, !tbaa !740
  store i32 %.6.i411, ptr %i.pd, align 4, !tbaa !739
  %i.bxw = and i32 %.8, %i.os
  %i.bxx = and i32 %.41036, %i.os
  %i.bxy = and i32 %.41030, %i.os
  %i.bxz = and i32 %.4, %i.os
  %i.bya = shl i32 %.81070, %i.oo
  %i.byb = or i32 %i.bxw, %i.bya                  ; 2 uses
  %i.byc = shl i32 %.41060, %i.oo
  %i.byd = or i32 %i.bxx, %i.byc                  ; 2 uses
  %i.bye = shl i32 %.41054, %i.oo
  %i.byf = or i32 %i.bxy, %i.bye                  ; 2 uses
  %i.byg = shl i32 %.41048, %i.oo
  %i.byh = or i32 %i.bxz, %i.byg                  ; 2 uses
  %i.byi = lshr i32 %i.byb, 1
  %i.byj = and i32 %i.byb, 1
  %i.byk = zext nneg i32 %i.byj to i64
  %i.byl = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.byk
  %i.bym = load i32, ptr %i.byl, align 4, !tbaa !118
  %i.byn = xor i32 %i.bym, %i.byi
  %i.byo = lshr i32 %i.byd, 1
  %i.byp = and i32 %i.byd, 1
  %i.byq = zext nneg i32 %i.byp to i64
  %i.byr = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.byq
  %i.bys = load i32, ptr %i.byr, align 4, !tbaa !118
  %i.byt = xor i32 %i.bys, %i.byo
  %i.byu = lshr i32 %i.byf, 1
  %i.byv = and i32 %i.byf, 1
  %i.byw = zext nneg i32 %i.byv to i64
  %i.byx = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.byw
  %i.byy = load i32, ptr %i.byx, align 4, !tbaa !118
  %i.byz = xor i32 %i.byy, %i.byu
  %i.bza = lshr i32 %i.byh, 1
  %i.bzb = and i32 %i.byh, 1
  %i.bzc = zext nneg i32 %i.bzb to i64
  %i.bzd = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.bzc
  %i.bze = load i32, ptr %i.bzd, align 4, !tbaa !118
  %i.bzf = xor i32 %i.bze, %i.bza
  switch i8 %trunc.i763, label %ma_dr_flac__calculate_prediction_64.exit796 [
    i8 32, label %bb.gr
    i8 31, label %bb.gs
    i8 30, label %bb.gt
    i8 29, label %bb.gu
    i8 28, label %bb.gv
    i8 27, label %bb.gw
    i8 26, label %bb.gx
    i8 25, label %bb.gy
    i8 24, label %bb.gz
    i8 23, label %bb.ha
    i8 22, label %bb.hb
    i8 21, label %bb.hc
    i8 20, label %bb.hd
    i8 19, label %bb.he
    i8 18, label %bb.hf
    i8 17, label %bb.hg
    i8 16, label %bb.hh
    i8 15, label %bb.hi
    i8 14, label %bb.hj
    i8 13, label %bb.hk
    i8 12, label %bb.hl
    i8 11, label %bb.hm
    i8 10, label %bb.hn
    i8 9, label %bb.ho
    i8 8, label %bb.hp
    i8 7, label %bb.hq
    i8 6, label %bb.hr
    i8 5, label %bb.hs
    i8 4, label %bb.ht
    i8 3, label %bb.hu
    i8 2, label %bb.hv
    i8 1, label %bb.hw
  ]

bb.gr:                                            ; preds = %bb.gq
  %i.bzg = load i32, ptr %i.pk, align 4, !tbaa !118
  %i.bzh = sext i32 %i.bzg to i64
  %i.bzi = getelementptr inbounds i8, ptr %.01151163, i64 -128
  %i.bzj = load i32, ptr %i.bzi, align 4, !tbaa !118
  %i.bzk = sext i32 %i.bzj to i64
  %i.bzl = mul nsw i64 %i.bzk, %i.bzh
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.0.i795 = phi i64 [ %i.bzl, %bb.gr ], [ 0, %bb.gq ]
  %i.bzm = load i32, ptr %i.pl, align 4, !tbaa !118
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = getelementptr inbounds i8, ptr %.01151163, i64 -124
  %i.bzp = load i32, ptr %i.bzo, align 4, !tbaa !118
  %i.bzq = sext i32 %i.bzp to i64
  %i.bzr = mul nsw i64 %i.bzq, %i.bzn
  %i.bzs = add nsw i64 %i.bzr, %.0.i795
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gq
  %.1.i794 = phi i64 [ %i.bzs, %bb.gs ], [ 0, %bb.gq ]
  %i.bzt = load i32, ptr %i.pm, align 4, !tbaa !118
  %i.bzu = sext i32 %i.bzt to i64
  %i.bzv = getelementptr inbounds i8, ptr %.01151163, i64 -120
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !118
  %i.bzx = sext i32 %i.bzw to i64
  %i.bzy = mul nsw i64 %i.bzx, %i.bzu
  %i.bzz = add nsw i64 %i.bzy, %.1.i794
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gq
  %.2.i793 = phi i64 [ %i.bzz, %bb.gt ], [ 0, %bb.gq ]
  %i.caa = load i32, ptr %i.pn, align 4, !tbaa !118
  %i.cab = sext i32 %i.caa to i64
  %i.cac = getelementptr inbounds i8, ptr %.01151163, i64 -116
  %i.cad = load i32, ptr %i.cac, align 4, !tbaa !118
  %i.cae = sext i32 %i.cad to i64
  %i.caf = mul nsw i64 %i.cae, %i.cab
  %i.cag = add nsw i64 %i.caf, %.2.i793
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gq
  %.3.i792 = phi i64 [ %i.cag, %bb.gu ], [ 0, %bb.gq ]
  %i.cah = load i32, ptr %i.po, align 4, !tbaa !118
  %i.cai = sext i32 %i.cah to i64
  %i.caj = getelementptr inbounds i8, ptr %.01151163, i64 -112
  %i.cak = load i32, ptr %i.caj, align 4, !tbaa !118
  %i.cal = sext i32 %i.cak to i64
  %i.cam = mul nsw i64 %i.cal, %i.cai
  %i.can = add nsw i64 %i.cam, %.3.i792
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gq
  %.4.i791 = phi i64 [ %i.can, %bb.gv ], [ 0, %bb.gq ]
  %i.cao = load i32, ptr %i.pp, align 4, !tbaa !118
  %i.cap = sext i32 %i.cao to i64
  %i.caq = getelementptr inbounds i8, ptr %.01151163, i64 -108
  %i.car = load i32, ptr %i.caq, align 4, !tbaa !118
  %i.cas = sext i32 %i.car to i64
  %i.cat = mul nsw i64 %i.cas, %i.cap
  %i.cau = add nsw i64 %i.cat, %.4.i791
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gq
  %.5.i790 = phi i64 [ %i.cau, %bb.gw ], [ 0, %bb.gq ]
  %i.cav = load i32, ptr %i.pq, align 4, !tbaa !118
  %i.caw = sext i32 %i.cav to i64
  %i.cax = getelementptr inbounds i8, ptr %.01151163, i64 -104
  %i.cay = load i32, ptr %i.cax, align 4, !tbaa !118
  %i.caz = sext i32 %i.cay to i64
  %i.cba = mul nsw i64 %i.caz, %i.caw
  %i.cbb = add nsw i64 %i.cba, %.5.i790
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gq
  %.6.i789 = phi i64 [ %i.cbb, %bb.gx ], [ 0, %bb.gq ]
  %i.cbc = load i32, ptr %i.pr, align 4, !tbaa !118
  %i.cbd = sext i32 %i.cbc to i64
  %i.cbe = getelementptr inbounds i8, ptr %.01151163, i64 -100
  %i.cbf = load i32, ptr %i.cbe, align 4, !tbaa !118
  %i.cbg = sext i32 %i.cbf to i64
  %i.cbh = mul nsw i64 %i.cbg, %i.cbd
end_hunk_6
begin_hunk_7_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %ma_dr_flac__calculate_prediction_64.exit728
  %.15.i678 = phi i64 [ %i.ddl, %bb.ky ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.ddm = load i32, ptr %i.qa, align 4, !tbaa !118
  %i.ddn = sext i32 %i.ddm to i64
  %i.ddo = getelementptr inbounds i8, ptr %.01151163, i64 -52
  %i.ddp = load i32, ptr %i.ddo, align 4, !tbaa !118
  %i.ddq = sext i32 %i.ddp to i64
  %i.ddr = mul nsw i64 %i.ddq, %i.ddn
  %i.dds = add nsw i64 %i.ddr, %.15.i678
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %ma_dr_flac__calculate_prediction_64.exit728
  %.16.i677 = phi i64 [ %i.dds, %bb.kz ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.ddt = load i32, ptr %i.qb, align 4, !tbaa !118
  %i.ddu = sext i32 %i.ddt to i64
  %i.ddv = getelementptr inbounds i8, ptr %.01151163, i64 -48
  %i.ddw = load i32, ptr %i.ddv, align 4, !tbaa !118
  %i.ddx = sext i32 %i.ddw to i64
  %i.ddy = mul nsw i64 %i.ddx, %i.ddu
  %i.ddz = add nsw i64 %i.ddy, %.16.i677
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %ma_dr_flac__calculate_prediction_64.exit728
  %.17.i676 = phi i64 [ %i.ddz, %bb.la ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dea = load i32, ptr %i.qc, align 4, !tbaa !118
  %i.deb = sext i32 %i.dea to i64
  %i.dec = getelementptr inbounds i8, ptr %.01151163, i64 -44
  %i.ded = load i32, ptr %i.dec, align 4, !tbaa !118
  %i.dee = sext i32 %i.ded to i64
  %i.def = mul nsw i64 %i.dee, %i.deb
  %i.deg = add nsw i64 %i.def, %.17.i676
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %ma_dr_flac__calculate_prediction_64.exit728
  %.18.i675 = phi i64 [ %i.deg, %bb.lb ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.deh = load i32, ptr %i.qd, align 4, !tbaa !118
  %i.dei = sext i32 %i.deh to i64
  %i.dej = getelementptr inbounds i8, ptr %.01151163, i64 -40
  %i.dek = load i32, ptr %i.dej, align 4, !tbaa !118
  %i.del = sext i32 %i.dek to i64
  %i.dem = mul nsw i64 %i.del, %i.dei
  %i.den = add nsw i64 %i.dem, %.18.i675
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %ma_dr_flac__calculate_prediction_64.exit728
  %.19.i674 = phi i64 [ %i.den, %bb.lc ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.deo = load i32, ptr %i.qe, align 4, !tbaa !118
  %i.dep = sext i32 %i.deo to i64
  %i.deq = getelementptr inbounds i8, ptr %.01151163, i64 -36
  %i.der = load i32, ptr %i.deq, align 4, !tbaa !118
  %i.des = sext i32 %i.der to i64
  %i.det = mul nsw i64 %i.des, %i.dep
  %i.deu = add nsw i64 %i.det, %.19.i674
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %ma_dr_flac__calculate_prediction_64.exit728
  %.20.i673 = phi i64 [ %i.deu, %bb.ld ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dev = load i32, ptr %i.qf, align 4, !tbaa !118
  %i.dew = sext i32 %i.dev to i64
  %i.dex = getelementptr inbounds i8, ptr %.01151163, i64 -32
  %i.dey = load i32, ptr %i.dex, align 4, !tbaa !118
  %i.dez = sext i32 %i.dey to i64
  %i.dfa = mul nsw i64 %i.dez, %i.dew
  %i.dfb = add nsw i64 %i.dfa, %.20.i673
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %ma_dr_flac__calculate_prediction_64.exit728
  %.21.i672 = phi i64 [ %i.dfb, %bb.le ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dfc = load i32, ptr %i.qg, align 4, !tbaa !118
  %i.dfd = sext i32 %i.dfc to i64
  %i.dfe = getelementptr inbounds i8, ptr %.01151163, i64 -28
  %i.dff = load i32, ptr %i.dfe, align 4, !tbaa !118
  %i.dfg = sext i32 %i.dff to i64
  %i.dfh = mul nsw i64 %i.dfg, %i.dfd
  %i.dfi = add nsw i64 %i.dfh, %.21.i672
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %ma_dr_flac__calculate_prediction_64.exit728
  %.22.i671 = phi i64 [ %i.dfi, %bb.lf ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dfj = load i32, ptr %i.qh, align 4, !tbaa !118
  %i.dfk = sext i32 %i.dfj to i64
  %i.dfl = getelementptr inbounds i8, ptr %.01151163, i64 -24
  %i.dfm = load i32, ptr %i.dfl, align 4, !tbaa !118
  %i.dfn = sext i32 %i.dfm to i64
  %i.dfo = mul nsw i64 %i.dfn, %i.dfk
  %i.dfp = add nsw i64 %i.dfo, %.22.i671
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %ma_dr_flac__calculate_prediction_64.exit728
  %.23.i670 = phi i64 [ %i.dfp, %bb.lg ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dfq = load i32, ptr %i.qi, align 4, !tbaa !118
  %i.dfr = sext i32 %i.dfq to i64
  %i.dfs = getelementptr inbounds i8, ptr %.01151163, i64 -20
  %i.dft = load i32, ptr %i.dfs, align 4, !tbaa !118
  %i.dfu = sext i32 %i.dft to i64
  %i.dfv = mul nsw i64 %i.dfu, %i.dfr
  %i.dfw = add nsw i64 %i.dfv, %.23.i670
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %ma_dr_flac__calculate_prediction_64.exit728
  %.24.i669 = phi i64 [ %i.dfw, %bb.lh ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dfx = load i32, ptr %i.qj, align 4, !tbaa !118
  %i.dfy = sext i32 %i.dfx to i64
  %i.dfz = getelementptr inbounds i8, ptr %.01151163, i64 -16
  %i.dga = load i32, ptr %i.dfz, align 4, !tbaa !118
  %i.dgb = sext i32 %i.dga to i64
  %i.dgc = mul nsw i64 %i.dgb, %i.dfy
  %i.dgd = add nsw i64 %i.dgc, %.24.i669
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %ma_dr_flac__calculate_prediction_64.exit728
  %.25.i668 = phi i64 [ %i.dgd, %bb.li ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dge = load i32, ptr %i.qk, align 4, !tbaa !118
  %i.dgf = sext i32 %i.dge to i64
  %i.dgg = getelementptr inbounds i8, ptr %.01151163, i64 -12
  %i.dgh = load i32, ptr %i.dgg, align 4, !tbaa !118
  %i.dgi = sext i32 %i.dgh to i64
  %i.dgj = mul nsw i64 %i.dgi, %i.dgf
  %i.dgk = add nsw i64 %i.dgj, %.25.i668
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %ma_dr_flac__calculate_prediction_64.exit728
  %.26.i667 = phi i64 [ %i.dgk, %bb.lj ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dgl = load i32, ptr %i.ql, align 4, !tbaa !118
  %i.dgm = sext i32 %i.dgl to i64
  %i.dgn = getelementptr inbounds i8, ptr %.01151163, i64 -8
  %i.dgo = load i32, ptr %i.dgn, align 4, !tbaa !118
  %i.dgp = sext i32 %i.dgo to i64
  %i.dgq = mul nsw i64 %i.dgp, %i.dgm
  %i.dgr = add nsw i64 %i.dgq, %.26.i667
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %ma_dr_flac__calculate_prediction_64.exit728
  %.27.i666 = phi i64 [ %i.dgr, %bb.lk ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dgs = load i32, ptr %i.qm, align 4, !tbaa !118
  %i.dgt = sext i32 %i.dgs to i64
  %i.dgu = getelementptr inbounds i8, ptr %.01151163, i64 -4
  %i.dgv = load i32, ptr %i.dgu, align 4, !tbaa !118
  %i.dgw = sext i32 %i.dgv to i64
  %i.dgx = mul nsw i64 %i.dgw, %i.dgt
  %i.dgy = add nsw i64 %i.dgx, %.27.i666
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %ma_dr_flac__calculate_prediction_64.exit728
  %.28.i665 = phi i64 [ %i.dgy, %bb.ll ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dgz = load i32, ptr %i.qn, align 4, !tbaa !118
  %i.dha = sext i32 %i.dgz to i64
  %i.dhb = sext i32 %i.chx to i64
  %i.dhc = mul nsw i64 %i.dhb, %i.dha
  %i.dhd = add nsw i64 %i.dhc, %.28.i665
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %ma_dr_flac__calculate_prediction_64.exit728
  %.29.i664 = phi i64 [ %i.dhd, %bb.lm ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dhe = load i32, ptr %i.qo, align 4, !tbaa !118
  %i.dhf = sext i32 %i.dhe to i64
  %i.dhg = sext i32 %i.cqo to i64
  %i.dhh = mul nsw i64 %i.dhg, %i.dhf
  %i.dhi = add nsw i64 %i.dhh, %.29.i664
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %ma_dr_flac__calculate_prediction_64.exit728
  %.30.i662 = phi i64 [ %i.dhi, %bb.ln ], [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ]
  %i.dhj = load i32, ptr %7, align 4, !tbaa !118
  %i.dhk = sext i32 %i.dhj to i64
  %i.dhl = sext i32 %i.czd to i64
  %i.dhm = mul nsw i64 %i.dhl, %i.dhk
  %i.dhn = add nsw i64 %i.dhm, %.30.i662
  br label %ma_dr_flac__calculate_prediction_64.exit694

ma_dr_flac__calculate_prediction_64.exit694:      ; preds = %ma_dr_flac__calculate_prediction_64.exit728, %bb.lo
  %.31.i663 = phi i64 [ 0, %ma_dr_flac__calculate_prediction_64.exit728 ], [ %i.dhn, %bb.lo ]
  %i.dho = ashr i64 %.31.i663, %i.qp
  %i.dhp = trunc i64 %i.dho to i32
  %i.dhq = add i32 %i.bzf, %i.dhp
  store i32 %i.dhq, ptr %i.cze, align 4, !tbaa !118
  %i.dhr = getelementptr inbounds nuw i8, ptr %.01151163, i64 16 ; 3 uses
  %i.dhs = icmp ult ptr %i.dhr, %i.ov
  br i1 %i.dhs, label %bb.aq, label %.loopexit1129, !llvm.loop !3272

bb.lp:                                            ; preds = %.lr.ph1165, %ma_dr_flac__calculate_prediction_32.exit863
  %i.dht = phi i64 [ %.pre1208, %.lr.ph1165 ], [ %.681.i146, %ma_dr_flac__calculate_prediction_32.exit863 ] ; 7 uses
  %.11164 = phi ptr [ %8, %.lr.ph1165 ], [ %i.gne, %ma_dr_flac__calculate_prediction_32.exit863 ] ; 127 uses
  %i.dhu = load i32, ptr %i.qu, align 4, !tbaa !739 ; 2 uses
  %i.dhv = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i327 = icmp eq i32 %i.dhv, 0
  br i1 %.not.i94.i327, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.dhw = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.dht) #55, !srcloc !1207
  %i.dhx = trunc i64 %i.dhw to i32
  br label %ma_dr_flac__clz.exit96.i328

bb.lr:                                            ; preds = %bb.lp
  %i.dhy = icmp eq i64 %i.dht, 0
  br i1 %i.dhy, label %ma_dr_flac__clz.exit96.i328.thread, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.dhz = lshr i64 %i.dht, 60                    ; 2 uses
  %i.dia = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.dhz
  %i.dib = load i32, ptr %i.dia, align 4, !tbaa !118
  %i.dic = icmp eq i64 %i.dhz, 0
  br i1 %i.dic, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.did = icmp ult i64 %i.dht, 4294967296        ; 2 uses
  %i.die = shl nuw i64 %i.dht, 32
  %spec.select.i.i384 = select i1 %i.did, i64 %i.die, i64 %i.dht ; 3 uses
  %spec.select26.i.i385 = select i1 %i.did, i32 32, i32 0 ; 2 uses
  %i.dif = icmp ult i64 %spec.select.i.i384, 281474976710656 ; 2 uses
  %i.dig = or disjoint i32 %spec.select26.i.i385, 16
  %i.dih = shl nuw i64 %spec.select.i.i384, 16
  %.119.i.i386 = select i1 %i.dif, i64 %i.dih, i64 %spec.select.i.i384 ; 3 uses
  %.1.i109.i387 = select i1 %i.dif, i32 %i.dig, i32 %spec.select26.i.i385 ; 2 uses
  %i.dii = icmp ult i64 %.119.i.i386, 72057594037927936 ; 2 uses
  %i.dij = or disjoint i32 %.1.i109.i387, 8
  %i.dik = shl nuw i64 %.119.i.i386, 8
  %.220.i.i388 = select i1 %i.dii, i64 %i.dik, i64 %.119.i.i386 ; 3 uses
  %.2.i110.i389 = select i1 %i.dii, i32 %i.dij, i32 %.1.i109.i387 ; 2 uses
  %i.dil = icmp ult i64 %.220.i.i388, 1152921504606846976 ; 2 uses
  %i.dim = or disjoint i32 %.2.i110.i389, 4
  %i.din = shl nuw i64 %.220.i.i388, 4
  %.321.i.i390 = select i1 %i.dil, i64 %i.din, i64 %.220.i.i388
  %.3.i111.i391 = select i1 %i.dil, i32 %i.dim, i32 %.2.i110.i389
  %i.dio = lshr i64 %.321.i.i390, 60
  %i.dip = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.dio
  %i.diq = load i32, ptr %i.dip, align 4, !tbaa !118
  %i.dir = add i32 %i.diq, %.3.i111.i391
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %.4.i108.i381 = phi i32 [ %i.dir, %bb.lt ], [ %i.dib, %bb.ls ]
  %i.dis = add i32 %.4.i108.i381, -1
  br label %ma_dr_flac__clz.exit96.i328

ma_dr_flac__clz.exit96.i328:                      ; preds = %bb.lu, %bb.lq
  %.0.i95.i329 = phi i32 [ %i.dhx, %bb.lq ], [ %i.dis, %bb.lu ] ; 3 uses
  %i.dit = icmp ult i32 %.0.i95.i329, 64
  br i1 %i.dit, label %.loopexit1128, label %ma_dr_flac__clz.exit96.i328.thread

.loopexit1128:                                    ; preds = %ma_dr_flac__clz.exit.i338, %ma_dr_flac__clz.exit96.i328
  %.61068 = phi i32 [ %.0.i95.i329, %ma_dr_flac__clz.exit96.i328 ], [ %i.dwd, %ma_dr_flac__clz.exit.i338 ]
  %.075.i340 = phi i64 [ %i.dht, %ma_dr_flac__clz.exit96.i328 ], [ %.479.i335, %ma_dr_flac__clz.exit.i338 ]
  %.072.i341 = phi i32 [ %i.dhu, %ma_dr_flac__clz.exit96.i328 ], [ %.4.i336, %ma_dr_flac__clz.exit.i338 ]
  %.070.i342 = phi i32 [ %.0.i95.i329, %ma_dr_flac__clz.exit96.i328 ], [ %.0.i.i339, %ma_dr_flac__clz.exit.i338 ] ; 2 uses
  %i.diu = zext nneg i32 %.070.i342 to i64
  %i.div = shl i64 %.075.i340, %i.diu             ; 2 uses
  %i.diw = add i32 %.070.i342, %.072.i341         ; 3 uses
  %.not90.i343 = icmp ugt i32 %i.diw, %i.qs
  %i.dix = lshr i64 %i.div, %i.ra                 ; 2 uses
  br i1 %.not90.i343, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %.loopexit1128
  %i.diy = shl i64 %i.div, %i.qr
  %i.diz = add i32 %i.diw, %i.qq
  br label %bb.nc

bb.lw:                                            ; preds = %.loopexit1128
  %i.dja = sub nuw i32 %i.diw, %i.qs              ; 4 uses
  %i.djb = load i32, ptr %i.qv, align 8, !tbaa !738 ; 3 uses
  %i.djc = icmp ult i32 %i.djb, 512
  br i1 %i.djc, label %bb.lx, label %bb.mg

bb.lx:                                            ; preds = %bb.lw
  %i.djd = load i32, ptr %i.qw, align 8, !tbaa !742
  %i.dje = load i16, ptr %i.qx, align 8, !tbaa !1198 ; 11 uses
  %i.djf = load i64, ptr %i.qy, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.djd, label %ma_dr_flac_crc16_bytes.exit.i351 [
    i32 0, label %bb.ly
    i32 7, label %._crit_edge1235
    i32 1, label %bb.lz
    i32 2, label %bb.ma
    i32 3, label %bb.mb
    i32 4, label %bb.mc
    i32 5, label %bb.md
    i32 6, label %bb.me
  ]

bb.ly:                                            ; preds = %bb.lx
  %i.djg = lshr i64 %i.djf, 56
  %i.djh = shl i16 %i.dje, 8
  %i.dji = lshr i16 %i.dje, 8
  %i.djj = zext nneg i16 %i.dji to i64
  %i.djk = xor i64 %i.djg, %i.djj
  %i.djl = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.djk
  %i.djm = load i16, ptr %i.djl, align 2, !tbaa !122 ; 2 uses
  %i.djn = xor i16 %i.djm, %i.djh
  %i.djo = lshr i64 %i.djf, 48
  %i.djp = trunc nuw i64 %i.djo to i16
  %i.djq = shl i16 %i.djm, 8
  %i.djr = lshr i16 %i.djn, 8
  %i.djs = and i16 %i.djp, 255
  %i.djt = xor i16 %i.djr, %i.djs
  %i.dju = zext nneg i16 %i.djt to i64
  %i.djv = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dju
  %i.djw = load i16, ptr %i.djv, align 2, !tbaa !122 ; 2 uses
  %i.djx = xor i16 %i.djq, %i.djw
  %i.djy = lshr i64 %i.djf, 40
  %i.djz = trunc i64 %i.djy to i16
  %i.dka = shl i16 %i.djw, 8
  %i.dkb = lshr i16 %i.djx, 8
  %i.dkc = and i16 %i.djz, 255
  %i.dkd = xor i16 %i.dkb, %i.dkc
  %i.dke = zext nneg i16 %i.dkd to i64
  %i.dkf = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dke
  %i.dkg = load i16, ptr %i.dkf, align 2, !tbaa !122 ; 2 uses
  %i.dkh = xor i16 %i.dka, %i.dkg
  %i.dki = lshr i64 %i.djf, 32
  %i.dkj = trunc i64 %i.dki to i16
  %i.dkk = shl i16 %i.dkg, 8
  %i.dkl = lshr i16 %i.dkh, 8
  %i.dkm = and i16 %i.dkj, 255
  %i.dkn = xor i16 %i.dkl, %i.dkm
  %i.dko = zext nneg i16 %i.dkn to i64
  %i.dkp = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dko
  %i.dkq = load i16, ptr %i.dkp, align 2, !tbaa !122 ; 2 uses
  %i.dkr = xor i16 %i.dkk, %i.dkq
  %i.dks = lshr i64 %i.djf, 24
  %i.dkt = trunc i64 %i.dks to i16
  %i.dku = shl i16 %i.dkq, 8
  %i.dkv = lshr i16 %i.dkr, 8
  %i.dkw = and i16 %i.dkt, 255
  %i.dkx = xor i16 %i.dkv, %i.dkw
  %i.dky = zext nneg i16 %i.dkx to i64
  %i.dkz = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dky
  %i.dla = load i16, ptr %i.dkz, align 2, !tbaa !122 ; 2 uses
  %i.dlb = xor i16 %i.dku, %i.dla
  %i.dlc = lshr i64 %i.djf, 16
  %i.dld = trunc i64 %i.dlc to i16
  %i.dle = shl i16 %i.dla, 8
  %i.dlf = lshr i16 %i.dlb, 8
  %i.dlg = and i16 %i.dld, 255
  %i.dlh = xor i16 %i.dlf, %i.dlg
  %i.dli = zext nneg i16 %i.dlh to i64
  %i.dlj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dli
  %i.dlk = load i16, ptr %i.dlj, align 2, !tbaa !122 ; 2 uses
  %i.dll = trunc i64 %i.djf to i16                ; 2 uses
  %i.dlm = shl i16 %i.dlk, 8
  %i.dln = xor i16 %i.dle, %i.dll
  %i.dlo = xor i16 %i.dln, %i.dlk
  %i.dlp = lshr i16 %i.dlo, 8
  %i.dlq = zext nneg i16 %i.dlp to i64
  %i.dlr = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dlq
  %i.dls = load i16, ptr %i.dlr, align 2, !tbaa !122 ; 2 uses
  %i.dlt = xor i16 %i.dlm, %i.dls
  %i.dlu = shl i16 %i.dls, 8
  %i.dlv = lshr i16 %i.dlt, 8
  %i.dlw = and i16 %i.dll, 255
  %i.dlx = xor i16 %i.dlv, %i.dlw
  %i.dly = zext nneg i16 %i.dlx to i64
  %i.dlz = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dly
  %i.dma = load i16, ptr %i.dlz, align 2, !tbaa !122
  %i.dmb = xor i16 %i.dlu, %i.dma
  store i16 %i.dmb, ptr %i.qx, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit97.i353

._crit_edge1235:                                  ; preds = %bb.lx
  %.pre1260 = trunc i64 %i.djf to i16
  br label %bb.mf

bb.lz:                                            ; preds = %bb.lx
  %i.dmc = lshr i64 %i.djf, 48
  %i.dmd = trunc nuw i64 %i.dmc to i16
  %i.dme = shl i16 %i.dje, 8
  %i.dmf = lshr i16 %i.dje, 8
  %i.dmg = and i16 %i.dmd, 255
  %i.dmh = xor i16 %i.dmg, %i.dmf
  %i.dmi = zext nneg i16 %i.dmh to i64
  %i.dmj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dmi
  %i.dmk = load i16, ptr %i.dmj, align 2, !tbaa !122
  %i.dml = xor i16 %i.dmk, %i.dme
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lx, %bb.lz
  %.1.i.i358 = phi i16 [ %i.dml, %bb.lz ], [ %i.dje, %bb.lx ] ; 2 uses
  %i.dmm = lshr i64 %i.djf, 40
  %i.dmn = trunc i64 %i.dmm to i16
  %i.dmo = shl i16 %.1.i.i358, 8
  %i.dmp = lshr i16 %.1.i.i358, 8
  %i.dmq = and i16 %i.dmn, 255
  %i.dmr = xor i16 %i.dmp, %i.dmq
  %i.dms = zext nneg i16 %i.dmr to i64
  %i.dmt = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dms
  %i.dmu = load i16, ptr %i.dmt, align 2, !tbaa !122
  %i.dmv = xor i16 %i.dmo, %i.dmu
  br label %bb.mb

bb.mb:                                            ; preds = %bb.lx, %bb.ma
  %.2.i.i357 = phi i16 [ %i.dmv, %bb.ma ], [ %i.dje, %bb.lx ] ; 2 uses
  %i.dmw = lshr i64 %i.djf, 32
  %i.dmx = trunc i64 %i.dmw to i16
  %i.dmy = shl i16 %.2.i.i357, 8
  %i.dmz = lshr i16 %.2.i.i357, 8
  %i.dna = and i16 %i.dmx, 255
  %i.dnb = xor i16 %i.dmz, %i.dna
  %i.dnc = zext nneg i16 %i.dnb to i64
  %i.dnd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dnc
  %i.dne = load i16, ptr %i.dnd, align 2, !tbaa !122
  %i.dnf = xor i16 %i.dmy, %i.dne
  br label %bb.mc

bb.mc:                                            ; preds = %bb.lx, %bb.mb
end_hunk_7
begin_hunk_8_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.dqf = lshr i64 %i.dpm, 40
  %i.dqg = trunc i64 %i.dqf to i16
  %i.dqh = shl i16 %i.dqd, 8
  %i.dqi = lshr i16 %i.dqe, 8
  %i.dqj = and i16 %i.dqg, 255
  %i.dqk = xor i16 %i.dqi, %i.dqj
  %i.dql = zext nneg i16 %i.dqk to i64
  %i.dqm = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dql
  %i.dqn = load i16, ptr %i.dqm, align 2, !tbaa !122 ; 2 uses
  %i.dqo = xor i16 %i.dqh, %i.dqn
  %i.dqp = lshr i64 %i.dpm, 32
  %i.dqq = trunc i64 %i.dqp to i16
  %i.dqr = shl i16 %i.dqn, 8
  %i.dqs = lshr i16 %i.dqo, 8
  %i.dqt = and i16 %i.dqq, 255
  %i.dqu = xor i16 %i.dqs, %i.dqt
  %i.dqv = zext nneg i16 %i.dqu to i64
  %i.dqw = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dqv
  %i.dqx = load i16, ptr %i.dqw, align 2, !tbaa !122 ; 2 uses
  %i.dqy = xor i16 %i.dqr, %i.dqx
  %i.dqz = lshr i64 %i.dpm, 24
  %i.dra = trunc i64 %i.dqz to i16
  %i.drb = shl i16 %i.dqx, 8
  %i.drc = lshr i16 %i.dqy, 8
  %i.drd = and i16 %i.dra, 255
  %i.dre = xor i16 %i.drc, %i.drd
  %i.drf = zext nneg i16 %i.dre to i64
  %i.drg = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.drf
  %i.drh = load i16, ptr %i.drg, align 2, !tbaa !122 ; 2 uses
  %i.dri = xor i16 %i.drb, %i.drh
  %i.drj = lshr i64 %i.dpm, 16
  %i.drk = trunc i64 %i.drj to i16
  %i.drl = shl i16 %i.drh, 8
  %i.drm = lshr i16 %i.dri, 8
  %i.drn = and i16 %i.drk, 255
  %i.dro = xor i16 %i.drm, %i.drn
  %i.drp = zext nneg i16 %i.dro to i64
  %i.drq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.drp
  %i.drr = load i16, ptr %i.drq, align 2, !tbaa !122 ; 2 uses
  %i.drs = trunc i64 %i.dpm to i16                ; 2 uses
  %i.drt = shl i16 %i.drr, 8
  %i.dru = xor i16 %i.drl, %i.drs
  %i.drv = xor i16 %i.dru, %i.drr
  %i.drw = lshr i16 %i.drv, 8
  %i.drx = zext nneg i16 %i.drw to i64
  %i.dry = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.drx
  %i.drz = load i16, ptr %i.dry, align 2, !tbaa !122 ; 2 uses
  %i.dsa = xor i16 %i.drt, %i.drz
  %i.dsb = shl i16 %i.drz, 8
  %i.dsc = lshr i16 %i.dsa, 8
  %i.dsd = and i16 %i.drs, 255
  %i.dse = xor i16 %i.dsc, %i.dsd
  %i.dsf = zext nneg i16 %i.dse to i64
  %i.dsg = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dsf
  %i.dsh = load i16, ptr %i.dsg, align 2, !tbaa !122
  %i.dsi = xor i16 %i.dsb, %i.dsh
  store i16 %i.dsi, ptr %i.qx, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i374

._crit_edge1234:                                  ; preds = %bb.ml
  %.pre1262 = trunc i64 %i.dpm to i16
  br label %bb.mt

bb.mn:                                            ; preds = %bb.ml
  %i.dsj = lshr i64 %i.dpm, 48
  %i.dsk = trunc nuw i64 %i.dsj to i16
  %i.dsl = shl i16 %i.dpl, 8
  %i.dsm = lshr i16 %i.dpl, 8
  %i.dsn = and i16 %i.dsk, 255
  %i.dso = xor i16 %i.dsn, %i.dsm
  %i.dsp = zext nneg i16 %i.dso to i64
  %i.dsq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dsp
  %i.dsr = load i16, ptr %i.dsq, align 2, !tbaa !122
  %i.dss = xor i16 %i.dsr, %i.dsl
  br label %bb.mo

bb.mo:                                            ; preds = %bb.ml, %bb.mn
  %.1.i105.i379 = phi i16 [ %i.dss, %bb.mn ], [ %i.dpl, %bb.ml ] ; 2 uses
  %i.dst = lshr i64 %i.dpm, 40
  %i.dsu = trunc i64 %i.dst to i16
  %i.dsv = shl i16 %.1.i105.i379, 8
  %i.dsw = lshr i16 %.1.i105.i379, 8
  %i.dsx = and i16 %i.dsu, 255
  %i.dsy = xor i16 %i.dsw, %i.dsx
  %i.dsz = zext nneg i16 %i.dsy to i64
  %i.dta = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dsz
  %i.dtb = load i16, ptr %i.dta, align 2, !tbaa !122
  %i.dtc = xor i16 %i.dsv, %i.dtb
  br label %bb.mp

bb.mp:                                            ; preds = %bb.ml, %bb.mo
  %.2.i104.i378 = phi i16 [ %i.dtc, %bb.mo ], [ %i.dpl, %bb.ml ] ; 2 uses
  %i.dtd = lshr i64 %i.dpm, 32
  %i.dte = trunc i64 %i.dtd to i16
  %i.dtf = shl i16 %.2.i104.i378, 8
  %i.dtg = lshr i16 %.2.i104.i378, 8
  %i.dth = and i16 %i.dte, 255
  %i.dti = xor i16 %i.dtg, %i.dth
  %i.dtj = zext nneg i16 %i.dti to i64
  %i.dtk = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dtj
  %i.dtl = load i16, ptr %i.dtk, align 2, !tbaa !122
  %i.dtm = xor i16 %i.dtf, %i.dtl
  br label %bb.mq

bb.mq:                                            ; preds = %bb.ml, %bb.mp
  %.3.i103.i377 = phi i16 [ %i.dtm, %bb.mp ], [ %i.dpl, %bb.ml ] ; 2 uses
  %i.dtn = lshr i64 %i.dpm, 24
  %i.dto = trunc i64 %i.dtn to i16
  %i.dtp = shl i16 %.3.i103.i377, 8
  %i.dtq = lshr i16 %.3.i103.i377, 8
  %i.dtr = and i16 %i.dto, 255
  %i.dts = xor i16 %i.dtq, %i.dtr
  %i.dtt = zext nneg i16 %i.dts to i64
  %i.dtu = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dtt
  %i.dtv = load i16, ptr %i.dtu, align 2, !tbaa !122
  %i.dtw = xor i16 %i.dtp, %i.dtv
  br label %bb.mr

bb.mr:                                            ; preds = %bb.ml, %bb.mq
  %.4.i102.i376 = phi i16 [ %i.dtw, %bb.mq ], [ %i.dpl, %bb.ml ] ; 2 uses
  %i.dtx = lshr i64 %i.dpm, 16
  %i.dty = trunc i64 %i.dtx to i16
  %i.dtz = shl i16 %.4.i102.i376, 8
  %i.dua = lshr i16 %.4.i102.i376, 8
  %i.dub = and i16 %i.dty, 255
  %i.duc = xor i16 %i.dua, %i.dub
  %i.dud = zext nneg i16 %i.duc to i64
  %i.due = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dud
  %i.duf = load i16, ptr %i.due, align 2, !tbaa !122
  %i.dug = xor i16 %i.dtz, %i.duf
  br label %bb.ms

bb.ms:                                            ; preds = %bb.ml, %bb.mr
  %.5.i101.i375 = phi i16 [ %i.dug, %bb.mr ], [ %i.dpl, %bb.ml ] ; 2 uses
  %i.duh = trunc i64 %i.dpm to i16                ; 2 uses
  %i.dui = shl i16 %.5.i101.i375, 8
  %i.duj = xor i16 %.5.i101.i375, %i.duh
  %i.duk = lshr i16 %i.duj, 8
  %i.dul = zext nneg i16 %i.duk to i64
  %i.dum = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dul
  %i.dun = load i16, ptr %i.dum, align 2, !tbaa !122
  %i.duo = xor i16 %i.dui, %i.dun
  br label %bb.mt

bb.mt:                                            ; preds = %._crit_edge1234, %bb.ms
  %.pre-phi1263 = phi i16 [ %.pre1262, %._crit_edge1234 ], [ %i.duh, %bb.ms ]
  %.6.i99.i371 = phi i16 [ %i.dpl, %._crit_edge1234 ], [ %i.duo, %bb.ms ] ; 2 uses
  %i.dup = shl i16 %.6.i99.i371, 8
  %i.duq = lshr i16 %.6.i99.i371, 8
  %i.dur = and i16 %.pre-phi1263, 255
  %i.dus = xor i16 %i.duq, %i.dur
  %i.dut = zext nneg i16 %i.dus to i64
  %i.duu = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dut
  %i.duv = load i16, ptr %i.duu, align 2, !tbaa !122
  %i.duw = xor i16 %i.dup, %i.duv
  br label %ma_dr_flac_crc16_bytes.exit107.i372

ma_dr_flac_crc16_bytes.exit107.i372:              ; preds = %bb.ml, %bb.mt
  %.7.i100.i373 = phi i16 [ %i.dpl, %bb.ml ], [ %i.duw, %bb.mt ]
  store i16 %.7.i100.i373, ptr %i.qx, align 8, !tbaa !1198
  store i32 0, ptr %i.qw, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i374

ma_dr_flac__update_crc16.exit.i374:               ; preds = %ma_dr_flac_crc16_bytes.exit107.i372, %bb.mm
  %i.dux = add nuw nsw i32 %i.dpi, 1
  store i32 %i.dux, ptr %i.qv, align 8, !tbaa !738
  %i.duy = zext nneg i32 %i.dpi to i64
  %i.duz = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.duy
  %i.dva = load i64, ptr %i.duz, align 8, !tbaa !164
  %i.dvb = tail call i64 @llvm.bswap.i64(i64 %i.dva) ; 2 uses
  store i64 %i.dvb, ptr %i.qy, align 8, !tbaa !741
  br label %bb.mw

bb.mu:                                            ; preds = %bb.mk
  %i.dvc = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i334 = icmp eq i32 %i.dvc, 0
  br i1 %.not.i334, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.dvd = load i64, ptr %i.qt, align 8, !tbaa !740
  %i.dve = load i32, ptr %i.qu, align 4, !tbaa !739
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %ma_dr_flac__update_crc16.exit.i374
  %.479.i335 = phi i64 [ %i.dvb, %ma_dr_flac__update_crc16.exit.i374 ], [ %i.dvd, %bb.mv ] ; 7 uses
  %.4.i336 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i374 ], [ %i.dve, %bb.mv ]
  %i.dvf = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i337 = icmp eq i32 %i.dvf, 0
  br i1 %.not.i.i337, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.dvg = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i335) #55, !srcloc !1207
  %i.dvh = trunc i64 %i.dvg to i32
  br label %ma_dr_flac__clz.exit.i338

bb.my:                                            ; preds = %bb.mw
  %i.dvi = icmp eq i64 %.479.i335, 0
  br i1 %i.dvi, label %ma_dr_flac__clz.exit.i338, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.dvj = lshr i64 %.479.i335, 60                ; 2 uses
  %i.dvk = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.dvj
  %i.dvl = load i32, ptr %i.dvk, align 4, !tbaa !118
  %i.dvm = icmp eq i64 %i.dvj, 0
  br i1 %i.dvm, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %i.dvn = icmp ult i64 %.479.i335, 4294967296    ; 2 uses
  %i.dvo = shl nuw i64 %.479.i335, 32
  %spec.select.i114.i363 = select i1 %i.dvn, i64 %i.dvo, i64 %.479.i335 ; 3 uses
  %spec.select26.i115.i364 = select i1 %i.dvn, i32 32, i32 0 ; 2 uses
  %i.dvp = icmp ult i64 %spec.select.i114.i363, 281474976710656 ; 2 uses
  %i.dvq = or disjoint i32 %spec.select26.i115.i364, 16
  %i.dvr = shl nuw i64 %spec.select.i114.i363, 16
  %.119.i116.i365 = select i1 %i.dvp, i64 %i.dvr, i64 %spec.select.i114.i363 ; 3 uses
  %.1.i117.i366 = select i1 %i.dvp, i32 %i.dvq, i32 %spec.select26.i115.i364 ; 2 uses
  %i.dvs = icmp ult i64 %.119.i116.i365, 72057594037927936 ; 2 uses
  %i.dvt = or disjoint i32 %.1.i117.i366, 8
  %i.dvu = shl nuw i64 %.119.i116.i365, 8
  %.220.i118.i367 = select i1 %i.dvs, i64 %i.dvu, i64 %.119.i116.i365 ; 3 uses
  %.2.i119.i368 = select i1 %i.dvs, i32 %i.dvt, i32 %.1.i117.i366 ; 2 uses
  %i.dvv = icmp ult i64 %.220.i118.i367, 1152921504606846976 ; 2 uses
  %i.dvw = or disjoint i32 %.2.i119.i368, 4
  %i.dvx = shl nuw i64 %.220.i118.i367, 4
  %.321.i120.i369 = select i1 %i.dvv, i64 %i.dvx, i64 %.220.i118.i367
  %.3.i121.i370 = select i1 %i.dvv, i32 %i.dvw, i32 %.2.i119.i368
  %i.dvy = lshr i64 %.321.i120.i369, 60
  %i.dvz = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.dvy
  %i.dwa = load i32, ptr %i.dvz, align 4, !tbaa !118
  %i.dwb = add i32 %i.dwa, %.3.i121.i370
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz
  %.4.i112.i360 = phi i32 [ %i.dwb, %bb.na ], [ %i.dvl, %bb.mz ]
  %i.dwc = add i32 %.4.i112.i360, -1
  br label %ma_dr_flac__clz.exit.i338

ma_dr_flac__clz.exit.i338:                        ; preds = %bb.my, %bb.nb, %bb.mx
  %.0.i.i339 = phi i32 [ %i.dvh, %bb.mx ], [ %i.dwc, %bb.nb ], [ 64, %bb.my ] ; 3 uses
  %i.dwd = add i32 %.0.i.i339, %.0.i333           ; 2 uses
  %i.dwe = icmp ult i32 %.0.i.i339, 64
  br i1 %i.dwe, label %.loopexit1128, label %bb.mk

bb.nc:                                            ; preds = %bb.mj, %bb.lv
  %.6.in = phi i64 [ %i.dpf, %bb.mj ], [ %i.dix, %bb.lv ]
  %.681.i344 = phi i64 [ %i.dpg, %bb.mj ], [ %i.diy, %bb.lv ] ; 8 uses
  %.6.i345 = phi i32 [ %.173.i349, %bb.mj ], [ %i.diz, %bb.lv ] ; 3 uses
  %.6 = trunc i64 %.6.in to i32
  store i64 %.681.i344, ptr %i.qt, align 8, !tbaa !740
  store i32 %.6.i345, ptr %i.qu, align 4, !tbaa !739
  %i.dwf = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i261 = icmp eq i32 %i.dwf, 0
  br i1 %.not.i94.i261, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.dwg = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.681.i344) #55, !srcloc !1207
  %i.dwh = trunc i64 %i.dwg to i32
  br label %ma_dr_flac__clz.exit96.i262

bb.ne:                                            ; preds = %bb.nc
  %i.dwi = icmp eq i64 %.681.i344, 0
  br i1 %i.dwi, label %ma_dr_flac__clz.exit96.i262.thread, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.dwj = lshr i64 %.681.i344, 60                ; 2 uses
  %i.dwk = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.dwj
  %i.dwl = load i32, ptr %i.dwk, align 4, !tbaa !118
  %i.dwm = icmp eq i64 %i.dwj, 0
  br i1 %i.dwm, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.dwn = icmp ult i64 %.681.i344, 4294967296    ; 2 uses
  %i.dwo = shl nuw i64 %.681.i344, 32
  %spec.select.i.i318 = select i1 %i.dwn, i64 %i.dwo, i64 %.681.i344 ; 3 uses
  %spec.select26.i.i319 = select i1 %i.dwn, i32 32, i32 0 ; 2 uses
  %i.dwp = icmp ult i64 %spec.select.i.i318, 281474976710656 ; 2 uses
  %i.dwq = or disjoint i32 %spec.select26.i.i319, 16
  %i.dwr = shl nuw i64 %spec.select.i.i318, 16
  %.119.i.i320 = select i1 %i.dwp, i64 %i.dwr, i64 %spec.select.i.i318 ; 3 uses
  %.1.i109.i321 = select i1 %i.dwp, i32 %i.dwq, i32 %spec.select26.i.i319 ; 2 uses
  %i.dws = icmp ult i64 %.119.i.i320, 72057594037927936 ; 2 uses
  %i.dwt = or disjoint i32 %.1.i109.i321, 8
  %i.dwu = shl nuw i64 %.119.i.i320, 8
  %.220.i.i322 = select i1 %i.dws, i64 %i.dwu, i64 %.119.i.i320 ; 3 uses
  %.2.i110.i323 = select i1 %i.dws, i32 %i.dwt, i32 %.1.i109.i321 ; 2 uses
  %i.dwv = icmp ult i64 %.220.i.i322, 1152921504606846976 ; 2 uses
  %i.dww = or disjoint i32 %.2.i110.i323, 4
  %i.dwx = shl nuw i64 %.220.i.i322, 4
  %.321.i.i324 = select i1 %i.dwv, i64 %i.dwx, i64 %.220.i.i322
  %.3.i111.i325 = select i1 %i.dwv, i32 %i.dww, i32 %.2.i110.i323
  %i.dwy = lshr i64 %.321.i.i324, 60
  %i.dwz = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.dwy
  %i.dxa = load i32, ptr %i.dwz, align 4, !tbaa !118
  %i.dxb = add i32 %i.dxa, %.3.i111.i325
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %.4.i108.i315 = phi i32 [ %i.dxb, %bb.ng ], [ %i.dwl, %bb.nf ]
  %i.dxc = add i32 %.4.i108.i315, -1
  br label %ma_dr_flac__clz.exit96.i262

ma_dr_flac__clz.exit96.i262:                      ; preds = %bb.nh, %bb.nd
  %.0.i95.i263 = phi i32 [ %i.dwh, %bb.nd ], [ %i.dxc, %bb.nh ] ; 3 uses
  %i.dxd = icmp ult i32 %.0.i95.i263, 64
  br i1 %i.dxd, label %.loopexit1126, label %ma_dr_flac__clz.exit96.i262.thread

.loopexit1126:                                    ; preds = %ma_dr_flac__clz.exit.i272, %ma_dr_flac__clz.exit96.i262
  %.21058 = phi i32 [ %.0.i95.i263, %ma_dr_flac__clz.exit96.i262 ], [ %i.ekn, %ma_dr_flac__clz.exit.i272 ]
  %.075.i274 = phi i64 [ %.681.i344, %ma_dr_flac__clz.exit96.i262 ], [ %.479.i269, %ma_dr_flac__clz.exit.i272 ]
  %.072.i275 = phi i32 [ %.6.i345, %ma_dr_flac__clz.exit96.i262 ], [ %.4.i270, %ma_dr_flac__clz.exit.i272 ]
  %.070.i276 = phi i32 [ %.0.i95.i263, %ma_dr_flac__clz.exit96.i262 ], [ %.0.i.i273, %ma_dr_flac__clz.exit.i272 ] ; 2 uses
  %i.dxe = zext nneg i32 %.070.i276 to i64
  %i.dxf = shl i64 %.075.i274, %i.dxe             ; 2 uses
  %i.dxg = add i32 %.070.i276, %.072.i275         ; 3 uses
  %.not90.i277 = icmp ugt i32 %i.dxg, %i.qs
  %i.dxh = lshr i64 %i.dxf, %i.ra                 ; 2 uses
  br i1 %.not90.i277, label %bb.nj, label %bb.ni

bb.ni:                                            ; preds = %.loopexit1126
  %i.dxi = shl i64 %i.dxf, %i.qr
  %i.dxj = add i32 %i.dxg, %i.qq
  br label %bb.op

bb.nj:                                            ; preds = %.loopexit1126
  %i.dxk = sub nuw i32 %i.dxg, %i.qs              ; 4 uses
  %i.dxl = load i32, ptr %i.qv, align 8, !tbaa !738 ; 3 uses
  %i.dxm = icmp ult i32 %i.dxl, 512
  br i1 %i.dxm, label %bb.nk, label %bb.nt

bb.nk:                                            ; preds = %bb.nj
  %i.dxn = load i32, ptr %i.qw, align 8, !tbaa !742
  %i.dxo = load i16, ptr %i.qx, align 8, !tbaa !1198 ; 11 uses
  %i.dxp = load i64, ptr %i.qy, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.dxn, label %ma_dr_flac_crc16_bytes.exit.i285 [
    i32 0, label %bb.nl
    i32 7, label %._crit_edge1237
    i32 1, label %bb.nm
    i32 2, label %bb.nn
    i32 3, label %bb.no
    i32 4, label %bb.np
    i32 5, label %bb.nq
    i32 6, label %bb.nr
  ]

bb.nl:                                            ; preds = %bb.nk
  %i.dxq = lshr i64 %i.dxp, 56
  %i.dxr = shl i16 %i.dxo, 8
  %i.dxs = lshr i16 %i.dxo, 8
  %i.dxt = zext nneg i16 %i.dxs to i64
  %i.dxu = xor i64 %i.dxq, %i.dxt
  %i.dxv = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dxu
  %i.dxw = load i16, ptr %i.dxv, align 2, !tbaa !122 ; 2 uses
  %i.dxx = xor i16 %i.dxw, %i.dxr
  %i.dxy = lshr i64 %i.dxp, 48
  %i.dxz = trunc nuw i64 %i.dxy to i16
  %i.dya = shl i16 %i.dxw, 8
  %i.dyb = lshr i16 %i.dxx, 8
  %i.dyc = and i16 %i.dxz, 255
  %i.dyd = xor i16 %i.dyb, %i.dyc
  %i.dye = zext nneg i16 %i.dyd to i64
  %i.dyf = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dye
  %i.dyg = load i16, ptr %i.dyf, align 2, !tbaa !122 ; 2 uses
  %i.dyh = xor i16 %i.dya, %i.dyg
  %i.dyi = lshr i64 %i.dxp, 40
  %i.dyj = trunc i64 %i.dyi to i16
  %i.dyk = shl i16 %i.dyg, 8
  %i.dyl = lshr i16 %i.dyh, 8
  %i.dym = and i16 %i.dyj, 255
  %i.dyn = xor i16 %i.dyl, %i.dym
  %i.dyo = zext nneg i16 %i.dyn to i64
  %i.dyp = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dyo
  %i.dyq = load i16, ptr %i.dyp, align 2, !tbaa !122 ; 2 uses
  %i.dyr = xor i16 %i.dyk, %i.dyq
  %i.dys = lshr i64 %i.dxp, 32
  %i.dyt = trunc i64 %i.dys to i16
  %i.dyu = shl i16 %i.dyq, 8
  %i.dyv = lshr i16 %i.dyr, 8
  %i.dyw = and i16 %i.dyt, 255
  %i.dyx = xor i16 %i.dyv, %i.dyw
  %i.dyy = zext nneg i16 %i.dyx to i64
  %i.dyz = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dyy
  %i.dza = load i16, ptr %i.dyz, align 2, !tbaa !122 ; 2 uses
  %i.dzb = xor i16 %i.dyu, %i.dza
  %i.dzc = lshr i64 %i.dxp, 24
  %i.dzd = trunc i64 %i.dzc to i16
  %i.dze = shl i16 %i.dza, 8
  %i.dzf = lshr i16 %i.dzb, 8
  %i.dzg = and i16 %i.dzd, 255
  %i.dzh = xor i16 %i.dzf, %i.dzg
  %i.dzi = zext nneg i16 %i.dzh to i64
  %i.dzj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dzi
  %i.dzk = load i16, ptr %i.dzj, align 2, !tbaa !122 ; 2 uses
  %i.dzl = xor i16 %i.dze, %i.dzk
  %i.dzm = lshr i64 %i.dxp, 16
  %i.dzn = trunc i64 %i.dzm to i16
  %i.dzo = shl i16 %i.dzk, 8
  %i.dzp = lshr i16 %i.dzl, 8
  %i.dzq = and i16 %i.dzn, 255
  %i.dzr = xor i16 %i.dzp, %i.dzq
  %i.dzs = zext nneg i16 %i.dzr to i64
  %i.dzt = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.dzs
  %i.dzu = load i16, ptr %i.dzt, align 2, !tbaa !122 ; 2 uses
  %i.dzv = trunc i64 %i.dxp to i16                ; 2 uses
  %i.dzw = shl i16 %i.dzu, 8
  %i.dzx = xor i16 %i.dzo, %i.dzv
  %i.dzy = xor i16 %i.dzx, %i.dzu
  %i.dzz = lshr i16 %i.dzy, 8
  %i.eaa = zext nneg i16 %i.dzz to i64
  %i.eab = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eaa
  %i.eac = load i16, ptr %i.eab, align 2, !tbaa !122 ; 2 uses
  %i.ead = xor i16 %i.dzw, %i.eac
  %i.eae = shl i16 %i.eac, 8
  %i.eaf = lshr i16 %i.ead, 8
  %i.eag = and i16 %i.dzv, 255
  %i.eah = xor i16 %i.eaf, %i.eag
  %i.eai = zext nneg i16 %i.eah to i64
  %i.eaj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eai
  %i.eak = load i16, ptr %i.eaj, align 2, !tbaa !122
  %i.eal = xor i16 %i.eae, %i.eak
  store i16 %i.eal, ptr %i.qx, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit97.i287

._crit_edge1237:                                  ; preds = %bb.nk
  %.pre1256 = trunc i64 %i.dxp to i16
  br label %bb.ns

bb.nm:                                            ; preds = %bb.nk
  %i.eam = lshr i64 %i.dxp, 48
  %i.ean = trunc nuw i64 %i.eam to i16
  %i.eao = shl i16 %i.dxo, 8
  %i.eap = lshr i16 %i.dxo, 8
  %i.eaq = and i16 %i.ean, 255
  %i.ear = xor i16 %i.eaq, %i.eap
  %i.eas = zext nneg i16 %i.ear to i64
  %i.eat = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eas
  %i.eau = load i16, ptr %i.eat, align 2, !tbaa !122
  %i.eav = xor i16 %i.eau, %i.eao
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nk, %bb.nm
  %.1.i.i292 = phi i16 [ %i.eav, %bb.nm ], [ %i.dxo, %bb.nk ] ; 2 uses
  %i.eaw = lshr i64 %i.dxp, 40
  %i.eax = trunc i64 %i.eaw to i16
  %i.eay = shl i16 %.1.i.i292, 8
  %i.eaz = lshr i16 %.1.i.i292, 8
  %i.eba = and i16 %i.eax, 255
  %i.ebb = xor i16 %i.eaz, %i.eba
  %i.ebc = zext nneg i16 %i.ebb to i64
  %i.ebd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ebc
  %i.ebe = load i16, ptr %i.ebd, align 2, !tbaa !122
  %i.ebf = xor i16 %i.eay, %i.ebe
  br label %bb.no

bb.no:                                            ; preds = %bb.nk, %bb.nn
  %.2.i.i291 = phi i16 [ %i.ebf, %bb.nn ], [ %i.dxo, %bb.nk ] ; 2 uses
  %i.ebg = lshr i64 %i.dxp, 32
  %i.ebh = trunc i64 %i.ebg to i16
  %i.ebi = shl i16 %.2.i.i291, 8
  %i.ebj = lshr i16 %.2.i.i291, 8
  %i.ebk = and i16 %i.ebh, 255
  %i.ebl = xor i16 %i.ebj, %i.ebk
  %i.ebm = zext nneg i16 %i.ebl to i64
  %i.ebn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ebm
  %i.ebo = load i16, ptr %i.ebn, align 2, !tbaa !122
  %i.ebp = xor i16 %i.ebi, %i.ebo
  br label %bb.np

bb.np:                                            ; preds = %bb.nk, %bb.no
end_hunk_8
begin_hunk_9_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.eep = lshr i64 %i.edw, 40
  %i.eeq = trunc i64 %i.eep to i16
  %i.eer = shl i16 %i.een, 8
  %i.ees = lshr i16 %i.eeo, 8
  %i.eet = and i16 %i.eeq, 255
  %i.eeu = xor i16 %i.ees, %i.eet
  %i.eev = zext nneg i16 %i.eeu to i64
  %i.eew = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eev
  %i.eex = load i16, ptr %i.eew, align 2, !tbaa !122 ; 2 uses
  %i.eey = xor i16 %i.eer, %i.eex
  %i.eez = lshr i64 %i.edw, 32
  %i.efa = trunc i64 %i.eez to i16
  %i.efb = shl i16 %i.eex, 8
  %i.efc = lshr i16 %i.eey, 8
  %i.efd = and i16 %i.efa, 255
  %i.efe = xor i16 %i.efc, %i.efd
  %i.eff = zext nneg i16 %i.efe to i64
  %i.efg = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eff
  %i.efh = load i16, ptr %i.efg, align 2, !tbaa !122 ; 2 uses
  %i.efi = xor i16 %i.efb, %i.efh
  %i.efj = lshr i64 %i.edw, 24
  %i.efk = trunc i64 %i.efj to i16
  %i.efl = shl i16 %i.efh, 8
  %i.efm = lshr i16 %i.efi, 8
  %i.efn = and i16 %i.efk, 255
  %i.efo = xor i16 %i.efm, %i.efn
  %i.efp = zext nneg i16 %i.efo to i64
  %i.efq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.efp
  %i.efr = load i16, ptr %i.efq, align 2, !tbaa !122 ; 2 uses
  %i.efs = xor i16 %i.efl, %i.efr
  %i.eft = lshr i64 %i.edw, 16
  %i.efu = trunc i64 %i.eft to i16
  %i.efv = shl i16 %i.efr, 8
  %i.efw = lshr i16 %i.efs, 8
  %i.efx = and i16 %i.efu, 255
  %i.efy = xor i16 %i.efw, %i.efx
  %i.efz = zext nneg i16 %i.efy to i64
  %i.ega = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.efz
  %i.egb = load i16, ptr %i.ega, align 2, !tbaa !122 ; 2 uses
  %i.egc = trunc i64 %i.edw to i16                ; 2 uses
  %i.egd = shl i16 %i.egb, 8
  %i.ege = xor i16 %i.efv, %i.egc
  %i.egf = xor i16 %i.ege, %i.egb
  %i.egg = lshr i16 %i.egf, 8
  %i.egh = zext nneg i16 %i.egg to i64
  %i.egi = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.egh
  %i.egj = load i16, ptr %i.egi, align 2, !tbaa !122 ; 2 uses
  %i.egk = xor i16 %i.egd, %i.egj
  %i.egl = shl i16 %i.egj, 8
  %i.egm = lshr i16 %i.egk, 8
  %i.egn = and i16 %i.egc, 255
  %i.ego = xor i16 %i.egm, %i.egn
  %i.egp = zext nneg i16 %i.ego to i64
  %i.egq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.egp
  %i.egr = load i16, ptr %i.egq, align 2, !tbaa !122
  %i.egs = xor i16 %i.egl, %i.egr
  store i16 %i.egs, ptr %i.qx, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i308

._crit_edge1236:                                  ; preds = %bb.ny
  %.pre1258 = trunc i64 %i.edw to i16
  br label %bb.og

bb.oa:                                            ; preds = %bb.ny
  %i.egt = lshr i64 %i.edw, 48
  %i.egu = trunc nuw i64 %i.egt to i16
  %i.egv = shl i16 %i.edv, 8
  %i.egw = lshr i16 %i.edv, 8
  %i.egx = and i16 %i.egu, 255
  %i.egy = xor i16 %i.egx, %i.egw
  %i.egz = zext nneg i16 %i.egy to i64
  %i.eha = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.egz
  %i.ehb = load i16, ptr %i.eha, align 2, !tbaa !122
  %i.ehc = xor i16 %i.ehb, %i.egv
  br label %bb.ob

bb.ob:                                            ; preds = %bb.ny, %bb.oa
  %.1.i105.i313 = phi i16 [ %i.ehc, %bb.oa ], [ %i.edv, %bb.ny ] ; 2 uses
  %i.ehd = lshr i64 %i.edw, 40
  %i.ehe = trunc i64 %i.ehd to i16
  %i.ehf = shl i16 %.1.i105.i313, 8
  %i.ehg = lshr i16 %.1.i105.i313, 8
  %i.ehh = and i16 %i.ehe, 255
  %i.ehi = xor i16 %i.ehg, %i.ehh
  %i.ehj = zext nneg i16 %i.ehi to i64
  %i.ehk = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ehj
  %i.ehl = load i16, ptr %i.ehk, align 2, !tbaa !122
  %i.ehm = xor i16 %i.ehf, %i.ehl
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ny, %bb.ob
  %.2.i104.i312 = phi i16 [ %i.ehm, %bb.ob ], [ %i.edv, %bb.ny ] ; 2 uses
  %i.ehn = lshr i64 %i.edw, 32
  %i.eho = trunc i64 %i.ehn to i16
  %i.ehp = shl i16 %.2.i104.i312, 8
  %i.ehq = lshr i16 %.2.i104.i312, 8
  %i.ehr = and i16 %i.eho, 255
  %i.ehs = xor i16 %i.ehq, %i.ehr
  %i.eht = zext nneg i16 %i.ehs to i64
  %i.ehu = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eht
  %i.ehv = load i16, ptr %i.ehu, align 2, !tbaa !122
  %i.ehw = xor i16 %i.ehp, %i.ehv
  br label %bb.od

bb.od:                                            ; preds = %bb.ny, %bb.oc
  %.3.i103.i311 = phi i16 [ %i.ehw, %bb.oc ], [ %i.edv, %bb.ny ] ; 2 uses
  %i.ehx = lshr i64 %i.edw, 24
  %i.ehy = trunc i64 %i.ehx to i16
  %i.ehz = shl i16 %.3.i103.i311, 8
  %i.eia = lshr i16 %.3.i103.i311, 8
  %i.eib = and i16 %i.ehy, 255
  %i.eic = xor i16 %i.eia, %i.eib
  %i.eid = zext nneg i16 %i.eic to i64
  %i.eie = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eid
  %i.eif = load i16, ptr %i.eie, align 2, !tbaa !122
  %i.eig = xor i16 %i.ehz, %i.eif
  br label %bb.oe

bb.oe:                                            ; preds = %bb.ny, %bb.od
  %.4.i102.i310 = phi i16 [ %i.eig, %bb.od ], [ %i.edv, %bb.ny ] ; 2 uses
  %i.eih = lshr i64 %i.edw, 16
  %i.eii = trunc i64 %i.eih to i16
  %i.eij = shl i16 %.4.i102.i310, 8
  %i.eik = lshr i16 %.4.i102.i310, 8
  %i.eil = and i16 %i.eii, 255
  %i.eim = xor i16 %i.eik, %i.eil
  %i.ein = zext nneg i16 %i.eim to i64
  %i.eio = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ein
  %i.eip = load i16, ptr %i.eio, align 2, !tbaa !122
  %i.eiq = xor i16 %i.eij, %i.eip
  br label %bb.of

bb.of:                                            ; preds = %bb.ny, %bb.oe
  %.5.i101.i309 = phi i16 [ %i.eiq, %bb.oe ], [ %i.edv, %bb.ny ] ; 2 uses
  %i.eir = trunc i64 %i.edw to i16                ; 2 uses
  %i.eis = shl i16 %.5.i101.i309, 8
  %i.eit = xor i16 %.5.i101.i309, %i.eir
  %i.eiu = lshr i16 %i.eit, 8
  %i.eiv = zext nneg i16 %i.eiu to i64
  %i.eiw = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eiv
  %i.eix = load i16, ptr %i.eiw, align 2, !tbaa !122
  %i.eiy = xor i16 %i.eis, %i.eix
  br label %bb.og

bb.og:                                            ; preds = %._crit_edge1236, %bb.of
  %.pre-phi1259 = phi i16 [ %.pre1258, %._crit_edge1236 ], [ %i.eir, %bb.of ]
  %.6.i99.i305 = phi i16 [ %i.edv, %._crit_edge1236 ], [ %i.eiy, %bb.of ] ; 2 uses
  %i.eiz = shl i16 %.6.i99.i305, 8
  %i.eja = lshr i16 %.6.i99.i305, 8
  %i.ejb = and i16 %.pre-phi1259, 255
  %i.ejc = xor i16 %i.eja, %i.ejb
  %i.ejd = zext nneg i16 %i.ejc to i64
  %i.eje = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ejd
  %i.ejf = load i16, ptr %i.eje, align 2, !tbaa !122
  %i.ejg = xor i16 %i.eiz, %i.ejf
  br label %ma_dr_flac_crc16_bytes.exit107.i306

ma_dr_flac_crc16_bytes.exit107.i306:              ; preds = %bb.ny, %bb.og
  %.7.i100.i307 = phi i16 [ %i.edv, %bb.ny ], [ %i.ejg, %bb.og ]
  store i16 %.7.i100.i307, ptr %i.qx, align 8, !tbaa !1198
  store i32 0, ptr %i.qw, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i308

ma_dr_flac__update_crc16.exit.i308:               ; preds = %ma_dr_flac_crc16_bytes.exit107.i306, %bb.nz
  %i.ejh = add nuw nsw i32 %i.eds, 1
  store i32 %i.ejh, ptr %i.qv, align 8, !tbaa !738
  %i.eji = zext nneg i32 %i.eds to i64
  %i.ejj = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.eji
  %i.ejk = load i64, ptr %i.ejj, align 8, !tbaa !164
  %i.ejl = tail call i64 @llvm.bswap.i64(i64 %i.ejk) ; 2 uses
  store i64 %i.ejl, ptr %i.qy, align 8, !tbaa !741
  br label %bb.oj

bb.oh:                                            ; preds = %bb.nx
  %i.ejm = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i268 = icmp eq i32 %i.ejm, 0
  br i1 %.not.i268, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.ejn = load i64, ptr %i.qt, align 8, !tbaa !740
  %i.ejo = load i32, ptr %i.qu, align 4, !tbaa !739
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %ma_dr_flac__update_crc16.exit.i308
  %.479.i269 = phi i64 [ %i.ejl, %ma_dr_flac__update_crc16.exit.i308 ], [ %i.ejn, %bb.oi ] ; 7 uses
  %.4.i270 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i308 ], [ %i.ejo, %bb.oi ]
  %i.ejp = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i271 = icmp eq i32 %i.ejp, 0
  br i1 %.not.i.i271, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.ejq = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i269) #55, !srcloc !1207
  %i.ejr = trunc i64 %i.ejq to i32
  br label %ma_dr_flac__clz.exit.i272

bb.ol:                                            ; preds = %bb.oj
  %i.ejs = icmp eq i64 %.479.i269, 0
  br i1 %i.ejs, label %ma_dr_flac__clz.exit.i272, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.ejt = lshr i64 %.479.i269, 60                ; 2 uses
  %i.eju = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.ejt
  %i.ejv = load i32, ptr %i.eju, align 4, !tbaa !118
  %i.ejw = icmp eq i64 %i.ejt, 0
  br i1 %i.ejw, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %bb.om
  %i.ejx = icmp ult i64 %.479.i269, 4294967296    ; 2 uses
  %i.ejy = shl nuw i64 %.479.i269, 32
  %spec.select.i114.i297 = select i1 %i.ejx, i64 %i.ejy, i64 %.479.i269 ; 3 uses
  %spec.select26.i115.i298 = select i1 %i.ejx, i32 32, i32 0 ; 2 uses
  %i.ejz = icmp ult i64 %spec.select.i114.i297, 281474976710656 ; 2 uses
  %i.eka = or disjoint i32 %spec.select26.i115.i298, 16
  %i.ekb = shl nuw i64 %spec.select.i114.i297, 16
  %.119.i116.i299 = select i1 %i.ejz, i64 %i.ekb, i64 %spec.select.i114.i297 ; 3 uses
  %.1.i117.i300 = select i1 %i.ejz, i32 %i.eka, i32 %spec.select26.i115.i298 ; 2 uses
  %i.ekc = icmp ult i64 %.119.i116.i299, 72057594037927936 ; 2 uses
  %i.ekd = or disjoint i32 %.1.i117.i300, 8
  %i.eke = shl nuw i64 %.119.i116.i299, 8
  %.220.i118.i301 = select i1 %i.ekc, i64 %i.eke, i64 %.119.i116.i299 ; 3 uses
  %.2.i119.i302 = select i1 %i.ekc, i32 %i.ekd, i32 %.1.i117.i300 ; 2 uses
  %i.ekf = icmp ult i64 %.220.i118.i301, 1152921504606846976 ; 2 uses
  %i.ekg = or disjoint i32 %.2.i119.i302, 4
  %i.ekh = shl nuw i64 %.220.i118.i301, 4
  %.321.i120.i303 = select i1 %i.ekf, i64 %i.ekh, i64 %.220.i118.i301
  %.3.i121.i304 = select i1 %i.ekf, i32 %i.ekg, i32 %.2.i119.i302
  %i.eki = lshr i64 %.321.i120.i303, 60
  %i.ekj = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.eki
  %i.ekk = load i32, ptr %i.ekj, align 4, !tbaa !118
  %i.ekl = add i32 %i.ekk, %.3.i121.i304
  br label %bb.oo

bb.oo:                                            ; preds = %bb.on, %bb.om
  %.4.i112.i294 = phi i32 [ %i.ekl, %bb.on ], [ %i.ejv, %bb.om ]
  %i.ekm = add i32 %.4.i112.i294, -1
  br label %ma_dr_flac__clz.exit.i272

ma_dr_flac__clz.exit.i272:                        ; preds = %bb.ol, %bb.oo, %bb.ok
  %.0.i.i273 = phi i32 [ %i.ejr, %bb.ok ], [ %i.ekm, %bb.oo ], [ 64, %bb.ol ] ; 3 uses
  %i.ekn = add i32 %.0.i.i273, %.0.i267           ; 2 uses
  %i.eko = icmp ult i32 %.0.i.i273, 64
  br i1 %i.eko, label %.loopexit1126, label %bb.nx

bb.op:                                            ; preds = %bb.nw, %bb.ni
  %.21034.in = phi i64 [ %i.edp, %bb.nw ], [ %i.dxh, %bb.ni ]
  %.681.i278 = phi i64 [ %i.edq, %bb.nw ], [ %i.dxi, %bb.ni ] ; 8 uses
  %.6.i279 = phi i32 [ %.173.i283, %bb.nw ], [ %i.dxj, %bb.ni ] ; 3 uses
  %.21034 = trunc i64 %.21034.in to i32
  store i64 %.681.i278, ptr %i.qt, align 8, !tbaa !740
  store i32 %.6.i279, ptr %i.qu, align 4, !tbaa !739
  %i.ekp = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i195 = icmp eq i32 %i.ekp, 0
  br i1 %.not.i94.i195, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.ekq = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.681.i278) #55, !srcloc !1207
  %i.ekr = trunc i64 %i.ekq to i32
  br label %ma_dr_flac__clz.exit96.i196

bb.or:                                            ; preds = %bb.op
  %i.eks = icmp eq i64 %.681.i278, 0
  br i1 %i.eks, label %ma_dr_flac__clz.exit96.i196.thread, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.ekt = lshr i64 %.681.i278, 60                ; 2 uses
  %i.eku = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.ekt
  %i.ekv = load i32, ptr %i.eku, align 4, !tbaa !118
  %i.ekw = icmp eq i64 %i.ekt, 0
  br i1 %i.ekw, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.ekx = icmp ult i64 %.681.i278, 4294967296    ; 2 uses
  %i.eky = shl nuw i64 %.681.i278, 32
  %spec.select.i.i252 = select i1 %i.ekx, i64 %i.eky, i64 %.681.i278 ; 3 uses
  %spec.select26.i.i253 = select i1 %i.ekx, i32 32, i32 0 ; 2 uses
  %i.ekz = icmp ult i64 %spec.select.i.i252, 281474976710656 ; 2 uses
  %i.ela = or disjoint i32 %spec.select26.i.i253, 16
  %i.elb = shl nuw i64 %spec.select.i.i252, 16
  %.119.i.i254 = select i1 %i.ekz, i64 %i.elb, i64 %spec.select.i.i252 ; 3 uses
  %.1.i109.i255 = select i1 %i.ekz, i32 %i.ela, i32 %spec.select26.i.i253 ; 2 uses
  %i.elc = icmp ult i64 %.119.i.i254, 72057594037927936 ; 2 uses
  %i.eld = or disjoint i32 %.1.i109.i255, 8
  %i.ele = shl nuw i64 %.119.i.i254, 8
  %.220.i.i256 = select i1 %i.elc, i64 %i.ele, i64 %.119.i.i254 ; 3 uses
  %.2.i110.i257 = select i1 %i.elc, i32 %i.eld, i32 %.1.i109.i255 ; 2 uses
  %i.elf = icmp ult i64 %.220.i.i256, 1152921504606846976 ; 2 uses
  %i.elg = or disjoint i32 %.2.i110.i257, 4
  %i.elh = shl nuw i64 %.220.i.i256, 4
  %.321.i.i258 = select i1 %i.elf, i64 %i.elh, i64 %.220.i.i256
  %.3.i111.i259 = select i1 %i.elf, i32 %i.elg, i32 %.2.i110.i257
  %i.eli = lshr i64 %.321.i.i258, 60
  %i.elj = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.eli
  %i.elk = load i32, ptr %i.elj, align 4, !tbaa !118
  %i.ell = add i32 %i.elk, %.3.i111.i259
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  %.4.i108.i249 = phi i32 [ %i.ell, %bb.ot ], [ %i.ekv, %bb.os ]
  %i.elm = add i32 %.4.i108.i249, -1
  br label %ma_dr_flac__clz.exit96.i196

ma_dr_flac__clz.exit96.i196:                      ; preds = %bb.ou, %bb.oq
  %.0.i95.i197 = phi i32 [ %i.ekr, %bb.oq ], [ %i.elm, %bb.ou ] ; 3 uses
  %i.eln = icmp ult i32 %.0.i95.i197, 64
  br i1 %i.eln, label %.loopexit1124, label %ma_dr_flac__clz.exit96.i196.thread

.loopexit1124:                                    ; preds = %ma_dr_flac__clz.exit.i206, %ma_dr_flac__clz.exit96.i196
  %.21052 = phi i32 [ %.0.i95.i197, %ma_dr_flac__clz.exit96.i196 ], [ %i.eyx, %ma_dr_flac__clz.exit.i206 ]
  %.075.i208 = phi i64 [ %.681.i278, %ma_dr_flac__clz.exit96.i196 ], [ %.479.i203, %ma_dr_flac__clz.exit.i206 ]
  %.072.i209 = phi i32 [ %.6.i279, %ma_dr_flac__clz.exit96.i196 ], [ %.4.i204, %ma_dr_flac__clz.exit.i206 ]
  %.070.i210 = phi i32 [ %.0.i95.i197, %ma_dr_flac__clz.exit96.i196 ], [ %.0.i.i207, %ma_dr_flac__clz.exit.i206 ] ; 2 uses
  %i.elo = zext nneg i32 %.070.i210 to i64
  %i.elp = shl i64 %.075.i208, %i.elo             ; 2 uses
  %i.elq = add i32 %.070.i210, %.072.i209         ; 3 uses
  %.not90.i211 = icmp ugt i32 %i.elq, %i.qs
  %i.elr = lshr i64 %i.elp, %i.ra                 ; 2 uses
  br i1 %.not90.i211, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %.loopexit1124
  %i.els = shl i64 %i.elp, %i.qr
  %i.elt = add i32 %i.elq, %i.qq
  br label %bb.qc

bb.ow:                                            ; preds = %.loopexit1124
  %i.elu = sub nuw i32 %i.elq, %i.qs              ; 4 uses
  %i.elv = load i32, ptr %i.qv, align 8, !tbaa !738 ; 3 uses
  %i.elw = icmp ult i32 %i.elv, 512
  br i1 %i.elw, label %bb.ox, label %bb.pg

bb.ox:                                            ; preds = %bb.ow
  %i.elx = load i32, ptr %i.qw, align 8, !tbaa !742
  %i.ely = load i16, ptr %i.qx, align 8, !tbaa !1198 ; 11 uses
  %i.elz = load i64, ptr %i.qy, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.elx, label %ma_dr_flac_crc16_bytes.exit.i219 [
    i32 0, label %bb.oy
    i32 7, label %._crit_edge1239
    i32 1, label %bb.oz
    i32 2, label %bb.pa
    i32 3, label %bb.pb
    i32 4, label %bb.pc
    i32 5, label %bb.pd
    i32 6, label %bb.pe
  ]

bb.oy:                                            ; preds = %bb.ox
  %i.ema = lshr i64 %i.elz, 56
  %i.emb = shl i16 %i.ely, 8
  %i.emc = lshr i16 %i.ely, 8
  %i.emd = zext nneg i16 %i.emc to i64
  %i.eme = xor i64 %i.ema, %i.emd
  %i.emf = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eme
  %i.emg = load i16, ptr %i.emf, align 2, !tbaa !122 ; 2 uses
  %i.emh = xor i16 %i.emg, %i.emb
  %i.emi = lshr i64 %i.elz, 48
  %i.emj = trunc nuw i64 %i.emi to i16
  %i.emk = shl i16 %i.emg, 8
  %i.eml = lshr i16 %i.emh, 8
  %i.emm = and i16 %i.emj, 255
  %i.emn = xor i16 %i.eml, %i.emm
  %i.emo = zext nneg i16 %i.emn to i64
  %i.emp = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.emo
  %i.emq = load i16, ptr %i.emp, align 2, !tbaa !122 ; 2 uses
  %i.emr = xor i16 %i.emk, %i.emq
  %i.ems = lshr i64 %i.elz, 40
  %i.emt = trunc i64 %i.ems to i16
  %i.emu = shl i16 %i.emq, 8
  %i.emv = lshr i16 %i.emr, 8
  %i.emw = and i16 %i.emt, 255
  %i.emx = xor i16 %i.emv, %i.emw
  %i.emy = zext nneg i16 %i.emx to i64
  %i.emz = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.emy
  %i.ena = load i16, ptr %i.emz, align 2, !tbaa !122 ; 2 uses
  %i.enb = xor i16 %i.emu, %i.ena
  %i.enc = lshr i64 %i.elz, 32
  %i.end = trunc i64 %i.enc to i16
  %i.ene = shl i16 %i.ena, 8
  %i.enf = lshr i16 %i.enb, 8
  %i.eng = and i16 %i.end, 255
  %i.enh = xor i16 %i.enf, %i.eng
  %i.eni = zext nneg i16 %i.enh to i64
  %i.enj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eni
  %i.enk = load i16, ptr %i.enj, align 2, !tbaa !122 ; 2 uses
  %i.enl = xor i16 %i.ene, %i.enk
  %i.enm = lshr i64 %i.elz, 24
  %i.enn = trunc i64 %i.enm to i16
  %i.eno = shl i16 %i.enk, 8
  %i.enp = lshr i16 %i.enl, 8
  %i.enq = and i16 %i.enn, 255
  %i.enr = xor i16 %i.enp, %i.enq
  %i.ens = zext nneg i16 %i.enr to i64
  %i.ent = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ens
  %i.enu = load i16, ptr %i.ent, align 2, !tbaa !122 ; 2 uses
  %i.env = xor i16 %i.eno, %i.enu
  %i.enw = lshr i64 %i.elz, 16
  %i.enx = trunc i64 %i.enw to i16
  %i.eny = shl i16 %i.enu, 8
  %i.enz = lshr i16 %i.env, 8
  %i.eoa = and i16 %i.enx, 255
  %i.eob = xor i16 %i.enz, %i.eoa
  %i.eoc = zext nneg i16 %i.eob to i64
  %i.eod = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eoc
  %i.eoe = load i16, ptr %i.eod, align 2, !tbaa !122 ; 2 uses
  %i.eof = trunc i64 %i.elz to i16                ; 2 uses
  %i.eog = shl i16 %i.eoe, 8
  %i.eoh = xor i16 %i.eny, %i.eof
  %i.eoi = xor i16 %i.eoh, %i.eoe
  %i.eoj = lshr i16 %i.eoi, 8
  %i.eok = zext nneg i16 %i.eoj to i64
  %i.eol = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eok
  %i.eom = load i16, ptr %i.eol, align 2, !tbaa !122 ; 2 uses
  %i.eon = xor i16 %i.eog, %i.eom
  %i.eoo = shl i16 %i.eom, 8
  %i.eop = lshr i16 %i.eon, 8
  %i.eoq = and i16 %i.eof, 255
  %i.eor = xor i16 %i.eop, %i.eoq
  %i.eos = zext nneg i16 %i.eor to i64
  %i.eot = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eos
  %i.eou = load i16, ptr %i.eot, align 2, !tbaa !122
  %i.eov = xor i16 %i.eoo, %i.eou
  store i16 %i.eov, ptr %i.qx, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit97.i221

._crit_edge1239:                                  ; preds = %bb.ox
  %.pre1252 = trunc i64 %i.elz to i16
  br label %bb.pf

bb.oz:                                            ; preds = %bb.ox
  %i.eow = lshr i64 %i.elz, 48
  %i.eox = trunc nuw i64 %i.eow to i16
  %i.eoy = shl i16 %i.ely, 8
  %i.eoz = lshr i16 %i.ely, 8
  %i.epa = and i16 %i.eox, 255
  %i.epb = xor i16 %i.epa, %i.eoz
  %i.epc = zext nneg i16 %i.epb to i64
  %i.epd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.epc
  %i.epe = load i16, ptr %i.epd, align 2, !tbaa !122
  %i.epf = xor i16 %i.epe, %i.eoy
  br label %bb.pa

bb.pa:                                            ; preds = %bb.ox, %bb.oz
  %.1.i.i226 = phi i16 [ %i.epf, %bb.oz ], [ %i.ely, %bb.ox ] ; 2 uses
  %i.epg = lshr i64 %i.elz, 40
  %i.eph = trunc i64 %i.epg to i16
  %i.epi = shl i16 %.1.i.i226, 8
  %i.epj = lshr i16 %.1.i.i226, 8
  %i.epk = and i16 %i.eph, 255
  %i.epl = xor i16 %i.epj, %i.epk
  %i.epm = zext nneg i16 %i.epl to i64
  %i.epn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.epm
  %i.epo = load i16, ptr %i.epn, align 2, !tbaa !122
  %i.epp = xor i16 %i.epi, %i.epo
  br label %bb.pb

bb.pb:                                            ; preds = %bb.ox, %bb.pa
  %.2.i.i225 = phi i16 [ %i.epp, %bb.pa ], [ %i.ely, %bb.ox ] ; 2 uses
  %i.epq = lshr i64 %i.elz, 32
  %i.epr = trunc i64 %i.epq to i16
  %i.eps = shl i16 %.2.i.i225, 8
  %i.ept = lshr i16 %.2.i.i225, 8
  %i.epu = and i16 %i.epr, 255
  %i.epv = xor i16 %i.ept, %i.epu
  %i.epw = zext nneg i16 %i.epv to i64
  %i.epx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.epw
  %i.epy = load i16, ptr %i.epx, align 2, !tbaa !122
  %i.epz = xor i16 %i.eps, %i.epy
  br label %bb.pc

bb.pc:                                            ; preds = %bb.ox, %bb.pb
end_hunk_9
begin_hunk_10_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.esz = lshr i64 %i.esg, 40
  %i.eta = trunc i64 %i.esz to i16
  %i.etb = shl i16 %i.esx, 8
  %i.etc = lshr i16 %i.esy, 8
  %i.etd = and i16 %i.eta, 255
  %i.ete = xor i16 %i.etc, %i.etd
  %i.etf = zext nneg i16 %i.ete to i64
  %i.etg = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.etf
  %i.eth = load i16, ptr %i.etg, align 2, !tbaa !122 ; 2 uses
  %i.eti = xor i16 %i.etb, %i.eth
  %i.etj = lshr i64 %i.esg, 32
  %i.etk = trunc i64 %i.etj to i16
  %i.etl = shl i16 %i.eth, 8
  %i.etm = lshr i16 %i.eti, 8
  %i.etn = and i16 %i.etk, 255
  %i.eto = xor i16 %i.etm, %i.etn
  %i.etp = zext nneg i16 %i.eto to i64
  %i.etq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.etp
  %i.etr = load i16, ptr %i.etq, align 2, !tbaa !122 ; 2 uses
  %i.ets = xor i16 %i.etl, %i.etr
  %i.ett = lshr i64 %i.esg, 24
  %i.etu = trunc i64 %i.ett to i16
  %i.etv = shl i16 %i.etr, 8
  %i.etw = lshr i16 %i.ets, 8
  %i.etx = and i16 %i.etu, 255
  %i.ety = xor i16 %i.etw, %i.etx
  %i.etz = zext nneg i16 %i.ety to i64
  %i.eua = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.etz
  %i.eub = load i16, ptr %i.eua, align 2, !tbaa !122 ; 2 uses
  %i.euc = xor i16 %i.etv, %i.eub
  %i.eud = lshr i64 %i.esg, 16
  %i.eue = trunc i64 %i.eud to i16
  %i.euf = shl i16 %i.eub, 8
  %i.eug = lshr i16 %i.euc, 8
  %i.euh = and i16 %i.eue, 255
  %i.eui = xor i16 %i.eug, %i.euh
  %i.euj = zext nneg i16 %i.eui to i64
  %i.euk = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.euj
  %i.eul = load i16, ptr %i.euk, align 2, !tbaa !122 ; 2 uses
  %i.eum = trunc i64 %i.esg to i16                ; 2 uses
  %i.eun = shl i16 %i.eul, 8
  %i.euo = xor i16 %i.euf, %i.eum
  %i.eup = xor i16 %i.euo, %i.eul
  %i.euq = lshr i16 %i.eup, 8
  %i.eur = zext nneg i16 %i.euq to i64
  %i.eus = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.eur
  %i.eut = load i16, ptr %i.eus, align 2, !tbaa !122 ; 2 uses
  %i.euu = xor i16 %i.eun, %i.eut
  %i.euv = shl i16 %i.eut, 8
  %i.euw = lshr i16 %i.euu, 8
  %i.eux = and i16 %i.eum, 255
  %i.euy = xor i16 %i.euw, %i.eux
  %i.euz = zext nneg i16 %i.euy to i64
  %i.eva = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.euz
  %i.evb = load i16, ptr %i.eva, align 2, !tbaa !122
  %i.evc = xor i16 %i.euv, %i.evb
  store i16 %i.evc, ptr %i.qx, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i242

._crit_edge1238:                                  ; preds = %bb.pl
  %.pre1254 = trunc i64 %i.esg to i16
  br label %bb.pt

bb.pn:                                            ; preds = %bb.pl
  %i.evd = lshr i64 %i.esg, 48
  %i.eve = trunc nuw i64 %i.evd to i16
  %i.evf = shl i16 %i.esf, 8
  %i.evg = lshr i16 %i.esf, 8
  %i.evh = and i16 %i.eve, 255
  %i.evi = xor i16 %i.evh, %i.evg
  %i.evj = zext nneg i16 %i.evi to i64
  %i.evk = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.evj
  %i.evl = load i16, ptr %i.evk, align 2, !tbaa !122
  %i.evm = xor i16 %i.evl, %i.evf
  br label %bb.po

bb.po:                                            ; preds = %bb.pl, %bb.pn
  %.1.i105.i247 = phi i16 [ %i.evm, %bb.pn ], [ %i.esf, %bb.pl ] ; 2 uses
  %i.evn = lshr i64 %i.esg, 40
  %i.evo = trunc i64 %i.evn to i16
  %i.evp = shl i16 %.1.i105.i247, 8
  %i.evq = lshr i16 %.1.i105.i247, 8
  %i.evr = and i16 %i.evo, 255
  %i.evs = xor i16 %i.evq, %i.evr
  %i.evt = zext nneg i16 %i.evs to i64
  %i.evu = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.evt
  %i.evv = load i16, ptr %i.evu, align 2, !tbaa !122
  %i.evw = xor i16 %i.evp, %i.evv
  br label %bb.pp

bb.pp:                                            ; preds = %bb.pl, %bb.po
  %.2.i104.i246 = phi i16 [ %i.evw, %bb.po ], [ %i.esf, %bb.pl ] ; 2 uses
  %i.evx = lshr i64 %i.esg, 32
  %i.evy = trunc i64 %i.evx to i16
  %i.evz = shl i16 %.2.i104.i246, 8
  %i.ewa = lshr i16 %.2.i104.i246, 8
  %i.ewb = and i16 %i.evy, 255
  %i.ewc = xor i16 %i.ewa, %i.ewb
  %i.ewd = zext nneg i16 %i.ewc to i64
  %i.ewe = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ewd
  %i.ewf = load i16, ptr %i.ewe, align 2, !tbaa !122
  %i.ewg = xor i16 %i.evz, %i.ewf
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pl, %bb.pp
  %.3.i103.i245 = phi i16 [ %i.ewg, %bb.pp ], [ %i.esf, %bb.pl ] ; 2 uses
  %i.ewh = lshr i64 %i.esg, 24
  %i.ewi = trunc i64 %i.ewh to i16
  %i.ewj = shl i16 %.3.i103.i245, 8
  %i.ewk = lshr i16 %.3.i103.i245, 8
  %i.ewl = and i16 %i.ewi, 255
  %i.ewm = xor i16 %i.ewk, %i.ewl
  %i.ewn = zext nneg i16 %i.ewm to i64
  %i.ewo = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ewn
  %i.ewp = load i16, ptr %i.ewo, align 2, !tbaa !122
  %i.ewq = xor i16 %i.ewj, %i.ewp
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pl, %bb.pq
  %.4.i102.i244 = phi i16 [ %i.ewq, %bb.pq ], [ %i.esf, %bb.pl ] ; 2 uses
  %i.ewr = lshr i64 %i.esg, 16
  %i.ews = trunc i64 %i.ewr to i16
  %i.ewt = shl i16 %.4.i102.i244, 8
  %i.ewu = lshr i16 %.4.i102.i244, 8
  %i.ewv = and i16 %i.ews, 255
  %i.eww = xor i16 %i.ewu, %i.ewv
  %i.ewx = zext nneg i16 %i.eww to i64
  %i.ewy = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ewx
  %i.ewz = load i16, ptr %i.ewy, align 2, !tbaa !122
  %i.exa = xor i16 %i.ewt, %i.ewz
  br label %bb.ps

bb.ps:                                            ; preds = %bb.pl, %bb.pr
  %.5.i101.i243 = phi i16 [ %i.exa, %bb.pr ], [ %i.esf, %bb.pl ] ; 2 uses
  %i.exb = trunc i64 %i.esg to i16                ; 2 uses
  %i.exc = shl i16 %.5.i101.i243, 8
  %i.exd = xor i16 %.5.i101.i243, %i.exb
  %i.exe = lshr i16 %i.exd, 8
  %i.exf = zext nneg i16 %i.exe to i64
  %i.exg = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.exf
  %i.exh = load i16, ptr %i.exg, align 2, !tbaa !122
  %i.exi = xor i16 %i.exc, %i.exh
  br label %bb.pt

bb.pt:                                            ; preds = %._crit_edge1238, %bb.ps
  %.pre-phi1255 = phi i16 [ %.pre1254, %._crit_edge1238 ], [ %i.exb, %bb.ps ]
  %.6.i99.i239 = phi i16 [ %i.esf, %._crit_edge1238 ], [ %i.exi, %bb.ps ] ; 2 uses
  %i.exj = shl i16 %.6.i99.i239, 8
  %i.exk = lshr i16 %.6.i99.i239, 8
  %i.exl = and i16 %.pre-phi1255, 255
  %i.exm = xor i16 %i.exk, %i.exl
  %i.exn = zext nneg i16 %i.exm to i64
  %i.exo = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.exn
  %i.exp = load i16, ptr %i.exo, align 2, !tbaa !122
  %i.exq = xor i16 %i.exj, %i.exp
  br label %ma_dr_flac_crc16_bytes.exit107.i240

ma_dr_flac_crc16_bytes.exit107.i240:              ; preds = %bb.pl, %bb.pt
  %.7.i100.i241 = phi i16 [ %i.esf, %bb.pl ], [ %i.exq, %bb.pt ]
  store i16 %.7.i100.i241, ptr %i.qx, align 8, !tbaa !1198
  store i32 0, ptr %i.qw, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i242

ma_dr_flac__update_crc16.exit.i242:               ; preds = %ma_dr_flac_crc16_bytes.exit107.i240, %bb.pm
  %i.exr = add nuw nsw i32 %i.esc, 1
  store i32 %i.exr, ptr %i.qv, align 8, !tbaa !738
  %i.exs = zext nneg i32 %i.esc to i64
  %i.ext = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.exs
  %i.exu = load i64, ptr %i.ext, align 8, !tbaa !164
  %i.exv = tail call i64 @llvm.bswap.i64(i64 %i.exu) ; 2 uses
  store i64 %i.exv, ptr %i.qy, align 8, !tbaa !741
  br label %bb.pw

bb.pu:                                            ; preds = %bb.pk
  %i.exw = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i202 = icmp eq i32 %i.exw, 0
  br i1 %.not.i202, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.exx = load i64, ptr %i.qt, align 8, !tbaa !740
  %i.exy = load i32, ptr %i.qu, align 4, !tbaa !739
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %ma_dr_flac__update_crc16.exit.i242
  %.479.i203 = phi i64 [ %i.exv, %ma_dr_flac__update_crc16.exit.i242 ], [ %i.exx, %bb.pv ] ; 7 uses
  %.4.i204 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i242 ], [ %i.exy, %bb.pv ]
  %i.exz = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i205 = icmp eq i32 %i.exz, 0
  br i1 %.not.i.i205, label %bb.py, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.eya = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i203) #55, !srcloc !1207
  %i.eyb = trunc i64 %i.eya to i32
  br label %ma_dr_flac__clz.exit.i206

bb.py:                                            ; preds = %bb.pw
  %i.eyc = icmp eq i64 %.479.i203, 0
  br i1 %i.eyc, label %ma_dr_flac__clz.exit.i206, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.eyd = lshr i64 %.479.i203, 60                ; 2 uses
  %i.eye = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.eyd
  %i.eyf = load i32, ptr %i.eye, align 4, !tbaa !118
  %i.eyg = icmp eq i64 %i.eyd, 0
  br i1 %i.eyg, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %bb.pz
  %i.eyh = icmp ult i64 %.479.i203, 4294967296    ; 2 uses
  %i.eyi = shl nuw i64 %.479.i203, 32
  %spec.select.i114.i231 = select i1 %i.eyh, i64 %i.eyi, i64 %.479.i203 ; 3 uses
  %spec.select26.i115.i232 = select i1 %i.eyh, i32 32, i32 0 ; 2 uses
  %i.eyj = icmp ult i64 %spec.select.i114.i231, 281474976710656 ; 2 uses
  %i.eyk = or disjoint i32 %spec.select26.i115.i232, 16
  %i.eyl = shl nuw i64 %spec.select.i114.i231, 16
  %.119.i116.i233 = select i1 %i.eyj, i64 %i.eyl, i64 %spec.select.i114.i231 ; 3 uses
  %.1.i117.i234 = select i1 %i.eyj, i32 %i.eyk, i32 %spec.select26.i115.i232 ; 2 uses
  %i.eym = icmp ult i64 %.119.i116.i233, 72057594037927936 ; 2 uses
  %i.eyn = or disjoint i32 %.1.i117.i234, 8
  %i.eyo = shl nuw i64 %.119.i116.i233, 8
  %.220.i118.i235 = select i1 %i.eym, i64 %i.eyo, i64 %.119.i116.i233 ; 3 uses
  %.2.i119.i236 = select i1 %i.eym, i32 %i.eyn, i32 %.1.i117.i234 ; 2 uses
  %i.eyp = icmp ult i64 %.220.i118.i235, 1152921504606846976 ; 2 uses
  %i.eyq = or disjoint i32 %.2.i119.i236, 4
  %i.eyr = shl nuw i64 %.220.i118.i235, 4
  %.321.i120.i237 = select i1 %i.eyp, i64 %i.eyr, i64 %.220.i118.i235
  %.3.i121.i238 = select i1 %i.eyp, i32 %i.eyq, i32 %.2.i119.i236
  %i.eys = lshr i64 %.321.i120.i237, 60
  %i.eyt = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.eys
  %i.eyu = load i32, ptr %i.eyt, align 4, !tbaa !118
  %i.eyv = add i32 %i.eyu, %.3.i121.i238
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pz
  %.4.i112.i228 = phi i32 [ %i.eyv, %bb.qa ], [ %i.eyf, %bb.pz ]
  %i.eyw = add i32 %.4.i112.i228, -1
  br label %ma_dr_flac__clz.exit.i206

ma_dr_flac__clz.exit.i206:                        ; preds = %bb.py, %bb.qb, %bb.px
  %.0.i.i207 = phi i32 [ %i.eyb, %bb.px ], [ %i.eyw, %bb.qb ], [ 64, %bb.py ] ; 3 uses
  %i.eyx = add i32 %.0.i.i207, %.0.i201           ; 2 uses
  %i.eyy = icmp ult i32 %.0.i.i207, 64
  br i1 %i.eyy, label %.loopexit1124, label %bb.pk

bb.qc:                                            ; preds = %bb.pj, %bb.ov
  %.21028.in = phi i64 [ %i.erz, %bb.pj ], [ %i.elr, %bb.ov ]
  %.681.i212 = phi i64 [ %i.esa, %bb.pj ], [ %i.els, %bb.ov ] ; 8 uses
  %.6.i213 = phi i32 [ %.173.i217, %bb.pj ], [ %i.elt, %bb.ov ] ; 3 uses
  %.21028 = trunc i64 %.21028.in to i32
  store i64 %.681.i212, ptr %i.qt, align 8, !tbaa !740
  store i32 %.6.i213, ptr %i.qu, align 4, !tbaa !739
  %i.eyz = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i129 = icmp eq i32 %i.eyz, 0
  br i1 %.not.i94.i129, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.eza = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.681.i212) #55, !srcloc !1207
  %i.ezb = trunc i64 %i.eza to i32
  br label %ma_dr_flac__clz.exit96.i130

bb.qe:                                            ; preds = %bb.qc
  %i.ezc = icmp eq i64 %.681.i212, 0
  br i1 %i.ezc, label %ma_dr_flac__clz.exit96.i130.thread, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.ezd = lshr i64 %.681.i212, 60                ; 2 uses
  %i.eze = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.ezd
  %i.ezf = load i32, ptr %i.eze, align 4, !tbaa !118
  %i.ezg = icmp eq i64 %i.ezd, 0
  br i1 %i.ezg, label %bb.qg, label %bb.qh

bb.qg:                                            ; preds = %bb.qf
  %i.ezh = icmp ult i64 %.681.i212, 4294967296    ; 2 uses
  %i.ezi = shl nuw i64 %.681.i212, 32
  %spec.select.i.i186 = select i1 %i.ezh, i64 %i.ezi, i64 %.681.i212 ; 3 uses
  %spec.select26.i.i187 = select i1 %i.ezh, i32 32, i32 0 ; 2 uses
  %i.ezj = icmp ult i64 %spec.select.i.i186, 281474976710656 ; 2 uses
  %i.ezk = or disjoint i32 %spec.select26.i.i187, 16
  %i.ezl = shl nuw i64 %spec.select.i.i186, 16
  %.119.i.i188 = select i1 %i.ezj, i64 %i.ezl, i64 %spec.select.i.i186 ; 3 uses
  %.1.i109.i189 = select i1 %i.ezj, i32 %i.ezk, i32 %spec.select26.i.i187 ; 2 uses
  %i.ezm = icmp ult i64 %.119.i.i188, 72057594037927936 ; 2 uses
  %i.ezn = or disjoint i32 %.1.i109.i189, 8
  %i.ezo = shl nuw i64 %.119.i.i188, 8
  %.220.i.i190 = select i1 %i.ezm, i64 %i.ezo, i64 %.119.i.i188 ; 3 uses
  %.2.i110.i191 = select i1 %i.ezm, i32 %i.ezn, i32 %.1.i109.i189 ; 2 uses
  %i.ezp = icmp ult i64 %.220.i.i190, 1152921504606846976 ; 2 uses
  %i.ezq = or disjoint i32 %.2.i110.i191, 4
  %i.ezr = shl nuw i64 %.220.i.i190, 4
  %.321.i.i192 = select i1 %i.ezp, i64 %i.ezr, i64 %.220.i.i190
  %.3.i111.i193 = select i1 %i.ezp, i32 %i.ezq, i32 %.2.i110.i191
  %i.ezs = lshr i64 %.321.i.i192, 60
  %i.ezt = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.ezs
  %i.ezu = load i32, ptr %i.ezt, align 4, !tbaa !118
  %i.ezv = add i32 %i.ezu, %.3.i111.i193
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %bb.qf
  %.4.i108.i183 = phi i32 [ %i.ezv, %bb.qg ], [ %i.ezf, %bb.qf ]
  %i.ezw = add i32 %.4.i108.i183, -1
  br label %ma_dr_flac__clz.exit96.i130

ma_dr_flac__clz.exit96.i130:                      ; preds = %bb.qh, %bb.qd
  %.0.i95.i131 = phi i32 [ %i.ezb, %bb.qd ], [ %i.ezw, %bb.qh ] ; 3 uses
  %i.ezx = icmp ult i32 %.0.i95.i131, 64
  br i1 %i.ezx, label %.loopexit1122, label %ma_dr_flac__clz.exit96.i130.thread

.loopexit1122:                                    ; preds = %ma_dr_flac__clz.exit.i140, %ma_dr_flac__clz.exit96.i130
  %.21046 = phi i32 [ %.0.i95.i131, %ma_dr_flac__clz.exit96.i130 ], [ %i.fnh, %ma_dr_flac__clz.exit.i140 ]
  %.075.i142 = phi i64 [ %.681.i212, %ma_dr_flac__clz.exit96.i130 ], [ %.479.i137, %ma_dr_flac__clz.exit.i140 ]
  %.072.i143 = phi i32 [ %.6.i213, %ma_dr_flac__clz.exit96.i130 ], [ %.4.i138, %ma_dr_flac__clz.exit.i140 ]
  %.070.i144 = phi i32 [ %.0.i95.i131, %ma_dr_flac__clz.exit96.i130 ], [ %.0.i.i141, %ma_dr_flac__clz.exit.i140 ] ; 2 uses
  %i.ezy = zext nneg i32 %.070.i144 to i64
  %i.ezz = shl i64 %.075.i142, %i.ezy             ; 2 uses
  %i.faa = add i32 %.070.i144, %.072.i143         ; 3 uses
  %.not90.i145 = icmp ugt i32 %i.faa, %i.qs
  %i.fab = lshr i64 %i.ezz, %i.ra                 ; 2 uses
  br i1 %.not90.i145, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %.loopexit1122
  %i.fac = shl i64 %i.ezz, %i.qr
  %i.fad = add i32 %i.faa, %i.qq
  br label %bb.rp

bb.qj:                                            ; preds = %.loopexit1122
  %i.fae = sub nuw i32 %i.faa, %i.qs              ; 4 uses
  %i.faf = load i32, ptr %i.qv, align 8, !tbaa !738 ; 3 uses
  %i.fag = icmp ult i32 %i.faf, 512
  br i1 %i.fag, label %bb.qk, label %bb.qt

bb.qk:                                            ; preds = %bb.qj
  %i.fah = load i32, ptr %i.qw, align 8, !tbaa !742
  %i.fai = load i16, ptr %i.qx, align 8, !tbaa !1198 ; 11 uses
  %i.faj = load i64, ptr %i.qy, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.fah, label %ma_dr_flac_crc16_bytes.exit.i153 [
    i32 0, label %bb.ql
    i32 7, label %._crit_edge1241
    i32 1, label %bb.qm
    i32 2, label %bb.qn
    i32 3, label %bb.qo
    i32 4, label %bb.qp
    i32 5, label %bb.qq
    i32 6, label %bb.qr
  ]

bb.ql:                                            ; preds = %bb.qk
  %i.fak = lshr i64 %i.faj, 56
  %i.fal = shl i16 %i.fai, 8
  %i.fam = lshr i16 %i.fai, 8
  %i.fan = zext nneg i16 %i.fam to i64
  %i.fao = xor i64 %i.fak, %i.fan
  %i.fap = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fao
  %i.faq = load i16, ptr %i.fap, align 2, !tbaa !122 ; 2 uses
  %i.far = xor i16 %i.faq, %i.fal
  %i.fas = lshr i64 %i.faj, 48
  %i.fat = trunc nuw i64 %i.fas to i16
  %i.fau = shl i16 %i.faq, 8
  %i.fav = lshr i16 %i.far, 8
  %i.faw = and i16 %i.fat, 255
  %i.fax = xor i16 %i.fav, %i.faw
  %i.fay = zext nneg i16 %i.fax to i64
  %i.faz = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fay
  %i.fba = load i16, ptr %i.faz, align 2, !tbaa !122 ; 2 uses
  %i.fbb = xor i16 %i.fau, %i.fba
  %i.fbc = lshr i64 %i.faj, 40
  %i.fbd = trunc i64 %i.fbc to i16
  %i.fbe = shl i16 %i.fba, 8
  %i.fbf = lshr i16 %i.fbb, 8
  %i.fbg = and i16 %i.fbd, 255
  %i.fbh = xor i16 %i.fbf, %i.fbg
  %i.fbi = zext nneg i16 %i.fbh to i64
  %i.fbj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fbi
  %i.fbk = load i16, ptr %i.fbj, align 2, !tbaa !122 ; 2 uses
  %i.fbl = xor i16 %i.fbe, %i.fbk
  %i.fbm = lshr i64 %i.faj, 32
  %i.fbn = trunc i64 %i.fbm to i16
  %i.fbo = shl i16 %i.fbk, 8
  %i.fbp = lshr i16 %i.fbl, 8
  %i.fbq = and i16 %i.fbn, 255
  %i.fbr = xor i16 %i.fbp, %i.fbq
  %i.fbs = zext nneg i16 %i.fbr to i64
  %i.fbt = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fbs
  %i.fbu = load i16, ptr %i.fbt, align 2, !tbaa !122 ; 2 uses
  %i.fbv = xor i16 %i.fbo, %i.fbu
  %i.fbw = lshr i64 %i.faj, 24
  %i.fbx = trunc i64 %i.fbw to i16
  %i.fby = shl i16 %i.fbu, 8
  %i.fbz = lshr i16 %i.fbv, 8
  %i.fca = and i16 %i.fbx, 255
  %i.fcb = xor i16 %i.fbz, %i.fca
  %i.fcc = zext nneg i16 %i.fcb to i64
  %i.fcd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fcc
  %i.fce = load i16, ptr %i.fcd, align 2, !tbaa !122 ; 2 uses
  %i.fcf = xor i16 %i.fby, %i.fce
  %i.fcg = lshr i64 %i.faj, 16
  %i.fch = trunc i64 %i.fcg to i16
  %i.fci = shl i16 %i.fce, 8
  %i.fcj = lshr i16 %i.fcf, 8
  %i.fck = and i16 %i.fch, 255
  %i.fcl = xor i16 %i.fcj, %i.fck
  %i.fcm = zext nneg i16 %i.fcl to i64
  %i.fcn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fcm
  %i.fco = load i16, ptr %i.fcn, align 2, !tbaa !122 ; 2 uses
  %i.fcp = trunc i64 %i.faj to i16                ; 2 uses
  %i.fcq = shl i16 %i.fco, 8
  %i.fcr = xor i16 %i.fci, %i.fcp
  %i.fcs = xor i16 %i.fcr, %i.fco
  %i.fct = lshr i16 %i.fcs, 8
  %i.fcu = zext nneg i16 %i.fct to i64
  %i.fcv = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fcu
  %i.fcw = load i16, ptr %i.fcv, align 2, !tbaa !122 ; 2 uses
  %i.fcx = xor i16 %i.fcq, %i.fcw
  %i.fcy = shl i16 %i.fcw, 8
  %i.fcz = lshr i16 %i.fcx, 8
  %i.fda = and i16 %i.fcp, 255
  %i.fdb = xor i16 %i.fcz, %i.fda
  %i.fdc = zext nneg i16 %i.fdb to i64
  %i.fdd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fdc
  %i.fde = load i16, ptr %i.fdd, align 2, !tbaa !122
  %i.fdf = xor i16 %i.fcy, %i.fde
  store i16 %i.fdf, ptr %i.qx, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit97.i155

._crit_edge1241:                                  ; preds = %bb.qk
  %.pre1248 = trunc i64 %i.faj to i16
  br label %bb.qs

bb.qm:                                            ; preds = %bb.qk
  %i.fdg = lshr i64 %i.faj, 48
  %i.fdh = trunc nuw i64 %i.fdg to i16
  %i.fdi = shl i16 %i.fai, 8
  %i.fdj = lshr i16 %i.fai, 8
  %i.fdk = and i16 %i.fdh, 255
  %i.fdl = xor i16 %i.fdk, %i.fdj
  %i.fdm = zext nneg i16 %i.fdl to i64
  %i.fdn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fdm
  %i.fdo = load i16, ptr %i.fdn, align 2, !tbaa !122
  %i.fdp = xor i16 %i.fdo, %i.fdi
  br label %bb.qn

bb.qn:                                            ; preds = %bb.qk, %bb.qm
  %.1.i.i160 = phi i16 [ %i.fdp, %bb.qm ], [ %i.fai, %bb.qk ] ; 2 uses
  %i.fdq = lshr i64 %i.faj, 40
  %i.fdr = trunc i64 %i.fdq to i16
  %i.fds = shl i16 %.1.i.i160, 8
  %i.fdt = lshr i16 %.1.i.i160, 8
  %i.fdu = and i16 %i.fdr, 255
  %i.fdv = xor i16 %i.fdt, %i.fdu
  %i.fdw = zext nneg i16 %i.fdv to i64
  %i.fdx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fdw
  %i.fdy = load i16, ptr %i.fdx, align 2, !tbaa !122
  %i.fdz = xor i16 %i.fds, %i.fdy
  br label %bb.qo

bb.qo:                                            ; preds = %bb.qk, %bb.qn
  %.2.i.i159 = phi i16 [ %i.fdz, %bb.qn ], [ %i.fai, %bb.qk ] ; 2 uses
  %i.fea = lshr i64 %i.faj, 32
  %i.feb = trunc i64 %i.fea to i16
  %i.fec = shl i16 %.2.i.i159, 8
  %i.fed = lshr i16 %.2.i.i159, 8
  %i.fee = and i16 %i.feb, 255
  %i.fef = xor i16 %i.fed, %i.fee
  %i.feg = zext nneg i16 %i.fef to i64
  %i.feh = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.feg
  %i.fei = load i16, ptr %i.feh, align 2, !tbaa !122
  %i.fej = xor i16 %i.fec, %i.fei
  br label %bb.qp

bb.qp:                                            ; preds = %bb.qk, %bb.qo
end_hunk_10
begin_hunk_11_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.fhj = lshr i64 %i.fgq, 40
  %i.fhk = trunc i64 %i.fhj to i16
  %i.fhl = shl i16 %i.fhh, 8
  %i.fhm = lshr i16 %i.fhi, 8
  %i.fhn = and i16 %i.fhk, 255
  %i.fho = xor i16 %i.fhm, %i.fhn
  %i.fhp = zext nneg i16 %i.fho to i64
  %i.fhq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fhp
  %i.fhr = load i16, ptr %i.fhq, align 2, !tbaa !122 ; 2 uses
  %i.fhs = xor i16 %i.fhl, %i.fhr
  %i.fht = lshr i64 %i.fgq, 32
  %i.fhu = trunc i64 %i.fht to i16
  %i.fhv = shl i16 %i.fhr, 8
  %i.fhw = lshr i16 %i.fhs, 8
  %i.fhx = and i16 %i.fhu, 255
  %i.fhy = xor i16 %i.fhw, %i.fhx
  %i.fhz = zext nneg i16 %i.fhy to i64
  %i.fia = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fhz
  %i.fib = load i16, ptr %i.fia, align 2, !tbaa !122 ; 2 uses
  %i.fic = xor i16 %i.fhv, %i.fib
  %i.fid = lshr i64 %i.fgq, 24
  %i.fie = trunc i64 %i.fid to i16
  %i.fif = shl i16 %i.fib, 8
  %i.fig = lshr i16 %i.fic, 8
  %i.fih = and i16 %i.fie, 255
  %i.fii = xor i16 %i.fig, %i.fih
  %i.fij = zext nneg i16 %i.fii to i64
  %i.fik = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fij
  %i.fil = load i16, ptr %i.fik, align 2, !tbaa !122 ; 2 uses
  %i.fim = xor i16 %i.fif, %i.fil
  %i.fin = lshr i64 %i.fgq, 16
  %i.fio = trunc i64 %i.fin to i16
  %i.fip = shl i16 %i.fil, 8
  %i.fiq = lshr i16 %i.fim, 8
  %i.fir = and i16 %i.fio, 255
  %i.fis = xor i16 %i.fiq, %i.fir
  %i.fit = zext nneg i16 %i.fis to i64
  %i.fiu = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fit
  %i.fiv = load i16, ptr %i.fiu, align 2, !tbaa !122 ; 2 uses
  %i.fiw = trunc i64 %i.fgq to i16                ; 2 uses
  %i.fix = shl i16 %i.fiv, 8
  %i.fiy = xor i16 %i.fip, %i.fiw
  %i.fiz = xor i16 %i.fiy, %i.fiv
  %i.fja = lshr i16 %i.fiz, 8
  %i.fjb = zext nneg i16 %i.fja to i64
  %i.fjc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fjb
  %i.fjd = load i16, ptr %i.fjc, align 2, !tbaa !122 ; 2 uses
  %i.fje = xor i16 %i.fix, %i.fjd
  %i.fjf = shl i16 %i.fjd, 8
  %i.fjg = lshr i16 %i.fje, 8
  %i.fjh = and i16 %i.fiw, 255
  %i.fji = xor i16 %i.fjg, %i.fjh
  %i.fjj = zext nneg i16 %i.fji to i64
  %i.fjk = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fjj
  %i.fjl = load i16, ptr %i.fjk, align 2, !tbaa !122
  %i.fjm = xor i16 %i.fjf, %i.fjl
  store i16 %i.fjm, ptr %i.qx, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i176

._crit_edge1240:                                  ; preds = %bb.qy
  %.pre1250 = trunc i64 %i.fgq to i16
  br label %bb.rg

bb.ra:                                            ; preds = %bb.qy
  %i.fjn = lshr i64 %i.fgq, 48
  %i.fjo = trunc nuw i64 %i.fjn to i16
  %i.fjp = shl i16 %i.fgp, 8
  %i.fjq = lshr i16 %i.fgp, 8
  %i.fjr = and i16 %i.fjo, 255
  %i.fjs = xor i16 %i.fjr, %i.fjq
  %i.fjt = zext nneg i16 %i.fjs to i64
  %i.fju = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fjt
  %i.fjv = load i16, ptr %i.fju, align 2, !tbaa !122
  %i.fjw = xor i16 %i.fjv, %i.fjp
  br label %bb.rb

bb.rb:                                            ; preds = %bb.qy, %bb.ra
  %.1.i105.i181 = phi i16 [ %i.fjw, %bb.ra ], [ %i.fgp, %bb.qy ] ; 2 uses
  %i.fjx = lshr i64 %i.fgq, 40
  %i.fjy = trunc i64 %i.fjx to i16
  %i.fjz = shl i16 %.1.i105.i181, 8
  %i.fka = lshr i16 %.1.i105.i181, 8
  %i.fkb = and i16 %i.fjy, 255
  %i.fkc = xor i16 %i.fka, %i.fkb
  %i.fkd = zext nneg i16 %i.fkc to i64
  %i.fke = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fkd
  %i.fkf = load i16, ptr %i.fke, align 2, !tbaa !122
  %i.fkg = xor i16 %i.fjz, %i.fkf
  br label %bb.rc

bb.rc:                                            ; preds = %bb.qy, %bb.rb
  %.2.i104.i180 = phi i16 [ %i.fkg, %bb.rb ], [ %i.fgp, %bb.qy ] ; 2 uses
  %i.fkh = lshr i64 %i.fgq, 32
  %i.fki = trunc i64 %i.fkh to i16
  %i.fkj = shl i16 %.2.i104.i180, 8
  %i.fkk = lshr i16 %.2.i104.i180, 8
  %i.fkl = and i16 %i.fki, 255
  %i.fkm = xor i16 %i.fkk, %i.fkl
  %i.fkn = zext nneg i16 %i.fkm to i64
  %i.fko = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fkn
  %i.fkp = load i16, ptr %i.fko, align 2, !tbaa !122
  %i.fkq = xor i16 %i.fkj, %i.fkp
  br label %bb.rd

bb.rd:                                            ; preds = %bb.qy, %bb.rc
  %.3.i103.i179 = phi i16 [ %i.fkq, %bb.rc ], [ %i.fgp, %bb.qy ] ; 2 uses
  %i.fkr = lshr i64 %i.fgq, 24
  %i.fks = trunc i64 %i.fkr to i16
  %i.fkt = shl i16 %.3.i103.i179, 8
  %i.fku = lshr i16 %.3.i103.i179, 8
  %i.fkv = and i16 %i.fks, 255
  %i.fkw = xor i16 %i.fku, %i.fkv
  %i.fkx = zext nneg i16 %i.fkw to i64
  %i.fky = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fkx
  %i.fkz = load i16, ptr %i.fky, align 2, !tbaa !122
  %i.fla = xor i16 %i.fkt, %i.fkz
  br label %bb.re

bb.re:                                            ; preds = %bb.qy, %bb.rd
  %.4.i102.i178 = phi i16 [ %i.fla, %bb.rd ], [ %i.fgp, %bb.qy ] ; 2 uses
  %i.flb = lshr i64 %i.fgq, 16
  %i.flc = trunc i64 %i.flb to i16
  %i.fld = shl i16 %.4.i102.i178, 8
  %i.fle = lshr i16 %.4.i102.i178, 8
  %i.flf = and i16 %i.flc, 255
  %i.flg = xor i16 %i.fle, %i.flf
  %i.flh = zext nneg i16 %i.flg to i64
  %i.fli = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.flh
  %i.flj = load i16, ptr %i.fli, align 2, !tbaa !122
  %i.flk = xor i16 %i.fld, %i.flj
  br label %bb.rf

bb.rf:                                            ; preds = %bb.qy, %bb.re
  %.5.i101.i177 = phi i16 [ %i.flk, %bb.re ], [ %i.fgp, %bb.qy ] ; 2 uses
  %i.fll = trunc i64 %i.fgq to i16                ; 2 uses
  %i.flm = shl i16 %.5.i101.i177, 8
  %i.fln = xor i16 %.5.i101.i177, %i.fll
  %i.flo = lshr i16 %i.fln, 8
  %i.flp = zext nneg i16 %i.flo to i64
  %i.flq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.flp
  %i.flr = load i16, ptr %i.flq, align 2, !tbaa !122
  %i.fls = xor i16 %i.flm, %i.flr
  br label %bb.rg

bb.rg:                                            ; preds = %._crit_edge1240, %bb.rf
  %.pre-phi1251 = phi i16 [ %.pre1250, %._crit_edge1240 ], [ %i.fll, %bb.rf ]
  %.6.i99.i173 = phi i16 [ %i.fgp, %._crit_edge1240 ], [ %i.fls, %bb.rf ] ; 2 uses
  %i.flt = shl i16 %.6.i99.i173, 8
  %i.flu = lshr i16 %.6.i99.i173, 8
  %i.flv = and i16 %.pre-phi1251, 255
  %i.flw = xor i16 %i.flu, %i.flv
  %i.flx = zext nneg i16 %i.flw to i64
  %i.fly = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.flx
  %i.flz = load i16, ptr %i.fly, align 2, !tbaa !122
  %i.fma = xor i16 %i.flt, %i.flz
  br label %ma_dr_flac_crc16_bytes.exit107.i174

ma_dr_flac_crc16_bytes.exit107.i174:              ; preds = %bb.qy, %bb.rg
  %.7.i100.i175 = phi i16 [ %i.fgp, %bb.qy ], [ %i.fma, %bb.rg ]
  store i16 %.7.i100.i175, ptr %i.qx, align 8, !tbaa !1198
  store i32 0, ptr %i.qw, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i176

ma_dr_flac__update_crc16.exit.i176:               ; preds = %ma_dr_flac_crc16_bytes.exit107.i174, %bb.qz
  %i.fmb = add nuw nsw i32 %i.fgm, 1
  store i32 %i.fmb, ptr %i.qv, align 8, !tbaa !738
  %i.fmc = zext nneg i32 %i.fgm to i64
  %i.fmd = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.fmc
  %i.fme = load i64, ptr %i.fmd, align 8, !tbaa !164
  %i.fmf = tail call i64 @llvm.bswap.i64(i64 %i.fme) ; 2 uses
  store i64 %i.fmf, ptr %i.qy, align 8, !tbaa !741
  br label %bb.rj

bb.rh:                                            ; preds = %bb.qx
  %i.fmg = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i136 = icmp eq i32 %i.fmg, 0
  br i1 %.not.i136, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.fmh = load i64, ptr %i.qt, align 8, !tbaa !740
  %i.fmi = load i32, ptr %i.qu, align 4, !tbaa !739
  br label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %ma_dr_flac__update_crc16.exit.i176
  %.479.i137 = phi i64 [ %i.fmf, %ma_dr_flac__update_crc16.exit.i176 ], [ %i.fmh, %bb.ri ] ; 7 uses
  %.4.i138 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i176 ], [ %i.fmi, %bb.ri ]
  %i.fmj = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i139 = icmp eq i32 %i.fmj, 0
  br i1 %.not.i.i139, label %bb.rl, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.fmk = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i137) #55, !srcloc !1207
  %i.fml = trunc i64 %i.fmk to i32
  br label %ma_dr_flac__clz.exit.i140

bb.rl:                                            ; preds = %bb.rj
  %i.fmm = icmp eq i64 %.479.i137, 0
  br i1 %i.fmm, label %ma_dr_flac__clz.exit.i140, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.fmn = lshr i64 %.479.i137, 60                ; 2 uses
  %i.fmo = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.fmn
  %i.fmp = load i32, ptr %i.fmo, align 4, !tbaa !118
  %i.fmq = icmp eq i64 %i.fmn, 0
  br i1 %i.fmq, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %bb.rm
  %i.fmr = icmp ult i64 %.479.i137, 4294967296    ; 2 uses
  %i.fms = shl nuw i64 %.479.i137, 32
  %spec.select.i114.i165 = select i1 %i.fmr, i64 %i.fms, i64 %.479.i137 ; 3 uses
  %spec.select26.i115.i166 = select i1 %i.fmr, i32 32, i32 0 ; 2 uses
  %i.fmt = icmp ult i64 %spec.select.i114.i165, 281474976710656 ; 2 uses
  %i.fmu = or disjoint i32 %spec.select26.i115.i166, 16
  %i.fmv = shl nuw i64 %spec.select.i114.i165, 16
  %.119.i116.i167 = select i1 %i.fmt, i64 %i.fmv, i64 %spec.select.i114.i165 ; 3 uses
  %.1.i117.i168 = select i1 %i.fmt, i32 %i.fmu, i32 %spec.select26.i115.i166 ; 2 uses
  %i.fmw = icmp ult i64 %.119.i116.i167, 72057594037927936 ; 2 uses
  %i.fmx = or disjoint i32 %.1.i117.i168, 8
  %i.fmy = shl nuw i64 %.119.i116.i167, 8
  %.220.i118.i169 = select i1 %i.fmw, i64 %i.fmy, i64 %.119.i116.i167 ; 3 uses
  %.2.i119.i170 = select i1 %i.fmw, i32 %i.fmx, i32 %.1.i117.i168 ; 2 uses
  %i.fmz = icmp ult i64 %.220.i118.i169, 1152921504606846976 ; 2 uses
  %i.fna = or disjoint i32 %.2.i119.i170, 4
  %i.fnb = shl nuw i64 %.220.i118.i169, 4
  %.321.i120.i171 = select i1 %i.fmz, i64 %i.fnb, i64 %.220.i118.i169
  %.3.i121.i172 = select i1 %i.fmz, i32 %i.fna, i32 %.2.i119.i170
  %i.fnc = lshr i64 %.321.i120.i171, 60
  %i.fnd = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.fnc
  %i.fne = load i32, ptr %i.fnd, align 4, !tbaa !118
  %i.fnf = add i32 %i.fne, %.3.i121.i172
  br label %bb.ro

bb.ro:                                            ; preds = %bb.rn, %bb.rm
  %.4.i112.i162 = phi i32 [ %i.fnf, %bb.rn ], [ %i.fmp, %bb.rm ]
  %i.fng = add i32 %.4.i112.i162, -1
  br label %ma_dr_flac__clz.exit.i140

ma_dr_flac__clz.exit.i140:                        ; preds = %bb.rl, %bb.ro, %bb.rk
  %.0.i.i141 = phi i32 [ %i.fml, %bb.rk ], [ %i.fng, %bb.ro ], [ 64, %bb.rl ] ; 3 uses
  %i.fnh = add i32 %.0.i.i141, %.0.i135           ; 2 uses
  %i.fni = icmp ult i32 %.0.i.i141, 64
  br i1 %i.fni, label %.loopexit1122, label %bb.qx

bb.rp:                                            ; preds = %bb.qw, %bb.qi
  %.21024.in = phi i64 [ %i.fgj, %bb.qw ], [ %i.fab, %bb.qi ]
  %.681.i146 = phi i64 [ %i.fgk, %bb.qw ], [ %i.fac, %bb.qi ] ; 2 uses
  %.6.i147 = phi i32 [ %.173.i151, %bb.qw ], [ %i.fad, %bb.qi ]
  %.21024 = trunc i64 %.21024.in to i32
  store i64 %.681.i146, ptr %i.qt, align 8, !tbaa !740
  store i32 %.6.i147, ptr %i.qu, align 4, !tbaa !739
  %i.fnj = and i32 %.6, %i.os
  %i.fnk = and i32 %.21034, %i.os
  %i.fnl = and i32 %.21028, %i.os
  %i.fnm = and i32 %.21024, %i.os
  %i.fnn = shl i32 %.61068, %i.oo
  %i.fno = or i32 %i.fnj, %i.fnn                  ; 2 uses
  %i.fnp = shl i32 %.21058, %i.oo
  %i.fnq = or i32 %i.fnk, %i.fnp                  ; 2 uses
  %i.fnr = shl i32 %.21052, %i.oo
  %i.fns = or i32 %i.fnl, %i.fnr                  ; 2 uses
  %i.fnt = shl i32 %.21046, %i.oo
  %i.fnu = or i32 %i.fnm, %i.fnt                  ; 2 uses
  %i.fnv = lshr i32 %i.fno, 1
  %i.fnw = and i32 %i.fno, 1
  %i.fnx = zext nneg i32 %i.fnw to i64
  %i.fny = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.fnx
  %i.fnz = load i32, ptr %i.fny, align 4, !tbaa !118
  %i.foa = xor i32 %i.fnz, %i.fnv
  %i.fob = lshr i32 %i.fnq, 1
  %i.foc = and i32 %i.fnq, 1
  %i.fod = zext nneg i32 %i.foc to i64
  %i.foe = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.fod
  %i.fof = load i32, ptr %i.foe, align 4, !tbaa !118
  %i.fog = xor i32 %i.fof, %i.fob
  %i.foh = lshr i32 %i.fns, 1
  %i.foi = and i32 %i.fns, 1
  %i.foj = zext nneg i32 %i.foi to i64
  %i.fok = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.foj
  %i.fol = load i32, ptr %i.fok, align 4, !tbaa !118
  %i.fom = xor i32 %i.fol, %i.foh
  %i.fon = lshr i32 %i.fnu, 1
  %i.foo = and i32 %i.fnu, 1
  %i.fop = zext nneg i32 %i.foo to i64
  %i.foq = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.fop
  %i.for = load i32, ptr %i.foq, align 4, !tbaa !118
  %i.fos = xor i32 %i.for, %i.fon
  switch i8 %trunc.i932, label %ma_dr_flac__calculate_prediction_32.exit965 [
    i8 32, label %bb.rq
    i8 31, label %bb.rr
    i8 30, label %bb.rs
    i8 29, label %bb.rt
    i8 28, label %bb.ru
    i8 27, label %bb.rv
    i8 26, label %bb.rw
    i8 25, label %bb.rx
    i8 24, label %bb.ry
    i8 23, label %bb.rz
    i8 22, label %bb.sa
    i8 21, label %bb.sb
    i8 20, label %bb.sc
    i8 19, label %bb.sd
    i8 18, label %bb.se
    i8 17, label %bb.sf
    i8 16, label %bb.sg
    i8 15, label %bb.sh
    i8 14, label %bb.si
    i8 13, label %bb.sj
    i8 12, label %bb.sk
    i8 11, label %bb.sl
    i8 10, label %bb.sm
    i8 9, label %bb.sn
    i8 8, label %bb.so
    i8 7, label %bb.sp
    i8 6, label %bb.sq
    i8 5, label %bb.sr
    i8 4, label %bb.ss
    i8 3, label %bb.st
    i8 2, label %bb.su
    i8 1, label %bb.sv
  ]

bb.rq:                                            ; preds = %bb.rp
  %i.fot = load i32, ptr %i.rb, align 4, !tbaa !118
  %i.fou = getelementptr inbounds i8, ptr %.11164, i64 -128
  %i.fov = load i32, ptr %i.fou, align 4, !tbaa !118
  %i.fow = mul nsw i32 %i.fov, %i.fot
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rp
  %.0.i964 = phi i32 [ %i.fow, %bb.rq ], [ 0, %bb.rp ]
  %i.fox = load i32, ptr %i.rc, align 4, !tbaa !118
  %i.foy = getelementptr inbounds i8, ptr %.11164, i64 -124
  %i.foz = load i32, ptr %i.foy, align 4, !tbaa !118
  %i.fpa = mul nsw i32 %i.foz, %i.fox
  %i.fpb = add nsw i32 %i.fpa, %.0.i964
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.rp
  %.1.i963 = phi i32 [ %i.fpb, %bb.rr ], [ 0, %bb.rp ]
  %i.fpc = load i32, ptr %i.rd, align 4, !tbaa !118
  %i.fpd = getelementptr inbounds i8, ptr %.11164, i64 -120
  %i.fpe = load i32, ptr %i.fpd, align 4, !tbaa !118
  %i.fpf = mul nsw i32 %i.fpe, %i.fpc
  %i.fpg = add nsw i32 %i.fpf, %.1.i963
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.rp
  %.2.i962 = phi i32 [ %i.fpg, %bb.rs ], [ 0, %bb.rp ]
  %i.fph = load i32, ptr %i.re, align 4, !tbaa !118
  %i.fpi = getelementptr inbounds i8, ptr %.11164, i64 -116
  %i.fpj = load i32, ptr %i.fpi, align 4, !tbaa !118
  %i.fpk = mul nsw i32 %i.fpj, %i.fph
  %i.fpl = add nsw i32 %i.fpk, %.2.i962
  br label %bb.ru

bb.ru:                                            ; preds = %bb.rt, %bb.rp
  %.3.i961 = phi i32 [ %i.fpl, %bb.rt ], [ 0, %bb.rp ]
  %i.fpm = load i32, ptr %i.rf, align 4, !tbaa !118
  %i.fpn = getelementptr inbounds i8, ptr %.11164, i64 -112
  %i.fpo = load i32, ptr %i.fpn, align 4, !tbaa !118
  %i.fpp = mul nsw i32 %i.fpo, %i.fpm
  %i.fpq = add nsw i32 %i.fpp, %.3.i961
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %bb.rp
  %.4.i960 = phi i32 [ %i.fpq, %bb.ru ], [ 0, %bb.rp ]
  %i.fpr = load i32, ptr %i.rg, align 4, !tbaa !118
  %i.fps = getelementptr inbounds i8, ptr %.11164, i64 -108
  %i.fpt = load i32, ptr %i.fps, align 4, !tbaa !118
  %i.fpu = mul nsw i32 %i.fpt, %i.fpr
  %i.fpv = add nsw i32 %i.fpu, %.4.i960
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.rp
  %.5.i959 = phi i32 [ %i.fpv, %bb.rv ], [ 0, %bb.rp ]
  %i.fpw = load i32, ptr %i.rh, align 4, !tbaa !118
  %i.fpx = getelementptr inbounds i8, ptr %.11164, i64 -104
  %i.fpy = load i32, ptr %i.fpx, align 4, !tbaa !118
  %i.fpz = mul nsw i32 %i.fpy, %i.fpw
  %i.fqa = add nsw i32 %i.fpz, %.5.i959
  br label %bb.rx

bb.rx:                                            ; preds = %bb.rw, %bb.rp
  %.6.i958 = phi i32 [ %i.fqa, %bb.rw ], [ 0, %bb.rp ]
  %i.fqb = load i32, ptr %i.ri, align 4, !tbaa !118
  %i.fqc = getelementptr inbounds i8, ptr %.11164, i64 -100
  %i.fqd = load i32, ptr %i.fqc, align 4, !tbaa !118
  %i.fqe = mul nsw i32 %i.fqd, %i.fqb
  %i.fqf = add nsw i32 %i.fqe, %.6.i958
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rp
  %.7.i957 = phi i32 [ %i.fqf, %bb.rx ], [ 0, %bb.rp ]
  %i.fqg = load i32, ptr %i.rj, align 4, !tbaa !118
  %i.fqh = getelementptr inbounds i8, ptr %.11164, i64 -96
  %i.fqi = load i32, ptr %i.fqh, align 4, !tbaa !118
  %i.fqj = mul nsw i32 %i.fqi, %i.fqg
  %i.fqk = add nsw i32 %i.fqj, %.7.i957
  br label %bb.rz

bb.rz:                                            ; preds = %bb.ry, %bb.rp
  %.8.i956 = phi i32 [ %i.fqk, %bb.ry ], [ 0, %bb.rp ]
  %i.fql = load i32, ptr %i.rk, align 4, !tbaa !118
  %i.fqm = getelementptr inbounds i8, ptr %.11164, i64 -92
end_hunk_11
begin_hunk_12_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %.17.i845 = phi i32 [ %i.gkp, %bb.vz ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.gkq = load i32, ptr %i.rt, align 4, !tbaa !118
  %i.gkr = getelementptr inbounds i8, ptr %.11164, i64 -44
  %i.gks = load i32, ptr %i.gkr, align 4, !tbaa !118
  %i.gkt = mul nsw i32 %i.gks, %i.gkq
  %i.gku = add nsw i32 %i.gkt, %.17.i845
  br label %bb.wb

bb.wb:                                            ; preds = %bb.wa, %ma_dr_flac__calculate_prediction_32.exit897
  %.18.i844 = phi i32 [ %i.gku, %bb.wa ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.gkv = load i32, ptr %i.ru, align 4, !tbaa !118
  %i.gkw = getelementptr inbounds i8, ptr %.11164, i64 -40
  %i.gkx = load i32, ptr %i.gkw, align 4, !tbaa !118
  %i.gky = mul nsw i32 %i.gkx, %i.gkv
  %i.gkz = add nsw i32 %i.gky, %.18.i844
  br label %bb.wc

bb.wc:                                            ; preds = %bb.wb, %ma_dr_flac__calculate_prediction_32.exit897
  %.19.i843 = phi i32 [ %i.gkz, %bb.wb ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.gla = load i32, ptr %i.rv, align 4, !tbaa !118
  %i.glb = getelementptr inbounds i8, ptr %.11164, i64 -36
  %i.glc = load i32, ptr %i.glb, align 4, !tbaa !118
  %i.gld = mul nsw i32 %i.glc, %i.gla
  %i.gle = add nsw i32 %i.gld, %.19.i843
  br label %bb.wd

bb.wd:                                            ; preds = %bb.wc, %ma_dr_flac__calculate_prediction_32.exit897
  %.20.i842 = phi i32 [ %i.gle, %bb.wc ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.glf = load i32, ptr %i.rw, align 4, !tbaa !118
  %i.glg = getelementptr inbounds i8, ptr %.11164, i64 -32
  %i.glh = load i32, ptr %i.glg, align 4, !tbaa !118
  %i.gli = mul nsw i32 %i.glh, %i.glf
  %i.glj = add nsw i32 %i.gli, %.20.i842
  br label %bb.we

bb.we:                                            ; preds = %bb.wd, %ma_dr_flac__calculate_prediction_32.exit897
  %.21.i841 = phi i32 [ %i.glj, %bb.wd ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.glk = load i32, ptr %i.rx, align 4, !tbaa !118
  %i.gll = getelementptr inbounds i8, ptr %.11164, i64 -28
  %i.glm = load i32, ptr %i.gll, align 4, !tbaa !118
  %i.gln = mul nsw i32 %i.glm, %i.glk
  %i.glo = add nsw i32 %i.gln, %.21.i841
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %ma_dr_flac__calculate_prediction_32.exit897
  %.22.i840 = phi i32 [ %i.glo, %bb.we ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.glp = load i32, ptr %i.ry, align 4, !tbaa !118
  %i.glq = getelementptr inbounds i8, ptr %.11164, i64 -24
  %i.glr = load i32, ptr %i.glq, align 4, !tbaa !118
  %i.gls = mul nsw i32 %i.glr, %i.glp
  %i.glt = add nsw i32 %i.gls, %.22.i840
  br label %bb.wg

bb.wg:                                            ; preds = %bb.wf, %ma_dr_flac__calculate_prediction_32.exit897
  %.23.i839 = phi i32 [ %i.glt, %bb.wf ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.glu = load i32, ptr %i.rz, align 4, !tbaa !118
  %i.glv = getelementptr inbounds i8, ptr %.11164, i64 -20
  %i.glw = load i32, ptr %i.glv, align 4, !tbaa !118
  %i.glx = mul nsw i32 %i.glw, %i.glu
  %i.gly = add nsw i32 %i.glx, %.23.i839
  br label %bb.wh

bb.wh:                                            ; preds = %bb.wg, %ma_dr_flac__calculate_prediction_32.exit897
  %.24.i838 = phi i32 [ %i.gly, %bb.wg ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.glz = load i32, ptr %i.sa, align 4, !tbaa !118
  %i.gma = getelementptr inbounds i8, ptr %.11164, i64 -16
  %i.gmb = load i32, ptr %i.gma, align 4, !tbaa !118
  %i.gmc = mul nsw i32 %i.gmb, %i.glz
  %i.gmd = add nsw i32 %i.gmc, %.24.i838
  br label %bb.wi

bb.wi:                                            ; preds = %bb.wh, %ma_dr_flac__calculate_prediction_32.exit897
  %.25.i837 = phi i32 [ %i.gmd, %bb.wh ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.gme = load i32, ptr %i.sb, align 4, !tbaa !118
  %i.gmf = getelementptr inbounds i8, ptr %.11164, i64 -12
  %i.gmg = load i32, ptr %i.gmf, align 4, !tbaa !118
  %i.gmh = mul nsw i32 %i.gmg, %i.gme
  %i.gmi = add nsw i32 %i.gmh, %.25.i837
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %ma_dr_flac__calculate_prediction_32.exit897
  %.26.i836 = phi i32 [ %i.gmi, %bb.wi ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.gmj = load i32, ptr %i.sc, align 4, !tbaa !118
  %i.gmk = getelementptr inbounds i8, ptr %.11164, i64 -8
  %i.gml = load i32, ptr %i.gmk, align 4, !tbaa !118
  %i.gmm = mul nsw i32 %i.gml, %i.gmj
  %i.gmn = add nsw i32 %i.gmm, %.26.i836
  br label %bb.wk

bb.wk:                                            ; preds = %bb.wj, %ma_dr_flac__calculate_prediction_32.exit897
  %.27.i835 = phi i32 [ %i.gmn, %bb.wj ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.gmo = load i32, ptr %i.sd, align 4, !tbaa !118
  %i.gmp = getelementptr inbounds i8, ptr %.11164, i64 -4
  %i.gmq = load i32, ptr %i.gmp, align 4, !tbaa !118
  %i.gmr = mul nsw i32 %i.gmq, %i.gmo
  %i.gms = add nsw i32 %i.gmr, %.27.i835
  br label %bb.wl

bb.wl:                                            ; preds = %bb.wk, %ma_dr_flac__calculate_prediction_32.exit897
  %.28.i834 = phi i32 [ %i.gms, %bb.wk ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.gmt = load i32, ptr %i.se, align 4, !tbaa !118
  %i.gmu = mul nsw i32 %i.fux, %i.gmt
  %i.gmv = add nsw i32 %i.gmu, %.28.i834
  br label %bb.wm

bb.wm:                                            ; preds = %bb.wl, %ma_dr_flac__calculate_prediction_32.exit897
  %.29.i833 = phi i32 [ %i.gmv, %bb.wl ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.gmw = load i32, ptr %i.sf, align 4, !tbaa !118
  %i.gmx = mul nsw i32 %i.gbb, %i.gmw
  %i.gmy = add nsw i32 %i.gmx, %.29.i833
  br label %bb.wn

bb.wn:                                            ; preds = %bb.wm, %ma_dr_flac__calculate_prediction_32.exit897
  %.30.i831 = phi i32 [ %i.gmy, %bb.wm ], [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ]
  %i.gmz = load i32, ptr %7, align 4, !tbaa !118
  %i.gna = mul nsw i32 %i.ghd, %i.gmz
  %i.gnb = add nsw i32 %i.gna, %.30.i831
  br label %ma_dr_flac__calculate_prediction_32.exit863

ma_dr_flac__calculate_prediction_32.exit863:      ; preds = %ma_dr_flac__calculate_prediction_32.exit897, %bb.wn
  %.31.i832 = phi i32 [ 0, %ma_dr_flac__calculate_prediction_32.exit897 ], [ %i.gnb, %bb.wn ]
  %i.gnc = ashr i32 %.31.i832, %5
  %i.gnd = add i32 %i.gnc, %i.fos
  store i32 %i.gnd, ptr %i.ghe, align 4, !tbaa !118
  %i.gne = getelementptr inbounds nuw i8, ptr %.11164, i64 16 ; 3 uses
  %i.gnf = icmp ult ptr %i.gne, %i.ov
  br i1 %i.gnf, label %bb.lp, label %.loopexit1129, !llvm.loop !3273

.loopexit1129:                                    ; preds = %ma_dr_flac__calculate_prediction_64.exit694, %ma_dr_flac__calculate_prediction_32.exit863, %.preheader1139, %.preheader
  %.2 = phi ptr [ %i.gne, %ma_dr_flac__calculate_prediction_32.exit863 ], [ %8, %.preheader ], [ %8, %.preheader1139 ], [ %i.dhr, %ma_dr_flac__calculate_prediction_64.exit694 ]
  %.not1179 = icmp eq i32 %i.ot, %2
  br i1 %.not1179, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %.lr.ph1172

.lr.ph1172:                                       ; preds = %.loopexit1129
  %i.gng = add nuw nsw i32 %i.oo, 1               ; 2 uses
  %i.gnh = zext nneg i32 %i.gng to i64
  %i.gni = sub nsw i32 63, %i.oo                  ; 3 uses
  %i.gnj = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 4 uses
  %i.gnk = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.gnl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.gnm = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 4 uses
  %i.gnn = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 6 uses
  %i.gno = getelementptr inbounds nuw i8, ptr %0, i64 4168 ; 4 uses
  %i.gnp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gnq = zext nneg i32 %i.gni to i64
  %trunc.i = trunc nuw i32 %4 to i8               ; 2 uses
  %i.gnr = getelementptr inbounds nuw i8, ptr %7, i64 124 ; 2 uses
  %i.gns = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.gnt = getelementptr inbounds nuw i8, ptr %7, i64 116 ; 2 uses
  %i.gnu = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.gnv = getelementptr inbounds nuw i8, ptr %7, i64 108 ; 2 uses
  %i.gnw = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.gnx = getelementptr inbounds nuw i8, ptr %7, i64 100 ; 2 uses
  %i.gny = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.gnz = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 2 uses
  %i.goa = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.gob = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 2 uses
  %i.goc = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.god = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 2 uses
  %i.goe = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.gof = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 2 uses
  %i.gog = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.goh = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  %i.goi = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.goj = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 2 uses
  %i.gok = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.gol = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.gom = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.gon = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.goo = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.gop = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  %i.goq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.gor = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.gos = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.got = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.gou = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.gov = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.gow = zext nneg i32 %5 to i64
  %.pre1209 = load i64, ptr %i.gnj, align 8, !tbaa !740
  br label %bb.wo

bb.wo:                                            ; preds = %.lr.ph1172, %bb.aap
  %i.gox = phi i64 [ %.pre1209, %.lr.ph1172 ], [ %.681.i, %bb.aap ] ; 7 uses
  %.01171 = phi i32 [ %i.ot, %.lr.ph1172 ], [ %i.hsn, %bb.aap ]
  %.31169 = phi ptr [ %.2, %.lr.ph1172 ], [ %i.hso, %bb.aap ] ; 66 uses
  %i.goy = load i32, ptr %i.gnk, align 4, !tbaa !739 ; 2 uses
  %i.goz = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i = icmp eq i32 %i.goz, 0
  br i1 %.not.i94.i, label %bb.wq, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.gpa = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.gox) #55, !srcloc !1207
  %i.gpb = trunc i64 %i.gpa to i32
  br label %ma_dr_flac__clz.exit96.i

bb.wq:                                            ; preds = %bb.wo
  %i.gpc = icmp eq i64 %i.gox, 0
  br i1 %i.gpc, label %ma_dr_flac__clz.exit96.i.thread, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.gpd = lshr i64 %i.gox, 60                    ; 2 uses
  %i.gpe = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.gpd
  %i.gpf = load i32, ptr %i.gpe, align 4, !tbaa !118
  %i.gpg = icmp eq i64 %i.gpd, 0
  br i1 %i.gpg, label %bb.ws, label %bb.wt

bb.ws:                                            ; preds = %bb.wr
  %i.gph = icmp ult i64 %i.gox, 4294967296        ; 2 uses
  %i.gpi = shl nuw i64 %i.gox, 32
  %spec.select.i.i = select i1 %i.gph, i64 %i.gpi, i64 %i.gox ; 3 uses
  %spec.select26.i.i = select i1 %i.gph, i32 32, i32 0 ; 2 uses
  %i.gpj = icmp ult i64 %spec.select.i.i, 281474976710656 ; 2 uses
  %i.gpk = or disjoint i32 %spec.select26.i.i, 16
  %i.gpl = shl nuw i64 %spec.select.i.i, 16
  %.119.i.i = select i1 %i.gpj, i64 %i.gpl, i64 %spec.select.i.i ; 3 uses
  %.1.i109.i = select i1 %i.gpj, i32 %i.gpk, i32 %spec.select26.i.i ; 2 uses
  %i.gpm = icmp ult i64 %.119.i.i, 72057594037927936 ; 2 uses
  %i.gpn = or disjoint i32 %.1.i109.i, 8
  %i.gpo = shl nuw i64 %.119.i.i, 8
  %.220.i.i = select i1 %i.gpm, i64 %i.gpo, i64 %.119.i.i ; 3 uses
  %.2.i110.i = select i1 %i.gpm, i32 %i.gpn, i32 %.1.i109.i ; 2 uses
  %i.gpp = icmp ult i64 %.220.i.i, 1152921504606846976 ; 2 uses
  %i.gpq = or disjoint i32 %.2.i110.i, 4
  %i.gpr = shl nuw i64 %.220.i.i, 4
  %.321.i.i = select i1 %i.gpp, i64 %i.gpr, i64 %.220.i.i
  %.3.i111.i = select i1 %i.gpp, i32 %i.gpq, i32 %.2.i110.i
  %i.gps = lshr i64 %.321.i.i, 60
  %i.gpt = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.gps
  %i.gpu = load i32, ptr %i.gpt, align 4, !tbaa !118
  %i.gpv = add i32 %i.gpu, %.3.i111.i
  br label %bb.wt

bb.wt:                                            ; preds = %bb.ws, %bb.wr
  %.4.i108.i = phi i32 [ %i.gpv, %bb.ws ], [ %i.gpf, %bb.wr ]
  %i.gpw = add i32 %.4.i108.i, -1
  br label %ma_dr_flac__clz.exit96.i

ma_dr_flac__clz.exit96.i:                         ; preds = %bb.wt, %bb.wp
  %.0.i95.i = phi i32 [ %i.gpb, %bb.wp ], [ %i.gpw, %bb.wt ] ; 3 uses
  %i.gpx = icmp ult i32 %.0.i95.i, 64
  br i1 %i.gpx, label %.loopexit, label %ma_dr_flac__clz.exit96.i.thread

.loopexit:                                        ; preds = %ma_dr_flac__clz.exit.i, %ma_dr_flac__clz.exit96.i
  %.41066 = phi i32 [ %.0.i95.i, %ma_dr_flac__clz.exit96.i ], [ %i.hdh, %ma_dr_flac__clz.exit.i ]
  %.075.i = phi i64 [ %i.gox, %ma_dr_flac__clz.exit96.i ], [ %.479.i, %ma_dr_flac__clz.exit.i ]
  %.072.i = phi i32 [ %i.goy, %ma_dr_flac__clz.exit96.i ], [ %.4.i, %ma_dr_flac__clz.exit.i ]
  %.070.i = phi i32 [ %.0.i95.i, %ma_dr_flac__clz.exit96.i ], [ %.0.i.i, %ma_dr_flac__clz.exit.i ] ; 2 uses
  %i.gpy = zext nneg i32 %.070.i to i64
  %i.gpz = shl i64 %.075.i, %i.gpy                ; 2 uses
  %i.gqa = add i32 %.070.i, %.072.i               ; 3 uses
  %.not90.i = icmp ugt i32 %i.gqa, %i.gni
  %i.gqb = lshr i64 %i.gpz, %i.gnq                ; 2 uses
  br i1 %.not90.i, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %.loopexit
  %i.gqc = shl i64 %i.gpz, %i.gnh
  %i.gqd = add i32 %i.gqa, %i.gng
  br label %ma_dr_flac__ilog2_u32.exit971

bb.wv:                                            ; preds = %.loopexit
  %i.gqe = sub nuw i32 %i.gqa, %i.gni             ; 4 uses
  %i.gqf = load i32, ptr %i.gnl, align 8, !tbaa !738 ; 3 uses
  %i.gqg = icmp ult i32 %i.gqf, 512
  br i1 %i.gqg, label %bb.ww, label %bb.xf

bb.ww:                                            ; preds = %bb.wv
  %i.gqh = load i32, ptr %i.gnm, align 8, !tbaa !742
  %i.gqi = load i16, ptr %i.gnn, align 8, !tbaa !1198 ; 11 uses
  %i.gqj = load i64, ptr %i.gno, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.gqh, label %ma_dr_flac_crc16_bytes.exit.i [
    i32 0, label %bb.wx
    i32 7, label %._crit_edge1243
    i32 1, label %bb.wy
    i32 2, label %bb.wz
    i32 3, label %bb.xa
    i32 4, label %bb.xb
    i32 5, label %bb.xc
    i32 6, label %bb.xd
  ]

bb.wx:                                            ; preds = %bb.ww
  %i.gqk = lshr i64 %i.gqj, 56
  %i.gql = shl i16 %i.gqi, 8
  %i.gqm = lshr i16 %i.gqi, 8
  %i.gqn = zext nneg i16 %i.gqm to i64
  %i.gqo = xor i64 %i.gqk, %i.gqn
  %i.gqp = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gqo
  %i.gqq = load i16, ptr %i.gqp, align 2, !tbaa !122 ; 2 uses
  %i.gqr = xor i16 %i.gqq, %i.gql
  %i.gqs = lshr i64 %i.gqj, 48
  %i.gqt = trunc nuw i64 %i.gqs to i16
  %i.gqu = shl i16 %i.gqq, 8
  %i.gqv = lshr i16 %i.gqr, 8
  %i.gqw = and i16 %i.gqt, 255
  %i.gqx = xor i16 %i.gqv, %i.gqw
  %i.gqy = zext nneg i16 %i.gqx to i64
  %i.gqz = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gqy
  %i.gra = load i16, ptr %i.gqz, align 2, !tbaa !122 ; 2 uses
  %i.grb = xor i16 %i.gqu, %i.gra
  %i.grc = lshr i64 %i.gqj, 40
  %i.grd = trunc i64 %i.grc to i16
  %i.gre = shl i16 %i.gra, 8
  %i.grf = lshr i16 %i.grb, 8
  %i.grg = and i16 %i.grd, 255
  %i.grh = xor i16 %i.grf, %i.grg
  %i.gri = zext nneg i16 %i.grh to i64
  %i.grj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gri
  %i.grk = load i16, ptr %i.grj, align 2, !tbaa !122 ; 2 uses
  %i.grl = xor i16 %i.gre, %i.grk
  %i.grm = lshr i64 %i.gqj, 32
  %i.grn = trunc i64 %i.grm to i16
  %i.gro = shl i16 %i.grk, 8
  %i.grp = lshr i16 %i.grl, 8
  %i.grq = and i16 %i.grn, 255
  %i.grr = xor i16 %i.grp, %i.grq
  %i.grs = zext nneg i16 %i.grr to i64
  %i.grt = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.grs
  %i.gru = load i16, ptr %i.grt, align 2, !tbaa !122 ; 2 uses
  %i.grv = xor i16 %i.gro, %i.gru
  %i.grw = lshr i64 %i.gqj, 24
  %i.grx = trunc i64 %i.grw to i16
  %i.gry = shl i16 %i.gru, 8
  %i.grz = lshr i16 %i.grv, 8
  %i.gsa = and i16 %i.grx, 255
  %i.gsb = xor i16 %i.grz, %i.gsa
  %i.gsc = zext nneg i16 %i.gsb to i64
  %i.gsd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gsc
  %i.gse = load i16, ptr %i.gsd, align 2, !tbaa !122 ; 2 uses
  %i.gsf = xor i16 %i.gry, %i.gse
  %i.gsg = lshr i64 %i.gqj, 16
  %i.gsh = trunc i64 %i.gsg to i16
  %i.gsi = shl i16 %i.gse, 8
  %i.gsj = lshr i16 %i.gsf, 8
  %i.gsk = and i16 %i.gsh, 255
  %i.gsl = xor i16 %i.gsj, %i.gsk
  %i.gsm = zext nneg i16 %i.gsl to i64
  %i.gsn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gsm
  %i.gso = load i16, ptr %i.gsn, align 2, !tbaa !122 ; 2 uses
  %i.gsp = trunc i64 %i.gqj to i16                ; 2 uses
  %i.gsq = shl i16 %i.gso, 8
  %i.gsr = xor i16 %i.gsi, %i.gsp
  %i.gss = xor i16 %i.gsr, %i.gso
  %i.gst = lshr i16 %i.gss, 8
  %i.gsu = zext nneg i16 %i.gst to i64
  %i.gsv = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gsu
  %i.gsw = load i16, ptr %i.gsv, align 2, !tbaa !122 ; 2 uses
  %i.gsx = xor i16 %i.gsq, %i.gsw
  %i.gsy = shl i16 %i.gsw, 8
  %i.gsz = lshr i16 %i.gsx, 8
  %i.gta = and i16 %i.gsp, 255
  %i.gtb = xor i16 %i.gsz, %i.gta
  %i.gtc = zext nneg i16 %i.gtb to i64
  %i.gtd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gtc
  %i.gte = load i16, ptr %i.gtd, align 2, !tbaa !122
  %i.gtf = xor i16 %i.gsy, %i.gte
  store i16 %i.gtf, ptr %i.gnn, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit97.i

._crit_edge1243:                                  ; preds = %bb.ww
  %.pre1244 = trunc i64 %i.gqj to i16
  br label %bb.xe

bb.wy:                                            ; preds = %bb.ww
  %i.gtg = lshr i64 %i.gqj, 48
  %i.gth = trunc nuw i64 %i.gtg to i16
  %i.gti = shl i16 %i.gqi, 8
  %i.gtj = lshr i16 %i.gqi, 8
  %i.gtk = and i16 %i.gth, 255
  %i.gtl = xor i16 %i.gtk, %i.gtj
  %i.gtm = zext nneg i16 %i.gtl to i64
  %i.gtn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gtm
  %i.gto = load i16, ptr %i.gtn, align 2, !tbaa !122
  %i.gtp = xor i16 %i.gto, %i.gti
  br label %bb.wz

bb.wz:                                            ; preds = %bb.ww, %bb.wy
  %.1.i.i = phi i16 [ %i.gtp, %bb.wy ], [ %i.gqi, %bb.ww ] ; 2 uses
  %i.gtq = lshr i64 %i.gqj, 40
  %i.gtr = trunc i64 %i.gtq to i16
  %i.gts = shl i16 %.1.i.i, 8
  %i.gtt = lshr i16 %.1.i.i, 8
  %i.gtu = and i16 %i.gtr, 255
  %i.gtv = xor i16 %i.gtt, %i.gtu
  %i.gtw = zext nneg i16 %i.gtv to i64
  %i.gtx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gtw
  %i.gty = load i16, ptr %i.gtx, align 2, !tbaa !122
  %i.gtz = xor i16 %i.gts, %i.gty
  br label %bb.xa

bb.xa:                                            ; preds = %bb.ww, %bb.wz
  %.2.i.i = phi i16 [ %i.gtz, %bb.wz ], [ %i.gqi, %bb.ww ] ; 2 uses
  %i.gua = lshr i64 %i.gqj, 32
  %i.gub = trunc i64 %i.gua to i16
  %i.guc = shl i16 %.2.i.i, 8
  %i.gud = lshr i16 %.2.i.i, 8
  %i.gue = and i16 %i.gub, 255
  %i.guf = xor i16 %i.gud, %i.gue
  %i.gug = zext nneg i16 %i.guf to i64
  %i.guh = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gug
  %i.gui = load i16, ptr %i.guh, align 2, !tbaa !122
  %i.guj = xor i16 %i.guc, %i.gui
  br label %bb.xb

bb.xb:                                            ; preds = %bb.ww, %bb.xa
end_hunk_12
begin_hunk_13_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.gxj = lshr i64 %i.gwq, 40
  %i.gxk = trunc i64 %i.gxj to i16
  %i.gxl = shl i16 %i.gxh, 8
  %i.gxm = lshr i16 %i.gxi, 8
  %i.gxn = and i16 %i.gxk, 255
  %i.gxo = xor i16 %i.gxm, %i.gxn
  %i.gxp = zext nneg i16 %i.gxo to i64
  %i.gxq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gxp
  %i.gxr = load i16, ptr %i.gxq, align 2, !tbaa !122 ; 2 uses
  %i.gxs = xor i16 %i.gxl, %i.gxr
  %i.gxt = lshr i64 %i.gwq, 32
  %i.gxu = trunc i64 %i.gxt to i16
  %i.gxv = shl i16 %i.gxr, 8
  %i.gxw = lshr i16 %i.gxs, 8
  %i.gxx = and i16 %i.gxu, 255
  %i.gxy = xor i16 %i.gxw, %i.gxx
  %i.gxz = zext nneg i16 %i.gxy to i64
  %i.gya = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gxz
  %i.gyb = load i16, ptr %i.gya, align 2, !tbaa !122 ; 2 uses
  %i.gyc = xor i16 %i.gxv, %i.gyb
  %i.gyd = lshr i64 %i.gwq, 24
  %i.gye = trunc i64 %i.gyd to i16
  %i.gyf = shl i16 %i.gyb, 8
  %i.gyg = lshr i16 %i.gyc, 8
  %i.gyh = and i16 %i.gye, 255
  %i.gyi = xor i16 %i.gyg, %i.gyh
  %i.gyj = zext nneg i16 %i.gyi to i64
  %i.gyk = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gyj
  %i.gyl = load i16, ptr %i.gyk, align 2, !tbaa !122 ; 2 uses
  %i.gym = xor i16 %i.gyf, %i.gyl
  %i.gyn = lshr i64 %i.gwq, 16
  %i.gyo = trunc i64 %i.gyn to i16
  %i.gyp = shl i16 %i.gyl, 8
  %i.gyq = lshr i16 %i.gym, 8
  %i.gyr = and i16 %i.gyo, 255
  %i.gys = xor i16 %i.gyq, %i.gyr
  %i.gyt = zext nneg i16 %i.gys to i64
  %i.gyu = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gyt
  %i.gyv = load i16, ptr %i.gyu, align 2, !tbaa !122 ; 2 uses
  %i.gyw = trunc i64 %i.gwq to i16                ; 2 uses
  %i.gyx = shl i16 %i.gyv, 8
  %i.gyy = xor i16 %i.gyp, %i.gyw
  %i.gyz = xor i16 %i.gyy, %i.gyv
  %i.gza = lshr i16 %i.gyz, 8
  %i.gzb = zext nneg i16 %i.gza to i64
  %i.gzc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gzb
  %i.gzd = load i16, ptr %i.gzc, align 2, !tbaa !122 ; 2 uses
  %i.gze = xor i16 %i.gyx, %i.gzd
  %i.gzf = shl i16 %i.gzd, 8
  %i.gzg = lshr i16 %i.gze, 8
  %i.gzh = and i16 %i.gyw, 255
  %i.gzi = xor i16 %i.gzg, %i.gzh
  %i.gzj = zext nneg i16 %i.gzi to i64
  %i.gzk = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gzj
  %i.gzl = load i16, ptr %i.gzk, align 2, !tbaa !122
  %i.gzm = xor i16 %i.gzf, %i.gzl
  store i16 %i.gzm, ptr %i.gnn, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i

._crit_edge1242:                                  ; preds = %bb.xk
  %.pre1246 = trunc i64 %i.gwq to i16
  br label %bb.xs

bb.xm:                                            ; preds = %bb.xk
  %i.gzn = lshr i64 %i.gwq, 48
  %i.gzo = trunc nuw i64 %i.gzn to i16
  %i.gzp = shl i16 %i.gwp, 8
  %i.gzq = lshr i16 %i.gwp, 8
  %i.gzr = and i16 %i.gzo, 255
  %i.gzs = xor i16 %i.gzr, %i.gzq
  %i.gzt = zext nneg i16 %i.gzs to i64
  %i.gzu = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gzt
  %i.gzv = load i16, ptr %i.gzu, align 2, !tbaa !122
  %i.gzw = xor i16 %i.gzv, %i.gzp
  br label %bb.xn

bb.xn:                                            ; preds = %bb.xk, %bb.xm
  %.1.i105.i = phi i16 [ %i.gzw, %bb.xm ], [ %i.gwp, %bb.xk ] ; 2 uses
  %i.gzx = lshr i64 %i.gwq, 40
  %i.gzy = trunc i64 %i.gzx to i16
  %i.gzz = shl i16 %.1.i105.i, 8
  %i.haa = lshr i16 %.1.i105.i, 8
  %i.hab = and i16 %i.gzy, 255
  %i.hac = xor i16 %i.haa, %i.hab
  %i.had = zext nneg i16 %i.hac to i64
  %i.hae = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.had
  %i.haf = load i16, ptr %i.hae, align 2, !tbaa !122
  %i.hag = xor i16 %i.gzz, %i.haf
  br label %bb.xo

bb.xo:                                            ; preds = %bb.xk, %bb.xn
  %.2.i104.i = phi i16 [ %i.hag, %bb.xn ], [ %i.gwp, %bb.xk ] ; 2 uses
  %i.hah = lshr i64 %i.gwq, 32
  %i.hai = trunc i64 %i.hah to i16
  %i.haj = shl i16 %.2.i104.i, 8
  %i.hak = lshr i16 %.2.i104.i, 8
  %i.hal = and i16 %i.hai, 255
  %i.ham = xor i16 %i.hak, %i.hal
  %i.han = zext nneg i16 %i.ham to i64
  %i.hao = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.han
  %i.hap = load i16, ptr %i.hao, align 2, !tbaa !122
  %i.haq = xor i16 %i.haj, %i.hap
  br label %bb.xp

bb.xp:                                            ; preds = %bb.xk, %bb.xo
  %.3.i103.i = phi i16 [ %i.haq, %bb.xo ], [ %i.gwp, %bb.xk ] ; 2 uses
  %i.har = lshr i64 %i.gwq, 24
  %i.has = trunc i64 %i.har to i16
  %i.hat = shl i16 %.3.i103.i, 8
  %i.hau = lshr i16 %.3.i103.i, 8
  %i.hav = and i16 %i.has, 255
  %i.haw = xor i16 %i.hau, %i.hav
  %i.hax = zext nneg i16 %i.haw to i64
  %i.hay = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hax
  %i.haz = load i16, ptr %i.hay, align 2, !tbaa !122
  %i.hba = xor i16 %i.hat, %i.haz
  br label %bb.xq

bb.xq:                                            ; preds = %bb.xk, %bb.xp
  %.4.i102.i = phi i16 [ %i.hba, %bb.xp ], [ %i.gwp, %bb.xk ] ; 2 uses
  %i.hbb = lshr i64 %i.gwq, 16
  %i.hbc = trunc i64 %i.hbb to i16
  %i.hbd = shl i16 %.4.i102.i, 8
  %i.hbe = lshr i16 %.4.i102.i, 8
  %i.hbf = and i16 %i.hbc, 255
  %i.hbg = xor i16 %i.hbe, %i.hbf
  %i.hbh = zext nneg i16 %i.hbg to i64
  %i.hbi = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hbh
  %i.hbj = load i16, ptr %i.hbi, align 2, !tbaa !122
  %i.hbk = xor i16 %i.hbd, %i.hbj
  br label %bb.xr

bb.xr:                                            ; preds = %bb.xk, %bb.xq
  %.5.i101.i = phi i16 [ %i.hbk, %bb.xq ], [ %i.gwp, %bb.xk ] ; 2 uses
  %i.hbl = trunc i64 %i.gwq to i16                ; 2 uses
  %i.hbm = shl i16 %.5.i101.i, 8
  %i.hbn = xor i16 %.5.i101.i, %i.hbl
  %i.hbo = lshr i16 %i.hbn, 8
  %i.hbp = zext nneg i16 %i.hbo to i64
  %i.hbq = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hbp
  %i.hbr = load i16, ptr %i.hbq, align 2, !tbaa !122
  %i.hbs = xor i16 %i.hbm, %i.hbr
  br label %bb.xs

bb.xs:                                            ; preds = %._crit_edge1242, %bb.xr
  %.pre-phi1247 = phi i16 [ %.pre1246, %._crit_edge1242 ], [ %i.hbl, %bb.xr ]
  %.6.i99.i = phi i16 [ %i.gwp, %._crit_edge1242 ], [ %i.hbs, %bb.xr ] ; 2 uses
  %i.hbt = shl i16 %.6.i99.i, 8
  %i.hbu = lshr i16 %.6.i99.i, 8
  %i.hbv = and i16 %.pre-phi1247, 255
  %i.hbw = xor i16 %i.hbu, %i.hbv
  %i.hbx = zext nneg i16 %i.hbw to i64
  %i.hby = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hbx
  %i.hbz = load i16, ptr %i.hby, align 2, !tbaa !122
  %i.hca = xor i16 %i.hbt, %i.hbz
  br label %ma_dr_flac_crc16_bytes.exit107.i

ma_dr_flac_crc16_bytes.exit107.i:                 ; preds = %bb.xk, %bb.xs
  %.7.i100.i = phi i16 [ %i.gwp, %bb.xk ], [ %i.hca, %bb.xs ]
  store i16 %.7.i100.i, ptr %i.gnn, align 8, !tbaa !1198
  store i32 0, ptr %i.gnm, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i

ma_dr_flac__update_crc16.exit.i:                  ; preds = %ma_dr_flac_crc16_bytes.exit107.i, %bb.xl
  %i.hcb = add nuw nsw i32 %i.gwm, 1
  store i32 %i.hcb, ptr %i.gnl, align 8, !tbaa !738
  %i.hcc = zext nneg i32 %i.gwm to i64
  %i.hcd = getelementptr inbounds nuw [8 x i8], ptr %i.gnp, i64 %i.hcc
  %i.hce = load i64, ptr %i.hcd, align 8, !tbaa !164
  %i.hcf = tail call i64 @llvm.bswap.i64(i64 %i.hce) ; 2 uses
  store i64 %i.hcf, ptr %i.gno, align 8, !tbaa !741
  br label %bb.xv

bb.xt:                                            ; preds = %bb.xj
  %i.hcg = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i = icmp eq i32 %i.hcg, 0
  br i1 %.not.i, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  %i.hch = load i64, ptr %i.gnj, align 8, !tbaa !740
  %i.hci = load i32, ptr %i.gnk, align 4, !tbaa !739
  br label %bb.xv

bb.xv:                                            ; preds = %bb.xu, %ma_dr_flac__update_crc16.exit.i
  %.479.i = phi i64 [ %i.hcf, %ma_dr_flac__update_crc16.exit.i ], [ %i.hch, %bb.xu ] ; 7 uses
  %.4.i = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i ], [ %i.hci, %bb.xu ]
  %i.hcj = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i = icmp eq i32 %i.hcj, 0
  br i1 %.not.i.i, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.hck = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i) #55, !srcloc !1207
  %i.hcl = trunc i64 %i.hck to i32
  br label %ma_dr_flac__clz.exit.i

bb.xx:                                            ; preds = %bb.xv
  %i.hcm = icmp eq i64 %.479.i, 0
  br i1 %i.hcm, label %ma_dr_flac__clz.exit.i, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.hcn = lshr i64 %.479.i, 60                   ; 2 uses
  %i.hco = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.hcn
  %i.hcp = load i32, ptr %i.hco, align 4, !tbaa !118
  %i.hcq = icmp eq i64 %i.hcn, 0
  br i1 %i.hcq, label %bb.xz, label %bb.ya

bb.xz:                                            ; preds = %bb.xy
  %i.hcr = icmp ult i64 %.479.i, 4294967296       ; 2 uses
  %i.hcs = shl nuw i64 %.479.i, 32
  %spec.select.i114.i = select i1 %i.hcr, i64 %i.hcs, i64 %.479.i ; 3 uses
  %spec.select26.i115.i = select i1 %i.hcr, i32 32, i32 0 ; 2 uses
  %i.hct = icmp ult i64 %spec.select.i114.i, 281474976710656 ; 2 uses
  %i.hcu = or disjoint i32 %spec.select26.i115.i, 16
  %i.hcv = shl nuw i64 %spec.select.i114.i, 16
  %.119.i116.i = select i1 %i.hct, i64 %i.hcv, i64 %spec.select.i114.i ; 3 uses
  %.1.i117.i = select i1 %i.hct, i32 %i.hcu, i32 %spec.select26.i115.i ; 2 uses
  %i.hcw = icmp ult i64 %.119.i116.i, 72057594037927936 ; 2 uses
  %i.hcx = or disjoint i32 %.1.i117.i, 8
  %i.hcy = shl nuw i64 %.119.i116.i, 8
  %.220.i118.i = select i1 %i.hcw, i64 %i.hcy, i64 %.119.i116.i ; 3 uses
  %.2.i119.i = select i1 %i.hcw, i32 %i.hcx, i32 %.1.i117.i ; 2 uses
  %i.hcz = icmp ult i64 %.220.i118.i, 1152921504606846976 ; 2 uses
  %i.hda = or disjoint i32 %.2.i119.i, 4
  %i.hdb = shl nuw i64 %.220.i118.i, 4
  %.321.i120.i = select i1 %i.hcz, i64 %i.hdb, i64 %.220.i118.i
  %.3.i121.i = select i1 %i.hcz, i32 %i.hda, i32 %.2.i119.i
  %i.hdc = lshr i64 %.321.i120.i, 60
  %i.hdd = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.hdc
  %i.hde = load i32, ptr %i.hdd, align 4, !tbaa !118
  %i.hdf = add i32 %i.hde, %.3.i121.i
  br label %bb.ya

bb.ya:                                            ; preds = %bb.xz, %bb.xy
  %.4.i112.i = phi i32 [ %i.hdf, %bb.xz ], [ %i.hcp, %bb.xy ]
  %i.hdg = add i32 %.4.i112.i, -1
  br label %ma_dr_flac__clz.exit.i

ma_dr_flac__clz.exit.i:                           ; preds = %bb.xx, %bb.ya, %bb.xw
  %.0.i.i = phi i32 [ %i.hcl, %bb.xw ], [ %i.hdg, %bb.ya ], [ 64, %bb.xx ] ; 3 uses
  %i.hdh = add i32 %.0.i.i, %.0.i                 ; 2 uses
  %i.hdi = icmp ult i32 %.0.i.i, 64
  br i1 %i.hdi, label %.loopexit, label %bb.xj

ma_dr_flac__ilog2_u32.exit971:                    ; preds = %bb.xi, %bb.wu
  %.41042.in = phi i64 [ %i.gwj, %bb.xi ], [ %i.gqb, %bb.wu ]
  %.681.i = phi i64 [ %i.gwk, %bb.xi ], [ %i.gqc, %bb.wu ] ; 2 uses
  %.6.i = phi i32 [ %.173.i, %bb.xi ], [ %i.gqd, %bb.wu ]
  %.41042 = trunc i64 %.41042.in to i32
  store i64 %.681.i, ptr %i.gnj, align 8, !tbaa !740
  store i32 %.6.i, ptr %i.gnk, align 4, !tbaa !739
  %i.hdj = and i32 %.41042, %i.os
  %i.hdk = shl i32 %.41066, %i.oo
  %i.hdl = or i32 %i.hdj, %i.hdk                  ; 2 uses
  %i.hdm = and i32 %i.hdl, 1
  %i.hdn = zext nneg i32 %i.hdm to i64
  %i.hdo = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %i.hdn
  %i.hdp = load i32, ptr %i.hdo, align 4, !tbaa !118
  %i.hdq = lshr i32 %i.hdl, 1
  %i.hdr = xor i32 %i.hdp, %i.hdq
  br i1 %i.oy, label %bb.zi, label %bb.yb

bb.yb:                                            ; preds = %ma_dr_flac__ilog2_u32.exit971
  switch i8 %trunc.i, label %ma_dr_flac__calculate_prediction_64.exit [
    i8 32, label %bb.yc
    i8 31, label %bb.yd
    i8 30, label %bb.ye
    i8 29, label %bb.yf
    i8 28, label %bb.yg
    i8 27, label %bb.yh
    i8 26, label %bb.yi
    i8 25, label %bb.yj
    i8 24, label %bb.yk
    i8 23, label %bb.yl
    i8 22, label %bb.ym
    i8 21, label %bb.yn
    i8 20, label %bb.yo
    i8 19, label %bb.yp
    i8 18, label %bb.yq
    i8 17, label %bb.yr
    i8 16, label %bb.ys
    i8 15, label %bb.yt
    i8 14, label %bb.yu
    i8 13, label %bb.yv
    i8 12, label %bb.yw
    i8 11, label %bb.yx
    i8 10, label %bb.yy
    i8 9, label %bb.yz
    i8 8, label %bb.za
    i8 7, label %bb.zb
    i8 6, label %bb.zc
    i8 5, label %bb.zd
    i8 4, label %bb.ze
    i8 3, label %bb.zf
    i8 2, label %bb.zg
    i8 1, label %bb.zh
  ]

bb.yc:                                            ; preds = %bb.yb
  %i.hds = load i32, ptr %i.gnr, align 4, !tbaa !118
  %i.hdt = sext i32 %i.hds to i64
  %i.hdu = getelementptr inbounds i8, ptr %.31169, i64 -128
  %i.hdv = load i32, ptr %i.hdu, align 4, !tbaa !118
  %i.hdw = sext i32 %i.hdv to i64
  %i.hdx = mul nsw i64 %i.hdw, %i.hdt
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yc, %bb.yb
  %.0.i660 = phi i64 [ %i.hdx, %bb.yc ], [ 0, %bb.yb ]
  %i.hdy = load i32, ptr %i.gns, align 4, !tbaa !118
  %i.hdz = sext i32 %i.hdy to i64
  %i.hea = getelementptr inbounds i8, ptr %.31169, i64 -124
  %i.heb = load i32, ptr %i.hea, align 4, !tbaa !118
  %i.hec = sext i32 %i.heb to i64
  %i.hed = mul nsw i64 %i.hec, %i.hdz
  %i.hee = add nsw i64 %i.hed, %.0.i660
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %bb.yb
  %.1.i = phi i64 [ %i.hee, %bb.yd ], [ 0, %bb.yb ]
  %i.hef = load i32, ptr %i.gnt, align 4, !tbaa !118
  %i.heg = sext i32 %i.hef to i64
  %i.heh = getelementptr inbounds i8, ptr %.31169, i64 -120
  %i.hei = load i32, ptr %i.heh, align 4, !tbaa !118
  %i.hej = sext i32 %i.hei to i64
  %i.hek = mul nsw i64 %i.hej, %i.heg
  %i.hel = add nsw i64 %i.hek, %.1.i
  br label %bb.yf

bb.yf:                                            ; preds = %bb.ye, %bb.yb
  %.2.i = phi i64 [ %i.hel, %bb.ye ], [ 0, %bb.yb ]
  %i.hem = load i32, ptr %i.gnu, align 4, !tbaa !118
  %i.hen = sext i32 %i.hem to i64
  %i.heo = getelementptr inbounds i8, ptr %.31169, i64 -116
  %i.hep = load i32, ptr %i.heo, align 4, !tbaa !118
  %i.heq = sext i32 %i.hep to i64
  %i.her = mul nsw i64 %i.heq, %i.hen
  %i.hes = add nsw i64 %i.her, %.2.i
  br label %bb.yg

bb.yg:                                            ; preds = %bb.yf, %bb.yb
  %.3.i659 = phi i64 [ %i.hes, %bb.yf ], [ 0, %bb.yb ]
  %i.het = load i32, ptr %i.gnv, align 4, !tbaa !118
  %i.heu = sext i32 %i.het to i64
  %i.hev = getelementptr inbounds i8, ptr %.31169, i64 -112
  %i.hew = load i32, ptr %i.hev, align 4, !tbaa !118
  %i.hex = sext i32 %i.hew to i64
  %i.hey = mul nsw i64 %i.hex, %i.heu
  %i.hez = add nsw i64 %i.hey, %.3.i659
  br label %bb.yh

bb.yh:                                            ; preds = %bb.yg, %bb.yb
  %.4.i658 = phi i64 [ %i.hez, %bb.yg ], [ 0, %bb.yb ]
  %i.hfa = load i32, ptr %i.gnw, align 4, !tbaa !118
  %i.hfb = sext i32 %i.hfa to i64
  %i.hfc = getelementptr inbounds i8, ptr %.31169, i64 -108
  %i.hfd = load i32, ptr %i.hfc, align 4, !tbaa !118
  %i.hfe = sext i32 %i.hfd to i64
  %i.hff = mul nsw i64 %i.hfe, %i.hfb
  %i.hfg = add nsw i64 %i.hff, %.4.i658
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.yb
  %.5.i = phi i64 [ %i.hfg, %bb.yh ], [ 0, %bb.yb ]
  %i.hfh = load i32, ptr %i.gnx, align 4, !tbaa !118
  %i.hfi = sext i32 %i.hfh to i64
  %i.hfj = getelementptr inbounds i8, ptr %.31169, i64 -104
  %i.hfk = load i32, ptr %i.hfj, align 4, !tbaa !118
  %i.hfl = sext i32 %i.hfk to i64
  %i.hfm = mul nsw i64 %i.hfl, %i.hfi
  %i.hfn = add nsw i64 %i.hfm, %.5.i
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yi, %bb.yb
  %.6.i657 = phi i64 [ %i.hfn, %bb.yi ], [ 0, %bb.yb ]
  %i.hfo = load i32, ptr %i.gny, align 4, !tbaa !118
  %i.hfp = sext i32 %i.hfo to i64
  %i.hfq = getelementptr inbounds i8, ptr %.31169, i64 -100
  %i.hfr = load i32, ptr %i.hfq, align 4, !tbaa !118
  %i.hfs = sext i32 %i.hfr to i64
  %i.hft = mul nsw i64 %i.hfs, %i.hfp
  %i.hfu = add nsw i64 %i.hft, %.6.i657
  br label %bb.yk

bb.yk:                                            ; preds = %bb.yj, %bb.yb
  %.7.i = phi i64 [ %i.hfu, %bb.yj ], [ 0, %bb.yb ]
  %i.hfv = load i32, ptr %i.gnz, align 4, !tbaa !118
  %i.hfw = sext i32 %i.hfv to i64
  %i.hfx = getelementptr inbounds i8, ptr %.31169, i64 -96
  %i.hfy = load i32, ptr %i.hfx, align 4, !tbaa !118
  %i.hfz = sext i32 %i.hfy to i64
  %i.hga = mul nsw i64 %i.hfz, %i.hfw
  %i.hgb = add nsw i64 %i.hga, %.7.i
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %bb.yb
  %.8.i = phi i64 [ %i.hgb, %bb.yk ], [ 0, %bb.yb ]
  %i.hgc = load i32, ptr %i.goa, align 4, !tbaa !118
  %i.hgd = sext i32 %i.hgc to i64
  %i.hge = getelementptr inbounds i8, ptr %.31169, i64 -92
  %i.hgf = load i32, ptr %i.hge, align 4, !tbaa !118
  %i.hgg = sext i32 %i.hgf to i64
  %i.hgh = mul nsw i64 %i.hgg, %i.hgd
  %i.hgi = add nsw i64 %i.hgh, %.8.i
  br label %bb.ym
end_hunk_13
begin_hunk_14_@ma_dr_flac__read_and_seek_residual:bb.a
bb.q:                                             ; preds = %bb.p
  %i.ce = shl nuw nsw i32 1, %i.cc
  %i.cf = sub nuw nsw i32 %i.cd, %2
  %trunc = trunc i32 %.03.i to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 15 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4168 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %ma_dr_flac__read_and_seek_residual__rice.exit, %bb.q
  %.022 = phi i32 [ %i.cf, %bb.q ], [ %i.cd, %ma_dr_flac__read_and_seek_residual__rice.exit ] ; 2 uses
  %.020 = phi i32 [ %i.ce, %bb.q ], [ %i.vi, %ma_dr_flac__read_and_seek_residual__rice.exit ] ; 2 uses
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !739 ; 3 uses
  %i.cn = icmp eq i32 %i.cm, 64                   ; 2 uses
  br i1 %trunc, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.co = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i53 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i53, label %ma_dr_flac__read_uint8.exit.thread, label %._crit_edge.i54

._crit_edge.i54:                                  ; preds = %bb.t
  %.pre.i55 = load i32, ptr %i.a, align 4, !tbaa !739
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i54, %bb.s
  %i.cp = phi i32 [ %.pre.i55, %._crit_edge.i54 ], [ %i.cm, %bb.s ] ; 2 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = sub nsw i64 64, %i.cq                   ; 3 uses
  %.not34.i.i48 = icmp ult i64 %i.cr, 4
  br i1 %.not34.i.i48, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = load i64, ptr %i.cg, align 8, !tbaa !740 ; 2 uses
  %i.ct = lshr i64 %i.cs, 60
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = add i32 %i.cp, 4                        ; 2 uses
  store i32 %i.cv, ptr %i.a, align 4, !tbaa !739
  %i.cw = shl i64 %i.cs, 4
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cx = trunc nuw nsw i64 %i.cr to i32
  %i.cy = sub nuw nsw i32 4, %i.cx                ; 3 uses
  %i.cz = load i64, ptr %i.cg, align 8, !tbaa !740
  %i.da = lshr i64 -1, %i.cr
  %i.db = xor i64 %i.da, -1
  %i.dc = and i64 %i.cz, %i.db
  %i.dd = lshr i64 %i.dc, %i.cq
  %i.de = trunc i64 %i.dd to i32
  %i.df = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not35.i.i52 = icmp eq i32 %i.df, 0
  br i1 %.not35.i.i52, label %ma_dr_flac__read_uint8.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = zext nneg i32 %i.cy to i64              ; 4 uses
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !739 ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = sub nsw i64 64, %i.di
  %i.dk = icmp ult i64 %i.dj, %i.dg
  br i1 %i.dk, label %ma_dr_flac__read_uint8.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = shl i32 %i.de, %i.cy
  %i.dm = load i64, ptr %i.cg, align 8, !tbaa !740 ; 2 uses
  %i.dn = lshr i64 -1, %i.dg
  %i.do = xor i64 %i.dn, -1
  %i.dp = and i64 %i.dm, %i.do
  %i.dq = sub nuw nsw i64 64, %i.dg
  %i.dr = lshr i64 %i.dp, %i.dq
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = or i32 %i.dl, %i.ds
  %i.du = add i32 %i.dh, %i.cy                    ; 2 uses
  store i32 %i.du, ptr %i.a, align 4, !tbaa !739
  %i.dv = shl i64 %i.dm, %i.dg
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.pre15.i130 = phi i32 [ %i.cv, %bb.v ], [ %i.du, %bb.y ] ; 2 uses
  %.pre.i66127 = phi i64 [ %i.cw, %bb.v ], [ %i.dv, %bb.y ] ; 2 uses
  %.03.i50 = phi i32 [ %i.cu, %bb.v ], [ %i.dt, %bb.y ]
  store i64 %.pre.i66127, ptr %i.cg, align 8, !tbaa !740
  %i.dw = trunc i32 %.03.i50 to i8                ; 2 uses
  %i.dx = icmp eq i8 %i.dw, 15
  br i1 %i.dx, label %.thread, label %bb.ai

bb.aa:                                            ; preds = %bb.r
  br i1 %i.cn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dy = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i62 = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i62, label %ma_dr_flac__read_uint8.exit.thread, label %._crit_edge.i63

._crit_edge.i63:                                  ; preds = %bb.ab
  %.pre.i64 = load i32, ptr %i.a, align 4, !tbaa !739
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i63, %bb.aa
  %i.dz = phi i32 [ %.pre.i64, %._crit_edge.i63 ], [ %i.cm, %bb.aa ] ; 2 uses
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = sub nsw i64 64, %i.ea                   ; 3 uses
  %.not34.i.i57 = icmp ult i64 %i.eb, 5
  br i1 %.not34.i.i57, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = load i64, ptr %i.cg, align 8, !tbaa !740 ; 2 uses
  %i.ed = lshr i64 %i.ec, 59
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = add i32 %i.dz, 5                        ; 2 uses
  store i32 %i.ef, ptr %i.a, align 4, !tbaa !739
  %i.eg = shl i64 %i.ec, 5
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.eh = trunc nuw nsw i64 %i.eb to i32
  %i.ei = sub nuw nsw i32 5, %i.eh                ; 3 uses
  %i.ej = load i64, ptr %i.cg, align 8, !tbaa !740
  %i.ek = lshr i64 -1, %i.eb
  %i.el = xor i64 %i.ek, -1
  %i.em = and i64 %i.ej, %i.el
  %i.en = lshr i64 %i.em, %i.ea
  %i.eo = trunc i64 %i.en to i32
  %i.ep = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not35.i.i61 = icmp eq i32 %i.ep, 0
  br i1 %.not35.i.i61, label %ma_dr_flac__read_uint8.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eq = zext nneg i32 %i.ei to i64              ; 4 uses
  %i.er = load i32, ptr %i.a, align 4, !tbaa !739 ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = sub nsw i64 64, %i.es
  %i.eu = icmp ult i64 %i.et, %i.eq
  br i1 %i.eu, label %ma_dr_flac__read_uint8.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ev = shl i32 %i.eo, %i.ei
  %i.ew = load i64, ptr %i.cg, align 8, !tbaa !740 ; 2 uses
  %i.ex = lshr i64 -1, %i.eq
  %i.ey = xor i64 %i.ex, -1
  %i.ez = and i64 %i.ew, %i.ey
  %i.fa = sub nuw nsw i64 64, %i.eq
  %i.fb = lshr i64 %i.ez, %i.fa
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = or i32 %i.ev, %i.fc
  %i.fe = add i32 %i.er, %i.ei                    ; 2 uses
  store i32 %i.fe, ptr %i.a, align 4, !tbaa !739
  %i.ff = shl i64 %i.ew, %i.eq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.pre15.i129 = phi i32 [ %i.ef, %bb.ad ], [ %i.fe, %bb.ag ] ; 2 uses
  %.pre.i66126 = phi i64 [ %i.eg, %bb.ad ], [ %i.ff, %bb.ag ] ; 2 uses
  %.03.i59 = phi i32 [ %i.ee, %bb.ad ], [ %i.fd, %bb.ag ]
  store i64 %.pre.i66126, ptr %i.cg, align 8, !tbaa !740
  %i.fg = trunc i32 %.03.i59 to i8                ; 2 uses
  %i.fh = icmp eq i8 %i.fg, 31
  br i1 %i.fh, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.z
  %.pre15.i = phi i32 [ %.pre15.i130, %bb.z ], [ %.pre15.i129, %bb.ah ] ; 2 uses
  %.pre.i66 = phi i64 [ %.pre.i66127, %bb.z ], [ %.pre.i66126, %bb.ah ]
  %.085 = phi i8 [ %i.dw, %bb.z ], [ %i.fg, %bb.ah ] ; 2 uses
  %.not34 = icmp eq i8 %.085, -1
  br i1 %.not34, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai
  %i.fi = zext i8 %.085 to i32                    ; 2 uses
  %i.fj = add nuw nsw i32 %i.fi, 1                ; 2 uses
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = sub nsw i32 63, %i.fi                   ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.bv, %.lr.ph.i
  %i.fm = phi i32 [ %.pre15.i, %.lr.ph.i ], [ %.4.i.i, %bb.bv ]
  %i.fn = phi i64 [ %.pre.i66, %.lr.ph.i ], [ %.455.i.i, %bb.bv ] ; 7 uses
  %.09.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ts, %bb.bv ]
  %i.fo = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i63.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i63.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fp = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.fn) #55, !srcloc !1207
  %i.fq = trunc i64 %i.fp to i32
  br label %ma_dr_flac__clz.exit65.i.i

bb.al:                                            ; preds = %bb.aj
  %i.fr = icmp eq i64 %i.fn, 0
  br i1 %i.fr, label %.preheader.i.preheader, label %bb.am

.preheader.i.preheader:                           ; preds = %ma_dr_flac__clz.exit65.i.i, %bb.al
  br label %.preheader.i

bb.am:                                            ; preds = %bb.al
  %i.fs = lshr i64 %i.fn, 60                      ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !118
  %i.fv = icmp eq i64 %i.fs, 0
  br i1 %i.fv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fw = icmp ult i64 %i.fn, 4294967296          ; 2 uses
  %i.fx = shl nuw i64 %i.fn, 32
  %spec.select.i.i.i = select i1 %i.fw, i64 %i.fx, i64 %i.fn ; 3 uses
  %spec.select26.i.i.i = select i1 %i.fw, i32 32, i32 0 ; 2 uses
  %i.fy = icmp ult i64 %spec.select.i.i.i, 281474976710656 ; 2 uses
  %i.fz = or disjoint i32 %spec.select26.i.i.i, 16
  %i.ga = shl nuw i64 %spec.select.i.i.i, 16
  %.119.i.i.i = select i1 %i.fy, i64 %i.ga, i64 %spec.select.i.i.i ; 3 uses
  %.1.i78.i.i = select i1 %i.fy, i32 %i.fz, i32 %spec.select26.i.i.i ; 2 uses
  %i.gb = icmp ult i64 %.119.i.i.i, 72057594037927936 ; 2 uses
  %i.gc = or disjoint i32 %.1.i78.i.i, 8
  %i.gd = shl nuw i64 %.119.i.i.i, 8
  %.220.i.i.i = select i1 %i.gb, i64 %i.gd, i64 %.119.i.i.i ; 3 uses
  %.2.i79.i.i = select i1 %i.gb, i32 %i.gc, i32 %.1.i78.i.i ; 2 uses
  %i.ge = icmp ult i64 %.220.i.i.i, 1152921504606846976 ; 2 uses
  %i.gf = or disjoint i32 %.2.i79.i.i, 4
  %i.gg = shl nuw i64 %.220.i.i.i, 4
  %.321.i.i.i = select i1 %i.ge, i64 %i.gg, i64 %.220.i.i.i
  %.3.i80.i.i = select i1 %i.ge, i32 %i.gf, i32 %.2.i79.i.i
  %i.gh = lshr i64 %.321.i.i.i, 60
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !118
  %i.gk = add i32 %i.gj, %.3.i80.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.4.i77.i.i = phi i32 [ %i.gk, %bb.an ], [ %i.fu, %bb.am ]
  %i.gl = add i32 %.4.i77.i.i, -1
  br label %ma_dr_flac__clz.exit65.i.i

ma_dr_flac__clz.exit65.i.i:                       ; preds = %bb.ao, %bb.ak
  %.0.i64.i.i = phi i32 [ %i.fq, %bb.ak ], [ %i.gl, %bb.ao ] ; 2 uses
  %i.gm = icmp ult i32 %.0.i64.i.i, 64
  br i1 %i.gm, label %.loopexit.i, label %.preheader.i.preheader

.loopexit.i:                                      ; preds = %ma_dr_flac__clz.exit.i.i, %ma_dr_flac__clz.exit65.i.i
  %.051.i.i = phi i64 [ %i.fn, %ma_dr_flac__clz.exit65.i.i ], [ %.354.i.i, %ma_dr_flac__clz.exit.i.i ]
  %.050.i.i = phi i32 [ %i.fm, %ma_dr_flac__clz.exit65.i.i ], [ %.3.i.i, %ma_dr_flac__clz.exit.i.i ]
  %.049.i.i = phi i32 [ %.0.i64.i.i, %ma_dr_flac__clz.exit65.i.i ], [ %.0.i.i.i, %ma_dr_flac__clz.exit.i.i ] ; 2 uses
  %i.gn = add i32 %.049.i.i, %.050.i.i            ; 3 uses
  %.not61.i.i = icmp ugt i32 %i.gn, %i.fl
  br i1 %.not61.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.loopexit.i
  %i.go = zext nneg i32 %.049.i.i to i64
  %i.gp = shl i64 %.051.i.i, %i.go
  %i.gq = shl i64 %i.gp, %i.fk
  %i.gr = add i32 %i.gn, %i.fj
  br label %bb.bv

bb.aq:                                            ; preds = %.loopexit.i
  %i.gs = sub nuw i32 %i.gn, %i.fl                ; 4 uses
  %i.gt = load i32, ptr %i.ch, align 8, !tbaa !738 ; 3 uses
  %i.gu = icmp ult i32 %i.gt, 512
  br i1 %i.gu, label %bb.ar, label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  %i.gv = load i32, ptr %i.ci, align 8, !tbaa !742
  %i.gw = load i16, ptr %i.cj, align 8, !tbaa !1198 ; 11 uses
  %i.gx = load i64, ptr %i.ck, align 8, !tbaa !741 ; 14 uses
  switch i32 %i.gv, label %ma_dr_flac_crc16_bytes.exit.i.i [
    i32 0, label %bb.as
    i32 7, label %._crit_edge17.i
    i32 1, label %bb.at
    i32 2, label %bb.au
    i32 3, label %bb.av
    i32 4, label %bb.aw
    i32 5, label %bb.ax
    i32 6, label %bb.ay
  ]

bb.as:                                            ; preds = %bb.ar
  %i.gy = lshr i64 %i.gx, 56
  %i.gz = shl i16 %i.gw, 8
  %i.ha = lshr i16 %i.gw, 8
  %i.hb = zext nneg i16 %i.ha to i64
  %i.hc = xor i64 %i.gy, %i.hb
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !122 ; 2 uses
  %i.hf = xor i16 %i.he, %i.gz
  %i.hg = lshr i64 %i.gx, 48
  %i.hh = trunc nuw i64 %i.hg to i16
  %i.hi = shl i16 %i.he, 8
  %i.hj = lshr i16 %i.hf, 8
  %i.hk = and i16 %i.hh, 255
  %i.hl = xor i16 %i.hj, %i.hk
  %i.hm = zext nneg i16 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !122 ; 2 uses
  %i.hp = xor i16 %i.hi, %i.ho
  %i.hq = lshr i64 %i.gx, 40
  %i.hr = trunc i64 %i.hq to i16
  %i.hs = shl i16 %i.ho, 8
  %i.ht = lshr i16 %i.hp, 8
  %i.hu = and i16 %i.hr, 255
  %i.hv = xor i16 %i.ht, %i.hu
  %i.hw = zext nneg i16 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !122 ; 2 uses
  %i.hz = xor i16 %i.hs, %i.hy
  %i.ia = lshr i64 %i.gx, 32
  %i.ib = trunc i64 %i.ia to i16
  %i.ic = shl i16 %i.hy, 8
  %i.id = lshr i16 %i.hz, 8
  %i.ie = and i16 %i.ib, 255
  %i.if = xor i16 %i.id, %i.ie
  %i.ig = zext nneg i16 %i.if to i64
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ig
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !122 ; 2 uses
  %i.ij = xor i16 %i.ic, %i.ii
  %i.ik = lshr i64 %i.gx, 24
  %i.il = trunc i64 %i.ik to i16
  %i.im = shl i16 %i.ii, 8
  %i.in = lshr i16 %i.ij, 8
  %i.io = and i16 %i.il, 255
  %i.ip = xor i16 %i.in, %i.io
  %i.iq = zext nneg i16 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !122 ; 2 uses
  %i.it = xor i16 %i.im, %i.is
  %i.iu = lshr i64 %i.gx, 16
  %i.iv = trunc i64 %i.iu to i16
  %i.iw = shl i16 %i.is, 8
  %i.ix = lshr i16 %i.it, 8
  %i.iy = and i16 %i.iv, 255
  %i.iz = xor i16 %i.ix, %i.iy
  %i.ja = zext nneg i16 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !122 ; 2 uses
  %i.jd = trunc i64 %i.gx to i16                  ; 2 uses
  %i.je = shl i16 %i.jc, 8
  %i.jf = xor i16 %i.iw, %i.jd
  %i.jg = xor i16 %i.jf, %i.jc
  %i.jh = lshr i16 %i.jg, 8
  %i.ji = zext nneg i16 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !122 ; 2 uses
  %i.jl = xor i16 %i.je, %i.jk
  %i.jm = shl i16 %i.jk, 8
  %i.jn = lshr i16 %i.jl, 8
  %i.jo = and i16 %i.jd, 255
  %i.jp = xor i16 %i.jn, %i.jo
  %i.jq = zext nneg i16 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !122
  %i.jt = xor i16 %i.jm, %i.js
  store i16 %i.jt, ptr %i.cj, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit66.i.i

._crit_edge17.i:                                  ; preds = %bb.ar
  %.pre18.i = trunc i64 %i.gx to i16
  br label %bb.az

bb.at:                                            ; preds = %bb.ar
  %i.ju = lshr i64 %i.gx, 48
  %i.jv = trunc nuw i64 %i.ju to i16
  %i.jw = shl i16 %i.gw, 8
  %i.jx = lshr i16 %i.gw, 8
  %i.jy = and i16 %i.jv, 255
  %i.jz = xor i16 %i.jy, %i.jx
  %i.ka = zext nneg i16 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !122
  %i.kd = xor i16 %i.kc, %i.jw
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %.1.i.i.i = phi i16 [ %i.kd, %bb.at ], [ %i.gw, %bb.ar ] ; 2 uses
  %i.ke = lshr i64 %i.gx, 40
  %i.kf = trunc i64 %i.ke to i16
  %i.kg = shl i16 %.1.i.i.i, 8
  %i.kh = lshr i16 %.1.i.i.i, 8
  %i.ki = and i16 %i.kf, 255
  %i.kj = xor i16 %i.kh, %i.ki
  %i.kk = zext nneg i16 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !122
  %i.kn = xor i16 %i.kg, %i.km
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  %.2.i.i.i = phi i16 [ %i.kn, %bb.au ], [ %i.gw, %bb.ar ] ; 2 uses
  %i.ko = lshr i64 %i.gx, 32
  %i.kp = trunc i64 %i.ko to i16
  %i.kq = shl i16 %.2.i.i.i, 8
  %i.kr = lshr i16 %.2.i.i.i, 8
  %i.ks = and i16 %i.kp, 255
  %i.kt = xor i16 %i.kr, %i.ks
  %i.ku = zext nneg i16 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !122
  %i.kx = xor i16 %i.kq, %i.kw
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ar
  %.3.i.i.i = phi i16 [ %i.kx, %bb.av ], [ %i.gw, %bb.ar ] ; 2 uses
  %i.ky = lshr i64 %i.gx, 24
end_hunk_14
begin_hunk_15_@ma_dr_flac__read_and_seek_residual:bb.a
  %i.nt = lshr i64 %i.na, 40
  %i.nu = trunc i64 %i.nt to i16
  %i.nv = shl i16 %i.nr, 8
  %i.nw = lshr i16 %i.ns, 8
  %i.nx = and i16 %i.nu, 255
  %i.ny = xor i16 %i.nw, %i.nx
  %i.nz = zext nneg i16 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.nz
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !122 ; 2 uses
  %i.oc = xor i16 %i.nv, %i.ob
  %i.od = lshr i64 %i.na, 32
  %i.oe = trunc i64 %i.od to i16
  %i.of = shl i16 %i.ob, 8
  %i.og = lshr i16 %i.oc, 8
  %i.oh = and i16 %i.oe, 255
  %i.oi = xor i16 %i.og, %i.oh
  %i.oj = zext nneg i16 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.oj
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !122 ; 2 uses
  %i.om = xor i16 %i.of, %i.ol
  %i.on = lshr i64 %i.na, 24
  %i.oo = trunc i64 %i.on to i16
  %i.op = shl i16 %i.ol, 8
  %i.oq = lshr i16 %i.om, 8
  %i.or = and i16 %i.oo, 255
  %i.os = xor i16 %i.oq, %i.or
  %i.ot = zext nneg i16 %i.os to i64
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.ot
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !122 ; 2 uses
  %i.ow = xor i16 %i.op, %i.ov
  %i.ox = lshr i64 %i.na, 16
  %i.oy = trunc i64 %i.ox to i16
  %i.oz = shl i16 %i.ov, 8
  %i.pa = lshr i16 %i.ow, 8
  %i.pb = and i16 %i.oy, 255
  %i.pc = xor i16 %i.pa, %i.pb
  %i.pd = zext nneg i16 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.pd
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !122 ; 2 uses
  %i.pg = trunc i64 %i.na to i16                  ; 2 uses
  %i.ph = shl i16 %i.pf, 8
  %i.pi = xor i16 %i.oz, %i.pg
  %i.pj = xor i16 %i.pi, %i.pf
  %i.pk = lshr i16 %i.pj, 8
  %i.pl = zext nneg i16 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.pl
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !122 ; 2 uses
  %i.po = xor i16 %i.ph, %i.pn
  %i.pp = shl i16 %i.pn, 8
  %i.pq = lshr i16 %i.po, 8
  %i.pr = and i16 %i.pg, 255
  %i.ps = xor i16 %i.pq, %i.pr
  %i.pt = zext nneg i16 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.pt
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !122
  %i.pw = xor i16 %i.pp, %i.pv
  store i16 %i.pw, ptr %i.cj, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i.i

._crit_edge.i68:                                  ; preds = %bb.be
  %.pre20.i = trunc i64 %i.na to i16
  br label %bb.bm

bb.bg:                                            ; preds = %bb.be
  %i.px = lshr i64 %i.na, 48
  %i.py = trunc nuw i64 %i.px to i16
  %i.pz = shl i16 %i.mz, 8
  %i.qa = lshr i16 %i.mz, 8
  %i.qb = and i16 %i.py, 255
  %i.qc = xor i16 %i.qb, %i.qa
  %i.qd = zext nneg i16 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.qd
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !122
  %i.qg = xor i16 %i.qf, %i.pz
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %.1.i74.i.i = phi i16 [ %i.qg, %bb.bg ], [ %i.mz, %bb.be ] ; 2 uses
  %i.qh = lshr i64 %i.na, 40
  %i.qi = trunc i64 %i.qh to i16
  %i.qj = shl i16 %.1.i74.i.i, 8
  %i.qk = lshr i16 %.1.i74.i.i, 8
  %i.ql = and i16 %i.qi, 255
  %i.qm = xor i16 %i.qk, %i.ql
  %i.qn = zext nneg i16 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.qn
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !122
  %i.qq = xor i16 %i.qj, %i.qp
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %.2.i73.i.i = phi i16 [ %i.qq, %bb.bh ], [ %i.mz, %bb.be ] ; 2 uses
  %i.qr = lshr i64 %i.na, 32
  %i.qs = trunc i64 %i.qr to i16
  %i.qt = shl i16 %.2.i73.i.i, 8
  %i.qu = lshr i16 %.2.i73.i.i, 8
  %i.qv = and i16 %i.qs, 255
  %i.qw = xor i16 %i.qu, %i.qv
  %i.qx = zext nneg i16 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.qx
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !122
  %i.ra = xor i16 %i.qt, %i.qz
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.be
  %.3.i72.i.i = phi i16 [ %i.ra, %bb.bi ], [ %i.mz, %bb.be ] ; 2 uses
  %i.rb = lshr i64 %i.na, 24
  %i.rc = trunc i64 %i.rb to i16
  %i.rd = shl i16 %.3.i72.i.i, 8
  %i.re = lshr i16 %.3.i72.i.i, 8
  %i.rf = and i16 %i.rc, 255
  %i.rg = xor i16 %i.re, %i.rf
  %i.rh = zext nneg i16 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.rh
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !122
  %i.rk = xor i16 %i.rd, %i.rj
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.be
  %.4.i71.i.i = phi i16 [ %i.rk, %bb.bj ], [ %i.mz, %bb.be ] ; 2 uses
  %i.rl = lshr i64 %i.na, 16
  %i.rm = trunc i64 %i.rl to i16
  %i.rn = shl i16 %.4.i71.i.i, 8
  %i.ro = lshr i16 %.4.i71.i.i, 8
  %i.rp = and i16 %i.rm, 255
  %i.rq = xor i16 %i.ro, %i.rp
  %i.rr = zext nneg i16 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.rr
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !122
  %i.ru = xor i16 %i.rn, %i.rt
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.be
  %.5.i70.i.i = phi i16 [ %i.ru, %bb.bk ], [ %i.mz, %bb.be ] ; 2 uses
  %i.rv = trunc i64 %i.na to i16                  ; 2 uses
  %i.rw = shl i16 %.5.i70.i.i, 8
  %i.rx = xor i16 %.5.i70.i.i, %i.rv
  %i.ry = lshr i16 %i.rx, 8
  %i.rz = zext nneg i16 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.rz
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !122
  %i.sc = xor i16 %i.rw, %i.sb
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge.i68
  %.pre-phi21.i = phi i16 [ %.pre20.i, %._crit_edge.i68 ], [ %i.rv, %bb.bl ]
  %.6.i68.i.i = phi i16 [ %i.mz, %._crit_edge.i68 ], [ %i.sc, %bb.bl ] ; 2 uses
  %i.sd = shl i16 %.6.i68.i.i, 8
  %i.se = lshr i16 %.6.i68.i.i, 8
  %i.sf = and i16 %.pre-phi21.i, 255
  %i.sg = xor i16 %i.se, %i.sf
  %i.sh = zext nneg i16 %i.sg to i64
  %i.si = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.sh
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !122
  %i.sk = xor i16 %i.sd, %i.sj
  br label %ma_dr_flac_crc16_bytes.exit76.i.i

ma_dr_flac_crc16_bytes.exit76.i.i:                ; preds = %bb.bm, %bb.be
  %.7.i69.i.i = phi i16 [ %i.mz, %bb.be ], [ %i.sk, %bb.bm ]
  store i16 %.7.i69.i.i, ptr %i.cj, align 8, !tbaa !1198
  store i32 0, ptr %i.ci, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i.i

ma_dr_flac__update_crc16.exit.i.i:                ; preds = %ma_dr_flac_crc16_bytes.exit76.i.i, %bb.bf
  %i.sl = add nuw nsw i32 %i.mw, 1
  store i32 %i.sl, ptr %i.ch, align 8, !tbaa !738
  %i.sm = zext nneg i32 %i.mw to i64
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.sm
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !164
  %i.sp = tail call i64 @llvm.bswap.i64(i64 %i.so) ; 2 uses
  store i64 %i.sp, ptr %i.ck, align 8, !tbaa !741
  br label %bb.bp

bb.bn:                                            ; preds = %.preheader.i
  %i.sq = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i67 = icmp eq i32 %i.sq, 0
  br i1 %.not.i.i67, label %ma_dr_flac__read_uint8.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.sr = load i64, ptr %i.cg, align 8, !tbaa !740
  %i.ss = load i32, ptr %i.a, align 4, !tbaa !739
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %ma_dr_flac__update_crc16.exit.i.i
  %.354.i.i = phi i64 [ %i.sp, %ma_dr_flac__update_crc16.exit.i.i ], [ %i.sr, %bb.bo ] ; 7 uses
  %.3.i.i = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i.i ], [ %i.ss, %bb.bo ]
  %i.st = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i.i = icmp eq i32 %i.st, 0
  br i1 %.not.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.su = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.354.i.i) #55, !srcloc !1207
  %i.sv = trunc i64 %i.su to i32
  br label %ma_dr_flac__clz.exit.i.i

bb.br:                                            ; preds = %bb.bp
  %i.sw = icmp eq i64 %.354.i.i, 0
  br i1 %i.sw, label %ma_dr_flac__clz.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sx = lshr i64 %.354.i.i, 60                  ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !118
  %i.ta = icmp eq i64 %i.sx, 0
  br i1 %i.ta, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.tb = icmp ult i64 %.354.i.i, 4294967296      ; 2 uses
  %i.tc = shl nuw i64 %.354.i.i, 32
  %spec.select.i83.i.i = select i1 %i.tb, i64 %i.tc, i64 %.354.i.i ; 3 uses
  %spec.select26.i84.i.i = select i1 %i.tb, i32 32, i32 0 ; 2 uses
  %i.td = icmp ult i64 %spec.select.i83.i.i, 281474976710656 ; 2 uses
  %i.te = or disjoint i32 %spec.select26.i84.i.i, 16
  %i.tf = shl nuw i64 %spec.select.i83.i.i, 16
  %.119.i85.i.i = select i1 %i.td, i64 %i.tf, i64 %spec.select.i83.i.i ; 3 uses
  %.1.i86.i.i = select i1 %i.td, i32 %i.te, i32 %spec.select26.i84.i.i ; 2 uses
  %i.tg = icmp ult i64 %.119.i85.i.i, 72057594037927936 ; 2 uses
  %i.th = or disjoint i32 %.1.i86.i.i, 8
  %i.ti = shl nuw i64 %.119.i85.i.i, 8
  %.220.i87.i.i = select i1 %i.tg, i64 %i.ti, i64 %.119.i85.i.i ; 3 uses
  %.2.i88.i.i = select i1 %i.tg, i32 %i.th, i32 %.1.i86.i.i ; 2 uses
  %i.tj = icmp ult i64 %.220.i87.i.i, 1152921504606846976 ; 2 uses
  %i.tk = or disjoint i32 %.2.i88.i.i, 4
  %i.tl = shl nuw i64 %.220.i87.i.i, 4
  %.321.i89.i.i = select i1 %i.tj, i64 %i.tl, i64 %.220.i87.i.i
  %.3.i90.i.i = select i1 %i.tj, i32 %i.tk, i32 %.2.i88.i.i
  %i.tm = lshr i64 %.321.i89.i.i, 60
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.tm
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !118
  %i.tp = add i32 %i.to, %.3.i90.i.i
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.4.i81.i.i = phi i32 [ %i.tp, %bb.bt ], [ %i.sz, %bb.bs ]
  %i.tq = add i32 %.4.i81.i.i, -1
  br label %ma_dr_flac__clz.exit.i.i

ma_dr_flac__clz.exit.i.i:                         ; preds = %bb.bu, %bb.br, %bb.bq
  %.0.i.i.i = phi i32 [ %i.sv, %bb.bq ], [ %i.tq, %bb.bu ], [ 64, %bb.br ] ; 2 uses
  %i.tr = icmp ult i32 %.0.i.i.i, 64
  br i1 %i.tr, label %.loopexit.i, label %.preheader.i

bb.bv:                                            ; preds = %bb.bd, %bb.ap
  %.455.i.i = phi i64 [ %i.gq, %bb.ap ], [ %i.mv, %bb.bd ] ; 2 uses
  %.4.i.i = phi i32 [ %i.gr, %bb.ap ], [ %.1.i.i, %bb.bd ] ; 2 uses
  store i64 %.455.i.i, ptr %i.cg, align 8, !tbaa !740
  store i32 %.4.i.i, ptr %i.a, align 4, !tbaa !739
  %i.ts = add nuw i32 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ts, %.022
  br i1 %exitcond.not.i, label %ma_dr_flac__read_and_seek_residual__rice.exit, label %bb.aj, !llvm.loop !3277

.thread:                                          ; preds = %bb.ah, %bb.z, %bb.ai
  %i.tt = phi i32 [ %.pre15.i129, %bb.ah ], [ %.pre15.i130, %bb.z ], [ %.pre15.i, %bb.ai ] ; 2 uses
  %i.tu = icmp eq i32 %i.tt, 64
  br i1 %i.tu, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.thread
  %i.tv = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i74 = icmp eq i32 %i.tv, 0
  br i1 %.not.i.i74, label %ma_dr_flac__read_uint8.exit.thread, label %._crit_edge.i75

._crit_edge.i75:                                  ; preds = %bb.bw
  %.pre.i76 = load i32, ptr %i.a, align 4, !tbaa !739
  br label %bb.bx

bb.bx:                                            ; preds = %._crit_edge.i75, %.thread
  %i.tw = phi i32 [ %.pre.i76, %._crit_edge.i75 ], [ %i.tt, %.thread ] ; 2 uses
  %i.tx = zext i32 %i.tw to i64                   ; 2 uses
  %i.ty = sub nsw i64 64, %i.tx                   ; 3 uses
  %.not34.i.i69 = icmp ult i64 %i.ty, 5
  br i1 %.not34.i.i69, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tz = load i64, ptr %i.cg, align 8, !tbaa !740 ; 2 uses
  %i.ua = lshr i64 %i.tz, 59
  %i.ub = trunc nuw nsw i64 %i.ua to i32
  %i.uc = add i32 %i.tw, 5
  store i32 %i.uc, ptr %i.a, align 4, !tbaa !739
  %i.ud = shl i64 %i.tz, 5
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bx
  %i.ue = trunc nuw nsw i64 %i.ty to i32
  %i.uf = sub nuw nsw i32 5, %i.ue                ; 3 uses
  %i.ug = load i64, ptr %i.cg, align 8, !tbaa !740
  %i.uh = lshr i64 -1, %i.ty
  %i.ui = xor i64 %i.uh, -1
  %i.uj = and i64 %i.ug, %i.ui
  %i.uk = lshr i64 %i.uj, %i.tx
  %i.ul = trunc i64 %i.uk to i32
  %i.um = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not35.i.i73 = icmp eq i32 %i.um, 0
  br i1 %.not35.i.i73, label %ma_dr_flac__read_uint8.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.un = zext nneg i32 %i.uf to i64              ; 4 uses
  %i.uo = load i32, ptr %i.a, align 4, !tbaa !739 ; 2 uses
  %i.up = zext i32 %i.uo to i64
  %i.uq = sub nsw i64 64, %i.up
  %i.ur = icmp ult i64 %i.uq, %i.un
  br i1 %i.ur, label %ma_dr_flac__read_uint8.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.us = shl i32 %i.ul, %i.uf
  %i.ut = load i64, ptr %i.cg, align 8, !tbaa !740 ; 2 uses
  %i.uu = lshr i64 -1, %i.un
  %i.uv = xor i64 %i.uu, -1
  %i.uw = and i64 %i.ut, %i.uv
  %i.ux = sub nuw nsw i64 64, %i.un
  %i.uy = lshr i64 %i.uw, %i.ux
  %i.uz = trunc nuw nsw i64 %i.uy to i32
  %i.va = or i32 %i.us, %i.uz
  %i.vb = add i32 %i.uo, %i.uf
  store i32 %i.vb, ptr %i.a, align 4, !tbaa !739
  %i.vc = shl i64 %i.ut, %i.un
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.by
  %storemerge = phi i64 [ %i.ud, %bb.by ], [ %i.vc, %bb.cb ]
  %.03.i71 = phi i32 [ %i.ub, %bb.by ], [ %i.va, %bb.cb ]
  store i64 %storemerge, ptr %i.cg, align 8, !tbaa !740
  %i.vd = and i32 %.03.i71, 255
  %i.ve = mul nuw nsw i32 %i.vd, %.022
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = tail call fastcc i32 @ma_dr_flac__seek_bits(ptr noundef %0, i64 noundef %i.vf)
  %.not36.not = icmp eq i32 %i.vg, 0
  br i1 %.not36.not, label %ma_dr_flac__read_uint8.exit.thread, label %ma_dr_flac__read_and_seek_residual__rice.exit

ma_dr_flac__read_and_seek_residual__rice.exit:    ; preds = %bb.bv, %bb.cc
  %i.vh = icmp eq i32 %.020, 1
  %i.vi = add nsw i32 %.020, -1
  br i1 %i.vh, label %ma_dr_flac__read_uint8.exit.thread, label %bb.r

ma_dr_flac__read_uint8.exit.thread:               ; preds = %bb.af, %bb.ae, %bb.ab, %bb.x, %bb.w, %bb.t, %bb.ca, %bb.bz, %bb.bw, %bb.cc, %ma_dr_flac__read_and_seek_residual__rice.exit, %bb.ba, %bb.bb, %bb.bn, %bb.m, %bb.l, %bb.i, %bb.f, %bb.e, %bb.b, %bb.p, %bb.o, %ma_dr_flac__read_uint8.exit
  %.4 = phi i32 [ 0, %ma_dr_flac__read_uint8.exit ], [ 0, %bb.f ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.ba ], [ 0, %bb.p ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.bn ], [ 0, %bb.bb ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.t ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 0, %bb.bw ], [ 1, %ma_dr_flac__read_and_seek_residual__rice.exit ], [ 0, %bb.cc ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_flac__seek_to_pcm_frame__binary_search_internal(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !751  ; 2 uses
  %.not = icmp eq i16 %i.e, 0
  %i.f = zext i16 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = select i1 %.not, i64 4096, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 10 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !729
  %i.k = sub i64 %1, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !725
  %i.n = zext i8 %i.m to i64
  %i.o = mul i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 5 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !728
  %i.r = zext i8 %i.q to i64
  %i.s = mul i64 %i.o, %i.r
  %i.t = sitofp i64 %i.s to float
  %i.u = fmul nnan float %i.t, 1.250000e-01
  %i.v = fmul nnan float %i.u, 6.000000e-01
  %i.w = fptoui float %i.v to i64
  %i.x = add i64 %2, %i.w
  %.072 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %3)
  %i.y = call fastcc i32 @ma_dr_flac__seek_to_approximate_flac_frame_to_byte(ptr noundef %0, i64 noundef %.072, i64 noundef %2, i64 noundef %3, ptr noundef %i.a)
  %.not102196 = icmp eq i32 %i.y, 0
  br i1 %.not102196, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.068200 = phi i64 [ %2, %.lr.ph ], [ %.3, %bb.y ] ; 4 uses
  %.070199 = phi i64 [ %i.c, %.lr.ph ], [ %.013.i, %bb.y ]
  %.076198 = phi i64 [ %3, %.lr.ph ], [ %.480, %bb.y ] ; 2 uses
  %.081197 = phi i64 [ %2, %.lr.ph ], [ %.485, %bb.y ]
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !749 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !750
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i16, ptr %i.d, align 2, !tbaa !751
  %i.ai = zext i16 %i.ah to i64
  %i.aj = mul nuw nsw i64 %i.ai, %i.ag
  br label %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit

ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit: ; preds = %bb.b, %bb.c
  %.013.i = phi i64 [ %i.aj, %bb.c ], [ %i.ad, %bb.b ] ; 6 uses
  %i.ak = icmp eq i64 %.070199, %.013.i
  br i1 %i.ak, label %bb.d, label %bb.j

bb.d:                                             ; preds = %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit
  %i.al = call fastcc i32 @ma_dr_flac__seek_to_approximate_flac_frame_to_byte(ptr noundef %0, i64 noundef %.068200, i64 noundef %.068200, i64 noundef %.076198, ptr noundef %i.a)
  %.not107 = icmp eq i32 %i.al, 0
end_hunk_15
