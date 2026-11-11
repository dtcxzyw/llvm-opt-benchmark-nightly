Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nfs4session?download=true
inline.NumInlined: 73
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@nfs4_lookup_slot:bb.a
  store ptr %0, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 24
  store i32 %i.f, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 28
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %i.h, i64 36
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %i.h, i64 32
  store i32 -1, ptr %i.l, align 8
  store ptr %i.h, ptr %.0.us.i, align 8
  %i.m = load i32, ptr %i.c, align 8
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.c, align 8
  %.pre28.i = load ptr, ptr %.0.us.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us.i
  %i.o = phi ptr [ %.pre28.i, %bb.c ], [ %i.d, %.split.us.i ] ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %nfs4_find_or_create_slot.exit, label %.split.us.i

.split18.us.i:                                    ; preds = %_kzalloc_noprof.exit.i.us.i
  store ptr null, ptr %.0.us.i, align 8
  br label %nfs4_find_or_create_slot.exit

nfs4_find_or_create_slot.exit:                    ; preds = %bb.d, %bb.a, %.split18.us.i
  %.0 = phi ptr [ inttoptr (i64 -7 to ptr), %bb.a ], [ inttoptr (i64 -12 to ptr), %.split18.us.i ], [ %i.o, %bb.d ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -110, 1) i32 @nfs4_slot_wait_on_seqid(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = tail call i32 @__SCT__might_resched() #8 ; 0 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 6 uses
  tail call void @_raw_spin_lock(ptr noundef %i.b) #8
  %i.c = getelementptr i8, ptr %0, i64 380        ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not.i.i.i = icmp ugt i32 %1, %i.d
  br i1 %.not.i.i.i, label %nfs4_slot_seqid_in_use.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 376        ; 3 uses
  br label %.split.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.d, %bb.b
  %.pn.us.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %0, %bb.b ]
  %.0.us.i.i.i.i = getelementptr i8, ptr %.pn.us.i.i.i.i, i64 8 ; 4 uses
  %i.f = load ptr, ptr %.0.us.i.i.i.i, align 8    ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_kzalloc_noprof.exit.i.us.i.i.i.i, label %bb.d

_kzalloc_noprof.exit.i.us.i.i.i.i:                ; preds = %.split.us.i.i.i.i
  %i.h = load i32, ptr %i.e, align 8
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.j = tail call noalias align 8 dereferenceable_or_null(48) ptr @__kmalloc_cache_noprof(ptr noundef %i.i, i32 noundef range(i32 3136, 10752) 10496, i64 noundef range(i64 48, 1009) 48) #10 ; 7 uses
  %.not.i.us.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.us.i.i.i.i, label %.split18.us.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_kzalloc_noprof.exit.i.us.i.i.i.i
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 24
  store i32 %i.h, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.j, i64 28
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %i.j, i64 36
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.j, i64 32
  store i32 -1, ptr %i.n, align 8
  store ptr %i.j, ptr %.0.us.i.i.i.i, align 8
  %i.o = load i32, ptr %i.e, align 8
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.e, align 8
  %.pre28.i.i.i.i = load ptr, ptr %.0.us.i.i.i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us.i.i.i.i
  %i.q = phi ptr [ %.pre28.i.i.i.i, %bb.c ], [ %i.f, %.split.us.i.i.i.i ] ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %nfs4_lookup_slot.exit.i.i, label %.split.us.i.i.i.i

.split18.us.i.i.i.i:                              ; preds = %_kzalloc_noprof.exit.i.us.i.i.i.i
  store ptr null, ptr %.0.us.i.i.i.i, align 8
  br label %nfs4_slot_seqid_in_use.exit

nfs4_lookup_slot.exit.i.i:                        ; preds = %bb.d
  %i.u = icmp ugt ptr %i.q, inttoptr (i64 -4096 to ptr)
  br i1 %i.u, label %nfs4_slot_seqid_in_use.exit, label %nfs4_slot_get_seqid.exit.i

nfs4_slot_get_seqid.exit.i:                       ; preds = %nfs4_lookup_slot.exit.i.i
  %i.v = getelementptr i8, ptr %i.q, i64 28
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.w, %2
  br i1 %i.x, label %arch_test_bit.exit.i, label %nfs4_slot_seqid_in_use.exit

arch_test_bit.exit.i:                             ; preds = %nfs4_slot_get_seqid.exit.i
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = zext i32 %1 to i64
  %i.aa = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.y, i64 range(i64 0, 4294967296) %i.z) #9, !srcloc !13 ; 2 uses
  %i.ab = icmp ult i8 %i.aa, 2
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = trunc nuw i8 %i.aa to i1
  br label %nfs4_slot_seqid_in_use.exit

nfs4_slot_seqid_in_use.exit:                      ; preds = %arch_test_bit.exit.i, %bb.a, %.split18.us.i.i.i.i, %nfs4_lookup_slot.exit.i.i, %nfs4_slot_get_seqid.exit.i
  %.0.i = phi i1 [ false, %bb.a ], [ false, %nfs4_lookup_slot.exit.i.i ], [ %i.ac, %arch_test_bit.exit.i ], [ false, %nfs4_slot_get_seqid.exit.i ], [ false, %.split18.us.i.i.i.i ] ; 3 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.b) #8
  %i.ad = icmp ne i64 %3, 0
  %or.cond = or i1 %i.ad, %.0.i
  %spec.store.select = select i1 %or.cond, i64 %3, i64 1 ; 2 uses
  %.not = icmp ne i64 %spec.store.select, 0
  %brmerge.not = and i1 %.0.i, %.not
  %spec.store.select.mux = select i1 %.0.i, i64 %3, i64 %spec.store.select
  br i1 %brmerge.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %nfs4_slot_seqid_in_use.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #8
  %i.ae = getelementptr i8, ptr %0, i64 352       ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 376       ; 6 uses
  %i.ag = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ah = zext i32 %1 to i64                      ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %nfs4_slot_seqid_in_use.exit84, %bb.e
  %.045 = phi i64 [ %3, %bb.e ], [ %spec.store.select9.fr, %nfs4_slot_seqid_in_use.exit84 ] ; 2 uses
  %i.ai = call i64 @prepare_to_wait_event(ptr noundef %i.ae, ptr noundef nonnull %4, i32 noundef 2) #8 ; 0 uses
  call void @_raw_spin_lock(ptr noundef %i.b) #8
  %i.aj = load i32, ptr %i.c, align 4
  %.not.i.i.i51 = icmp ugt i32 %1, %i.aj
  br i1 %.not.i.i.i51, label %nfs4_slot_seqid_in_use.exit67, label %.split.us.i.i.i.i52

.split.us.i.i.i.i52:                              ; preds = %bb.f, %bb.h
  %.pn.us.i.i.i.i53 = phi ptr [ %i.av, %bb.h ], [ %0, %bb.f ]
  %.0.us.i.i.i.i54 = getelementptr i8, ptr %.pn.us.i.i.i.i53, i64 8 ; 4 uses
  %i.ak = load ptr, ptr %.0.us.i.i.i.i54, align 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_kzalloc_noprof.exit.i.us.i.i.i.i63, label %bb.h

_kzalloc_noprof.exit.i.us.i.i.i.i63:              ; preds = %.split.us.i.i.i.i52
  %i.am = load i32, ptr %i.af, align 8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.ao = call noalias align 8 dereferenceable_or_null(48) ptr @__kmalloc_cache_noprof(ptr noundef %i.an, i32 noundef range(i32 3136, 10752) 10496, i64 noundef range(i64 48, 1009) 48) #10 ; 7 uses
  %.not.i.us.i.i.i.i64 = icmp eq ptr %i.ao, null
  br i1 %.not.i.us.i.i.i.i64, label %.split18.us.i.i.i.i66, label %bb.g

bb.g:                                             ; preds = %_kzalloc_noprof.exit.i.us.i.i.i.i63
  store ptr %0, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  store i32 %i.am, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 28
  store i32 0, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %i.ao, i64 36
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr i8, ptr %i.ao, i64 32
  store i32 -1, ptr %i.as, align 8
  store ptr %i.ao, ptr %.0.us.i.i.i.i54, align 8
  %i.at = load i32, ptr %i.af, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.af, align 8
  %.pre28.i.i.i.i65 = load ptr, ptr %.0.us.i.i.i.i54, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.us.i.i.i.i52
  %i.av = phi ptr [ %.pre28.i.i.i.i65, %bb.g ], [ %i.ak, %.split.us.i.i.i.i52 ] ; 4 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = icmp eq i32 %i.ax, %1
  br i1 %i.ay, label %nfs4_lookup_slot.exit.i.i55, label %.split.us.i.i.i.i52

.split18.us.i.i.i.i66:                            ; preds = %_kzalloc_noprof.exit.i.us.i.i.i.i63
  store ptr null, ptr %.0.us.i.i.i.i54, align 8
  br label %nfs4_slot_seqid_in_use.exit67

nfs4_lookup_slot.exit.i.i55:                      ; preds = %bb.h
  %i.az = icmp ugt ptr %i.av, inttoptr (i64 -4096 to ptr)
  br i1 %i.az, label %nfs4_slot_seqid_in_use.exit67, label %nfs4_slot_get_seqid.exit.i56

nfs4_slot_get_seqid.exit.i56:                     ; preds = %nfs4_lookup_slot.exit.i.i55
  %i.ba = getelementptr i8, ptr %i.av, i64 28
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %i.bb, %2
  br i1 %i.bc, label %arch_test_bit.exit.i58, label %nfs4_slot_seqid_in_use.exit67

arch_test_bit.exit.i58:                           ; preds = %nfs4_slot_get_seqid.exit.i56
  %i.bd = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ag, i64 range(i64 0, 4294967296) %i.ah) #9, !srcloc !13 ; 2 uses
  %i.be = icmp ult i8 %i.bd, 2
  call void @llvm.assume(i1 %i.be)
  %i.bf = trunc nuw i8 %i.bd to i1
  br label %nfs4_slot_seqid_in_use.exit67

nfs4_slot_seqid_in_use.exit67:                    ; preds = %arch_test_bit.exit.i58, %bb.f, %.split18.us.i.i.i.i66, %nfs4_lookup_slot.exit.i.i55, %nfs4_slot_get_seqid.exit.i56
  %.0.i57 = phi i1 [ false, %bb.f ], [ false, %nfs4_lookup_slot.exit.i.i55 ], [ %i.bf, %arch_test_bit.exit.i58 ], [ false, %nfs4_slot_get_seqid.exit.i56 ], [ false, %.split18.us.i.i.i.i66 ] ; 3 uses
  call void @_raw_spin_unlock(ptr noundef %i.b) #8
  %i.bg = icmp ne i64 %.045, 0
  %or.cond4 = or i1 %.0.i57, %i.bg
  %spec.store.select8 = select i1 %or.cond4, i64 %.045, i64 1 ; 3 uses
  %.not46 = icmp ne i64 %spec.store.select8, 0
  %brmerge92.not = and i1 %.0.i57, %.not46
  br i1 %brmerge92.not, label %bb.i, label %.thread85.split.loop.exit

bb.i:                                             ; preds = %nfs4_slot_seqid_in_use.exit67
  %i.bh = call i64 @schedule_timeout(i64 noundef %spec.store.select8) #8 ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.b) #8
  %i.bi = load i32, ptr %i.c, align 4
  %.not.i.i.i68 = icmp ugt i32 %1, %i.bi
  br i1 %.not.i.i.i68, label %nfs4_slot_seqid_in_use.exit84, label %.split.us.i.i.i.i69

.split.us.i.i.i.i69:                              ; preds = %bb.i, %bb.k
  %.pn.us.i.i.i.i70 = phi ptr [ %i.bu, %bb.k ], [ %0, %bb.i ]
  %.0.us.i.i.i.i71 = getelementptr i8, ptr %.pn.us.i.i.i.i70, i64 8 ; 4 uses
  %i.bj = load ptr, ptr %.0.us.i.i.i.i71, align 8 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_kzalloc_noprof.exit.i.us.i.i.i.i80, label %bb.k

_kzalloc_noprof.exit.i.us.i.i.i.i80:              ; preds = %.split.us.i.i.i.i69
  %i.bl = load i32, ptr %i.af, align 8
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.bn = call noalias align 8 dereferenceable_or_null(48) ptr @__kmalloc_cache_noprof(ptr noundef %i.bm, i32 noundef range(i32 3136, 10752) 10496, i64 noundef range(i64 48, 1009) 48) #10 ; 7 uses
  %.not.i.us.i.i.i.i81 = icmp eq ptr %i.bn, null
  br i1 %.not.i.us.i.i.i.i81, label %.split18.us.i.i.i.i83, label %bb.j

bb.j:                                             ; preds = %_kzalloc_noprof.exit.i.us.i.i.i.i80
  store ptr %0, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  store i32 %i.bl, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 28
  store i32 0, ptr %i.bp, align 4
  %i.bq = getelementptr i8, ptr %i.bn, i64 36
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr i8, ptr %i.bn, i64 32
  store i32 -1, ptr %i.br, align 8
  store ptr %i.bn, ptr %.0.us.i.i.i.i71, align 8
  %i.bs = load i32, ptr %i.af, align 8
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.af, align 8
  %.pre28.i.i.i.i82 = load ptr, ptr %.0.us.i.i.i.i71, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split.us.i.i.i.i69
  %i.bu = phi ptr [ %.pre28.i.i.i.i82, %bb.j ], [ %i.bj, %.split.us.i.i.i.i69 ] ; 4 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 24
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = icmp eq i32 %i.bw, %1
  br i1 %i.bx, label %nfs4_lookup_slot.exit.i.i72, label %.split.us.i.i.i.i69

.split18.us.i.i.i.i83:                            ; preds = %_kzalloc_noprof.exit.i.us.i.i.i.i80
  store ptr null, ptr %.0.us.i.i.i.i71, align 8
  br label %nfs4_slot_seqid_in_use.exit84

nfs4_lookup_slot.exit.i.i72:                      ; preds = %bb.k
  %i.by = icmp ugt ptr %i.bu, inttoptr (i64 -4096 to ptr)
  br i1 %i.by, label %nfs4_slot_seqid_in_use.exit84, label %nfs4_slot_get_seqid.exit.i73

nfs4_slot_get_seqid.exit.i73:                     ; preds = %nfs4_lookup_slot.exit.i.i72
  %i.bz = getelementptr i8, ptr %i.bu, i64 28
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp eq i32 %i.ca, %2
  br i1 %i.cb, label %arch_test_bit.exit.i75, label %nfs4_slot_seqid_in_use.exit84

arch_test_bit.exit.i75:                           ; preds = %nfs4_slot_get_seqid.exit.i73
  %i.cc = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ag, i64 range(i64 0, 4294967296) %i.ah) #9, !srcloc !13 ; 2 uses
  %i.cd = icmp ult i8 %i.cc, 2
  call void @llvm.assume(i1 %i.cd)
  %i.ce = trunc nuw i8 %i.cc to i1
  br label %nfs4_slot_seqid_in_use.exit84

nfs4_slot_seqid_in_use.exit84:                    ; preds = %arch_test_bit.exit.i75, %bb.i, %.split18.us.i.i.i.i83, %nfs4_lookup_slot.exit.i.i72, %nfs4_slot_get_seqid.exit.i73
  %.0.i74 = phi i1 [ false, %bb.i ], [ false, %nfs4_lookup_slot.exit.i.i72 ], [ %i.ce, %arch_test_bit.exit.i75 ], [ false, %nfs4_slot_get_seqid.exit.i73 ], [ false, %.split18.us.i.i.i.i83 ] ; 2 uses
  call void @_raw_spin_unlock(ptr noundef %i.b) #8
  %i.cf = icmp ne i64 %i.bh, 0
  %or.cond7 = select i1 %.0.i74, i1 true, i1 %i.cf
  %spec.store.select9 = select i1 %or.cond7, i64 %i.bh, i64 1
  %spec.store.select9.fr = freeze i64 %spec.store.select9 ; 3 uses
  %.not47 = icmp ne i64 %spec.store.select9.fr, 0
  %or.cond93.not = and i1 %.not47, %.0.i74
  br i1 %or.cond93.not, label %bb.f, label %.thread85

.thread85.split.loop.exit:                        ; preds = %nfs4_slot_seqid_in_use.exit67
  %spec.store.select8.mux.le = select i1 %.0.i57, i64 0, i64 %spec.store.select8
  br label %.thread85

.thread85:                                        ; preds = %nfs4_slot_seqid_in_use.exit84, %.thread85.split.loop.exit
  %.1.ph = phi i64 [ %spec.store.select8.mux.le, %.thread85.split.loop.exit ], [ %spec.store.select9.fr, %nfs4_slot_seqid_in_use.exit84 ]
  call void @finish_wait(ptr noundef %i.ae, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread

.thread:                                          ; preds = %nfs4_slot_seqid_in_use.exit, %.thread85
  %.043 = phi i64 [ %spec.store.select.mux, %nfs4_slot_seqid_in_use.exit ], [ %.1.ph, %.thread85 ]
  %i.cg = icmp eq i64 %.043, 0
  %. = select i1 %i.cg, i32 -110, i32 0
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @nfs4_alloc_slot(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
find_first_zero_bit.exit:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 380        ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = add i32 %i.c, 1
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i64 @_find_first_zero_bit(ptr noundef %i.a, i64 noundef range(i64 0, 4294967296) %i.e) #8 ; 2 uses
  %.pre = load i32, ptr %i.b, align 4
  %i.g = trunc i64 %i.f to i32                    ; 4 uses
  %.not = icmp ult i32 %.pre, %i.g
  br i1 %.not, label %bb.f, label %bb.a

bb.a:                                             ; preds = %find_first_zero_bit.exit
  %i.h = getelementptr i8, ptr %0, i64 376        ; 3 uses
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.c, %bb.a
  %.pn.us.i = phi ptr [ %i.t, %bb.c ], [ %0, %bb.a ]
  %.0.us.i = getelementptr i8, ptr %.pn.us.i, i64 8 ; 4 uses
  %i.i = load ptr, ptr %.0.us.i, align 8          ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_kzalloc_noprof.exit.i.us.i, label %bb.c

_kzalloc_noprof.exit.i.us.i:                      ; preds = %.split.us.i
  %i.k = load i32, ptr %i.h, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.m = tail call noalias align 8 dereferenceable_or_null(48) ptr @__kmalloc_cache_noprof(ptr noundef %i.l, i32 noundef range(i32 3136, 10752) 10496, i64 noundef range(i64 48, 1009) 48) #10 ; 7 uses
  %.not.i.us.i = icmp eq ptr %i.m, null
  br i1 %.not.i.us.i, label %nfs4_find_or_create_slot.exit.thread, label %bb.b

bb.b:                                             ; preds = %_kzalloc_noprof.exit.i.us.i
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 24
  store i32 %i.k, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.m, i64 28
  store i32 1, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %i.m, i64 36
  store i32 1, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %i.m, i64 32
  store i32 0, ptr %i.q, align 8
  store ptr %i.m, ptr %.0.us.i, align 8
  %i.r = load i32, ptr %i.h, align 8
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.h, align 8
  %.pre28.i = load ptr, ptr %.0.us.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.us.i
  %i.t = phi ptr [ %.pre28.i, %bb.b ], [ %i.i, %.split.us.i ] ; 6 uses
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp eq i32 %i.v, %i.g
  br i1 %i.w, label %nfs4_find_or_create_slot.exit, label %.split.us.i

nfs4_find_or_create_slot.exit.thread:             ; preds = %_kzalloc_noprof.exit.i.us.i
  store ptr null, ptr %.0.us.i, align 8
  br label %bb.f

nfs4_find_or_create_slot.exit:                    ; preds = %bb.c
  %i.x = icmp ugt ptr %i.t, inttoptr (i64 -4096 to ptr)
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %nfs4_find_or_create_slot.exit
  %i.y = and i64 %i.f, 4294967295
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.a, i64 range(i64 0, 4294967296) %i.y) #9, !srcloc !14
  %i.z = getelementptr i8, ptr %0, i64 384        ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp ult i32 %i.aa, %i.g
  %i.ac = icmp eq i32 %i.aa, -1
  %or.cond19.i = or i1 %i.ab, %i.ac
  br i1 %or.cond19.i, label %bb.e, label %nfs4_lock_slot.exit

bb.e:                                             ; preds = %bb.d
  store i32 %i.g, ptr %i.z, align 8
  br label %nfs4_lock_slot.exit

nfs4_lock_slot.exit:                              ; preds = %bb.d, %bb.e
  %i.ad = getelementptr i8, ptr %0, i64 408
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.t, i64 16
  store i64 %i.ae, ptr %i.af, align 8
  br label %bb.f

bb.f:                                             ; preds = %nfs4_find_or_create_slot.exit.thread, %nfs4_find_or_create_slot.exit, %nfs4_lock_slot.exit, %find_first_zero_bit.exit
  %.0 = phi ptr [ %i.t, %nfs4_find_or_create_slot.exit ], [ %i.t, %nfs4_lock_slot.exit ], [ inttoptr (i64 -16 to ptr), %find_first_zero_bit.exit ], [ inttoptr (i64 -12 to ptr), %nfs4_find_or_create_slot.exit.thread ]
  ret ptr %.0
}
end_hunk_0
