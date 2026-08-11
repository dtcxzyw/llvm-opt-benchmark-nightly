inline.NumInlined: 1165
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@bpf_skb_load_helper_32_no_cache:bb.a
  %i.i = load i32, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i32 0, ptr %i.a, align 4, !annotation !12
  %i.j = icmp sgt i32 %i.c, -1
  br i1 %i.j, label %bpf_skb_load_helper_convert_offset.exit.thread3, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i32 %i.c, -1048577
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.c, 1048576
  %i.m = getelementptr i8, ptr %i.b, i64 184
  %.val.i.i = load i16, ptr %i.m, align 8
  br label %bpf_skb_load_helper_convert_offset.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp samesign ugt i32 %i.c, -2097153
  br i1 %i.n, label %bb.e, label %____bpf_skb_load_helper_32_no_cache.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.b, i64 186
  %.val.i = load i16, ptr %i.o, align 2           ; 2 uses
  %.not12.i = icmp eq i16 %.val.i, -1
  br i1 %.not12.i, label %____bpf_skb_load_helper_32_no_cache.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.c, 2097152
  br label %bpf_skb_load_helper_convert_offset.exit

bpf_skb_load_helper_convert_offset.exit:          ; preds = %bb.c, %bb.f
  %.val.sink.i = phi i16 [ %.val.i, %bb.f ], [ %.val.i.i, %bb.c ]
  %.sink.i = phi i32 [ %i.p, %bb.f ], [ %i.l, %bb.c ]
  %i.q = getelementptr i8, ptr %i.b, i64 200
  %.val2.i11.i = load ptr, ptr %i.q, align 8
  %i.r = zext i16 %.val.sink.i to i64
  %i.s = getelementptr i8, ptr %.val2.i11.i, i64 %i.r
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.e to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = add i32 %.sink.i, %i.w                   ; 2 uses
  %i.y = icmp eq i32 %i.x, -2147483648
  br i1 %i.y, label %____bpf_skb_load_helper_32_no_cache.exit, label %bpf_skb_load_helper_convert_offset.exit.thread3

bpf_skb_load_helper_convert_offset.exit.thread3:  ; preds = %bb.a, %bpf_skb_load_helper_convert_offset.exit
  %.0.i5 = phi i32 [ %i.x, %bpf_skb_load_helper_convert_offset.exit ], [ %i.c, %bb.a ] ; 3 uses
  %i.z = add i32 %i.i, %.0.i5
  %i.aa = sub i32 %i.g, %i.z
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bpf_skb_load_helper_convert_offset.exit.thread3
  %i.ac = sext i32 %.0.i5 to i64
  %i.ad = getelementptr i8, ptr %i.e, i64 %i.ac
  %.val = load i32, ptr %i.ad, align 1
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %.val)
  %i.af = zext i32 %i.ae to i64
  br label %____bpf_skb_load_helper_32_no_cache.exit

bb.h:                                             ; preds = %bpf_skb_load_helper_convert_offset.exit.thread3
  %i.ag = call i32 @skb_copy_bits(ptr noundef %i.b, i32 noundef %.0.i5, ptr noundef nonnull %i.a, i32 noundef 4) #40
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %bb.i, label %____bpf_skb_load_helper_32_no_cache.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.a, align 4
  %i.ai = call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = zext i32 %i.ai to i64
  br label %____bpf_skb_load_helper_32_no_cache.exit

____bpf_skb_load_helper_32_no_cache.exit:         ; preds = %bb.d, %bb.e, %bpf_skb_load_helper_convert_offset.exit, %bb.g, %bb.h, %bb.i
  %.0.i.i = phi i64 [ %i.aj, %bb.i ], [ %i.af, %bb.g ], [ -14, %bpf_skb_load_helper_convert_offset.exit ], [ -14, %bb.h ], [ -14, %bb.e ], [ -14, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @sk_filter_uncharge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = shl i32 %i.d, 3
  %i.f = add i32 %i.e, 96
  %i.g = getelementptr i8, ptr %0, i64 360        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.g, i32 %i.f, ptr elementtype(i32) %i.g) #39, !srcloc !29
  %i.h = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %1, i32 -1, ptr elementtype(i32) %1) #39, !srcloc !30 ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.h, 1
  br i1 %i.j, label %bb.c, label %sk_filter_release.exit, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #40
  br label %sk_filter_release.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #39, !srcloc !31
  %i.k = getelementptr i8, ptr %1, i64 8
  tail call void @call_rcu(ptr noundef %i.k, ptr noundef nonnull @sk_filter_release_rcu) #40
  br label %sk_filter_release.exit

sk_filter_release.exit:                           ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @sk_filter_charge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i32, ptr %1, align 4       ; 2 uses
  %.old1.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.old1.not.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.g, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = add i32 %.0.i.i.i, 1
  %i.c = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %1, i32 %i.b, ptr elementtype(i32) %1, i32 %.0.i.i.i) #39, !srcloc !32 ; 2 uses
  %i.d = extractvalue { i8, i32 } %i.c, 0         ; 2 uses
  %i.e = icmp ult i8 %i.d, 2
  tail call void @llvm.assume(i1 %i.e)
  %i.f = trunc nuw i8 %i.d to i1
  br i1 %i.f, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !21

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.preheader.i.i.i
  %i.g = extractvalue { i8, i32 } %i.c, 1         ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !33

arch_atomic_try_cmpxchg.exit.thread.i.i.i:        ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %.preheader.i.i.i, %bb.a
  %.2.i.i.i = phi i32 [ 0, %bb.a ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.i = add i32 %.2.i.i.i, 1
  %i.j = or i32 %i.i, %.2.i.i.i
  %.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i.i, label %refcount_inc_not_zero.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 0) #40
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i, %bb.b
  %.not = icmp eq i32 %.2.i.i.i, 0
  br i1 %.not, label %sk_filter_release.exit, label %bb.c

bb.c:                                             ; preds = %refcount_inc_not_zero.exit
  %i.k = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val.i, i64 696
  %i.m = load volatile i32, ptr %i.l, align 8     ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = shl i32 %i.q, 3
  %i.s = add i32 %i.r, 96                         ; 3 uses
  %.not.i = icmp ugt i32 %i.s, %i.m
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %0, i64 360        ; 3 uses
  %i.u = load volatile i32, ptr %i.t, align 8
  %i.v = add i32 %i.u, %i.s
  %i.w = icmp ult i32 %i.v, %i.m
  br i1 %i.w, label %__sk_filter_charge.exit, label %bb.e

__sk_filter_charge.exit:                          ; preds = %bb.d
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.t, i32 %i.s, ptr elementtype(i32) %i.t) #39, !srcloc !35
  br label %sk_filter_release.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %1, i32 -1, ptr elementtype(i32) %1) #39, !srcloc !30 ; 2 uses
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp slt i32 %i.x, 1
  br i1 %i.z, label %bb.g, label %sk_filter_release.exit, !prof !19

bb.g:                                             ; preds = %bb.f
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #40
  br label %sk_filter_release.exit

bb.h:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #39, !srcloc !31
  %i.aa = getelementptr i8, ptr %1, i64 8
  tail call void @call_rcu(ptr noundef %i.aa, ptr noundef nonnull @sk_filter_release_rcu) #40
  br label %sk_filter_release.exit

sk_filter_release.exit:                           ; preds = %bb.h, %bb.g, %bb.f, %__sk_filter_charge.exit, %refcount_inc_not_zero.exit
  %.0 = phi i1 [ false, %refcount_inc_not_zero.exit ], [ true, %__sk_filter_charge.exit ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @bpf_prog_create(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i16, ptr %1, align 8                ; 3 uses
  %i.b = zext i16 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  %i.g = add i16 %i.a, -1
  %or.cond.i = icmp ult i16 %i.g, 4096
  %.0.i = select i1 %i.f, i1 %or.cond.i, i1 false
  br i1 %.0.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw i16 %i.a, 3
  %i.i = zext i16 %i.h to i32
  %i.j = add nuw nsw i32 %i.i, 96
  %i.k = tail call ptr @bpf_prog_alloc(i32 noundef %i.j, i32 noundef 0) #40 ; 5 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 4 %i.m, i64 %i.c, i1 false)
  %i.n = load i16, ptr %1, align 8
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr i8, ptr %i.k, i64 12
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %i.k, i64 88
  store ptr null, ptr %i.q, align 8
  %i.r = tail call fastcc ptr @bpf_prepare_filter(ptr noundef %i.k, ptr noundef null) #42, !srcloc !36 ; 3 uses
  %i.s = icmp ugt ptr %i.r, inttoptr (i64 -4096 to ptr)
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = trunc i64 %i.t to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.r, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ %i.u, %bb.d ], [ 0, %bb.e ], [ -22, %bb.a ], [ -12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @bpf_prog_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @bpf_prepare_filter(ptr noundef nonnull initializes((72, 80)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 72
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 2          ; 3 uses
  %i.f = load i16, ptr %i.e, align 2
  %i.g = and i16 %i.f, -2
  store i16 %i.g, ptr %i.e, align 2
  %i.h = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.i = getelementptr i8, ptr %0, i64 12         ; 3 uses
  %i.j = load i32, ptr %i.i, align 4              ; 9 uses
  %.not.i = icmp eq i32 %i.j, 0                   ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %.02840.i = phi i32 [ %i.ar, %.critedge.i ], [ 0, %bb.a ] ; 4 uses
  %i.k = sext i32 %.02840.i to i64
  %i.l = getelementptr [8 x i8], ptr %i.h, i64 %i.k ; 8 uses
  %i.m = load i16, ptr %i.l, align 4              ; 3 uses
  %i.n = icmp ugt i16 %i.m, 177
  br i1 %i.n, label %bpf_check_classic.exit.thread, label %chk_code_allowed.exit.i

chk_code_allowed.exit.i:                          ; preds = %.lr.ph.i
  %i.o = zext nneg i16 %i.m to i64
  %i.p = getelementptr i8, ptr @chk_code_allowed.codes, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !range !37, !noundef !38
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bpf_check_classic.exit.thread

bb.b:                                             ; preds = %chk_code_allowed.exit.i
  %trunc.i = trunc nuw i16 %i.m to i8
  switch i8 %trunc.i, label %.critedge.i [
    i8 52, label %bb.c
    i8 -108, label %bb.c
    i8 100, label %bb.d
    i8 116, label %bb.d
    i8 96, label %bb.e
    i8 97, label %bb.e
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 5, label %bb.f
    i8 21, label %bb.g
    i8 29, label %bb.g
    i8 53, label %bb.g
    i8 61, label %bb.g
    i8 37, label %bb.g
    i8 45, label %bb.g
    i8 69, label %bb.g
    i8 77, label %bb.g
    i8 32, label %bb.i
    i8 40, label %bb.i
    i8 48, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.s = getelementptr i8, ptr %i.l, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bpf_check_classic.exit.thread, label %.critedge.i

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.v = getelementptr i8, ptr %i.l, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp ugt i32 %i.w, 31
  br i1 %i.x, label %bpf_check_classic.exit.thread, label %.critedge.i

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.y = getelementptr i8, ptr %i.l, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp ugt i32 %i.z, 15
  br i1 %i.aa, label %bpf_check_classic.exit.thread, label %.critedge.i

bb.f:                                             ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %i.l, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = xor i32 %.02840.i, -1
  %i.ae = add i32 %i.j, %i.ad
  %.not34.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not34.i, label %.critedge.i, label %bpf_check_classic.exit.thread

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.af = getelementptr i8, ptr %i.l, i64 2
  %i.ag = load i8, ptr %i.af, align 2
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nuw i32 %.02840.i, 1                ; 2 uses
  %i.aj = add i32 %i.ai, %i.ah
  %.not32.i = icmp ult i32 %i.aj, %i.j
  br i1 %.not32.i, label %bb.h, label %bpf_check_classic.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %i.l, i64 3
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = add i32 %i.ai, %i.am
  %.not33.i = icmp ult i32 %i.an, %i.j
  br i1 %.not33.i, label %.critedge.i, label %bpf_check_classic.exit.thread

bb.i:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.ao = getelementptr i8, ptr %i.l, i64 4
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  switch i32 %i.ap, label %bpf_anc_helper.exit.i [
    i32 -4096, label %.critedge.i
    i32 -4092, label %.critedge.i
    i32 -4088, label %.critedge.i
    i32 -4084, label %.critedge.i
    i32 -4080, label %.critedge.i
    i32 -4076, label %.critedge.i
    i32 -4072, label %.critedge.i
    i32 -4068, label %.critedge.i
    i32 -4064, label %.critedge.i
    i32 -4060, label %.critedge.i
    i32 -4056, label %.critedge.i
    i32 -4052, label %.critedge.i
    i32 -4048, label %.critedge.i
    i32 -4044, label %.critedge.i
    i32 -4040, label %.critedge.i
    i32 -4036, label %.critedge.i
  ]

bpf_anc_helper.exit.i:                            ; preds = %bb.i
  %i.aq = icmp ugt i32 %i.ap, -4097
  br i1 %i.aq, label %bpf_check_classic.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bpf_anc_helper.exit.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ar = add nuw i32 %.02840.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ar, %i.j
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !39

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.a
  %i.as = add i32 %i.j, -1
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load i16, ptr %i.au, align 4
  switch i16 %i.av, label %bpf_check_classic.exit.thread [
    i16 6, label %bb.j
    i16 22, label %bb.j
  ]

bb.j:                                             ; preds = %._crit_edge.i, %._crit_edge.i
  %i.aw = icmp slt i32 %i.j, 0
  br i1 %i.aw, label %bpf_check_classic.exit.thread, label %_kmalloc_array_noprof.exit.i.i, !prof !19

_kmalloc_array_noprof.exit.i.i:                   ; preds = %bb.j
  %i.ax = shl nuw i32 %i.j, 1
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@bpf_tcp_gen_syncookie:bb.a
  %i.q = load volatile i8, ptr %i.p, align 2
  %.not30.i = icmp eq i8 %i.q, 10
  br i1 %.not30.i, label %bb.e, label %____bpf_tcp_gen_syncookie.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.b, i64 48
  %.val = load ptr, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.val, i64 1495
  %i.t = load volatile i8, ptr %i.s, align 1
  %.not31.i = icmp eq i8 %i.t, 0
  br i1 %.not31.i, label %____bpf_tcp_gen_syncookie.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = and i16 %i.j, 5888
  %or.cond40.i = icmp ne i16 %i.u, 512
  %i.v = icmp ult i32 %i.d, 20
  %or.cond41.i = or i1 %i.v, %or.cond40.i
  br i1 %or.cond41.i, label %____bpf_tcp_gen_syncookie.exit, label %bb.g, !prof !99

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.c, align 4
  %i.x = lshr i8 %i.w, 4
  switch i8 %i.x, label %____bpf_tcp_gen_syncookie.exit [
    i8 4, label %bb.h
    i8 6, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.b, i64 16
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = icmp eq i16 %i.z, 10
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.b, i64 19
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, 32
  %.not37.i = icmp eq i8 %i.ad, 0
  br i1 %.not37.i, label %bb.j, label %____bpf_tcp_gen_syncookie.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = call zeroext i16 @tcp_v4_get_syncookie(ptr noundef nonnull %i.b, ptr noundef %i.c, ptr noundef %i.e, ptr noundef nonnull %i.a) #40
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.af = icmp ult i32 %i.d, 40
  br i1 %i.af, label %____bpf_tcp_gen_syncookie.exit, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %i.b, i64 16
  %i.ah = load i16, ptr %i.ag, align 8
  %.not36.i = icmp eq i16 %i.ah, 10
  br i1 %.not36.i, label %bb.m, label %____bpf_tcp_gen_syncookie.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = call zeroext i16 @tcp_v6_get_syncookie(ptr noundef nonnull %i.b, ptr noundef %i.c, ptr noundef %i.e, ptr noundef nonnull %i.a) #40
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.028.i = phi i16 [ %i.ae, %bb.j ], [ %i.ai, %bb.m ] ; 2 uses
  %i.aj = icmp eq i16 %.028.i, 0
  br i1 %i.aj, label %____bpf_tcp_gen_syncookie.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = zext i16 %.028.i to i64
  %i.an = shl nuw nsw i64 %i.am, 32
  %i.ao = or disjoint i64 %i.an, %i.al
  br label %____bpf_tcp_gen_syncookie.exit

____bpf_tcp_gen_syncookie.exit:                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.i, %bb.k, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ -22, %bb.c ], [ -22, %bb.b ], [ -2, %bb.e ], [ -22, %bb.f ], [ -22, %bb.l ], [ -22, %bb.a ], [ -93, %bb.g ], [ %i.ao, %bb.o ], [ -22, %bb.i ], [ -22, %bb.k ], [ -2, %bb.n ], [ -22, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -101, 1) i64 @bpf_sk_assign(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i64 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 6 uses
  %i.c = icmp eq i64 %1, 0
  %i.d = icmp ne i64 %2, 0
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %____bpf_sk_assign.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 129
  %.val5 = load i32, ptr %i.e, align 1
  %i.f = and i32 %.val5, 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %____bpf_sk_assign.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 264
  %.val4 = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.b, i64 48
  %.val = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %.val4, %.val
  br i1 %.not.i, label %bb.d, label %____bpf_sk_assign.exit, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.b, i64 112
  %.val6 = load ptr, ptr %i.k, align 8
  %.not.i.i = icmp eq ptr %.val6, null
  br i1 %.not.i.i, label %____bpf_sk_assign.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.b, i64 18
  %i.m = load volatile i8, ptr %i.l, align 2
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw i32 1, %i.n
  %i.p = and i32 %i.o, -4161
  %.not.i7 = icmp eq i32 %i.p, 0
  br i1 %.not.i7, label %sk_is_refcounted.exit.thread, label %sk_is_refcounted.exit

sk_is_refcounted.exit:                            ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.b, i64 96
  %i.r = load volatile i64, ptr %i.q, align 8
  %.in.i.in.i = and i64 %i.r, 8388608
  %.in.i.not.i = icmp eq i64 %.in.i.in.i, 0
  br i1 %.in.i.not.i, label %sk_is_refcounted.exit.thread, label %bb.g

sk_is_refcounted.exit.thread:                     ; preds = %bb.e, %sk_is_refcounted.exit
  %i.s = getelementptr i8, ptr %i.b, i64 128      ; 4 uses
  %i.t = load volatile i32, ptr %i.s, align 8     ; 2 uses
  %.old1.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.old1.not.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %sk_is_refcounted.exit.thread, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.z, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.t, %sk_is_refcounted.exit.thread ] ; 3 uses
  %i.u = add i32 %.0.i.i.i, 1
  %i.v = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s, i32 %i.u, ptr elementtype(i32) %i.s, i32 %.0.i.i.i) #39, !srcloc !32 ; 2 uses
  %i.w = extractvalue { i8, i32 } %i.v, 0         ; 2 uses
  %i.x = icmp ult i8 %i.w, 2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = trunc nuw i8 %i.w to i1
  br i1 %i.y, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !21

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.preheader.i.i.i
  %i.z = extractvalue { i8, i32 } %i.v, 1         ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !33

arch_atomic_try_cmpxchg.exit.thread.i.i.i:        ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %.preheader.i.i.i, %sk_is_refcounted.exit.thread
  %.2.i.i.i = phi i32 [ 0, %sk_is_refcounted.exit.thread ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.ab = add i32 %.2.i.i.i, 1
  %i.ac = or i32 %i.ab, %.2.i.i.i
  %.not.i.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i.i, label %refcount_inc_not_zero.exit, label %bb.f, !prof !21

bb.f:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.s, i32 noundef 0) #40
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i, %bb.f
  %.not8 = icmp eq i32 %.2.i.i.i, 0
  br i1 %.not8, label %____bpf_sk_assign.exit, label %bb.g, !prof !19

bb.g:                                             ; preds = %refcount_inc_not_zero.exit, %sk_is_refcounted.exit
  %i.ad = getelementptr i8, ptr %i.a, i64 96      ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i3 = icmp eq ptr %i.ae, null
  br i1 %.not.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.ae(ptr noundef %i.a) #40, !inline_history !157
  br label %skb_orphan.exit

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.a, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %.not6.i = icmp eq ptr %i.ag, null
  br i1 %.not6.i, label %skb_orphan.exit, label %bb.j, !prof !21

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "655: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 655b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 655) #39, !srcloc !158
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.5, i32 3396, i32 0, i64 16) #39, !srcloc !159
  unreachable

skb_orphan.exit:                                  ; preds = %bb.h, %bb.i
  %i.ah = getelementptr i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.ah, align 8
  store ptr @sock_pfree, ptr %i.ad, align 8
  br label %____bpf_sk_assign.exit

____bpf_sk_assign.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %refcount_inc_not_zero.exit, %skb_orphan.exit
  %.0.i = phi i64 [ -22, %bb.a ], [ -95, %bb.b ], [ -101, %bb.c ], [ -95, %bb.d ], [ 0, %skb_orphan.exit ], [ -2, %refcount_inc_not_zero.exit ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local i64 @bpf_sock_ops_load_hdr_opt(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 %4) #6 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.c = trunc i64 %2 to i32                      ; 3 uses
  %5 = and i64 %3, 1
  %.not.i = icmp eq i64 %5, 0
  %i.d = getelementptr i8, ptr %i.a, i64 48
  %.val = load i8, ptr %i.d, align 8              ; 2 uses
  %i.e = icmp ult i8 %.val, 16
  br i1 %i.e, label %bb.b, label %____bpf_sock_ops_load_hdr_opt.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i32 %i.c, 1
  %.not60.i = icmp ult i64 %3, 2
  %or.cond.i = and i1 %i.f, %.not60.i
  br i1 %or.cond.i, label %bb.c, label %____bpf_sock_ops_load_hdr_opt.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.b, align 1               ; 4 uses
  %i.h = getelementptr i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1               ; 4 uses
  %i.j = zext i8 %i.i to i32
  %i.k = icmp ult i32 %i.c, %i.j
  %i.l = icmp ult i8 %i.g, 2
  %or.cond5.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond5.i, label %____bpf_sock_ops_load_hdr_opt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add i8 %i.g, 3
  %or.cond8.i = icmp ult i8 %i.m, 2
  br i1 %or.cond8.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = and i8 %i.i, -3
  %or.cond11.not.i = icmp eq i8 %i.n, 4
  br i1 %or.cond11.not.i, label %bb.f, label %____bpf_sock_ops_load_hdr_opt.exit

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.b, i64 2
  %i.p = add nsw i8 %i.i, -2
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %.not61.i = icmp eq i8 %i.i, 0
  br i1 %.not61.i, label %bb.h, label %____bpf_sock_ops_load_hdr_opt.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %.052.i = phi ptr [ %i.o, %bb.f ], [ null, %bb.g ]
  %.049.i = phi i8 [ %i.p, %bb.f ], [ 0, %bb.g ]  ; 3 uses
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr i8, ptr %i.a, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %.not.i4 = icmp eq ptr %i.r, null
  br i1 %.not.i4, label %bb.j, label %bpf_sock_ops_get_syn.exit.thread13

bpf_sock_ops_get_syn.exit.thread13:               ; preds = %bb.i
  %i.s = getelementptr i8, ptr %i.r, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.r, i64 182
  %.val61.i = load i16, ptr %i.u, align 2
  %i.v = getelementptr i8, ptr %i.r, i64 200
  %.val62.i = load ptr, ptr %i.v, align 8
  %i.w = zext i16 %.val61.i to i64
  %i.x = getelementptr i8, ptr %.val62.i, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 12
  %.val2.i.i = load i16, ptr %i.y, align 4
  %i.z = lshr i16 %.val2.i.i, 2
  %i.aa = and i16 %i.z, 60
  %i.ab = zext nneg i16 %i.aa to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 18
  %i.ae = load volatile i8, ptr %i.ad, align 2
  %i.af = icmp eq i8 %i.ae, 12
  %.042.in.v.i = select i1 %i.af, i64 208, i64 2328
  %.042.in.i = getelementptr i8, ptr %i.ac, i64 %.042.in.v.i
  %.042.i = load ptr, ptr %.042.in.i, align 8     ; 5 uses
  %.not50.i = icmp eq ptr %.042.i, null
  br i1 %.not50.i, label %bpf_sock_ops_get_syn.exit.thread, label %bpf_sock_ops_get_syn.exit

bpf_sock_ops_get_syn.exit:                        ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %.042.i, i64 12
  %i.ah = load i32, ptr %.042.i, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %i.ag, i64 %i.ai
  %i.ak = getelementptr i8, ptr %.042.i, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr i8, ptr %i.aj, i64 %i.am
  %i.ao = getelementptr i8, ptr %.042.i, i64 8
  %i.ap = load i32, ptr %i.ao, align 4            ; 3 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bpf_sock_ops_get_syn.exit.thread, label %bb.k

bpf_sock_ops_get_syn.exit.thread:                 ; preds = %bb.j, %bpf_sock_ops_get_syn.exit
  %.1.i12 = phi i32 [ %i.ap, %bpf_sock_ops_get_syn.exit ], [ -2, %bb.j ]
  %i.ar = sext i32 %.1.i12 to i64
  br label %____bpf_sock_ops_load_hdr_opt.exit

bb.k:                                             ; preds = %bpf_sock_ops_get_syn.exit.thread13, %bpf_sock_ops_get_syn.exit
  %.1.i17 = phi i32 [ %i.ab, %bpf_sock_ops_get_syn.exit.thread13 ], [ %i.ap, %bpf_sock_ops_get_syn.exit ]
  %.016 = phi ptr [ %i.t, %bpf_sock_ops_get_syn.exit.thread13 ], [ %i.an, %bpf_sock_ops_get_syn.exit ] ; 2 uses
  %i.as = zext nneg i32 %.1.i17 to i64
  %i.at = getelementptr i8, ptr %.016, i64 %i.as
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.au = getelementptr i8, ptr %i.a, i64 32
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not62.i = icmp eq ptr %i.av, null
  %i.aw = icmp eq i8 %.val, 14
  %or.cond = or i1 %i.aw, %.not62.i
  br i1 %or.cond, label %____bpf_sock_ops_load_hdr_opt.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %i.a, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.av, i64 208
  %i.ba = load ptr, ptr %i.az, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.pn.i = phi ptr [ %i.ba, %bb.m ], [ %.016, %bb.k ]
  %.053.i = phi ptr [ %i.ay, %bb.m ], [ %i.at, %bb.k ] ; 4 uses
  %storemerge.i = getelementptr i8, ptr %.pn.i, i64 20 ; 3 uses
  %i.bb = icmp ult ptr %storemerge.i, %.053.i
  br i1 %i.bb, label %.lr.ph.i, label %bpf_search_tcp_opt.exit.thread

.lr.ph.i:                                         ; preds = %bb.n
  %i.bc = ptrtoint ptr %.053.i to i64             ; 2 uses
  %.not.i5 = icmp eq i8 %.049.i, 0
  %i.bd = zext nneg i8 %.049.i to i32
  %i.be = zext nneg i8 %.049.i to i64
  br i1 %.not.i5, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.backedge.us.i
  %.02734.us.i = phi ptr [ %i.bp, %.backedge.us.i ], [ %storemerge.i, %.lr.ph.i ] ; 5 uses
  %i.bf = load i8, ptr %.02734.us.i, align 1      ; 2 uses
  switch i8 %i.bf, label %bb.o [
    i8 0, label %bpf_search_tcp_opt.exit.thread
    i8 1, label %.backedge.us.i
  ]

bb.o:                                             ; preds = %.lr.ph.split.us.i
  %i.bg = ptrtoint ptr %.02734.us.i to i64
  %i.bh = sub i64 %i.bc, %i.bg                    ; 2 uses
  %i.bi = icmp slt i64 %i.bh, 2
  br i1 %i.bi, label %bpf_search_tcp_opt.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr i8, ptr %.02734.us.i, i64 1
  %i.bk = load i8, ptr %i.bj, align 1             ; 3 uses
  %i.bl = zext i8 %i.bk to i64                    ; 2 uses
  %i.bm = icmp samesign ult i64 %i.bh, %i.bl
  %i.bn = icmp ult i8 %i.bk, 2
  %or.cond.i6 = or i1 %i.bn, %i.bm
  br i1 %or.cond.i6, label %bpf_search_tcp_opt.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = icmp eq i8 %i.g, %i.bf
  br i1 %i.bo, label %bpf_search_tcp_opt.exit, label %.backedge.us.i

.backedge.us.i:                                   ; preds = %bb.q, %.lr.ph.split.us.i
  %.sink.i = phi i64 [ 1, %.lr.ph.split.us.i ], [ %i.bl, %bb.q ]
  %i.bp = getelementptr i8, ptr %.02734.us.i, i64 %.sink.i ; 2 uses
  %i.bq = icmp ult ptr %i.bp, %.053.i
  br i1 %i.bq, label %.lr.ph.split.us.i, label %bpf_search_tcp_opt.exit.thread, !llvm.loop !160

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.backedge.i
  %.02734.i = phi ptr [ %i.bs, %.backedge.i ], [ %storemerge.i, %.lr.ph.i ] ; 6 uses
  %i.br = load i8, ptr %.02734.i, align 1         ; 2 uses
  switch i8 %i.br, label %bb.r [
    i8 0, label %bpf_search_tcp_opt.exit.thread
    i8 1, label %.backedge.i
  ]

.backedge.i:                                      ; preds = %bb.w, %bb.u, %.lr.ph.split.i
  %.sink68.i = phi i64 [ %i.bz, %bb.u ], [ %i.bz, %bb.w ], [ 1, %.lr.ph.split.i ]
  %i.bs = getelementptr i8, ptr %.02734.i, i64 %.sink68.i ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %.053.i
  br i1 %i.bt, label %.lr.ph.split.i, label %bpf_search_tcp_opt.exit.thread, !llvm.loop !160

bb.r:                                             ; preds = %.lr.ph.split.i
  %i.bu = ptrtoint ptr %.02734.i to i64
  %i.bv = sub i64 %i.bc, %i.bu                    ; 2 uses
  %i.bw = icmp slt i64 %i.bv, 2
  br i1 %i.bw, label %bpf_search_tcp_opt.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr i8, ptr %.02734.i, i64 1
  %i.by = load i8, ptr %i.bx, align 1             ; 4 uses
  %i.bz = zext i8 %i.by to i64                    ; 3 uses
  %i.ca = icmp samesign ult i64 %i.bv, %i.bz
  br i1 %i.ca, label %bpf_search_tcp_opt.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = zext i8 %i.by to i32
  %i.cc = icmp ult i8 %i.by, 2
  br i1 %i.cc, label %bpf_search_tcp_opt.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = icmp eq i8 %i.g, %i.br
end_hunk_1
