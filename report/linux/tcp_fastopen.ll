Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp_fastopen?download=true
inline.NumInlined: 125
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tcp_try_fastopen:bb.a
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr i8, ptr %i.fh, i64 984    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fi, ptr elementtype(i64) %i.fi) #8, !srcloc !39
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i8 -1, ptr %i.j, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.val48 = load ptr, ptr %i.g, align 8
  %i.fj = getelementptr i8, ptr %.val48, i64 744
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr i8, ptr %i.fk, i64 720    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fl, ptr elementtype(i64) %i.fl) #8, !srcloc !40
  %i.fm = getelementptr i8, ptr %i.dm, i64 1924   ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 4
  %i.fo = or i8 %i.fn, -128
  store i8 %i.fo, ptr %i.fm, align 4
  br label %bb.ag

bb.ae:                                            ; preds = %tcp_fastopen_no_cookie.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.val = load ptr, ptr %i.g, align 8
  %i.fp = getelementptr i8, ptr %.val, i64 744
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr i8, ptr %i.fq, i64 728    ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fr, ptr elementtype(i64) %i.fr) #8, !srcloc !41
  br label %bb.af

bb.af:                                            ; preds = %bb.s, %bb.ae, %.loopexit, %tcp_fastopen_cookie_gen.exit
  %i.fs = getelementptr i8, ptr %3, i64 17
  %i.ft = load i8, ptr %i.fs, align 1, !range !37, !noundef !38
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 %i.ft, ptr %i.fu, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad, %tcp_fastopen_queue_check.exit
  %.0 = phi ptr [ %i.dm, %bb.ad ], [ null, %bb.af ], [ null, %tcp_fastopen_queue_check.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @tcp_fastopen_cookie_check(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @tcp_fastopen_cache_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val27.i = load ptr, ptr %i.a, align 8         ; 4 uses
  %i.b = getelementptr i8, ptr %.val27.i, i64 1616
  %i.c = load volatile i32, ptr %i.b, align 16    ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val27.i, i64 1620
  %i.e = load volatile i32, ptr %i.d, align 4     ; 2 uses
  %.not25.i = icmp eq i32 %i.e, 0
  br i1 %.not25.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !17
  %i.f = add i32 %i.e, -1
  %i.g = tail call i32 @llvm.smin.i32(i32 %i.f, i32 6)
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.h = getelementptr i8, ptr %.val.i, i64 1624
  %i.i = load volatile i64, ptr %i.h, align 8
  %i.j = shl i32 %i.c, %i.g
  %i.k = mul i32 %i.j, 1000
  %i.l = zext i32 %i.k to i64
  %i.m = load volatile i64, ptr @jiffies, align 64
  %i.n = add i64 %i.i, %i.l
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %tcp_fastopen_active_should_disable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %0, i64 1924       ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = or i8 %i.r, 32
  store i8 %i.s, ptr %i.q, align 4
  br label %bb.e

tcp_fastopen_active_should_disable.exit:          ; preds = %bb.c
  %i.t = getelementptr i8, ptr %2, i64 16
  store i8 -1, ptr %i.t, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.a
  %.val.i14 = phi ptr [ %.val27.i, %bb.b ], [ %.val.i, %bb.d ], [ %.val27.i, %bb.a ]
  %i.u = getelementptr i8, ptr %0, i64 536
  %i.v = load volatile ptr, ptr %i.u, align 8     ; 2 uses
  %i.w = getelementptr i8, ptr %.val.i14, i64 1596
  %i.x = load volatile i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 4
  %.not.i15 = icmp eq i32 %i.y, 0
  br i1 %.not.i15, label %bb.f, label %tcp_fastopen_no_cookie.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %0, i64 1921       ; 2 uses
  %i.aa = load i16, ptr %i.z, align 1             ; 2 uses
  %i.ab = and i16 %i.aa, 512
  %.not7.i = icmp eq i16 %i.ab, 0
  br i1 %.not7.i, label %bb.g, label %tcp_fastopen_no_cookie.exit.thread

bb.g:                                             ; preds = %bb.f
  %.not8.i = icmp eq ptr %i.v, null
  br i1 %.not8.i, label %tcp_fastopen_no_cookie.exit.thread17, label %tcp_fastopen_no_cookie.exit

tcp_fastopen_no_cookie.exit:                      ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.v, i64 16
  %.val9.i = load i64, ptr %i.ac, align 8
  %i.ad = and i64 %.val9.i, -4
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr i8, ptr %i.ae, i64 64
  %i.ag = load i32, ptr %i.af, align 4
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %tcp_fastopen_no_cookie.exit.thread17, label %tcp_fastopen_no_cookie.exit.thread

tcp_fastopen_no_cookie.exit.thread:               ; preds = %bb.e, %bb.f, %tcp_fastopen_no_cookie.exit
  %i.ah = getelementptr i8, ptr %2, i64 16
  store i8 -1, ptr %i.ah, align 8
  br label %bb.i

tcp_fastopen_no_cookie.exit.thread17:             ; preds = %bb.g, %tcp_fastopen_no_cookie.exit
  %i.ai = getelementptr i8, ptr %2, i64 16
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = icmp sgt i8 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %tcp_fastopen_no_cookie.exit.thread17
  %i.al = and i16 %i.aa, -3585
  %i.am = or disjoint i16 %i.al, 1024
  store i16 %i.am, ptr %i.z, align 1
  br label %bb.i

bb.i:                                             ; preds = %tcp_fastopen_no_cookie.exit.thread17, %bb.h, %tcp_fastopen_no_cookie.exit.thread, %tcp_fastopen_active_should_disable.exit
  %.0 = phi i1 [ false, %tcp_fastopen_active_should_disable.exit ], [ true, %tcp_fastopen_no_cookie.exit.thread ], [ false, %bb.h ], [ true, %tcp_fastopen_no_cookie.exit.thread17 ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_fastopen_cache_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @tcp_fastopen_active_should_disable(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val27 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr i8, ptr %.val27, i64 1616
  %i.c = load volatile i32, ptr %i.b, align 16    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val27, i64 1620
  %i.e = load volatile i32, ptr %i.d, align 4     ; 2 uses
  %.not25 = icmp eq i32 %i.e, 0
  br i1 %.not25, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !17
  %i.f = add i32 %i.e, -1
  %i.g = tail call i32 @llvm.smin.i32(i32 %i.f, i32 6)
  %.val = load ptr, ptr %i.a, align 8
  %i.h = getelementptr i8, ptr %.val, i64 1624
  %i.i = load volatile i64, ptr %i.h, align 8
  %i.j = shl i32 %i.c, %i.g
  %i.k = mul i32 %i.j, 1000
  %i.l = zext i32 %i.k to i64
  %i.m = load volatile i64, ptr @jiffies, align 64
  %i.n = add i64 %i.i, %i.l
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %0, i64 1924       ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = or i8 %i.r, 32
  store i8 %i.s, ptr %i.q, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.a ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @tcp_fastopen_defer_connect(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.tcp_fastopen_cookie, align 8 ; 8 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr i8, ptr %0, i64 1922
  %3 = load i8, ptr %i.b, align 1
  %4 = and i8 %3, 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 2312       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.a, align 2, !annotation !13
  call void @tcp_fastopen_cache_get(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #7
  %i.e = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val27.i.i = load ptr, ptr %i.e, align 8       ; 4 uses
  %i.f = getelementptr i8, ptr %.val27.i.i, i64 1616
  %i.g = load volatile i32, ptr %i.f, align 16    ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.val27.i.i, i64 1620
  %i.i = load volatile i32, ptr %i.h, align 4     ; 2 uses
  %.not25.i.i = icmp eq i32 %i.i, 0
  br i1 %.not25.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !17
  %i.j = add i32 %i.i, -1
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 6)
  %.val.i.i = load ptr, ptr %i.e, align 8         ; 2 uses
  %i.l = getelementptr i8, ptr %.val.i.i, i64 1624
  %i.m = load volatile i64, ptr %i.l, align 8
  %i.n = shl i32 %i.g, %i.k
  %i.o = mul i32 %i.n, 1000
  %i.p = zext i32 %i.o to i64
  %i.q = load volatile i64, ptr @jiffies, align 64
  %i.r = add i64 %i.m, %i.p
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %tcp_fastopen_active_should_disable.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %0, i64 1924       ; 2 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = or i8 %i.v, 32
  store i8 %i.w, ptr %i.u, align 4
  br label %bb.g

tcp_fastopen_active_should_disable.exit.i:        ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 -1, ptr %i.x, align 8
  br label %tcp_fastopen_cookie_check.exit

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %.val.i14.i = phi ptr [ %.val27.i.i, %bb.d ], [ %.val.i.i, %bb.f ], [ %.val27.i.i, %bb.c ]
  %i.y = getelementptr i8, ptr %0, i64 536
  %i.z = load volatile ptr, ptr %i.y, align 8     ; 2 uses
  %i.aa = getelementptr i8, ptr %.val.i14.i, i64 1596
  %i.ab = load volatile i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 4
  %.not.i15.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i15.i, label %bb.h, label %tcp_fastopen_no_cookie.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %5 = getelementptr i8, ptr %0, i64 1921         ; 2 uses
  %i.ad = load i16, ptr %5, align 1               ; 2 uses
  %i.ae = and i16 %i.ad, 512
  %.not7.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not7.i.i, label %bb.i, label %tcp_fastopen_no_cookie.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i = icmp eq ptr %i.z, null
  br i1 %.not8.i.i, label %tcp_fastopen_no_cookie.exit.thread17.i, label %tcp_fastopen_no_cookie.exit.i

tcp_fastopen_no_cookie.exit.i:                    ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.z, i64 16
  %.val9.i.i = load i64, ptr %i.af, align 8
  %i.ag = and i64 %.val9.i.i, -4
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr i8, ptr %i.ah, i64 64
  %i.aj = load i32, ptr %i.ai, align 4
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %tcp_fastopen_no_cookie.exit.thread17.i, label %tcp_fastopen_no_cookie.exit.thread.i

tcp_fastopen_no_cookie.exit.thread.i:             ; preds = %tcp_fastopen_no_cookie.exit.i, %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 -1, ptr %i.ak, align 8
  br label %bb.k

tcp_fastopen_no_cookie.exit.thread17.i:           ; preds = %tcp_fastopen_no_cookie.exit.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load i8, ptr %i.al, align 8
  %i.an = icmp sgt i8 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %tcp_fastopen_no_cookie.exit.thread17.i
  %i.ao = and i16 %i.ad, -3585
  %i.ap = or disjoint i16 %i.ao, 1024
  store i16 %i.ap, ptr %5, align 1
  br label %tcp_fastopen_cookie_check.exit

bb.k:                                             ; preds = %tcp_fastopen_no_cookie.exit.thread.i, %tcp_fastopen_no_cookie.exit.thread17.i
  %i.aq = getelementptr i8, ptr %0, i64 794       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.aq, i32 8, ptr elementtype(i8) %i.aq) #8, !srcloc !42
  br label %bb.o

tcp_fastopen_cookie_check.exit:                   ; preds = %bb.j, %tcp_fastopen_active_should_disable.exit.i
  %i.ar = getelementptr i8, ptr %0, i64 560
  %i.as = load i32, ptr %i.ar, align 8            ; 3 uses
  %i.at = and i32 %i.as, 17
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_kzalloc_noprof.exit, label %bb.l, !prof !16

bb.l:                                             ; preds = %tcp_fastopen_cookie_check.exit
  %i.av = and i32 %i.as, 1
  %..i.i = add nuw nsw i32 %i.av, 1
  %i.aw = zext nneg i32 %..i.i to i64
  br label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %tcp_fastopen_cookie_check.exit, %bb.l
  %.0.i.i = phi i64 [ 0, %tcp_fastopen_cookie_check.exit ], [ %i.aw, %bb.l ]
  %i.ax = or i32 %i.as, 256
  %i.ay = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i.i
  %i.az = getelementptr i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 16
  %i.bb = call noalias noundef align 8 dereferenceable_or_null(56) ptr @__kmalloc_cache_noprof(ptr noundef %i.ba, i32 noundef range(i32 256, 0) %i.ax, i64 noundef 56) #9 ; 3 uses
  store ptr %i.bb, ptr %i.c, align 8
  %.not23 = icmp eq ptr %i.bb, null
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_kzalloc_noprof.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %_kzalloc_noprof.exit
  store i32 -105, ptr %1, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.b, %bb.n, %bb.m, %bb.k
  %.0 = phi i1 [ true, %bb.k ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_fastopen_active_disable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val5 = load ptr, ptr %i.a, align 8            ; 4 uses
  %i.b = getelementptr i8, ptr %.val5, i64 1616
  %i.c = load volatile i32, ptr %i.b, align 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load volatile i64, ptr @jiffies, align 64
  %i.e = getelementptr i8, ptr %.val5, i64 1624
  store volatile i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val5, i64 1620   ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f, ptr elementtype(i32) %i.f) #8, !srcloc !18
  %i.g = getelementptr i8, ptr %.val5, i64 744
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 752      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.i, ptr elementtype(i64) %i.i) #8, !srcloc !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_fastopen_active_disable_ofo_check(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1924
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = and i8 %i.b, 8
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %tcp_fastopen_active_disable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1808
  %i.e = load i32, ptr %i.d, align 16
  %.not32 = icmp eq i32 %i.e, 0
  br i1 %.not32, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 1528
  %.val44 = load ptr, ptr %i.f, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.val44, null
  br i1 %.not.i, label %tcp_fastopen_active_disable.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.0.i = phi ptr [ %i.h, %.preheader.i ], [ %.val44, %bb.c ] ; 3 uses
  %i.g = getelementptr i8, ptr %.0.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.h, null
  br i1 %.not9.i, label %rb_first.exit, label %.preheader.i, !llvm.loop !43

rb_first.exit:                                    ; preds = %.preheader.i
  %i.i = tail call ptr @rb_next(ptr noundef nonnull %.0.i) #7
  %.not35 = icmp eq ptr %i.i, null
  br i1 %.not35, label %bb.d, label %tcp_fastopen_active_disable.exit

bb.d:                                             ; preds = %rb_first.exit
  %i.j = getelementptr i8, ptr %.0.i, i64 52
  %i.k = load i16, ptr %i.j, align 4
  %i.l = and i16 %i.k, 1
  %.not37 = icmp eq i16 %i.l, 0
  br i1 %.not37, label %tcp_fastopen_active_disable.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %0, i64 48
  %.val5.i = load ptr, ptr %i.m, align 16         ; 4 uses
  %i.n = getelementptr i8, ptr %.val5.i, i64 1616
  %i.o = load volatile i32, ptr %i.n, align 16
  %.not.i45 = icmp eq i32 %i.o, 0
  br i1 %.not.i45, label %tcp_fastopen_active_disable.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load volatile i64, ptr @jiffies, align 64
  %i.q = getelementptr i8, ptr %.val5.i, i64 1624
  store volatile i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %.val5.i, i64 1620 ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.r, ptr elementtype(i32) %i.r) #8, !srcloc !18
  %i.s = getelementptr i8, ptr %.val5.i, i64 744
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 752      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.u, ptr elementtype(i64) %i.u) #8, !srcloc !19
  br label %tcp_fastopen_active_disable.exit

bb.g:                                             ; preds = %bb.b
  %i.v = and i8 %i.b, 32
  %.not38 = icmp eq i8 %i.v, 0
  br i1 %.not38, label %tcp_fastopen_active_disable.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val43 = load ptr, ptr %i.w, align 16
  %i.x = getelementptr i8, ptr %.val43, i64 1620
  %i.y = load volatile i32, ptr %i.x, align 4
  %.not39 = icmp eq i32 %i.y, 0
  br i1 %.not39, label %tcp_fastopen_active_disable.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__rcu_read_lock() #7
  %i.z = getelementptr i8, ptr %0, i64 536
  %i.aa = load volatile ptr, ptr %i.z, align 8    ; 2 uses
  %.not40 = icmp eq ptr %i.aa, null
  br i1 %.not40, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load volatile ptr, ptr %i.aa, align 8   ; 2 uses
  %.not41 = icmp eq ptr %i.ab, null
  br i1 %.not41, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %i.ab, i64 176
  %i.ad = load i32, ptr %i.ac, align 16
  %i.ae = and i32 %i.ad, 8
  %.not42 = icmp eq i32 %i.ae, 0
  br i1 %.not42, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.i, %bb.k, %bb.j
  %.val = load ptr, ptr %i.w, align 16
  %i.af = getelementptr i8, ptr %.val, i64 1620
  store volatile i32 0, ptr %i.af, align 4
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  tail call void @__rcu_read_unlock() #7
  br label %tcp_fastopen_active_disable.exit

tcp_fastopen_active_disable.exit:                 ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %rb_first.exit, %bb.l, %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_fastopen_active_detect_blackhole(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1924
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 76
  %or.cond17 = icmp eq i8 %i.c, 0
  br i1 %or.cond17, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1257
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = icmp eq i8 %i.e, 2
  %i.g = icmp ult i8 %i.e, 2
  %or.cond = and i1 %1, %i.g
  %or.cond18 = or i1 %i.f, %or.cond
  br i1 %or.cond18, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
end_hunk_0
