inline.NumInlined: 247
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@uncore_assign_events:bb.a
  %i.ab = and i64 %i.aa, %i.y
  %i.ac = getelementptr i8, ptr %.028.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = getelementptr i8, ptr %.028.i, i64 36
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = zext i32 %i.ag to i64
  %.not24.i = icmp ugt i64 %i.ae, %i.ah
  br i1 %.not24.i, label %bb.g, label %uncore_get_event_constraint.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %.028.i, i64 40
  %i.aj = getelementptr i8, ptr %.028.i, i64 64
  %i.ak = load i32, ptr %i.aj, align 8
  %.not23.i = icmp eq i32 %i.ak, -1
  br i1 %.not23.i, label %.loopexit.i, label %bb.f, !llvm.loop !48

.loopexit.i:                                      ; preds = %bb.g, %.preheader.i, %bb.e
  %i.al = getelementptr i8, ptr %i.k, i64 80
  br label %uncore_get_event_constraint.exit

uncore_get_event_constraint.exit:                 ; preds = %bb.f, %bb.c, %bb.d, %.loopexit.i
  %.017.i = phi ptr [ %i.al, %.loopexit.i ], [ %i.p, %bb.c ], [ @uncore_constraint_fixed, %bb.d ], [ %.028.i, %bb.f ] ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %.017.i, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %.017.i, i64 24
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ap = tail call i32 @llvm.smin.i32(i32 %.087102, i32 %i.ao) ; 2 uses
  %i.aq = tail call i32 @llvm.smax.i32(i32 %.086103, i32 %i.ao) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader100, label %bb.b, !llvm.loop !49

bb.h:                                             ; preds = %.preheader100, %bb.j
  %indvars.iv128 = phi i64 [ 0, %.preheader100 ], [ %indvars.iv.next129, %bb.j ] ; 5 uses
  %i.ar = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv128
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 420    ; 4 uses
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %.split95._crit_edge, label %arch_test_bit.exit

arch_test_bit.exit:                               ; preds = %bb.h
  %i.aw = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv128
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = sext i32 %i.au to i64
  %i.az = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ax, i64 range(i64 -2147483648, 2147483648) %i.ay) #18, !srcloc !50 ; 2 uses
  %i.ba = icmp ult i8 %i.az, 2
  call void @llvm.assume(i1 %i.ba)
  %i.bb = trunc nuw i8 %i.az to i1
  br i1 %i.bb, label %arch_test_bit.exit._crit_edge, label %.split95._crit_edge

arch_test_bit.exit._crit_edge:                    ; preds = %arch_test_bit.exit
  %.pre = load i32, ptr %i.at, align 4
  %i.bc = sext i32 %.pre to i64
  %i.bd = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a, i64 range(i64 -2147483648, 2147483648) %i.bc) #18, !srcloc !50 ; 2 uses
  %i.be = icmp ult i8 %i.bd, 2
  call void @llvm.assume(i1 %i.be)
  %i.bf = trunc nuw i8 %i.bd to i1
  br i1 %i.bf, label %.split95._crit_edge, label %arch_test_bit.exit93._crit_edge

arch_test_bit.exit93._crit_edge:                  ; preds = %arch_test_bit.exit._crit_edge
  %.pre138 = load i32, ptr %i.at, align 4
  %i.bg = sext i32 %.pre138 to i64
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a, i64 range(i64 -2147483648, 2147483648) %i.bg) #18, !srcloc !35
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %arch_test_bit.exit93._crit_edge
  %i.bh = load i32, ptr %i.at, align 4
  %i.bi = getelementptr [4 x i8], ptr %1, i64 %indvars.iv128
  store i32 %i.bh, ptr %i.bi, align 4
  br label %bb.j

bb.j:                                             ; preds = %arch_test_bit.exit93._crit_edge, %bb.i
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.split95._crit_edge.thread153, label %bb.h, !llvm.loop !51

.split95._crit_edge:                              ; preds = %bb.h, %arch_test_bit.exit, %arch_test_bit.exit._crit_edge
  %i.bj = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.bk = icmp eq i32 %2, %i.bj
  br i1 %i.bk, label %.split95._crit_edge.thread153, label %bb.k

bb.k:                                             ; preds = %.split95._crit_edge
  %i.bl = getelementptr i8, ptr %0, i64 192
  %i.bm = call i32 @perf_assign_events(ptr noundef %i.bl, i32 noundef %2, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %2, ptr noundef %1) #15
  %.fr = freeze i32 %i.bm
  %i.bn = icmp ne i32 %.fr, 0
  br label %.split95._crit_edge.thread153

.split95._crit_edge.thread153:                    ; preds = %bb.j, %bb.k, %.split95._crit_edge
  %.085 = phi i1 [ %i.bn, %bb.k ], [ false, %.split95._crit_edge ], [ false, %bb.j ] ; 2 uses
  %i.bo = icmp eq ptr %1, null
  %or.cond12 = or i1 %i.bo, %.085
  br i1 %or.cond12, label %.lr.ph120, label %.loopexit

.lr.ph120:                                        ; preds = %.split95._crit_edge.thread153
  %i.bp = getelementptr i8, ptr %0, i64 368       ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 376
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 136
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.loopexit, label %.lr.ph120.split.preheader

.lr.ph120.split.preheader:                        ; preds = %.lr.ph120
  %wide.trip.count136 = zext nneg i32 %2 to i64
  br label %.lr.ph120.split

.lr.ph120.split:                                  ; preds = %.lr.ph120.split.preheader, %uncore_put_event_constraint.exit
  %indvars.iv133 = phi i64 [ 0, %.lr.ph120.split.preheader ], [ %indvars.iv.next134, %uncore_put_event_constraint.exit ] ; 2 uses
  %i.by = load ptr, ptr %i.bp, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 376
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 136
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i94 = icmp eq ptr %i.ce, null
  br i1 %.not.i94, label %uncore_put_event_constraint.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph120.split
  %i.cf = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv133
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.ce(ptr noundef nonnull %0, ptr noundef %i.cg) #15, !inline_history !52
  br label %uncore_put_event_constraint.exit

uncore_put_event_constraint.exit:                 ; preds = %.lr.ph120.split, %bb.l
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %.loopexit, label %.lr.ph120.split, !llvm.loop !53

.loopexit:                                        ; preds = %uncore_put_event_constraint.exit, %.lr.ph120, %.split95._crit_edge.thread153
  %spec.select = select i1 %.085, i32 -22, i32 0
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %bb.a
  %i.ch = phi i32 [ 0, %bb.a ], [ %spec.select, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ch
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @uncore_pmu_event_del(ptr noundef %0, i32 %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  tail call void @uncore_pmu_event_stop(ptr noundef %0, i32 noundef 4) #20
  %i.b = getelementptr i8, ptr %0, i64 420        ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 9
  br i1 %i.d, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val, i64 8       ; 4 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr i8, ptr %.val, i64 112     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv35 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next36, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %0, %i.j
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = getelementptr i8, ptr %.val, i64 368
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 376
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 136
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %uncore_put_event_constraint.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.t(ptr noundef %.val, ptr noundef %0) #15, !inline_history !52
  %.pre = load i32, ptr %i.e, align 8
  br label %uncore_put_event_constraint.exit

uncore_put_event_constraint.exit:                 ; preds = %bb.c, %bb.d
  %i.u = phi i32 [ %i.f, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %.128 = add nuw i32 %i.l, 1
  %i.v = icmp slt i32 %.128, %i.u
  br i1 %i.v, label %.lr.ph31, label %._crit_edge

.lr.ph31:                                         ; preds = %uncore_put_event_constraint.exit, %.lr.ph31
  %indvars.iv38.a = phi i64 [ %indvars.iv.next42, %.lr.ph31 ], [ %indvars.iv, %uncore_put_event_constraint.exit ] ; 2 uses
  %.1.in29 = phi i64 [ %indvars.iv.next39, %.lr.ph31 ], [ %indvars.iv35, %uncore_put_event_constraint.exit ] ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.h, i64 %.1.in29
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv38.a
  store ptr %i.x, ptr %i.y, align 8
  %indvars.iv.next39 = add nuw nsw i64 %.1.in29, 1 ; 2 uses
  %i.z = load i32, ptr %i.e, align 8              ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next39, %i.aa
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv38.a, 1
  br i1 %i.ab, label %.lr.ph31, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph31, %uncore_put_event_constraint.exit
  %.lcssa = phi i32 [ %i.u, %uncore_put_event_constraint.exit ], [ %i.z, %.lr.ph31 ]
  %i.ac = add i32 %.lcssa, -1
  store i32 %i.ac, ptr %i.e, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !56

.loopexit:                                        ; preds = %bb.e, %.preheader, %._crit_edge
  store i32 -1, ptr %i.b, align 4
  %i.ad = getelementptr i8, ptr %0, i64 384
  store i64 -1, ptr %i.ad, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @uncore_pmu_event_read(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 420
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr i8, ptr %.val, i64 368     ; 2 uses
  %.val22.i = load ptr, ptr %i.d, align 8         ; 3 uses
  switch i32 %i.c, label %bb.d [
    i32 9, label %bb.b
    i32 8, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 368
  %.val20.i = load i64, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val22.i, i64 376
  %.val.val.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val.val.i, i64 152
  %.val.val.val.i = load ptr, ptr %i.g, align 8
  %i.h = trunc i64 %.val20.i to i32
  %i.i = lshr i32 %i.h, 8
  %i.j = add nuw nsw i32 %i.i, 240
  %i.k = lshr i32 %i.j, 4
  %i.l = and i32 %i.k, 15
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr [32 x i8], ptr %.val.val.val.i, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %.val22.i, i64 376
  %.val21.val.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %.val21.val.i, i64 20
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %.val22.i, i64 376
  %.val22.val.i = load ptr, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.val22.val.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.pn.in.i = phi ptr [ %i.o, %bb.b ], [ %i.q, %bb.c ], [ %i.s, %bb.d ]
  %.pn.i = load i32, ptr %.pn.in.i, align 4
  %i.t = getelementptr i8, ptr %0, i64 512        ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %local_xchg.exit.i, %bb.e
  %i.u = load volatile i64, ptr %i.t, align 8     ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 376
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 136
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i64 %i.ab(ptr noundef %.val, ptr noundef %0) #15, !inline_history !37 ; 3 uses
  %i.ad = load volatile i64, ptr %i.t, align 8    ; 2 uses
  %i.ae = tail call { i8, i64 } asm sideeffect "cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.t, i64 %i.ac, ptr elementtype(i64) %i.t, i64 %i.ad) #18, !srcloc !25 ; 2 uses
  %i.af = extractvalue { i8, i64 } %i.ae, 0       ; 2 uses
  %i.ag = icmp ult i8 %i.af, 2
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = trunc nuw i8 %i.af to i1
  br i1 %i.ah, label %local_xchg.exit.i, label %local_try_cmpxchg.exit.i, !prof !14

local_try_cmpxchg.exit.i:                         ; preds = %bb.f, %local_try_cmpxchg.exit.i
  %i.ai = phi { i8, i64 } [ %i.ak, %local_try_cmpxchg.exit.i ], [ %i.ae, %bb.f ]
  %i.aj = extractvalue { i8, i64 } %i.ai, 1       ; 2 uses
  %i.ak = tail call { i8, i64 } asm sideeffect "cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.t, i64 %i.ac, ptr elementtype(i64) %i.t, i64 %i.aj) #18, !srcloc !25 ; 2 uses
  %i.al = extractvalue { i8, i64 } %i.ak, 0       ; 2 uses
  %i.am = icmp ult i8 %i.al, 2
  tail call void @llvm.assume(i1 %i.am)
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %local_xchg.exit.i, label %local_try_cmpxchg.exit.i, !prof !26

local_xchg.exit.i:                                ; preds = %local_try_cmpxchg.exit.i, %bb.f
  %.024.lcssa.i = phi i64 [ %i.ad, %bb.f ], [ %i.aj, %local_try_cmpxchg.exit.i ]
  %.not.i = icmp eq i64 %.024.lcssa.i, %i.u
  br i1 %.not.i, label %uncore_perf_event_update.exit, label %bb.f

uncore_perf_event_update.exit:                    ; preds = %local_xchg.exit.i
  %.0.i = sub i32 64, %.pn.i
  %i.ao = zext nneg i32 %.0.i to i64
  %i.ap = sub i64 %i.ac, %i.u
  %i.aq = lshr i64 -1, %i.ao
  %i.ar = and i64 %i.ap, %i.aq
  %i.as = getelementptr i8, ptr %0, i64 176       ; 2 uses
  tail call void asm sideeffect " addq $1,$0", "=*m,ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.as, i64 %i.ar, ptr elementtype(i64) %i.as) #18, !srcloc !27
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @uncore_get_alias_name(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 376
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 1
  %i.f = getelementptr i8, ptr %i.b, i64 28
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.g) #15 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 208
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  %i.j = getelementptr i8, ptr %1, i64 352
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  br i1 %.not.i, label %uncore_get_box_id.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @intel_uncore_find_discovery_unit_id(ptr noundef nonnull %.val, i32 noundef -1, i32 noundef %i.k) #15
  br label %uncore_get_box_id.exit

uncore_get_box_id.exit:                           ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.l, %bb.d ], [ %i.k, %bb.c ]
  %i.m = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.g, i32 noundef %.0.i) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %uncore_get_box_id.exit, %bb.b
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @intel_uncore_init() #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 64), align 8
  %i.b = and i64 %i.a, 2147483648
  %.not45 = icmp eq i64 %i.b, 0
  br i1 %.not45, label %bb.b, label %uncore_use_discovery.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @__max_logical_packages, align 4
  %i.d = load i32, ptr @__max_dies_per_package, align 4
  %i.e = mul i32 %i.d, %i.c
  store i32 %i.e, ptr @__uncore_max_dies, align 4
  %i.f = tail call ptr @x86_match_cpu(ptr noundef nonnull @__mod_device_table__kmod_intel_uncore__x86cpu__intel_uncore_match) #15 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr @uncore_no_discover, align 1, !range !57, !noundef !58
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %uncore_use_discovery.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 @uncore_discovery(ptr noundef nonnull @generic_uncore_init) #15
  br i1 %i.i, label %bb.h, label %uncore_use_discovery.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = inttoptr i64 %i.k to ptr                 ; 6 uses
  %i.m = load i8, ptr @uncore_no_discover, align 1, !range !57, !noundef !58
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr i8, ptr %i.l, i64 24
  %i.p = load i32, ptr %i.o, align 8
  %.not.not.i = icmp eq i32 %i.p, 0               ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %.not.not.i, label %uncore_use_discovery.exit, label %uncore_use_discovery.exit.thread

uncore_use_discovery.exit:                        ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.l, i64 48
  %i.r = load i32, ptr %i.q, align 8
  %.not.1.not.i.not = icmp eq i32 %i.r, 0
  br i1 %.not.1.not.i.not, label %uncore_use_discovery.exit40, label %uncore_use_discovery.exit.thread

end_hunk_0
