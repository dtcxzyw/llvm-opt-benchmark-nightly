inline.NumInlined: 107
inline.NumDeleted: 48
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_display_fb_pin_interface = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.i915_gem_ww_ctx = type { %struct.ww_acquire_ctx, %struct.list_head, ptr, i8 }
%struct.ww_acquire_ctx = type { ptr, i64, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }

@i915_display_fb_pin_interface = dso_local local_unnamed_addr constant %struct.intel_display_fb_pin_interface { ptr @i915_fb_pin_ggtt_pin, ptr @i915_fb_pin_ggtt_unpin, ptr @i915_fb_pin_dpt_pin, ptr @i915_fb_pin_dpt_unpin, ptr null, ptr @i915_fb_pin_get_map }, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s %s: [drm] %s\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"drm_WARN_ON(!i915_gem_object_is_framebuffer(obj))\00", align 1
@intel_fb_pin_to_ggtt.__UNIQUE_ID_addressable___SCK__WARN_trap_795 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"drivers/gpu/drm/i915/i915_fb_pin.c\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"drm_WARN_ON(pin_params->alignment && !is_power_of_2(pin_params->alignment))\00", align 1
@intel_fb_pin_to_ggtt.__UNIQUE_ID_addressable___SCK__WARN_trap_796 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"drm_WARN_ON(ggtt_vma == dpt_vma)\00", align 1
@i915_fb_pin_dpt_pin.__UNIQUE_ID_addressable___SCK__WARN_trap_799 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"drm_WARN_ON(vm->bind_async_flags)\00", align 1
@intel_fb_pin_to_dpt.__UNIQUE_ID_addressable___SCK__WARN_trap_788 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"drm_WARN_ON(i915_dpt_offset(vma))\00", align 1
@intel_fb_pin_to_dpt.__UNIQUE_ID_addressable___SCK__WARN_trap_794 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@llvm.compiler.used = appending global [5 x ptr] [ptr @i915_fb_pin_dpt_pin.__UNIQUE_ID_addressable___SCK__WARN_trap_799, ptr @intel_fb_pin_to_dpt.__UNIQUE_ID_addressable___SCK__WARN_trap_788, ptr @intel_fb_pin_to_dpt.__UNIQUE_ID_addressable___SCK__WARN_trap_794, ptr @intel_fb_pin_to_ggtt.__UNIQUE_ID_addressable___SCK__WARN_trap_795, ptr @intel_fb_pin_to_ggtt.__UNIQUE_ID_addressable___SCK__WARN_trap_796], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_fb_pin_ggtt_pin(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.i915_gem_ww_ctx, align 8    ; 16 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !annotation !10
  %i.c = getelementptr i8, ptr %0, i64 672
  %i.d = load volatile ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %i915_gem_object_is_framebuffer.exit.i, label %.critedge.i

i915_gem_object_is_framebuffer.exit.i:            ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 660
  %i.f = load i16, ptr %i.e, align 4
  %i.g = and i16 %i.f, 1024
  %.not147.i = icmp eq i16 %i.g, 0
  br i1 %.not147.i, label %bb.b, label %.critedge.i, !prof !11

bb.b:                                             ; preds = %i915_gem_object_is_framebuffer.exit.i
  %.not.i99.i = icmp eq ptr %i.b, null
  br i1 %.not.i99.i, label %__drm_to_dev.exit104.thread.i, label %bb.c

__drm_to_dev.exit104.thread.i:                    ; preds = %bb.b
  %i.h = tail call ptr @dev_driver_string(ptr noundef null) #8 ; 0 uses
  %i.i = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 119, i32 2321, i64 16) #7, !srcloc !12
  %i.j = tail call ptr @dev_driver_string(ptr noundef null) #8
  br label %__drm_to_dev.exit106.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @dev_driver_string(ptr noundef %i.l) #8 ; 0 uses
  %i.n = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 119, i32 2321, i64 16) #7, !srcloc !12
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = tail call ptr @dev_driver_string(ptr noundef %i.o) #8
  %i.q = load ptr, ptr %i.k, align 8
  br label %__drm_to_dev.exit106.i

__drm_to_dev.exit106.i:                           ; preds = %bb.c, %__drm_to_dev.exit104.thread.i
  %i.r = phi ptr [ %i.n, %bb.c ], [ %i.i, %__drm_to_dev.exit104.thread.i ]
  %i.s = phi ptr [ %i.p, %bb.c ], [ %i.j, %__drm_to_dev.exit104.thread.i ]
  %i.t = phi ptr [ %i.q, %bb.c ], [ null, %__drm_to_dev.exit104.thread.i ] ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i107.i = icmp eq ptr %i.v, null
  br i1 %.not.i107.i, label %bb.d, label %dev_name.exit110.i

bb.d:                                             ; preds = %__drm_to_dev.exit106.i
  %.val.i109.i = load ptr, ptr %i.t, align 8
  br label %dev_name.exit110.i

dev_name.exit110.i:                               ; preds = %bb.d, %__drm_to_dev.exit106.i
  %.0.i108.i = phi ptr [ %.val.i109.i, %bb.d ], [ %i.v, %__drm_to_dev.exit106.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.r, ptr noundef %i.s, ptr noundef %.0.i108.i, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !13
  br label %intel_fb_pin_to_ggtt.exit.thread

.critedge.i:                                      ; preds = %i915_gem_object_is_framebuffer.exit.i, %bb.a
  %i.w = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %.critedge93.i, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = add nsw i64 %i.y, -1                     ; 2 uses
  %i.aa = xor i64 %i.z, %i.y
  %.not148.i = icmp samesign ult i64 %i.z, %i.aa
  br i1 %.not148.i, label %.critedge93.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %.not.i111.i = icmp eq ptr %i.b, null
  br i1 %.not.i111.i, label %__drm_to_dev.exit120.thread.i, label %bb.g

__drm_to_dev.exit120.thread.i:                    ; preds = %bb.f
  %i.ab = tail call ptr @dev_driver_string(ptr noundef null) #8 ; 0 uses
  %i.ac = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 123, i32 2321, i64 16) #7, !srcloc !15
  %i.ad = tail call ptr @dev_driver_string(ptr noundef null) #8
  br label %__drm_to_dev.exit122.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.b, i64 8       ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call ptr @dev_driver_string(ptr noundef %i.af) #8 ; 0 uses
  %i.ah = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 123, i32 2321, i64 16) #7, !srcloc !15
  %i.ai = load ptr, ptr %i.ae, align 8
  %i.aj = tail call ptr @dev_driver_string(ptr noundef %i.ai) #8
  %i.ak = load ptr, ptr %i.ae, align 8
  br label %__drm_to_dev.exit122.i

__drm_to_dev.exit122.i:                           ; preds = %bb.g, %__drm_to_dev.exit120.thread.i
  %i.al = phi ptr [ %i.ah, %bb.g ], [ %i.ac, %__drm_to_dev.exit120.thread.i ]
  %i.am = phi ptr [ %i.aj, %bb.g ], [ %i.ad, %__drm_to_dev.exit120.thread.i ]
  %i.an = phi ptr [ %i.ak, %bb.g ], [ null, %__drm_to_dev.exit120.thread.i ] ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i123.i = icmp eq ptr %i.ap, null
  br i1 %.not.i123.i, label %bb.h, label %dev_name.exit126.i

bb.h:                                             ; preds = %__drm_to_dev.exit122.i
  %.val.i125.i = load ptr, ptr %i.an, align 8
  br label %dev_name.exit126.i

dev_name.exit126.i:                               ; preds = %bb.h, %__drm_to_dev.exit122.i
  %.0.i124.i = phi ptr [ %.val.i125.i, %bb.h ], [ %i.ap, %__drm_to_dev.exit122.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.al, ptr noundef %i.am, ptr noundef %.0.i124.i, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !16
  br label %intel_fb_pin_to_ggtt.exit.thread

.critedge93.i:                                    ; preds = %bb.e, %.critedge.i
  %i.aq = getelementptr i8, ptr %i.b, i64 3176    ; 2 uses
  %i.ar = tail call ptr @intel_runtime_pm_get(ptr noundef %i.aq) #8 ; 0 uses
  %i.as = getelementptr i8, ptr %i.b, i64 5920    ; 4 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.as, ptr elementtype(i32) %i.as) #7, !srcloc !17
  %i.at = getelementptr i8, ptr %1, i64 21
  %i.au = load i8, ptr %i.at, align 1, !range !18, !noundef !19
  %i.av = shl nuw nsw i8 %i.au, 3
  %spec.select.i = zext nneg i8 %i.av to i32
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %5, i1 noundef zeroext true) #8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ax = getelementptr i8, ptr %0, i64 248
  %i.ay = getelementptr i8, ptr %0, i64 544       ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 552
  %i.bc = getelementptr i8, ptr %1, i64 22        ; 2 uses
  %i.bd = getelementptr i8, ptr %i.b, i64 1648
  %i.be = getelementptr i8, ptr %1, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bg = getelementptr i8, ptr %0, i64 688       ; 5 uses
  %i.bh = getelementptr i8, ptr %1, i64 16
  %.not87.i = icmp eq ptr %4, null
  %i.bi = getelementptr i8, ptr %1, i64 23
  br label %bb.i

bb.i:                                             ; preds = %bb.ad, %.critedge93.i
  %.070.i = phi ptr [ null, %.critedge93.i ], [ %.1146.i, %bb.ad ] ; 4 uses
  %i.bj = load i8, ptr %i.aw, align 8, !range !18, !noundef !19
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = load ptr, ptr %i.ax, align 8            ; 2 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.bl, ptr noundef nonnull %5) #8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bn = call i32 @ww_mutex_lock(ptr noundef %i.bl, ptr noundef nonnull %5) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i32 [ %i.bm, %bb.j ], [ %i.bn, %bb.k ] ; 4 uses
  %i.bo = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.bo, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bp = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #7, !srcloc !20 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %bb.n, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.bq = add i32 %i.bp, 1
  %i.br = or i32 %i.bq, %i.bp
  %.not10.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.br, -1
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, !prof !14

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.n, %bb.m
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.m ], [ 1, %bb.n ]
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i.i.i.i) #8
  br label %i915_gem_object_get.exit.i.i.i

i915_gem_object_get.exit.i.i.i:                   ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %bb.n
  %i.bs = load ptr, ptr %i.ba, align 8            ; 2 uses
  store ptr %i.ay, ptr %i.ba, align 8
  store ptr %i.az, ptr %i.ay, align 8
  store ptr %i.bs, ptr %i.bb, align 8
  store volatile ptr %i.ay, ptr %i.bs, align 8
  br label %bb.o

bb.o:                                             ; preds = %i915_gem_object_get.exit.i.i.i, %bb.l
  %i.bt = icmp eq i32 %.0.i.i.i, -114
  %spec.store.select.i6.i.i = select i1 %i.bt, i32 0, i32 %.0.i.i.i
  switch i32 %spec.store.select.i6.i.i, label %i915_gem_object_pin_pages.exit.thread.i [
    i32 -35, label %bb.p
    i32 0, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bu = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #7, !srcloc !20 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i, label %bb.q, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.bv = add i32 %i.bu, 1
  %i.bw = or i32 %i.bv, %i.bu
  %.not10.i.i.i.i.i.i20.i8.i.i = icmp sgt i32 %i.bw, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i.i, label %i915_gem_object_pin_pages.exit.thread.thread.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i, !prof !14

.sink.split.i.i.i.i.i.i21.i9.i.i:                 ; preds = %bb.q, %bb.p
  %.sink.i.i.i.i.i.i22.i10.i.i = phi i32 [ 2, %bb.p ], [ 1, %bb.q ]
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i22.i10.i.i) #8
  br label %i915_gem_object_pin_pages.exit.thread.thread.i

i915_gem_object_pin_pages.exit.thread.thread.i:   ; preds = %.sink.split.i.i.i.i.i.i21.i9.i.i, %bb.q
  store ptr %0, ptr %i.bf, align 8
  br label %bb.ad

bb.r:                                             ; preds = %bb.o
  %i.bx = load i8, ptr %i.bc, align 2, !range !18, !noundef !19
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = load i32, ptr %i.be, align 4
  %i.ca = call i32 @i915_gem_object_attach_phys(ptr noundef %0, i32 noundef %i.bz) #8
  br label %.critedge95.i

bb.t:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.bd, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 24
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = and i32 %i.cd, 2
  %.not84.i = icmp eq i32 %i.ce, 0
  br i1 %.not84.i, label %.critedge95.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = call i32 @i915_gem_object_migrate(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #8
  br label %.critedge95.i

.critedge95.i:                                    ; preds = %bb.u, %bb.s
  %.072.i = phi i32 [ %i.ca, %bb.s ], [ %i.cf, %bb.u ] ; 2 uses
  %.not85.i = icmp eq i32 %.072.i, 0
  br i1 %.not85.i, label %.critedge95.thread.i, label %i915_gem_object_pin_pages.exit.thread.i

.critedge95.thread.i:                             ; preds = %.critedge95.i, %bb.t
  %i.cg = load volatile i32, ptr %i.bg, align 8   ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %i915_gem_object_pin_pages.exit.i, label %.lr.ph.i.i, !prof !22

.lr.ph.i.i:                                       ; preds = %.critedge95.thread.i, %arch_atomic_try_cmpxchg.exit.i.i
  %.047.i.i = phi i32 [ %i.cn, %arch_atomic_try_cmpxchg.exit.i.i ], [ %i.cg, %.critedge95.thread.i ] ; 2 uses
  %i.ci = add i32 %.047.i.i, 1
  %i.cj = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bg, i32 range(i32 2, 1) %i.ci, ptr elementtype(i32) %i.bg, i32 %.047.i.i) #7, !srcloc !23 ; 2 uses
  %i.ck = extractvalue { i8, i32 } %i.cj, 0       ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 2
  call void @llvm.assume(i1 %i.cl)
  %i.cm = trunc nuw i8 %i.ck to i1
  br i1 %i.cm, label %i915_gem_object_pin_pages.exit.thread138.i, label %arch_atomic_try_cmpxchg.exit.i.i, !prof !14

arch_atomic_try_cmpxchg.exit.i.i:                 ; preds = %.lr.ph.i.i
  %i.cn = extractvalue { i8, i32 } %i.cj, 1       ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %i915_gem_object_pin_pages.exit.i, label %.lr.ph.i.i, !prof !24

i915_gem_object_pin_pages.exit.i:                 ; preds = %arch_atomic_try_cmpxchg.exit.i.i, %.critedge95.thread.i
  %i.cp = call i32 @__i915_gem_object_get_pages(ptr noundef %0) #8 ; 2 uses
  %.not86.i = icmp eq i32 %i.cp, 0
  br i1 %.not86.i, label %i915_gem_object_pin_pages.exit.thread138.i, label %i915_gem_object_pin_pages.exit.thread.i

i915_gem_object_pin_pages.exit.thread138.i:       ; preds = %.lr.ph.i.i, %i915_gem_object_pin_pages.exit.i
  %i.cq = load i32, ptr %i.w, align 8
  %i.cr = load i32, ptr %i.bh, align 8
  %i.cs = load ptr, ptr %1, align 8
  %i.ct = call ptr @i915_gem_object_pin_to_display_plane(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef %i.cs, i32 noundef %spec.select.i) #8 ; 7 uses
  %i.cu = icmp ugt ptr %i.ct, inttoptr (i64 -4096 to ptr)
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %i915_gem_object_pin_pages.exit.thread138.i
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = trunc i64 %i.cv to i32
  br label %i915_vma_get.exit.i

bb.w:                                             ; preds = %i915_gem_object_pin_pages.exit.thread138.i
  br i1 %.not87.i, label %.critedge97.i, label %i915_vma_is_map_and_fenceable.exit.i

i915_vma_is_map_and_fenceable.exit.i:             ; preds = %bb.w
  store i32 -1, ptr %4, align 4
  %i.cx = getelementptr i8, ptr %i.ct, i64 268    ; 3 uses
  %i.cy = load volatile i64, ptr %i.cx, align 8
  %.in.in.i.i = and i64 %i.cy, 16384
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.i.not.i, label %.critedge97.i, label %bb.x

bb.x:                                             ; preds = %i915_vma_is_map_and_fenceable.exit.i
  %i.cz = call i32 @i915_vma_pin_fence(ptr noundef %i.ct) #8 ; 2 uses
  %.not88.i = icmp eq i32 %i.cz, 0
  br i1 %.not88.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = load i8, ptr %i.bi, align 1, !range !18, !noundef !19
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cx, ptr elementtype(i32) %i.cx) #7, !srcloc !25
  br label %i915_vma_get.exit.i

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.dc = getelementptr i8, ptr %i.ct, i64 216
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not89.i = icmp eq ptr %i.dd, null
  br i1 %.not89.i, label %.critedge97.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr i8, ptr %i.dd, i64 192
  %i.df = load i32, ptr %i.de, align 8
  store i32 %i.df, ptr %4, align 4
  br label %.critedge97.i

.critedge97.i:                                    ; preds = %bb.ab, %bb.aa, %i915_vma_is_map_and_fenceable.exit.i, %bb.w
  %i.dg = getelementptr i8, ptr %i.ct, i64 184
  %i.dh = load ptr, ptr %i.dg, align 8            ; 3 uses
  %i.di = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dh, i32 1, ptr elementtype(i32) %i.dh) #7, !srcloc !20 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.ac, !prof !21

bb.ac:                                            ; preds = %.critedge97.i
  %i.dj = add i32 %i.di, 1
  %i.dk = or i32 %i.dj, %i.di
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.dk, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_vma_get.exit.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !14

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.ac, %.critedge97.i
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %.critedge97.i ], [ 1, %bb.ac ]
  call void @refcount_warn_saturate(ptr noundef %i.dh, i32 noundef %.sink.i.i.i.i.i.i.i.i) #8
  br label %i915_vma_get.exit.i

i915_vma_get.exit.i:                              ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.ac, %bb.z, %bb.v
  %.3.i = phi i32 [ %i.cw, %bb.v ], [ %i.cz, %bb.z ], [ 0, %bb.ac ], [ 0, %.sink.split.i.i.i.i.i.i.i.i ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bg, ptr elementtype(i32) %i.bg) #7, !srcloc !25
  br label %i915_gem_object_pin_pages.exit.thread.i

i915_gem_object_pin_pages.exit.thread.i:          ; preds = %i915_vma_get.exit.i, %i915_gem_object_pin_pages.exit.i, %.critedge95.i, %bb.o
  %.4.i = phi i32 [ %i.cp, %i915_gem_object_pin_pages.exit.i ], [ %.3.i, %i915_vma_get.exit.i ], [ %.072.i, %.critedge95.i ], [ %.0.i.i.i, %bb.o ] ; 3 uses
  %.1.i = phi ptr [ %.070.i, %i915_gem_object_pin_pages.exit.i ], [ %i.ct, %i915_vma_get.exit.i ], [ %.070.i, %.critedge95.i ], [ %.070.i, %bb.o ] ; 2 uses
  %i.dl = icmp eq i32 %.4.i, -35
  br i1 %i.dl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %i915_gem_object_pin_pages.exit.thread.i, %i915_gem_object_pin_pages.exit.thread.thread.i
  %.1146.i = phi ptr [ %.070.i, %i915_gem_object_pin_pages.exit.thread.thread.i ], [ %.1.i, %i915_gem_object_pin_pages.exit.thread.i ]
  %i.dm = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %5) #8 ; 2 uses
  %.not90.i = icmp eq i32 %i.dm, 0
  br i1 %.not90.i, label %bb.i, label %.thread.i

.thread.i:                                        ; preds = %bb.ad
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %5) #8
  br label %bb.af

bb.ae:                                            ; preds = %i915_gem_object_pin_pages.exit.thread.i
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %5) #8
  %.not91.i = icmp eq i32 %.4.i, 0
  br i1 %.not91.i, label %intel_fb_pin_to_ggtt.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread.i
  %.5143.i = phi i32 [ %i.dm, %.thread.i ], [ %.4.i, %bb.ae ]
  %i.dn = sext i32 %.5143.i to i64
  %i.do = inttoptr i64 %i.dn to ptr
  br label %intel_fb_pin_to_ggtt.exit

intel_fb_pin_to_ggtt.exit.thread:                 ; preds = %dev_name.exit110.i, %dev_name.exit126.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.ag

intel_fb_pin_to_ggtt.exit:                        ; preds = %bb.ae, %bb.af
  %.2.i = phi ptr [ %i.do, %bb.af ], [ %.1.i, %bb.ae ] ; 5 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.as, ptr elementtype(i32) %i.as) #7, !srcloc !25
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.aq) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.dp = icmp ugt ptr %.2.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.dp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %intel_fb_pin_to_ggtt.exit.thread, %intel_fb_pin_to_ggtt.exit
  %.0.i15 = phi ptr [ inttoptr (i64 -22 to ptr), %intel_fb_pin_to_ggtt.exit.thread ], [ %.2.i, %intel_fb_pin_to_ggtt.exit ]
  %i.dq = ptrtoint ptr %.0.i15 to i64
  %i.dr = trunc i64 %i.dq to i32
  br label %bb.al

bb.ah:                                            ; preds = %intel_fb_pin_to_ggtt.exit
  store ptr %.2.i, ptr %2, align 8
  %i.ds = load i8, ptr %i.bc, align 2, !range !18, !noundef !19
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.du = call i64 @__i915_gem_object_get_dma_address(ptr noundef %0, i64 noundef 0) #8
  %i.dv = trunc i64 %i.du to i32
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dw = getelementptr i8, ptr %.2.i, i64 8
  %.val = load i64, ptr %i.dw, align 8
  %i.dx = getelementptr i8, ptr %.2.i, i64 248
  %.val13 = load i32, ptr %i.dx, align 8
  %i.dy = trunc i64 %.val to i32
  %i.dz = add i32 %.val13, %i.dy
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %storemerge = phi i32 [ %i.dz, %bb.aj ], [ %i.dv, %bb.ai ]
  store i32 %storemerge, ptr %3, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %.0 = phi i32 [ %i.dr, %bb.ag ], [ 0, %bb.ak ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_fb_pin_ggtt_unpin(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %intel_fb_unpin_vma.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.c, label %i915_vma_unpin_fence.exit.i

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 216
  %.val.i = load ptr, ptr %i.b, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %i915_vma_unpin_fence.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %.val.i, i64 32    ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, ptr elementtype(i32) %i.c) #7, !srcloc !25
  br label %i915_vma_unpin_fence.exit.i

i915_vma_unpin_fence.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 268        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, ptr elementtype(i32) %i.d) #7, !srcloc !25
  %i.e = getelementptr i8, ptr %0, i64 184
  %.val3.i = load ptr, ptr %i.e, align 8          ; 4 uses
  %i.f = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val3.i, i32 -1, ptr elementtype(i32) %.val3.i) #7, !srcloc !20 ; 2 uses
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.e

bb.e:                                             ; preds = %i915_vma_unpin_fence.exit.i
  %i.h = icmp slt i32 %i.f, 1
  br i1 %i.h, label %bb.f, label %intel_fb_unpin_vma.exit, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @refcount_warn_saturate(ptr noundef %.val3.i, i32 noundef 3) #8
  br label %intel_fb_unpin_vma.exit

bb.g:                                             ; preds = %i915_vma_unpin_fence.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !26
  tail call void @drm_gem_object_free(ptr noundef %.val3.i) #8
  br label %intel_fb_unpin_vma.exit

intel_fb_unpin_vma.exit:                          ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_fb_pin_dpt_pin(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #0 align 16 prefalign(16) {
bb.a:
  %6 = alloca %struct.i915_gem_ww_ctx, align 8    ; 15 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "797: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 797b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 797) #7, !srcloc !27
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.2, i32 265, i32 2305, i64 16) #7, !srcloc !28
  tail call void asm sideeffect "798: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 798b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 798) #7, !srcloc !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr i8, ptr %2, i64 8          ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 9
  %i.d = tail call ptr @i915_dpt_pin_to_ggtt(ptr noundef %1, i32 noundef %i.c) #8 ; 6 uses
  %i.e = icmp ugt ptr %i.d, inttoptr (i64 -4096 to ptr)
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = trunc i64 %i.f to i32
  br label %bb.aq

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %i.j = tail call ptr @i915_dpt_to_vm(ptr noundef %1) #8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false), !annotation !10
  %i.k = getelementptr i8, ptr %i.j, i64 376
  %i.l = load i32, ptr %i.k, align 8
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %__drm_to_dev.exit92.thread.i, label %bb.g

__drm_to_dev.exit92.thread.i:                     ; preds = %bb.f
  %i.m = tail call ptr @dev_driver_string(ptr noundef null) #8 ; 0 uses
  %i.n = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 32, i32 2321, i64 16) #7, !srcloc !30
  %i.o = tail call ptr @dev_driver_string(ptr noundef null) #8
  br label %__drm_to_dev.exit94.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.i, i64 8        ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @dev_driver_string(ptr noundef %i.q) #8 ; 0 uses
  %i.s = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 32, i32 2321, i64 16) #7, !srcloc !30
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = tail call ptr @dev_driver_string(ptr noundef %i.t) #8
  %i.v = load ptr, ptr %i.p, align 8
  br label %__drm_to_dev.exit94.i

__drm_to_dev.exit94.i:                            ; preds = %bb.g, %__drm_to_dev.exit92.thread.i
  %i.w = phi ptr [ %i.s, %bb.g ], [ %i.n, %__drm_to_dev.exit92.thread.i ]
  %i.x = phi ptr [ %i.u, %bb.g ], [ %i.o, %__drm_to_dev.exit92.thread.i ]
  %i.y = phi ptr [ %i.v, %bb.g ], [ null, %__drm_to_dev.exit92.thread.i ] ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i95.i = icmp eq ptr %i.aa, null
  br i1 %.not.i95.i, label %bb.h, label %dev_name.exit98.i

bb.h:                                             ; preds = %__drm_to_dev.exit94.i
  %.val.i97.i = load ptr, ptr %i.y, align 8
  br label %dev_name.exit98.i

dev_name.exit98.i:                                ; preds = %bb.h, %__drm_to_dev.exit94.i
  %.0.i96.i = phi ptr [ %.val.i97.i, %bb.h ], [ %i.aa, %__drm_to_dev.exit94.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.w, ptr noundef %i.x, ptr noundef %.0.i96.i, ptr noundef nonnull @.str.6) #8
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !31
  br label %intel_fb_pin_to_dpt.exit.thread

.critedge.i:                                      ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %0, i64 672
  %i.ac = load volatile ptr, ptr %i.ab, align 8
  %.not.i99.i = icmp eq ptr %i.ac, null
  br i1 %.not.i99.i, label %i915_gem_object_is_framebuffer.exit.i, label %.critedge87.i

i915_gem_object_is_framebuffer.exit.i:            ; preds = %.critedge.i
  %i.ad = getelementptr i8, ptr %0, i64 660
  %i.ae = load i16, ptr %i.ad, align 4
  %i.af = and i16 %i.ae, 1024
  %.not127.i = icmp eq i16 %i.af, 0
  br i1 %.not127.i, label %bb.i, label %.critedge87.i, !prof !32

bb.i:                                             ; preds = %i915_gem_object_is_framebuffer.exit.i
  tail call void asm sideeffect "789: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 789b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 789) #7, !srcloc !33
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.2, i32 35, i32 2305, i64 16) #7, !srcloc !34
  tail call void asm sideeffect "790: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 790b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 790) #7, !srcloc !35
  br label %intel_fb_pin_to_dpt.exit.thread

.critedge87.i:                                    ; preds = %i915_gem_object_is_framebuffer.exit.i, %.critedge.i
  %i.ag = getelementptr i8, ptr %i.i, i64 5920    ; 4 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ag, ptr elementtype(i32) %i.ag) #7, !srcloc !17
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %6, i1 noundef zeroext true) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ai = getelementptr i8, ptr %0, i64 248
  %i.aj = getelementptr i8, ptr %0, i64 544       ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.am = getelementptr i8, ptr %0, i64 552
  %i.an = getelementptr i8, ptr %i.i, i64 1648
  %i.ao = getelementptr i8, ptr %0, i64 648
  %i.ap = getelementptr i8, ptr %2, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40
  br label %__i915_gem_ww_fini.exit.i

__i915_gem_ww_fini.exit.i:                        ; preds = %__i915_gem_ww_fini.exit.i.backedge, %.critedge87.i
  %.072.i = phi i32 [ -35, %.critedge87.i ], [ %.072.i.be, %__i915_gem_ww_fini.exit.i.backedge ] ; 2 uses
  %.071.i = phi ptr [ null, %.critedge87.i ], [ %.071.i.be, %__i915_gem_ww_fini.exit.i.backedge ] ; 9 uses
  switch i32 %.072.i, label %bb.ac [
    i32 -35, label %bb.j
    i32 0, label %bb.ad
  ]

bb.j:                                             ; preds = %__i915_gem_ww_fini.exit.i
  %i.ar = load i8, ptr %i.ah, align 8, !range !18, !noundef !19
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load ptr, ptr %i.ai, align 8            ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.at, ptr noundef nonnull %6) #8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.av = call i32 @ww_mutex_lock(ptr noundef %i.at, ptr noundef nonnull %6) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i32 [ %i.au, %bb.k ], [ %i.av, %bb.l ] ; 4 uses
  %i.aw = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.aw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ax = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #7, !srcloc !20 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, label %bb.o, !prof !21

bb.o:                                             ; preds = %bb.n
  %i.ay = add i32 %i.ax, 1
  %i.az = or i32 %i.ay, %i.ax
  %.not10.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.az, -1
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i, !prof !14

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.n ], [ 1, %bb.o ]
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i.i.i.i) #8
  br label %i915_gem_object_get.exit.i.i.i

i915_gem_object_get.exit.i.i.i:                   ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %bb.o
  %i.ba = load ptr, ptr %i.al, align 8            ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8
  store ptr %i.ak, ptr %i.aj, align 8
  store ptr %i.ba, ptr %i.am, align 8
  store volatile ptr %i.aj, ptr %i.ba, align 8
  br label %bb.p

bb.p:                                             ; preds = %i915_gem_object_get.exit.i.i.i, %bb.m
  %i.bb = icmp eq i32 %.0.i.i.i, -114
  %spec.store.select.i6.i.i = select i1 %i.bb, i32 0, i32 %.0.i.i.i
  switch i32 %spec.store.select.i6.i.i, label %.thread10.i.i [
    i32 -35, label %bb.q
    i32 0, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.bc = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #7, !srcloc !20 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i, label %bb.r, !prof !21

bb.r:                                             ; preds = %bb.q
  %i.bd = add i32 %i.bc, 1
  %i.be = or i32 %i.bd, %i.bc
  %.not10.i.i.i.i.i.i20.i8.i.i = icmp sgt i32 %i.be, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i.i, label %.thread.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i, !prof !14

.sink.split.i.i.i.i.i.i21.i9.i.i:                 ; preds = %bb.r, %bb.q
  %.sink.i.i.i.i.i.i22.i10.i.i = phi i32 [ 2, %bb.q ], [ 1, %bb.r ]
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i22.i10.i.i) #8
  br label %.thread.i

.thread.i:                                        ; preds = %.sink.split.i.i.i.i.i.i21.i9.i.i, %bb.r
  store ptr %0, ptr %i.aq, align 8
  br label %bb.ab

bb.s:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %i.an, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = and i32 %i.bh, 2
  %.not82.i = icmp eq i32 %i.bi, 0
  br i1 %.not82.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = load i64, ptr %i.ao, align 8
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = load i8, ptr %i.ap, align 4, !range !18, !noundef !19
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = and i32 %i.bk, -65
  %.075.i = select i1 %i.bm, i32 %i.bn, i32 %i.bk
  %i.bo = call i32 @__i915_gem_object_migrate(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %.075.i) #8 ; 2 uses
  %.not83.i = icmp eq i32 %i.bo, 0
  br i1 %.not83.i, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bp = call i32 @i915_gem_object_set_cache_level(ptr noundef %0, i32 noundef 0) #8 ; 2 uses
  %.not84.i = icmp eq i32 %i.bp, 0
  br i1 %.not84.i, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.bq = load ptr, ptr %2, align 8
  %i.br = call ptr @i915_vma_instance(ptr noundef %0, ptr noundef %i.j, ptr noundef %i.bq) #8 ; 8 uses
  %i.bs = icmp ugt ptr %i.br, inttoptr (i64 -4096 to ptr)
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = trunc i64 %i.bt to i32
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.bv = load i32, ptr %i.a, align 8
  %i.bw = zext i32 %i.bv to i64
  %i.bx = call zeroext i1 @i915_vma_misplaced(ptr noundef %i.br, i64 noundef 0, i64 noundef %i.bw, i64 noundef 0) #8
  br i1 %i.bx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.by = call i32 @i915_vma_unbind(ptr noundef %i.br) #8 ; 2 uses
  %.not85.i = icmp eq i32 %i.by, 0
  br i1 %.not85.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bz = load i32, ptr %i.a, align 8
  %i.ca = zext i32 %i.bz to i64
  %i.cb = call i32 @i915_vma_pin_ww(ptr noundef %i.br, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %i.ca, i64 noundef 1024) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.u, %bb.t
  %.173.i = phi i32 [ %i.bo, %bb.t ], [ %i.bp, %bb.u ], [ %i.bu, %bb.w ], [ %i.by, %bb.y ], [ %i.cb, %bb.z ] ; 2 uses
  %.1.i = phi ptr [ %.071.i, %bb.t ], [ %.071.i, %bb.u ], [ %i.br, %bb.w ], [ %i.br, %bb.y ], [ %i.br, %bb.z ] ; 2 uses
  %i.cc = icmp eq i32 %.173.i, -35
  br i1 %i.cc, label %bb.ab, label %.thread10.i.i

bb.ab:                                            ; preds = %bb.aa, %.thread.i
  %.1123.i = phi ptr [ %.071.i, %.thread.i ], [ %.1.i, %bb.aa ] ; 3 uses
  %i.cd = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %6) #8 ; 2 uses
  switch i32 %i.cd, label %.thread10.i.i [
    i32 0, label %__i915_gem_ww_fini.exit.i.backedge
    i32 -35, label %__i915_gem_ww_fini.exit.i.backedge
  ]

.thread10.i.i:                                    ; preds = %bb.ab, %bb.aa, %bb.p
  %.1122.i = phi ptr [ %.1123.i, %bb.ab ], [ %.1.i, %bb.aa ], [ %.071.i, %bb.p ]
  %.013.i.i = phi i32 [ %i.cd, %bb.ab ], [ %.173.i, %bb.aa ], [ %.0.i.i.i, %bb.p ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %6) #8
  br label %__i915_gem_ww_fini.exit.i.backedge

__i915_gem_ww_fini.exit.i.backedge:               ; preds = %.thread10.i.i, %bb.ab, %bb.ab
  %.072.i.be = phi i32 [ -35, %bb.ab ], [ %.013.i.i, %.thread10.i.i ], [ -35, %bb.ab ]
  %.071.i.be = phi ptr [ %.1123.i, %bb.ab ], [ %.1122.i, %.thread10.i.i ], [ %.1123.i, %bb.ab ]
  br label %__i915_gem_ww_fini.exit.i, !llvm.loop !36

bb.ac:                                            ; preds = %__i915_gem_ww_fini.exit.i
  %i.ce = sext i32 %.072.i to i64
  %i.cf = inttoptr i64 %i.ce to ptr
  br label %intel_fb_pin_to_dpt.exit

bb.ad:                                            ; preds = %__i915_gem_ww_fini.exit.i
  %i.cg = getelementptr i8, ptr %.071.i, i64 260  ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = load i32, ptr %i.a, align 8
  %i.cj = call i32 @llvm.umax.i32(i32 %i.ch, i32 %i.ci)
  store i32 %i.cj, ptr %i.cg, align 4
  call void @i915_gem_object_flush_if_display(ptr noundef %0) #8
  %i.ck = getelementptr i8, ptr %.071.i, i64 184
  %i.cl = load ptr, ptr %i.ck, align 8            ; 3 uses
  %i.cm = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cl, i32 1, ptr elementtype(i32) %i.cl) #7, !srcloc !20 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.ae, !prof !21

bb.ae:                                            ; preds = %bb.ad
  %i.cn = add i32 %i.cm, 1
  %i.co = or i32 %i.cn, %i.cm
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.co, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_vma_get.exit.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !14

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.ae, %bb.ad
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.ad ], [ 1, %bb.ae ]
  call void @refcount_warn_saturate(ptr noundef %i.cl, i32 noundef %.sink.i.i.i.i.i.i.i.i) #8
  br label %i915_vma_get.exit.i

i915_vma_get.exit.i:                              ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.ae
  %i.cp = call i64 @i915_dpt_offset(ptr noundef %.071.i) #8
  %.not80.i = icmp eq i64 %i.cp, 0
  br i1 %.not80.i, label %intel_fb_pin_to_dpt.exit, label %bb.af, !prof !14

bb.af:                                            ; preds = %i915_vma_get.exit.i
  %.not.i101.i = icmp eq ptr %i.i, null
  br i1 %.not.i101.i, label %__drm_to_dev.exit110.thread.i, label %bb.ag

__drm_to_dev.exit110.thread.i:                    ; preds = %bb.af
  %i.cq = call ptr @dev_driver_string(ptr noundef null) #8 ; 0 uses
  %i.cr = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 99, i32 2321, i64 16) #7, !srcloc !38
  %i.cs = call ptr @dev_driver_string(ptr noundef null) #8
  br label %__drm_to_dev.exit112.i

bb.ag:                                            ; preds = %bb.af
  %i.ct = getelementptr i8, ptr %i.i, i64 8       ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call ptr @dev_driver_string(ptr noundef %i.cu) #8 ; 0 uses
  %i.cw = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 99, i32 2321, i64 16) #7, !srcloc !38
  %i.cx = load ptr, ptr %i.ct, align 8
  %i.cy = call ptr @dev_driver_string(ptr noundef %i.cx) #8
  %i.cz = load ptr, ptr %i.ct, align 8
  br label %__drm_to_dev.exit112.i

__drm_to_dev.exit112.i:                           ; preds = %bb.ag, %__drm_to_dev.exit110.thread.i
  %i.da = phi ptr [ %i.cw, %bb.ag ], [ %i.cr, %__drm_to_dev.exit110.thread.i ]
  %i.db = phi ptr [ %i.cy, %bb.ag ], [ %i.cs, %__drm_to_dev.exit110.thread.i ]
  %i.dc = phi ptr [ %i.cz, %bb.ag ], [ null, %__drm_to_dev.exit110.thread.i ] ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 80
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not.i113.i = icmp eq ptr %i.de, null
  br i1 %.not.i113.i, label %bb.ah, label %dev_name.exit116.i

bb.ah:                                            ; preds = %__drm_to_dev.exit112.i
  %.val.i115.i = load ptr, ptr %i.dc, align 8
  br label %dev_name.exit116.i

dev_name.exit116.i:                               ; preds = %bb.ah, %__drm_to_dev.exit112.i
  %.0.i114.i = phi ptr [ %.val.i115.i, %bb.ah ], [ %i.de, %__drm_to_dev.exit112.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.da, ptr noundef %i.db, ptr noundef %.0.i114.i, ptr noundef nonnull @.str.7) #8
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !39
  br label %intel_fb_pin_to_dpt.exit

intel_fb_pin_to_dpt.exit.thread:                  ; preds = %dev_name.exit98.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.ai

intel_fb_pin_to_dpt.exit:                         ; preds = %bb.ac, %i915_vma_get.exit.i, %dev_name.exit116.i
  %.2.i = phi ptr [ %i.cf, %bb.ac ], [ %.071.i, %dev_name.exit116.i ], [ %.071.i, %i915_vma_get.exit.i ] ; 4 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ag, ptr elementtype(i32) %i.ag) #7, !srcloc !25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.df = icmp ugt ptr %.2.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.df, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %intel_fb_pin_to_dpt.exit.thread, %intel_fb_pin_to_dpt.exit
  %.0.i47 = phi ptr [ inttoptr (i64 -22 to ptr), %intel_fb_pin_to_dpt.exit.thread ], [ %.2.i, %intel_fb_pin_to_dpt.exit ]
  call void @i915_dpt_unpin_from_ggtt(ptr noundef %1) #8
  %i.dg = ptrtoint ptr %.0.i47 to i64
  %i.dh = trunc i64 %i.dg to i32
  br label %bb.aq

bb.aj:                                            ; preds = %intel_fb_pin_to_dpt.exit
  %i.di = icmp eq ptr %i.d, %.2.i
  br i1 %i.di, label %bb.ak, label %bb.ap, !prof !21

bb.ak:                                            ; preds = %bb.aj
  %i.dj = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i33 = icmp eq ptr %i.dj, null
  br i1 %.not.i33, label %__drm_to_dev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.ak, %bb.al
  %i.dm = phi ptr [ %i.dl, %bb.al ], [ null, %bb.ak ]
  %i.dn = call ptr @dev_driver_string(ptr noundef %i.dm) #8 ; 0 uses
  %i.do = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 277, i32 2321, i64 16) #7, !srcloc !40
  %i.dp = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i38 = icmp eq ptr %i.dp, null
  br i1 %.not.i38, label %__drm_to_dev.exit39, label %bb.am

bb.am:                                            ; preds = %__drm_to_dev.exit
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  br label %__drm_to_dev.exit39

__drm_to_dev.exit39:                              ; preds = %__drm_to_dev.exit, %bb.am
  %i.ds = phi ptr [ %i.dr, %bb.am ], [ null, %__drm_to_dev.exit ]
  %i.dt = call ptr @dev_driver_string(ptr noundef %i.ds) #8
  %i.du = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not.i40 = icmp eq ptr %i.du, null
  br i1 %.not.i40, label %__drm_to_dev.exit41, label %bb.an

bb.an:                                            ; preds = %__drm_to_dev.exit39
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  br label %__drm_to_dev.exit41

__drm_to_dev.exit41:                              ; preds = %__drm_to_dev.exit39, %bb.an
  %i.dx = phi ptr [ %i.dw, %bb.an ], [ null, %__drm_to_dev.exit39 ] ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 80
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  %.not.i42 = icmp eq ptr %i.dz, null
  br i1 %.not.i42, label %bb.ao, label %dev_name.exit45

bb.ao:                                            ; preds = %__drm_to_dev.exit41
  %.val.i44 = load ptr, ptr %i.dx, align 8
  br label %dev_name.exit45

dev_name.exit45:                                  ; preds = %__drm_to_dev.exit41, %bb.ao
  %.0.i43 = phi ptr [ %.val.i44, %bb.ao ], [ %i.dz, %__drm_to_dev.exit41 ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.do, ptr noundef %i.dt, ptr noundef %.0.i43, ptr noundef nonnull @.str.5) #8
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !41
  br label %bb.ap

bb.ap:                                            ; preds = %dev_name.exit45, %bb.aj
  store ptr %i.d, ptr %4, align 8
  store ptr %.2.i, ptr %3, align 8
  %i.ea = getelementptr i8, ptr %i.d, i64 8
  %.val = load i64, ptr %i.ea, align 8
  %i.eb = getelementptr i8, ptr %i.d, i64 248
  %.val32 = load i32, ptr %i.eb, align 8
  %i.ec = trunc i64 %.val to i32
  %i.ed = add i32 %.val32, %i.ec
  store i32 %i.ed, ptr %5, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ai, %bb.d
  %.0 = phi i32 [ %i.g, %bb.d ], [ %i.dh, %bb.ai ], [ 0, %bb.ap ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_fb_pin_dpt_unpin(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(address_is_null) %2) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "800: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 800b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 800) #7, !srcloc !42
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.2, i32 291, i32 2305, i64 16) #7, !srcloc !43
  tail call void asm sideeffect "801: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 801b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 801) #7, !srcloc !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  %i.b = icmp ne ptr %2, null                     ; 2 uses
  %i.c = xor i1 %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "802: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 802b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 802) #7, !srcloc !45
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.2, i32 292, i32 2305, i64 16) #7, !srcloc !46
  tail call void asm sideeffect "803: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 803b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 803) #7, !srcloc !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.a, label %bb.f, label %intel_fb_unpin_vma.exit

bb.f:                                             ; preds = %bb.e
end_hunk_0
