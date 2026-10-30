Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dma-fence-array?download=true
inline.NumInlined: 59
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_array_ops: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_fence_array_ops ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_array_alloc: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_fence_array_alloc ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_array_init: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_fence_array_init ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_array_create: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_fence_array_create ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_match_context: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_fence_match_context ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_array_first: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_fence_array_first ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dma_fence_array_next: ; .asciz \22\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad dma_fence_array_next ; .previous"

%struct.dma_fence_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@dma_fence_array_ops = dso_local constant %struct.dma_fence_ops { ptr @dma_fence_array_get_driver_name, ptr @dma_fence_array_get_timeline_name, ptr @dma_fence_array_enable_signaling, ptr @dma_fence_array_signaled, ptr null, ptr @dma_fence_array_release, ptr @dma_fence_array_set_deadline }, align 8
@__UNIQUE_ID_addressable_dma_fence_array_ops_379 = internal global ptr @dma_fence_array_ops, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_fence_array_alloc_380 = internal global ptr @dma_fence_array_alloc, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"drivers/dma-buf/dma-fence-array.c\00", align 1
@__UNIQUE_ID_addressable_dma_fence_array_init_385 = internal global ptr @dma_fence_array_init, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_fence_array_create_386 = internal global ptr @dma_fence_array_create, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_fence_match_context_387 = internal global ptr @dma_fence_match_context, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_fence_array_first_388 = internal global ptr @dma_fence_array_first, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_dma_fence_array_next_389 = internal global ptr @dma_fence_array_next, section ".discard.addressable", align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"dma_fence_array\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unbound\00", align 1
@dma_fence_chain_ops = external dso_local constant %struct.dma_fence_ops, align 8
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_addressable_dma_fence_array_alloc_380, ptr @__UNIQUE_ID_addressable_dma_fence_array_create_386, ptr @__UNIQUE_ID_addressable_dma_fence_array_first_388, ptr @__UNIQUE_ID_addressable_dma_fence_array_init_385, ptr @__UNIQUE_ID_addressable_dma_fence_array_next_389, ptr @__UNIQUE_ID_addressable_dma_fence_array_ops_379, ptr @__UNIQUE_ID_addressable_dma_fence_match_context_387], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef nonnull ptr @dma_fence_array_get_driver_name(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef nonnull ptr @dma_fence_array_get_timeline_name(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  ret ptr @.str.3
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef zeroext i1 @dma_fence_array_enable_signaling(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %to_dma_fence_array.exit.thread, label %to_dma_fence_array.exit

to_dma_fence_array.exit:                          ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load volatile ptr, ptr %i.a, align 8
  %.fr29 = freeze ptr %i.b
  %i.c = icmp eq ptr %.fr29, @dma_fence_array_ops
  %spec.select.i = select i1 %i.c, ptr %0, ptr null ; 8 uses
  %i.d = getelementptr i8, ptr %spec.select.i, i64 112 ; 2 uses
  %i.e = getelementptr i8, ptr %spec.select.i, i64 64 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %.lr.ph

to_dma_fence_array.exit.thread:                   ; preds = %bb.a
  %i.h = load i32, ptr inttoptr (i64 64 to ptr), align 64
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %dma_fence_get.exit.us.preheader

.lr.ph:                                           ; preds = %to_dma_fence_array.exit
  %.not.i23 = icmp eq ptr %spec.select.i, null
  %i.j = getelementptr i8, ptr %spec.select.i, i64 56 ; 7 uses
  %i.k = getelementptr i8, ptr %spec.select.i, i64 72 ; 3 uses
  %i.l = getelementptr i8, ptr %spec.select.i, i64 60 ; 4 uses
  %i.m = getelementptr i8, ptr %spec.select.i, i64 68 ; 3 uses
  br i1 %.not.i23, label %dma_fence_get.exit.us.preheader, label %.lr.ph.split

dma_fence_get.exit.us.preheader:                  ; preds = %to_dma_fence_array.exit.thread, %.lr.ph
  %i.n = phi ptr [ %i.m, %.lr.ph ], [ inttoptr (i64 68 to ptr), %to_dma_fence_array.exit.thread ] ; 2 uses
  %i.o = phi ptr [ %i.l, %.lr.ph ], [ inttoptr (i64 60 to ptr), %to_dma_fence_array.exit.thread ] ; 3 uses
  %i.p = phi ptr [ %i.k, %.lr.ph ], [ inttoptr (i64 72 to ptr), %to_dma_fence_array.exit.thread ] ; 2 uses
  %i.q = phi ptr [ %i.d, %.lr.ph ], [ inttoptr (i64 112 to ptr), %to_dma_fence_array.exit.thread ]
  %i.r = phi ptr [ %i.e, %.lr.ph ], [ inttoptr (i64 64 to ptr), %to_dma_fence_array.exit.thread ]
  br label %dma_fence_get.exit.us

dma_fence_get.exit.us:                            ; preds = %dma_fence_get.exit.us.preheader, %.critedge.us
  %indvars.iv35 = phi i64 [ 0, %dma_fence_get.exit.us.preheader ], [ %indvars.iv.next36, %.critedge.us ] ; 4 uses
  %i.s = getelementptr [32 x i8], ptr %i.q, i64 %indvars.iv35 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 24
  store ptr null, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.p, align 8
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv35
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call i32 @dma_fence_add_callback(ptr noundef %i.w, ptr noundef %i.s, ptr noundef @dma_fence_array_cb_func) #7
  %.not.us = icmp eq i32 %i.x, 0
  br i1 %.not.us, label %.critedge.us, label %bb.b

bb.b:                                             ; preds = %dma_fence_get.exit.us
  %i.y = load ptr, ptr %i.p, align 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %indvars.iv35
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 60
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %.not.i24.us = icmp eq i32 %i.ac, 0
  br i1 %.not.i24.us, label %dma_fence_array_set_pending_error.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.o, i32 %i.ac, i32 1, ptr elementtype(i32) %i.o) #8, !srcloc !11 ; 0 uses
  br label %dma_fence_array_set_pending_error.exit.us

dma_fence_array_set_pending_error.exit.us:        ; preds = %bb.c, %bb.b
  %i.ae = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.n, ptr elementtype(i32) %i.n) #8, !srcloc !12 ; 2 uses
  %i.af = icmp ult i8 %i.ae, 2
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc nuw i8 %i.ae to i1
  br i1 %i.ag, label %.split.us, label %.critedge.us

.critedge.us:                                     ; preds = %dma_fence_array_set_pending_error.exit.us, %dma_fence_get.exit.us
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8
  %i.ai = zext i32 %i.ah to i64
  %.not31 = icmp samesign ult i64 %indvars.iv.next36, %i.ai
  br i1 %.not31, label %dma_fence_get.exit.us, label %.loopexit, !llvm.loop !26

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %.lr.ph ] ; 4 uses
  %i.aj = getelementptr [32 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  store ptr %spec.select.i, ptr %i.ak, align 8
  %i.al = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.j, i32 1, ptr elementtype(i32) %i.j) #8, !srcloc !14 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.d, !prof !15

bb.d:                                             ; preds = %.lr.ph.split
  %i.am = add i32 %i.al, 1
  %i.an = or i32 %i.am, %i.al
  %.not10.i.i.i.i.i = icmp sgt i32 %i.an, -1
  br i1 %.not10.i.i.i.i.i, label %dma_fence_get.exit, label %.sink.split.i.i.i.i.i, !prof !27

.sink.split.i.i.i.i.i:                            ; preds = %bb.d, %.lr.ph.split
  %.sink.i.i.i.i.i = phi i32 [ 2, %.lr.ph.split ], [ 1, %bb.d ]
  tail call void @refcount_warn_saturate(ptr noundef %i.j, i32 noundef %.sink.i.i.i.i.i) #7
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %bb.d, %.sink.split.i.i.i.i.i
  %i.ao = load ptr, ptr %i.k, align 8
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i32 @dma_fence_add_callback(ptr noundef %i.aq, ptr noundef %i.aj, ptr noundef @dma_fence_array_cb_func) #7
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %dma_fence_get.exit
  %i.as = load ptr, ptr %i.k, align 8
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 60
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %.not.i24 = icmp eq i32 %i.aw, 0
  br i1 %.not.i24, label %dma_fence_array_set_pending_error.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.l, i32 %i.aw, i32 1, ptr elementtype(i32) %i.l) #8, !srcloc !11 ; 0 uses
  br label %dma_fence_array_set_pending_error.exit

dma_fence_array_set_pending_error.exit:           ; preds = %bb.e, %bb.f
  %i.ay = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.j, i32 -1, ptr elementtype(i32) %i.j) #8, !srcloc !14 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.i, label %bb.g

bb.g:                                             ; preds = %dma_fence_array_set_pending_error.exit
  %i.ba = icmp slt i32 %i.ay, 1
  br i1 %i.ba, label %bb.h, label %dma_fence_put.exit, !prof !15

bb.h:                                             ; preds = %bb.g
  tail call void @refcount_warn_saturate(ptr noundef %i.j, i32 noundef 3) #7
  br label %dma_fence_put.exit

bb.i:                                             ; preds = %dma_fence_array_set_pending_error.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !16
  tail call void @dma_fence_release(ptr noundef %i.j) #7
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %bb.g, %bb.h, %bb.i
  %i.bb = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.m, ptr elementtype(i32) %i.m) #8, !srcloc !12 ; 2 uses
  %i.bc = icmp ult i8 %i.bb, 2
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = trunc nuw i8 %i.bb to i1
  br i1 %i.bd, label %.split.us, label %.critedge

.split.us:                                        ; preds = %dma_fence_put.exit, %dma_fence_array_set_pending_error.exit.us
  %i.be = phi ptr [ %i.o, %dma_fence_array_set_pending_error.exit.us ], [ %i.l, %dma_fence_put.exit ] ; 2 uses
  %i.bf = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.be, i32 0, i32 1, ptr elementtype(i32) %i.be) #8, !srcloc !17 ; 0 uses
  br label %.loopexit

.critedge:                                        ; preds = %dma_fence_put.exit, %dma_fence_get.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load i32, ptr %i.e, align 8
  %i.bh = zext i32 %i.bg to i64
  %.not30 = icmp samesign ult i64 %indvars.iv.next, %i.bh
  br i1 %.not30, label %.lr.ph.split, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %.critedge, %.critedge.us, %to_dma_fence_array.exit.thread, %to_dma_fence_array.exit, %.split.us
  %i.bi = phi i1 [ false, %.split.us ], [ true, %to_dma_fence_array.exit ], [ true, %to_dma_fence_array.exit.thread ], [ true, %.critedge.us ], [ true, %.critedge ]
  ret i1 %i.bi
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef zeroext i1 @dma_fence_array_signaled(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %to_dma_fence_array.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load volatile ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @dma_fence_array_ops
  %spec.select.i = select i1 %i.c, ptr %0, ptr null
  br label %to_dma_fence_array.exit

to_dma_fence_array.exit:                          ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ null, %bb.a ], [ %spec.select.i, %bb.b ] ; 5 uses
  %i.d = getelementptr i8, ptr %.0.i, i64 68
  %i.e = load volatile i32, ptr %i.d, align 4     ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !30
  %i.f = getelementptr i8, ptr %.0.i, i64 48
  %i.g = load volatile i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 32
  %.not25 = icmp eq i64 %i.h, 0
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %to_dma_fence_array.exit
  %i.i = icmp slt i32 %i.e, 1
  br i1 %i.i, label %.loopexit27, label %.loopexit

bb.d:                                             ; preds = %to_dma_fence_array.exit
  %i.j = getelementptr i8, ptr %.0.i, i64 64      ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not30 = icmp eq i32 %i.k, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.0.i, i64 72
  br label %dma_fence_test_signaled_flag.exit.i

dma_fence_test_signaled_flag.exit.i:              ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.01928 = phi i32 [ %i.e, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 48
  %i.q = load volatile i64, ptr %i.p, align 8
  %.in.in.i.i = and i64 %i.q, 8
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.i.not.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %dma_fence_test_signaled_flag.exit.i
  tail call void @__rcu_read_lock() #7
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %i.s = load volatile ptr, ptr %i.r, align 8     ; 2 uses
  %.not.i23 = icmp eq ptr %i.s, null
  br i1 %.not.i23, label %dma_fence_is_signaled.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not13.i = icmp eq ptr %i.u, null
  br i1 %.not13.i, label %dma_fence_is_signaled.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call zeroext i1 %i.u(ptr noundef %i.o) #7, !inline_history !28
  br i1 %i.v, label %bb.h, label %dma_fence_is_signaled.exit

bb.h:                                             ; preds = %bb.g
  tail call void @__rcu_read_unlock() #7
  tail call void @dma_fence_signal(ptr noundef %i.o) #7
  br label %bb.i

dma_fence_is_signaled.exit:                       ; preds = %bb.e, %bb.f, %bb.g
  tail call void @__rcu_read_unlock() #7
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %dma_fence_test_signaled_flag.exit.i
  %i.w = add i32 %.01928, -1                      ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.loopexit27, label %bb.j

bb.j:                                             ; preds = %dma_fence_is_signaled.exit, %bb.i
  %.1 = phi i32 [ %i.w, %bb.i ], [ %.01928, %dma_fence_is_signaled.exit ]
end_hunk_0
