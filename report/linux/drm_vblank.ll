Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_vblank?download=true
inline.NumInlined: 450
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@drm_vblank_put:bb.a
.critedge:                                        ; preds = %bb.a
  %i.x = getelementptr i8, ptr %i.c, i64 96       ; 4 uses
  %i.y = load volatile i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %.critedge36, !prof !12

bb.e:                                             ; preds = %.critedge
  %.not.i49 = icmp eq ptr %0, null
  br i1 %.not.i49, label %__drm_to_dev.exit58.thread, label %bb.f

__drm_to_dev.exit58.thread:                       ; preds = %bb.e
  %i.aa = tail call ptr @dev_driver_string(ptr noundef null) #10 ; 0 uses
  %i.ab = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 1271, i32 2321, i64 16) #11, !srcloc !84
  %i.ac = tail call ptr @dev_driver_string(ptr noundef null) #10
  br label %__drm_to_dev.exit60

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call ptr @dev_driver_string(ptr noundef %i.ae) #10 ; 0 uses
  %i.ag = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 1271, i32 2321, i64 16) #11, !srcloc !84
  %i.ah = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call ptr @dev_driver_string(ptr noundef %i.ai) #10
  %i.ak = load ptr, ptr %i.ah, align 8
  br label %__drm_to_dev.exit60

__drm_to_dev.exit60:                              ; preds = %__drm_to_dev.exit58.thread, %bb.f
  %i.al = phi ptr [ %i.ag, %bb.f ], [ %i.ab, %__drm_to_dev.exit58.thread ]
  %i.am = phi ptr [ %i.aj, %bb.f ], [ %i.ac, %__drm_to_dev.exit58.thread ]
  %i.an = phi ptr [ %i.ak, %bb.f ], [ null, %__drm_to_dev.exit58.thread ] ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i61 = icmp eq ptr %i.ap, null
  br i1 %.not.i61, label %bb.g, label %dev_name.exit64

bb.g:                                             ; preds = %__drm_to_dev.exit60
  %.val.i63 = load ptr, ptr %i.an, align 8
  br label %dev_name.exit64

dev_name.exit64:                                  ; preds = %__drm_to_dev.exit60, %bb.g
  %.0.i62 = phi ptr [ %.val.i63, %bb.g ], [ %i.ap, %__drm_to_dev.exit60 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.al, ptr noundef %i.am, ptr noundef %.0.i62, ptr noundef @.str.17) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !85
  br label %bb.o

.critedge36:                                      ; preds = %.critedge
  %i.aq = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.x, ptr elementtype(i32) %i.x) #11, !srcloc !86 ; 2 uses
  %i.ar = icmp ult i8 %i.aq, 2
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = trunc nuw i8 %i.aq to i1
  %.not34 = icmp ne i32 %i.e, 0
  %or.cond.not = select i1 %i.as, i1 %.not34, i1 false
  br i1 %or.cond.not, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.critedge36
  %i.at = icmp slt i32 %i.e, 0
  br i1 %i.at, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.av = getelementptr i8, ptr %i.c, i64 112
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr i8, ptr %i.au, i64 300    ; 2 uses
  %i.ay = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ax) #10
  %i.az = load volatile i32, ptr %i.x, align 8
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %vblank_disable_fn.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr i8, ptr %i.c, i64 256
  %i.bc = load i8, ptr %i.bb, align 8, !range !22, !noundef !23
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.k, label %vblank_disable_fn.exit

bb.k:                                             ; preds = %bb.j
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr i8, ptr %i.au, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.l, %bb.k
  %i.bg = phi ptr [ %i.bf, %bb.l ], [ null, %bb.k ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bg, i32 noundef 0, ptr noundef @.str.44, i32 noundef %i.aw) #10
  tail call void @drm_vblank_disable_and_save(ptr noundef %i.au, i32 noundef %i.aw) #12
  br label %vblank_disable_fn.exit

vblank_disable_fn.exit:                           ; preds = %bb.i, %bb.j, %__drm_to_dev.exit.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ax, i64 noundef %i.ay) #10
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.bh = getelementptr i8, ptr %i.c, i64 252
  %i.bi = load i8, ptr %i.bh, align 4, !range !22, !noundef !23
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.c, i64 32
  %i.bl = load volatile i64, ptr @jiffies, align 64
  %i.bm = mul i32 %i.e, 1000
  %i.bn = sdiv i32 %i.bm, 1000
  %i.bo = sext i32 %i.bn to i64
  %i.bp = add i64 %i.bl, %i.bo
  %i.bq = tail call i32 @mod_timer(ptr noundef %i.bk, i64 noundef %i.bp) #10 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %dev_name.exit64, %dev_name.exit48, %.critedge36, %vblank_disable_fn.exit, %bb.n, %bb.m
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_crtc_vblank_put(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 136
  %.val = load i32, ptr %i.b, align 8
  tail call void @drm_vblank_put(ptr noundef %i.a, i32 noundef %.val) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_crtc_wait_one_vblank(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 14 uses
  %i.b = getelementptr i8, ptr %0, i64 136
  %.val = load i32, ptr %i.b, align 8             ; 10 uses
  %i.c = getelementptr i8, ptr %i.a, i64 288
  %.val2.i = load ptr, ptr %i.c, align 8
  %i.d = zext i32 %.val to i64
  %i.e = getelementptr [416 x i8], ptr %.val2.i, i64 %i.d
  %i.f = tail call i32 @drm_vblank_get(ptr noundef %i.a, i32 noundef %.val) #12 ; 3 uses
  %.not86 = icmp eq i32 %i.f, 0
  br i1 %.not86, label %.critedge, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %__drm_to_dev.exit101.thread, label %bb.c

__drm_to_dev.exit101.thread:                      ; preds = %bb.b
  %i.g = tail call ptr @dev_driver_string(ptr noundef null) #10 ; 0 uses
  %i.h = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, ptr @.str.2, i32 1320, i32 2321, i64 16) #11, !srcloc !87
  %i.i = tail call ptr @dev_driver_string(ptr noundef null) #10
  br label %__drm_to_dev.exit103

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr @dev_driver_string(ptr noundef %i.k) #10 ; 0 uses
  %i.m = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, ptr @.str.2, i32 1320, i32 2321, i64 16) #11, !srcloc !87
  %i.n = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @dev_driver_string(ptr noundef %i.o) #10
  %i.q = load ptr, ptr %i.n, align 8
  br label %__drm_to_dev.exit103

__drm_to_dev.exit103:                             ; preds = %__drm_to_dev.exit101.thread, %bb.c
  %i.r = phi ptr [ %i.m, %bb.c ], [ %i.h, %__drm_to_dev.exit101.thread ]
  %i.s = phi ptr [ %i.p, %bb.c ], [ %i.i, %__drm_to_dev.exit101.thread ]
  %i.t = phi ptr [ %i.q, %bb.c ], [ null, %__drm_to_dev.exit101.thread ] ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i104 = icmp eq ptr %i.v, null
  br i1 %.not.i104, label %bb.d, label %dev_name.exit107

bb.d:                                             ; preds = %__drm_to_dev.exit103
  %.val.i106 = load ptr, ptr %i.t, align 8
  br label %dev_name.exit107

dev_name.exit107:                                 ; preds = %__drm_to_dev.exit103, %bb.d
  %.0.i105 = phi ptr [ %.val.i106, %bb.d ], [ %i.v, %__drm_to_dev.exit103 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.r, ptr noundef %i.s, ptr noundef %.0.i105, i32 noundef %.val, i32 noundef %i.f) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !88
  br label %bb.l

.critedge:                                        ; preds = %bb.a
  %i.w = tail call i64 @drm_vblank_count(ptr noundef %i.a, i32 noundef %.val) #12 ; 3 uses
  %i.x = tail call i32 @__SCT__might_resched() #10 ; 0 uses
  %i.y = tail call i64 @drm_vblank_count(ptr noundef %i.a, i32 noundef %.val) #12
  %.not87.not = icmp eq i64 %i.w, %i.y
  br i1 %.not87.not, label %bb.e, label %.thread128

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #10
  %i.z = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.083 = phi i64 [ 1000, %bb.e ], [ %spec.store.select9, %bb.g ] ; 2 uses
  %i.aa = call i64 @prepare_to_wait_event(ptr noundef %i.z, ptr noundef nonnull %1, i32 noundef 2) #10 ; 0 uses
  %i.ab = call i64 @drm_vblank_count(ptr noundef %i.a, i32 noundef %.val) #12
  %.not88 = icmp eq i64 %i.w, %i.ab
  br i1 %.not88, label %bb.g, label %select.unfold

bb.g:                                             ; preds = %bb.f
  %i.ac = call i64 @schedule_timeout(i64 noundef %.083) #10 ; 2 uses
  %i.ad = call i64 @drm_vblank_count(ptr noundef %i.a, i32 noundef %.val) #12
  %.not90 = icmp eq i64 %i.w, %i.ad               ; 2 uses
  %i.ae = icmp ne i64 %i.ac, 0
  %or.cond7 = select i1 %.not90, i1 true, i1 %i.ae
  %spec.store.select9 = select i1 %or.cond7, i64 %i.ac, i64 1 ; 3 uses
  %.not91 = icmp ne i64 %spec.store.select9, 0
  %spec.select94.not = select i1 %.not90, i1 %.not91, i1 false
  br i1 %spec.select94.not, label %bb.f, label %select.unfold

select.unfold:                                    ; preds = %bb.g, %bb.f
  %.1.ph = phi i64 [ %.083, %bb.f ], [ %spec.store.select9, %bb.g ]
  call void @finish_wait(ptr noundef %i.z, ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.af = and i64 %.1.ph, 4294967295
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.h, label %.thread128, !prof !89

bb.h:                                             ; preds = %select.unfold
  %.not.i108 = icmp eq ptr %i.a, null
  br i1 %.not.i108, label %__drm_to_dev.exit117.thread, label %bb.i

__drm_to_dev.exit117.thread:                      ; preds = %bb.h
  %i.ah = call ptr @dev_driver_string(ptr noundef null) #10 ; 0 uses
  %i.ai = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.19, ptr @.str.2, i32 1329, i32 2321, i64 16) #11, !srcloc !90
  %i.aj = call ptr @dev_driver_string(ptr noundef null) #10
  br label %__drm_to_dev.exit119

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.a, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call ptr @dev_driver_string(ptr noundef %i.al) #10 ; 0 uses
  %i.an = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.19, ptr @.str.2, i32 1329, i32 2321, i64 16) #11, !srcloc !90
  %i.ao = getelementptr i8, ptr %i.a, i64 8       ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr @dev_driver_string(ptr noundef %i.ap) #10
  %i.ar = load ptr, ptr %i.ao, align 8
  br label %__drm_to_dev.exit119

__drm_to_dev.exit119:                             ; preds = %__drm_to_dev.exit117.thread, %bb.i
  %i.as = phi ptr [ %i.an, %bb.i ], [ %i.ai, %__drm_to_dev.exit117.thread ]
  %i.at = phi ptr [ %i.aq, %bb.i ], [ %i.aj, %__drm_to_dev.exit117.thread ]
  %i.au = phi ptr [ %i.ar, %bb.i ], [ null, %__drm_to_dev.exit117.thread ] ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 80
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i120 = icmp eq ptr %i.aw, null
  br i1 %.not.i120, label %bb.j, label %bb.k

bb.j:                                             ; preds = %__drm_to_dev.exit119
  %.val.i122 = load ptr, ptr %i.au, align 8
  br label %bb.k

.thread128:                                       ; preds = %select.unfold, %.critedge
  call void @drm_vblank_put(ptr noundef %i.a, i32 noundef %.val) #12
  br label %bb.l

bb.k:                                             ; preds = %__drm_to_dev.exit119, %bb.j
  %.0.i121 = phi ptr [ %.val.i122, %bb.j ], [ %i.aw, %__drm_to_dev.exit119 ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.as, ptr noundef %i.at, ptr noundef %.0.i121, i32 noundef %.val) #10
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !91
  call void @drm_vblank_put(ptr noundef %i.a, i32 noundef %.val) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread128, %dev_name.exit107
  %.0 = phi i32 [ %i.f, %dev_name.exit107 ], [ -110, %bb.k ], [ 0, %.thread128 ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_crtc_vblank_off(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 17 uses
  %i.c = getelementptr i8, ptr %0, i64 136
  %.val = load i32, ptr %i.c, align 8             ; 9 uses
  %i.d = getelementptr i8, ptr %i.b, i64 288
  %.val2.i = load ptr, ptr %i.d, align 8
  %i.e = zext i32 %.val to i64
  %i.f = getelementptr [416 x i8], ptr %.val2.i, i64 %i.e ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !13
  %i.g = getelementptr i8, ptr %i.b, i64 332
  %i.h = load i32, ptr %i.g, align 4
  %.not = icmp ult i32 %.val, %i.h
  br i1 %.not, label %.critedge, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %__drm_to_dev.exit74.thread, label %bb.c

__drm_to_dev.exit74.thread:                       ; preds = %bb.b
  %i.i = tail call ptr @dev_driver_string(ptr noundef null) #10 ; 0 uses
  %i.j = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 1357, i32 2321, i64 16) #11, !srcloc !93
  %i.k = tail call ptr @dev_driver_string(ptr noundef null) #10
  br label %__drm_to_dev.exit76

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call ptr @dev_driver_string(ptr noundef %i.m) #10 ; 0 uses
  %i.o = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 1357, i32 2321, i64 16) #11, !srcloc !93
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @dev_driver_string(ptr noundef %i.q) #10
  %i.s = load ptr, ptr %i.p, align 8
  br label %__drm_to_dev.exit76

__drm_to_dev.exit76:                              ; preds = %__drm_to_dev.exit74.thread, %bb.c
  %i.t = phi ptr [ %i.o, %bb.c ], [ %i.j, %__drm_to_dev.exit74.thread ]
  %i.u = phi ptr [ %i.r, %bb.c ], [ %i.k, %__drm_to_dev.exit74.thread ]
  %i.v = phi ptr [ %i.s, %bb.c ], [ null, %__drm_to_dev.exit74.thread ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i77 = icmp eq ptr %i.x, null
  br i1 %.not.i77, label %bb.d, label %dev_name.exit80

bb.d:                                             ; preds = %__drm_to_dev.exit76
  %.val.i79 = load ptr, ptr %i.v, align 8
  br label %dev_name.exit80

dev_name.exit80:                                  ; preds = %__drm_to_dev.exit76, %bb.d
  %.0.i78 = phi ptr [ %.val.i79, %bb.d ], [ %i.x, %__drm_to_dev.exit76 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.t, ptr noundef %i.u, ptr noundef %.0.i78, ptr noundef @.str.1) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !94
  br label %bb.m

.critedge:                                        ; preds = %bb.a
  %i.y = getelementptr i8, ptr %i.b, i64 328      ; 2 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.y) #10
  %i.z = getelementptr i8, ptr %i.b, i64 300      ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.z) #10
  %.not.i81 = icmp eq ptr %i.b, null              ; 2 uses
  br i1 %.not.i81, label %__drm_to_dev.exit82, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.aa = getelementptr i8, ptr %i.b, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %__drm_to_dev.exit82

__drm_to_dev.exit82:                              ; preds = %.critedge, %bb.e
  %i.ac = phi ptr [ %i.ab, %bb.e ], [ null, %.critedge ]
  %i.ad = getelementptr i8, ptr %i.f, i64 256
  %i.ae = load i8, ptr %i.ad, align 8, !range !22, !noundef !23
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = getelementptr i8, ptr %i.f, i64 108     ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ac, i32 noundef 5, ptr noundef @.str.20, i32 noundef %.val, i32 noundef %i.af, i32 noundef %i.ah) #10
  %i.ai = getelementptr i8, ptr %i.b, i64 56
  %.val66 = load ptr, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %i.b, i64 112
  %.val67 = load i32, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %.val66, i64 168
  %.val66.val = load i32, ptr %i.ak, align 8
  %i.al = and i32 %.val67, 16
  %i.am = and i32 %i.al, %.val66.val
  %.not85 = icmp eq i32 %i.am, 0
  br i1 %.not85, label %bb.f, label %bb.g

bb.f:                                             ; preds = %__drm_to_dev.exit82
  %i.an = load i32, ptr %i.ag, align 4
  %.not61 = icmp eq i32 %i.an, 0
  br i1 %.not61, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %__drm_to_dev.exit82
  tail call void @drm_vblank_disable_and_save(ptr noundef %i.b, i32 noundef %.val) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ao = getelementptr i8, ptr %i.f, i64 8
  %i.ap = tail call i32 @__wake_up(ptr noundef %i.ao, i32 noundef 3, i32 noundef 1, ptr noundef null) #10 ; 0 uses
  %i.aq = load i32, ptr %i.ag, align 4
  %.not62 = icmp eq i32 %i.aq, 0
  br i1 %.not62, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.f, i64 96      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ar, ptr elementtype(i32) %i.ar) #11, !srcloc !33
  store i32 1, ptr %i.ag, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_raw_spin_unlock(ptr noundef %i.z) #10
  %i.as = call fastcc i64 @drm_vblank_count_and_time(ptr noundef %i.b, i32 noundef %.val, ptr noundef nonnull %i.a) #12, !srcloc !95 ; 4 uses
  %i.at = getelementptr i8, ptr %i.b, i64 312     ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 5 uses
  %.not8689 = icmp eq ptr %i.au, %i.at
  br i1 %.not8689, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.pn88 = load ptr, ptr %i.au, align 8           ; 2 uses
  %.087 = getelementptr i8, ptr %i.au, i64 -40    ; 2 uses
  %i.av = getelementptr i8, ptr %i.b, i64 8
  %i.aw = load i64, ptr %i.a, align 8             ; 2 uses
  br i1 %.not.i81, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %.pn92.us = phi ptr [ %.pn.us, %bb.k ], [ %.pn88, %.lr.ph ] ; 4 uses
  %.091.us = phi ptr [ %.0.us, %bb.k ], [ %.087, %.lr.ph ]
  %.pn.in90.us = phi ptr [ %.pn92.us, %bb.k ], [ %i.au, %.lr.ph ] ; 5 uses
  %i.ax = getelementptr i8, ptr %.pn.in90.us, i64 32
end_hunk_0
begin_hunk_1_@drm_wait_vblank_ioctl:bb.a
  %.not153 = icmp samesign ugt i32 %i.b, 536870911
  %i.j = zext i1 %.not153 to i32
  %.0140 = select i1 %.not152, i32 %i.j, i32 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 56
  %.val172 = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 112
  %.val173 = load i32, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val172, i64 168
  %.val172.val = load i32, ptr %i.m, align 8
  %i.n = and i32 %.val173, 2
  %i.o = and i32 %i.n, %.val172.val
  %.not219 = icmp eq i32 %i.o, 0
  br i1 %.not219, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 696        ; 3 uses
  %.pn234 = load ptr, ptr %i.p, align 8           ; 2 uses
  %.not220235 = icmp eq ptr %.pn234, %i.p
  br i1 %.not220235, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %.pn238 = phi ptr [ %.pn, %bb.j ], [ %.pn234, %bb.g ] ; 2 uses
  %.1141237 = phi i32 [ %.2, %bb.j ], [ %.0140, %bb.g ] ; 3 uses
  %.0143236 = phi i32 [ %i.v, %bb.j ], [ 0, %bb.g ] ; 2 uses
  %i.q = getelementptr i8, ptr %.pn238, i64 72
  %i.r = load i32, ptr %i.q, align 8
  %i.s = tail call zeroext i1 @drm_lease_held(ptr noundef %2, i32 noundef %i.r) #10
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph
  %i.t = icmp eq i32 %.1141237, 0
  br i1 %i.t, label %.loopexit.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %.1141237, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %.2 = phi i32 [ %i.u, %bb.i ], [ %.1141237, %.lr.ph ]
  %i.v = add i32 %.0143236, 1                     ; 2 uses
  %.pn = load ptr, ptr %.pn238, align 8           ; 2 uses
  %.not220 = icmp eq ptr %.pn, %i.p
  br i1 %.not220, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !126

.loopexit.loopexit:                               ; preds = %bb.j, %bb.h
  %.1144.ph = phi i32 [ %i.v, %bb.j ], [ %.0143236, %bb.h ]
  %.pre = load i32, ptr %i.a, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g, %bb.f
  %i.w = phi i32 [ %.val174, %bb.f ], [ %.val174, %bb.g ], [ %.pre, %.loopexit.loopexit ]
  %.1144 = phi i32 [ %.0140, %bb.f ], [ 0, %bb.g ], [ %.1144.ph, %.loopexit.loopexit ] ; 15 uses
  %.not155 = icmp ult i32 %.1144, %i.w
  br i1 %.not155, label %bb.k, label %bb.al

bb.k:                                             ; preds = %.loopexit
  %i.x = getelementptr i8, ptr %0, i64 288
  %.val = load ptr, ptr %i.x, align 8
  %i.y = zext i32 %.1144 to i64
  %i.z = getelementptr [416 x i8], ptr %.val, i64 %i.y ; 4 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 252
  %i.ab = load i8, ptr %i.aa, align 4, !range !22, !noundef !23
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.l, label %drm_wait_vblank_is_query.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %.not.i175 = icmp eq i32 %i.ae, 0
  br i1 %.not.i175, label %drm_wait_vblank_is_query.exit, label %drm_wait_vblank_is_query.exit.thread

drm_wait_vblank_is_query.exit:                    ; preds = %bb.l
  %i.af = load i32, ptr %1, align 8
  %i.ag = and i32 %i.af, 335544321
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %drm_wait_vblank_is_query.exit.thread

bb.m:                                             ; preds = %drm_wait_vblank_is_query.exit
  %i.ai = getelementptr i8, ptr %i.z, i64 256
  %i.aj = load volatile i8, ptr %i.ai, align 8, !range !22, !noundef !23
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.n, label %drm_wait_vblank_is_query.exit.thread

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @drm_wait_vblank_reply(ptr noundef %0, i32 noundef %.1144, ptr noundef %1) #12, !srcloc !127
  br label %bb.al

drm_wait_vblank_is_query.exit.thread:             ; preds = %bb.l, %bb.m, %drm_wait_vblank_is_query.exit, %bb.k
  %i.al = tail call i32 @drm_vblank_get(ptr noundef %0, i32 noundef %.1144) #12 ; 3 uses
  %.not156 = icmp eq i32 %i.al, 0
  br i1 %.not156, label %bb.q, label %bb.o

bb.o:                                             ; preds = %drm_wait_vblank_is_query.exit.thread
  %.not.i176 = icmp eq ptr %0, null
  br i1 %.not.i176, label %__drm_to_dev.exit177, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  br label %__drm_to_dev.exit177

__drm_to_dev.exit177:                             ; preds = %bb.o, %bb.p
  %i.ao = phi ptr [ %i.an, %bb.p ], [ null, %bb.o ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ao, i32 noundef 0, ptr noundef @.str.31, i32 noundef %.1144, i32 noundef %i.al) #10
  br label %bb.al

bb.q:                                             ; preds = %drm_wait_vblank_is_query.exit.thread
  %i.ap = tail call i64 @drm_vblank_count(ptr noundef %0, i32 noundef %.1144) #12 ; 6 uses
  %i.aq = load i32, ptr %1, align 8               ; 3 uses
  %trunc = trunc i32 %i.aq to i1
  %i.ar = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  br i1 %trunc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.at = zext i32 %i.as to i64
  %i.au = add i64 %i.ap, %i.at                    ; 2 uses
  %i.av = trunc i64 %i.au to i32
  store i32 %i.av, ptr %i.ar, align 4
  %i.aw = and i32 %i.aq, -2                       ; 2 uses
  store i32 %i.aw, ptr %1, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ax = trunc i64 %i.ap to i32
  %i.ay = sub i32 %i.as, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = add i64 %i.ap, %i.az
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bb = phi i32 [ %i.aw, %bb.r ], [ %i.aq, %bb.s ]
  %.0136 = phi i64 [ %i.au, %bb.r ], [ %i.ba, %bb.s ] ; 2 uses
  %i.bc = and i32 %i.b, 268435456
  %.not157 = icmp ne i32 %i.bc, 0
  %i.bd = sub i64 %i.ap, %.0136
  %i.be = icmp ult i64 %i.bd, 8388609
  %or.cond = select i1 %.not157, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bf = add i64 %i.ap, 1                        ; 2 uses
  %i.bg = and i32 %i.bb, -268435458
  store i32 %i.bg, ptr %1, align 8
  %i.bh = trunc i64 %i.bf to i32
  %i.bi = getelementptr i8, ptr %1, i64 4
  store i32 %i.bh, ptr %i.bi, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1137 = phi i64 [ %i.bf, %bb.u ], [ %.0136, %bb.t ] ; 6 uses
  %i.bj = and i32 %i.b, 67108864
  %.not158 = icmp eq i32 %i.bj, 0
  br i1 %.not158, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = tail call fastcc i32 @drm_queue_vblank_event(ptr noundef %0, i32 noundef %.1144, i64 noundef %.1137, ptr noundef %1, ptr noundef %2) #12, !srcloc !128
  br label %bb.al

bb.x:                                             ; preds = %bb.v
  %.not159 = icmp eq i64 %.1137, %i.ap
  br i1 %.not159, label %.thread200, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i178 = icmp eq ptr %0, null               ; 2 uses
  br i1 %.not.i178, label %__drm_to_dev.exit179, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = getelementptr i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %__drm_to_dev.exit179

__drm_to_dev.exit179:                             ; preds = %bb.y, %bb.z
  %i.bn = phi ptr [ %i.bm, %bb.z ], [ null, %bb.y ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bn, i32 noundef 0, ptr noundef @.str.32, i64 noundef %.1137, i32 noundef %.1144) #10
  %i.bo = tail call i32 @__SCT__might_resched() #10 ; 0 uses
  %i.bp = tail call i64 @drm_vblank_count(ptr noundef %0, i32 noundef %.1144) #12
  %i.bq = sub i64 %i.bp, %.1137
  %i.br = icmp ult i64 %i.bq, 8388609
  br i1 %i.br, label %.thread200, label %bb.aa

bb.aa:                                            ; preds = %__drm_to_dev.exit179
  %i.bs = getelementptr i8, ptr %i.z, i64 256     ; 3 uses
  %i.bt = load volatile i8, ptr %i.bs, align 8, !range !22, !noundef !23
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ab, label %.thread200

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #10
  %i.bv = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ag, %bb.ab
  %.0138 = phi i64 [ 3000, %bb.ab ], [ %spec.store.select9, %bb.ag ] ; 3 uses
  %i.bw = call i64 @prepare_to_wait_event(ptr noundef %i.bv, ptr noundef nonnull %3, i32 noundef 1) #10 ; 2 uses
  %i.bx = call i64 @drm_vblank_count(ptr noundef %0, i32 noundef %.1144) #12
  %i.by = sub i64 %i.bx, %.1137
  %i.bz = icmp ult i64 %i.by, 8388609
  br i1 %i.bz, label %select.unfold, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = load volatile i8, ptr %i.bs, align 8, !range !22, !noundef !23
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.ae, label %select.unfold

bb.ae:                                            ; preds = %bb.ad
  %.not163 = icmp eq i64 %i.bw, 0
  br i1 %.not163, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.cc = call i64 @schedule_timeout(i64 noundef %.0138) #10 ; 3 uses
  %i.cd = call i64 @drm_vblank_count(ptr noundef %0, i32 noundef %.1144) #12
  %i.ce = sub i64 %i.cd, %.1137
  %i.cf = icmp ult i64 %i.ce, 8388609
  br i1 %i.cf, label %.thread205, label %bb.ag

.thread205:                                       ; preds = %bb.af
  %spec.store.select9207 = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  br label %select.unfold

bb.ag:                                            ; preds = %bb.af
  %i.cg = load volatile i8, ptr %i.bs, align 8, !range !22, !noundef !23
  %i.ch = trunc nuw i8 %i.cg to i1                ; 2 uses
  %i.ci = icmp ne i64 %i.cc, 0
  %or.cond7.not.not = select i1 %i.ch, i1 true, i1 %i.ci
  %spec.store.select9 = select i1 %or.cond7.not.not, i64 %i.cc, i64 1 ; 3 uses
  %.not165 = icmp ne i64 %spec.store.select9, 0
  %spec.select168.not = select i1 %i.ch, i1 %.not165, i1 false
  br i1 %spec.select168.not, label %bb.ac, label %select.unfold

select.unfold:                                    ; preds = %bb.ag, %bb.ad, %bb.ac, %.thread205
  %.1139.ph = phi i64 [ %spec.store.select9207, %.thread205 ], [ %.0138, %bb.ac ], [ %spec.store.select9, %bb.ag ], [ %.0138, %bb.ad ]
  call void @finish_wait(ptr noundef %i.bv, ptr noundef nonnull %3) #10
  br label %.thread

.thread:                                          ; preds = %bb.ae, %select.unfold
  %.1139193 = phi i64 [ %.1139.ph, %select.unfold ], [ %i.bw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.cj = trunc i64 %.1139193 to i32
  switch i32 %i.cj, label %.thread200.fold.split [
    i32 0, label %.thread200
    i32 -512, label %bb.ai
  ]

.thread200.fold.split:                            ; preds = %.thread
  br label %.thread200

.thread200:                                       ; preds = %.thread, %.thread200.fold.split, %bb.aa, %__drm_to_dev.exit179, %bb.x
  %.1204 = phi i32 [ 0, %bb.aa ], [ 0, %bb.x ], [ -16, %.thread ], [ 0, %__drm_to_dev.exit179 ], [ 0, %.thread200.fold.split ]
  call fastcc void @drm_wait_vblank_reply(ptr noundef %0, i32 noundef %.1144, ptr noundef %1) #12, !srcloc !129
  %.not.i180 = icmp eq ptr %0, null
  br i1 %.not.i180, label %__drm_to_dev.exit181, label %bb.ah

bb.ah:                                            ; preds = %.thread200
  %i.ck = getelementptr i8, ptr %0, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  br label %__drm_to_dev.exit181

__drm_to_dev.exit181:                             ; preds = %.thread200, %bb.ah
  %i.cm = phi ptr [ %i.cl, %bb.ah ], [ null, %.thread200 ]
  %i.cn = getelementptr i8, ptr %1, i64 4
  %i.co = load i32, ptr %i.cn, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cm, i32 noundef 0, ptr noundef @.str.33, i32 noundef %.1144, i32 noundef %i.co) #10
  br label %bb.ak

bb.ai:                                            ; preds = %.thread
  br i1 %.not.i178, label %__drm_to_dev.exit183, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cp = getelementptr i8, ptr %0, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  br label %__drm_to_dev.exit183

__drm_to_dev.exit183:                             ; preds = %bb.ai, %bb.aj
  %i.cr = phi ptr [ %i.cq, %bb.aj ], [ null, %bb.ai ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cr, i32 noundef 0, ptr noundef @.str.34, i32 noundef %.1144) #10
  br label %bb.ak

bb.ak:                                            ; preds = %__drm_to_dev.exit181, %__drm_to_dev.exit183
  %.1203 = phi i32 [ %.1204, %__drm_to_dev.exit181 ], [ -4, %__drm_to_dev.exit183 ]
  call void @drm_vblank_put(ptr noundef %0, i32 noundef %.1144) #12
  br label %bb.al

bb.al:                                            ; preds = %.loopexit, %bb.b, %bb.a, %bb.ak, %bb.w, %__drm_to_dev.exit177, %bb.n, %__drm_to_dev.exit
  %.0 = phi i32 [ -95, %bb.a ], [ -22, %__drm_to_dev.exit ], [ -22, %bb.b ], [ 0, %bb.n ], [ %i.al, %__drm_to_dev.exit177 ], [ %i.bk, %bb.w ], [ %.1203, %bb.ak ], [ -22, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @drm_lease_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @drm_wait_vblank_reply(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((4, 24)) %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !13
  %i.b = call fastcc i64 @drm_vblank_count_and_time(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a) #12, !srcloc !130
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr i8, ptr %2, i64 4
  store i32 %i.c, ptr %i.d, align 4
  %i.e = load i64, ptr %i.a, align 8
  %i.f = tail call { i64, i64 } @ns_to_timespec64(i64 noundef %i.e) #10 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1
  %i.i = and i64 %i.g, 4294967295
  %i.j = getelementptr i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = sdiv i64 %i.h, 1000
  %i.l = getelementptr i8, ptr %2, i64 16
  store i64 %i.k, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @drm_queue_vblank_event(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 288
  %.val = load ptr, ptr %i.b, align 8
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr [416 x i8], ptr %.val, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.f = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @__kmalloc_cache_noprof(ptr noundef %i.e, i32 noundef 3520, i64 noundef 120) #14 ; 12 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.f, i64 72
  store i32 %1, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 88       ; 2 uses
  store i32 1, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.f, i64 92
  store i32 32, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.f, i64 96
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.f, i64 116      ; 2 uses
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %0, i64 56
  %.val65 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %0, i64 112
  %.val66 = load i32, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %.val65, i64 168
  %.val65.val = load i32, ptr %i.q, align 8
  %i.r = and i32 %.val66, 2
  %i.s = and i32 %i.r, %.val65.val
  %.not67 = icmp eq i32 %i.s, 0
  br i1 %.not67, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call ptr @drm_crtc_from_index(ptr noundef %0, i32 noundef %1) #10 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.t, i64 88
  %i.v = load i32, ptr %i.u, align 8
  store i32 %i.v, ptr %i.n, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.w = getelementptr i8, ptr %0, i64 328        ; 3 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.w) #10
  %i.x = getelementptr i8, ptr %i.d, i64 256
  %i.y = load volatile i8, ptr %i.x, align 8, !range !22, !noundef !23
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call i32 @drm_event_reserve_init_locked(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %i.f, ptr noundef %i.i) #10 ; 2 uses
  %.not64 = icmp eq i32 %i.aa, 0
  br i1 %.not64, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.a, align 8, !annotation !13
  %i.ab = call fastcc i64 @drm_vblank_count_and_time(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a) #12, !srcloc !131 ; 4 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ad, %bb.h ], [ null, %bb.g ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ae, i32 noundef 0, ptr noundef @.str.49, i64 noundef %2, i64 noundef %i.ab, i32 noundef %1) #10
  %i.af = trunc i64 %2 to i32                     ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_drm_vblank_event_queued, i64 8), i1 false) #11
          to label %trace_drm_vblank_event_queued.exit [label %arch_test_bit.exit.i.i], !srcloc !26

arch_test_bit.exit.i.i:                           ; preds = %__drm_to_dev.exit
  %i.ag = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #11, !srcloc !132
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ah) #11, !srcloc !27 ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 2
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = trunc nuw i8 %i.ai to i1
  br i1 %i.ak, label %bb.i, label %trace_drm_vblank_event_queued.exit

bb.i:                                             ; preds = %arch_test_bit.exit.i.i
  %i.al = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.al, ptr elementtype(i64) %i.al) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.am = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_drm_vblank_event_queued, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i32 @__SCT__tp_func_drm_vblank_event_queued(ptr noundef %i.ao, ptr noundef %4, i32 noundef %1, i32 noundef %i.af) #10 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.aq = getelementptr i8, ptr %i.al, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aq, ptr elementtype(i64) %i.aq) #11, !srcloc !31
  br label %trace_drm_vblank_event_queued.exit

trace_drm_vblank_event_queued.exit:               ; preds = %__drm_to_dev.exit, %arch_test_bit.exit.i.i, %bb.k
  %i.ar = getelementptr i8, ptr %i.f, i64 80
  store i64 %2, ptr %i.ar, align 8
  %i.as = sub i64 %i.ab, %2
  %i.at = icmp ult i64 %i.as, 8388609
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %trace_drm_vblank_event_queued.exit
end_hunk_1
