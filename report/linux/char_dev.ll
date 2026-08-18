inline.NumInlined: 40
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@register_chrdev_region:bb.a
  %.135 = phi i32 [ %i.m, %__unregister_chrdev_region.exit ], [ %0, %.preheader ] ; 4 uses
  %i.k = lshr i32 %.135, 20                       ; 2 uses
  %i.l = and i32 %.135, -1048576
  %i.m = add i32 %i.l, 1048576                    ; 3 uses
  %i.n = and i32 %.135, 1048575
  %i.o = sub i32 %i.m, %.135
  %.lhs.trunc = trunc nuw nsw i32 %i.k to i16
  %i.p = urem i16 %.lhs.trunc, 255
  tail call void @mutex_lock(ptr noundef nonnull @chrdevs_lock) #9
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr [8 x i8], ptr @chrdevs, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not20.i = icmp eq ptr %i.s, null
  br i1 %.not20.i, label %__unregister_chrdev_region.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.f
  %i.t = phi ptr [ %i.ad, %bb.f ], [ %i.s, %.lr.ph ] ; 7 uses
  %.021.i = phi ptr [ %i.t, %bb.f ], [ %i.r, %.lr.ph ]
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp eq i32 %i.v, %i.k
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr i8, ptr %i.t, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp eq i32 %i.y, %i.n
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.t, i64 16
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, %i.o
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i
  %i.ad = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %__unregister_chrdev_region.exit, label %.lr.ph.i, !llvm.loop !14

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.t, align 8
  store ptr %i.ae, ptr %.021.i, align 8
  br label %__unregister_chrdev_region.exit

__unregister_chrdev_region.exit:                  ; preds = %bb.f, %.lr.ph, %bb.g
  %i.af = phi ptr [ %i.t, %bb.g ], [ null, %.lr.ph ], [ null, %bb.f ]
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #9
  tail call void @kfree(ptr noundef %i.af) #9
  %i.ag = icmp ult i32 %i.m, %.027
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %__unregister_chrdev_region.exit, %.preheader
  %i.ah = ptrtoint ptr %i.h to i64
  %i.ai = trunc i64 %i.ah to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %.028 = phi i32 [ %i.ai, %._crit_edge ], [ 0, %bb.b ]
  ret i32 %.028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @__register_chrdev_region(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %0, 511
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %3, i32 noundef %0, i32 noundef 511) #11 ; 0 uses
  br label %__free_kfree.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sub i32 1048576, %1
  %i.d = icmp ugt i32 %2, %i.c
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %2, %1
  %i.f = add i32 %i.e, -1
  %i.g = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %3, i32 noundef %1, i32 noundef %i.f, i32 noundef 0, i32 noundef 1048575) #11 ; 0 uses
  br label %__free_kfree.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.i = tail call noalias align 8 dereferenceable_or_null(96) ptr @__kmalloc_cache_noprof(ptr noundef %i.h, i32 noundef 3520, i64 noundef range(i64 96, 105) 96) #12 ; 13 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %__free_kfree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @mutex_lock(ptr noundef nonnull @chrdevs_lock) #9
  %i.k = icmp eq i32 %0, 0
  br i1 %i.k, label %bb.g, label %find_dynamic_major.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 2032), align 16
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %find_dynamic_major.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 2024), align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %find_dynamic_major.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 2016), align 16
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %find_dynamic_major.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 2008), align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %find_dynamic_major.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 2000), align 16
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %find_dynamic_major.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1992), align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %find_dynamic_major.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1984), align 16
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %find_dynamic_major.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1976), align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %find_dynamic_major.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1968), align 16
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %find_dynamic_major.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1960), align 8
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %find_dynamic_major.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1952), align 16
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %find_dynamic_major.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1944), align 8
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %find_dynamic_major.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1936), align 16
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %find_dynamic_major.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1928), align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %find_dynamic_major.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1920), align 16
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %find_dynamic_major.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1912), align 8
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %find_dynamic_major.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1904), align 16
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %find_dynamic_major.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1896), align 8
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %find_dynamic_major.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1888), align 16
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %find_dynamic_major.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1880), align 8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %find_dynamic_major.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @chrdevs, i64 1872), align 16
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %find_dynamic_major.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa, %bb.ad
  %.120.i = phi i32 [ %i.be, %bb.ad ], [ 511, %bb.aa ] ; 7 uses
  %4 = urem i32 %.120.i, 255
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr [8 x i8], ptr @chrdevs, i64 %5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.preheader.i
  %.0.in.i = phi ptr [ %6, %.preheader.i ], [ %.0.i, %bb.ac ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 3 uses
  %cond.i = icmp eq ptr %.0.i, null
  br i1 %cond.i, label %find_dynamic_major.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bb = getelementptr i8, ptr %.0.i, i64 8
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = icmp eq i32 %i.bc, %.120.i
  br i1 %i.bd, label %bb.ad, label %bb.ab, !llvm.loop !16

bb.ad:                                            ; preds = %bb.ac
  %i.be = add nsw i32 %.120.i, -1
  %7 = icmp samesign ugt i32 %.120.i, 384
  br i1 %7, label %.preheader.i, label %find_dynamic_major.exit.thread76, !llvm.loop !17

find_dynamic_major.exit:                          ; preds = %bb.ab
  %i.bf = icmp slt i32 %.120.i, 0
  br i1 %i.bf, label %find_dynamic_major.exit.thread76, label %find_dynamic_major.exit.thread

find_dynamic_major.exit.thread76:                 ; preds = %bb.ad, %find_dynamic_major.exit
  %.014.i78 = phi i32 [ %.120.i, %find_dynamic_major.exit ], [ -16, %bb.ad ]
  %i.bg = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %3) #11 ; 0 uses
  %i.bh = sext i32 %.014.i78 to i64
  %i.bi = inttoptr i64 %i.bh to ptr
  br label %bb.ak

find_dynamic_major.exit.thread:                   ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.aa, %find_dynamic_major.exit, %bb.f
  %.049 = phi i32 [ %0, %bb.f ], [ %.120.i, %find_dynamic_major.exit ], [ 235, %bb.z ], [ 236, %bb.y ], [ 237, %bb.x ], [ 238, %bb.w ], [ 239, %bb.v ], [ 240, %bb.u ], [ 241, %bb.t ], [ 242, %bb.s ], [ 243, %bb.r ], [ 244, %bb.q ], [ 245, %bb.p ], [ 246, %bb.o ], [ 247, %bb.n ], [ 248, %bb.m ], [ 249, %bb.l ], [ 250, %bb.k ], [ 251, %bb.j ], [ 252, %bb.i ], [ 253, %bb.h ], [ 254, %bb.g ], [ 234, %bb.aa ] ; 4 uses
  %i.bj = urem i32 %.049, 255
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr @chrdevs, i64 %i.bk ; 2 uses
  %.05089 = load ptr, ptr %i.bl, align 8          ; 2 uses
  %.not90 = icmp eq ptr %.05089, null
  br i1 %.not90, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %find_dynamic_major.exit.thread, %bb.ah
  %.05092 = phi ptr [ %.050, %bb.ah ], [ %.05089, %find_dynamic_major.exit.thread ] ; 8 uses
  %.05191 = phi ptr [ %.05092, %bb.ah ], [ null, %find_dynamic_major.exit.thread ] ; 2 uses
  %i.bm = getelementptr i8, ptr %.05092, i64 8
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.bo = icmp ult i32 %i.bn, %.049
  br i1 %i.bo, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.bp = icmp ugt i32 %i.bn, %.049
  br i1 %i.bp, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = getelementptr i8, ptr %.05092, i64 12
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bs = getelementptr i8, ptr %.05092, i64 16
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = add i32 %i.bt, %i.br
  %.not61 = icmp ugt i32 %i.bu, %1
  br i1 %.not61, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bv = add i32 %2, %1
  %.not62 = icmp ult i32 %i.br, %i.bv
  br i1 %.not62, label %bb.ak, label %.loopexit

bb.ah:                                            ; preds = %bb.af, %.lr.ph
  %.050 = load ptr, ptr %.05092, align 8          ; 2 uses
  %.not = icmp eq ptr %.050, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit:                                        ; preds = %bb.ah, %bb.ae, %find_dynamic_major.exit.thread, %bb.ag
  %.05187 = phi ptr [ %.05191, %bb.ag ], [ null, %find_dynamic_major.exit.thread ], [ %.05092, %bb.ah ], [ %.05191, %bb.ae ] ; 3 uses
  %.05085 = phi ptr [ %.05092, %bb.ag ], [ null, %find_dynamic_major.exit.thread ], [ null, %bb.ah ], [ %.05092, %bb.ae ]
  %i.bw = getelementptr i8, ptr %i.i, i64 8
  store i32 %.049, ptr %i.bw, align 8
  %i.bx = getelementptr i8, ptr %i.i, i64 12
  store i32 %1, ptr %i.bx, align 4
  %i.by = getelementptr i8, ptr %i.i, i64 16
  store i32 %2, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %i.i, i64 20
  %i.ca = tail call i64 @sized_strscpy(ptr noundef %i.bz, ptr noundef %3, i64 noundef 64) #9 ; 0 uses
  %.not63 = icmp eq ptr %.05187, null
  br i1 %.not63, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.loopexit
  store ptr %.05085, ptr %i.i, align 8
  store ptr %i.i, ptr %i.bl, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %.loopexit
  %i.cb = load ptr, ptr %.05187, align 8
  store ptr %i.cb, ptr %i.i, align 8
  store ptr %i.i, ptr %.05187, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %find_dynamic_major.exit.thread76, %bb.ag, %bb.aj, %bb.ai
  %.073 = phi ptr [ %i.i, %find_dynamic_major.exit.thread76 ], [ %i.i, %bb.ag ], [ null, %bb.aj ], [ null, %bb.ai ] ; 3 uses
  %.0 = phi ptr [ %i.bi, %find_dynamic_major.exit.thread76 ], [ inttoptr (i64 -16 to ptr), %bb.ag ], [ %i.i, %bb.aj ], [ %i.i, %bb.ai ] ; 2 uses
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #9
  %.not.i = icmp eq ptr %.073, null
  %i.cc = icmp ugt ptr %.073, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.cc
  br i1 %spec.select.i, label %__free_kfree.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @kfree(ptr noundef nonnull %.073) #9
  br label %__free_kfree.exit

__free_kfree.exit:                                ; preds = %bb.e, %bb.d, %bb.b, %bb.ak, %bb.al
  %.183 = phi ptr [ %.0, %bb.al ], [ %.0, %bb.ak ], [ inttoptr (i64 -12 to ptr), %bb.e ], [ inttoptr (i64 -22 to ptr), %bb.d ], [ inttoptr (i64 -22 to ptr), %bb.b ]
  ret ptr %.183
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @alloc_chrdev_region(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc ptr @__register_chrdev_region(i32 noundef 0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #10, !srcloc !19 ; 4 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 -4096 to ptr)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = trunc i64 %i.c to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = shl i32 %i.f, 20
  %i.h = getelementptr i8, ptr %i.a, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = or i32 %i.g, %i.i
  store i32 %i.j, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @__register_chrdev(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc ptr @__register_chrdev_region(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #10, !srcloc !20 ; 5 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 -4096 to ptr)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = trunc i64 %i.c to i32
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.f = tail call noalias align 8 dereferenceable_or_null(104) ptr @__kmalloc_cache_noprof(ptr noundef %i.e, i32 noundef 3520, i64 noundef range(i64 96, 105) 104) #12 ; 15 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %cdev_alloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 80       ; 3 uses
  store volatile ptr %i.g, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.f, i64 88
  store volatile ptr %i.g, ptr %i.h, align 8
  tail call void @kobject_init(ptr noundef nonnull %i.f, ptr noundef nonnull @ktype_cdev_dynamic) #9
  %i.i = load ptr, ptr %4, align 8
  %i.j = getelementptr i8, ptr %i.f, i64 64
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.f, i64 72
  store ptr %4, ptr %i.k, align 8
  %i.l = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1, ptr noundef %3) #9 ; 0 uses
  %i.m = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = shl i32 %i.n, 20
  %i.p = or i32 %i.o, %1                          ; 3 uses
  %i.q = getelementptr i8, ptr %i.f, i64 96
  store i32 %i.p, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.f, i64 100
  store i32 %2, ptr %i.r, align 4
  %i.s = icmp eq i32 %i.p, 0
  br i1 %i.s, label %bb.e, label %.critedge.i, !prof !21

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "540: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 540b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 540) #13, !srcloc !22
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.3, i32 483, i32 2305, i64 16) #13, !srcloc !23
  tail call void asm sideeffect "541: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 541b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 541) #13, !srcloc !24
  br label %bb.h

.critedge.i:                                      ; preds = %bb.d
  %i.t = load ptr, ptr @cdev_map, align 8
  %i.u = zext i32 %2 to i64
  %i.v = tail call i32 @kobj_map(ptr noundef %i.t, i32 noundef %i.p, i64 noundef %i.u, ptr noundef null, ptr noundef nonnull @exact_match, ptr noundef nonnull @exact_lock, ptr noundef nonnull %i.f) #9 ; 2 uses
  %.not.i32 = icmp eq i32 %i.v, 0
  br i1 %.not.i32, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.critedge.i
  %i.w = getelementptr i8, ptr %i.f, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call ptr @kobject_get(ptr noundef %i.x) #9 ; 0 uses
  %i.z = getelementptr i8, ptr %i.a, i64 88
  store ptr %i.f, ptr %i.z, align 8
  %.not31 = icmp eq i32 %0, 0
  br i1 %.not31, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.m, align 8
  br label %bb.m

bb.h:                                             ; preds = %.critedge.i, %bb.e
  %.017.i = phi i32 [ %i.v, %.critedge.i ], [ -16, %bb.e ]
  %i.ab = load ptr, ptr %i.f, align 8
  tail call void @kfree_const(ptr noundef %i.ab) #9
  store ptr null, ptr %i.f, align 8
  tail call void @kobject_put(ptr noundef nonnull %i.f) #9
  br label %cdev_alloc.exit.thread

cdev_alloc.exit.thread:                           ; preds = %bb.c, %bb.h
  %.0 = phi i32 [ %.017.i, %bb.h ], [ -12, %bb.c ]
  %i.ac = getelementptr i8, ptr %i.a, i64 8
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = urem i32 %i.ad, 255
  tail call void @mutex_lock(ptr noundef nonnull @chrdevs_lock) #9
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr [8 x i8], ptr @chrdevs, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not20.i = icmp eq ptr %i.ah, null
  br i1 %.not20.i, label %__unregister_chrdev_region.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %cdev_alloc.exit.thread, %bb.k
  %i.ai = phi ptr [ %i.as, %bb.k ], [ %i.ah, %cdev_alloc.exit.thread ] ; 7 uses
  %.021.i = phi ptr [ %i.ai, %bb.k ], [ %i.ag, %cdev_alloc.exit.thread ]
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp eq i32 %i.ak, %i.ad
  br i1 %i.al, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr i8, ptr %i.ai, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp eq i32 %i.an, %1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %i.ai, i64 16
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.aq, %2
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.i
  %i.as = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i33 = icmp eq ptr %i.as, null
  br i1 %.not.i33, label %__unregister_chrdev_region.exit, label %.lr.ph.i, !llvm.loop !14

bb.l:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.ai, align 8
  store ptr %i.at, ptr %.021.i, align 8
  br label %__unregister_chrdev_region.exit

__unregister_chrdev_region.exit:                  ; preds = %bb.k, %cdev_alloc.exit.thread, %bb.l
  %i.au = phi ptr [ %i.ai, %bb.l ], [ null, %cdev_alloc.exit.thread ], [ null, %bb.k ]
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #9
  tail call void @kfree(ptr noundef %i.au) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %__unregister_chrdev_region.exit, %bb.b
  %.027 = phi i32 [ %i.d, %bb.b ], [ %.0, %__unregister_chrdev_region.exit ], [ %i.aa, %bb.g ], [ 0, %bb.f ]
  ret i32 %.027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @cdev_alloc() #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(104) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef range(i64 96, 105) 104) #12 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 80       ; 3 uses
  store volatile ptr %i.c, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 88
  store volatile ptr %i.c, ptr %i.d, align 8
  tail call void @kobject_init(ptr noundef nonnull %i.b, ptr noundef nonnull @ktype_cdev_dynamic) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.b
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @cdev_add(ptr noundef initializes((96, 104)) %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  store i32 %1, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 100
  store i32 %2, ptr %i.b, align 4
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.b, label %.critedge, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "540: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 540b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 540) #13, !srcloc !22
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.3, i32 483, i32 2305, i64 16) #13, !srcloc !23
  tail call void asm sideeffect "541: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 541b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 541) #13, !srcloc !24
  br label %bb.d

.critedge:                                        ; preds = %bb.a
  %i.d = load ptr, ptr @cdev_map, align 8
  %i.e = zext i32 %2 to i64
  %i.f = tail call i32 @kobj_map(ptr noundef %i.d, i32 noundef %1, i64 noundef %i.e, ptr noundef null, ptr noundef nonnull @exact_match, ptr noundef nonnull @exact_lock, ptr noundef %0) #9 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @kobject_get(ptr noundef %i.h) #9 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %.critedge
  %.017 = phi i32 [ %i.f, %.critedge ], [ -16, %bb.b ]
  %i.j = load ptr, ptr %0, align 8
  tail call void @kfree_const(ptr noundef %i.j) #9
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %.017, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @unregister_chrdev_region(i32 noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %1, %0                           ; 3 uses
  %i.b = icmp ult i32 %0, %i.a
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %__unregister_chrdev_region.exit
  %.01419 = phi i32 [ %spec.select, %__unregister_chrdev_region.exit ], [ %0, %bb.a ] ; 4 uses
  %i.c = lshr i32 %.01419, 20                     ; 2 uses
  %i.d = and i32 %.01419, -1048576
  %i.e = add i32 %i.d, 1048576                    ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.a) ; 2 uses
  %i.f = and i32 %.01419, 1048575
  %i.g = sub i32 %spec.select, %.01419
  %.lhs.trunc = trunc nuw nsw i32 %i.c to i16
  %i.h = urem i16 %.lhs.trunc, 255
  tail call void @mutex_lock(ptr noundef nonnull @chrdevs_lock) #9
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr @chrdevs, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not20.i = icmp eq ptr %i.k, null
  br i1 %.not20.i, label %__unregister_chrdev_region.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %i.v, %bb.d ], [ %i.k, %.lr.ph ] ; 7 uses
  %.021.i = phi ptr [ %i.l, %bb.d ], [ %i.j, %.lr.ph ]
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, %i.c
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr i8, ptr %i.l, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, %i.f
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.l, i64 16
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, %i.g
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.v = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %__unregister_chrdev_region.exit, label %.lr.ph.i, !llvm.loop !14

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.l, align 8
  store ptr %i.w, ptr %.021.i, align 8
  br label %__unregister_chrdev_region.exit

__unregister_chrdev_region.exit:                  ; preds = %bb.d, %.lr.ph, %bb.e
  %i.x = phi ptr [ %i.l, %bb.e ], [ null, %.lr.ph ], [ null, %bb.d ]
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #9
  tail call void @kfree(ptr noundef %i.x) #9
  %i.y = icmp ult i32 %i.e, %i.a
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %__unregister_chrdev_region.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__unregister_chrdev(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = urem i32 %0, 255
  tail call void @mutex_lock(ptr noundef nonnull @chrdevs_lock) #9
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [8 x i8], ptr @chrdevs, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not20.i = icmp eq ptr %i.d, null
  br i1 %.not20.i, label %__unregister_chrdev_region.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %i.e = phi ptr [ %i.o, %bb.d ], [ %i.d, %bb.a ] ; 9 uses
  %.021.i = phi ptr [ %i.e, %bb.d ], [ %i.c, %bb.a ]
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %i.e, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, %1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.e, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, %2
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.o = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %__unregister_chrdev_region.exit.thread, label %.lr.ph.i, !llvm.loop !14

__unregister_chrdev_region.exit.thread:           ; preds = %bb.d, %bb.a
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #9
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.e, align 8
  store ptr %i.p, ptr %.021.i, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @chrdevs_lock) #9
  %i.q = getelementptr i8, ptr %i.e, i64 88
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %.not7 = icmp eq ptr %i.r, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.r, i64 96
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.r, i64 100
  %i.v = load i32, ptr %i.u, align 4
  %i.w = load ptr, ptr @cdev_map, align 8
  %i.x = zext i32 %i.v to i64
  tail call void @kobj_unmap(ptr noundef %i.w, i32 noundef %i.t, i64 noundef %i.x) #9
  tail call void @kobject_put(ptr noundef nonnull %i.r) #9
  br label %bb.g

bb.g:                                             ; preds = %__unregister_chrdev_region.exit.thread, %bb.f, %bb.e
  %i.y = phi ptr [ null, %__unregister_chrdev_region.exit.thread ], [ %i.e, %bb.f ], [ %i.e, %bb.e ]
  tail call void @kfree(ptr noundef %i.y) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cdev_del(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4
  %i.e = load ptr, ptr @cdev_map, align 8
  %i.f = zext i32 %i.d to i64
  tail call void @kobj_unmap(ptr noundef %i.e, i32 noundef %i.b, i64 noundef %i.f) #9
  tail call void @kobject_put(ptr noundef %0) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cdev_put(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @kobject_put(ptr noundef nonnull %0) #9
  tail call void @module_put(ptr noundef %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cd_forget(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @_raw_spin_lock(ptr noundef nonnull @cdev_lock) #9
  %i.a = getelementptr i8, ptr %0, i64 496        ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 504        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store volatile ptr %i.d, ptr %i.c, align 8
  store volatile ptr %i.a, ptr %i.a, align 8
  store volatile ptr %i.a, ptr %i.b, align 8
  %i.f = getelementptr i8, ptr %0, i64 512
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 344
  %i.h = getelementptr i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.h, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cdev_lock) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @chrdev_open(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  tail call void @_raw_spin_lock(ptr noundef nonnull @cdev_lock) #9
  %i.b = getelementptr i8, ptr %0, i64 512        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !annotation !26
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cdev_lock) #9
  %i.d = load ptr, ptr @cdev_map, align 8
  %i.e = getelementptr i8, ptr %0, i64 76
  %i.f = load i32, ptr %i.e, align 4
  %i.g = call ptr @kobj_lookup(ptr noundef %i.d, i32 noundef %i.f, ptr noundef nonnull %i.a) #9 ; 8 uses
  %.not55.not = icmp eq ptr %i.g, null
  br i1 %.not55.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_raw_spin_lock(ptr noundef nonnull @cdev_lock) #9
  %i.h = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not56 = icmp eq ptr %i.h, null
  br i1 %.not56, label %.thread79, label %bb.d

.thread79:                                        ; preds = %bb.c
  store ptr %i.g, ptr %i.b, align 8
  %i.i = getelementptr i8, ptr %0, i64 496        ; 3 uses
  %i.j = getelementptr i8, ptr %i.g, i64 80       ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.i, ptr %i.l, align 8
  store ptr %i.k, ptr %i.i, align 8
  %i.m = getelementptr i8, ptr %0, i64 504
  store ptr %i.j, ptr %i.m, align 8
  store volatile ptr %i.i, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_raw_spin_unlock(ptr noundef nonnull @cdev_lock) #9
  br label %cdev_put.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.h, i64 64
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = call zeroext i1 @try_module_get(ptr noundef %i.o) #9
  br i1 %i.p, label %bb.e, label %cdev_put.exit.thread88.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = call ptr @kobject_get_unless_zero(ptr noundef nonnull %i.h) #9
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @module_put(ptr noundef %i.o) #9
  br label %cdev_put.exit.thread88.critedge

bb.g:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %i.c, i64 64
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = tail call zeroext i1 @try_module_get(ptr noundef %i.s) #9
  br i1 %i.t, label %bb.h, label %cdev_put.exit.thread88.critedge96

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr @kobject_get_unless_zero(ptr noundef nonnull %i.c) #9
  %.not.i68 = icmp eq ptr %i.u, null
  br i1 %.not.i68, label %bb.i, label %cdev_put.exit

bb.i:                                             ; preds = %bb.h
  tail call void @module_put(ptr noundef %i.s) #9
  br label %cdev_put.exit.thread88.critedge96

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_raw_spin_unlock(ptr noundef nonnull @cdev_lock) #9
  %i.v = getelementptr i8, ptr %i.g, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  call void @kobject_put(ptr noundef nonnull %i.g) #9
  call void @module_put(ptr noundef %i.w) #9
  br label %cdev_put.exit.thread

cdev_put.exit:                                    ; preds = %bb.h
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cdev_lock) #9
  br label %cdev_put.exit.thread

cdev_put.exit.thread:                             ; preds = %cdev_put.exit, %bb.j, %.thread79
  %.27887 = phi ptr [ %i.c, %cdev_put.exit ], [ %i.h, %bb.j ], [ %i.g, %.thread79 ] ; 3 uses
  %i.x = getelementptr i8, ptr %.27887, i64 72
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %.not60 = icmp eq ptr %i.y, null
  br i1 %.not60, label %cdev_put.exit72, label %bb.k

bb.k:                                             ; preds = %cdev_put.exit.thread
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call zeroext i1 @try_module_get(ptr noundef %i.z) #9
  br i1 %i.aa, label %bb.l, label %cdev_put.exit72

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not62 = icmp eq ptr %i.ac, null
  br i1 %.not62, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.ac, align 8
  call void @module_put(ptr noundef %i.ad) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.y, ptr %i.ab, align 8
  %i.ae = getelementptr i8, ptr %i.y, i64 104
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not63 = icmp eq ptr %i.af, null
  br i1 %.not63, label %cdev_put.exit.thread88, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = call i32 %i.af(ptr noundef %0, ptr noundef %1) #9 ; 2 uses
  %.not64 = icmp eq i32 %i.ag, 0
  br i1 %.not64, label %cdev_put.exit.thread88, label %cdev_put.exit72

cdev_put.exit72:                                  ; preds = %bb.k, %cdev_put.exit.thread, %bb.o
  %.3 = phi i32 [ %i.ag, %bb.o ], [ -6, %cdev_put.exit.thread ], [ -6, %bb.k ]
  %i.ah = getelementptr i8, ptr %.27887, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  call void @kobject_put(ptr noundef nonnull %.27887) #9
  call void @module_put(ptr noundef %i.ai) #9
  br label %cdev_put.exit.thread88

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %cdev_put.exit.thread88

cdev_put.exit.thread88.critedge:                  ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_raw_spin_unlock(ptr noundef nonnull @cdev_lock) #9
  %i.aj = getelementptr i8, ptr %i.g, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8
  call void @kobject_put(ptr noundef nonnull %i.g) #9
  call void @module_put(ptr noundef %i.ak) #9
  br label %cdev_put.exit.thread88

cdev_put.exit.thread88.critedge96:                ; preds = %bb.i, %bb.g
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cdev_lock) #9
  br label %cdev_put.exit.thread88

cdev_put.exit.thread88:                           ; preds = %cdev_put.exit.thread88.critedge96, %cdev_put.exit.thread88.critedge, %bb.n, %bb.o, %.critedge, %cdev_put.exit72
  %.1 = phi i32 [ -6, %.critedge ], [ %.3, %cdev_put.exit72 ], [ -6, %cdev_put.exit.thread88.critedge96 ], [ 0, %bb.n ], [ 0, %bb.o ], [ -6, %cdev_put.exit.thread88.critedge ]
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kobj_map(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef ptr @exact_match(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readnone returned captures(ret: address, provenance) %2) #3 align 16 prefalign(16) {
bb.a:
  ret ptr %2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -1, 1) i32 @exact_lock(i32 %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call zeroext i1 @try_module_get(ptr noundef %i.b) #9
  br i1 %i.c, label %bb.b, label %cdev_get.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @kobject_get_unless_zero(ptr noundef %1) #9
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %cdev_get.exit

bb.c:                                             ; preds = %bb.b
  tail call void @module_put(ptr noundef %i.b) #9
  br label %cdev_get.exit

cdev_get.exit:                                    ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cdev_set_parent(ptr nofree noundef writeonly captures(none) initializes((24, 32)) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 60
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "542: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 542b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 542) #13, !srcloc !27
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.3, i32 514, i32 2305, i64 16) #13, !srcloc !28
  tail call void asm sideeffect "543: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 543b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 543) #13, !srcloc !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  store ptr %1, ptr %i.d, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @cdev_device_add(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 668        ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 60
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %cdev_set_parent.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "542: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 542b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 542) #13, !srcloc !27
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.3, i32 514, i32 2305, i64 16) #13, !srcloc !28
  tail call void asm sideeffect "543: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 543b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 543) #13, !srcloc !29
  br label %cdev_set_parent.exit

cdev_set_parent.exit:                             ; preds = %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = load i32, ptr %i.a, align 4              ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 96
  store i32 %i.g, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 100
  store i32 1, ptr %i.i, align 4
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %bb.d, label %.critedge.i, !prof !21

bb.d:                                             ; preds = %cdev_set_parent.exit
  tail call void asm sideeffect "540: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 540b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 540) #13, !srcloc !22
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.3, i32 483, i32 2305, i64 16) #13, !srcloc !23
  tail call void asm sideeffect "541: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 541b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 541) #13, !srcloc !24
  br label %cdev_add.exit

.critedge.i:                                      ; preds = %cdev_set_parent.exit
  %i.k = load ptr, ptr @cdev_map, align 8
  %i.l = tail call i32 @kobj_map(ptr noundef %i.k, i32 noundef %i.g, i64 noundef 1, ptr noundef null, ptr noundef nonnull @exact_match, ptr noundef nonnull @exact_lock, ptr noundef %0) #9 ; 2 uses
  %.not.i16 = icmp eq i32 %i.l, 0
  br i1 %.not.i16, label %cdev_add.exit.thread, label %cdev_add.exit

cdev_add.exit.thread:                             ; preds = %.critedge.i
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = tail call ptr @kobject_get(ptr noundef %i.m) #9 ; 0 uses
  br label %bb.e

cdev_add.exit:                                    ; preds = %bb.d, %.critedge.i
  %.017.i = phi i32 [ %i.l, %.critedge.i ], [ -16, %bb.d ]
  %i.o = load ptr, ptr %0, align 8
  tail call void @kfree_const(ptr noundef %i.o) #9
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %cdev_add.exit.thread, %bb.a
  %i.p = tail call i32 @device_add(ptr noundef %1) #9 ; 3 uses
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.a, align 4
  %.not15 = icmp eq i32 %i.q, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %0, i64 96
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %0, i64 100
  %i.u = load i32, ptr %i.t, align 4
  %i.v = load ptr, ptr @cdev_map, align 8
  %i.w = zext i32 %i.u to i64
  tail call void @kobj_unmap(ptr noundef %i.v, i32 noundef %i.s, i64 noundef %i.w) #9
  tail call void @kobject_put(ptr noundef %0) #9
  br label %bb.h

bb.h:                                             ; preds = %cdev_add.exit, %bb.e, %bb.f, %bb.g
  %.0 = phi i32 [ %.017.i, %cdev_add.exit ], [ %i.p, %bb.g ], [ %i.p, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cdev_device_del(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @device_del(ptr noundef %1) #9
  %i.a = getelementptr i8, ptr %1, i64 668
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 100
  %i.f = load i32, ptr %i.e, align 4
  %i.g = load ptr, ptr @cdev_map, align 8
  %i.h = zext i32 %i.f to i64
  tail call void @kobj_unmap(ptr noundef %i.g, i32 noundef %i.d, i64 noundef %i.h) #9
  tail call void @kobject_put(ptr noundef %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cdev_init(ptr noundef initializes((0, 104)) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  %i.a = getelementptr i8, ptr %0, i64 80         ; 3 uses
  store volatile ptr %i.a, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 88
  store volatile ptr %i.a, ptr %i.b, align 8
  tail call void @kobject_init(ptr noundef %0, ptr noundef nonnull @ktype_cdev_default) #9
  %i.c = getelementptr i8, ptr %0, i64 72
  store ptr %1, ptr %i.c, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @chrdev_init() local_unnamed_addr #5 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @kobj_map_init(ptr noundef nonnull @base_probe, ptr noundef nonnull @chrdevs_lock) #9
  store ptr %i.a, ptr @cdev_map, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kobj_map_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noalias noundef ptr @base_probe(i32 noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = lshr i32 %0, 20                          ; 2 uses
  %i.b = and i32 %0, 1048575
  %i.c = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.8, i32 noundef %i.a, i32 noundef %i.b) #9
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.9, i32 noundef %i.a) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr null
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kobj_lookup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kobject_get_unless_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kobj_unmap(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cdev_dynamic_release(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @cdev_lock) #9
  %i.c = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.d = load volatile ptr, ptr %i.c, align 8     ; 2 uses
  %.not6.i = icmp eq ptr %i.d, %i.c
  br i1 %.not6.i, label %cdev_purge.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi ptr [ %i.k, %.lr.ph.i ], [ %i.d, %bb.a ] ; 6 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.i, align 8
  store volatile ptr %i.h, ptr %i.g, align 8
  store volatile ptr %i.e, ptr %i.e, align 8
  store volatile ptr %i.e, ptr %i.f, align 8
  %i.j = getelementptr i8, ptr %i.e, i64 16
  store ptr null, ptr %i.j, align 8
  %i.k = load volatile ptr, ptr %i.c, align 8     ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i, label %cdev_purge.exit, label %.lr.ph.i, !llvm.loop !30

cdev_purge.exit:                                  ; preds = %.lr.ph.i, %bb.a
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cdev_lock) #9
  tail call void @kfree(ptr noundef %0) #9
  tail call void @kobject_put(ptr noundef %i.b) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cdev_default_release(ptr nofree noundef captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @cdev_lock) #9
  %i.c = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.d = load volatile ptr, ptr %i.c, align 8     ; 2 uses
  %.not6.i = icmp eq ptr %i.d, %i.c
  br i1 %.not6.i, label %cdev_purge.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi ptr [ %i.k, %.lr.ph.i ], [ %i.d, %bb.a ] ; 6 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.i, align 8
  store volatile ptr %i.h, ptr %i.g, align 8
  store volatile ptr %i.e, ptr %i.e, align 8
  store volatile ptr %i.e, ptr %i.f, align 8
  %i.j = getelementptr i8, ptr %i.e, i64 16
  store ptr null, ptr %i.j, align 8
  %i.k = load volatile ptr, ptr %i.c, align 8     ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i, label %cdev_purge.exit, label %.lr.ph.i, !llvm.loop !30

cdev_purge.exit:                                  ; preds = %.lr.ph.i, %bb.a
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cdev_lock) #9
  tail call void @kobject_put(ptr noundef %i.b) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone "no-builtin-wcslen" }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{i64 4700}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = !{i64 5615}
!20 = !{i64 6871}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{i64 2156521085, i64 2156520960}
!23 = !{i64 2156521608, i64 2156522665, i64 2156522698, i64 2156522733, i64 2156522749, i64 2156523676, i64 2156523734, i64 2156523783, i64 2156523593, i64 2156522808, i64 2156522840, i64 2156522923}
!24 = !{i64 2156524076, i64 2156523952}
!25 = distinct !{!25, !11}
!26 = !{!"auto-init"}
!27 = !{i64 2156525403, i64 2156525278}
!28 = !{i64 2156525926, i64 2156526988, i64 2156527021, i64 2156527056, i64 2156527072, i64 2156527999, i64 2156528057, i64 2156528106, i64 2156527916, i64 2156527131, i64 2156527163, i64 2156527246}
!29 = !{i64 2156528399, i64 2156528275}
!30 = distinct !{!30, !11}
end_hunk_0
