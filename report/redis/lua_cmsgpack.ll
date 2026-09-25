Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lua_cmsgpack?download=true
inline.NumInlined: 29
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mp_encode_bytes:bb.a

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ult i64 %3, 65536
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 -38, ptr %i.c, align 1, !tbaa !9
  %i.j = lshr i64 %3, 8
  %i.k = trunc nuw i64 %i.j to i8
  %.1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.k, ptr %.1..1..1..sroa_idx, align 1, !tbaa !9
  %i.l = trunc i64 %3 to i8
  %.2..2..2..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.l, ptr %.2..2..2..sroa_idx37, align 1, !tbaa !9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 -37, ptr %i.c, align 1, !tbaa !9
  %i.m = lshr i64 %3, 24
  %i.n = trunc i64 %i.m to i8
  %.1..1..1..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.n, ptr %.1..1..1..sroa_idx35, align 1, !tbaa !9
  %i.o = lshr i64 %3, 16
  %i.p = trunc i64 %i.o to i8
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.p, ptr %.2..2..2..sroa_idx, align 1, !tbaa !9
  %i.q = lshr i64 %3, 8
  %i.r = trunc i64 %i.q to i8
  %.3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.r, ptr %.3..3..3..sroa_idx, align 1, !tbaa !9
  %i.s = trunc i64 %3 to i8
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %i.s, ptr %.4..4..4..sroa_idx, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 5, %bb.g ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17   ; 2 uses
  %i.v = icmp ult i64 %i.u, %.0
  br i1 %i.v, label %bb.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !18
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre28.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %mp_buf_append.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19   ; 3 uses
  %i.y = add i64 %i.x, %.0                        ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = icmp ugt i64 %i.y, 9223372036854775806
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @abort() #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ab = shl nuw i64 %i.y, 1                     ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !18
  %i.ad = add i64 %i.x, %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ae = call ptr @lua_getallocf(ptr noundef %0, ptr noundef nonnull %i.b) #9
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.ag = call ptr %i.ae(ptr noundef %i.af, ptr noundef %i.ac, i64 noundef %i.ad, i64 noundef %i.ab) #9, !inline_history !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  store ptr %i.ag, ptr %1, align 8, !tbaa !18
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !19  ; 2 uses
  %i.ai = sub i64 %i.ab, %i.ah
  store i64 %i.ai, ptr %i.t, align 8, !tbaa !17
  br label %mp_buf_append.exit

mp_buf_append.exit:                               ; preds = %._crit_edge.i, %bb.k
  %i.aj = phi i64 [ %.pre28.i, %._crit_edge.i ], [ %i.ah, %bb.k ]
  %i.ak = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ag, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.c, i64 %.0, i1 false)
  %i.an = load i64, ptr %i.al, align 8, !tbaa !19 ; 2 uses
  %i.ao = add i64 %i.an, %.0                      ; 4 uses
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !19
  %i.ap = load i64, ptr %i.t, align 8, !tbaa !17  ; 2 uses
  %i.aq = sub i64 %i.ap, %.0                      ; 2 uses
  store i64 %i.aq, ptr %i.t, align 8, !tbaa !17
  %i.ar = icmp ult i64 %i.aq, %3
  br i1 %i.ar, label %bb.l, label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %mp_buf_append.exit
  %.pre.i19 = load ptr, ptr %1, align 8, !tbaa !18
  br label %mp_buf_append.exit23

bb.l:                                             ; preds = %mp_buf_append.exit
  %i.as = add i64 %i.ao, %3                       ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.ao
  %i.au = icmp ugt i64 %i.as, 9223372036854775806
  %or.cond.i22 = or i1 %i.at, %i.au
  br i1 %or.cond.i22, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @abort() #10
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.av = shl nuw i64 %i.as, 1                    ; 2 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !18
  %i.ax = add i64 %i.ap, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ay = call ptr @lua_getallocf(ptr noundef %0, ptr noundef nonnull %i.a) #9
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ba = call ptr %i.ay(ptr noundef %i.az, ptr noundef %i.aw, i64 noundef %i.ax, i64 noundef %i.av) #9, !inline_history !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store ptr %i.ba, ptr %1, align 8, !tbaa !18
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !19 ; 2 uses
  %i.bc = sub i64 %i.av, %i.bb
  store i64 %i.bc, ptr %i.t, align 8, !tbaa !17
  br label %mp_buf_append.exit23

mp_buf_append.exit23:                             ; preds = %._crit_edge.i18, %bb.n
  %i.bd = phi i64 [ %i.ao, %._crit_edge.i18 ], [ %i.bb, %bb.n ]
  %i.be = phi ptr [ %.pre.i19, %._crit_edge.i18 ], [ %i.ba, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.bg = load i64, ptr %i.al, align 8, !tbaa !19
  %i.bh = add i64 %i.bg, %3
  store i64 %i.bh, ptr %i.al, align 8, !tbaa !19
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !17
  %i.bj = sub i64 %i.bi, %3
  store i64 %i.bj, ptr %i.t, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mp_encode_double(ptr noundef %0, ptr nofree noundef captures(none) %1, double noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = fptrunc double %2 to float               ; 2 uses
  %i.d = fpext float %i.c to double
  %i.e = fcmp oeq double %2, %i.d
  br i1 %i.e, label %.lr.ph.i, label %.lr.ph.i8

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = bitcast float %i.c to i32
  %rev = tail call i32 @llvm.bswap.i32(i32 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = icmp ult i64 %i.h, 5
  br i1 %i.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !18
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre28.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %mp_buf_append.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19   ; 3 uses
  %or.cond.i = icmp ugt i64 %i.k, 9223372036854775801
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = shl nuw i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 10                     ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !18
  %i.o = add nuw nsw i64 %i.k, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.p = call ptr @lua_getallocf(ptr noundef %0, ptr noundef nonnull %i.b) #9
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.r = call ptr %i.p(ptr noundef %i.q, ptr noundef %i.n, i64 noundef %i.o, i64 noundef %i.m) #9, !inline_history !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  store ptr %i.r, ptr %1, align 8, !tbaa !18
  %i.s = load i64, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %i.t = sub i64 %i.m, %i.s
  store i64 %i.t, ptr %i.g, align 8, !tbaa !17
  br label %mp_buf_append.exit

mp_buf_append.exit:                               ; preds = %._crit_edge.i, %bb.d
  %i.u = phi i64 [ %.pre28.i, %._crit_edge.i ], [ %i.s, %bb.d ]
  %i.v = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.r, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u ; 2 uses
  store i8 -54, ptr %i.x, align 1
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i32 %rev, ptr %.sroa.6.0..sroa_idx23, align 1
  %i.y = load <2 x i64>, ptr %i.w, align 8, !tbaa !25
  %i.z = add <2 x i64> %i.y, <i64 5, i64 -5>
  store <2 x i64> %i.z, ptr %i.w, align 8, !tbaa !25
  br label %bb.h

.lr.ph.i8:                                        ; preds = %bb.a
  %3 = bitcast double %2 to i64
  %.sroa.6.4.insert.insert = tail call i64 @llvm.bswap.i64(i64 %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !17 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 9
  br i1 %i.ac, label %bb.e, label %._crit_edge.i16

._crit_edge.i16:                                  ; preds = %.lr.ph.i8
  %.pre.i17 = load ptr, ptr %1, align 8, !tbaa !18
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre28.i19 = load i64, ptr %.phi.trans.insert.i18, align 8, !tbaa !19
  br label %mp_buf_append.exit21

bb.e:                                             ; preds = %.lr.ph.i8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19 ; 3 uses
  %or.cond.i20 = icmp ugt i64 %i.ae, 9223372036854775797
  br i1 %or.cond.i20, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.af = shl nuw i64 %i.ae, 1
  %i.ag = add nuw i64 %i.af, 18                   ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !18
  %i.ai = add nuw nsw i64 %i.ae, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.aj = call ptr @lua_getallocf(ptr noundef %0, ptr noundef nonnull %i.a) #9
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.al = call ptr %i.aj(ptr noundef %i.ak, ptr noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.ag) #9, !inline_history !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store ptr %i.al, ptr %1, align 8, !tbaa !18
  %i.am = load i64, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.an = sub i64 %i.ag, %i.am
  store i64 %i.an, ptr %i.aa, align 8, !tbaa !17
  br label %mp_buf_append.exit21

mp_buf_append.exit21:                             ; preds = %._crit_edge.i16, %bb.g
  %i.ao = phi i64 [ %.pre28.i19, %._crit_edge.i16 ], [ %i.am, %bb.g ]
  %i.ap = phi ptr [ %.pre.i17, %._crit_edge.i16 ], [ %i.al, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao ; 2 uses
  store i8 -53, ptr %i.ar, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i64 %.sroa.6.4.insert.insert, ptr %.sroa.6.0..sroa_idx, align 1
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !tbaa !25
  %i.at = add <2 x i64> %i.as, <i64 9, i64 -9>
  store <2 x i64> %i.at, ptr %i.aq, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %mp_buf_append.exit21, %mp_buf_append.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mp_encode_int(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [9 x i8], align 1                 ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp sgt i64 %2, -1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %2, 128
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw nsw i64 %2 to i8
  store i8 %i.e, ptr %i.b, align 1, !tbaa !9
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %2, 256
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -52, ptr %i.b, align 1, !tbaa !9
  %i.g = trunc nuw i64 %2 to i8
  %.1..1..1..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %.1..1..1..sroa_idx98, align 1, !tbaa !9
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i64 %2, 65536
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 -51, ptr %i.b, align 1, !tbaa !9
  %i.i = lshr i64 %2, 8
  %i.j = trunc nuw i64 %i.i to i8
  %.1..1..1..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.j, ptr %.1..1..1..sroa_idx97, align 1, !tbaa !9
  %i.k = trunc i64 %2 to i8
  %.2..2..2..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %.2..2..2..sroa_idx103, align 1, !tbaa !9
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.l = icmp samesign ult i64 %2, 4294967296
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 -50, ptr %i.b, align 1, !tbaa !9
  %i.m = lshr i64 %2, 24
  %i.n = trunc nuw i64 %i.m to i8
  %.1..1..1..sroa_idx95.a = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.n, ptr %.1..1..1..sroa_idx95.a, align 1, !tbaa !9
  %i.o = lshr i64 %2, 16
  %i.p = trunc i64 %i.o to i8
  %.2..2..2..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.p, ptr %.2..2..2..sroa_idx101, align 1, !tbaa !9
  %i.q = lshr i64 %2, 8
  %i.r = trunc i64 %i.q to i8
  %.3..3..3..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.r, ptr %.3..3..3..sroa_idx105, align 1, !tbaa !9
  %i.s = trunc i64 %2 to i8
  %.4..4..4..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.s, ptr %.4..4..4..sroa_idx109, align 1, !tbaa !9
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  store i8 -49, ptr %i.b, align 1, !tbaa !9
  %3 = lshr i64 %2, 56
  %4 = trunc nuw nsw i64 %3 to i8
  %.1..1..1..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %4, ptr %.1..1..1..sroa_idx96, align 1, !tbaa !9
  %5 = lshr i64 %2, 48
  %6 = trunc i64 %5 to i8
  %.2..2..2..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %6, ptr %.2..2..2..sroa_idx102, align 1, !tbaa !9
  %7 = lshr i64 %2, 40
  %8 = trunc i64 %7 to i8
  %.3..3..3..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %8, ptr %.3..3..3..sroa_idx106, align 1, !tbaa !9
  %9 = lshr i64 %2, 32
  %10 = trunc i64 %9 to i8
  %.4..4..4..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %10, ptr %.4..4..4..sroa_idx108, align 1, !tbaa !9
  %11 = lshr i64 %2, 24
  %12 = trunc i64 %11 to i8
  %.5..5..5..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %12, ptr %.5..5..5..sroa_idx110, align 1, !tbaa !9
  %13 = lshr i64 %2, 16
  %14 = trunc i64 %13 to i8
  %.6..6..6..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %14, ptr %.6..6..6..sroa_idx111, align 1, !tbaa !9
  %15 = lshr i64 %2, 8
  %16 = trunc i64 %15 to i8
  %.7..7..7..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %16, ptr %.7..7..7..sroa_idx112, align 1, !tbaa !9
  %17 = trunc i64 %2 to i8
  %.8..8..8..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %17, ptr %.8..8..8..sroa_idx113, align 1, !tbaa !9
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  %i.t = icmp samesign ugt i64 %2, -33
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = trunc nsw i64 %2 to i8
  store i8 %i.u, ptr %i.b, align 1, !tbaa !9
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.v = icmp samesign ugt i64 %2, -129
  br i1 %i.v, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 -48, ptr %i.b, align 1, !tbaa !9
  %i.w = trunc nsw i64 %2 to i8
  %.1..1..1..sroa_idx94.a = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.w, ptr %.1..1..1..sroa_idx94.a, align 1, !tbaa !9
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.x = icmp samesign ugt i64 %2, -32769
  br i1 %i.x, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 -47, ptr %i.b, align 1, !tbaa !9
  %i.y = lshr i64 %2, 8
  %i.z = trunc i64 %i.y to i8
  %.1..1..1..sroa_idx93.a = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.z, ptr %.1..1..1..sroa_idx93.a, align 1, !tbaa !9
  %i.aa = trunc i64 %2 to i8
  %.2..2..2..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.aa, ptr %.2..2..2..sroa_idx100, align 1, !tbaa !9
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.ab = icmp samesign ugt i64 %2, -2147483649
  br i1 %i.ab, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i8 -46, ptr %i.b, align 1, !tbaa !9
  %i.ac = lshr i64 %2, 24
  %i.ad = trunc i64 %i.ac to i8
  %.1..1..1..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ad, ptr %.1..1..1..sroa_idx.a, align 1, !tbaa !9
  %i.ae = lshr i64 %2, 16
  %i.af = trunc i64 %i.ae to i8
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.af, ptr %.2..2..2..sroa_idx, align 1, !tbaa !9
  %i.ag = lshr i64 %2, 8
  %i.ah = trunc i64 %i.ag to i8
  %.3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.ah, ptr %.3..3..3..sroa_idx, align 1, !tbaa !9
  %i.ai = trunc i64 %2 to i8
  %.4..4..4..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.ai, ptr %.4..4..4..sroa_idx107, align 1, !tbaa !9
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i8 -45, ptr %i.b, align 1, !tbaa !9
  %18 = lshr i64 %2, 56
  %19 = trunc nuw i64 %18 to i8
  %.1..1..1..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %19, ptr %.1..1..1..sroa_idx92, align 1, !tbaa !9
  %20 = lshr i64 %2, 48
  %21 = trunc i64 %20 to i8
  %.2..2..2..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %21, ptr %.2..2..2..sroa_idx99, align 1, !tbaa !9
  %22 = lshr i64 %2, 40
  %23 = trunc i64 %22 to i8
  %.3..3..3..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %23, ptr %.3..3..3..sroa_idx104, align 1, !tbaa !9
  %24 = lshr i64 %2, 32
  %25 = trunc i64 %24 to i8
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %25, ptr %.4..4..4..sroa_idx, align 1, !tbaa !9
  %26 = lshr i64 %2, 24
  %27 = trunc i64 %26 to i8
  %.5..5..5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %27, ptr %.5..5..5..sroa_idx, align 1, !tbaa !9
  %28 = lshr i64 %2, 16
  %29 = trunc i64 %28 to i8
  %.6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %29, ptr %.6..6..6..sroa_idx, align 1, !tbaa !9
  %30 = lshr i64 %2, 8
  %31 = trunc i64 %30 to i8
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %31, ptr %.7..7..7..sroa_idx, align 1, !tbaa !9
  %32 = trunc i64 %2 to i8
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %32, ptr %.8..8..8..sroa_idx, align 1, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %bb.p, %bb.s, %bb.r, %bb.n, %bb.c, %bb.g, %bb.j, %bb.i, %bb.e
  %.0 = phi i64 [ 1, %bb.c ], [ 2, %bb.e ], [ 3, %bb.g ], [ 5, %bb.i ], [ 9, %bb.j ], [ 1, %bb.l ], [ 2, %bb.n ], [ 3, %bb.p ], [ 5, %bb.r ], [ 9, %bb.s ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %i.al = icmp ult i64 %i.ak, %.0
  br i1 %i.al, label %bb.u, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.t
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !18
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre28.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %mp_buf_append.exit

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !19 ; 3 uses
  %i.ao = add i64 %i.an, %.0                      ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = icmp ugt i64 %i.ao, 9223372036854775806
  %or.cond.i = or i1 %i.ap, %i.aq
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @abort() #10
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ar = shl nuw i64 %i.ao, 1                    ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !18
  %i.at = add i64 %i.an, %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.au = call ptr @lua_getallocf(ptr noundef %0, ptr noundef nonnull %i.a) #9
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.aw = call ptr %i.au(ptr noundef %i.av, ptr noundef %i.as, i64 noundef %i.at, i64 noundef %i.ar) #9, !inline_history !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store ptr %i.aw, ptr %1, align 8, !tbaa !18
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.ay = sub i64 %i.ar, %i.ax
  store i64 %i.ay, ptr %i.aj, align 8, !tbaa !17
  br label %mp_buf_append.exit

mp_buf_append.exit:                               ; preds = %._crit_edge.i, %bb.w
  %i.az = phi i64 [ %.pre28.i, %._crit_edge.i ], [ %i.ax, %bb.w ]
  %i.ba = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.aw, %bb.w ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.b, i64 %.0, i1 false)
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !19
  %i.be = add i64 %i.bd, %.0
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !19
  %i.bf = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.bg = sub i64 %i.bf, %.0
  store i64 %i.bg, ptr %i.aj, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mp_encode_array(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [5 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp ult i64 %2, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw nsw i64 %2 to i8
  %i.e = or disjoint i8 %i.d, -112
  store i8 %i.e, ptr %i.b, align 1, !tbaa !9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %2, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 -36, ptr %i.b, align 1, !tbaa !9
  %i.g = lshr i64 %2, 8
  %i.h = trunc nuw i64 %i.g to i8
  %.1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.h, ptr %.1..1..1..sroa_idx, align 1, !tbaa !9
  %i.i = trunc i64 %2 to i8
  %.2..2..2..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.i, ptr %.2..2..2..sroa_idx21, align 1, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 -35, ptr %i.b, align 1, !tbaa !9
  %i.j = lshr i64 %2, 24
  %i.k = trunc i64 %i.j to i8
  %.1..1..1..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %.1..1..1..sroa_idx20, align 1, !tbaa !9
  %i.l = lshr i64 %2, 16
  %i.m = trunc i64 %i.l to i8
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.m, ptr %.2..2..2..sroa_idx, align 1, !tbaa !9
  %i.n = lshr i64 %2, 8
  %i.o = trunc i64 %i.n to i8
  %.3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.o, ptr %.3..3..3..sroa_idx, align 1, !tbaa !9
  %i.p = trunc i64 %2 to i8
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.p, ptr %.4..4..4..sroa_idx, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 3, %bb.d ], [ 5, %bb.e ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.s = icmp ult i64 %i.r, %.0
  br i1 %i.s, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !18
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre28.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %mp_buf_append.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19   ; 3 uses
  %i.v = add i64 %i.u, %.0                        ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = icmp ugt i64 %i.v, 9223372036854775806
  %or.cond.i = or i1 %i.w, %i.x
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @abort() #10
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = shl nuw i64 %i.v, 1                      ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !18
  %i.aa = add i64 %i.u, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ab = call ptr @lua_getallocf(ptr noundef %0, ptr noundef nonnull %i.a) #9
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ad = call ptr %i.ab(ptr noundef %i.ac, ptr noundef %i.z, i64 noundef %i.aa, i64 noundef %i.y) #9, !inline_history !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store ptr %i.ad, ptr %1, align 8, !tbaa !18
  %i.ae = load i64, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %i.af = sub i64 %i.y, %i.ae
  store i64 %i.af, ptr %i.q, align 8, !tbaa !17
  br label %mp_buf_append.exit

mp_buf_append.exit:                               ; preds = %._crit_edge.i, %bb.i
  %i.ag = phi i64 [ %.pre28.i, %._crit_edge.i ], [ %i.ae, %bb.i ]
  %i.ah = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ad, %bb.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.b, i64 %.0, i1 false)
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !19
  %i.al = add i64 %i.ak, %.0
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !19
  %i.am = load i64, ptr %i.q, align 8, !tbaa !17
  %i.an = sub i64 %i.am, %.0
  store i64 %i.an, ptr %i.q, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mp_encode_map(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [5 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp ult i64 %2, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw nsw i64 %2 to i8
  %i.e = or disjoint i8 %i.d, -128
  store i8 %i.e, ptr %i.b, align 1, !tbaa !9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %2, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 -34, ptr %i.b, align 1, !tbaa !9
  %i.g = lshr i64 %2, 8
  %i.h = trunc nuw i64 %i.g to i8
  %.1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.h, ptr %.1..1..1..sroa_idx, align 1, !tbaa !9
  %i.i = trunc i64 %2 to i8
  %.2..2..2..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.i, ptr %.2..2..2..sroa_idx21, align 1, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 -33, ptr %i.b, align 1, !tbaa !9
  %i.j = lshr i64 %2, 24
  %i.k = trunc i64 %i.j to i8
  %.1..1..1..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
end_hunk_0
