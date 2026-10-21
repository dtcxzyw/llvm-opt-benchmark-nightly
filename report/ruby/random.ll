Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/random?download=true
inline.NumInlined: 245
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@rand_range:bb.a
  br label %rb_float_value_inline.exit70

rb_float_value_inline.exit70:                     ; preds = %bb.az, %bb.ba, %bb.bb
  %.0.i67 = phi double [ %i.ex, %bb.bb ], [ %i.eu, %bb.ba ], [ 0.000000e+00, %bb.az ]
  %i.ey = and i64 %i.em, 3
  %i.ez = icmp eq i64 %i.ey, 2
  br i1 %i.ez, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %rb_float_value_inline.exit70
  %.not.i.i72 = icmp eq i64 %i.em, -9223372036854775806
  br i1 %.not.i.i72, label %rb_float_value_inline.exit74, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.neg.i.i73 = ashr i64 %i.em, 63
  %i.fa = add nsw i64 %.neg.i.i73, 2
  %i.fb = and i64 %i.em, -4
  %i.fc = or i64 %i.fa, %i.fb                     ; 2 uses
  %i.fd = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.fc, i64 range(i64 1, 0) %i.fc, i64 61)
  %i.fe = bitcast i64 %i.fd to double
  br label %rb_float_value_inline.exit74

bb.be:                                            ; preds = %rb_float_value_inline.exit70
  %i.ff = inttoptr i64 %i.em to ptr
  %i.fg = getelementptr i8, ptr %i.ff, i64 16
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !69
  br label %rb_float_value_inline.exit74

rb_float_value_inline.exit74:                     ; preds = %bb.bc, %bb.bd, %bb.be
  %.0.i71 = phi double [ %i.fh, %bb.be ], [ %i.fe, %bb.bd ], [ 0.000000e+00, %bb.bc ]
  %i.fi = fadd double %.0.i67, %.0.i71            ; 2 uses
  %i.fj = bitcast double %i.fi to i64             ; 5 uses
  %cond.i75 = icmp eq i64 %i.fj, 3458764513820540928
  br i1 %cond.i75, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %rb_float_value_inline.exit74
  %i.fk = lshr i64 %i.fj, 60
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = and i32 %i.fl, 7
  %i.fn = add nsw i32 %i.fm, -5
  %i.fo = icmp ult i32 %i.fn, -2
  br i1 %i.fo, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fp = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.fj, i64 range(i64 3458764513820540929, 3458764513820540928) %i.fj, i64 3)
  %i.fq = and i64 %i.fp, -4
  %i.fr = or disjoint i64 %i.fq, 2
  br label %rb_float_new_inline.exit

bb.bh:                                            ; preds = %bb.bf
  %i.fs = icmp eq i64 %i.fj, 0
  br i1 %i.fs, label %rb_float_new_inline.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %rb_float_value_inline.exit74
  %i.ft = call i64 @rb_float_new_in_heap(double noundef %i.fi) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit77:                       ; preds = %rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge, %bb.av, %bb.av, %bb.aw, %bb.av, %rb_type.exit
  %i.fu = phi i64 [ %.pre117, %rb_type.exit.thread104.rb_float_new_inline.exit77_crit_edge ], [ %i.dq, %bb.av ], [ %i.dq, %bb.av ], [ %i.dq, %bb.aw ], [ %i.dq, %bb.av ], [ %i.dq, %rb_type.exit ]
  %i.fv = call i64 @rb_funcallv(i64 noundef %i.fu, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.d) #23
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %range_values.exit, %bb.bg, %bb.bh, %bb.bi, %bb.av, %bb.au, %bb.at, %bb.aj, %bb.ak, %bb.al, %range_values.exit.thread83, %rb_type.exit, %rb_float_new_inline.exit77, %bb.ax
  %.3 = phi i64 [ 0, %range_values.exit.thread83 ], [ -9223372036854775806, %bb.ak ], [ %i.fv, %rb_float_new_inline.exit77 ], [ %i.k, %range_values.exit ], [ %i.el, %bb.ax ], [ %i.dp, %bb.av ], [ %i.dp, %rb_type.exit ], [ %i.cx, %bb.aj ], [ %i.cz, %bb.al ], [ %i.dy, %bb.at ], [ %i.dz, %bb.au ], [ -9223372036854775806, %bb.bh ], [ %i.ft, %bb.bi ], [ %i.fr, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret i64 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rand_int(i64 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = trunc i64 %2 to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %2, 1                           ; 4 uses
  %.not22 = icmp eq i64 %i.d, 0
  br i1 %.not22, label %rb_ulong2num_inline.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not23 = icmp eq i32 %3, 0
  br i1 %.not23, label %bb.e, label %rb_ulong2num_inline.exit

bb.e:                                             ; preds = %bb.d
  %i.f = sub nsw i64 0, %i.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.018 = phi i64 [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = add nsw i64 %.018, -1
  %i.h = tail call fastcc i64 @random_ulong_limited(i64 noundef %0, ptr noundef %1, i64 noundef %i.g) ; 3 uses
  %i.i = icmp ult i64 %i.h, 4611686018427387904
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  br label %rb_ulong2num_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i64 @rb_uint2big(i64 noundef %i.h) #23
  br label %rb_ulong2num_inline.exit

bb.i:                                             ; preds = %bb.a
  %i.m = tail call i32 @rb_bigzero_p(i64 noundef %2) #23
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.j, label %rb_ulong2num_inline.exit

bb.j:                                             ; preds = %bb.i
  %i.n = inttoptr i64 %2 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !54
  %i.p = and i64 %i.o, 8192
  %.not25 = icmp eq i64 %i.p, 0
  br i1 %.not25, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not21 = icmp eq i32 %3, 0
  br i1 %.not21, label %bb.l, label %rb_ulong2num_inline.exit

bb.l:                                             ; preds = %bb.k
  %i.q = tail call i64 @rb_big_uminus(i64 noundef %2) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.r = phi i64 [ %i.q, %bb.l ], [ %2, %bb.j ]
  %i.s = tail call i64 @rb_big_minus(i64 noundef %i.r, i64 noundef 3) #23 ; 4 uses
  store i64 %i.s, ptr %i.a, align 8, !tbaa !37
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.u = ashr i64 %i.s, 1                         ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %rb_ulong2num_inline.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = tail call fastcc i64 @random_ulong_limited(i64 noundef %0, ptr noundef %1, i64 noundef %i.u) ; 3 uses
  %i.x = add i64 %i.w, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.x, -1
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.y = shl nsw i64 %i.w, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %rb_ulong2num_inline.exit

bb.q:                                             ; preds = %bb.o
  %i.aa = tail call i64 @rb_int2big(i64 noundef %i.w) #23
  br label %rb_ulong2num_inline.exit

bb.r:                                             ; preds = %bb.m
  %i.ab = tail call fastcc i64 @random_ulong_limited_big(i64 noundef %0, ptr noundef %1, i64 noundef %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !102
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !103
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ad = load volatile i64, ptr %i.ac, align 8, !tbaa !37 ; 0 uses
  br label %rb_ulong2num_inline.exit

rb_ulong2num_inline.exit:                         ; preds = %bb.q, %bb.p, %bb.h, %bb.g, %bb.r, %bb.i, %bb.k, %bb.n, %bb.b, %bb.d
  %.3 = phi i64 [ 4, %bb.d ], [ 4, %bb.b ], [ 4, %bb.n ], [ 4, %bb.i ], [ 4, %bb.k ], [ %i.ab, %bb.r ], [ %i.l, %bb.h ], [ %i.k, %bb.g ], [ %i.z, %bb.p ], [ %i.aa, %bb.q ]
  ret i64 %.3
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @domain_error() unnamed_addr #20 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 67, ptr %i.a, align 8, !tbaa !37
  %i.b = load i64, ptr @rb_eSystemCallError, align 8, !tbaa !37
  %i.c = call i64 @rb_class_new_instance(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.b) #23
  call void @rb_exc_raise(i64 noundef %i.c) #25
  unreachable
}

declare i64 @rb_check_to_int(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @random_ulong_limited(i64 noundef %0, ptr noundef %1, i64 noundef range(i64 -4611686018427387904, 4611686020574871552) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %union.anon.21, align 8             ; 8 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %limited_rand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not33 = icmp eq ptr %1, null
  br i1 %.not33, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %narrow = sub nuw nsw i64 64, %i.a              ; 5 uses
  %i.b = icmp ult i64 %2, 4294967296              ; 2 uses
  %i.c = select i1 %i.b, i32 4, i32 8             ; 2 uses
  %i.d = shl nsw i64 -1, %narrow                  ; 3 uses
  %i.e = xor i64 %i.d, -1                         ; 2 uses
  %i.f = zext nneg i32 %i.c to i64                ; 2 uses
  %i.g = shl nuw nsw i32 %i.c, 3
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nsw i64 -1, %i.h
  %i.j = xor i64 %i.i, -1
  br i1 %i.b, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %bb.e
  %.027.us = phi i64 [ %i.o, %bb.e ], [ 0, %bb.c ]
  %.0.us = phi i64 [ %i.p, %bb.e ], [ 0, %bb.c ]  ; 2 uses
  %i.k = or i64 %.0.us, %i.d
  %.not34.us = icmp eq i64 %i.k, -1
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.l = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef nonnull %3, i64 noundef %i.f) ; 0 uses
  %i.m = load i32, ptr %3, align 8
  %i.n = zext i32 %i.m to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.us
  %.128.us = phi i64 [ %i.n, %bb.d ], [ %.027.us, %.split.us ] ; 2 uses
  %.1.us = phi i64 [ %i.j, %bb.d ], [ %.0.us, %.split.us ]
  %i.o = lshr i64 %.128.us, %narrow
  %i.p = lshr i64 %.1.us, %narrow
  %i.q = and i64 %.128.us, %i.e                   ; 2 uses
  %i.r = icmp ult i64 %2, %i.q
  br i1 %i.r, label %.split.us, label %limited_rand.exit, !llvm.loop !104

.split:                                           ; preds = %bb.c, %bb.g
  %.027 = phi i64 [ %i.v, %bb.g ], [ 0, %bb.c ]
  %.0 = phi i64 [ %i.w, %bb.g ], [ 0, %bb.c ]     ; 2 uses
  %i.s = or i64 %.0, %i.d
  %.not34 = icmp eq i64 %i.s, -1
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.t = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef nonnull %3, i64 noundef %i.f) ; 0 uses
  %i.u = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split
  %.128 = phi i64 [ %i.u, %bb.f ], [ %.027, %.split ] ; 2 uses
  %.1 = phi i64 [ -1, %bb.f ], [ %.0, %.split ]
  %i.v = lshr i64 %.128, %narrow
  %i.w = lshr i64 %.1, %narrow
  %i.x = and i64 %.128, %i.e                      ; 2 uses
  %i.y = icmp ult i64 %2, %i.x
  br i1 %i.y, label %.split, label %limited_rand.exit, !llvm.loop !104

bb.h:                                             ; preds = %bb.b
  %i.z = load ptr, ptr @default_rand_key, align 8, !tbaa !22
  %i.aa = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.z) #23 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %default_rand.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call noalias nonnull dereferenceable(2520) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2520) #24 ; 2 uses
  %i.ad = load ptr, ptr @default_rand_key, align 8, !tbaa !22
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.ad, ptr noundef nonnull %i.ac) #23
  br label %default_rand.exit.i

default_rand.exit.i:                              ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.ac, %bb.i ], [ %i.aa, %bb.h ]
  %i.ae = icmp eq ptr %1, %.0.i.i
  br i1 %i.ae, label %try_rand_if.exit, label %bb.j

bb.j:                                             ; preds = %default_rand.exit.i
  %i.af = inttoptr i64 %0 to ptr
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !40
  %i.ai = and i64 %i.ah, -2
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %try_rand_if.exit

try_rand_if.exit:                                 ; preds = %bb.j, %default_rand.exit.i
  %.0.i = phi ptr [ %i.al, %bb.j ], [ @random_mt_if, %default_rand.exit.i ]
  %i.am = lshr i64 %2, 1
  %i.an = or i64 %i.am, %2                        ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = or i64 %i.ao, %i.an                     ; 2 uses
  %i.aq = lshr i64 %i.ap, 4
  %i.ar = or i64 %i.aq, %i.ap                     ; 2 uses
  %i.as = lshr i64 %i.ar, 8
  %i.at = or i64 %i.as, %i.ar                     ; 2 uses
  %i.au = lshr i64 %i.at, 16
  %i.av = or i64 %i.au, %i.at                     ; 3 uses
  %i.aw = lshr i64 %i.av, 32
  %i.ax = or i64 %i.aw, %i.av
  %.fr47 = freeze i64 %i.ax                       ; 6 uses
  %i.ay = icmp ugt i64 %2, 4294967295
  %i.az = getelementptr i8, ptr %.0.i, i64 32     ; 5 uses
  br i1 %i.ay, label %.preheader.i, label %.preheader29.i

.preheader.i:                                     ; preds = %try_rand_if.exit
  %.not27.i = icmp ult i64 %i.av, 4294967296
  %i.ba = and i64 %.fr47, 4294967295
  %.not27.1.i = icmp eq i64 %i.ba, 0              ; 2 uses
  br i1 %.not27.i, label %.preheader.i.split.us, label %.preheader.i.split

.preheader.i.split.us:                            ; preds = %.preheader.i
  br i1 %.not27.1.i, label %limited_rand.exit, label %.loopexit28.loopexit.i.us

.loopexit28.loopexit.i.us:                        ; preds = %.preheader.i.split.us, %.loopexit28.loopexit.i.us
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bc = tail call i32 %i.bb(ptr noundef nonnull %1) #23, !inline_history !2
  %i.bd = zext i32 %i.bc to i64
  %i.be = and i64 %.fr47, %i.bd                   ; 2 uses
  %i.bf = icmp ult i64 %2, %i.be
  br i1 %i.bf, label %.loopexit28.loopexit.i.us, label %limited_rand.exit

.preheader.i.split:                               ; preds = %.preheader.i
  br i1 %.not27.1.i, label %.loopexit28.i.us38, label %.loopexit28.i

.loopexit28.i.us38:                               ; preds = %.preheader.i.split, %.loopexit28.i.us38
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bh = tail call i32 %i.bg(ptr noundef nonnull %1) #23, !inline_history !2
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw i64 %i.bi, 32
  %i.bk = and i64 %i.bj, %.fr47                   ; 2 uses
  %i.bl = icmp ult i64 %2, %i.bk
  br i1 %i.bl, label %.loopexit28.i.us38, label %limited_rand.exit

.loopexit28.i:                                    ; preds = %.preheader.i.split, %.loopexit28.i.backedge
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bn = tail call i32 %i.bm(ptr noundef nonnull %1) #23, !inline_history !2
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw i64 %i.bo, 32                   ; 2 uses
  %i.bq = and i64 %i.bp, %.fr47
  %i.br = icmp ult i64 %2, %i.bq
  br i1 %i.br, label %.loopexit28.i.backedge, label %bb.k

bb.k:                                             ; preds = %.loopexit28.i
  %i.bs = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bt = tail call i32 %i.bs(ptr noundef nonnull %1) #23, !inline_history !2
  %i.bu = zext i32 %i.bt to i64
  %i.bv = or disjoint i64 %i.bp, %i.bu
  %i.bw = and i64 %i.bv, %.fr47                   ; 2 uses
  %i.bx = icmp ult i64 %2, %i.bw
  br i1 %i.bx, label %.loopexit28.i.backedge, label %limited_rand.exit

.loopexit28.i.backedge:                           ; preds = %bb.k, %.loopexit28.i
  br label %.loopexit28.i

.preheader29.i:                                   ; preds = %try_rand_if.exit, %.preheader29.i
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !52
  %i.bz = tail call i32 %i.by(ptr noundef nonnull %1) #23, !inline_history !2
  %i.ca = zext i32 %i.bz to i64
  %i.cb = and i64 %.fr47, %i.ca                   ; 2 uses
  %i.cc = icmp samesign ult i64 %2, %i.cb
  br i1 %i.cc, label %.preheader29.i, label %limited_rand.exit, !llvm.loop !0

limited_rand.exit:                                ; preds = %.preheader29.i, %bb.k, %.loopexit28.i.us38, %.loopexit28.loopexit.i.us, %bb.g, %bb.e, %.preheader.i.split.us, %bb.a
  %.029 = phi i64 [ %i.x, %bb.g ], [ 0, %bb.a ], [ %i.bk, %.loopexit28.i.us38 ], [ %i.be, %.loopexit28.loopexit.i.us ], [ 0, %.preheader.i.split.us ], [ %i.bw, %bb.k ], [ %i.q, %bb.e ], [ %i.cb, %.preheader29.i ]
  ret i64 %.029
}

declare i32 @rb_bigzero_p(i64 noundef) local_unnamed_addr #1

declare i64 @rb_big_minus(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_big_norm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @random_ulong_limited_big(i64 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = call i64 @rb_absint_numwords(i64 noundef %2, i64 noundef 32, ptr noundef nonnull %i.b) #23 ; 10 uses
  %i.d = shl i64 %i.c, 1                          ; 3 uses
  %i.e = icmp ult i64 %i.d, 256
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !tbaa !37
  %i.f = shl i64 %i.c, 3
  %i.g = alloca i8, i64 %i.f, align 16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.h, label %bb.e, label %rb_alloc_tmp_buffer2.exit, !prof !65

bb.e:                                             ; preds = %bb.d
  call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.d, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.d
  %i.i = shl i64 %i.c, 3
  %i.j = and i64 %i.c, 2305843009213693951
  %i.k = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.i, i64 noundef %i.j) #28
  br label %bb.f

bb.f:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.c
  %i.l = phi ptr [ %i.g, %bb.c ], [ %i.k, %rb_alloc_tmp_buffer2.exit ] ; 3 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !37
  %i.n = trunc i64 %i.m to i32
  %i.o = lshr i32 -1, %i.n                        ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.c ; 8 uses
  %i.q = call i32 @rb_integer_pack(i64 noundef %2, ptr noundef nonnull %i.l, i64 noundef %i.c, i64 noundef 4, i64 noundef 0, i32 noundef 65) #23 ; 0 uses
  %i.r = shl i64 %i.c, 2                          ; 2 uses
  %i.s = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef %i.p, i64 noundef %i.r) ; 0 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !19
  %i.u = and i32 %i.t, %i.o
  store i32 %i.u, ptr %i.p, align 4, !tbaa !19
  %.not45 = icmp eq i64 %i.c, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.f, %.lr.ph.us.backedge
  %.041.us = phi i64 [ %.041.us.be, %.lr.ph.us.backedge ], [ 0, %bb.f ] ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %i.l, i64 %.041.us
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19   ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.p, i64 %.041.us
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19   ; 2 uses
  %i.z = icmp ult i32 %i.w, %i.y
  br i1 %i.z, label %.loopexit.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.us
  %i.aa = icmp uge i32 %i.y, %i.w
  %i.ab = add nuw i64 %.041.us, 1                 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.c
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond, label %.lr.ph.us.backedge, label %._crit_edge

.lr.ph.us.backedge:                               ; preds = %bb.g, %.loopexit.us
  %.041.us.be = phi i64 [ %i.ab, %bb.g ], [ 0, %.loopexit.us ]
  br label %.lr.ph.us, !llvm.loop !105

.loopexit.us:                                     ; preds = %.lr.ph.us
  %i.ad = call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef nonnull %i.p, i64 noundef %i.r) ; 0 uses
  %i.ae = load i32, ptr %i.p, align 4, !tbaa !19
  %i.af = and i32 %i.ae, %i.o
  store i32 %i.af, ptr %i.p, align 4, !tbaa !19
  br label %.lr.ph.us.backedge

._crit_edge:                                      ; preds = %bb.g, %bb.f
end_hunk_0
