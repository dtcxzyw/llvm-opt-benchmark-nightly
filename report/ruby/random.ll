Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/random?download=true
inline.NumInlined: 245
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@rb_random_ulong_limited:bb.a
  br i1 %i.j, label %try_get_rnd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not12.i = icmp eq ptr %i.l, null
  br i1 %.not12.i, label %bb.f, label %try_get_rnd.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = inttoptr i64 %i.i to ptr
  %i.n = load i64, ptr @rb_eArgError, align 8, !tbaa !37
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.25, ptr noundef %i.o) #25
  unreachable

try_get_rnd.exit:                                 ; preds = %bb.d
  %i.p = tail call fastcc ptr @rand_start(ptr noundef %i.l, i64 noundef %0) ; 0 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %try_get_rnd.exit.thread25, label %try_get_rnd.exit.thread

try_get_rnd.exit.thread25:                        ; preds = %bb.c, %try_get_rnd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.q = add i64 %1, 1                            ; 3 uses
  %i.r = icmp ult i64 %i.q, 4611686018427387904
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %try_get_rnd.exit.thread25
  %i.s = shl nuw nsw i64 %i.q, 1
  %i.t = or disjoint i64 %i.s, 1
  br label %ulong_to_num_plus_1.exit

bb.h:                                             ; preds = %try_get_rnd.exit.thread25
  %i.u = tail call i64 @rb_ull2inum(i64 noundef %i.q) #23
  br label %ulong_to_num_plus_1.exit

ulong_to_num_plus_1.exit:                         ; preds = %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.t, %bb.g ], [ %i.u, %bb.h ]
  store i64 %.0.i.i, ptr %i.a, align 8, !tbaa !37
  %i.v = load i64, ptr @id_rand, align 8, !tbaa !37
  %i.w = call i64 @rb_funcallv_public(i64 noundef %0, i64 noundef %i.v, i32 noundef 1, ptr noundef nonnull %i.a) #23
  %i.x = call i64 @rb_to_int(i64 noundef %i.w) #23 ; 4 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ulong_to_num_plus_1.exit
  %i.z = ashr i64 %i.x, 1
  br label %rb_num2ulong_inline.exit

bb.j:                                             ; preds = %ulong_to_num_plus_1.exit
  %i.aa = call i64 @rb_num2ulong(i64 noundef %i.x) #23
  br label %rb_num2ulong_inline.exit

rb_num2ulong_inline.exit:                         ; preds = %bb.i, %bb.j
  %.0.i18 = phi i64 [ %i.z, %bb.i ], [ %i.aa, %bb.j ] ; 4 uses
  %i.ab = call i32 @rb_num_negative_p(i64 noundef %i.x) #23
  %.not17 = icmp eq i32 %i.ab, 0
  br i1 %.not17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rb_num2ulong_inline.exit
  %i.ac = load i64, ptr @rb_eRangeError, align 8, !tbaa !37
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ac, ptr noundef nonnull @.str.3, i64 noundef %.0.i18) #25
  unreachable

bb.l:                                             ; preds = %rb_num2ulong_inline.exit
  %i.ad = icmp ugt i64 %.0.i18, %1
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr @rb_eRangeError, align 8, !tbaa !37
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.4, i64 noundef %.0.i18) #25
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %limited_rand.exit

try_get_rnd.exit.thread:                          ; preds = %bb.e, %bb.b, %try_get_rnd.exit
  %.0.i24 = phi ptr [ %i.l, %try_get_rnd.exit ], [ %i.l, %bb.e ], [ %i.d, %bb.b ] ; 6 uses
  %i.af = load ptr, ptr @default_rand_key, align 8, !tbaa !22
  %i.ag = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.af) #23 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %default_rand.exit.i

bb.o:                                             ; preds = %try_get_rnd.exit.thread
  %i.ai = tail call noalias nonnull dereferenceable(2520) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2520) #24 ; 2 uses
  %i.aj = load ptr, ptr @default_rand_key, align 8, !tbaa !22
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.aj, ptr noundef nonnull %i.ai) #23
  br label %default_rand.exit.i

default_rand.exit.i:                              ; preds = %bb.o, %try_get_rnd.exit.thread
  %.0.i.i19 = phi ptr [ %i.ai, %bb.o ], [ %i.ag, %try_get_rnd.exit.thread ]
  %i.ak = icmp eq ptr %.0.i24, %.0.i.i19
  br i1 %i.ak, label %try_rand_if.exit, label %bb.p

bb.p:                                             ; preds = %default_rand.exit.i
  %i.al = inttoptr i64 %0 to ptr
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !40
  %i.ao = and i64 %i.an, -2
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48
  br label %try_rand_if.exit

try_rand_if.exit:                                 ; preds = %default_rand.exit.i, %bb.p
  %.0.i20 = phi ptr [ %i.ar, %bb.p ], [ @random_mt_if, %default_rand.exit.i ]
  %.not.i21 = icmp eq i64 %1, 0
  br i1 %.not.i21, label %limited_rand.exit, label %bb.q

bb.q:                                             ; preds = %try_rand_if.exit
  %i.as = lshr i64 %1, 1
  %i.at = or i64 %i.as, %1                        ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = or i64 %i.au, %i.at                     ; 2 uses
  %i.aw = lshr i64 %i.av, 4
  %i.ax = or i64 %i.aw, %i.av                     ; 2 uses
  %i.ay = lshr i64 %i.ax, 8
  %i.az = or i64 %i.ay, %i.ax                     ; 2 uses
  %i.ba = lshr i64 %i.az, 16
  %i.bb = or i64 %i.ba, %i.az                     ; 3 uses
  %i.bc = lshr i64 %i.bb, 32
  %i.bd = or i64 %i.bc, %i.bb
  %.fr37 = freeze i64 %i.bd                       ; 6 uses
  %i.be = icmp ugt i64 %1, 4294967295
  %i.bf = getelementptr i8, ptr %.0.i20, i64 32   ; 5 uses
  br i1 %i.be, label %.preheader.i, label %.preheader29.i

.preheader.i:                                     ; preds = %bb.q
  %.not27.i = icmp ult i64 %i.bb, 4294967296
  %i.bg = and i64 %.fr37, 4294967295
  %.not27.1.i = icmp eq i64 %i.bg, 0              ; 2 uses
  br i1 %.not27.i, label %.preheader.i.split.us, label %.preheader.i.split

.preheader.i.split.us:                            ; preds = %.preheader.i
  br i1 %.not27.1.i, label %limited_rand.exit, label %limited_rand.exit.loopexit

.preheader.i.split:                               ; preds = %.preheader.i
  br i1 %.not27.1.i, label %.loopexit28.i.us29, label %.loopexit28.i

.loopexit28.i.us29:                               ; preds = %.preheader.i.split, %.loopexit28.i.us29
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !52
  %i.bi = tail call i32 %i.bh(ptr noundef nonnull %.0.i24) #23, !inline_history !2
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw i64 %i.bj, 32
  %i.bl = and i64 %i.bk, %.fr37                   ; 2 uses
  %i.bm = icmp ult i64 %1, %i.bl
  br i1 %i.bm, label %.loopexit28.i.us29, label %limited_rand.exit

.loopexit28.i:                                    ; preds = %.preheader.i.split, %.loopexit28.i.backedge
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !52
  %i.bo = tail call i32 %i.bn(ptr noundef nonnull %.0.i24) #23, !inline_history !2
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw i64 %i.bp, 32                   ; 2 uses
  %i.br = and i64 %i.bq, %.fr37
  %i.bs = icmp ult i64 %1, %i.br
  br i1 %i.bs, label %.loopexit28.i.backedge, label %bb.r

bb.r:                                             ; preds = %.loopexit28.i
  %i.bt = load ptr, ptr %i.bf, align 8, !tbaa !52
  %i.bu = tail call i32 %i.bt(ptr noundef nonnull %.0.i24) #23, !inline_history !2
  %i.bv = zext i32 %i.bu to i64
  %i.bw = or disjoint i64 %i.bq, %i.bv
  %i.bx = and i64 %i.bw, %.fr37                   ; 2 uses
  %i.by = icmp ult i64 %1, %i.bx
  br i1 %i.by, label %.loopexit28.i.backedge, label %limited_rand.exit

.loopexit28.i.backedge:                           ; preds = %bb.r, %.loopexit28.i
  br label %.loopexit28.i

.preheader29.i:                                   ; preds = %bb.q, %.preheader29.i
  %i.bz = load ptr, ptr %i.bf, align 8, !tbaa !52
  %i.ca = tail call i32 %i.bz(ptr noundef nonnull %.0.i24) #23, !inline_history !2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = and i64 %.fr37, %i.cb                   ; 2 uses
  %i.cd = icmp samesign ult i64 %1, %i.cc
  br i1 %i.cd, label %.preheader29.i, label %limited_rand.exit, !llvm.loop !0

limited_rand.exit.loopexit:                       ; preds = %.preheader.i.split.us
  %i.ce = load ptr, ptr %i.bf, align 8, !tbaa !52
  %i.cf = tail call i32 %i.ce(ptr noundef nonnull %.0.i24) #23, !inline_history !2
  %i.cg = zext i32 %i.cf to i64
  %i.ch = and i64 %.fr37, %i.cg
  br label %limited_rand.exit

limited_rand.exit:                                ; preds = %.preheader29.i, %bb.r, %.loopexit28.i.us29, %limited_rand.exit.loopexit, %.preheader.i.split.us, %try_rand_if.exit, %bb.n
  %.0 = phi i64 [ %.0.i18, %bb.n ], [ 0, %try_rand_if.exit ], [ %i.bx, %bb.r ], [ %i.bl, %.loopexit28.i.us29 ], [ 0, %.preheader.i.split.us ], [ %i.ch, %limited_rand.exit.loopexit ], [ %i.cc, %.preheader29.i ]
  ret i64 %.0
}

declare i64 @rb_to_int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_funcallv_public(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_num_negative_p(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_rand_bytes_int32(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %3, 3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01623 = phi ptr [ %i.c, %.lr.ph ], [ %2, %bb.a ] ; 5 uses
  %.01822 = phi i64 [ %i.d, %.lr.ph ], [ %3, %bb.a ]
  %i.b = tail call i32 %0(ptr noundef %1) #23     ; 4 uses
  %4 = trunc i32 %i.b to i8
  %5 = getelementptr i8, ptr %.01623, i64 1
  store i8 %4, ptr %.01623, align 1, !tbaa !56
  %6 = lshr i32 %i.b, 8
  %7 = trunc i32 %6 to i8
  %8 = getelementptr i8, ptr %.01623, i64 2
  store i8 %7, ptr %5, align 1, !tbaa !56
  %9 = lshr i32 %i.b, 16
  %10 = trunc i32 %9 to i8
  %11 = getelementptr i8, ptr %.01623, i64 3
  store i8 %10, ptr %8, align 1, !tbaa !56
  %12 = lshr i32 %i.b, 24
  %13 = trunc nuw i32 %12 to i8
  %i.c = getelementptr i8, ptr %.01623, i64 4     ; 2 uses
  store i8 %13, ptr %11, align 1, !tbaa !56
  %i.d = add i64 %.01822, -4                      ; 3 uses
  %i.e = icmp ugt i64 %i.d, 3
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.018.lcssa = phi i64 [ %3, %bb.a ], [ %i.d, %.lr.ph ] ; 3 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %i.c, %.lr.ph ] ; 3 uses
  %.not = icmp eq i64 %.018.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = tail call i32 %0(ptr noundef %1) #23     ; 3 uses
  %i.g = trunc i32 %i.f to i8
  store i8 %i.g, ptr %.016.lcssa, align 1, !tbaa !56
  %.not20 = icmp eq i64 %.018.lcssa, 1
  br i1 %.not20, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i32 %i.f, 8
  %i.i = getelementptr i8, ptr %.016.lcssa, i64 1
  %i.j = trunc i32 %i.h to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !56
  %.not20.1 = icmp eq i64 %.018.lcssa, 2
  br i1 %.not20.1, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i32 %i.f, 16
  %i.l = getelementptr i8, ptr %.016.lcssa, i64 2
  %i.m = trunc i32 %i.k to i8
  store i8 %i.m, ptr %i.l, align 1, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_random_bytes(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cRandom, align 8, !tbaa !37
  %i.b = icmp eq i64 %0, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc nonnull ptr @default_mt()
  br label %try_get_rnd.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %0, ptr noundef nonnull @rb_random_data_type_1_0) #23
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %try_get_rnd.exit.thread13, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = and i64 %i.g, -2                         ; 2 uses
  %i.i = icmp eq i64 %i.h, ptrtoint (ptr @random_mt_type to i64)
  %i.j = getelementptr i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 5 uses
  br i1 %i.i, label %try_get_rnd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not12.i = icmp eq ptr %i.k, null
  br i1 %.not12.i, label %bb.f, label %try_get_rnd.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = inttoptr i64 %i.h to ptr
  %i.m = load i64, ptr @rb_eArgError, align 8, !tbaa !37
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.25, ptr noundef %i.n) #25
  unreachable

try_get_rnd.exit:                                 ; preds = %bb.d
  %i.o = tail call fastcc ptr @rand_start(ptr noundef %i.k, i64 noundef %0) ; 0 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %try_get_rnd.exit.thread13, label %try_get_rnd.exit.thread

try_get_rnd.exit.thread13:                        ; preds = %bb.c, %try_get_rnd.exit
  %i.p = tail call fastcc i64 @obj_random_bytes(i64 noundef %0, ptr noundef null, i64 noundef %1)
  br label %bb.j

try_get_rnd.exit.thread:                          ; preds = %bb.e, %bb.b, %try_get_rnd.exit
  %.0.i12 = phi ptr [ %i.k, %try_get_rnd.exit ], [ %i.k, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %i.q = load ptr, ptr @default_rand_key, align 8, !tbaa !22
  %i.r = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.q) #23 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %default_rand.exit.i

bb.g:                                             ; preds = %try_get_rnd.exit.thread
  %i.t = tail call noalias nonnull dereferenceable(2520) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2520) #24 ; 2 uses
  %i.u = load ptr, ptr @default_rand_key, align 8, !tbaa !22
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.u, ptr noundef nonnull %i.t) #23
  br label %default_rand.exit.i

default_rand.exit.i:                              ; preds = %bb.g, %try_get_rnd.exit.thread
  %.0.i.i = phi ptr [ %i.t, %bb.g ], [ %i.r, %try_get_rnd.exit.thread ]
  %i.v = icmp eq ptr %.0.i12, %.0.i.i
  br i1 %i.v, label %try_rand_if.exit, label %bb.h

bb.h:                                             ; preds = %default_rand.exit.i
  %i.w = inttoptr i64 %0 to ptr
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !40
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  br label %try_rand_if.exit

try_rand_if.exit:                                 ; preds = %default_rand.exit.i, %bb.h
  %.0.i9 = phi ptr [ %i.ac, %bb.h ], [ @random_mt_if, %default_rand.exit.i ]
  %i.ad = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %1) #23, !callees !4, !inline_history !5 ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !54
  %i.ag = and i64 %i.af, 8192
  %.not.i.i = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr i8, ptr %i.ae, i64 24     ; 2 uses
  br i1 %.not.i.i, label %rand_bytes.exit, label %bb.i

bb.i:                                             ; preds = %try_rand_if.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56
  br label %rand_bytes.exit

rand_bytes.exit:                                  ; preds = %try_rand_if.exit, %bb.i
  %i.aj = phi ptr [ %i.ai, %bb.i ], [ %i.ah, %try_rand_if.exit ]
  %i.ak = getelementptr i8, ptr %.0.i9, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !58
  tail call void %i.al(ptr noundef nonnull %.0.i12, ptr noundef %i.aj, i64 noundef %1) #23, !inline_history !5
  br label %bb.j

bb.j:                                             ; preds = %rand_bytes.exit, %try_get_rnd.exit.thread13
  %.0 = phi i64 [ %i.ad, %rand_bytes.exit ], [ %i.p, %try_get_rnd.exit.thread13 ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden i64 @ruby_sip_hash13(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = and i64 %2, 7
  %i.b = and i64 %2, -8                           ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 %i.b       ; 8 uses
  %i.d = load i32, ptr %0, align 1
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 1
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = or disjoint i64 %i.i, %i.e               ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 1
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw i64 %i.p, 32
  %i.r = or disjoint i64 %i.q, %i.m               ; 2 uses
  %i.s = xor i64 %i.j, 8317987319222330741        ; 2 uses
  %i.t = xor i64 %i.r, 7237128888997146477        ; 2 uses
  %i.u = xor i64 %i.j, 7816392313619706465        ; 2 uses
  %i.v = xor i64 %i.r, 8387220255154660723        ; 2 uses
  %.not208 = icmp eq i64 %i.b, 0
  br i1 %.not208, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0213 = phi ptr [ %i.w, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.0203212 = phi i64 [ %i.al, %.lr.ph ], [ %i.v, %bb.a ]
  %.0204211 = phi i64 [ %i.am, %.lr.ph ], [ %i.u, %bb.a ]
  %.0205210 = phi i64 [ %i.ak, %.lr.ph ], [ %i.t, %bb.a ] ; 3 uses
  %.0206209 = phi i64 [ %i.an, %.lr.ph ], [ %i.s, %bb.a ]
  %i.w = getelementptr i8, ptr %.0213, i64 8      ; 2 uses
  %i.x = load i64, ptr %.0213, align 8, !tbaa !37 ; 2 uses
  %i.y = xor i64 %i.x, %.0203212                  ; 3 uses
  %i.z = add i64 %.0205210, %.0206209             ; 3 uses
  %i.aa = add i64 %i.y, %.0204211                 ; 2 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %.0205210, i64 %.0205210, i64 13)
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ad = xor i64 %i.ab, %i.z                     ; 3 uses
  %i.ae = xor i64 %i.ac, %i.aa                    ; 3 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 32)
  %i.ag = add i64 %i.aa, %i.ad                    ; 3 uses
  %i.ah = add i64 %i.ae, %i.af                    ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 17)
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 21)
  %i.ak = xor i64 %i.ag, %i.ai                    ; 2 uses
  %i.al = xor i64 %i.aj, %i.ah                    ; 2 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 32) ; 2 uses
  %i.an = xor i64 %i.ah, %i.x                     ; 2 uses
  %.not = icmp eq ptr %i.w, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0206.lcssa = phi i64 [ %i.s, %bb.a ], [ %i.an, %.lr.ph ]
  %.0205.lcssa = phi i64 [ %i.t, %bb.a ], [ %i.ak, %.lr.ph ] ; 3 uses
  %.0204.lcssa = phi i64 [ %i.u, %bb.a ], [ %i.am, %.lr.ph ]
  %.0203.lcssa = phi i64 [ %i.v, %bb.a ], [ %i.al, %.lr.ph ]
  %i.ao = shl i64 %2, 56                          ; 8 uses
  switch i64 %i.a, label %default.unreachable220 [
    i64 7, label %bb.b
    i64 6, label %bb.c
end_hunk_0
