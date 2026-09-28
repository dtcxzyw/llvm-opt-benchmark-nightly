Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_uncore?download=true
inline.NumInlined: 411
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@intel_uncore_forcewake_put__locked:bb.a
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %__intel_uncore_forcewake_put.exit, label %bb.c, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr i8, ptr %i.p, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4 ; 3 uses
  %.not14.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not14.i.i, label %fw_domains_put.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.h
  %.015.i.i = phi i32 [ %i.z, %bb.h ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.u = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %.015.i.i, i32 -1) #16, !srcloc !23 ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = xor i32 %i.x, -1
  %i.z = and i32 %.015.i.i, %i.y                  ; 2 uses
  %i.aa = sext i32 %i.u to i64
  %i.ab = getelementptr [8 x i8], ptr %i.f, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ac, null
  br i1 %.not13.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 104
  %.val.i.i = load ptr, ptr %i.ad, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 65536, ptr elementtype(i32) %.val.i.i) #13, !srcloc !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %fw_domains_put.exit.i, label %.lr.ph.i.i, !llvm.loop !0

fw_domains_put.exit.i:                            ; preds = %bb.h, %bb.f
  %i.ae = xor i32 %.pre.i, -1
  %i.af = load i32, ptr %i.g, align 8
  %i.ag = and i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.g, align 8
  br label %.backedge.i

__intel_uncore_forcewake_put.exit:                ; preds = %.backedge.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_uncore_forcewake_put(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #14
  %i.e = getelementptr i8, ptr %0, i64 188
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, %1                         ; 2 uses
  %.not23.i = icmp eq i32 %i.g, 0
  br i1 %.not23.i, label %__intel_uncore_forcewake_put.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 208        ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 192        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i, %.backedge.i
  %.024.i = phi i32 [ %i.g, %.lr.ph.i ], [ %i.o, %.backedge.i ] ; 2 uses
  %i.j = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %.024.i, i32 -1) #16, !srcloc !23 ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = xor i32 %i.m, -1
  %i.o = and i32 %.024.i, %i.n                    ; 2 uses
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %.not20.i = icmp eq ptr %i.r, null
  br i1 %.not20.i, label %.backedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 8
  %.not21.i = icmp eq i32 %i.u, 0
  br i1 %.not21.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.r, i64 20
  store i8 1, ptr %i.v, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %fw_domains_put.exit.i, %bb.e, %bb.c
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %__intel_uncore_forcewake_put.exit, label %bb.c, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr i8, ptr %i.r, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4 ; 3 uses
  %.not14.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not14.i.i, label %fw_domains_put.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.h
  %.015.i.i = phi i32 [ %i.ab, %bb.h ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.w = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %.015.i.i, i32 -1) #16, !srcloc !23 ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = xor i32 %i.z, -1
  %i.ab = and i32 %.015.i.i, %i.aa                ; 2 uses
  %i.ac = sext i32 %i.w to i64
  %i.ad = getelementptr [8 x i8], ptr %i.h, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ae, null
  br i1 %.not13.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr i8, ptr %i.ae, i64 104
  %.val.i.i = load ptr, ptr %i.af, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 65536, ptr elementtype(i32) %.val.i.i) #13, !srcloc !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %fw_domains_put.exit.i, label %.lr.ph.i.i, !llvm.loop !0

fw_domains_put.exit.i:                            ; preds = %bb.h, %bb.f
  %i.ag = xor i32 %.pre.i, -1
  %i.ah = load i32, ptr %i.i, align 8
  %i.ai = and i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %i.i, align 8
  br label %.backedge.i

__intel_uncore_forcewake_put.exit:                ; preds = %.backedge.i, %bb.b
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.d) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %__intel_uncore_forcewake_put.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_uncore_forcewake_put_delayed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #14
  %i.e = getelementptr i8, ptr %0, i64 188
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, %1                         ; 2 uses
  %.not23.i = icmp eq i32 %i.g, 0
  br i1 %.not23.i, label %__intel_uncore_forcewake_put.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 208        ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 192        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i, %.backedge.i
  %.024.i = phi i32 [ %i.g, %.lr.ph.i ], [ %i.o, %.backedge.i ] ; 2 uses
  %i.j = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %.024.i, i32 -1) #16, !srcloc !23 ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = xor i32 %i.m, -1
  %i.o = and i32 %.024.i, %i.n                    ; 2 uses
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8              ; 6 uses
  %.not20.i = icmp eq ptr %i.r, null
  br i1 %.not20.i, label %.backedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 4 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 8
  %.not21.i = icmp eq i32 %i.u, 0
  br i1 %.not21.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.r, i64 20
  store i8 1, ptr %i.v, align 4
  br label %.backedge.i

.backedge.i:                                      ; preds = %fw_domains_put.exit.i, %bb.g, %bb.e, %bb.c
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %__intel_uncore_forcewake_put.exit, label %bb.c, !llvm.loop !5

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.r, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 196      ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 12
  %i.aa = load i32, ptr %i.z, align 4             ; 4 uses
  %i.ab = and i32 %i.aa, %i.y
  %.not22.i = icmp eq i32 %i.ab, 0
  br i1 %.not22.i, label %bb.g, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.f
  %i.ac = or i32 %i.aa, %i.y
  store i32 %i.ac, ptr %i.x, align 4
  %i.ad = load i32, ptr %i.s, align 8
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.s, align 8
  %i.af = getelementptr i8, ptr %i.r, i64 24
  tail call void @hrtimer_start_range_ns(ptr noundef %i.af, i64 noundef 1000000, i64 noundef 1000000, i32 noundef 1) #14
  br label %.backedge.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.i
  %.015.i.i = phi i32 [ %i.al, %bb.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ag = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %.015.i.i, i32 -1) #16, !srcloc !23 ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = xor i32 %i.aj, -1
  %i.al = and i32 %.015.i.i, %i.ak                ; 2 uses
  %i.am = sext i32 %i.ag to i64
  %i.an = getelementptr [8 x i8], ptr %i.h, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ao, null
  br i1 %.not13.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 104
  %.val.i.i = load ptr, ptr %i.ap, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 65536, ptr elementtype(i32) %.val.i.i) #13, !srcloc !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %fw_domains_put.exit.i, label %.lr.ph.i.i, !llvm.loop !0

fw_domains_put.exit.i:                            ; preds = %bb.i
  %i.aq = xor i32 %i.aa, -1
  %i.ar = load i32, ptr %i.i, align 8
  %i.as = and i32 %i.ar, %i.aq
  store i32 %i.as, ptr %i.i, align 8
  br label %.backedge.i

__intel_uncore_forcewake_put.exit:                ; preds = %.backedge.i, %bb.b
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.c, i64 noundef %i.d) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %__intel_uncore_forcewake_put.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_uncore_forcewake_flush(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 188
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, %1                         ; 2 uses
  %.not1619 = icmp eq i32 %i.e, 0
  br i1 %.not1619, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 208
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph
  %.020 = phi i32 [ %i.e, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  %i.g = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %.020, i32 -1) #16, !srcloc !23 ; 2 uses
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = xor i32 %i.j, -1
  %i.l = and i32 %.020, %i.k                      ; 2 uses
  %i.m = sext i32 %i.g to i64
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not17 = icmp eq ptr %i.o, null
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.o, i64 20
  store volatile i8 0, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %i.o, i64 24       ; 2 uses
  %i.r = tail call i32 @hrtimer_cancel(ptr noundef %i.q) #14
  %.not18 = icmp eq i32 %i.r, 0
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call i32 @intel_uncore_fw_release_timer(ptr noundef %i.q) #15, !srcloc !71 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %.loopexit, label %bb.c, !llvm.loop !70

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @intel_uncore_fw_release_timer(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.f = getelementptr i8, ptr %.val, i64 476
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %intel_runtime_pm_suspended.exit.i, label %assert_rpm_device_not_suspended.exit

intel_runtime_pm_suspended.exit.i:                ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val, i64 464
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 7
  %.not.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i, label %bb.b, label %assert_rpm_device_not_suspended.exit, !prof !24

bb.b:                                             ; preds = %intel_runtime_pm_suspended.exit.i
  %i.l = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.37, ptr nonnull @.str.35, i32 110, i32 2323, i64 16) #13, !srcloc !25
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.l) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  br label %assert_rpm_device_not_suspended.exit

assert_rpm_device_not_suspended.exit:             ; preds = %bb.a, %intel_runtime_pm_suspended.exit.i, %bb.b
  %i.m = getelementptr i8, ptr %0, i64 -4         ; 2 uses
  %i.n = tail call i8 asm sideeffect "xchgb ${0:b}, $1", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.m, i1 false, ptr elementtype(i8) %i.m) #13, !srcloc !27
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.c

bb.c:                                             ; preds = %assert_rpm_device_not_suspended.exit
  %i.p = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.q = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.p) #14
  %i.r = getelementptr i8, ptr %0, i64 -12        ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = xor i32 %i.s, -1
  %i.u = getelementptr i8, ptr %i.b, i64 196      ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr i8, ptr %0, i64 -8         ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 8
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %i.r, align 4             ; 3 uses
  %.not14.i = icmp eq i32 %i.ab, 0
  br i1 %.not14.i, label %fw_domains_put.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %i.b, i64 208
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.i, %bb.g
  %.015.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ad = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %.015.i, i32 -1) #16, !srcloc !23 ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = trunc i64 %i.af to i32
  %i.ah = xor i32 %i.ag, -1
  %i.ai = and i32 %.015.i, %i.ah                  ; 2 uses
  %i.aj = sext i32 %i.ad to i64
  %i.ak = getelementptr [8 x i8], ptr %i.ac, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.al, null
  br i1 %.not13.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %i.al, i64 104
  %.val.i = load ptr, ptr %i.am, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 65536, ptr elementtype(i32) %.val.i) #13, !srcloc !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %fw_domains_put.exit, label %bb.e, !llvm.loop !0

fw_domains_put.exit:                              ; preds = %bb.g, %bb.d
  %i.an = xor i32 %i.ab, -1
  %i.ao = getelementptr i8, ptr %i.b, i64 192     ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = and i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 8
  br label %bb.h

bb.h:                                             ; preds = %fw_domains_put.exit, %bb.c
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.p, i64 noundef %i.q) #14
  br label %bb.i

bb.i:                                             ; preds = %assert_rpm_device_not_suspended.exit, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %assert_rpm_device_not_suspended.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @assert_forcewakes_inactive(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.h, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ]
  %i.j = tail call ptr @dev_driver_string(ptr noundef %i.i) #14 ; 0 uses
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.1, i32 885, i32 2321, i64 16) #13, !srcloc !31
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
end_hunk_0
