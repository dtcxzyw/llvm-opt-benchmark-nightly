inline.NumInlined: 5
inline.NumDeleted: 5
begin_hunk_0_@lzma_lzma2_encoder_init:bb.a

declare i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_encoder_init(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @lzma_alloc(i64 noundef 65704, ptr noundef %1) #8 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %0, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @lzma2_encode, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @lzma2_encoder_end, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @lzma2_encoder_options_update, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.031 = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.b ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %3, i64 112, i1 false), !tbaa.struct !21
  store i32 0, ptr %.031, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %.031, i64 128
  store i8 1, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %.031, i64 129
  store i8 0, ptr %i.l, align 1, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %.031, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.031, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29
  %i.r = icmp eq i32 %i.q, 0
  %i.s = zext i1 %i.r to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi i8 [ 1, %bb.e ], [ %i.s, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %.031, i64 130
  store i8 %i.t, ptr %i.u, align 2, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.w = tail call i32 @lzma_lzma_encoder_create(ptr noundef nonnull %i.v, ptr noundef %1, i64 noundef 33, ptr noundef nonnull %i.j, ptr noundef %4) #8 ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %4, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !33   ; 2 uses
  %i.aa = add i64 %i.z, %i.x
  %i.ab = icmp ult i64 %i.aa, 65536
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = sub i64 65536, %i.z
  store i64 %i.ac, ptr %4, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.c, %bb.i, %bb.h, %bb.a
  %.2 = phi i32 [ 11, %bb.a ], [ %i.w, %bb.g ], [ 5, %bb.c ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 65704, 65703) i64 @lzma_lzma2_encoder_memusage(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @lzma_lzma_encoder_memusage(ptr noundef %0) #8 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  %i.c = add i64 %i.a, 65704
  %.0 = select i1 %i.b, i64 -1, i64 %i.c
  ret i64 %.0
}

declare i64 @lzma_lzma_encoder_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 12) i32 @lzma_lzma2_props_encode(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !34
  %i.c = tail call i32 @llvm.umax.i32(i32 %i.b, i32 4096)
  %spec.select = add i32 %i.c, -1                 ; 2 uses
  %i.d = lshr i32 %spec.select, 2
  %i.e = or i32 %i.d, %spec.select                ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = or i32 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = or i32 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i32 %i.i, 8
  %i.k = or i32 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i32 %i.k, 16
  %i.m = or i32 %i.l, %i.k                        ; 4 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add nuw i32 %i.m, 1                      ; 3 uses
  %i.p = icmp ult i32 %i.m, 8191
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr @lzma_fastpos, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  br label %get_dist_slot.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp ult i32 %i.m, 33554431
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = lshr i32 %i.o, 12
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @lzma_fastpos, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = add i8 %i.x, 24
  br label %get_dist_slot.exit

bb.g:                                             ; preds = %bb.e
  %i.z = lshr i32 %i.o, 24
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @lzma_fastpos, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = add i8 %i.ac, 48
  br label %get_dist_slot.exit

get_dist_slot.exit:                               ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i8 [ %i.s, %bb.d ], [ %i.y, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = add i8 %.0.i, -24
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %get_dist_slot.exit
  %storemerge = phi i8 [ %i.ae, %get_dist_slot.exit ], [ 40, %bb.b ]
  store i8 %storemerge, ptr %1, align 1, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ 11, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -1, 4831838209) i64 @lzma_lzma2_block_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = add i32 %i.a, -4096
  %or.cond = icmp ult i32 %i.b, 1610608641
  %i.c = icmp ugt i32 %i.a, 349525
  %i.d = zext nneg i32 %i.a to i64
  %i.e = mul nuw nsw i64 %i.d, 3
  %i.f = select i1 %i.c, i64 %i.e, i64 1048576
  %.0 = select i1 %or.cond, i64 %i.f, i64 -1
  ret i64 %.0
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_encode(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp ult i64 %i.a, %4
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.f = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 162
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !25    ; 2 uses
  switch i32 %.pre, label %bb.b [
    i32 1, label %._crit_edge
    i32 2, label %._crit_edge111
    i32 3, label %.loopexit120
  ]

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %i.s = phi i64 [ %i.cv, %bb.v ], [ %i.a, %.lr.ph ] ; 2 uses
  switch i32 %.pre, label %bb.v [
    i32 0, label %.loopexit
    i32 4, label %.loopexit121
  ]

._crit_edge111:                                   ; preds = %.lr.ph
  %.pre112 = load i64, ptr %i.l, align 8, !tbaa !37
  br label %bb.t

._crit_edge:                                      ; preds = %.lr.ph
  %.pre108 = load i64, ptr %i.e, align 8, !tbaa !38
  %i.t = trunc i64 %.pre108 to i32
  %i.u = sub i32 2097152, %i.t
  br label %bb.i

.loopexit:                                        ; preds = %bb.b, %bb.w
  %i.v = phi i64 [ %i.cx, %bb.w ], [ %i.s, %bb.b ] ; 2 uses
  %i.w = load i32, ptr %i.g, align 4, !tbaa !39
  %i.x = load i32, ptr %i.f, align 8, !tbaa !42
  %i.y = sub i32 %i.w, %i.x
  %i.z = load i32, ptr %i.h, align 4, !tbaa !43
  %i.aa = sub i32 0, %i.z
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.loopexit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = add nuw i64 %i.v, 1
  store i64 %i.af, ptr %3, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  store i8 0, ptr %i.ag, align 1, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = icmp ne i32 %i.ad, 0
  %i.ai = zext i1 %i.ah to i32
  br label %.thread

bb.f:                                             ; preds = %.loopexit
  %i.aj = load i8, ptr %i.i, align 1, !tbaa !27, !range !45, !noundef !46
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.am = tail call i32 @lzma_lzma_encoder_reset(ptr noundef %i.al, ptr noundef nonnull %i.k) #8 ; 2 uses
  %.not80 = icmp eq i32 %i.am, 0
  br i1 %.not80, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.an = phi i32 [ %i.u, %._crit_edge ], [ 2097152, %bb.h ] ; 2 uses
  %i.ao = load i32, ptr %i.m, align 4, !tbaa !47  ; 2 uses
  %i.ap = icmp ult i32 %i.an, %i.ao
  %.pre109 = load i32, ptr %i.f, align 8, !tbaa !42 ; 2 uses
  %.pre110 = load i32, ptr %i.h, align 4, !tbaa !43 ; 2 uses
  %i.aq = add i32 %i.an, %.pre109
  %i.ar = add i32 %i.ao, %.pre110
  %i.as = sub i32 %i.aq, %i.ar
  %.073 = select i1 %i.ap, i32 0, i32 %i.as
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.au = tail call i32 @lzma_lzma_encode(ptr noundef %i.at, ptr noundef nonnull %1, ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, i64 noundef 65536, i32 noundef %.073) #8
  %i.av = load i32, ptr %i.f, align 8, !tbaa !42
  %i.aw = load i32, ptr %i.h, align 4, !tbaa !43  ; 2 uses
  %i.ax = add i32 %.pre110, %i.av
  %i.ay = add i32 %.pre109, %i.aw
  %i.az = sub i32 %i.ax, %i.ay
  %i.ba = zext i32 %i.az to i64
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !38
  %i.bc = add i64 %i.bb, %i.ba                    ; 4 uses
  store i64 %i.bc, ptr %i.e, align 8, !tbaa !38
  %.not81 = icmp eq i32 %i.au, 1
  br i1 %.not81, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !37  ; 3 uses
  %.not82 = icmp ult i64 %i.bd, %i.bc
  br i1 %.not82, label %bb.k, label %bb.x

bb.k:                                             ; preds = %bb.j
  %i.be = load i8, ptr %i.r, align 8, !tbaa !26, !range !45, !noundef !46
  %i.bf = trunc nuw i8 %i.be to i1                ; 2 uses
  br i1 %i.bf, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bg = load i8, ptr %i.o, align 2, !tbaa !30, !range !45, !noundef !46
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 -32, ptr %i.c, align 8, !tbaa !35
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  store i8 -64, ptr %i.c, align 8, !tbaa !35
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.bi = load i8, ptr %i.i, align 1, !tbaa !27, !range !45, !noundef !46
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 -96, ptr %i.p, align 1, !tbaa !35
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i8 -128, ptr %i.p, align 1, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.m
  %.0.i = phi i64 [ 0, %bb.m ], [ 0, %bb.n ], [ 1, %bb.p ], [ 1, %bb.q ] ; 2 uses
  store i64 %.0.i, ptr %i.d, align 8, !tbaa !48
  %i.bk = add i64 %i.bc, -1                       ; 3 uses
  %i.bl = lshr i64 %i.bk, 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.i ; 7 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !35
  %i.bo = trunc i64 %i.bl to i8
  %i.bp = add i8 %i.bn, %i.bo
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !35
  %i.bq = lshr i64 %i.bk, 8
  %i.br = trunc i64 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !35
  %i.bt = trunc i64 %i.bk to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !35
  %i.bv = add i64 %i.bd, -1                       ; 2 uses
  %i.bw = lshr i64 %i.bv, 8
  %i.bx = trunc i64 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 3
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !35
  %i.bz = trunc i64 %i.bv to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !35
  br i1 %i.bf, label %bb.s, label %.thread87

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  %i.cc = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef nonnull %i.k, ptr noundef nonnull %i.cb) #8 ; 0 uses
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !37
  br label %.thread87

.thread87:                                        ; preds = %bb.s, %bb.r
  %i.cd = phi i64 [ %.pre.i, %bb.s ], [ %i.bd, %bb.r ]
  store i8 0, ptr %i.r, align 8, !tbaa !26
  store i8 0, ptr %i.i, align 1, !tbaa !27
  store i8 0, ptr %i.o, align 2, !tbaa !30
  %i.ce = add i64 %i.cd, 6                        ; 2 uses
  store i64 %i.ce, ptr %i.l, align 8, !tbaa !37
  store i32 2, ptr %0, align 8, !tbaa !25
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge111, %.thread87
  %i.cf = phi i64 [ %.pre112, %._crit_edge111 ], [ %i.ce, %.thread87 ]
  %i.cg = tail call i64 @lzma_bufcpy(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %i.cf, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #8 ; 0 uses
  %i.ch = load i64, ptr %i.d, align 8, !tbaa !48
  %i.ci = load i64, ptr %i.l, align 8, !tbaa !37
  %.not83 = icmp eq i64 %i.ch, %i.ci
  br i1 %.not83, label %bb.w, label %.thread

.loopexit120:                                     ; preds = %.lr.ph, %bb.x
  %i.cj = tail call i64 @lzma_bufcpy(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 3, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #8 ; 0 uses
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !48
  %.not = icmp eq i64 %i.ck, 3
  br i1 %.not, label %bb.u, label %.thread

bb.u:                                             ; preds = %.loopexit120
  store i32 4, ptr %0, align 8, !tbaa !25
  %.pre107 = load i64, ptr %3, align 8, !tbaa !36
  br label %.loopexit121

.loopexit121:                                     ; preds = %bb.b, %bb.u
  %i.cl = phi i64 [ %.pre107, %bb.u ], [ %i.s, %bb.b ] ; 3 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !49
  %.val84 = load i32, ptr %i.f, align 8, !tbaa !42
  %i.cm = sub i64 %4, %i.cl                       ; 2 uses
  %i.cn = load i64, ptr %i.e, align 8, !tbaa !36  ; 4 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cn) ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cl
  %i.cp = zext i32 %.val84 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cp
  %i.cr = sub i64 0, %i.cn
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr readonly align 1 %i.cs, i64 %..i, i1 false)
  %i.ct = add i64 %..i, %i.cl
  store i64 %i.ct, ptr %3, align 8, !tbaa !36
  %i.cu = sub i64 %i.cn, %..i
  store i64 %i.cu, ptr %i.e, align 8, !tbaa !36
  %.not79.not = icmp ugt i64 %i.cn, %i.cm
  br i1 %.not79.not, label %.thread, label %bb.w

bb.v:                                             ; preds = %bb.b
  %i.cv = load i64, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %4
  br i1 %i.cw, label %bb.b, label %.thread, !llvm.loop !50

bb.w:                                             ; preds = %.loopexit121, %bb.t
  store i32 0, ptr %0, align 8, !tbaa !25
  %i.cx = load i64, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %4
  br i1 %i.cy, label %.loopexit, label %.thread, !llvm.loop !50

bb.x:                                             ; preds = %bb.j
  %i.cz = zext i32 %i.aw to i64
  %i.da = add i64 %i.bc, %i.cz                    ; 3 uses
  store i64 %i.da, ptr %i.e, align 8, !tbaa !38
  store i32 0, ptr %i.h, align 4, !tbaa !43
  %i.db = load i8, ptr %i.o, align 2, !tbaa !30, !range !45, !noundef !46
  %spec.select.i = sub nuw nsw i8 2, %i.db
  store i8 %spec.select.i, ptr %i.c, align 8, !tbaa !35
  store i8 0, ptr %i.o, align 2, !tbaa !30
  %i.dc = add i64 %i.da, 65535
  %i.dd = lshr i64 %i.dc, 8
  %i.de = trunc i64 %i.dd to i8
  store i8 %i.de, ptr %i.p, align 1, !tbaa !35
  %i.df = trunc i64 %i.da to i8
  %i.dg = add i8 %i.df, -1
  store i8 %i.dg, ptr %i.q, align 2, !tbaa !35
  store i64 0, ptr %i.d, align 8, !tbaa !48
  store i8 1, ptr %i.i, align 1, !tbaa !27
  store i32 3, ptr %0, align 8, !tbaa !25
  %i.dh = load i64, ptr %3, align 8, !tbaa !36
  %i.di = icmp ult i64 %i.dh, %4
  br i1 %i.di, label %.loopexit120, label %.thread, !llvm.loop !50

.thread:                                          ; preds = %bb.v, %bb.g, %bb.t, %.loopexit120, %.loopexit121, %bb.i, %bb.x, %bb.w, %bb.a, %bb.e
  %.7 = phi i32 [ %i.ai, %bb.e ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %.loopexit121 ], [ 0, %.loopexit120 ], [ %i.am, %bb.g ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.v ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal void @lzma2_encoder_end(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  tail call void @lzma_free(ptr noundef %i.b, ptr noundef %1) #8
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 12) i32 @lzma2_encoder_options_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !25
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !55   ; 4 uses
  %.not26 = icmp eq i32 %i.f, %i.h
  br i1 %.not26, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57
  %.not27 = icmp eq i32 %i.j, %i.l
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %.not28 = icmp eq i32 %i.n, %i.p
  br i1 %.not28, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.q = icmp ugt i32 %i.h, 4
  br i1 %i.q, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !57   ; 3 uses
  %i.t = icmp ugt i32 %i.s, 4
  %i.u = add nuw nsw i32 %i.s, %i.h
  %i.v = icmp ugt i32 %i.u, 4
  %or.cond = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !59   ; 2 uses
  %i.y = icmp ugt i32 %i.x, 4
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.h, ptr %i.e, align 4, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.s, ptr %i.z, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.ab, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 1, ptr %i.ac, align 1, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.i, %bb.e, %bb.a, %bb.b
  %.1 = phi i32 [ 11, %bb.a ], [ 11, %bb.b ], [ 8, %bb.f ], [ 8, %bb.h ], [ 8, %bb.g ], [ 0, %bb.i ], [ 0, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare i32 @lzma_lzma_encoder_create(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_lzma_encoder_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_lzma_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
end_hunk_0
