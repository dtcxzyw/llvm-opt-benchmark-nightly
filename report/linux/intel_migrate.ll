Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_migrate?download=true
inline.NumInlined: 89
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@intel_migrate_init:bb.a
  br label %i915_vm_put.exit.i.i

bb.ac:                                            ; preds = %bb.z
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !18
  call void @i915_vm_release(ptr noundef %i.s) #9, !inline_history !0
  br label %i915_vm_put.exit.i.i

i915_vm_put.exit.i.i:                             ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.bp = inttoptr i64 %.4.i.i to ptr
  br label %migrate_vm.exit.i

migrate_vm.exit.i:                                ; preds = %bb.y, %i915_vm_put.exit.i.i, %first_copy_engine.exit.thread.i
  %.055.i.i = phi ptr [ %i.s, %first_copy_engine.exit.thread.i ], [ %i.bp, %i915_vm_put.exit.i.i ], [ %i.s, %bb.y ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.bq = icmp ugt ptr %.055.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.bq, label %pinned_context.exit, label %bb.ad

bb.ad:                                            ; preds = %migrate_vm.exit.i
  %i.br = call ptr @intel_engine_create_pinned_context(ptr noundef nonnull %.06.i14.i, ptr noundef %.055.i.i, i32 noundef 524288, i32 noundef 264, ptr noundef nonnull @pinned_context.key, ptr noundef nonnull @.str.2) #9 ; 3 uses
  %i.bs = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.055.i.i, i32 -1, ptr elementtype(i32) %.055.i.i) #8, !srcloc !16 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bu = icmp slt i32 %i.bs, 1
  br i1 %i.bu, label %bb.af, label %pinned_context.exit, !prof !17

bb.af:                                            ; preds = %bb.ae
  call void @refcount_warn_saturate(ptr noundef %.055.i.i, i32 noundef 3) #9
  br label %pinned_context.exit

bb.ag:                                            ; preds = %bb.ad
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !18
  call void @i915_vm_release(ptr noundef %.055.i.i) #9, !inline_history !0
  br label %pinned_context.exit

pinned_context.exit:                              ; preds = %migrate_vm.exit.i, %bb.ae, %bb.af, %bb.ag
  %.0.i = phi ptr [ %i.br, %bb.ag ], [ %.055.i.i, %migrate_vm.exit.i ], [ %i.br, %bb.ae ], [ %i.br, %bb.af ] ; 3 uses
  %i.bv = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.bv, label %pinned_context.exit.thread, label %bb.ah

pinned_context.exit.thread:                       ; preds = %first_copy_engine.exit.i, %pinned_context.exit
  %.0.i7 = phi ptr [ %.0.i, %pinned_context.exit ], [ inttoptr (i64 -19 to ptr), %first_copy_engine.exit.i ]
  %i.bw = ptrtoint ptr %.0.i7 to i64
  %i.bx = trunc i64 %i.bw to i32
  br label %bb.ai

bb.ah:                                            ; preds = %pinned_context.exit
  store ptr %.0.i, ptr %0, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %pinned_context.exit.thread
  %.0 = phi i32 [ %i.bx, %pinned_context.exit.thread ], [ 0, %bb.ah ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @intel_migrate_create_context(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x ptr], align 16               ; 13 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !annotation !14
  %i.g = getelementptr i8, ptr %i.f, i64 4456
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.a, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]      ; 3 uses
  %i.i = getelementptr i8, ptr %i.f, i64 4464
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.not.1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.not.1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i32 %.1.i, 1
  %i.l = zext nneg i32 %.1.i to i64
  %i.m = getelementptr [8 x i8], ptr %i.a, i64 %i.l
  store ptr %i.j, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1.i = phi i32 [ %i.k, %bb.d ], [ %.1.i, %bb.c ] ; 3 uses
  %i.n = getelementptr i8, ptr %i.f, i64 4472
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.not.2.i = icmp eq ptr %i.o, null
  br i1 %.not.i.not.2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i32 %.1.1.i, 1
  %i.q = zext nneg i32 %.1.1.i to i64
  %i.r = getelementptr [8 x i8], ptr %i.a, i64 %i.q
  store ptr %i.o, ptr %i.r, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2.i = phi i32 [ %i.p, %bb.f ], [ %.1.1.i, %bb.e ] ; 3 uses
  %i.s = getelementptr i8, ptr %i.f, i64 4480
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i.not.3.i = icmp eq ptr %i.t, null
  br i1 %.not.i.not.3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw nsw i32 %.1.2.i, 1
  %i.v = zext nneg i32 %.1.2.i to i64
  %i.w = getelementptr [8 x i8], ptr %i.a, i64 %i.v
  store ptr %i.t, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3.i = phi i32 [ %i.u, %bb.h ], [ %.1.2.i, %bb.g ] ; 3 uses
  %i.x = getelementptr i8, ptr %i.f, i64 4488
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.not.4.i = icmp eq ptr %i.y, null
  br i1 %.not.i.not.4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = add nuw nsw i32 %.1.3.i, 1
  %i.aa = zext nneg i32 %.1.3.i to i64
  %i.ab = getelementptr [8 x i8], ptr %i.a, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.4.i = phi i32 [ %i.z, %bb.j ], [ %.1.3.i, %bb.i ] ; 3 uses
  %i.ac = getelementptr i8, ptr %i.f, i64 4496
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.not.5.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.not.5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = add nuw nsw i32 %.1.4.i, 1
  %i.af = zext nneg i32 %.1.4.i to i64
  %i.ag = getelementptr [8 x i8], ptr %i.a, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.5.i = phi i32 [ %i.ae, %bb.l ], [ %.1.4.i, %bb.k ] ; 3 uses
  %i.ah = getelementptr i8, ptr %i.f, i64 4504
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i.not.6.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.not.6.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = add nuw nsw i32 %.1.5.i, 1
  %i.ak = zext nneg i32 %.1.5.i to i64
  %i.al = getelementptr [8 x i8], ptr %i.a, i64 %i.ak
  store ptr %i.ai, ptr %i.al, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.6.i = phi i32 [ %i.aj, %bb.n ], [ %.1.5.i, %bb.m ] ; 3 uses
  %i.am = getelementptr i8, ptr %i.f, i64 4512
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.not.7.i = icmp eq ptr %i.an, null
  br i1 %.not.i.not.7.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = add nuw nsw i32 %.1.6.i, 1
  %i.ap = zext nneg i32 %.1.6.i to i64
  %i.aq = getelementptr [8 x i8], ptr %i.a, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.7.i = phi i32 [ %i.ao, %bb.p ], [ %.1.6.i, %bb.o ] ; 3 uses
  %i.ar = getelementptr i8, ptr %i.f, i64 4520
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i.not.8.i = icmp eq ptr %i.as, null
  br i1 %.not.i.not.8.i, label %__migrate_engines.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = add nuw nsw i32 %.1.7.i, 1
  %i.au = zext nneg i32 %.1.7.i to i64
  %i.av = getelementptr [8 x i8], ptr %i.a, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8
  br label %__migrate_engines.exit

__migrate_engines.exit:                           ; preds = %bb.q, %bb.r
  %.1.8.i = phi i32 [ %i.at, %bb.r ], [ %.1.7.i, %bb.q ]
  %i.aw = tail call i32 @get_random_u32() #9
  %1 = tail call range(i32 0, -1) i32 @llvm.umulh.i32(i32 %.1.8.i, i32 %i.aw)
  %2 = sext i32 %1 to i64
  %i.ax = getelementptr [8 x i8], ptr %i.a, i64 %2
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call ptr @intel_context_create(ptr noundef %i.ay) #9 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ba = icmp ugt ptr %i.az, inttoptr (i64 -4096 to ptr)
  br i1 %i.ba, label %bb.x, label %bb.s

bb.s:                                             ; preds = %__migrate_engines.exit
  %i.bb = getelementptr i8, ptr %i.az, i64 112
  store ptr null, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %i.az, i64 104
  store i32 262144, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %i.az, i64 32     ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 4 uses
  %i.bf = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.be, i32 -1, ptr elementtype(i32) %i.be) #8, !srcloc !16 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = icmp slt i32 %i.bf, 1
  br i1 %i.bh, label %bb.u, label %i915_vm_put.exit, !prof !17

bb.u:                                             ; preds = %bb.t
  tail call void @refcount_warn_saturate(ptr noundef %i.be, i32 noundef 3) #9
  br label %i915_vm_put.exit

bb.v:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !18
  tail call void @i915_vm_release(ptr noundef %i.be) #9, !inline_history !0
  br label %i915_vm_put.exit

i915_vm_put.exit:                                 ; preds = %bb.t, %bb.u, %bb.v
  %i.bi = load ptr, ptr %0, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8            ; 4 uses
  %i.bl = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bk, i32 1, ptr elementtype(i32) %i.bk) #8, !srcloc !16 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.w, !prof !17

bb.w:                                             ; preds = %i915_vm_put.exit
  %i.bm = add i32 %i.bl, 1
  %i.bn = or i32 %i.bm, %i.bl
  %.not10.i.i.i.i.i = icmp sgt i32 %i.bn, -1
  br i1 %.not10.i.i.i.i.i, label %i915_vm_get.exit, label %.sink.split.i.i.i.i.i, !prof !19

.sink.split.i.i.i.i.i:                            ; preds = %bb.w, %i915_vm_put.exit
  %.sink.i.i.i.i.i = phi i32 [ 2, %i915_vm_put.exit ], [ 1, %bb.w ]
  tail call void @refcount_warn_saturate(ptr noundef %i.bk, i32 noundef %.sink.i.i.i.i.i) #9
  br label %i915_vm_get.exit

i915_vm_get.exit:                                 ; preds = %bb.w, %.sink.split.i.i.i.i.i
  store ptr %i.bk, ptr %i.bd, align 8
  br label %bb.x

bb.x:                                             ; preds = %__migrate_engines.exit, %i915_vm_get.exit
  ret ptr %i.az
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_context_migrate_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr nofree noundef captures(none) initializes((0, 8)) %8) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %9 = alloca %struct.sgt_dma, align 8            ; 9 uses
  %10 = alloca %struct.sgt_dma, align 8           ; 9 uses
  %11 = alloca %struct.sgt_dma, align 8           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.a = getelementptr i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noalias !33 ; 2 uses
  store ptr %2, ptr %9, align 8, !alias.scope !33
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.b, ptr %i.c, align 8, !alias.scope !33
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i32, ptr %i.e, align 8, !noalias !33
  %i.g = zext i32 %i.f to i64
  %i.h = add i64 %i.b, %i.g
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.i = getelementptr i8, ptr %5, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !34 ; 2 uses
  store ptr %5, ptr %10, align 8, !alias.scope !34
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.j, ptr %i.k, align 8, !alias.scope !34
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.m = getelementptr i8, ptr %5, i64 24
  %i.n = load i32, ptr %i.m, align 8, !noalias !34
  %i.o = zext i32 %i.n to i64
  %i.p = add i64 %i.j, %i.o
  store i64 %i.p, ptr %i.l, align 8, !alias.scope !34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !annotation !14
  %i.q = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.r, align 8
  store ptr null, ptr %8, align 8
  %.not8.i = icmp eq ptr %2, null
  br i1 %.not8.i, label %scatter_list_length.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %sg_next.exit.i
  %.010.i = phi i64 [ %i.w, %sg_next.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.059.i = phi ptr [ %.06.i.i, %sg_next.exit.i ], [ %2, %bb.a ] ; 3 uses
  %i.t = getelementptr i8, ptr %.059.i, i64 24
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %.not7.i = icmp eq i32 %i.u, 0
  br i1 %.not7.i, label %scatter_list_length.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.v = zext i32 %i.u to i64
  %i.w = add i64 %.010.i, %i.v                    ; 3 uses
  %.val.i.i = load i64, ptr %.059.i, align 8
  %i.x = and i64 %.val.i.i, 2
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %bb.c, label %scatter_list_length.exit

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %.059.i, i64 32    ; 2 uses
  %.val7.i.i = load i64, ptr %i.y, align 8        ; 2 uses
  %i.z = trunc i64 %.val7.i.i to i1
  br i1 %i.z, label %bb.d, label %sg_next.exit.i, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.aa = and i64 %.val7.i.i, -4
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %sg_next.exit.i

sg_next.exit.i:                                   ; preds = %bb.d, %bb.c
  %.06.i.i = phi ptr [ %i.y, %bb.c ], [ %i.ab, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.06.i.i, null
  br i1 %.not.i, label %scatter_list_length.exit, label %.lr.ph.i, !llvm.loop !31

scatter_list_length.exit:                         ; preds = %.lr.ph.i, %bb.b, %sg_next.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.010.i, %.lr.ph.i ], [ %i.w, %sg_next.exit.i ], [ %i.w, %bb.b ] ; 4 uses
  %i.ac = getelementptr i8, ptr %i.s, i64 1648    ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 28
  %i.af = load i64, ptr %i.ae, align 4
  %i.ag = and i64 %i.af, 256
  %.not = icmp ne i64 %i.ag, 0                    ; 2 uses
  %i.ah = xor i1 %4, %7
  %or.cond228 = and i1 %i.ah, %.not
  br i1 %or.cond228, label %bb.e, label %get_ccs_sg_sgt.exit

bb.e:                                             ; preds = %scatter_list_length.exit
  %not. = xor i1 %4, true
  %i.ai = and i1 %7, %not.                        ; 5 uses
  %i.aj = xor i1 %i.ai, true                      ; 4 uses
  %.not8.i238 = icmp eq ptr %5, null
  br i1 %.not8.i238, label %scatter_list_length.exit250, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %bb.e, %sg_next.exit.i247
  %.010.i240 = phi i64 [ %i.an, %sg_next.exit.i247 ], [ 0, %bb.e ] ; 2 uses
  %.059.i241 = phi ptr [ %.06.i.i248, %sg_next.exit.i247 ], [ %5, %bb.e ] ; 3 uses
  %i.ak = getelementptr i8, ptr %.059.i241, i64 24
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  %.not7.i242 = icmp eq i32 %i.al, 0
  br i1 %.not7.i242, label %scatter_list_length.exit250, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i239
  %i.am = zext i32 %i.al to i64
  %i.an = add i64 %.010.i240, %i.am               ; 3 uses
  %.val.i.i243 = load i64, ptr %.059.i241, align 8
  %i.ao = and i64 %.val.i.i243, 2
  %.not.i.i244 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i244, label %bb.g, label %scatter_list_length.exit250

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %.059.i241, i64 32 ; 2 uses
  %.val7.i.i246 = load i64, ptr %i.ap, align 8    ; 2 uses
  %i.aq = trunc i64 %.val7.i.i246 to i1
  br i1 %i.aq, label %bb.h, label %sg_next.exit.i247, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.ar = and i64 %.val7.i.i246, -4
  %i.as = inttoptr i64 %i.ar to ptr
  br label %sg_next.exit.i247

sg_next.exit.i247:                                ; preds = %bb.h, %bb.g
  %.06.i.i248 = phi ptr [ %i.ap, %bb.g ], [ %i.as, %bb.h ] ; 2 uses
  %.not.i249 = icmp eq ptr %.06.i.i248, null
  br i1 %.not.i249, label %scatter_list_length.exit250, label %.lr.ph.i239, !llvm.loop !31

scatter_list_length.exit250:                      ; preds = %.lr.ph.i239, %bb.f, %sg_next.exit.i247, %bb.e
  %.0.lcssa.i245 = phi i64 [ 0, %bb.e ], [ %.010.i240, %.lr.ph.i239 ], [ %i.an, %sg_next.exit.i247 ], [ %i.an, %bb.f ] ; 2 uses
  %brmerge = or i1 %4, %7
  br i1 %brmerge, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %scatter_list_length.exit250
  %.0.lcssa.i.mux = select i1 %4, i64 %.0.lcssa.i, i64 %.0.lcssa.i245
  %.mux346 = select i1 %4, i32 %6, i32 %3
  %.mux = select i1 %4, ptr %10, ptr %9
  %.0168.ph = xor i1 %4, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.mux, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %scatter_list_length.exit250, %.sink.split
  %.0168 = phi i1 [ false, %scatter_list_length.exit250 ], [ %.0168.ph, %.sink.split ] ; 4 uses
  %.0158 = phi i32 [ 0, %scatter_list_length.exit250 ], [ %.mux346, %.sink.split ] ; 4 uses
  %.0153 = phi i64 [ %.0.lcssa.i, %scatter_list_length.exit250 ], [ %.0.lcssa.i.mux, %.sink.split ] ; 6 uses
  %.not200 = icmp eq i64 %.0.lcssa.i, %.0.lcssa.i245
  br i1 %.not200, label %get_ccs_sg_sgt.exit, label %bb.j
end_hunk_0
begin_hunk_1_@intel_migrate_clear:bb.a
  %i.ab = trunc nuw i8 %i.z to i1
  br i1 %i.ab, label %intel_context_unpin.exit, label %arch_atomic_try_cmpxchg.exit.i.i22, !prof !19

arch_atomic_try_cmpxchg.exit.i.i22:               ; preds = %.lr.ph.i
  %i.ac = extractvalue { i8, i32 } %i.y, 1        ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %atomic_add_unless.exit.i, label %.lr.ph.i, !prof !22

atomic_add_unless.exit.i:                         ; preds = %arch_atomic_try_cmpxchg.exit.i.i22, %.preheader.i
  %i.ae = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.h, i32 2, i32 1, ptr elementtype(i32) %i.h) #8, !srcloc !23
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.f, label %.preheader.i, !llvm.loop !1

bb.f:                                             ; preds = %atomic_add_unless.exit.i
  %i.ag = load ptr, ptr %i.r, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef %.018) #9, !inline_history !2
  br label %intel_context_unpin.exit

intel_context_unpin.exit:                         ; preds = %.lr.ph.i, %bb.f, %bb.e, %intel_context_pin_ww.exit
  %.0 = phi i32 [ %i.p, %intel_context_pin_ww.exit ], [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.aj = getelementptr i8, ptr %.018, i64 392
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 112
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.018, i32 -1, ptr elementtype(i32) %.018) #8, !srcloc !16 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.i, label %bb.g

bb.g:                                             ; preds = %intel_context_unpin.exit
  %i.ap = icmp slt i32 %i.an, 1
  br i1 %i.ap, label %bb.h, label %intel_context_put.exit, !prof !17

bb.h:                                             ; preds = %bb.g
  tail call void @refcount_warn_saturate(ptr noundef %.018, i32 noundef 3) #9
  br label %intel_context_put.exit

bb.i:                                             ; preds = %intel_context_unpin.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !18
  tail call void %i.am(ptr noundef %.018) #9, !inline_history !3
  br label %intel_context_put.exit

intel_context_put.exit:                           ; preds = %bb.i, %bb.h, %bb.g, %bb.a
  %.019 = phi i32 [ -19, %bb.a ], [ %.0, %bb.g ], [ %.0, %bb.h ], [ %.0, %bb.i ]
  ret i32 %.019
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_migrate_fini(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @intel_engine_destroy_pinned_context(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_engine_destroy_pinned_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_engine_create_pinned_context(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_ppgtt_create(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_vm_alloc_pt_stash(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_vm_lock_objects(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_vm_map_pt_stash(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vm_free_pt_stash(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xehp_insert_pte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = tail call i64 @__px_dma(ptr noundef %i.c) #9
  %i.e = load i64, ptr %2, align 8
  %i.f = getelementptr i8, ptr %0, i64 304
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @i915_gem_get_pat_index(ptr noundef %i.g, i32 noundef 0) #9
  tail call void %i.b(ptr noundef %0, i64 noundef %i.d, i64 noundef %i.e, i32 noundef %i.h, i32 noundef 2) #9
  %i.i = load i64, ptr %2, align 8
  %i.j = add i64 %i.i, 65536
  store i64 %i.j, ptr %2, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xehp_toggle_pdes(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %2, align 8
  %i.d = getelementptr i8, ptr %0, i64 304
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 @i915_gem_get_pat_index(ptr noundef %i.e, i32 noundef 0) #9
  tail call void %i.b(ptr noundef %0, i64 noundef 0, i64 noundef %i.c, i32 noundef %i.f, i32 noundef 2) #9
  %i.g = load i64, ptr %2, align 8
  %i.h = add i64 %i.g, 2097152
  store i64 %i.h, ptr %2, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @insert_pte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = tail call i64 @__px_dma(ptr noundef %i.c) #9
  %i.e = load i64, ptr %2, align 8
  %i.f = getelementptr i8, ptr %0, i64 304
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @i915_gem_get_pat_index(ptr noundef %i.g, i32 noundef 0) #9
  %i.i = load ptr, ptr %1, align 8
  %i.j = tail call zeroext i1 @i915_gem_object_is_lmem(ptr noundef %i.i) #9
  %i.k = select i1 %i.j, i32 2, i32 0
  tail call void %i.b(ptr noundef %0, i64 noundef %i.d, i64 noundef %i.e, i32 noundef %i.h, i32 noundef %i.k) #9
  %i.l = load i64, ptr %2, align 8
  %i.m = add i64 %i.l, 4096
  store i64 %i.m, ptr %2, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_ww_ctx_backoff(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__px_dma(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_get_pat_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_is_lmem(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_context_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vm_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_ring_begin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_ring_update_space(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__intel_context_do_pin_ww(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__intel_context_do_unpin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{null}
!1 = distinct !{!1, !15}
!2 = distinct !{null}
!3 = distinct !{null, null}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!10 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!11 = !{i32 1, !"override-stack-alignment", i32 8}
!12 = !{i32 4, !"SkipRaxSetup", i32 1}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!14 = !{!"auto-init"}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{i64 2148832553, i64 2148832592, i64 2148832613, i64 2148832650, i64 2148832673, i64 2148832682}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{i64 2151655146}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!"branch_weights", i32 1, i32 127}
!21 = !{i64 2148838302, i64 2148838341, i64 2148838362, i64 2148838399, i64 2148838422, i64 2148838431}
!22 = !{!"branch_weights", i32 127, i32 255873}
!23 = !{i64 2148835240, i64 2148835279, i64 2148835300, i64 2148835337, i64 2148835360, i64 2148835369}
!24 = distinct !{null, null}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !"sg_sgt"}
!28 = distinct !{!28, !27, !"sg_sgt: argument 0"}
!29 = distinct !{!29, !"sg_sgt"}
!30 = distinct !{!30, !29, !"sg_sgt: argument 0"}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = !{!28}
!34 = !{!30}
!35 = !{i64 20814}
!36 = !{i64 21007}
!37 = !{i64 21532}
!38 = !{i64 21836}
!39 = !{i64 22640}
!40 = !{i64 22990}
!41 = !{i64 2161949660, i64 2161949535}
!42 = !{i64 2161950183, i64 2161951255, i64 2161951288, i64 2161951323, i64 2161951339, i64 2161956327, i64 2161956385, i64 2161956434, i64 2161956244, i64 2161951398, i64 2161951430, i64 2161951513}
!43 = !{i64 2161956753, i64 2161956629}
!44 = !{i64 2161958118, i64 2161957993}
!45 = !{i64 2161958641, i64 2161959713, i64 2161959746, i64 2161959781, i64 2161959797, i64 2161960724, i64 2161960782, i64 2161960831, i64 2161960641, i64 2161959856, i64 2161959888, i64 2161959971}
!46 = !{i64 2161961150, i64 2161961026}
!47 = !{i64 2161962929, i64 2161962804}
!48 = !{i64 2161963452, i64 2161964630, i64 2161964663, i64 2161964698, i64 2161964714, i64 2161965641, i64 2161965699, i64 2161965748, i64 2161965558, i64 2161964773, i64 2161964805, i64 2161964888}
!49 = !{i64 2161966067, i64 2161965943}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !"sg_sgt"}
!52 = distinct !{!52, !51, !"sg_sgt: argument 0"}
!53 = !{!52}
!54 = !{i64 26510}
end_hunk_1
