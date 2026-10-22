Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ethtool?download=true
inline.NumInlined: 273
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@e1000_diag_test:netif_running.exit
  %i.wc = getelementptr i8, ptr %0, i64 4938      ; 2 uses
  store i8 0, ptr %i.wc, align 2
  %i.wd = getelementptr i8, ptr %0, i64 4200
  br label %bb.el

bb.el:                                            ; preds = %bb.em, %bb.ek
  %.017.i91 = phi i32 [ 0, %bb.ek ], [ %i.wi, %bb.em ]
  %i.we = load ptr, ptr %i.wd, align 8
  %i.wf = tail call i32 %i.we(ptr noundef %i.vy) #15, !inline_history !45 ; 0 uses
  %i.wg = load i8, ptr %i.wc, align 2, !range !13, !noundef !14
  %i.wh = trunc nuw i8 %i.wg to i1
  br i1 %i.wh, label %e1000_link_test.exit93, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @msleep(i32 noundef 20) #15
  %i.wi = add nuw nsw i32 %.017.i91, 1            ; 2 uses
  %exitcond.not.i92 = icmp eq i32 %i.wi, 3751
  br i1 %exitcond.not.i92, label %.thread.sink.split.i90, label %bb.el, !llvm.loop !46

bb.en:                                            ; preds = %bb.ej
  %i.wj = getelementptr i8, ptr %0, i64 4200
  %i.wk = load ptr, ptr %i.wj, align 8
  %i.wl = tail call i32 %i.wk(ptr noundef %i.vy) #15, !inline_history !45 ; 0 uses
  %i.wm = getelementptr i8, ptr %0, i64 4934
  %i.wn = load i8, ptr %i.wm, align 2, !range !13, !noundef !14
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.wp = tail call i64 @msleep_interruptible(i32 noundef 5000) #15 ; 0 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.wq = getelementptr i8, ptr %0, i64 4160
  %.val.i85 = load ptr, ptr %i.wq, align 8
  %i.wr = getelementptr i8, ptr %.val.i85, i64 8
  %i.ws = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.wr) #16, !srcloc !12
  %i.wt = and i32 %i.ws, 2
  %.not.i86 = icmp eq i32 %i.wt, 0
  br i1 %.not.i86, label %.thread.sink.split.i90, label %e1000_link_test.exit93

.thread.sink.split.i90:                           ; preds = %bb.em, %bb.ep
  store i64 1, ptr %i.vx, align 8
  br label %e1000_link_test.exit93

e1000_link_test.exit93:                           ; preds = %bb.el, %bb.ep, %.thread.sink.split.i90
  %.1.in.i88 = load i64, ptr %i.vx, align 8
  %i.wu = and i64 %.1.in.i88, 4294967295
  %.not60 = icmp eq i64 %i.wu, 0
  br i1 %.not60, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %e1000_link_test.exit93
  %i.wv = load i32, ptr %i.l, align 4
  %i.ww = or i32 %i.wv, 2
  store i32 %i.ww, ptr %i.l, align 4
  br label %bb.er

bb.er:                                            ; preds = %e1000_link_test.exit93, %bb.eq
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.g, i32 -2, ptr elementtype(i8) %i.g) #16, !srcloc !18
  br i1 %.in.i, label %bb.et, label %.critedge

.critedge:                                        ; preds = %bb.ei, %bb.er
  call void @e1000e_reset(ptr noundef %i.d) #15
  %i.wx = getelementptr i8, ptr %0, i64 14620
  %i.wy = load i32, ptr %i.wx, align 4
  %i.wz = and i32 %i.wy, 1
  %.not66 = icmp eq i32 %i.wz, 0
  br i1 %.not66, label %bb.et, label %bb.es

bb.es:                                            ; preds = %.critedge
  call void @e1000e_release_hw_control(ptr noundef %i.d) #15
  br label %bb.et

bb.et:                                            ; preds = %.thread, %.critedge, %bb.es, %bb.er
  %i.xa = call i64 @msleep_interruptible(i32 noundef 4000) #15 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal void @e1000_get_strings(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #6 align 16 prefalign(16) {
bb.a:
  switch i32 %1, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %.preheader
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(160) %2, ptr noundef align 16 dereferenceable(160) @e1000_gstrings_test, i64 160, i1 false)
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader.1
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.1 ], [ 0, %bb.a ] ; 6 uses
  %.0810 = phi ptr [ %i.k, %.preheader.1 ], [ %2, %bb.a ] ; 5 uses
  %i.a = getelementptr [44 x i8], ptr @e1000_gstrings_stats, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(32) %.0810, ptr noundef align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  %exitcond.not = icmp eq i64 %indvars.iv, 52
  br i1 %exitcond.not, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.b = getelementptr i8, ptr %.0810, i64 32
  %i.c = getelementptr [44 x i8], ptr @e1000_gstrings_stats, i64 %indvars.iv
  %i.d = getelementptr i8, ptr %i.c, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(32) %i.b, ptr noundef align 4 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.e = getelementptr i8, ptr %.0810, i64 64
  %i.f = getelementptr [44 x i8], ptr @e1000_gstrings_stats, i64 %indvars.iv
  %i.g = getelementptr i8, ptr %i.f, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(32) %i.e, ptr noundef align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.h = getelementptr i8, ptr %.0810, i64 96
  %i.i = getelementptr [44 x i8], ptr @e1000_gstrings_stats, i64 %indvars.iv
  %i.j = getelementptr i8, ptr %i.i, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(32) %i.h, ptr noundef align 4 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.k = getelementptr i8, ptr %.0810, i64 128
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  br label %.preheader

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(64) %2, ptr noundef align 16 dereferenceable(64) @e1000e_priv_flags_strings, i64 64, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 3) i32 @e1000_set_phys_id(ptr noundef %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4152       ; 6 uses
  switch i32 %1, label %bb.i [
    i32 1, label %bb.b
    i32 0, label %bb.d
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 1528
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @__pm_runtime_resume(ptr noundef %i.c, i32 noundef 4) #15 ; 0 uses
  %i.e = getelementptr i8, ptr %0, i64 4184
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 %i.f(ptr noundef %i.a) #15 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 5144
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 7
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 5104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef %i.a, i32 noundef 27, i16 noundef zeroext 0) #15, !inline_history !76 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr i8, ptr %0, i64 4264
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.o(ptr noundef %i.a) #15 ; 0 uses
  %i.q = getelementptr i8, ptr %0, i64 4208
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 %i.r(ptr noundef %i.a) #15 ; 0 uses
  %i.t = getelementptr i8, ptr %0, i64 1528
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 @__pm_runtime_idle(ptr noundef %i.u, i32 noundef 4) #15 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %0, i64 4256
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i32 %i.x(ptr noundef %i.a) #15 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr i8, ptr %0, i64 4264
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef %i.a) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.c, %bb.f, %bb.g, %bb.h, %bb.b
  %.0 = phi i32 [ 2, %bb.b ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @e1000_get_ethtool_stats(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.rtnl_link_stats64, align 8  ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 2624
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %3, i8 0, i64 200, i1 false), !annotation !11
  %i.b = call ptr @dev_get_stats(ptr noundef %0, ptr noundef nonnull %3) #15 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.c = getelementptr [44 x i8], ptr @e1000_gstrings_stats, i64 %indvars.iv ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 4
  switch i32 %i.e, label %bb.g [
    i32 0, label %bb.d
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi ptr [ %i.a, %bb.c ], [ %3, %bb.b ]
  %i.f = getelementptr i8, ptr %i.c, i64 40
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %.sink, i64 %i.h   ; 2 uses
  %4 = getelementptr i8, ptr %i.c, i64 36
  %5 = load i32, ptr %4, align 4
  %.not = icmp eq i32 %5, 8
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.i, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.i, align 4
  %i.l = zext i32 %i.k to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.sink21 = phi i64 [ 0, %bb.b ], [ %i.j, %bb.e ], [ %i.l, %bb.f ]
  %i.m = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %.sink21, ptr %i.m, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 53
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !77

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 0, 4) i32 @e1000e_get_priv_flags(ptr nofree noundef readonly captures(none) %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 14624
  %i.b = load i32, ptr %i.a, align 32
  %i.c = lshr i32 %i.b, 15
  %.1 = and i32 %i.c, 3
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @e1000e_set_priv_flags(ptr noundef %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 14624      ; 2 uses
  %i.c = load i32, ptr %i.b, align 32             ; 3 uses
  %i.d = and i32 %i.c, -98305                     ; 2 uses
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 4372
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ult i32 %i.h, 13
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 4136
  %i.k = load ptr, ptr %i.j, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %i.k, ptr noundef @.str.17) #17
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.l = or disjoint i32 %i.d, 32768
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ %i.l, %bb.d ], [ %i.d, %bb.a ]  ; 2 uses
  %i.m = and i64 %i.e, 2
  %.not25 = icmp eq i64 %i.m, 0
  br i1 %.not25, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 4372
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp ult i32 %i.o, 6
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %0, i64 4136
  %i.r = load ptr, ptr %i.q, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %i.r, ptr noundef @.str.18) #17
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.s = or i32 %.0, 65536
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1 = phi i32 [ %i.s, %bb.h ], [ %.0, %bb.e ]   ; 3 uses
  %i.t = xor i32 %.1, %i.c
  %.not26 = icmp eq i32 %i.c, %.1
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %.1, ptr %i.b, align 32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = and i32 %i.t, 65536
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.v = getelementptr i8, ptr %0, i64 3344       ; 6 uses
  %i.w = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.v, i64 1, ptr elementtype(i64) %i.v) #16, !srcloc !17 ; 2 uses
  %i.x = icmp ult i8 %i.w, 2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = trunc nuw i8 %i.w to i1
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  tail call void @usleep_range_state(i64 noundef 1000, i64 noundef 2000, i32 noundef 2) #15
  %i.z = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.v, i64 1, ptr elementtype(i64) %i.v) #16, !srcloc !17 ; 2 uses
  %i.aa = icmp ult i8 %i.z, 2
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = trunc nuw i8 %i.z to i1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.ac = getelementptr i8, ptr %0, i64 4136
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 168
  %i.af = load volatile i64, ptr %i.ae, align 8
  %.in.i = trunc i64 %i.af to i1
  br i1 %.in.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  tail call void @e1000e_down(ptr noundef %i.a, i1 noundef zeroext true) #15
  tail call void @e1000e_up(ptr noundef %i.a) #15
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge
  tail call void @e1000e_reset(ptr noundef %i.a) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.v, i32 -3, ptr elementtype(i8) %i.v) #16, !srcloc !18
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %bb.g, %bb.c
  %.024 = phi i32 [ -22, %bb.c ], [ -22, %bb.g ], [ 0, %bb.n ], [ 0, %bb.k ]
  ret i32 %.024
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal range(i32 -95, 54) i32 @e1000e_get_sset_count(ptr nofree readnone captures(none) %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  switch i32 %1, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -95, %bb.d ], [ 2, %bb.c ], [ 53, %bb.b ], [ 5, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @e1000_get_rxfh_fields(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) #1 align 16 prefalign(16) {
bb.a:
  store i32 0, ptr %1, align 4
  %i.a = getelementptr i8, ptr %0, i64 4160
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 22552
  %i.c = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b) #16, !srcloc !12 ; 5 uses
  %.not = icmp ult i32 %i.c, 65536
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  switch i32 %i.e, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 16, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.h
    i32 7, label %bb.h
    i32 8, label %bb.h
    i32 17, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.c, 65536
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %1, align 4
  %i.h = or i32 %i.g, 192
  store i32 %i.h, ptr %1, align 4
  br label %bb.e
end_hunk_0
