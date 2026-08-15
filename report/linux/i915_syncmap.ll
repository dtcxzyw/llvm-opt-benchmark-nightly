inline.NumInlined: 31
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local void @i915_syncmap_init(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local zeroext i1 @i915_syncmap_is_later(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %1, 4
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.g, label %.preheader37, !prof !10

.preheader37:                                     ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.b ]
  %i.e = getelementptr i8, ptr %.0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader37
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val36 = load i32, ptr %i.g, align 8           ; 2 uses
  %i.h = zext nneg i32 %.val36 to i64
  %i.i = lshr i64 %1, %i.h
  %i.j = lshr i64 %i.i, 4
  %i.k = load i64, ptr %i.f, align 8
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %.preheader, label %.preheader37

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.m = phi i32 [ %.val, %bb.e ], [ %.val36, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %i.s, %bb.e ], [ %i.f, %bb.c ]  ; 3 uses
  %.not32 = icmp eq i32 %i.m, 0
  br i1 %.not32, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.n = getelementptr i8, ptr %.1, i64 24
  %i.o = zext nneg i32 %i.m to i64
  %i.p = lshr i64 %1, %i.o
  %i.q = and i64 %i.p, 15
  %i.r = getelementptr [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %.not33 = icmp eq ptr %i.s, null
  br i1 %.not33, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val = load i32, ptr %i.t, align 8             ; 2 uses
  %i.u = zext nneg i32 %.val to i64
  %i.v = lshr i64 %1, %i.u
  %i.w = lshr i64 %i.v, 4
  %i.x = load i64, ptr %i.s, align 8
  %.not34 = icmp eq i64 %i.w, %i.x
  br i1 %.not34, label %.preheader, label %.loopexit

bb.f:                                             ; preds = %.preheader
  store ptr %.1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %.2 = phi ptr [ %i.a, %bb.b ], [ %.1, %bb.f ]   ; 2 uses
  %i.y = and i64 %1, 15                           ; 2 uses
  %i.z = getelementptr i8, ptr %.2, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 1, %i.y
  %i.ad = and i64 %i.ac, %i.ab
  %.not35 = icmp eq i64 %i.ad, 0
  br i1 %.not35, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %.2, i64 24
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.y
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = sub i32 %i.ag, %2
  %i.ai = icmp sgt i32 %i.ah, -1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader37, %bb.e, %bb.d, %bb.g, %bb.a, %bb.h
  %.027 = phi i1 [ %i.ai, %bb.h ], [ false, %bb.a ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ false, %.preheader37 ]
  ret i1 %.027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @i915_syncmap_set(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %1, 4
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %.critedge, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %1 to i32
  %i.f = and i32 %i.e, 15
  %i.g = and i64 %1, 15
  %i.h = shl nuw nsw i32 1, %i.f
  %i.i = getelementptr i8, ptr %i.a, i64 12       ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = or i32 %i.j, %i.h
  store i32 %i.k, ptr %i.i, align 4
  %i.l = getelementptr i8, ptr %i.a, i64 24
  %i.m = getelementptr [4 x i8], ptr %i.l, i64 %i.g
  store i32 %2, ptr %i.m, align 4
  br label %bb.d

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.n = tail call fastcc i32 @__sync_set(ptr noundef %0, i64 noundef %1, i32 noundef %2) #7, !srcloc !12
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.n, %.critedge ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -12, 1) i32 @__sync_set(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.c = tail call noalias align 8 dereferenceable_or_null(88) ptr @__kmalloc_cache_noprof(ptr noundef %i.b, i32 noundef 3264, i64 noundef range(i64 88, 153) 88) #8 ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %__sync_alloc_leaf.exit.thread, label %__sync_alloc_leaf.exit, !prof !11

__sync_alloc_leaf.exit:                           ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = lshr i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 %i.e, ptr %i.c, align 8
  br label %.thread98

.preheader:                                       ; preds = %bb.a, %bb.c
  %.068 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %.068, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %.not81 = icmp eq ptr %i.g, null
  br i1 %.not81, label %.preheader128, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val89 = load i32, ptr %i.h, align 8
  %i.i = zext nneg i32 %.val89 to i64
  %i.j = lshr i64 %1, %i.i
  %i.k = lshr i64 %i.j, 4
  %i.l = load i64, ptr %i.g, align 8
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %.preheader128, label %.preheader

.preheader128:                                    ; preds = %bb.c, %.preheader
  %.270.ph = phi ptr [ %.068, %.preheader ], [ %i.g, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader128, %bb.h
  %.270 = phi ptr [ %i.bf, %bb.h ], [ %.270.ph, %.preheader128 ] ; 8 uses
  %i.n = getelementptr i8, ptr %.270, i64 8       ; 2 uses
  %.270.val88 = load i32, ptr %i.n, align 8       ; 2 uses
  %i.o = zext nneg i32 %.270.val88 to i64
  %i.p = lshr i64 %1, %i.o                        ; 2 uses
  %i.q = lshr i64 %i.p, 4
  %i.r = load i64, ptr %.270, align 8
  %.not82 = icmp eq i64 %i.q, %i.r
  br i1 %.not82, label %bb.g, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.d
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.t = tail call noalias align 8 dereferenceable_or_null(152) ptr @__kmalloc_cache_noprof(ptr noundef %i.s, i32 noundef 3520, i64 noundef range(i64 88, 153) 152) #8 ; 9 uses
  %.not84.not = icmp eq ptr %i.t, null
  br i1 %.not84.not, label %__sync_alloc_leaf.exit.thread, label %fls64.exit, !prof !11

fls64.exit:                                       ; preds = %_kzalloc_noprof.exit
  %.270.val = load i32, ptr %i.n, align 8         ; 2 uses
  %i.u = zext nneg i32 %.270.val to i64
  %i.v = lshr i64 %1, %i.u
  %i.w = lshr i64 %i.v, 4
  %i.x = load i64, ptr %.270, align 8
  %i.y = xor i64 %i.w, %i.x
  %i.z = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.y, i32 -1) #9, !srcloc !13 ; 2 uses
  %3 = or i32 %i.z, 3
  %i.aa = add i32 %.270.val, 1
  %i.ab = add i32 %i.aa, %3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 8       ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = lshr i64 %1, %i.ad
  %i.af = lshr i64 %i.ae, 4
  store i64 %i.af, ptr %i.t, align 8
  %i.ag = getelementptr i8, ptr %.270, i64 16     ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not85 = icmp eq ptr %i.ah, null
  br i1 %.not85, label %bb.f, label %bb.e

bb.e:                                             ; preds = %fls64.exit
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val90 = load i32, ptr %i.ai, align 8
  %i.aj = zext nneg i32 %.val90 to i64
  %i.ak = lshr i64 %1, %i.aj
  %i.al = and i64 %i.ak, 15
  %i.am = getelementptr i8, ptr %i.ah, i64 24
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.t, ptr %i.an, align 8
  %.pre = load ptr, ptr %i.ag, align 8
  br label %bb.f

bb.f:                                             ; preds = %fls64.exit, %bb.e
  %i.ao = phi ptr [ null, %fls64.exit ], [ %.pre, %bb.e ]
  %i.ap = getelementptr i8, ptr %i.t, i64 16
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = load i64, ptr %.270, align 8
  %4 = and i32 %i.z, -4
  %i.ar = zext nneg i32 %4 to i64
  %i.as = lshr i64 %i.aq, %i.ar                   ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 15
  %i.av = and i64 %i.as, 15
  %i.aw = shl nuw nsw i32 1, %i.au
  %i.ax = getelementptr i8, ptr %i.t, i64 12      ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = or i32 %i.aw, %i.ay
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = getelementptr i8, ptr %i.t, i64 24
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %i.av
  store ptr %.270, ptr %i.bb, align 8
  store ptr %i.t, ptr %i.ag, align 8
  %.472.val.pre = load i32, ptr %i.ac, align 8
  %.pre112 = zext nneg i32 %.472.val.pre to i64
  %.pre113 = lshr i64 %1, %.pre112
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %.not83 = icmp eq i32 %.270.val88, 0
  br i1 %.not83, label %.thread98, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pre-phi114 = phi i64 [ %.pre113, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %.472 = phi ptr [ %i.t, %bb.f ], [ %.270, %bb.g ] ; 3 uses
  %i.bc = getelementptr i8, ptr %.472, i64 24     ; 2 uses
  %i.bd = and i64 %.pre-phi114, 15                ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not86 = icmp eq ptr %i.bf, null
  br i1 %.not86, label %bb.i, label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.bh = tail call noalias align 8 dereferenceable_or_null(88) ptr @__kmalloc_cache_noprof(ptr noundef %i.bg, i32 noundef 3264, i64 noundef range(i64 88, 153) 88) #8 ; 7 uses
  %.not.i91 = icmp eq ptr %i.bh, null
  br i1 %.not.i91, label %__sync_alloc_leaf.exit.thread, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bj = trunc i64 %.pre-phi114 to i32
  %i.bk = and i32 %i.bj, 15
  %i.bl = getelementptr i8, ptr %i.bh, i64 16
  store ptr %.472, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %i.bh, i64 8
  store i32 0, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bn, align 4
  %i.bo = lshr i64 %1, 4
  store i64 %i.bo, ptr %i.bh, align 8
  %i.bp = shl nuw nsw i32 1, %i.bk
  %i.bq = getelementptr i8, ptr %.472, i64 12     ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = or i32 %i.br, %i.bp
  store i32 %i.bs, ptr %i.bq, align 4
  store ptr %i.bh, ptr %i.bi, align 8
  br label %.thread98

.thread98:                                        ; preds = %bb.g, %bb.j, %__sync_alloc_leaf.exit
  %.6 = phi ptr [ %i.c, %__sync_alloc_leaf.exit ], [ %i.bh, %bb.j ], [ %.270, %bb.g ] ; 3 uses
  %i.bt = trunc i64 %1 to i32
  %i.bu = and i32 %i.bt, 15
  %i.bv = and i64 %1, 15
  %i.bw = shl nuw nsw i32 1, %i.bu
  %i.bx = getelementptr i8, ptr %.6, i64 12       ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = or i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4
  %i.ca = getelementptr i8, ptr %.6, i64 24
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %i.bv
  store i32 %2, ptr %i.cb, align 4
  store ptr %.6, ptr %0, align 8
  br label %__sync_alloc_leaf.exit.thread

__sync_alloc_leaf.exit.thread:                    ; preds = %_kzalloc_noprof.exit, %bb.i, %bb.b, %.thread98
  %.4 = phi i32 [ -12, %bb.b ], [ 0, %.thread98 ], [ -12, %bb.i ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.4
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i915_syncmap_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi ptr [ %i.c, %.preheader ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = getelementptr i8, ptr %.0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.b, label %.preheader, !llvm.loop !14

bb.b:                                             ; preds = %.preheader
  tail call fastcc void @__sync_free(ptr noundef nonnull %.0) #7, !srcloc !16
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @__sync_free(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.thread10
  %i.e = load i32, ptr %i.c, align 4              ; 2 uses
  %i.f = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.e, i32 -1) #9, !srcloc !17 ; 2 uses
  %i.g = add i32 %i.f, 1                          ; 2 uses
  %.not8 = icmp eq i32 %i.g, 0
  br i1 %.not8, label %.thread, label %.thread10

.thread10:                                        ; preds = %bb.b
  %i.h = shl nsw i32 -1, %i.g
  %i.i = and i32 %i.h, %i.e
  store i32 %i.i, ptr %i.c, align 4
  %i.j = zext i32 %i.f to i64
  %i.k = getelementptr [8 x i8], ptr %i.d, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  tail call fastcc void @__sync_free(ptr noundef %i.l) #7, !srcloc !18
  br label %bb.b, !llvm.loop !19

.thread:                                          ; preds = %bb.b, %bb.a
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noredzone "no-builtin-wcslen" }
attributes #8 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 10244}
!13 = !{i64 1736925}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{i64 11089}
!17 = !{i64 1734216}
!18 = !{i64 10425}
!19 = distinct !{!19, !15}
end_hunk_0
