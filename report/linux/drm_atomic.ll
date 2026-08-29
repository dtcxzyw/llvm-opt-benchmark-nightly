Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_atomic?download=true
inline.NumInlined: 178
inline.NumDeleted: 63
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@drm_atomic_get_old_crtc_for_encoder:bb.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.e = getelementptr [40 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %drm_atomic_get_old_connector_for_encoder.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %drm_atomic_get_old_connector_for_encoder.exit.thread, label %bb.b, !llvm.loop !53

drm_atomic_get_old_connector_for_encoder.exit:    ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.f, i64 128
  %.val = load i32, ptr %i.l, align 8             ; 2 uses
  %.not.i11 = icmp slt i32 %.val, %i.b
  br i1 %.not.i11, label %drm_atomic_get_old_connector_state.exit, label %drm_atomic_get_old_connector_for_encoder.exit.thread

drm_atomic_get_old_connector_state.exit:          ; preds = %drm_atomic_get_old_connector_for_encoder.exit
  %i.m = sext i32 %.val to i64
  %i.n = getelementptr [40 x i8], ptr %i.d, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.p, null
  br i1 %.not10, label %drm_atomic_get_old_connector_for_encoder.exit.thread, label %bb.e

bb.e:                                             ; preds = %drm_atomic_get_old_connector_state.exit
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  br label %drm_atomic_get_old_connector_for_encoder.exit.thread

drm_atomic_get_old_connector_for_encoder.exit.thread: ; preds = %bb.d, %drm_atomic_get_old_connector_for_encoder.exit, %bb.a, %drm_atomic_get_old_connector_state.exit, %bb.e
  %.0 = phi ptr [ %i.r, %bb.e ], [ null, %drm_atomic_get_old_connector_for_encoder.exit ], [ null, %drm_atomic_get_old_connector_state.exit ], [ null, %bb.a ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local ptr @drm_atomic_get_new_crtc_for_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %.not17.i = icmp eq i32 %i.b, 0
  br i1 %.not17.i, label %drm_atomic_get_new_connector_for_encoder.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %wide.trip.count.i = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.e = getelementptr [40 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %drm_atomic_get_new_connector_for_encoder.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %drm_atomic_get_new_connector_for_encoder.exit.thread, label %bb.b, !llvm.loop !54

drm_atomic_get_new_connector_for_encoder.exit:    ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.f, i64 128
  %.val = load i32, ptr %i.l, align 8             ; 2 uses
  %.not.i11 = icmp slt i32 %.val, %i.b
  br i1 %.not.i11, label %drm_atomic_get_new_connector_state.exit, label %drm_atomic_get_new_connector_for_encoder.exit.thread

drm_atomic_get_new_connector_state.exit:          ; preds = %drm_atomic_get_new_connector_for_encoder.exit
  %i.m = sext i32 %.val to i64
  %i.n = getelementptr [40 x i8], ptr %i.d, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.p, null
  br i1 %.not10, label %drm_atomic_get_new_connector_for_encoder.exit.thread, label %bb.e

bb.e:                                             ; preds = %drm_atomic_get_new_connector_state.exit
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  br label %drm_atomic_get_new_connector_for_encoder.exit.thread

drm_atomic_get_new_connector_for_encoder.exit.thread: ; preds = %bb.d, %drm_atomic_get_new_connector_for_encoder.exit, %bb.a, %drm_atomic_get_new_connector_state.exit, %bb.e
  %.0 = phi ptr [ %i.r, %bb.e ], [ null, %drm_atomic_get_new_connector_for_encoder.exit ], [ null, %drm_atomic_get_new_connector_state.exit ], [ null, %bb.a ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @drm_atomic_get_connector_state(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "606: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 606b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 606) #17, !srcloc !57
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.6, i32 1287, i32 2305, i64 16) #17, !srcloc !58
  tail call void asm sideeffect "607: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 607b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 607) #17, !srcloc !59
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 16
  %.not94 = icmp eq i8 %i.f, 0
  br i1 %.not94, label %bb.i, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.k = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ]
  %i.l = tail call ptr @dev_driver_string(ptr noundef %i.k) #12 ; 0 uses
  %i.m = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.6, i32 1288, i32 2321, i64 16) #17, !srcloc !60
  %i.n = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i105 = icmp eq ptr %i.n, null
  br i1 %.not.i105, label %__drm_to_dev.exit106, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  br label %__drm_to_dev.exit106

__drm_to_dev.exit106:                             ; preds = %__drm_to_dev.exit, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ null, %__drm_to_dev.exit ]
  %i.r = tail call ptr @dev_driver_string(ptr noundef %i.q) #12
  %i.s = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i107 = icmp eq ptr %i.s, null
  br i1 %.not.i107, label %__drm_to_dev.exit108, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit106
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit108

__drm_to_dev.exit108:                             ; preds = %__drm_to_dev.exit106, %bb.g
  %i.v = phi ptr [ %i.u, %bb.g ], [ null, %__drm_to_dev.exit106 ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i109 = icmp eq ptr %i.x, null
  br i1 %.not.i109, label %bb.h, label %dev_name.exit112

bb.h:                                             ; preds = %__drm_to_dev.exit108
  %.val.i111 = load ptr, ptr %i.v, align 8
  br label %dev_name.exit112

dev_name.exit112:                                 ; preds = %__drm_to_dev.exit108, %bb.h
  %.0.i110 = phi ptr [ %.val.i111, %bb.h ], [ %i.x, %__drm_to_dev.exit108 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.m, ptr noundef %i.r, ptr noundef %.0.i110, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !61
  br label %bb.i

bb.i:                                             ; preds = %dev_name.exit112, %bb.c
  %i.y = getelementptr i8, ptr %i.a, i64 360
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = tail call i32 @drm_modeset_lock(ptr noundef %i.y, ptr noundef %i.z) #12 ; 2 uses
  %.not95 = icmp eq i32 %i.aa, 0
  br i1 %.not95, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = sext i32 %i.aa to i64
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %1, i64 128       ; 2 uses
  %.val = load i32, ptr %i.ad, align 8            ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8
  %.not96 = icmp slt i32 %.val, %i.af
  br i1 %.not96, label %drm_atomic_get_new_connector_state.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %i.a, i64 540
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add i32 %.val, 1
  %i.aj = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.ah) ; 5 uses
  %i.ak = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %2 = icmp slt i32 %i.aj, 0
  br i1 %2, label %.thread, label %_krealloc_array_noprof.exit, !prof !13

_krealloc_array_noprof.exit:                      ; preds = %bb.l
  %3 = zext nneg i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ak, align 8
  %4 = mul nuw nsw i64 %3, 40
  %i.am = tail call ptr @krealloc_node_align_noprof(ptr noundef %i.al, i64 noundef %4, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #18 ; 3 uses
  %.not97.not = icmp eq ptr %i.am, null
  br i1 %.not97.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %_krealloc_array_noprof.exit
  store ptr %i.am, ptr %i.ak, align 8
  %i.an = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr [40 x i8], ptr %i.am, i64 %i.ao
  %i.aq = sub i32 %i.aj, %i.an
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, 40
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ap, i8 0, i64 %i.as, i1 false)
  store i32 %i.aj, ptr %i.ae, align 8
  %.val101.pre = load i32, ptr %i.ad, align 8     ; 2 uses
  %i.at = icmp slt i32 %.val101.pre, %i.aj
  br i1 %i.at, label %drm_atomic_get_new_connector_state.exit, label %drm_atomic_get_new_connector_state.exit.thread

drm_atomic_get_new_connector_state.exit:          ; preds = %bb.k, %bb.m
  %.val101141 = phi i32 [ %.val101.pre, %bb.m ], [ %.val, %bb.k ]
  %i.au = getelementptr i8, ptr %0, i64 56
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = sext i32 %.val101141 to i64
  %i.ax = getelementptr [40 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not98 = icmp eq ptr %i.az, null
  br i1 %.not98, label %drm_atomic_get_new_connector_state.exit.thread, label %.thread

drm_atomic_get_new_connector_state.exit.thread:   ; preds = %bb.m, %drm_atomic_get_new_connector_state.exit
  %i.ba = getelementptr i8, ptr %1, i64 424
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call ptr %i.bd(ptr noundef %1) #12 ; 8 uses
  %.not99 = icmp eq ptr %i.be, null
  br i1 %.not99, label %.thread, label %bb.n

bb.n:                                             ; preds = %drm_atomic_get_new_connector_state.exit.thread
  %i.bf = getelementptr i8, ptr %1, i64 64        ; 2 uses
  tail call void @drm_mode_object_get(ptr noundef %i.bf) #12
  %i.bg = getelementptr i8, ptr %0, i64 56        ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = sext i32 %.val to i64                   ; 4 uses
  %i.bj = getelementptr [40 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  store ptr %i.be, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %1, i64 1960
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.bg, align 8
  %i.bo = getelementptr [40 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  store ptr %i.bm, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.bg, align 8
  %i.br = getelementptr [40 x i8], ptr %i.bq, i64 %i.bi
  %i.bs = getelementptr i8, ptr %i.br, i64 24
  store ptr %i.be, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %i.bg, align 8
  %i.bu = getelementptr [40 x i8], ptr %i.bt, i64 %i.bi
  store ptr %1, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %i.be, i64 32
  store ptr %0, ptr %i.bv, align 8
  %i.bw = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i116 = icmp eq ptr %i.bw, null
  br i1 %.not.i116, label %__drm_to_dev.exit117, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  br label %__drm_to_dev.exit117

__drm_to_dev.exit117:                             ; preds = %bb.n, %bb.o
  %i.bz = phi ptr [ %i.by, %bb.o ], [ null, %bb.n ]
  %i.ca = load i32, ptr %i.bf, align 8
  %i.cb = getelementptr i8, ptr %1, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bz, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %i.ca, ptr noundef %i.cc, ptr noundef nonnull %i.be, ptr noundef %0) #12
  %i.cd = getelementptr i8, ptr %i.be, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not100 = icmp eq ptr %i.ce, null
  br i1 %.not100, label %.thread, label %bb.p

bb.p:                                             ; preds = %__drm_to_dev.exit117
  %i.cf = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %0, ptr noundef nonnull %i.ce) #16 ; 2 uses
  %i.cg = icmp ugt ptr %i.cf, inttoptr (i64 -4096 to ptr)
  %spec.select = select i1 %i.cg, ptr %i.cf, ptr %i.be
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.l, %_krealloc_array_noprof.exit, %__drm_to_dev.exit117, %drm_atomic_get_new_connector_state.exit.thread, %drm_atomic_get_new_connector_state.exit, %bb.j
  %.3 = phi ptr [ %i.ac, %bb.j ], [ %i.be, %__drm_to_dev.exit117 ], [ inttoptr (i64 -12 to ptr), %drm_atomic_get_new_connector_state.exit.thread ], [ inttoptr (i64 -12 to ptr), %bb.l ], [ %i.az, %drm_atomic_get_new_connector_state.exit ], [ %spec.select, %bb.p ], [ inttoptr (i64 -12 to ptr), %_krealloc_array_noprof.exit ]
  ret ptr %.3
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @drm_atomic_get_bridge_state(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %0, ptr noundef %1) #16
  ret ptr %i.a
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local ptr @drm_atomic_get_old_bridge_state(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %drm_atomic_get_old_private_obj_state.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %drm_atomic_get_old_private_obj_state.exit.thread, label %bb.c, !llvm.loop !52

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.f = getelementptr [32 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %drm_atomic_get_old_private_obj_state.exit, label %bb.b

drm_atomic_get_old_private_obj_state.exit:        ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  br label %drm_atomic_get_old_private_obj_state.exit.thread

drm_atomic_get_old_private_obj_state.exit.thread: ; preds = %bb.b, %drm_atomic_get_old_private_obj_state.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %drm_atomic_get_old_private_obj_state.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local ptr @drm_atomic_get_new_bridge_state(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %drm_atomic_get_new_private_obj_state.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %drm_atomic_get_new_private_obj_state.exit.thread, label %bb.c, !llvm.loop !51

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.f = getelementptr [32 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %drm_atomic_get_new_private_obj_state.exit, label %bb.b

drm_atomic_get_new_private_obj_state.exit:        ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  br label %drm_atomic_get_new_private_obj_state.exit.thread

drm_atomic_get_new_private_obj_state.exit.thread: ; preds = %bb.b, %drm_atomic_get_new_private_obj_state.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %drm_atomic_get_new_private_obj_state.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_atomic_add_encoder_bridges(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %__free___drm_for_each_bridge_in_chain_cleanup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i15 = icmp eq ptr %i.a, null
  br i1 %.not.i15, label %__drm_to_dev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.b, %bb.c
  %i.d = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ]
  %i.e = getelementptr i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.d, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %i.f, ptr noundef %i.h, ptr noundef %0) #12
  %i.i = getelementptr i8, ptr %1, i64 104        ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.i) #12
  %i.j = getelementptr i8, ptr %1, i64 88         ; 2 uses
  %i.k = load volatile ptr, ptr %i.j, align 8     ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -104
end_hunk_0
