Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/psmouse-base?download=true
inline.NumInlined: 155
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@psmouse_attr_set_helper:bb.a
  br i1 %or.cond, label %psmouse_activate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 56         ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %psmouse_deactivate.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.val.i, i64 200   ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %psmouse_activate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 -80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not34 = icmp eq ptr %i.q, null
  br i1 %.not34, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %0, i64 -135
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 5
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.q, i64 456
  %.val.i37 = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val.i37, i64 -16 ; 2 uses
  %i.w = tail call i32 @psmouse_deactivate(ptr noundef %i.v) #14 ; 0 uses
  %.pre = load ptr, ptr %i.d, align 8
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 7
  %.pre39 = load i8, ptr %.phi.trans.insert, align 1, !range !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.x = phi i8 [ %.pre39, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %bb.e ]
  %.030 = phi ptr [ %i.v, %bb.g ], [ null, %bb.f ], [ null, %bb.e ] ; 3 uses
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %psmouse_deactivate.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call i32 @ps2_command(ptr noundef %.val.i, ptr noundef null, i32 noundef 245) #13 ; 2 uses
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = load ptr, ptr %.val.i, align 8          ; 3 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 336
  %i.ac = getelementptr i8, ptr %i.aa, i64 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ab, ptr noundef @.str.3, ptr noundef %i.ac, i32 noundef %i.z) #16
  br label %psmouse_deactivate.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %i.aa, i64 208
  tail call void @_raw_spin_lock_irq(ptr noundef %i.ad) #13
  store i32 3, ptr %i.m, align 8
  %i.ae = getelementptr i8, ptr %.val.i, i64 184
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %.val.i, i64 161
  store i8 0, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %.val.i, i64 56
  store i64 0, ptr %i.ag, align 8
  %i.ah = load volatile i64, ptr @jiffies, align 64
  %i.ai = getelementptr i8, ptr %.val.i, i64 176
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %.val.i, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 208
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.ak) #13
  br label %psmouse_deactivate.exit

psmouse_deactivate.exit:                          ; preds = %bb.k, %bb.j, %bb.h, %bb.c
  %.131 = phi ptr [ %.030, %bb.h ], [ null, %bb.c ], [ %.030, %bb.j ], [ %.030, %bb.k ] ; 7 uses
  %i.al = getelementptr i8, ptr %1, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i64 %i.am(ptr noundef %i.c, ptr noundef %i.ao, ptr noundef %2, i64 noundef %3) #13
  %i.aq = trunc i64 %i.ap to i32                  ; 5 uses
  %i.ar = load i8, ptr %i.j, align 8, !range !12, !noundef !13
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.l, label %psmouse_activate.exit

bb.l:                                             ; preds = %psmouse_deactivate.exit
  %.not35 = icmp eq i32 %i.aq, -19
  br i1 %.not35, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 7
  %i.av = load i8, ptr %i.au, align 1, !range !12, !noundef !13
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = tail call i32 @psmouse_activate(ptr noundef %i.c) #14 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.not36 = icmp eq ptr %.131, null
  br i1 %.not36, label %psmouse_activate.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %.131, i64 16     ; 3 uses
  %i.az = tail call i32 @ps2_command(ptr noundef %i.ay, ptr noundef null, i32 noundef 244) #13
  %.not.i38 = icmp eq i32 %i.az, 0
  %i.ba = load ptr, ptr %i.ay, align 8            ; 3 uses
  br i1 %.not.i38, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr i8, ptr %i.ba, i64 336
  %i.bc = getelementptr i8, ptr %i.ba, i64 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.bb, ptr noundef @.str.2, ptr noundef %i.bc) #16
  br label %psmouse_activate.exit

bb.r:                                             ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %i.ba, i64 208
  tail call void @_raw_spin_lock_irq(ptr noundef %i.bd) #13
  %i.be = getelementptr i8, ptr %.131, i64 216
  store i32 4, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %.131, i64 200
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %.131, i64 177
  store i8 0, ptr %i.bg, align 1
  %i.bh = getelementptr i8, ptr %.131, i64 72
  store i64 0, ptr %i.bh, align 8
  %i.bi = load volatile i64, ptr @jiffies, align 64
  %i.bj = getelementptr i8, ptr %.131, i64 192
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = load ptr, ptr %i.ay, align 8
  %i.bl = getelementptr i8, ptr %i.bk, i64 208
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.bl) #13
  br label %psmouse_activate.exit

psmouse_activate.exit:                            ; preds = %bb.r, %bb.q, %bb.d, %bb.b, %psmouse_deactivate.exit, %bb.o
  %.0 = phi i32 [ %i.aq, %psmouse_deactivate.exit ], [ -2, %bb.b ], [ -19, %bb.d ], [ %i.aq, %bb.o ], [ %i.aq, %bb.q ], [ %i.aq, %bb.r ]
  tail call void @mutex_unlock(ptr noundef @psmouse_mutex) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %psmouse_activate.exit
  %.1 = phi i32 [ %i.a, %bb.a ], [ %.0, %psmouse_activate.exit ]
  %i.bm = sext i32 %.1 to i64
  ret i64 %i.bm
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @psmouse_exit() #7 section ".exit.text" align 16 prefalign(16) {
bb.a:
  tail call void @serio_unregister_driver(ptr noundef @psmouse_drv) #13
  tail call void @psmouse_smbus_module_exit() #13
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @psmouse_smbus_module_exit() local_unnamed_addr #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @psmouse_init() #7 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call void @lifebook_module_init() #13
  tail call void @synaptics_module_init() #13
  %i.a = tail call i32 @psmouse_smbus_module_init() #13 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @__serio_register_driver(ptr noundef @psmouse_drv, ptr noundef null, ptr noundef @.str.56) #13 ; 2 uses
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @psmouse_smbus_module_exit() #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.b, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal range(i32 -22, 1) i32 @psmouse_set_maxproto(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) #8 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %psmouse_protocol_by_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.b = getelementptr [40 x i8], ptr @psmouse_protocols, i64 %indvars.iv.i ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #13
  %i.f = icmp eq i64 %i.e, %i.a
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strncmp(ptr noundef %i.d, ptr noundef nonnull readonly %0, i64 noundef %i.a) #13
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %psmouse_protocol_by_name.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = tail call i64 @strlen(ptr noundef %i.i) #13
  %i.k = icmp eq i64 %i.j, %i.a
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @strncmp(ptr noundef %i.i, ptr noundef nonnull readonly %0, i64 noundef %i.a) #13
  %.not17.i = icmp eq i32 %i.l, 0
  br i1 %.not17.i, label %psmouse_protocol_by_name.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 17
  br i1 %exitcond.not.i, label %psmouse_protocol_by_name.exit.thread, label %bb.c, !llvm.loop !0

psmouse_protocol_by_name.exit:                    ; preds = %bb.d, %bb.f
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %psmouse_protocol_by_name.exit.thread, label %bb.h

bb.h:                                             ; preds = %psmouse_protocol_by_name.exit
  %2 = getelementptr i8, ptr %i.b, i64 4
  %3 = load i8, ptr %2, align 4, !range !12, !noundef !13
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.i, label %psmouse_protocol_by_name.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.m = load i32, ptr %i.b, align 8
  %i.n = getelementptr i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  store i32 %i.m, ptr %i.o, align 4
  br label %psmouse_protocol_by_name.exit.thread

psmouse_protocol_by_name.exit.thread:             ; preds = %bb.g, %psmouse_protocol_by_name.exit, %bb.h, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ -22, %bb.a ], [ -22, %bb.h ], [ -22, %psmouse_protocol_by_name.exit ], [ -22, %bb.g ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @psmouse_get_maxproto(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %i.b, align 4
  %i.d = tail call fastcc ptr @psmouse_protocol_by_type(i32 noundef %i.c) #14, !srcloc !20
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.48, ptr noundef %i.f) #13
  ret i32 %i.g
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @ps2bare_detect(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) #2 align 16 prefalign(16) {
bb.a:
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @.str.39, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 152        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @.str.40, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @input_set_capability(ptr noundef %i.f, i32 noundef 1, i32 noundef 274) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ps2pp_detect(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -19, 1) i32 @thinking_detect(ptr noundef %0, i1 noundef zeroext %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 26 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i16 10, ptr %i.a, align 2, !annotation !14
  %i.c = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  store i8 0, ptr %i.a, align 2
  %i.d = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4328) #13 ; 0 uses
  store i8 20, ptr %i.a, align 2
  %i.e = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  store i8 60, ptr %i.a, align 2
  %i.f = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  store i8 40, ptr %i.a, align 2
  %i.g = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  store i8 20, ptr %i.a, align 2
  %i.h = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  store i8 20, ptr %i.a, align 2
  %i.i = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  store i8 60, ptr %i.a, align 2
  %i.j = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  store i8 40, ptr %i.a, align 2
  %i.k = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  store i8 20, ptr %i.a, align 2
  %i.l = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  store i8 20, ptr %i.a, align 2
  %i.m = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  %i.n = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 754) #13 ; 0 uses
  %i.o = load i8, ptr %i.a, align 2
  %.not = icmp eq i8 %i.o, 2                      ; 2 uses
  %brmerge29.not = and i1 %1, %.not
  %.mux = select i1 %.not, i32 0, i32 -19
  br i1 %brmerge29.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 48
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.r, i64 274) #15, !srcloc !16
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 48
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.t, i64 276) #15, !srcloc !16
  %i.u = getelementptr i8, ptr %0, i64 144
  store ptr @.str.41, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %0, i64 152
  store ptr @.str.42, ptr %i.v, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ %.mux, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.021
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @cypress_detect(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @cypress_init(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -19, 1) i32 @genius_detect(ptr noundef %0, i1 noundef zeroext %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 3, ptr %i.a, align 4, !annotation !14
  %i.c = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4328) #13 ; 0 uses
  %i.d = call i32 @ps2_command(ptr noundef %i.b, ptr noundef null, i32 noundef 230) #13 ; 0 uses
  %i.e = call i32 @ps2_command(ptr noundef %i.b, ptr noundef null, i32 noundef 230) #13 ; 0 uses
  %i.f = call i32 @ps2_command(ptr noundef %i.b, ptr noundef null, i32 noundef 230) #13 ; 0 uses
  %i.g = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 1001) #13 ; 0 uses
  %i.h = load i8, ptr %i.a, align 4
  %i.i = icmp eq i8 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 51
  %or.cond.not53 = select i1 %i.i, i1 %i.l, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = load i8, ptr %i.m, align 2
  %i.o = icmp eq i8 %i.n, 85
  %or.cond7.not50 = select i1 %or.cond.not53, i1 %i.o, i1 false ; 2 uses
  %brmerge48.not = and i1 %1, %or.cond7.not50
  %.mux = select i1 %or.cond7.not50, i32 0, i32 -19
  br i1 %brmerge48.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 48
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.r, i64 274) #15, !srcloc !16
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 48
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.t, i64 276) #15, !srcloc !16
  %i.u = load ptr, ptr %i.p, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 48
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.v, i64 275) #15, !srcloc !16
  %i.w = load ptr, ptr %i.p, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 144
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.x, i64 8) #15, !srcloc !16
  %i.y = getelementptr i8, ptr %0, i64 144
  store ptr @.str.43, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %0, i64 152
  store ptr @.str.40, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 178
  store i8 4, ptr %i.aa, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %.mux, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -19, 1) i32 @intellimouse_detect(ptr noundef %0, i1 noundef zeroext %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i16 200, ptr %i.a, align 2, !annotation !14
  %i.c = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  store i8 100, ptr %i.a, align 2
  %i.d = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  store i8 80, ptr %i.a, align 2
  %i.e = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 4339) #13 ; 0 uses
  %i.f = call i32 @ps2_command(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 754) #13 ; 0 uses
  %i.g = load i8, ptr %i.a, align 2
  %.not = icmp eq i8 %i.g, 3                      ; 2 uses
  %brmerge29.not = and i1 %1, %.not
  %.mux = select i1 %.not, i32 0, i32 -19
  br i1 %brmerge29.not, label %bb.b, label %bb.g
end_hunk_0
