Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pcm_native?download=true
inline.NumInlined: 621
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@snd_pcm_ioctl_channel_info_compat:bb.a
  %sext.mask70 = and i64 %i.at, 4294967295
  %.not69 = icmp eq i64 %sext.mask70, 0
  br i1 %.not69, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.au = load i32, ptr %i.w, align 8
  %i.av = call i64 @llvm.read_register.i64(metadata !4)
  %i.aw = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.q, i32 %i.au, i64 4, i64 %i.av) #17, !srcloc !229 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  %i.az = ptrtoint ptr %i.ax to i64
  call void @llvm.write_register.i64(metadata !4, i64 %i.ay)
  %sext.mask72 = and i64 %i.az, 4294967295
  %.not71 = icmp eq i64 %sext.mask72, 0
  br i1 %.not71, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = load i32, ptr %i.ae, align 4
  %i.bb = call i64 @llvm.read_register.i64(metadata !4)
  %i.bc = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.y, i32 %i.ba, i64 4, i64 %i.bb) #17, !srcloc !230 ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0
  %i.be = extractvalue { ptr, i64 } %i.bc, 1
  %i.bf = ptrtoint ptr %i.bd to i64
  call void @llvm.write_register.i64(metadata !4, i64 %i.be)
  %sext.mask74 = and i64 %i.bf, 4294967295
  %.not73 = icmp eq i64 %sext.mask74, 0
  %spec.select = select i1 %.not73, i32 %i.af, i32 -14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.g, %bb.h, %bb.e, %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ -14, %bb.f ], [ -14, %bb.a ], [ %i.af, %bb.e ], [ -14, %bb.d ], [ -14, %bb.c ], [ -14, %bb.b ], [ %spec.select, %bb.i ], [ -14, %bb.h ], [ -14, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @snd_pcm_ioctl_xferi_compat(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4
  %.not36 = icmp eq i32 %i.d, %1
  br i1 %.not36, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 361
  %i.g = load i8, ptr %i.f, align 1, !range !15, !noundef !16
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 256
  tail call void @mutex_lock(ptr noundef %i.i) #15
  br label %_snd_pcm_stream_lock_irqsave.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 248
  %i.k = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.j) #15
  br label %_snd_pcm_stream_lock_irqsave.exit.i

_snd_pcm_stream_lock_irqsave.exit.i:              ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ 0, %bb.d ], [ %i.k, %bb.e ]
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 361
  %i.p = load i8, ptr %i.o, align 1, !range !15, !noundef !16
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_snd_pcm_stream_lock_irqsave.exit.i
  %i.r = getelementptr i8, ptr %0, i64 256
  tail call void @mutex_unlock(ptr noundef %i.r) #15
  br label %snd_pcm_get_state.exit

bb.g:                                             ; preds = %_snd_pcm_stream_lock_irqsave.exit.i
  %i.s = getelementptr i8, ptr %0, i64 248
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.s, i64 noundef %.0.i.i) #15
  br label %snd_pcm_get_state.exit

snd_pcm_get_state.exit:                           ; preds = %bb.f, %bb.g
  %i.t = icmp eq i32 %i.m, 0
  br i1 %i.t, label %bb.l, label %bb.h

bb.h:                                             ; preds = %snd_pcm_get_state.exit
  %i.u = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.v = getelementptr i8, ptr %2, i64 4
  %i.w = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.v, i64 4, i64 %i.u) #17, !srcloc !231 ; 3 uses
  %i.x = extractvalue { ptr, i32, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i32, i64 } %i.w, 1
  %i.z = extractvalue { ptr, i32, i64 } %i.w, 2
  %i.aa = ptrtoint ptr %i.x to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.z)
  %i.ab = zext i32 %i.y to i64
  %sext.mask = and i64 %i.aa, 4294967295
  %.not37 = icmp eq i64 %sext.mask, 0
  br i1 %.not37, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.ad = getelementptr i8, ptr %2, i64 8
  %i.ae = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.ad, i64 4, i64 %i.ac) #17, !srcloc !232 ; 3 uses
  %i.af = extractvalue { ptr, i32, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i32, i64 } %i.ae, 2
  %i.ah = ptrtoint ptr %i.af to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.ag)
  %sext.mask39 = and i64 %i.ah, 4294967295
  %.not38 = icmp eq i64 %sext.mask39, 0
  br i1 %.not38, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = extractvalue { ptr, i32, i64 } %i.ae, 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = inttoptr i64 %i.ab to ptr
  %i.al = tail call i64 @__snd_pcm_lib_xfer(ptr noundef nonnull %0, ptr noundef %i.ak, i1 noundef zeroext true, i64 noundef %i.aj, i1 noundef zeroext false) #15
  %.034 = trunc i64 %i.al to i32                  ; 3 uses
  %i.am = icmp slt i32 %.034, 0
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.ao = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %2, i32 %.034, i64 4, i64 %i.an) #17, !srcloc !233 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1
  %i.ar = ptrtoint ptr %i.ap to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.aq)
  %sext.mask41 = and i64 %i.ar, 4294967295
  %.not40 = icmp eq i64 %sext.mask41, 0
  %. = select i1 %.not40, i32 0, i32 -14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.i, %snd_pcm_get_state.exit, %bb.b, %bb.a
  %.0 = phi i32 [ -25, %bb.a ], [ -22, %bb.b ], [ -77, %snd_pcm_get_state.exit ], [ -14, %bb.h ], [ %., %bb.k ], [ %.034, %bb.j ], [ -14, %bb.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @snd_pcm_ioctl_xfern_compat(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %__free_kfree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4
  %.not61 = icmp eq i32 %i.d, %1
  br i1 %.not61, label %bb.c, label %__free_kfree.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 361
  %i.g = load i8, ptr %i.f, align 1, !range !15, !noundef !16
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 256
  tail call void @mutex_lock(ptr noundef %i.i) #15
  br label %_snd_pcm_stream_lock_irqsave.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 248
  %i.k = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.j) #15
  br label %_snd_pcm_stream_lock_irqsave.exit.i

_snd_pcm_stream_lock_irqsave.exit.i:              ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ 0, %bb.d ], [ %i.k, %bb.e ]
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 361
  %i.p = load i8, ptr %i.o, align 1, !range !15, !noundef !16
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_snd_pcm_stream_lock_irqsave.exit.i
  %i.r = getelementptr i8, ptr %0, i64 256
  tail call void @mutex_unlock(ptr noundef %i.r) #15
  br label %snd_pcm_get_state.exit

bb.g:                                             ; preds = %_snd_pcm_stream_lock_irqsave.exit.i
  %i.s = getelementptr i8, ptr %0, i64 248
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.s, i64 noundef %.0.i.i) #15
  br label %snd_pcm_get_state.exit

snd_pcm_get_state.exit:                           ; preds = %bb.f, %bb.g
  %i.t = icmp eq i32 %i.m, 0
  br i1 %i.t, label %__free_kfree.exit, label %bb.h

bb.h:                                             ; preds = %snd_pcm_get_state.exit
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 112
  %i.w = load i32, ptr %i.v, align 8              ; 5 uses
  %i.x = icmp sgt i32 %i.w, 128
  br i1 %i.x, label %__free_kfree.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.z = getelementptr i8, ptr %2, i64 4
  %i.aa = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.z, i64 4, i64 %i.y) #17, !srcloc !235 ; 3 uses
  %i.ab = extractvalue { ptr, i32, i64 } %i.aa, 0
  %i.ac = extractvalue { ptr, i32, i64 } %i.aa, 1
  %i.ad = extractvalue { ptr, i32, i64 } %i.aa, 2
  %i.ae = ptrtoint ptr %i.ab to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.ad)
  %i.af = zext i32 %i.ac to i64
  %sext.mask = and i64 %i.ae, 4294967295
  %.not62 = icmp eq i64 %sext.mask, 0
  br i1 %.not62, label %bb.j, label %__free_kfree.exit

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.ah = getelementptr i8, ptr %2, i64 8
  %i.ai = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.ah, i64 4, i64 %i.ag) #17, !srcloc !236 ; 3 uses
  %i.aj = extractvalue { ptr, i32, i64 } %i.ai, 0
  %i.ak = extractvalue { ptr, i32, i64 } %i.ai, 1
  %i.al = extractvalue { ptr, i32, i64 } %i.ai, 2
  %i.am = ptrtoint ptr %i.aj to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.al)
  %i.an = zext i32 %i.ak to i64
  %sext.mask64 = and i64 %i.am, 4294967295
  %.not63 = icmp eq i64 %sext.mask64, 0
  br i1 %.not63, label %bb.k, label %__free_kfree.exit

bb.k:                                             ; preds = %bb.j
  %i.ao = inttoptr i64 %i.af to ptr
  %i.ap = icmp slt i32 %i.w, 0
  br i1 %i.ap, label %__free_kfree.exit, label %_kmalloc_array_noprof.exit, !prof !26

_kmalloc_array_noprof.exit:                       ; preds = %bb.k
  %i.aq = zext nneg i32 %i.w to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.ar, i32 noundef range(i32 3264, 3521) 3264) #18 ; 5 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %__free_kfree.exit, label %.preheader

.preheader:                                       ; preds = %_kmalloc_array_noprof.exit
  %.not83 = icmp eq i32 %i.w, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.05382 = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.bd, %bb.l ] ; 2 uses
  %i.au = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.av = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %.05382, i64 4, i64 %i.au) #17, !srcloc !237 ; 3 uses
  %i.aw = extractvalue { ptr, i32, i64 } %i.av, 0
  %i.ax = extractvalue { ptr, i32, i64 } %i.av, 2
  %i.ay = ptrtoint ptr %i.aw to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.ax)
  %sext.mask68 = and i64 %i.ay, 4294967295
  %.not67 = icmp eq i64 %sext.mask68, 0
  br i1 %.not67, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.az = extractvalue { ptr, i32, i64 } %i.av, 1
  %i.ba = zext i32 %i.az to i64
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %.05382, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !234

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %i.be = tail call i64 @__snd_pcm_lib_xfer(ptr noundef nonnull %0, ptr noundef nonnull %i.as, i1 noundef zeroext false, i64 noundef %i.an, i1 noundef zeroext false) #15
  %.055 = trunc i64 %i.be to i32                  ; 3 uses
  %i.bf = icmp sgt i32 %.055, -1
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %i.bg = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.bh = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %2, i32 %.055, i64 4, i64 %i.bg) #17, !srcloc !238 ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1
  %i.bk = ptrtoint ptr %i.bi to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.bj)
  %sext.mask66 = and i64 %i.bk, 4294967295
  %.not65 = icmp eq i64 %sext.mask66, 0
  br i1 %.not65, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m, %._crit_edge
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.m, %bb.n
  %.2 = phi i32 [ %.055, %bb.n ], [ -14, %bb.m ], [ -14, %.lr.ph ] ; 2 uses
  %i.bl = icmp ugt ptr %i.as, inttoptr (i64 -4096 to ptr)
  br i1 %i.bl, label %__free_kfree.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  tail call void @kfree(ptr noundef nonnull %i.as) #15
  br label %__free_kfree.exit

__free_kfree.exit:                                ; preds = %bb.k, %_kmalloc_array_noprof.exit, %bb.o, %.critedge, %bb.i, %bb.j, %bb.h, %snd_pcm_get_state.exit, %bb.b, %bb.a
  %.3 = phi i32 [ -25, %bb.a ], [ -22, %bb.b ], [ -77, %snd_pcm_get_state.exit ], [ -22, %bb.h ], [ -14, %bb.i ], [ -14, %bb.j ], [ %.2, %bb.o ], [ %.2, %.critedge ], [ -12, %_kmalloc_array_noprof.exit ], [ -12, %bb.k ]
  ret i32 %.3
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @snd_pcm_ioctl_delay_compat(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !annotation !23
  %i.b = call fastcc i32 @snd_pcm_delay(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #19, !srcloc !239 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = call i64 @llvm.read_register.i64(metadata !4)
  %i.f = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %1, i32 %i.d, i64 4, i64 %i.e) #17, !srcloc !240 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  %i.i = ptrtoint ptr %i.g to i64
  call void @llvm.write_register.i64(metadata !4, i64 %i.h)
  %sext.mask = and i64 %i.i, 4294967295
  %.not12 = icmp eq i64 %sext.mask, 0
  %. = select i1 %.not12, i32 0, i32 -14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %., %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @snd_pcm_ioctl_rewind_compat(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.b = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 4, i64 %i.a) #17, !srcloc !241 ; 3 uses
  %i.c = extractvalue { ptr, i32, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i32, i64 } %i.b, 2
  %i.e = ptrtoint ptr %i.c to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.d)
  %sext.mask = and i64 %i.e, 4294967295
  %.not = icmp eq i64 %sext.mask, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i32, i64 } %i.b, 1
  %i.g = zext i32 %i.f to i64
  %i.h = tail call fastcc i64 @snd_pcm_rewind(ptr noundef nonnull %0, i64 noundef %i.g) #19, !srcloc !242
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.k = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %1, i32 %i.i, i64 4, i64 %i.j) #17, !srcloc !243 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = ptrtoint ptr %i.l to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.m)
  %sext.mask20 = and i64 %i.n, 4294967295
  %.not19 = icmp eq i64 %sext.mask20, 0
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.i, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.o, %bb.c ], [ -14, %bb.a ], [ -14, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @snd_pcm_ioctl_forward_compat(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.b = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 4, i64 %i.a) #17, !srcloc !244 ; 3 uses
  %i.c = extractvalue { ptr, i32, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i32, i64 } %i.b, 2
  %i.e = ptrtoint ptr %i.c to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.d)
  %sext.mask = and i64 %i.e, 4294967295
  %.not = icmp eq i64 %sext.mask, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i32, i64 } %i.b, 1
  %i.g = zext i32 %i.f to i64
  %i.h = tail call fastcc i64 @snd_pcm_forward(ptr noundef nonnull %0, i64 noundef %i.g) #19, !srcloc !245
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.k = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %1, i32 %i.i, i64 4, i64 %i.j) #17, !srcloc !246 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = ptrtoint ptr %i.l to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.m)
  %sext.mask20 = and i64 %i.n, 4294967295
  %.not19 = icmp eq i64 %sext.mask20, 0
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.i, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.o, %bb.c ], [ -14, %bb.a ], [ -14, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -14, 1) i32 @snd_pcm_status_user_compat64(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.snd_pcm_status64, align 8   ; 21 uses
  %4 = alloca %struct.compat_snd_pcm_status64, align 4 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 152, i1 false)
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.b = getelementptr i8, ptr %1, i64 68
  %i.c = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.b, i64 4, i64 %i.a) #17, !srcloc !247 ; 3 uses
  %i.d = extractvalue { ptr, i32, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i32, i64 } %i.c, 1
  %i.f = extractvalue { ptr, i32, i64 } %i.c, 2
  %i.g = ptrtoint ptr %i.d to i64
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 %i.e, ptr %i.h, align 4
  %sext.mask = and i64 %i.g, 4294967295
  %.not = icmp eq i64 %sext.mask, 0
  br i1 %.not, label %bb.c, label %clear_user.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i64 128, i1 false), !annotation !23
  %i.i = call i32 @snd_pcm_status64(ptr noundef nonnull %0, ptr noundef nonnull %3) #19 ; 0 uses
  %i.j = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #20, !srcloc !47
  %i.k = ptrtoint ptr %1 to i64
  %.not22 = icmp ult i64 %i.j, %i.k
  br i1 %.not22, label %clear_user.exit.thread, label %clear_user.exit

clear_user.exit:                                  ; preds = %bb.c
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !48
  %i.l = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.m = tail call { i64, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldinstr\0A771:\0A\09rep stosb\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 0) << 16) $| ((12*32+11)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call rep_stos_alternative\0A775:\0A.popsection\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={rsp},{ax},0,1,{rsp},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 128, ptr %1, i64 %i.l) #17, !srcloc !248 ; 2 uses
  %i.n = extractvalue { i64, ptr, i64 } %i.m, 0
  %i.o = extractvalue { i64, ptr, i64 } %i.m, 2
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.o)
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !50
  %.not14 = icmp eq i64 %i.n, 0
  br i1 %.not14, label %copy_to_user.exit, label %clear_user.exit.thread

copy_to_user.exit:                                ; preds = %clear_user.exit
  %i.p = load i32, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i32
end_hunk_0
