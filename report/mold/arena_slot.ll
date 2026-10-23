Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/arena_slot?download=true
inline.NumInlined: 81
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef ptr @_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl(ptr nofree noundef nonnull readonly align 128 captures(none) dereferenceable(176) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 32, !tbaa !19
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 10 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp eq i64 %4, 0
  br i1 %.not27, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  %.not33 = icmp eq i64 %4, %i.f
  br i1 %.not33, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.h

.critedge:                                        ; preds = %bb.c
  store i8 1, ptr %3, align 1, !tbaa !88
  br label %bb.h

bb.d:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.k = load i16, ptr %i.j, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 3 uses
  %.not.i = icmp eq i64 %i.m, 1
  br i1 %.not.i, label %.critedge30, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = cmpxchg ptr %i.l, i64 %i.m, i64 2 seq_cst seq_cst, align 8
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %_ZN3tbb6detail2r110task_proxy12extract_taskILl1EEEPNS0_2d14taskEv.exit, label %.critedge30

_ZN3tbb6detail2r110task_proxy12extract_taskILl1EEEPNS0_2d14taskEv.exit: ; preds = %bb.e
  %i.p = and i64 %i.m, -4                         ; 2 uses
  %.not28 = icmp eq i64 %i.p, 0
  br i1 %.not28, label %.critedge30, label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2r110task_proxy12extract_taskILl1EEEPNS0_2d14taskEv.exit
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i16 %i.k, ptr %i.r, align 2, !tbaa !40
  br label %bb.h

.critedge30:                                      ; preds = %bb.e, %bb.d, %_ZN3tbb6detail2r110task_proxy12extract_taskILl1EEEPNS0_2d14taskEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.d, align 64, !tbaa !43
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 64 dead_on_return(104) dereferenceable(104) %i.d) #2, !inline_history !87
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull %i.d, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %i.x = load i8, ptr %3, align 1, !tbaa !88, !range !44, !noundef !45
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge30
  %i.z = load ptr, ptr %i.a, align 32, !tbaa !19
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %1
  store ptr null, ptr %i.aa, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.critedge, %.thread, %.critedge30, %bb.g, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %.critedge ], [ %i.d, %.thread ], [ %i.q, %bb.f ], [ null, %bb.g ], [ null, %.critedge30 ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef ptr @_ZN3tbb6detail2r110arena_slot8get_taskERNS1_18execution_data_extEl(ptr nofree noundef nonnull align 128 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %.not27.i = icmp eq i64 %2, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread, %bb.a
  %.052 = phi i8 [ 0, %bb.a ], [ %.2545866, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread ] ; 5 uses
  %.032 = phi i64 [ %i.d, %bb.a ], [ %.133, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread ] ; 6 uses
  %.029 = phi i64 [ -1, %bb.a ], [ %.130, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread ]
  %i.h = atomicrmw add ptr %i.c, i64 -1 seq_cst, align 8
  %i.i = add i64 %i.h, -1                         ; 8 uses
  %i.j = load atomic i64, ptr %i.e acquire, align 16
  %i.k = icmp sgt i64 %i.j, %i.i
  br i1 %i.k, label %bb.c, label %_ZN3tbb6detail2r110arena_slot17release_task_poolEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load atomic ptr, ptr %i.f monotonic, align 8
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %_ZN3tbb6detail2r110arena_slot17acquire_task_poolEv.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.c, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i
  %.sroa.0.0.i.ph = phi i32 [ %i.w, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i ], [ 1, %bb.c ] ; 7 uses
  %i.m = icmp slt i32 %.sroa.0.0.i.ph, 17
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.f
  %i.n = load ptr, ptr %i.g, align 32, !tbaa !19
  %i.o = load atomic ptr, ptr %i.f monotonic, align 8
  %.not.i = icmp eq ptr %i.o, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.p = cmpxchg ptr %i.f, ptr %i.n, ptr inttoptr (i64 -1 to ptr) seq_cst seq_cst, align 8
  %i.q = extractvalue { ptr, i1 } %i.p, 1
  br i1 %i.q, label %_ZN3tbb6detail2r110arena_slot17acquire_task_poolEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.preheader.i
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge.i
  %i.r = icmp sgt i32 %.sroa.0.0.i.ph, 0
  br i1 %i.r, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %xtraiter = and i32 %.sroa.0.0.i.ph, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.s, %.lr.ph.i.i.i.prol ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.s = add nsw i32 %.01.i.i.i.prol, -1          ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !89

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.0.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i32 %.sroa.0.0.i.ph, 8
  br i1 %i.t, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.u, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.u = add nsw i32 %.01.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.v = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, !llvm.loop !0

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i:      ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.e
  %i.w = shl i32 %.sroa.0.0.i.ph, 1
  br label %.preheader.i.outer, !llvm.loop !90

bb.f:                                             ; preds = %.critedge.i
  %i.x = tail call noundef i32 @sched_yield() #2  ; 0 uses
  br label %.preheader.i, !llvm.loop !90

_ZN3tbb6detail2r110arena_slot17acquire_task_poolEv.exit: ; preds = %bb.d, %bb.c
  %i.y = load atomic i64, ptr %i.e monotonic, align 16 ; 5 uses
  %i.z = icmp sgt i64 %i.y, %i.i
  br i1 %i.z, label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread59, label %bb.g

bb.g:                                             ; preds = %_ZN3tbb6detail2r110arena_slot17acquire_task_poolEv.exit
  %i.aa = icmp eq i64 %i.y, %i.i
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store atomic i64 0, ptr %i.c monotonic, align 16
  store atomic i64 0, ptr %i.e monotonic, align 16
  store atomic ptr null, ptr %i.f monotonic, align 8
  br label %_ZN3tbb6detail2r110arena_slot17release_task_poolEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = load atomic ptr, ptr %i.f monotonic, align 8
  %.not.i41 = icmp eq ptr %i.ab, null
  br i1 %.not.i41, label %_ZN3tbb6detail2r110arena_slot17release_task_poolEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.g, align 32, !tbaa !19
  store atomic ptr %i.ac, ptr %i.f release, align 8
  br label %_ZN3tbb6detail2r110arena_slot17release_task_poolEv.exit

_ZN3tbb6detail2r110arena_slot17release_task_poolEv.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.b
  %.130 = phi i64 [ %i.i, %bb.h ], [ %.029, %bb.b ], [ %i.y, %bb.i ], [ %i.y, %bb.j ] ; 2 uses
  %.not40.not = phi i1 [ false, %bb.h ], [ true, %bb.b ], [ true, %bb.i ], [ true, %bb.j ]
  %.1 = phi i1 [ true, %bb.h ], [ false, %bb.b ], [ false, %bb.i ], [ false, %bb.j ]
  %i.ad = load ptr, ptr %i.g, align 32, !tbaa !19
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21 ; 10 uses
  %.not.i42 = icmp eq ptr %i.af, null
  br i1 %.not.i42, label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN3tbb6detail2r110arena_slot17release_task_poolEv.exit
  br i1 %.not27.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !22
  %.not33.i = icmp eq i64 %2, %i.ah
  br i1 %.not33.i, label %.thread.i, label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread

.thread.i:                                        ; preds = %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !24
  %i.ak = trunc i64 %i.aj to i1
  br i1 %i.ak, label %bb.m, label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread60

bb.m:                                             ; preds = %.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.am = load i16, ptr %i.al, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 3 uses
  %.not.i.i = icmp eq i64 %i.ao, 1
  br i1 %.not.i.i, label %.critedge30.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = cmpxchg ptr %i.an, i64 %i.ao, i64 2 seq_cst seq_cst, align 8
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = and i64 %i.ao, -4                       ; 2 uses
  %.not28.i = icmp ne i64 %i.ar, 0
  %or.cond.not = and i1 %.not28.i, %i.aq
  br i1 %or.cond.not, label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit, label %.critedge30.i

.critedge30.i:                                    ; preds = %bb.n, %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.at = load i64, ptr %i.as, align 8, !tbaa !41
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load ptr, ptr %i.af, align 64, !tbaa !43
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 64 dead_on_return(104) dereferenceable(104) %i.af) #2, !inline_history !91
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr noundef nonnull %i.af, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.ax = trunc nuw i8 %.052 to i1
  br i1 %i.ax, label %bb.o, label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread67

bb.o:                                             ; preds = %.critedge30.i
  %i.ay = load ptr, ptr %i.g, align 32, !tbaa !19
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.i
  store ptr null, ptr %i.az, align 8, !tbaa !21
  br label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread

_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit: ; preds = %bb.n
  %i.ba = inttoptr i64 %i.ar to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.am, ptr %i.bb, align 2, !tbaa !40
  br label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread60

_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread: ; preds = %_ZN3tbb6detail2r110arena_slot17release_task_poolEv.exit
  %i.bc = trunc nuw i8 %.052 to i1
  br i1 %i.bc, label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread, label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread67

_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread67: ; preds = %.critedge30.i, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread
  br label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread

_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread: ; preds = %bb.o, %bb.l, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread67, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread
  %.2545866 = phi i8 [ 1, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread ], [ 0, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread67 ], [ 1, %bb.o ], [ 1, %bb.l ] ; 2 uses
  %.133 = phi i64 [ %.032, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread ], [ %i.i, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread67 ], [ %.032, %bb.o ], [ %.032, %bb.l ] ; 2 uses
  br i1 %.not40.not, label %bb.b, label %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread60, !llvm.loop !92

_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread60: ; preds = %.thread.i, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit
  %.154 = phi i8 [ %.052, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit ], [ %.2545866, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread ], [ %.052, %.thread.i ]
  %.234 = phi i64 [ %.032, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit ], [ %.133, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread ], [ %.032, %.thread.i ] ; 2 uses
  %.128 = phi ptr [ %i.ba, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit ], [ null, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread.thread ], [ %i.af, %.thread.i ] ; 6 uses
  %3 = trunc nuw i8 %.154 to i1
  br i1 %3, label %bb.p, label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit

_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread59: ; preds = %_ZN3tbb6detail2r110arena_slot17acquire_task_poolEv.exit
  store atomic i64 0, ptr %i.c monotonic, align 16
  store atomic i64 0, ptr %i.e monotonic, align 16
  store atomic ptr null, ptr %i.f monotonic, align 8
  %i.bd = trunc nuw i8 %.052 to i1
  br i1 %i.bd, label %bb.q, label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit

bb.p:                                             ; preds = %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread60
  br i1 %.1, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread59, %bb.p
  %.234108119 = phi i64 [ %.234, %bb.p ], [ %.032, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread59 ] ; 2 uses
  %.231109118 = phi i64 [ %.130, %bb.p ], [ %i.y, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread59 ]
  %.128110117 = phi ptr [ %.128, %bb.p ], [ null, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread59 ] ; 6 uses
  %.not40 = icmp ne ptr %.128110117, null
  %i.be = zext i1 %.not40 to i64
  %spec.select = add i64 %.231109118, %i.be       ; 2 uses
  %i.bf = icmp ult i64 %spec.select, %.234108119
  br i1 %i.bf, label %bb.r, label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit

bb.r:                                             ; preds = %bb.q
  store atomic i64 %spec.select, ptr %i.e monotonic, align 16
  store atomic i64 %.234108119, ptr %i.c monotonic, align 16
  %i.bg = load ptr, ptr %i.g, align 32, !tbaa !19
  store atomic ptr %i.bg, ptr %i.f release, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !96
  %i.bj = load ptr, ptr %i.bi, align 128, !tbaa !108
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !127 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #2
  store i8 0, ptr %i.b, align 1, !tbaa !55
  call void asm sideeffect "lock; notb $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.b, ptr nonnull elementtype(i8) %i.b) #2, !srcloc !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 232 ; 3 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  switch i64 %i.bn, label %bb.s [
    i64 1, label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit
    i64 0, label %_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.bo = cmpxchg ptr %i.bm, i64 %i.bn, i64 1 seq_cst seq_cst, align 8 ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 1
  %i.bq = extractvalue { i64, i1 } %i.bo, 0
  %.not.i.i44 = icmp ne i64 %i.bq, 0
  %or.cond.not.i.i = select i1 %i.bp, i1 true, i1 %.not.i.i44
  br i1 %or.cond.not.i.i, label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit, label %_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i

_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i: ; preds = %bb.s, %bb.r
  %i.br = cmpxchg ptr %i.bm, i64 0, i64 1 seq_cst seq_cst, align 8
  %i.bs = extractvalue { i64, i1 } %i.br, 1
  br i1 %i.bs, label %bb.t, label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit

bb.t:                                             ; preds = %_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 388
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 336 ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8
  %i.bx = icmp eq i64 %i.bw, 2
  br i1 %i.bx, label %bb.u, label %_ZN3tbb6detail2r120thread_leave_manager15reset_if_neededEv.exit.i

bb.u:                                             ; preds = %bb.t
  %i.by = atomicrmw and ptr %i.bv, i64 -3 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2r120thread_leave_manager15reset_if_neededEv.exit.i

_ZN3tbb6detail2r120thread_leave_manager15reset_if_neededEv.exit.i: ; preds = %bb.u, %bb.t
  call void @_ZN3tbb6detail2r15arena15request_workersEiib(ptr noundef nonnull align 128 dereferenceable(768) %i.bl, i32 noundef 0, i32 noundef %i.bu, i1 noundef zeroext true)
  br label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit

bb.v:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.g, align 32, !tbaa !19
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.i
  store ptr null, ptr %i.ca, align 8, !tbaa !21
  store atomic i64 %.234, ptr %i.c release, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !96
  %i.cd = load ptr, ptr %i.cc, align 128, !tbaa !108
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !127 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i8 0, ptr %i.a, align 1, !tbaa !55
  call void asm sideeffect "lock; notb $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.a, ptr nonnull elementtype(i8) %i.a) #2, !srcloc !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 232 ; 3 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  switch i64 %i.ch, label %bb.w [
    i64 1, label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit
    i64 0, label %_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i45
  ]

bb.w:                                             ; preds = %bb.v
  %i.ci = cmpxchg ptr %i.cg, i64 %i.ch, i64 1 seq_cst seq_cst, align 8 ; 2 uses
  %i.cj = extractvalue { i64, i1 } %i.ci, 1
  %i.ck = extractvalue { i64, i1 } %i.ci, 0
  %.not.i.i47 = icmp ne i64 %i.ck, 0
  %or.cond.not.i.i48 = select i1 %i.cj, i1 true, i1 %.not.i.i47
  br i1 %or.cond.not.i.i48, label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit, label %_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i45

_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i45: ; preds = %bb.w, %bb.v
  %i.cl = cmpxchg ptr %i.cg, i64 0, i64 1 seq_cst seq_cst, align 8
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  br i1 %i.cm, label %bb.x, label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit

bb.x:                                             ; preds = %_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i45
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 388
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !86
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 336 ; 2 uses
  %i.cq = load atomic i64, ptr %i.cp monotonic, align 8
  %i.cr = icmp eq i64 %i.cq, 2
  br i1 %i.cr, label %bb.y, label %_ZN3tbb6detail2r120thread_leave_manager15reset_if_neededEv.exit.i46

bb.y:                                             ; preds = %bb.x
  %i.cs = atomicrmw and ptr %i.cp, i64 -3 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2r120thread_leave_manager15reset_if_neededEv.exit.i46

_ZN3tbb6detail2r120thread_leave_manager15reset_if_neededEv.exit.i46: ; preds = %bb.y, %bb.x
  call void @_ZN3tbb6detail2r15arena15request_workersEiib(ptr noundef nonnull align 128 dereferenceable(768) %i.cf, i32 noundef 0, i32 noundef %i.co, i1 noundef zeroext true)
  br label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit

_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit: ; preds = %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread59, %_ZN3tbb6detail2r120thread_leave_manager15reset_if_neededEv.exit.i46, %_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i45, %bb.w, %bb.v, %_ZN3tbb6detail2r120thread_leave_manager15reset_if_neededEv.exit.i, %_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i, %bb.s, %bb.r, %bb.q, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread60
  %.128111 = phi ptr [ null, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread59 ], [ %.128, %_ZN3tbb6detail2r120thread_leave_manager15reset_if_neededEv.exit.i46 ], [ %.128, %_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i45 ], [ %.128, %bb.w ], [ %.128, %bb.v ], [ %.128110117, %_ZN3tbb6detail2r120thread_leave_manager15reset_if_neededEv.exit.i ], [ %.128110117, %_ZN3tbb6detail2r111atomic_flag12test_and_setEv.exit.i ], [ %.128110117, %bb.s ], [ %.128110117, %bb.r ], [ %.128110117, %bb.q ], [ %.128, %_ZN3tbb6detail2r110arena_slot13get_task_implEmRNS1_18execution_data_extERbl.exit.thread60 ]
  ret ptr %.128111
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef ptr @_ZN3tbb6detail2r110arena_slot10steal_taskERNS1_5arenaElm(ptr nofree noundef nonnull align 128 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 128 dereferenceable(768) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, %bb.a
  %.sroa.0.0.i.ph = phi i32 [ %i.l, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i ], [ 1, %bb.a ] ; 7 uses
  %i.c = icmp slt i32 %.sroa.0.0.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, %bb.d
  %i.d = load atomic ptr, ptr %i.b monotonic, align 8 ; 10 uses
  %magicptr = ptrtoint ptr %i.d to i64
  switch i64 %magicptr, label %bb.b [
    i64 -1, label %.critedge.i
    i64 0, label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit
  ]

bb.b:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %i.e = cmpxchg ptr %i.b, ptr %i.d, ptr inttoptr (i64 -1 to ptr) seq_cst seq_cst, align 8
  %i.f = extractvalue { ptr, i1 } %i.e, 1
  br i1 %i.f, label %_ZN3tbb6detail2r110arena_slot14lock_task_poolEv.exit, label %.critedge.i, !llvm.loop !128

.critedge.i:                                      ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %bb.b
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge.i
  %i.g = icmp sgt i32 %.sroa.0.0.i.ph, 0
  br i1 %i.g, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %xtraiter = and i32 %.sroa.0.0.i.ph, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.h, %.lr.ph.i.i.i.prol ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.h = add nsw i32 %.01.i.i.i.prol, -1          ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !129

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.0.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.prol ]
  %i.i = icmp ult i32 %.sroa.0.0.i.ph, 8
  br i1 %i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.j, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.j = add nsw i32 %.01.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.k = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.k, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, !llvm.loop !0

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i:      ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.c
  %i.l = shl i32 %.sroa.0.0.i.ph, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer

bb.d:                                             ; preds = %.critedge.i
  %i.m = tail call noundef i32 @sched_yield() #2  ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2r110arena_slot14lock_task_poolEv.exit: ; preds = %bb.b
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2r110arena_slot14lock_task_poolEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.q = atomicrmw add ptr %i.n, i64 1 seq_cst, align 8
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = load atomic i64, ptr %i.p acquire, align 16
  %i.t = icmp sgt i64 %i.r, %i.s
  br i1 %i.t, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.e
  store atomic i64 %i.o, ptr %i.n monotonic, align 16
  store atomic ptr %i.d, ptr %i.b release, align 8
  br label %_ZN3tbb6detail2r15arena18advertise_new_workILNS2_13new_work_typeE1EEEvv.exit

.lr.ph:                                           ; preds = %bb.e
  %i.u = icmp eq i64 %2, 0
  %i.v = and i64 %3, 65535
  %i.w = xor i64 %i.v, -1
  %i.x = getelementptr inbounds [128 x i8], ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br i1 %i.u, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %i.z = phi i64 [ %i.at, %bb.k ], [ %i.r, %.lr.ph ] ; 6 uses
  %.062.us = phi i8 [ %.1.us, %bb.k ], [ 0, %.lr.ph ] ; 6 uses
  %.03361.us = phi i64 [ %.134.us, %bb.k ], [ %i.o, %.lr.ph ] ; 6 uses
  %i.aa = getelementptr [8 x i8], ptr %i.d, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 8 uses
  %.not47.us = icmp eq ptr %i.ac, null
  br i1 %.not47.us, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ah = load atomic i64, ptr %i.ag seq_cst, align 8
  %i.ai = and i64 %i.ah, 3
  %i.aj = icmp eq i64 %i.ai, 3
  br i1 %i.aj, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !130
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load atomic i8, ptr %i.am monotonic, align 1, !range !44, !noundef !45
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ap = load atomic i8, ptr %i.y monotonic, align 16, !range !44, !noundef !45
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.thread, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.ar = trunc nuw i8 %.062.us to i1
  %spec.select.us = select i1 %i.ar, i64 %.03361.us, i64 %i.z
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.134.us = phi i64 [ %.03361.us, %bb.i ], [ %spec.select.us, %bb.j ] ; 2 uses
  %.1.us = phi i8 [ 1, %bb.i ], [ %.062.us, %bb.j ] ; 2 uses
  %i.as = atomicrmw add ptr %i.n, i64 1 seq_cst, align 8
  %i.at = add i64 %i.as, 1                        ; 2 uses
  %i.au = load atomic i64, ptr %i.p acquire, align 16
  %i.av = icmp sgt i64 %i.at, %i.au
  br i1 %i.av, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.r
  %i.aw = phi i64 [ %i.bt, %bb.r ], [ %i.r, %.lr.ph ] ; 6 uses
  %.062 = phi i8 [ %.1, %bb.r ], [ 0, %.lr.ph ]   ; 6 uses
  %.03361 = phi i64 [ %.134, %bb.r ], [ %i.o, %.lr.ph ] ; 7 uses
  %i.ax = getelementptr [8 x i8], ptr %i.d, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 9 uses
  %.not47 = icmp eq ptr %i.az, null
  br i1 %.not47, label %bb.q, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !22
  %i.bc = icmp eq i64 %2, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !24
  %i.bf = trunc i64 %i.be to i1
  br i1 %i.bf, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bh = load atomic i64, ptr %i.bg seq_cst, align 8
  %i.bi = and i64 %i.bh, 3
  %i.bj = icmp eq i64 %i.bi, 3
  br i1 %i.bj, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.bl = load ptr, ptr %i.bk, align 16, !tbaa !130
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load atomic i8, ptr %i.bm monotonic, align 1, !range !44, !noundef !45
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bp = load atomic i8, ptr %i.y monotonic, align 16, !range !44, !noundef !45
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.thread, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split
  %i.br = trunc nuw i8 %.062 to i1
  %spec.select = select i1 %i.br, i64 %.03361, i64 %i.aw
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.l
end_hunk_0
