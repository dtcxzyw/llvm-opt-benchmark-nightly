Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/devinet?download=true
inline.NumInlined: 371
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@inet_select_addr:bb.a

.split.us:                                        ; preds = %bb.h, %bb.e
  %.us-phi = phi ptr [ %.05791.us, %bb.e ], [ %.05791, %bb.h ]
  %i.ak = getelementptr i8, ptr %.us-phi, i64 48
  %i.al = load i32, ptr %i.ak, align 8
  br label %.loopexit85

bb.i:                                             ; preds = %bb.h
  %.not75 = icmp eq i32 %.05890, 0
  br i1 %.not75, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %.05791, i64 48
  %i.an = load i32, ptr %i.am, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g, %.lr.ph.split
  %.1 = phi i32 [ %.05890, %.lr.ph.split ], [ %.05890, %bb.g ], [ %.05890, %bb.i ], [ %i.an, %bb.j ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.05791, i64 16
  %i.ap = load volatile ptr, ptr %i.ao, align 8   ; 2 uses
  %.not72 = icmp eq ptr %i.ap, null
  br i1 %.not72, label %.loopexit85, label %.lr.ph.split, !llvm.loop !54

.loopexit85:                                      ; preds = %bb.k, %.split.us
  %.2 = phi i32 [ %i.al, %.split.us ], [ %.1, %bb.k ] ; 2 uses
  %.not76 = icmp eq i32 %.2, 0
  br i1 %.not76, label %.loopexit85.thread, label %.loopexit

.loopexit85.thread:                               ; preds = %bb.f, %bb.d, %.loopexit85, %bb.a
  %i.aq = getelementptr i8, ptr %i.b, i64 448     ; 3 uses
  %i.ar = load volatile ptr, ptr %i.aq, align 64  ; 2 uses
  %.not7794 = icmp eq ptr %i.ar, %i.aq
  br i1 %.not7794, label %.loopexit, label %.lr.ph96

.lr.ph96:                                         ; preds = %.loopexit85.thread, %in_dev_select_addr.exit.thread
  %.pn95 = phi ptr [ %i.bg, %in_dev_select_addr.exit.thread ], [ %i.ar, %.loopexit85.thread ] ; 2 uses
  %i.as = getelementptr i8, ptr %.pn95, i64 720
  %i.at = load volatile ptr, ptr %i.as, align 8   ; 2 uses
  %.not78 = icmp eq ptr %i.at, null
  br i1 %.not78, label %in_dev_select_addr.exit.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph96
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %i.av = load volatile ptr, ptr %i.au, align 8   ; 2 uses
  %.not21.i = icmp eq ptr %i.av, null
  br i1 %.not21.i, label %in_dev_select_addr.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.n
  %.01522.i = phi ptr [ %i.bd, %bb.n ], [ %i.av, %bb.l ] ; 4 uses
  %i.aw = getelementptr i8, ptr %.01522.i, i64 72
  %i.ax = load volatile i32, ptr %i.aw, align 8
  %i.ay = and i32 %i.ax, 1
  %.not17.i = icmp eq i32 %i.ay, 0
  br i1 %.not17.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr i8, ptr %.01522.i, i64 68
  %i.ba = load i8, ptr %i.az, align 4             ; 2 uses
  %.not18.i = icmp eq i8 %i.ba, -3
  %i.bb = zext i8 %i.ba to i32
  %.not19.i = icmp slt i32 %2, %i.bb
  %or.cond.i = or i1 %.not18.i, %.not19.i
  br i1 %or.cond.i, label %bb.n, label %in_dev_select_addr.exit

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %i.bc = getelementptr i8, ptr %.01522.i, i64 16
  %i.bd = load volatile ptr, ptr %i.bc, align 8   ; 2 uses
  %.not.i81 = icmp eq ptr %i.bd, null
  br i1 %.not.i81, label %in_dev_select_addr.exit.thread, label %.lr.ph.i, !llvm.loop !55

in_dev_select_addr.exit:                          ; preds = %bb.m
  %i.be = getelementptr i8, ptr %.01522.i, i64 48
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %.not79 = icmp eq i32 %i.bf, 0
  br i1 %.not79, label %in_dev_select_addr.exit.thread, label %.loopexit

in_dev_select_addr.exit.thread:                   ; preds = %bb.n, %bb.l, %in_dev_select_addr.exit, %.lr.ph96
  %i.bg = load volatile ptr, ptr %.pn95, align 8  ; 2 uses
  %.not77 = icmp eq ptr %i.bg, %i.aq
  br i1 %.not77, label %.loopexit, label %.lr.ph96, !llvm.loop !56

.loopexit:                                        ; preds = %in_dev_select_addr.exit, %in_dev_select_addr.exit.thread, %.loopexit85.thread, %.loopexit85
  %.7 = phi i32 [ %.2, %.loopexit85 ], [ 0, %.loopexit85.thread ], [ %i.bf, %in_dev_select_addr.exit ], [ 0, %in_dev_select_addr.exit.thread ]
  tail call void @__rcu_read_unlock() #16
  ret i32 %.7
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @inet_confirm_addr(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @confirm_addr_indev(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #19, !srcloc !58
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @__rcu_read_lock() #16
  %i.b = getelementptr i8, ptr %0, i64 448        ; 3 uses
  %i.c = load volatile ptr, ptr %i.b, align 64    ; 2 uses
  %.not3033 = icmp eq ptr %i.c, %i.b
  br i1 %.not3033, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.pn34 = phi ptr [ %i.g, %bb.e ], [ %i.c, %bb.c ] ; 2 uses
  %i.d = getelementptr i8, ptr %.pn34, i64 720
  %i.e = load volatile ptr, ptr %i.d, align 8     ; 2 uses
  %.not31 = icmp eq ptr %i.e, null
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.f = tail call fastcc i32 @confirm_addr_indev(ptr noundef %i.e, i32 noundef %2, i32 noundef %3, i32 noundef %4) #19, !srcloc !59 ; 2 uses
  %.not32 = icmp eq i32 %i.f, 0
  br i1 %.not32, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.g = load volatile ptr, ptr %.pn34, align 8   ; 2 uses
  %.not30 = icmp eq ptr %i.g, %i.b
  br i1 %.not30, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.e, %bb.d, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.e ]
  tail call void @__rcu_read_unlock() #16
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %.2, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal fastcc i32 @confirm_addr_indev(ptr nofree noundef nonnull captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 264
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 1264
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = getelementptr i8, ptr %i.d, i64 108
  %i.f = load volatile i32, ptr %i.e, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.critedge, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 300
  %i.h = load volatile i32, ptr %i.g, align 4
  %.not92 = icmp eq i32 %i.h, 0
  br i1 %.not92, label %bb.c, label %.critedge, !prof !13

.critedge:                                        ; preds = %bb.a, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %.0 = phi i8 [ -3, %.critedge ], [ -2, %bb.b ]  ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load volatile ptr, ptr %i.i, align 8     ; 5 uses
  %.not5996 = icmp eq ptr %i.j, null
  br i1 %.not5996, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.not200 = icmp eq i32 %2, 0                    ; 2 uses
  %.not65 = icmp ne i32 %1, 0                     ; 3 uses
  %or.cond5 = and i1 %.not65, %.not200
  br i1 %or.cond5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread79.us
  %.05099.us = phi ptr [ %i.ac, %.thread79.us ], [ %i.j, %.lr.ph ] ; 8 uses
  %.05198.us = phi i32 [ %.2.ph.us, %.thread79.us ], [ 0, %.lr.ph ] ; 3 uses
  %.05397.us = phi i32 [ %.255.ph.us, %.thread79.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.k = getelementptr i8, ptr %.05099.us, i64 68
  %i.l = load i8, ptr %i.k, align 4
  %i.m = tail call i8 @llvm.umin.i8(i8 %.0, i8 %i.l) ; 2 uses
  %.not60.us = icmp ne i32 %.05198.us, 0
  %i.n = zext i8 %i.m to i32
  %.not61.us = icmp slt i32 %3, %i.n
  %or.cond = select i1 %.not60.us, i1 true, i1 %.not61.us
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.o = getelementptr i8, ptr %.05099.us, i64 48
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %.not62.us = icmp eq i32 %.05397.us, 0
  br i1 %.not62.us, label %.thread.us, label %.thread87

bb.e:                                             ; preds = %.lr.ph.split.us
  %.not63.us = icmp eq i32 %.05397.us, 0
  br i1 %.not63.us, label %.thread.us, label %.thread79.us

.thread.us:                                       ; preds = %bb.d, %bb.e
  %.178.us = phi i32 [ %.05198.us, %bb.e ], [ %i.p, %bb.d ] ; 5 uses
  %i.q = getelementptr i8, ptr %.05099.us, i64 52
  %.050.val70.us = load i32, ptr %i.q, align 4
  %i.r = xor i32 %.050.val70.us, %1
  %i.s = getelementptr i8, ptr %.05099.us, i64 56
  %.050.val71.us = load i32, ptr %i.s, align 8
  %i.t = and i32 %i.r, %.050.val71.us
  %.not.i74.us = icmp eq i32 %i.t, 0              ; 2 uses
  %i.u = zext i1 %.not.i74.us to i32              ; 3 uses
  %i.v = icmp ne i32 %.178.us, 0
  %or.cond3.us = and i1 %.not.i74.us, %i.v
  br i1 %or.cond3.us, label %bb.f, label %.thread79.us

bb.f:                                             ; preds = %.thread.us
  %i.w = getelementptr i8, ptr %.05099.us, i64 52
  %.050.val.us = load i32, ptr %i.w, align 4
  %i.x = getelementptr i8, ptr %.05099.us, i64 56
  %.050.val69.us = load i32, ptr %i.x, align 8
  %i.y = xor i32 %.050.val.us, %.178.us
  %i.z = and i32 %i.y, %.050.val69.us
  %.not.i75.us = icmp eq i32 %i.z, 0
  br i1 %.not.i75.us, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = zext i8 %i.m to i32
  %.not66.us = icmp slt i32 %3, %i.aa
  br i1 %.not66.us, label %.thread79.us, label %.split.us

.thread79.us:                                     ; preds = %bb.g, %.thread.us, %bb.e
  %.255.ph.us = phi i32 [ 1, %bb.e ], [ 0, %bb.g ], [ %i.u, %.thread.us ] ; 2 uses
  %.2.ph.us = phi i32 [ %.05198.us, %bb.e ], [ %.178.us, %bb.g ], [ %.178.us, %.thread.us ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.05099.us, i64 16
  %i.ac = load volatile ptr, ptr %i.ab, align 8   ; 2 uses
  %.not59.us = icmp eq ptr %i.ac, null
  br i1 %.not59.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !60

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not200, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.thread79.us129
  %.05099.us114 = phi ptr [ %i.ar, %.thread79.us129 ], [ %i.j, %.lr.ph.split ] ; 5 uses
  %.05198.us115 = phi i32 [ %.2.ph.us131, %.thread79.us129 ], [ 0, %.lr.ph.split ] ; 3 uses
  %.05397.us116 = phi i32 [ %.255.ph.us130, %.thread79.us129 ], [ 0, %.lr.ph.split ] ; 2 uses
  %.not60.us117 = icmp eq i32 %.05198.us115, 0
  br i1 %.not60.us117, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.split.split.us
  %i.ad = getelementptr i8, ptr %.05099.us114, i64 68
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = tail call i8 @llvm.umin.i8(i8 %.0, i8 %i.ae)
  %i.ag = zext i8 %i.af to i32
  %.not61.us119 = icmp slt i32 %3, %i.ag
  br i1 %.not61.us119, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %.05099.us114, i64 48
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %.not62.us121 = icmp eq i32 %.05397.us116, 0
  br i1 %.not62.us121, label %.thread.us123, label %.thread87

bb.j:                                             ; preds = %bb.h, %.lr.ph.split.split.us
  %.not63.us122 = icmp eq i32 %.05397.us116, 0
  br i1 %.not63.us122, label %.thread.us123, label %.thread79.us129

.thread.us123:                                    ; preds = %bb.j, %bb.i
  %.178.us124 = phi i32 [ %.05198.us115, %bb.j ], [ %i.ai, %bb.i ] ; 3 uses
  br i1 %.not65, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread.us123
  %i.aj = getelementptr i8, ptr %.05099.us114, i64 52
  %.050.val70.us125 = load i32, ptr %i.aj, align 4
  %i.ak = getelementptr i8, ptr %.05099.us114, i64 56
  %.050.val71.us126 = load i32, ptr %i.ak, align 8
  %i.al = xor i32 %.050.val70.us125, %1
  %i.am = and i32 %i.al, %.050.val71.us126
  %.not.i74.us127 = icmp eq i32 %i.am, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread.us123
  %i.an = phi i1 [ %.not.i74.us127, %bb.k ], [ true, %.thread.us123 ] ; 2 uses
  %i.ao = zext i1 %i.an to i32                    ; 2 uses
  %i.ap = icmp ne i32 %.178.us124, 0
  %or.cond3.us128 = and i1 %i.an, %i.ap
  br i1 %or.cond3.us128, label %.loopexit, label %.thread79.us129

.thread79.us129:                                  ; preds = %bb.l, %bb.j
  %.255.ph.us130 = phi i32 [ 1, %bb.j ], [ %i.ao, %bb.l ] ; 2 uses
  %.2.ph.us131 = phi i32 [ %.05198.us115, %bb.j ], [ %.178.us124, %bb.l ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.05099.us114, i64 16
  %i.ar = load volatile ptr, ptr %i.aq, align 8   ; 2 uses
  %.not59.us132 = icmp eq ptr %i.ar, null
  br i1 %.not59.us132, label %.loopexit, label %.lr.ph.split.split.us, !llvm.loop !60

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not65, label %.lr.ph.split.split.split, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %.thread79.us157
  %.05099.us142 = phi ptr [ %i.be, %.thread79.us157 ], [ %i.j, %.lr.ph.split.split ] ; 5 uses
  %.05198.us143 = phi i32 [ %.2.ph.us159, %.thread79.us157 ], [ 0, %.lr.ph.split.split ] ; 3 uses
  %.05397.us144 = phi i32 [ %.255.ph.us158, %.thread79.us157 ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %.not60.us145 = icmp eq i32 %.05198.us143, 0
  br i1 %.not60.us145, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.split.split.split.us
  %i.as = getelementptr i8, ptr %.05099.us142, i64 68
  %i.at = load i8, ptr %i.as, align 4
  %i.au = tail call i8 @llvm.umin.i8(i8 %.0, i8 %i.at)
  %i.av = getelementptr i8, ptr %.05099.us142, i64 48
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = icmp ne i32 %2, %i.aw
  %i.ay = zext i8 %i.au to i32
  %.not61.us147 = icmp slt i32 %3, %i.ay
  %or.cond68.us148 = select i1 %i.ax, i1 true, i1 %.not61.us147
  br i1 %or.cond68.us148, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not62.us149 = icmp eq i32 %.05397.us144, 0
  br i1 %.not62.us149, label %.thread.us151, label %.thread87

bb.o:                                             ; preds = %bb.m, %.lr.ph.split.split.split.us
  %.not63.us150 = icmp eq i32 %.05397.us144, 0
  br i1 %.not63.us150, label %.thread.us151, label %.thread79.us157

.thread.us151:                                    ; preds = %bb.o, %bb.n
  %.178.us152 = phi i32 [ %.05198.us143, %bb.o ], [ %2, %bb.n ] ; 3 uses
  %i.az = getelementptr i8, ptr %.05099.us142, i64 52
  %.050.val72.us153 = load i32, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %.05099.us142, i64 56
  %.050.val73.us154 = load i32, ptr %i.ba, align 8
  %i.bb = xor i32 %.050.val72.us153, %2
  %i.bc = and i32 %i.bb, %.050.val73.us154
  %.not.i.us155 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.us155, label %bb.p, label %.thread79.us157

bb.p:                                             ; preds = %.thread.us151
  %.not171 = icmp eq i32 %.178.us152, 0
  br i1 %.not171, label %.thread79.us157, label %.loopexit

.thread79.us157:                                  ; preds = %bb.p, %.thread.us151, %bb.o
  %.255.ph.us158 = phi i32 [ 1, %bb.o ], [ 0, %.thread.us151 ], [ 1, %bb.p ] ; 2 uses
  %.2.ph.us159 = phi i32 [ %.05198.us143, %bb.o ], [ %.178.us152, %.thread.us151 ], [ 0, %bb.p ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.05099.us142, i64 16
  %i.be = load volatile ptr, ptr %i.bd, align 8   ; 2 uses
  %.not59.us160 = icmp eq ptr %i.be, null
  br i1 %.not59.us160, label %.loopexit, label %.lr.ph.split.split.split.us, !llvm.loop !60

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %.thread79
  %.05099 = phi ptr [ %i.bx, %.thread79 ], [ %i.j, %.lr.ph.split.split ] ; 5 uses
  %.05198 = phi i32 [ %.2.ph, %.thread79 ], [ 0, %.lr.ph.split.split ] ; 3 uses
  %.05397 = phi i32 [ %.255.ph, %.thread79 ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %.not60 = icmp eq i32 %.05198, 0
  br i1 %.not60, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph.split.split.split
  %i.bf = getelementptr i8, ptr %.05099, i64 68
  %i.bg = load i8, ptr %i.bf, align 4
  %i.bh = tail call i8 @llvm.umin.i8(i8 %.0, i8 %i.bg)
  %i.bi = getelementptr i8, ptr %.05099, i64 48
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = icmp ne i32 %2, %i.bj
  %i.bl = zext i8 %i.bh to i32
  %.not61 = icmp slt i32 %3, %i.bl
  %or.cond68 = select i1 %i.bk, i1 true, i1 %.not61
  br i1 %or.cond68, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not62 = icmp eq i32 %.05397, 0
  br i1 %.not62, label %.thread, label %.thread87

bb.s:                                             ; preds = %bb.q, %.lr.ph.split.split.split
  %.not63 = icmp eq i32 %.05397, 0
  br i1 %.not63, label %.thread, label %.thread79

.thread:                                          ; preds = %bb.r, %bb.s
  %.178 = phi i32 [ %.05198, %bb.s ], [ %2, %bb.r ] ; 4 uses
  %i.bm = getelementptr i8, ptr %.05099, i64 52
  %.050.val72 = load i32, ptr %i.bm, align 4      ; 2 uses
  %i.bn = getelementptr i8, ptr %.05099, i64 56
  %.050.val73 = load i32, ptr %i.bn, align 8      ; 2 uses
  %i.bo = xor i32 %.050.val72, %2
  %i.bp = and i32 %i.bo, %.050.val73
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %bb.t, label %.thread79

bb.t:                                             ; preds = %.thread
  %i.bq = xor i32 %.050.val72, %1
  %i.br = and i32 %i.bq, %.050.val73
  %.not.i74 = icmp eq i32 %i.br, 0                ; 2 uses
  %i.bs = zext i1 %.not.i74 to i32                ; 2 uses
  %i.bt = icmp ne i32 %.178, 0
  %or.cond3 = and i1 %.not.i74, %i.bt
  br i1 %or.cond3, label %.loopexit, label %.thread79

.split.us:                                        ; preds = %bb.g
  %i.bu = getelementptr i8, ptr %.05099.us, i64 48
  %i.bv = load i32, ptr %i.bu, align 8
  br label %.loopexit

.thread79:                                        ; preds = %.thread, %bb.t, %bb.s
  %.255.ph = phi i32 [ 1, %bb.s ], [ 0, %.thread ], [ %i.bs, %bb.t ] ; 2 uses
  %.2.ph = phi i32 [ %.05198, %bb.s ], [ %.178, %.thread ], [ %.178, %bb.t ] ; 2 uses
  %i.bw = getelementptr i8, ptr %.05099, i64 16
  %i.bx = load volatile ptr, ptr %i.bw, align 8   ; 2 uses
  %.not59 = icmp eq ptr %i.bx, null
  br i1 %.not59, label %.loopexit, label %.lr.ph.split.split.split, !llvm.loop !60

.loopexit:                                        ; preds = %.thread79.us157, %bb.p, %.thread79, %bb.t, %.thread79.us129, %bb.l, %.thread79.us, %bb.f, %bb.c, %.split.us
  %.356 = phi i32 [ %i.u, %.split.us ], [ %i.bs, %bb.t ], [ %i.u, %bb.f ], [ 0, %bb.c ], [ %.255.ph.us130, %.thread79.us129 ], [ %.255.ph.us, %.thread79.us ], [ %i.ao, %bb.l ], [ %.255.ph, %.thread79 ], [ %.255.ph.us158, %.thread79.us157 ], [ 1, %bb.p ]
  %.3 = phi i32 [ %i.bv, %.split.us ], [ %.178, %bb.t ], [ %.178.us, %bb.f ], [ 0, %bb.c ], [ %.2.ph.us131, %.thread79.us129 ], [ %.2.ph.us, %.thread79.us ], [ %.178.us124, %bb.l ], [ %.2.ph, %.thread79 ], [ %.2.ph.us159, %.thread79.us157 ], [ %.178.us152, %bb.p ]
  %.356.fr = freeze i32 %.356
  %.not67 = icmp eq i32 %.356.fr, 0
  %spec.select = select i1 %.not67, i32 0, i32 %.3
  br label %.thread87

.thread87:                                        ; preds = %bb.n, %bb.r, %bb.i, %bb.d, %.loopexit
  %i.by = phi i32 [ %spec.select, %.loopexit ], [ %i.ai, %bb.i ], [ %i.p, %bb.d ], [ %2, %bb.r ], [ %2, %bb.n ]
  ret i32 %i.by
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @register_inetaddr_notifier(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @inetaddr_chain, ptr noundef %0) #16
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @unregister_inetaddr_notifier(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @inetaddr_chain, ptr noundef %0) #16
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @register_inetaddr_validator_notifier(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @inetaddr_validator_chain, ptr noundef %0) #16
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @unregister_inetaddr_validator_notifier(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @inetaddr_validator_chain, ptr noundef %0) #16
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @inet_netconf_notify_devconf(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(address) %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %switch.selectcmp.case1.i = icmp eq i32 %2, -1
  %switch.selectcmp.case2.i = icmp eq i32 %2, 2
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %i.a = select i1 %switch.selectcmp.i, i32 20, i32 12 ; 2 uses
  switch i32 %2, label %bb.c [
    i32 -1, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = add nuw nsw i32 %i.a, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1.i = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  switch i32 %2, label %bb.e [
    i32 -1, label %bb.d
    i32 4, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.c = add nuw nsw i32 %.1.i, 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2.i = phi i32 [ %i.c, %bb.d ], [ %.1.i, %bb.c ] ; 2 uses
  switch i32 %2, label %bb.g [
    i32 -1, label %bb.f
    i32 8, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.d = add nuw nsw i32 %.2.i, 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.3.i = phi i32 [ %i.d, %bb.f ], [ %.2.i, %bb.e ] ; 2 uses
  switch i32 %2, label %bb.i [
    i32 -1, label %bb.h
    i32 5, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.e = add nuw nsw i32 %.3.i, 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.4.i = phi i32 [ %i.e, %bb.h ], [ %.3.i, %bb.g ] ; 2 uses
  switch i32 %2, label %inet_netconf_msgsize_devconf.exit [
    i32 -1, label %bb.j
    i32 6, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.f = add nuw nsw i32 %.4.i, 8
  br label %inet_netconf_msgsize_devconf.exit

inet_netconf_msgsize_devconf.exit:                ; preds = %bb.i, %bb.j
  %.5.i = phi i32 [ %i.f, %bb.j ], [ %.4.i, %bb.i ]
  %i.g = add nuw nsw i32 %.5.i, 19
  %i.h = and i32 %i.g, -4
  %i.i = tail call ptr @__alloc_skb(i32 noundef range(i32 0, -3) %i.h, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16 ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %inet_netconf_msgsize_devconf.exit
  %i.j = tail call fastcc i32 @inet_netconf_fill_devconf(ptr noundef nonnull %i.i, i32 noundef %3, ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef 0, i32 noundef %2) #19, !srcloc !61 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.l = icmp eq i32 %i.j, -90
  br i1 %i.l, label %bb.m, label %bb.n, !prof !21

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "1128: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1128b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1128) #17, !srcloc !62
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2317, i32 2305, i64 16) #17, !srcloc !63
  tail call void asm sideeffect "1129: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1129b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1129) #17, !srcloc !64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %i.i, i32 noundef 2) #16
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  tail call void @rtnl_notify(ptr noundef nonnull %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 24, ptr noundef null, i32 noundef 3264) #16
  br label %bb.q

bb.p:                                             ; preds = %inet_netconf_msgsize_devconf.exit, %bb.n
  %.0 = phi i32 [ %i.j, %bb.n ], [ -105, %inet_netconf_msgsize_devconf.exit ]
  tail call void @rtnl_set_sk_err(ptr noundef %0, i32 noundef 24, i32 noundef %.0) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -90, 1) i32 @inet_netconf_fill_devconf(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 3) %6, i32 noundef %7) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 116
  %.val.i.i = load i32, ptr %i.h, align 4
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %skb_tailroom.exit.i, label %nlmsg_put.exit.thread

skb_tailroom.exit.i:                              ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 192
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %0, i64 188        ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sub i32 %i.j, %i.l
  %i.n = icmp slt i32 %i.m, 20
  br i1 %i.n, label %nlmsg_put.exit.thread, label %nlmsg_put.exit, !prof !25

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %i.o = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, i32 noundef %6) #16 ; 6 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %nlmsg_put.exit.thread, label %bb.b

bb.b:                                             ; preds = %nlmsg_put.exit
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 2, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i32 %1, ptr %i.g, align 4
  %i.q = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.q, label %bb.c
end_hunk_0
