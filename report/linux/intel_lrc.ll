inline.NumInlined: 161
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@__lrc_init_regs:bb.a
  br label %lrc_ring_indirect_ptr.exit.i.i

lrc_ring_indirect_ptr.exit.i.i:                   ; preds = %bb.an, %bb.am, %bb.al
  %i.il = phi i64 [ %i.ik, %bb.an ], [ 26, %bb.am ], [ 20, %bb.al ]
  %i.im = getelementptr [4 x i8], ptr %0, i64 %i.il
  %i.in = getelementptr i8, ptr %i.im, i64 4
  store i32 %i.ib, ptr %i.in, align 4
  %.val.i.i = load ptr, ptr %2, align 8
  %i.io = getelementptr i8, ptr %.val.i.i, i64 1656
  %.val.val.i.i = load i8, ptr %i.io, align 8     ; 4 uses
  %i.ip = icmp ugt i8 %.val.val.i.i, 11
  br i1 %i.ip, label %lrc_setup_indirect_ctx.exit.i, label %bb.ao

bb.ao:                                            ; preds = %lrc_ring_indirect_ptr.exit.i.i
  %i.iq = icmp eq i8 %.val.val.i.i, 11
  br i1 %i.iq, label %lrc_setup_indirect_ctx.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ir = icmp samesign ugt i8 %.val.val.i.i, 8
  br i1 %i.ir, label %lrc_setup_indirect_ctx.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.is = icmp eq i8 %.val.val.i.i, 8
  %..i.i.i = select i1 %i.is, i32 1472, i32 0
  %i.it = getelementptr i8, ptr %2, i64 56
  %i.iu = load i8, ptr %i.it, align 8
  %i.iv = icmp eq i8 %i.iu, 0
  %i.iw = select i1 %i.iv, i64 29, i64 0
  br label %lrc_setup_indirect_ctx.exit.i

lrc_setup_indirect_ctx.exit.i:                    ; preds = %bb.aq, %bb.ap, %bb.ao, %lrc_ring_indirect_ptr.exit.i.i
  %i.ix = phi i32 [ %..i.i.i, %bb.aq ], [ 832, %lrc_ring_indirect_ptr.exit.i.i ], [ 2432, %bb.ap ], [ 1664, %bb.ao ]
  %i.iy = phi i64 [ %i.iw, %bb.aq ], [ 23, %lrc_ring_indirect_ptr.exit.i.i ], [ 29, %bb.ap ], [ 29, %bb.ao ]
  %i.iz = getelementptr [4 x i8], ptr %0, i64 %i.iy
  store i32 %i.ix, ptr %i.iz, align 4
  br label %init_wa_bb_regs.exit

init_wa_bb_regs.exit:                             ; preds = %bb.ak, %lrc_setup_indirect_ctx.exit.i
  %i.ja = load ptr, ptr %2, align 8               ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 1656
  %i.jc = load i8, ptr %i.jb, align 8             ; 3 uses
  %i.jd = zext i8 %i.jc to i32
  %i.je = shl nuw nsw i32 %i.jd, 8
  %i.jf = getelementptr i8, ptr %i.ja, i64 1657
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = zext i8 %i.jg to i32
  %i.ji = or disjoint i32 %i.je, %i.jh
  %i.jj = icmp samesign ugt i32 %i.ji, 3126
  br i1 %i.jj, label %select.unfold.i, label %bb.ar

bb.ar:                                            ; preds = %init_wa_bb_regs.exit
  %i.jk = icmp ugt i8 %i.jc, 11
  br i1 %i.jk, label %select.unfold.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jl = icmp samesign ugt i8 %i.jc, 8
  br i1 %i.jl, label %select.unfold.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jm = getelementptr i8, ptr %2, i64 56
  %i.jn = load i8, ptr %i.jm, align 8
  %i.jo = icmp eq i8 %i.jn, 0
  br i1 %i.jo, label %select.unfold.i, label %__reset_stop_ring.exit

select.unfold.i:                                  ; preds = %bb.at, %bb.as, %bb.ar, %init_wa_bb_regs.exit
  %.0.i.ph.i = phi i64 [ 84, %bb.as ], [ 96, %bb.ar ], [ 112, %init_wa_bb_regs.exit ], [ 88, %bb.at ]
  %i.jp = getelementptr [4 x i8], ptr %0, i64 %.0.i.ph.i
  %i.jq = getelementptr i8, ptr %i.jp, i64 4      ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4
  %i.js = and i32 %i.jr, -16777473
  %i.jt = or disjoint i32 %i.js, 16777216
  store i32 %i.jt, ptr %i.jq, align 4
  br label %__reset_stop_ring.exit

__reset_stop_ring.exit:                           ; preds = %bb.at, %select.unfold.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local void @lrc_reset_regs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1656
  %i.e = load i8, ptr %i.d, align 8               ; 3 uses
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %i.c, i64 1657
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j
  %i.l = icmp samesign ugt i32 %i.k, 3126
  br i1 %i.l, label %select.unfold.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i8 %i.e, 11
  br i1 %i.m, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ugt i8 %i.e, 8
  br i1 %i.n, label %select.unfold.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %1, i64 56
  %i.p = load i8, ptr %i.o, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %select.unfold.i, label %__reset_stop_ring.exit

select.unfold.i:                                  ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i.ph.i = phi i64 [ 84, %bb.c ], [ 96, %bb.b ], [ 112, %bb.a ], [ 88, %bb.d ]
  %i.r = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.ph.i
  %i.s = getelementptr i8, ptr %i.r, i64 4        ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, -16777473
  %i.v = or disjoint i32 %i.u, 16777216
  store i32 %i.v, ptr %i.s, align 4
  br label %__reset_stop_ring.exit

__reset_stop_ring.exit:                           ; preds = %bb.d, %select.unfold.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_init_state(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 68
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i32 @shmem_read(ptr noundef nonnull %i.b, i64 noundef 0, ptr noundef %2, i64 noundef %i.e) #13 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 136
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.g, i64 3) #14, !srcloc !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(4096) %2, i8 0, i64 4096, i1 false)
  %i.h = getelementptr i8, ptr %0, i64 424
  %i.i = load i8, ptr %i.h, align 8               ; 2 uses
  %.not22 = icmp eq i8 %i.i, 0
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 12
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(4096) %i.l, i8 0, i64 4096, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr i8, ptr %2, i64 4096
  tail call fastcc void @__lrc_init_regs(ptr noundef %i.m, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %.not) #12, !srcloc !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @shmem_read(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i32 @lrc_indirect_bb(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load i64, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 248
  %.val2 = load i32, ptr %i.d, align 8
  %i.e = trunc i64 %.val to i32
  %i.f = add i32 %.val2, %i.e
  %i.g = getelementptr i8, ptr %0, i64 424
  %.val3 = load i8, ptr %i.g, align 8
  %i.h = zext i8 %.val3 to i32
  %i.i = shl nuw nsw i32 %i.h, 12
  %i.j = add i32 %i.f, %i.i
  ret i32 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @lrc_alloc(ptr nofree noundef captures(none) initializes((48, 56)) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 496
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -1
  %2 = or i32 %i.f, 4095                          ; 2 uses
  %3 = add i32 %2, 1                              ; 2 uses
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 1656
  %i.i = load i8, ptr %i.h, align 8
  %i.j = icmp ugt i8 %i.i, 11
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = lshr exact i32 %3, 12
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr i8, ptr %0, i64 424
  store i8 %i.l, ptr %i.m, align 8
  %i.n = add i32 %2, 8193
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ %i.n, %bb.b ], [ %3, %bb.a ]  ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 708
  %.val.i = load i8, ptr %i.o, align 4
  %.not.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 8
  %.val27.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %.val27.i, i64 4672
  %.val27.val.i = load i32, ptr %i.q, align 8
  %i.r = icmp ugt i32 %.val27.val.i, 1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = lshr i32 %.0.i, 12
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr i8, ptr %0, i64 744
  store i8 %i.t, ptr %i.u, align 8
  %i.v = add i32 %.0.i, 4096
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.1.i = phi i32 [ %i.v, %bb.e ], [ %.0.i, %bb.d ], [ %.0.i, %bb.c ]
  %i.w = load ptr, ptr %1, align 8
  %i.x = zext i32 %.1.i to i64                    ; 2 uses
  %i.y = tail call ptr @i915_gem_object_create_lmem(ptr noundef %i.w, i64 noundef %i.x, i32 noundef 16) #13 ; 2 uses
  %i.z = icmp ugt ptr %i.y, inttoptr (i64 -4096 to ptr)
  br i1 %i.z, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = tail call ptr @i915_gem_object_create_shmem(ptr noundef %i.aa, i64 noundef %i.x) #13 ; 5 uses
  %i.ac = icmp ugt ptr %i.ab, inttoptr (i64 -4096 to ptr)
  br i1 %i.ac, label %__lrc_alloc_state.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call zeroext i1 @intel_gt_needs_wa_22016122933(ptr noundef %i.ae) #13
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @i915_gem_object_set_cache_coherency(ptr noundef %i.ab, i32 noundef 0) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.025.i = phi ptr [ %i.ab, %bb.i ], [ %i.ab, %bb.h ], [ %i.y, %bb.f ] ; 5 uses
  %i.ag = getelementptr i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call ptr @i915_vma_instance(ptr noundef %.025.i, ptr noundef %i.aj, ptr noundef null) #13 ; 5 uses
  %i.al = icmp ugt ptr %i.ak, inttoptr (i64 -4096 to ptr)
  br i1 %i.al, label %bb.k, label %__lrc_alloc_state.exit

bb.k:                                             ; preds = %bb.j
  %i.am = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.025.i, i32 -1, ptr elementtype(i32) %.025.i) #14, !srcloc !19 ; 2 uses
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp slt i32 %i.am, 1
  br i1 %i.ao, label %bb.m, label %__lrc_alloc_state.exit, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call void @refcount_warn_saturate(ptr noundef %.025.i, i32 noundef 3) #13
  br label %__lrc_alloc_state.exit

bb.n:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @drm_gem_object_free(ptr noundef %.025.i) #13, !callees !22, !inline_history !23
  br label %__lrc_alloc_state.exit

__lrc_alloc_state.exit:                           ; preds = %bb.g, %bb.j, %bb.l, %bb.m, %bb.n
  %.026.i = phi ptr [ %i.ak, %bb.j ], [ %i.ab, %bb.g ], [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ] ; 4 uses
  %i.ap = icmp ugt ptr %.026.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %__lrc_alloc_state.exit
  %i.aq = ptrtoint ptr %.026.i to i64
  %i.ar = trunc i64 %i.aq to i32
  br label %i915_vma_put.exit

bb.p:                                             ; preds = %__lrc_alloc_state.exit
  %i.as = getelementptr i8, ptr %0, i64 104
  %i.at = load i32, ptr %i.as, align 8
  %i.au = tail call ptr @intel_engine_create_ring(ptr noundef %1, i32 noundef %i.at) #13 ; 7 uses
  %i.av = icmp ugt ptr %i.au, inttoptr (i64 -4096 to ptr)
  br i1 %i.av, label %intel_ring_put.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr i8, ptr %0, i64 120       ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %.not = icmp ult ptr %i.ax, inttoptr (i64 4096 to ptr)
  br i1 %.not, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %.not33 = icmp eq ptr %i.ax, null
  br i1 %.not33, label %bb.t, label %bb.s, !prof !24

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 4095
  %i.bb = tail call ptr @intel_timeline_create_from_engine(ptr noundef %1, i32 noundef %i.ba) #13
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bc = getelementptr i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call ptr @__intel_timeline_create(ptr noundef %i.bd, ptr noundef null, i32 noundef 0) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0 = phi ptr [ %i.bb, %bb.s ], [ %i.be, %bb.t ] ; 5 uses
  %i.bf = icmp ugt ptr %.0, inttoptr (i64 -4096 to ptr)
  br i1 %i.bf, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.u
  store ptr %.0, ptr %i.aw, align 8
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.q
  %i.bg = getelementptr i8, ptr %0, i64 112
  store ptr %i.au, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %0, i64 96
  store ptr %.026.i, ptr %i.bh, align 8
  br label %i915_vma_put.exit

bb.w:                                             ; preds = %bb.u
  %i.bi = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.au, i32 -1, ptr elementtype(i32) %i.au) #14, !srcloc !19 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = icmp slt i32 %i.bi, 1
  br i1 %i.bk, label %bb.y, label %intel_ring_put.exit, !prof !20

bb.y:                                             ; preds = %bb.x
  tail call void @refcount_warn_saturate(ptr noundef %i.au, i32 noundef 3) #13
  br label %intel_ring_put.exit

bb.z:                                             ; preds = %bb.w
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @intel_ring_free(ptr noundef %i.au) #13, !callees !22, !inline_history !23
  br label %intel_ring_put.exit

intel_ring_put.exit:                              ; preds = %bb.p, %bb.z, %bb.y, %bb.x
  %.1.in.in = phi ptr [ %.0, %bb.z ], [ %.0, %bb.x ], [ %.0, %bb.y ], [ %i.au, %bb.p ]
  %.1.in = ptrtoint ptr %.1.in.in to i64
  %.1 = trunc i64 %.1.in to i32                   ; 3 uses
  %i.bl = getelementptr i8, ptr %.026.i, i64 184
  %.val = load ptr, ptr %i.bl, align 8            ; 4 uses
  %i.bm = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 -1, ptr elementtype(i32) %.val) #14, !srcloc !19 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %intel_ring_put.exit
  %i.bo = icmp slt i32 %i.bm, 1
  br i1 %i.bo, label %bb.ab, label %i915_vma_put.exit, !prof !20

bb.ab:                                            ; preds = %bb.aa
  tail call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef 3) #13
  br label %i915_vma_put.exit

bb.ac:                                            ; preds = %intel_ring_put.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  tail call void @drm_gem_object_free(ptr noundef %.val) #13, !callees !22, !inline_history !23
  br label %i915_vma_put.exit

i915_vma_put.exit:                                ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.v, %bb.o
  %.030 = phi i32 [ %i.ar, %bb.o ], [ 0, %bb.v ], [ %.1, %bb.aa ], [ %.1, %bb.ab ], [ %.1, %bb.ac ]
  ret i32 %.030
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_engine_create_ring(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @lrc_reset(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4
  tail call void @intel_ring_reset(ptr noundef %i.b, i32 noundef %i.d) #13
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8
  tail call fastcc void @__lrc_init_regs(ptr noundef %i.h, ptr noundef %0, ptr noundef readonly %i.f, i1 noundef zeroext true) #12, !srcloc !10
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %i.m = tail call i32 @lrc_update_regs(ptr noundef %0, ptr noundef %i.i, i32 noundef %i.l) #12
  %i.n = getelementptr i8, ptr %0, i64 160
  store i32 %i.m, ptr %i.n, align 8
  ret void
end_hunk_0
