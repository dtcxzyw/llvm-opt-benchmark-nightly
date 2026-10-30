Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/page-map?download=true
inline.NumInlined: 55
inline.NumDeleted: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mi_atomic_once_s = type { i64, %struct.mi_lock_s }
%struct.mi_lock_s = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.anon = type { %struct.mi_memid_os_info }
%struct.mi_memid_os_info = type { ptr, i64 }
%struct.mi_memid_s = type { %union.anon, i32, i8, i8, i8 }

@__mi_page_map = hidden local_unnamed_addr global ptr @mi_page_map_empty, align 64
@_mi_page_map_init._mi_once = internal global %struct.mi_atomic_once_s zeroinitializer, align 8
@mi_page_map_empty = internal global { i64, i64, { %union.anon, i32, i8, i8, i8, i8 }, %struct.mi_lock_s, [1 x ptr] } { i64 1, i64 88, { %union.anon, i32, i8, i8, i8, i8 } { %union.anon zeroinitializer, i32 2, i8 1, i8 1, i8 0, i8 0 }, %struct.mi_lock_s zeroinitializer, [1 x ptr] zeroinitializer }, align 8
@.str = private unnamed_addr constant [61 x i8] c"unable to reserve virtual memory for the page map (%zu KiB)\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"internal: the page map was committed but not zero initialized!\0A\00", align 1
@_mi_cpu_stosb_max = external hidden local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"unable to commit the allocation page-map on-demand\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"internal error: unable to extend the page map\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"internal error: lock cannot be acquired (err %i)\0A\00", align 1

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @_mi_page_map_init() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.mi_memid_s, align 8         ; 8 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = tail call zeroext i1 @_mi_atomic_once_enter(ptr noundef nonnull @_mi_page_map_init._mi_once) #9
  br i1 %i.b, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.e = tail call i64 @mi_option_get_clamp(i32 noundef 38, i64 noundef 0, i64 noundef 47) #9 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.b:                                             ; preds = %mi_page_map_init_once.exit, %bb.a
  %.02.lcssa = phi i1 [ %.3.i, %mi_page_map_init_once.exit ], [ true, %bb.a ]
  ret i1 %.02.lcssa

bb.c:                                             ; preds = %.lr.ph
  %i.g = tail call i64 @_mi_os_virtual_address_bits() #9
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 47)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.052.i = phi i64 [ %spec.store.select.i, %bb.c ], [ %i.e, %.lr.ph ] ; 2 uses
  %spec.store.select4.i = tail call i64 @llvm.umax.i64(i64 %.052.i, i64 43)
  %spec.store.select2.i = tail call i64 @llvm.umin.i64(i64 %spec.store.select4.i, i64 47)
  %i.h = add nsw i64 %spec.store.select2.i, -29
  %i.i = tail call i64 @_mi_os_page_size() #9     ; 7 uses
  %notmask.i = shl nsw i64 -1, %i.h
  %i.j = xor i64 %notmask.i, -1
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.i)
  %i.m = icmp samesign ult i64 %i.l, 2            ; 2 uses
  %i.n = add i64 %i.i, 87
  %i.o = add i64 %i.n, %i.k                       ; 3 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 0, %i.i
  %i.q = and i64 %i.o, %i.p
  br label %_mi_align_up.exit.i

bb.f:                                             ; preds = %bb.d
  %i.r = urem i64 %i.o, %i.i
  %i.s = sub nuw i64 %i.o, %i.r
  br label %_mi_align_up.exit.i

_mi_align_up.exit.i:                              ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.q, %bb.e ], [ %i.s, %bb.f ] ; 6 uses
  %i.t = add i64 %.0.i.i, 65536                   ; 7 uses
  %i.u = icmp ult i64 %.052.i, 44
  %i.v = icmp ult i64 %.0.i.i, 65537
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_mi_align_up.exit.i
  %i.w = tail call zeroext i1 @mi_option_is_enabled(i32 noundef 39) #9
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call zeroext i1 @_mi_os_has_overcommit() #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_mi_align_up.exit.i
  %i.y = phi i1 [ true, %bb.g ], [ %i.x, %bb.h ], [ true, %_mi_align_up.exit.i ]
  %i.z = tail call ptr @_mi_subproc_main() #9     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  %i.aa = call ptr @_mi_os_alloc_aligned(ptr noundef %i.z, i64 noundef %i.t, i64 noundef 1, i1 noundef zeroext %i.y, i1 noundef zeroext true, ptr noundef nonnull %0) #9 ; 14 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.ac = lshr i64 %i.t, 10
  call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str, i64 noundef %i.ac) #9
  br label %mi_page_map_init_once.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !34, !range !35, !noundef !36
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.af = load i8, ptr %i.d, align 2, !tbaa !37, !range !35, !noundef !36
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.2) #9
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 8) ]
  %i.ah = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !38
  %.not.i.i.i.i = icmp ugt i64 %i.t, %i.ah
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.ai = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.aa, i64 %i.t) #10, !srcloc !39 ; 0 uses
  br label %_mi_memzero_aligned.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.t, i1 false)
  br label %_mi_memzero_aligned.exit.i

_mi_memzero_aligned.exit.i:                       ; preds = %bb.o, %bb.n
  store i8 1, ptr %i.d, align 2, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %_mi_memzero_aligned.exit.i, %bb.l
  %i.aj = icmp ult i64 %.0.i.i, 88
  %i.ak = add i64 %.0.i.i, -88
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1
  %i.an = select i1 %i.aj, i64 0, i64 %i.am
  br label %bb.u

bb.q:                                             ; preds = %bb.k
  %i.ao = add i64 %i.i, 131151                    ; 3 uses
  br i1 %i.m, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = sub i64 0, %i.i
  %i.aq = and i64 %i.ao, %i.ap
  br label %_mi_align_up.exit58.i

bb.s:                                             ; preds = %bb.q
  %i.ar = urem i64 %i.ao, %i.i
  %i.as = sub nuw i64 %i.ao, %i.ar
  br label %_mi_align_up.exit58.i

_mi_align_up.exit58.i:                            ; preds = %bb.s, %bb.r
  %.0.i57.i = phi i64 [ %i.aq, %bb.r ], [ %i.as, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.at = call zeroext i1 @_mi_os_commit(ptr noundef %i.z, ptr noundef nonnull %i.aa, i64 noundef %.0.i57.i, ptr noundef nonnull %i.a) #9 ; 2 uses
  br i1 %i.at, label %.thread.i, label %1

1:                                                ; preds = %_mi_align_up.exit58.i
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.3) #9
  call void @_mi_os_free(ptr noundef %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.t, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %0) #9
  br label %bb.t

.thread.i:                                        ; preds = %_mi_align_up.exit58.i
  %i.au = icmp ult i64 %.0.i57.i, 88
  %i.av = add i64 %.0.i57.i, -88
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1
  %i.ay = select i1 %i.au, i64 0, i64 %i.ax
  br label %bb.t

bb.t:                                             ; preds = %.thread.i, %1
  %.053.i = phi i64 [ %i.ay, %.thread.i ], [ undef, %1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %i.at, label %bb.u, label %mi_page_map_init_once.exit

bb.u:                                             ; preds = %bb.t, %bb.p
  %.154.i = phi i64 [ %i.an, %bb.p ], [ %.053.i, %bb.t ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i.i ; 5 uses
  %i.ba = load i8, ptr %i.c, align 1, !tbaa !34, !range !35, !noundef !36
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = call zeroext i1 @_mi_os_commit(ptr noundef %i.z, ptr noundef nonnull %i.az, i64 noundef 65536, ptr noundef null) #9
  br i1 %i.bc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.3) #9
  call void @_mi_os_free(ptr noundef %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.t, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %0) #9
  br label %mi_page_map_init_once.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bd = load i8, ptr %i.d, align 2, !tbaa !37, !range !35, !noundef !36
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_mi_memzero_aligned.exit60.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 8) ]
  %i.bf = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !38
  %.not.i.i.i59.i = icmp ult i64 %i.bf, 65536
  br i1 %.not.i.i.i59.i, label %bb.aa, label %bb.z, !prof !8

bb.z:                                             ; preds = %bb.y
  %i.bg = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.az, i64 65536) #10, !srcloc !39 ; 0 uses
  br label %_mi_memzero_aligned.exit60.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.az, i8 0, i64 65536, i1 false)
  br label %_mi_memzero_aligned.exit60.i

_mi_memzero_aligned.exit60.i:                     ; preds = %bb.aa, %bb.z, %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !42
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.0.i.i, ptr %i.bi, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i8 0, i64 40, i1 false)
  store atomic i64 %.154.i, ptr %i.aa release, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store atomic ptr %i.az, ptr %i.bk release, align 8
  store atomic ptr %i.aa, ptr @__mi_page_map release, align 64
  br label %mi_page_map_init_once.exit

mi_page_map_init_once.exit:                       ; preds = %bb.j, %bb.t, %bb.w, %_mi_memzero_aligned.exit60.i
  %.3.i = phi i1 [ false, %bb.j ], [ false, %bb.t ], [ true, %_mi_memzero_aligned.exit60.i ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @_mi_atomic_once_release(ptr noundef nonnull @_mi_page_map_init._mi_once) #9
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @_mi_atomic_once_enter(ptr noundef) local_unnamed_addr #2

declare void @_mi_atomic_once_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_page_map_unsafe_destroy() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  %i.a = load atomic ptr, ptr @__mi_page_map monotonic, align 64 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = icmp eq ptr %i.a, @mi_page_map_empty
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_mi_subproc_main() #9     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.g = load atomic i64, ptr %i.a seq_cst, align 8, !tbaa !46
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_mi_os_free_ex(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.m, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.n) #9
  store atomic ptr @mi_page_map_empty, ptr @__mi_page_map release, align 64
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.021 = phi i64 [ 1, %.lr.ph ], [ %i.q, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.021 ; 2 uses
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  store i64 1099511627779, ptr %i.j, align 8, !alias.scope !47
  store ptr %i.p, ptr %0, align 8, !tbaa !12, !alias.scope !47
  store i64 65536, ptr %i.k, align 8, !tbaa !12, !alias.scope !47
  tail call void @_mi_os_free_ex(ptr noundef %i.d, ptr noundef nonnull %i.p, i64 noundef 65536, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %0) #9
  store atomic ptr null, ptr %i.o release, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = add nuw i64 %.021, 1                     ; 2 uses
  %i.r = load atomic i64, ptr %i.a seq_cst, align 8, !tbaa !46
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %._crit_edge, !llvm.loop !45

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare ptr @_mi_subproc_main() local_unnamed_addr #2

declare void @_mi_os_free_ex(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #2

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @_mi_page_map_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @__mi_page_map monotonic, align 64 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @_mi_page_map_init() #11
  br i1 %i.c, label %bb.c, label %mi_page_map_set_range.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @__mi_page_map acquire, align 64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.06 = phi ptr [ %i.d, %bb.c ], [ %i.a, %bb.a ] ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load i64, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr i8, ptr %0, i64 58
  %.val4.i.i = load i16, ptr %i.f, align 2, !tbaa !25
  %i.g = zext i16 %.val4.i.i to i64
  %i.h = mul i64 %.val.i.i, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = icmp ugt i64 %i.h, 4194304
  %i.m = add nuw nsw i64 %i.h, 65535
  %i.n = lshr i64 %i.m, 16
  %i.o = select i1 %i.l, i64 63, i64 %i.n         ; 3 uses
  %i.p = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.q = lshr i64 %i.p, 16
  %i.r = and i64 %i.q, 8191                       ; 2 uses
  %i.s = lshr i64 %i.p, 29                        ; 2 uses
  %.not31.i.i = icmp eq i64 %i.o, 0
  br i1 %.not31.i.i, label %mi_page_map_set_range.exit, label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.06, i64 80
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %0, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph37.i.i
  %.01134.i.i = phi i64 [ %i.o, %.lr.ph37.i.i ], [ %.lcssa14, %._crit_edge.i.i ] ; 4 uses
  %.01233.i.i = phi i64 [ %i.r, %.lr.ph37.i.i ], [ 0, %._crit_edge.i.i ] ; 4 uses
  %.01532.i.i = phi i64 [ %i.s, %.lr.ph37.i.i ], [ %i.aw, %._crit_edge.i.i ] ; 6 uses
  %i.u = load atomic i64, ptr %.06 monotonic, align 8
  %.not.i.i.i.i = icmp ult i64 %.01532.i.i, %i.u
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.v = load atomic i64, ptr %.06 acquire, align 8
  %.not13.i.i.i.i = icmp ult i64 %.01532.i.i, %i.v
  br i1 %.not13.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call fastcc zeroext i1 @mi_page_map_commit_entries(ptr noundef nonnull %.06, i64 noundef %.01532.i.i) #11
  br i1 %i.w, label %bb.h, label %mi_page_map_set_range_prim.exit.i, !prof !28

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.01532.i.i
  %i.y = load atomic ptr, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %mi_page_map_ensure_submap_at.exit.i.i, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call fastcc ptr @mi_page_map_alloc_submap_at(ptr noundef nonnull %.06, i64 noundef %.01532.i.i) #11 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %mi_page_map_set_range_prim.exit.i, label %mi_page_map_ensure_submap_at.exit.i.i, !prof !29

mi_page_map_ensure_submap_at.exit.i.i:            ; preds = %bb.i, %bb.h
  %.020.i.i = phi ptr [ %i.y, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ac = add i64 %.01134.i.i, -1
end_hunk_0
